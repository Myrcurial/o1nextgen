-- mame-boot-probe.lua -- headless MAME boot probe for the Osborne 1.
--
-- WHY THIS EXISTS
--   Booting a disk and asking "did it reach a prompt, what does the screen say,
--   and how wide is the display?" is the single most useful check we have on
--   the emulated machine. This is the self-contained version of that check: it
--   needs no external Lua library, and it records the screen *geometry* as well
--   as the text, which is how the 52/80/104-column question got answered
--   (osborne1 = 416x240 = 52 columns, osborne1nv = 640x240 = 80 columns,
--   osborne1sp = 832x240 = 104 columns). Written for #79; see
--   docs/mame-emulation.md.
--
-- HOW IT IS DRIVEN
--   mame-boot-probe.sh MACHINE IMAGE.imd [SECONDS] [SHOT.png]
--   which concatenates this after nothing else and runs:
--     SDL_VIDEODRIVER=dummy mame MACHINE -flop1 IMAGE -video none -sound none
--       -nothrottle -autoboot_script RUN.lua -seconds_to_run N -rompath ROMS
--
-- TECHNIQUE (see docs/mame-emulation.md section 6)
--   * The screen is read straight out of video RAM at 0xF000, 128 bytes/row,
--     32 rows; character codes are ASCII-ish and directly readable. The 9th
--     (attribute) bit lives in a separate bank and can be ignored for text.
--   * VRAM is a ring buffer -- the hardware scroll register rotates which row is
--     at the top -- so search the whole buffer, never a fixed row.
--   * emu.wait() counts EMULATED seconds, so timings are true 4 MHz Z80 timings
--     even under -nothrottle.
--   * os.exit(0) avoids MAME's noisy headless teardown.

local MACHINE = manager.machine
local scr = MACHINE.screens[":screen"]
local space = MACHINE.devices[":maincpu"].spaces["program"]
local kb = MACHINE.natkeyboard
local VRAM, STRIDE = 0xF000, 128
local SHOT = os.getenv("O1_SHOT")

local function rows()
  local out = {}
  for r = 0, 31 do
    local s = {}
    for c = 0, STRIDE - 1 do
      local b = space:read_u8(VRAM + r * STRIDE + c) % 128
      s[#s + 1] = (b >= 32 and b < 127) and string.char(b) or " "
    end
    out[r] = (table.concat(s):gsub("%s+$", ""))
  end
  return out
end

local function find(pat)
  for _, line in pairs(rows()) do
    if line:find(pat, 1, true) then return true end
  end
  return false
end

local function wait_for(pat, timeout)
  local t = 0
  while t < timeout do
    if find(pat) then return true end
    emu.wait(0.5); t = t + 0.5
  end
  return false
end

local function dump(tag)
  print("=== DUMP " .. tag .. " ===")
  for r, line in pairs(rows()) do
    if #line > 0 then print(string.format("r%02d|%s", r, line)) end
  end
end

print(string.format("MACHINE: %s  image: %s",
                    tostring(os.getenv("O1_MACHINE")), tostring(os.getenv("O1_IMAGE"))))
print(string.format("SCREEN: %dx%d  (%d columns, %d rows)",
                    scr.width, scr.height, scr.width / 8, scr.height / 10))

print("BANNER: " .. tostring(wait_for("OSBORNE", 25)))
dump("banner")
kb:post("\r")                                  -- BIOS waits for RETURN
local booted = wait_for("A>", 90)
emu.wait(3)                                    -- let the listing settle
dump("booted")
print("PROMPT: " .. tostring(booted))
if SHOT then print("SNAPSHOT: " .. tostring(scr:snapshot(SHOT))) end
print("RESULT: " .. (booted and "BOOTED" or "NO-BOOT"))
os.exit(0)
