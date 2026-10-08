	$lines

	REM XAMN Disk track and sector editor.
	REM No warranty is made, expressed, or implied.

	var	hl,de,bc,a_psw	; cpu registers
		dph		; location of disk parameter header
		block_size	; cp/m logical block size
		max_tracks	; number of tracks/disk
		seldsk		; bios select disk
		settrk		; bios set track routine
		setsec		; bios set sector routine
		setdma		; bios set dma address
		b_read		; bios read sector
		b_write		; bios write sector
		sectran		; bios sector skew
		disk_number	; disk number to examine
		= integer

	var	crt		; logical device
		list		; logical device
		CR		; ASCII CR
		BS		; ASCII BS
		ascii_mask	; ASCII mask
		bit_0_mask	; mask used to look at bit 0
		true, false	; true/false logical flags
		= integer

	var	menu_selection	; prompt return
		= char

	var	r1, r2, r3, r4	; Real number for computations
		= real

	based	spt		; sectors/track
		dsm		; max data block number
		drm		; number of dir blocks
		off		; number of reserved tracks
		wboot		; entry to bios
		dpb		; location of disk parameter block
		skew_table	; location of bios skew table (used by sectran)
		alv		; pointer to allocation table
		= integer

	based	bsh		; block shift factor
		blm		; block mask
		exm		; extent mask
		alloc_byte	; used in searching allocation table
		= byte


	crt = 0				rem S-BASIC device # for con:
	list = 1			rem S-BASIC device # for lst:
	CR = 0DH
	BS = 8
	ascii_mask = 007FH
	bit_0_mask = 1
	true = -1
	false = not true

	base wboot at 1			rem location of bios wboot entry
	seldsk = wboot + 0018H		rem set up bios entry address
	settrk = wboot + 001BH
	setsec = wboot + 001EH
	setdma = wboot + 0021H
	b_read = wboot + 0024H
	b_write= wboot + 0027H
	sectran= wboot + 002DH

	rem dma buffer for read/write sector operations
	dim byte sector(128)
	var loc_sector = integer
	location array loc_sector = sector
	dim base char file_chars(11) fcb_name(11)  byte_dm(15)
	dim base integer word_dm(7)

	based bios_return = byte		rem high order byte of a_psw only
	location var hl = a_psw
	base bios_return at hl+1

0seldsk	input "Disk number (0,1,...,15) ";disk_number
	bc = disk_number
	call ( seldsk, dph, de, bc, a_psw )
	if dph=0 then 0seldsk
	base skew_table at dph
	base dpb at dph+10
	base alv at dph+14
	bc = loc_sector+1
	call ( setdma, hl, de, bc, a_psw )

	base spt at dpb
	base bsh at dpb+2
	base blm at dpb+3
	base exm at dpb+4
	base dsm at dpb+5
	base drm at dpb+7
	base off at dpb+13

	block_size = 1024*(2^(bsh-3))
	r1 = ((dsm+1)*(block_size/128))/spt
	max_tracks = r1 + off

	function physical_sec ( sectr = integer ) = integer
		if skew_table=0 then sectr=sectr-1
	end = sectr

	function skew ( sectr = integer ) = integer
		if skew_table<>0 then begin
			bc = sectr - 1
			de = skew_table
			call (sectran, hl, de, bc, a_psw)
			end
		    else hl = sectr - 1
	end = hl

	procedure get_sector( track, sec = integer )
		var x = integer
		for x=1 to 128
		  sector[x] = 0
		next x
		bc = track
		call ( settrk, hl, de, bc, a_psw )
		bc = sec
		call ( setsec, hl, de, bc, a_psw )
		call ( b_read, hl, de, bc, a_psw )
		sector[0] = bios_return
	end of get_sector

	procedure put_sector( track, sec = integer )
		bc = track
		call ( settrk, hl, de, bc, a_psw )
		bc 