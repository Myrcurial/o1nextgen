-- mame-lua-probe.lua -- scratch script: what can you actually get at, from Lua,
-- inside a running MAME machine?
--
-- Written for #64, while working out how to check docs/o1-memory-io-map.md
-- against the machine instead of against MAME's driver source.  The questions
-- were (a) does MAME's Lua expose the *decode* - address masks, memory map
-- entries - or only read/write access, and (b) how does the O1's bank
-- switching actually behave, cycle to cycle, rather than as documented.  The
-- answers, in order: read/write access plus address_mask and data_width; a
-- map.entries list whose entry fields are undocumented and come back nil; and
-- the useful one - the bank latch is real but is re-derived on every
-- instruction fetch, so a write to the bank port followed by any delay sees the
-- bank flip back.  This file is the rough notebook version; the finished,
-- asserting version is tools/o1_mame_probe.lua, driven by
-- tools/check_o1_map.sh.
--
-- Kept because those two things - the API surface, and the flip behaviour - are
-- what anybody else poking at a MAME driver from Lua needs first.
--
-- Run it directly (for poking; the finished probe is easier):
--   cd /tmp && SDL_VIDEODRIVER=dummy mame osborne1 \
--     -flop1 ~/Documents/Osborne1/floppies/52-o1prsnt.imd \
--     -video none -sound none -nothrottle -rompath <dir containing osborne1/> \
--     -autoboot_script "$PWD/mame-lua-probe.lua" -seconds_to_run 90
--
-- Outcome: the bank behaviour measured here became checks C10 and D1 in
-- tools/o1_mame_probe.lua, and is written up in
-- docs/o1-mainboard-schematic.md section 7a and docs/o1-memory-io-map.md
-- section 4.

local M    = manager.machine
local cpu  = M.devices[":maincpu"]
local prog = cpu.spaces["program"]
local io   = cpu.spaces["io"]

local function p(label, fn)
    local ok, v = pcall(fn)
    print(string.format("  %-26s %s", label, ok and tostring(v) or ("ERR " .. tostring(v))))
end

local function rd(a) return prog:read_u8(a) end
local function wr(a, v) prog:write_u8(a, v) end

-- True if a behaves like RAM: flip the top bit, look, put it back.
local function is_ram(a)
    local save = rd(a)
    local flipped = (save + 128) % 256
    wr(a, flipped)
    local got = rd(a)
    wr(a, save)
    return got == flipped
end

local function bank() return is_ram(0x0000) and "RAM" or "ROM" end

local function pc()
    local ok, v = pcall(function() return cpu.state["PC"].value end)
    return ok and string.format("%04X", v) or "?"
end

-- ---------------------------------------------------------------------------
print("== 1. what the Lua API exposes ==")
p("program space",        function() return prog end)
p("program address_mask", function() return prog.address_mask end)
p("program data_width",   function() return prog.data_width end)
p("io address_mask",      function() return io.address_mask end)
p("program map.entries",  function() return #prog.map.entries .. " entries" end)
p("entry[1].start",       function() return prog.map.entries[1].start end)
p("entry[1].mask",        function() return prog.map.entries[1].mask end)
print("  (map entry fields are undocumented from Lua: start/end/mask come back")
print("   nil, so the decode has to be *measured* rather than read out.)")

-- ---------------------------------------------------------------------------
-- Boot to the A> prompt so the machine is in its normal running state.
emu.wait(2)
M.natkeyboard:post("\r")
local waited = 0
while waited < 60 do
    local found = false
    for row = 0, 31 do
        for col = 0, 126 do
            if rd(0xF000 + row * 128 + col) % 128 == 65
               and rd(0xF000 + row * 128 + col + 1) % 128 == 62 then found = true end
        end
    end
    if found then break end
    emu.wait(0.5)
    waited = waited + 0.5
end
print(string.format("== 2. bank switching (at A> after %.1f emulated seconds) ==", emu.time()))
print("  at the prompt: PC=" .. pc() .. " bank=" .. bank()
      .. "   <- parked in the ROM, not in CP/M")

-- The port *number* selects the action; the data byte is ignored.
io:write_u8(0x00, 0x00)
print("  write port 0x00 (data 0x00) -> bank " .. bank() .. " immediately")
io:write_u8(0x01, 0xff)
print("  write port 0x01 (data 0xff) -> bank " .. bank() .. " immediately")
io:write_u8(0x00, 0x01)
print("  write port 0x00 (data 0x01) -> bank " .. bank()
      .. "  <- data ignored, so still the ROM bank")

-- ...and the latch does not persist.
io:write_u8(0x01, 0x00)
local immediate = bank()
emu.wait(0.05)
print("  write port 0x01, then 50 ms: " .. immediate .. " -> " .. bank()
      .. "  <- re-derived on instruction fetch, video PIA IRQ at 60 Hz")

-- Only A0/A1 reach the decode, so 0x04/0x05 alias 0x00/0x01.
io:write_u8(0x05, 0x00)
print("  write port 0x05 -> bank " .. bank() .. "  <- aliases port 0x01")

-- ---------------------------------------------------------------------------
print("== 3. where is the CPU actually executing? ==")
io:write_u8(0x01, 0x00)
local counts = {}
for _ = 1, 20 do
    local here = tonumber(pc(), 16) or 0
    local where
    if here < 0x1000 then where = "ROM 0x0000-0x0FFF"
    elseif here < 0x2000 then where = "ROM mirror 0x1000-0x1FFF"
    elseif here < 0x4000 then where = "bank-2 I/O 0x2000-0x3FFF"
    else where = string.format("RAM 0x%04X page", here - here % 0x1000) end
    counts[where] = (counts[where] or 0) + 1
    emu.wait(0.05)
end
for where, n in pairs(counts) do
    print(string.format("  %-28s %d/20", where, n))
end

os.exit(0)
