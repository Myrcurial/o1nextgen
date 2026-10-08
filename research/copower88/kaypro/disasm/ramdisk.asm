; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x100 -o /tmp/k_ramdisk.asm research/copower88/kaypro/extracted_cpm/ramdisk.com

	org 00100h

	jp l0111h		;0100
l0103h:
	inc c			;0103
l0104h:
	ld e,c			;0104
l0105h:
	nop			;0105
	nop			;0106
l0107h:
	ld a,a			;0107
l0108h:
	ld a,(hl)		;0108
	nop			;0109
	ld a,(bc)		;010a
	nop			;010b
	inc b			;010c
	nop			;010d
	rrca			;010e
	nop			;010f
	inc de			;0110
l0111h:
	ld sp,l09a7h		;0111
	ld hl,(00001h)		;0114
	ld de,0001ah		;0117
	add hl,de		;011a
	ld a,(hl)		;011b
	cp h			;011c
	jp nc,l02dch		;011d
	ld de,l012bh		;0120
	ld c,009h		;0123
	call 00005h		;0125
	jp 00000h		;0128
l012bh:
	dec c			;012b
	ld a,(bc)		;012c
	ld hl,(02a2ah)		;012d
	jr nz,$+116		;0130
	ld h,c			;0132
	ld l,l			;0133
	ld h,h			;0134
	ld l,c			;0135
	ld (hl),e		;0136
	ld l,e			;0137
	jr nz,l019eh		;0138
	ld (hl),d		;013a
	ld l,c			;013b
	halt			;013c
	ld h,l			;013d
	ld (hl),d		;013e
	jr nz,l01aah		;013f
	ld (hl),e		;0141
	jr nz,l01a5h		;0142
	ld l,h			;0144
	ld (hl),d		;0145
	ld h,l			;0146
	ld h,c			;0147
	ld h,h			;0148
	ld a,c			;0149
	jr nz,l01adh		;014a
	ld h,e			;014c
	ld (hl),h		;014d
	ld l,c			;014e
	halt			;014f
	ld h,l			;0150
	jr nz,l017dh		;0151
	ld hl,(l0d2ah)		;0153
	ld a,(bc)		;0156
	inc h			;0157
l0158h:
	ld de,l0163h		;0158
	ld c,009h		;015b
	call 00005h		;015d
	jp 00000h		;0160
l0163h:
	dec c			;0163
	ld a,(bc)		;0164
	ld a,(bc)		;0165
	ld hl,(02a2ah)		;0166
	jr nz,l01ceh		;0169
	ld h,c			;016b
	ld l,(hl)		;016c
	ld l,(hl)		;016d
	ld l,a			;016e
	ld (hl),h		;016f
	jr nz,l01deh		;0170
	ld l,a			;0172
	ld h,c			;0173
	ld h,h			;0174
	inc l			;0175
	jr nz,l01b0h		;0176
	jr nc,l01b2h		;0178
	jr c,$+34		;017a
	ld h,h			;017c
l017dh:
	ld l,a			;017d
	ld h,l			;017e
	ld (hl),e		;017f
	jr nz,l01f0h		;0180
	ld l,a			;0182
	ld (hl),h		;0183
	jr nz,l01f8h		;0184
	ld h,l			;0186
	ld (hl),e		;0187
	ld (hl),b		;0188
	ld l,a			;0189
	ld l,(hl)		;018a
	ld h,h			;018b
	jr nz,l01b8h		;018c
	ld hl,(l0d2ah)		;018e
	ld a,(bc)		;0191
	inc h			;0192
l0193h:
	ld de,l019eh		;0193
	ld c,009h		;0196
	call 00005h		;0198
	jp 00000h		;019b
l019eh:
	dec c			;019e
	ld a,(bc)		;019f
	ld hl,(02a2ah)		;01a0
	jr nz,$+112		;01a3
l01a5h:
	ld l,a			;01a5
	ld (hl),h		;01a6
	jr nz,$+117		;01a7
	ld (hl),h		;01a9
l01aah:
	ld h,c			;01aa
	ld l,(hl)		;01ab
	ld h,h			;01ac
l01adh:
	ld h,c			;01ad
	ld (hl),d		;01ae
	ld h,h			;01af
l01b0h:
	jr nz,l01f5h		;01b0
l01b2h:
	ld d,b			;01b2
	cpl			;01b3
	ld c,l			;01b4
	jr nz,l022ah		;01b5
	ld a,c			;01b7
l01b8h:
	ld (hl),e		;01b8
	ld (hl),h		;01b9
	ld h,l			;01ba
	ld l,l			;01bb
	inc l			;01bc
	jr nz,$+101		;01bd
	ld h,c			;01bf
	ld l,(hl)		;01c0
	ld l,(hl)		;01c1
	ld l,a			;01c2
	ld (hl),h		;01c3
	jr nz,$+107		;01c4
	ld l,(hl)		;01c6
	ld (hl),e		;01c7
	ld (hl),h		;01c8
	ld h,c			;01c9
	ld l,h			;01ca
	ld l,h			;01cb
	jr nz,l01f8h		;01cc
l01ceh:
	ld hl,(l0d2ah)		;01ce
	ld a,(bc)		;01d1
	inc h			;01d2
l01d3h:
	ld de,l01deh		;01d3
	ld c,009h		;01d6
	call 00005h		;01d8
	jp 00000h		;01db
l01deh:
	dec c			;01de
	ld a,(bc)		;01df
	ld hl,(02a2ah)		;01e0
	jr nz,l024eh		;01e3
	ld l,(hl)		;01e5
	halt			;01e6
	ld h,c			;01e7
	ld l,h			;01e8
	ld l,c			;01e9
	ld h,h			;01ea
	jr nz,$+114		;01eb
	ld h,c			;01ed
	ld (hl),d		;01ee
	ld h,c			;01ef
l01f0h:
	ld l,l			;01f0
	ld h,l			;01f1
	ld (hl),h		;01f2
	ld h,l			;01f3
	ld (hl),d		;01f4
l01f5h:
	jr nz,l0260h		;01f5
	ld l,(hl)		;01f7
l01f8h:
	jr nz,$+101		;01f8
	ld l,a			;01fa
	ld l,l			;01fb
	ld l,l			;01fc
	ld h,c			;01fd
	ld l,(hl)		;01fe
	ld h,h			;01ff
	jr nz,$+110		;0200
	ld l,c			;0202
	ld l,(hl)		;0203
	ld h,l			;0204
	jr nz,$+44		;0205
	ld hl,(l0d2ah)		;0207
	ld a,(bc)		;020a
	inc h			;020b
l020ch:
	dec c			;020c
	ld a,(bc)		;020d
	ld a,(bc)		;020e
	ld hl,(02a2ah)		;020f
	ld hl,(02a2ah)		;0212
	ld hl,(02a2ah)		;0215
	ld hl,(02a2ah)		;0218
	ld hl,(02a2ah)		;021b
	ld hl,(02a2ah)		;021e
	ld hl,(02a2ah)		;0221
	ld hl,(02a2ah)		;0224
	ld hl,(02a2ah)		;0227
l022ah:
	ld hl,(02a2ah)		;022a
	ld hl,(02a2ah)		;022d
	ld hl,(02a2ah)		;0230
	ld hl,(02a2ah)		;0233
	ld hl,(02a2ah)		;0236
	ld hl,(02a2ah)		;0239
	ld hl,(02a2ah)		;023c
	ld hl,(00a0dh)		;023f
	ld hl,(l202ah)		;0242
	jr nz,l029ah		;0245
	ld d,a			;0247
	ld d,b			;0248
	jr nz,$+69		;0249
	ld l,a			;024b
	ld d,b			;024c
	ld l,a			;024d
l024eh:
	ld (hl),a		;024e
	ld h,l			;024f
	ld (hl),d		;0250
	ld e,a			;0251
	jr c,l028ch		;0252
	jr nz,$+116		;0254
	ld h,c			;0256
	ld l,l			;0257
	ld h,h			;0258
	ld l,c			;0259
	ld (hl),e		;025a
	ld l,e			;025b
	jr nz,$+102		;025c
	ld (hl),d		;025e
	ld l,c			;025f
l0260h:
	halt			;0260
	ld h,l			;0261
	ld (hl),d		;0262
	jr nz,l0285h		;0263
	jr nz,$+52		;0265
	ld sp,04e2dh		;0267
	ld l,a			;026a
	halt			;026b
	dec l			;026c
	jr c,$+54		;026d
	jr nz,l0291h		;026f
	ld hl,(l0d2ah)		;0271
	ld a,(bc)		;0274
	ld hl,(l202ah)		;0275
	jr nz,l029ah		;0278
	jr nz,l029ch		;027a
	jr nz,l029eh		;027c
	jr nz,l02a0h		;027e
	jr nz,l02a2h		;0280
	jr nz,l02a4h		;0282
	ld h,e			;0284
l0285h:
	ld l,a			;0285
	ld (hl),b		;0286
	ld a,c			;0287
	ld (hl),d		;0288
	ld l,c			;0289
	ld h,a			;028a
	ld l,b			;028b
l028ch:
	ld (hl),h		;028c
	jr nz,l02b7h		;028d
	ld b,e			;028f
	add hl,hl		;0290
l0291h:
	jr nz,$+51		;0291
	add hl,sp		;0293
	jr c,$+54		;0294
	jr nz,$+34		;0296
	jr nz,l02bah		;0298
l029ah:
	jr nz,$+34		;029a
l029ch:
	jr nz,$+34		;029c
l029eh:
	jr nz,l02c0h		;029e
l02a0h:
	jr nz,$+34		;02a0
l02a2h:
	jr nz,$+34		;02a2
l02a4h:
	ld hl,(l0d2ah)		;02a4
	ld a,(bc)		;02a7
	ld hl,(02a2ah)		;02a8
	ld hl,(02a2ah)		;02ab
	ld hl,(02a2ah)		;02ae
	ld hl,(02a2ah)		;02b1
	ld hl,(02a2ah)		;02b4
l02b7h:
	ld hl,(02a2ah)		;02b7
l02bah:
	ld hl,(02a2ah)		;02ba
	ld hl,(02a2ah)		;02bd
l02c0h:
	ld hl,(02a2ah)		;02c0
	ld hl,(02a2ah)		;02c3
	ld hl,(02a2ah)		;02c6
	ld hl,(02a2ah)		;02c9
	ld hl,(02a2ah)		;02cc
	ld hl,(02a2ah)		;02cf
	ld hl,(02a2ah)		;02d2
	ld hl,(02a2ah)		;02d5
	ld hl,(00a0dh)		;02d8
	inc h			;02db
l02dch:
	ld de,l020ch		;02dc
	ld c,009h		;02df
	call 00005h		;02e1
	ld hl,00080h		;02e4
	ld a,(hl)		;02e7
	or a			;02e8
	jr z,l0300h		;02e9
	ld b,000h		;02eb
	ld c,(hl)		;02ed
	inc hl			;02ee
	add hl,bc		;02ef
	ld d,h			;02f0
	ld e,l			;02f1
	inc de			;02f2
	ld bc,00005h		;02f3
	ld (hl),00dh		;02f6
	ldir			;02f8
	ld hl,00082h		;02fa
	ld (l0961h),hl		;02fd
l0300h:
	call sub_08ceh		;0300
	dec c			;0303
	ld a,(bc)		;0304
	ld a,(bc)		;0305
	ld d,b			;0306
	ld l,h			;0307
	ld h,l			;0308
	ld h,c			;0309
	ld (hl),e		;030a
	ld h,l			;030b
	jr nz,$+99		;030c
	ld l,(hl)		;030e
	ld (hl),e		;030f
	ld (hl),a		;0310
	ld h,l			;0311
	ld (hl),d		;0312
	jr nz,l0389h		;0313
	ld l,b			;0315
	ld h,l			;0316
	jr nz,$+104		;0317
	ld l,a			;0319
	ld l,h			;031a
	ld l,h			;031b
	ld l,a			;031c
	ld (hl),a		;031d
	ld l,c			;031e
	ld l,(hl)		;031f
	ld h,a			;0320
	jr nz,$+115		;0321
	ld (hl),l		;0323
	ld h,l			;0324
	ld (hl),e		;0325
	ld (hl),h		;0326
	ld l,c			;0327
	ld l,a			;0328
	ld l,(hl)		;0329
	ld (hl),e		;032a
	ld a,(00a0dh)		;032b
	inc h			;032e
l032fh:
	call sub_08ceh		;032f
	dec c			;0332
	ld a,(bc)		;0333
	ld b,h			;0334
	ld (hl),d		;0335
	ld l,c			;0336
	halt			;0337
	ld h,l			;0338
	ld l,(hl)		;0339
	ld h,c			;033a
	ld l,l			;033b
	ld h,l			;033c
	jr nz,l0367h		;033d
	ld b,c			;033f
	jr nz,$+118		;0340
	ld l,b			;0342
	ld (hl),d		;0343
	ld (hl),l		;0344
	jr nz,$+82		;0345
	add hl,hl		;0347
	jr nz,$+118		;0348
	ld l,a			;034a
	jr nz,$+99		;034b
	ld (hl),e		;034d
	ld (hl),e		;034e
	ld l,c			;034f
	ld h,a			;0350
	ld l,(hl)		;0351
	jr nz,$+118		;0352
	ld l,a			;0354
	jr nz,$+116		;0355
	ld h,c			;0357
	ld l,l			;0358
	ld h,h			;0359
	ld l,c			;035a
	ld (hl),e		;035b
	ld l,e			;035c
	jr nz,l038dh		;035d
	ld l,02eh		;035f
	ld l,02eh		;0361
	ld l,02eh		;0363
	ld l,02eh		;0365
l0367h:
	ld l,02eh		;0367
	ld l,02eh		;0369
	ld l,020h		;036b
	inc h			;036d
	ld b,041h		;036e
	ld c,051h		;0370
	ld d,b			;0372
	ld e,c			;0373
	call sub_090eh		;0374
	jr c,l032fh		;0377
	jr z,l0380h		;0379
	sub 041h		;037b
	ld (l0103h),a		;037d
l0380h:
	call sub_08ceh		;0380
	dec c			;0383
	ld a,(bc)		;0384
	ld b,l			;0385
	ld (hl),d		;0386
	ld h,c			;0387
	ld (hl),e		;0388
l0389h:
	ld h,l			;0389
	jr nz,l03efh		;038a
	ld l,a			;038c
l038dh:
	ld l,(hl)		;038d
	ld (hl),h		;038e
	ld h,l			;038f
	ld l,(hl)		;0390
	ld (hl),h		;0391
	ld (hl),e		;0392
	jr nz,l0404h		;0393
	ld h,(hl)		;0395
	jr nz,l040ah		;0396
	ld h,c			;0398
	ld l,l			;0399
	ld h,h			;039a
	ld l,c			;039b
	ld (hl),e		;039c
	ld l,e			;039d
	jr nz,l0406h		;039e
	ld l,c			;03a0
	ld l,h			;03a1
	ld h,l			;03a2
	jr nz,$+102		;03a3
	ld l,c			;03a5
	ld (hl),d		;03a6
	ld h,l			;03a7
	ld h,e			;03a8
	ld (hl),h		;03a9
	ld l,a			;03aa
	ld (hl),d		;03ab
	ld a,c			;03ac
	jr nz,l03d7h		;03ad
	ld e,c			;03af
	cpl			;03b0
	ld c,(hl)		;03b1
	jr nz,l03f3h		;03b2
	add hl,hl		;03b4
	jr nz,$+48		;03b5
	ld l,02eh		;03b7
	ld l,02eh		;03b9
	ld l,02eh		;03bb
	jr nz,l03e3h		;03bd
	ld b,04eh		;03bf
	ld c,04fh		;03c1
	ld d,059h		;03c3
	ld e,05ah		;03c5
	call sub_090eh		;03c7
	jr c,l0380h		;03ca
	jr z,l03d1h		;03cc
	ld (l0104h),a		;03ce
l03d1h:
	call sub_08ceh		;03d1
	dec c			;03d4
	ld a,(bc)		;03d5
	ld d,d			;03d6
l03d7h:
	ld h,c			;03d7
	ld l,l			;03d8
	ld h,h			;03d9
	ld l,c			;03da
	ld (hl),e		;03db
	ld l,e			;03dc
	jr nz,l0443h		;03dd
	ld (hl),d		;03df
	ld l,c			;03e0
	halt			;03e1
	ld h,l			;03e2
l03e3h:
	ld (hl),d		;03e3
	jr nz,$+110		;03e4
	ld l,a			;03e6
	ld h,c			;03e7
	ld h,h			;03e8
	jr nz,l044ch		;03e9
	ld h,h			;03eb
	ld h,h			;03ec
	ld (hl),d		;03ed
	ld h,l			;03ee
l03efh:
	ld (hl),e		;03ef
	ld (hl),e		;03f0
	jr nz,$+113		;03f1
l03f3h:
	ld (hl),d		;03f3
	jr nz,l0432h		;03f4
	ld b,e			;03f6
	ld d,d			;03f7
	ld a,020h		;03f8
	ld (hl),h		;03fa
	ld l,a			;03fb
	jr nz,$+119		;03fc
	ld (hl),e		;03fe
	ld h,l			;03ff
l0400h:
	jr nz,$+102		;0400
	ld h,l			;0402
	ld h,(hl)		;0403
l0404h:
	ld h,c			;0404
	ld (hl),l		;0405
l0406h:
	ld l,h			;0406
	ld (hl),h		;0407
	jr nz,$+48		;0408
l040ah:
	ld l,02eh		;040a
	ld l,02eh		;040c
	jr nz,l0434h		;040e
	call sub_08e2h		;0410
	jr c,l03d1h		;0413
	jr z,l042ah		;0415
	ld (l0105h),hl		;0417
	ld de,(00001h)		;041a
	ex de,hl		;041e
	or a			;041f
	sbc hl,de		;0420
	jp nc,l01d3h		;0422
	ld a,e			;0425
	or a			;0426
	jp nz,l01d3h		;0427
l042ah:
	call sub_08ceh		;042a
	dec c			;042d
	ld a,(bc)		;042e
	ld b,e			;042f
	ld l,a			;0430
	ld d,b			;0431
l0432h:
	ld l,a			;0432
	ld (hl),a		;0433
l0434h:
	ld h,l			;0434
	ld (hl),d		;0435
	ld e,a			;0436
	jr c,l0471h		;0437
	jr nz,l04abh		;0439
	ld l,a			;043b
	ld (hl),d		;043c
	ld (hl),h		;043d
	jr nz,l04a1h		;043e
	ld h,h			;0440
	ld h,h			;0441
	ld (hl),d		;0442
l0443h:
	ld h,l			;0443
	ld (hl),e		;0444
	ld (hl),e		;0445
	jr nz,l04b7h		;0446
	ld (hl),d		;0448
	jr nz,$+62		;0449
	ld b,e			;044b
l044ch:
	ld d,d			;044c
	ld a,020h		;044d
	ld (hl),h		;044f
	ld l,a			;0450
	jr nz,$+119		;0451
	ld (hl),e		;0453
	ld h,l			;0454
	jr nz,$+102		;0455
	ld h,l			;0457
	ld h,(hl)		;0458
	ld h,c			;0459
	ld (hl),l		;045a
	ld l,h			;045b
	ld (hl),h		;045c
	jr nz,l048dh		;045d
	ld l,02eh		;045f
	ld l,02eh		;0461
	ld l,02eh		;0463
	ld l,02eh		;0465
	jr nz,l048dh		;0467
	call sub_08e2h		;0469
	jr c,l042ah		;046c
	jr z,l047ah		;046e
	ld a,h			;0470
l0471h:
	or a			;0471
	jp nz,l01d3h		;0472
	ld h,l			;0475
	inc l			;0476
	ld (l0107h),hl		;0477
l047ah:
	ld a,(l0103h)		;047a
	ld (00db8h),a		;047d
	ld de,(l0107h)		;0480
	ld (l0db6h),de		;0484
	call sub_0c56h		;0488
	ld a,b			;048b
	or a			;048c
l048dh:
	jp z,l0158h		;048d
	dec a			;0490
	jp z,l0158h		;0491
	xor a			;0494
	ld (l0cbdh),a		;0495
	ld (l0cbeh),a		;0498
	call sub_0b82h		;049b
l049eh:
	call sub_0be9h		;049e
l04a1h:
	jr nz,l049eh		;04a1
	ld hl,l0cbdh		;04a3
	ld a,(hl)		;04a6
	cp 000h			;04a7
	jr z,l04c6h		;04a9
l04abh:
	cp 001h			;04ab
	jr z,l04c6h		;04ad
	cp 008h			;04af
	jr z,l04beh		;04b1
	cp 009h			;04b3
	jr z,l04c2h		;04b5
l04b7h:
	cp 015h			;04b7
	jp z,l04d4h		;04b9
	jr l049eh		;04bc
l04beh:
	ld a,008h		;04be
	jr l04c7h		;04c0
l04c2h:
	ld a,009h		;04c2
	jr l04c7h		;04c4
l04c6h:
	xor a			;04c6
l04c7h:
	ld (l0cbdh),a		;04c7
	xor a			;04ca
	ld (l0cbeh),a		;04cb
	call sub_0b82h		;04ce
	jp l049eh		;04d1
l04d4h:
	ld a,016h		;04d4
	ld (l0cbdh),a		;04d6
	ld a,080h		;04d9
	ld (l0cbeh),a		;04db
	ld hl,0fdb0h		;04de
	ld (l0cc2h),hl		;04e1
	call sub_0b82h		;04e4
	ld b,04ah		;04e7
l04e9h:
	ld a,016h		;04e9
	ld (l0cbdh),a		;04eb
	ld a,080h		;04ee
	ld (l0cbeh),a		;04f0
	push bc			;04f3
	call sub_0b82h		;04f4
	pop bc			;04f7
	djnz l04e9h		;04f8
	ld hl,l0f00h		;04fa
	ld a,004h		;04fd
l04ffh:
	ld de,l0cbfh		;04ff
	ld bc,00080h		;0502
	ldir			;0505
	push hl			;0507
	push af			;0508
	ld a,016h		;0509
	ld (l0cbdh),a		;050b
	ld a,080h		;050e
	ld (l0cbeh),a		;0510
	call sub_0b82h		;0513
	pop af			;0516
	pop hl			;0517
	dec a			;0518
	jr nz,l04ffh		;0519
	ld a,016h		;051b
	ld (l0cbdh),a		;051d
	ld a,001h		;0520
	ld (l0cbeh),a		;0522
	call sub_0b82h		;0525
	ld hl,(00001h)		;0528
	ld a,l			;052b
	cp 003h			;052c
	jp nz,l0193h		;052e
	ld d,h			;0531
	ld e,000h		;0532
	ld (l0dbbh),de		;0534
	ld de,l0c6eh		;0538
	ld bc,00030h		;053b
	ldir			;053e
	ld hl,00000h		;0540
	ld (l0db0h),hl		;0543
	ld hl,00001h		;0546
	ld (l0db2h),hl		;0549
	ld hl,00080h		;054c
	ld (l0db4h),hl		;054f
	call sub_0b21h		;0552
	ld hl,l02dch		;0555
	ld (l0db4h),hl		;0558
	ld bc,08001h		;055b
l055eh:
	ld (hl),c		;055e
	rlc c			;055f
	inc hl			;0561
	djnz l055eh		;0562
	call sub_0b58h		;0564
	ld hl,0004eh		;0567
	ld (l0db0h),hl		;056a
	ld hl,00015h		;056d
	ld (l0db2h),hl		;0570
	call sub_0b21h		;0573
	ld hl,l02dch		;0576
	ld bc,08001h		;0579
l057ch:
	ld a,(hl)		;057c
	cp c			;057d
	jr nz,l0585h		;057e
	rlc c			;0580
	inc hl			;0582
	djnz l057ch		;0583
l0585h:
	push bc			;0585
	ld hl,00000h		;0586
	ld (l0db0h),hl		;0589
	ld hl,00001h		;058c
	ld (l0db2h),hl		;058f
	ld hl,00080h		;0592
	ld (l0db4h),hl		;0595
	call sub_0b58h		;0598
	pop bc			;059b
	ld ix,l085ch		;059c
	ld a,b			;05a0
	or a			;05a1
	jr z,l05b3h		;05a2
	ld ix,l0876h		;05a4
	ld hl,l0896h		;05a8
	ld de,l0caeh		;05ab
	ld bc,0000fh		;05ae
	ldir			;05b1
l05b3h:
	ld bc,00006h		;05b3
	add ix,bc		;05b6
	ld l,(ix+000h)		;05b8
	ld h,(ix+001h)		;05bb
	ld (l0db0h),hl		;05be
	ld a,h			;05c1
	or l			;05c2
	jp z,l0158h		;05c3
	ld l,(ix+002h)		;05c6
	ld h,(ix+003h)		;05c9
	ld (l0db2h),hl		;05cc
	ld hl,00080h		;05cf
	ld (l0db4h),hl		;05d2
	call sub_0b21h		;05d5
	call sub_08a5h		;05d8
	call sub_0b58h		;05db
	ld hl,l02dch		;05de
	ld (l0db4h),hl		;05e1
	call sub_0b21h		;05e4
	ld hl,00080h		;05e7
	ld de,l02dch		;05ea
	ld bc,00080h		;05ed
l05f0h:
	ld a,(de)		;05f0
	cp (hl)			;05f1
	jr nz,l05b3h		;05f2
	ldi			;05f4
	jp pe,l05f0h		;05f6
	call sub_08a5h		;05f9
	ld hl,00080h		;05fc
	call sub_0b58h		;05ff
	ld l,(ix+004h)		;0602
	ld h,(ix+005h)		;0605
	ld a,(00db8h)		;0608
	or a			;060b
	jr z,l0614h		;060c
	ld (l0cb3h),hl		;060e
	jp l06b1h		;0611
l0614h:
	ld bc,00007h		;0614
	or a			;0617
	sbc hl,bc		;0618
	ld (l0cb3h),hl		;061a
	ld a,002h		;061d
	ld (l0cbbh),a		;061f
	ld de,l1300h		;0622
	ld hl,00000h		;0625
	ld bc,l0e00h		;0628
l062bh:
	ld a,(de)		;062b
	inc a			;062c
	cp 003h			;062d
	jr nc,l0632h		;062f
	inc hl			;0631
l0632h:
	inc de			;0632
	dec bc			;0633
	ld a,b			;0634
	or c			;0635
	jr nz,l062bh		;0636
	ld bc,l0e00h		;0638
	or a			;063b
	sbc hl,bc		;063c
	ld hl,l1300h		;063e
	jr nz,l0696h		;0641
	ld ix,l1300h		;0643
	ld hl,(l0dbbh)		;0647
	ld de,l0e00h		;064a
	or a			;064d
	sbc hl,de		;064e
	push hl			;0650
	pop iy			;0651
	ld hl,0ffffh		;0653
l0656h:
	ld a,(ix+000h)		;0656
	or a			;0659
	ld c,(iy+000h)		;065a
	call z,sub_084bh	;065d
	inc ix			;0660
	inc iy			;0662
	dec de			;0664
	ld a,d			;0665
	or e			;0666
	jr nz,l0656h		;0667
	ld c,(ix+000h)		;0669
	ld b,(ix+001h)		;066c
	or a			;066f
	sbc hl,bc		;0670
	jp nz,l0193h		;0672
	ld hl,(l0dbbh)		;0675
	ld bc,l0e00h		;0678
	or a			;067b
	sbc hl,bc		;067c
	ld de,l1300h		;067e
l0681h:
	ld a,(de)		;0681
	dec a			;0682
	jr nz,l0686h		;0683
	ld (hl),a		;0685
l0686h:
	inc hl			;0686
	inc de			;0687
	dec bc			;0688
	ld a,b			;0689
	or c			;068a
	jr nz,l0681h		;068b
	ld hl,(l0dbbh)		;068d
	ld bc,l1600h		;0690
	or a			;0693
	sbc hl,bc		;0694
l0696h:
	ld (l0db4h),hl		;0696
	ld hl,00000h		;0699
	ld (l0db0h),hl		;069c
	ld hl,00001h		;069f
	ld (l0db2h),hl		;06a2
	ld b,02ch		;06a5
l06a7h:
	push bc			;06a7
	call sub_0b58h		;06a8
	call sub_0a88h		;06ab
	pop bc			;06ae
	djnz l06a7h		;06af
l06b1h:
	ld a,(l0104h)		;06b1
	cp 04eh			;06b4
	jr z,l06eeh		;06b6
	ld hl,(l0cbbh)		;06b8
	ld (l0db0h),hl		;06bb
	ld hl,00001h		;06be
	ld (l0db2h),hl		;06c1
	ld hl,00080h		;06c4
	ld de,00081h		;06c7
	ld bc,0007fh		;06ca
	ld (hl),0e5h		;06cd
	ldir			;06cf
	ld hl,(l0cb5h)		;06d1
	inc hl			;06d4
	srl h			;06d5
	rr l			;06d7
	srl h			;06d9
	rr l			;06db
	ld b,l			;06dd
l06deh:
	ld hl,00080h		;06de
	ld (l0db4h),hl		;06e1
	push bc			;06e4
	call sub_0b58h		;06e5
	call sub_0a88h		;06e8
	pop bc			;06eb
	djnz l06deh		;06ec
l06eeh:
	ld hl,(00006h)		;06ee
	ld (l0db9h),hl		;06f1
	ld hl,(l0105h)		;06f4
	ld a,h			;06f7
	or l			;06f8
	jr nz,l0709h		;06f9
	ld hl,(00006h)		;06fb
	ld (l0a00h+1),hl	;06fe
	ld l,000h		;0701
	ld bc,l0c00h		;0703
	or a			;0706
	sbc hl,bc		;0707
l0709h:
	ld d,h			;0709
	ld e,l			;070a
	push hl			;070b
	pop iy			;070c
	ld hl,(00001h)		;070e
	ld b,010h		;0711
l0713h:
	inc de			;0713
	inc de			;0714
	inc de			;0715
	ld (hl),0c3h		;0716
	inc hl			;0718
	ld (hl),e		;0719
	inc hl			;071a
	ld (hl),d		;071b
	inc hl			;071c
	djnz l0713h		;071d
	ld ix,l0a00h		;071f
	ld bc,l0400h		;0723
	push iy			;0726
	pop hl			;0728
	ld a,h			;0729
	sub 00ah		;072a
	ld d,a			;072c
	ld hl,l0e00h		;072d
l0730h:
	ld a,(ix+000h)		;0730
	rlc (hl)		;0733
	jr nc,l0738h		;0735
	add a,d			;0737
l0738h:
	ld (iy+000h),a		;0738
	inc ix			;073b
	inc iy			;073d
	dec bc			;073f
	ld a,c			;0740
	and 007h		;0741
	jr nz,l0746h		;0743
	inc hl			;0745
l0746h:
	ld a,b			;0746
	or c			;0747
	jr nz,l0730h		;0748
	ld hl,l0794h		;074a
	call sub_08b1h		;074d
	ld a,(l0103h)		;0750
	add a,041h		;0753
	ld (hl),a		;0755
	call sub_08b1h		;0756
	ld a,(l0108h)		;0759
	call sub_08bah		;075c
	inc hl			;075f
	ld a,(l0107h)		;0760
	call sub_08bah		;0763
	call sub_08b1h		;0766
	ld de,(00001h)		;0769
	inc de			;076d
	inc de			;076e
	ld a,(de)		;076f
	call sub_08bah		;0770
	ld de,l0794h		;0773
	ld c,009h		;0776
	call 00005h		;0778
	ld de,l0831h		;077b
	ld a,(l0104h)		;077e
	cp 059h			;0781
	jr z,l0788h		;0783
	ld de,l083bh		;0785
l0788h:
	ld c,009h		;0788
l078ah:
	call 00005h		;078a
	xor a			;078d
	ld (00004h),a		;078e
	jp 00000h		;0791
l0794h:
	dec c			;0794
	ld a,(bc)		;0795
	ld a,(bc)		;0796
	ld d,d			;0797
	ld h,c			;0798
	ld l,l			;0799
	ld h,h			;079a
	ld l,c			;079b
	ld (hl),e		;079c
	ld l,e			;079d
	jr nz,l0804h		;079e
	ld (hl),d		;07a0
	ld l,c			;07a1
	halt			;07a2
	ld h,l			;07a3
	ld (hl),d		;07a4
	jr nz,l0810h		;07a5
	ld l,(hl)		;07a7
	ld (hl),e		;07a8
	ld (hl),h		;07a9
	ld h,c			;07aa
	ld l,h			;07ab
	ld l,h			;07ac
	ld h,l			;07ad
	ld h,h			;07ae
	dec c			;07af
	ld a,(bc)		;07b0
	dec l			;07b1
	dec l			;07b2
	dec l			;07b3
	dec l			;07b4
	dec l			;07b5
	dec l			;07b6
	dec l			;07b7
	dec l			;07b8
	dec l			;07b9
	dec l			;07ba
	dec l			;07bb
	dec l			;07bc
	dec l			;07bd
	dec l			;07be
	dec l			;07bf
	dec l			;07c0
	dec l			;07c1
	dec l			;07c2
	dec l			;07c3
	dec l			;07c4
	dec l			;07c5
	dec l			;07c6
	dec l			;07c7
	dec l			;07c8
	dec c			;07c9
	ld a,(bc)		;07ca
	ld c,h			;07cb
	ld l,a			;07cc
	ld h,a			;07cd
	ld l,c			;07ce
	ld h,e			;07cf
	ld h,c			;07d0
	ld l,h			;07d1
	jr nz,l0838h		;07d2
	ld (hl),d		;07d4
	ld l,c			;07d5
	halt			;07d6
	ld h,l			;07d7
	inc hl			;07d8
	jr nz,l0809h		;07d9
	ld l,02eh		;07db
	ld l,02eh		;07dd
	jr nz,$+65		;07df
	ld a,(00a0dh)		;07e1
	ld b,e			;07e4
	ld l,a			;07e5
	ld d,b			;07e6
	ld l,a			;07e7
	ld (hl),a		;07e8
	ld h,l			;07e9
	ld (hl),d		;07ea
	ld e,a			;07eb
	jr c,l0826h		;07ec
	jr nz,$+114		;07ee
	ld l,a			;07f0
	ld (hl),d		;07f1
	ld (hl),h		;07f2
	inc hl			;07f3
	jr nz,l0824h		;07f4
	ld l,02eh		;07f6
	jr nz,l0839h		;07f8
	ccf			;07fa
	inc l			;07fb
	ccf			;07fc
	ccf			;07fd
	dec c			;07fe
	ld a,(bc)		;07ff
	ld c,h			;0800
	ld l,a			;0801
	ld h,c			;0802
	ld h,h			;0803
l0804h:
	jr nz,$+99		;0804
	ld h,h			;0806
	ld h,h			;0807
	ld (hl),d		;0808
l0809h:
	ld h,l			;0809
	ld (hl),e		;080a
	ld (hl),e		;080b
	jr nz,l083ch		;080c
	ld l,02eh		;080e
l0810h:
	ld l,02eh		;0810
	ld l,02eh		;0812
	jr nz,l0855h		;0814
	ccf			;0816
	jr nc,l0849h		;0817
	dec c			;0819
	ld a,(bc)		;081a
	ld b,(hl)		;081b
	ld l,c			;081c
	ld l,h			;081d
	ld h,l			;081e
	jr nz,$+102		;081f
	ld l,c			;0821
	ld (hl),d		;0822
	ld h,l			;0823
l0824h:
	ld h,e			;0824
	ld (hl),h		;0825
l0826h:
	ld l,a			;0826
	ld (hl),d		;0827
	ld a,c			;0828
	jr nz,l0859h		;0829
	ld l,02eh		;082b
	ld l,02eh		;082d
	jr nz,l0855h		;082f
l0831h:
	ld h,l			;0831
	ld (hl),d		;0832
	ld h,c			;0833
	ld (hl),e		;0834
	ld h,l			;0835
	ld h,h			;0836
	dec c			;0837
l0838h:
	ld a,(bc)		;0838
l0839h:
	ld a,(bc)		;0839
	inc h			;083a
l083bh:
	ld l,(hl)		;083b
l083ch:
	ld l,a			;083c
	ld (hl),h		;083d
	jr nz,l08a1h		;083e
	ld l,h			;0840
	ld (hl),h		;0841
	ld h,l			;0842
	ld (hl),d		;0843
	ld h,l			;0844
	ld h,h			;0845
	dec c			;0846
	ld a,(bc)		;0847
	ld a,(bc)		;0848
l0849h:
	inc h			;0849
	jp (hl)			;084a
sub_084bh:
	ld b,008h		;084b
l084dh:
	ld a,c			;084d
	xor h			;084e
	rlca			;084f
	adc hl,hl		;0850
	rrca			;0852
	jr nc,l085dh		;0853
l0855h:
	ld a,h			;0855
	xor 010h		;0856
	ld h,a			;0858
l0859h:
	ld a,l			;0859
	xor 020h		;085a
l085ch:
	ld l,a			;085c
l085dh:
	rl c			;085d
	djnz l084dh		;085f
	ret			;0861
	ld c,(hl)		;0862
	nop			;0863
	ld a,(bc)		;0864
	nop			;0865
	defb 0fdh,000h,03ah ;illegal sequence	;0866
	nop			;0869
	ld (de),a		;086a
	nop			;086b
	cp l			;086c
	nop			;086d
	ld h,000h		;086e
	ld a,(de)		;0870
	nop			;0871
	ld a,l			;0872
	nop			;0873
	inc de			;0874
	nop			;0875
l0876h:
	ex af,af'		;0876
	nop			;0877
	dec a			;0878
	nop			;0879
	nop			;087a
	nop			;087b
	ld h,001h		;087c
	ld a,(de)		;087e
	nop			;087f
	sbc a,001h		;0880
	ex de,hl		;0882
	nop			;0883
	jr l0886h		;0884
l0886h:
	ld a,(hl)		;0886
	ld bc,0009dh		;0887
	inc b			;088a
	nop			;088b
	cp 000h			;088c
	ld c,(hl)		;088e
	nop			;088f
	ld a,(bc)		;0890
	nop			;0891
	ld a,(hl)		;0892
	nop			;0893
	nop			;0894
	nop			;0895
l0896h:
	ld a,(de)		;0896
	nop			;0897
	inc b			;0898
	rrca			;0899
	nop			;089a
	nop			;089b
	nop			;089c
	ld a,a			;089d
	nop			;089e
	ret nz			;089f
	nop			;08a0
l08a1h:
	nop			;08a1
	nop			;08a2
	nop			;08a3
	nop			;08a4
sub_08a5h:
	ld hl,00080h		;08a5
	ld b,080h		;08a8
l08aah:
	ld a,(hl)		;08aa
	cpl			;08ab
	ld (hl),a		;08ac
	inc hl			;08ad
	djnz l08aah		;08ae
	ret			;08b0
sub_08b1h:
	ld bc,00000h		;08b1
	ld a,03fh		;08b4
	cpir			;08b6
	dec hl			;08b8
	ret			;08b9
sub_08bah:
	push af			;08ba
	rra			;08bb
	rra			;08bc
	rra			;08bd
	rra			;08be
	call sub_08c3h		;08bf
	pop af			;08c2
sub_08c3h:
	and 00fh		;08c3
	add a,090h		;08c5
	daa			;08c7
	adc a,040h		;08c8
	daa			;08ca
	ld (hl),a		;08cb
	inc hl			;08cc
	ret			;08cd
sub_08ceh:
	pop de			;08ce
	push de			;08cf
	ld c,009h		;08d0
	ld a,(00080h)		;08d2
	or a			;08d5
	call z,00005h		;08d6
	pop hl			;08d9
	ld bc,00000h		;08da
	ld a,024h		;08dd
	cpir			;08df
	jp (hl)			;08e1
sub_08e2h:
	ld b,030h		;08e2
	ld c,03ah		;08e4
	ld d,041h		;08e6
	ld e,047h		;08e8
	call sub_090eh		;08ea
	ret c			;08ed
	ret z			;08ee
	ex de,hl		;08ef
	xor a			;08f0
	ld h,a			;08f1
	ld l,a			;08f2
l08f3h:
	add hl,hl		;08f3
	add hl,hl		;08f4
	add hl,hl		;08f5
	add hl,hl		;08f6
	or l			;08f7
	ld l,a			;08f8
	ld a,(de)		;08f9
	inc de			;08fa
	sub 030h		;08fb
	jr c,l090bh		;08fd
	cp 00ah			;08ff
	jr c,l08f3h		;0901
	sub 007h		;0903
	jr c,l090bh		;0905
	cp 010h			;0907
	jr c,l08f3h		;0909
l090bh:
	xor a			;090b
	inc a			;090c
	ret			;090d
sub_090eh:
	ld a,(00080h)		;090e
	or a			;0911
	jr nz,l0943h		;0912
	push bc			;0914
	push de			;0915
	ld de,l02dch		;0916
	ld a,00ah		;0919
	ld (de),a		;091b
	ld c,00ah		;091c
	call 00005h		;091e
	ld hl,l02dch+1		;0921
	ld b,000h		;0924
	ld c,(hl)		;0926
	inc hl			;0927
	add hl,bc		;0928
	ld (hl),00dh		;0929
	pop de			;092b
	pop bc			;092c
	ld hl,l02dch+2		;092d
	call sub_0963h		;0930
	ret z			;0933
	push hl			;0934
l0935h:
	call sub_0963h		;0935
	inc hl			;0938
	jr z,l093fh		;0939
	jr nc,l0935h		;093b
	pop hl			;093d
	ret			;093e
l093fh:
	pop hl			;093f
	ld a,(hl)		;0940
	or a			;0941
	ret			;0942
l0943h:
	ld hl,(l0961h)		;0943
	call sub_0963h		;0946
	jr nz,l0950h		;0949
	inc hl			;094b
	ld (l0961h),hl		;094c
	ret			;094f
l0950h:
	push hl			;0950
l0951h:
	call sub_0963h		;0951
	inc hl			;0954
	jp c,l01d3h		;0955
	jr nz,l0951h		;0958
	ld (l0961h),hl		;095a
	pop hl			;095d
	ld a,(hl)		;095e
	or a			;095f
	ret			;0960
l0961h:
	nop			;0961
	nop			;0962
sub_0963h:
	ld a,(hl)		;0963
	cp 00dh			;0964
	ret z			;0966
	cp 02fh			;0967
	ret z			;0969
	cp 02ch			;096a
	ret z			;096c
	cp 02ah			;096d
	ret z			;096f
	call sub_097eh		;0970
	ld (hl),a		;0973
	cp b			;0974
	ret c			;0975
	cp c			;0976
	ccf			;0977
	ret nc			;0978
	cp d			;0979
	ret c			;097a
	cp e			;097b
	ccf			;097c
	ret			;097d
sub_097eh:
	cp 061h			;097e
	ret c			;0980
	cp 07bh			;0981
	ret nc			;0983
	sub 020h		;0984
	ret			;0986
	nop			;0987
	nop			;0988
	nop			;0989
	nop			;098a
	nop			;098b
	nop			;098c
	nop			;098d
	nop			;098e
	nop			;098f
	nop			;0990
	nop			;0991
	nop			;0992
	nop			;0993
	nop			;0994
	nop			;0995
	nop			;0996
	nop			;0997
	nop			;0998
	nop			;0999
	nop			;099a
	nop			;099b
	nop			;099c
	nop			;099d
	nop			;099e
	nop			;099f
	nop			;09a0
	nop			;09a1
	nop			;09a2
	nop			;09a3
	nop			;09a4
	nop			;09a5
	nop			;09a6
l09a7h:
	nop			;09a7
	nop			;09a8
	nop			;09a9
	nop			;09aa
	nop			;09ab
	nop			;09ac
	nop			;09ad
	nop			;09ae
	nop			;09af
	nop			;09b0
	nop			;09b1
	nop			;09b2
	nop			;09b3
	nop			;09b4
	nop			;09b5
	nop			;09b6
	nop			;09b7
	nop			;09b8
	nop			;09b9
	nop			;09ba
	nop			;09bb
	nop			;09bc
	nop			;09bd
	nop			;09be
	nop			;09bf
	nop			;09c0
	nop			;09c1
	nop			;09c2
	nop			;09c3
	nop			;09c4
	nop			;09c5
	nop			;09c6
	nop			;09c7
	nop			;09c8
	nop			;09c9
	nop			;09ca
	nop			;09cb
	nop			;09cc
	nop			;09cd
	nop			;09ce
	nop			;09cf
	nop			;09d0
	nop			;09d1
	nop			;09d2
	nop			;09d3
	nop			;09d4
	nop			;09d5
	nop			;09d6
	nop			;09d7
	nop			;09d8
	nop			;09d9
	nop			;09da
	nop			;09db
	nop			;09dc
	nop			;09dd
	nop			;09de
	nop			;09df
	nop			;09e0
	nop			;09e1
	nop			;09e2
	nop			;09e3
	nop			;09e4
	nop			;09e5
	nop			;09e6
	nop			;09e7
	nop			;09e8
	nop			;09e9
	nop			;09ea
	nop			;09eb
	nop			;09ec
	nop			;09ed
	nop			;09ee
	nop			;09ef
	nop			;09f0
	nop			;09f1
	nop			;09f2
	nop			;09f3
	nop			;09f4
	nop			;09f5
	nop			;09f6
	nop			;09f7
	nop			;09f8
	nop			;09f9
	nop			;09fa
	nop			;09fb
	nop			;09fc
	nop			;09fd
	nop			;09fe
	nop			;09ff
l0a00h:
	jp 00000h		;0a00
	jp l0a33h		;0a03
	jp l0c71h		;0a06
	jp l0c74h		;0a09
	jp l0c77h		;0a0c
	jp l0c7ah		;0a0f
	jp l0c7dh		;0a12
	jp l0c80h		;0a15
	jp l0adeh		;0a18
	jp l0ab0h		;0a1b
	jp l0aech		;0a1e
	jp l0af8h		;0a21
	jp l0b04h		;0a24
	jp l0b0bh		;0a27
	jp l0b42h		;0a2a
	jp l0c98h		;0a2d
	jp l0b77h		;0a30
l0a33h:
	ld a,(00db8h)		;0a33
	or a			;0a36
	jp nz,l0c6eh		;0a37
	ld sp,00080h		;0a3a
	ld hl,00000h		;0a3d
	ld (l0db0h),hl		;0a40
	ld hl,00001h		;0a43
	ld (l0db2h),hl		;0a46
	ld hl,(l0dbbh)		;0a49
	ld bc,l1600h		;0a4c
	or a			;0a4f
	sbc hl,bc		;0a50
	ld (l0db4h),hl		;0a52
	push hl			;0a55
	ld b,02ch		;0a56
l0a58h:
	push bc			;0a58
	call sub_0b21h		;0a59
	call sub_0a88h		;0a5c
	pop bc			;0a5f
	djnz l0a58h		;0a60
	ld a,0c3h		;0a62
	ld (00000h),a		;0a64
	ld hl,(l0dbbh)		;0a67
	inc hl			;0a6a
	inc hl			;0a6b
	inc hl			;0a6c
	ld (00001h),hl		;0a6d
	ld (00005h),a		;0a70
	ld hl,(l0db9h)		;0a73
	ld (00006h),hl		;0a76
	ld a,(00004h)		;0a79
	ld c,a			;0a7c
	ld hl,00080h		;0a7d
	ld (l0db4h),hl		;0a80
	pop hl			;0a83
	inc hl			;0a84
	inc hl			;0a85
	inc hl			;0a86
	jp (hl)			;0a87
sub_0a88h:
	ld hl,(l0db4h)		;0a88
	ld bc,00080h		;0a8b
	add hl,bc		;0a8e
	ld (l0db4h),hl		;0a8f
	ld hl,(l0db2h)		;0a92
	inc hl			;0a95
	ld (l0db2h),hl		;0a96
	ld bc,(l0caeh)		;0a99
	or a			;0a9d
	sbc hl,bc		;0a9e
	ret c			;0aa0
	ret z			;0aa1
	ld hl,00001h		;0aa2
	ld (l0db2h),hl		;0aa5
	ld hl,(l0db0h)		;0aa8
	inc hl			;0aab
	ld (l0db0h),hl		;0aac
	ret			;0aaf
l0ab0h:
	ld hl,(l0a00h+1)	;0ab0
	ld a,h			;0ab3
	or l			;0ab4
	jr z,l0abdh		;0ab5
	ld hl,l0a00h		;0ab7
	ld (00006h),hl		;0aba
l0abdh:
	ld a,(00db8h)		;0abd
	cp c			;0ac0
	jr z,l0ad5h		;0ac1
	jr nc,l0ac6h		;0ac3
	dec c			;0ac5
l0ac6h:
	xor a			;0ac6
	ld (l0dafh),a		;0ac7
	call sub_0c86h		;0aca
	ld a,h			;0acd
	or l			;0ace
	ret nz			;0acf
	xor a			;0ad0
	ld (00004h),a		;0ad1
	ret			;0ad4
l0ad5h:
	ld a,001h		;0ad5
	ld (l0dafh),a		;0ad7
	ld hl,l0c9eh		;0ada
	ret			;0add
l0adeh:
	ld hl,00000h		;0ade
	ld (l0db0h),hl		;0ae1
	ld a,(l0dafh)		;0ae4
	or a			;0ae7
	jp z,l0c83h		;0ae8
	ret			;0aeb
l0aech:
	ld (l0db0h),bc		;0aec
	ld a,(l0dafh)		;0af0
	or a			;0af3
	jp z,l0c89h		;0af4
	ret			;0af7
l0af8h:
	ld (l0db2h),bc		;0af8
	ld a,(l0dafh)		;0afc
	or a			;0aff
	jp z,l0c8ch		;0b00
	ret			;0b03
l0b04h:
	ld (l0db4h),bc		;0b04
	jp l0c8fh		;0b08
l0b0bh:
	ld a,(l0dafh)		;0b0b
	or a			;0b0e
	jp z,l0c92h		;0b0f
	ld (l0dbdh),sp		;0b12
	ld sp,l0cefh		;0b16
	call sub_0b21h		;0b19
	ld sp,(l0dbdh)		;0b1c
	ret			;0b20
sub_0b21h:
	ld a,017h		;0b21
	ld (l0cbdh),a		;0b23
	ld a,004h		;0b26
	ld (l0cbeh),a		;0b28
	ld bc,(l0db0h)		;0b2b
	ld (l0cbfh),bc		;0b2f
	ld bc,(l0db2h)		;0b33
	ld (l0cc1h),bc		;0b37
	call sub_0b82h		;0b3b
	call sub_0be9h		;0b3e
	ret			;0b41
l0b42h:
	ld a,(l0dafh)		;0b42
	or a			;0b45
	jp z,l0c95h		;0b46
	ld (l0dbdh),sp		;0b49
	ld sp,l0cefh		;0b4d
	call sub_0b58h		;0b50
	ld sp,(l0dbdh)		;0b53
	ret			;0b57
sub_0b58h:
	ld a,018h		;0b58
	ld (l0cbdh),a		;0b5a
	ld a,084h		;0b5d
	ld (l0cbeh),a		;0b5f
	ld bc,(l0db0h)		;0b62
	ld (l0cbfh),bc		;0b66
	ld bc,(l0db2h)		;0b6a
	ld (l0cc1h),bc		;0b6e
	call sub_0b82h		;0b72
	xor a			;0b75
	ret			;0b76
l0b77h:
	ld a,(l0dafh)		;0b77
	or a			;0b7a
	jp z,l0c9bh		;0b7b
	ld h,b			;0b7e
	ld l,c			;0b7f
	inc hl			;0b80
	ret			;0b81
sub_0b82h:
	push hl			;0b82
	push de			;0b83
	ld hl,l0cbdh		;0b84
	ld de,(l0db6h)		;0b87
	ld c,e			;0b8b
l0b8ch:
	in a,(c)		;0b8c
	rra			;0b8e
	jp c,l0b8ch		;0b8f
	ld c,d			;0b92
	ld a,005h		;0b93
	out (c),a		;0b95
	ld c,e			;0b97
l0b98h:
	in a,(c)		;0b98
	rra			;0b9a
	jp c,l0b98h		;0b9b
	ld c,d			;0b9e
	ld a,001h		;0b9f
	out (c),a		;0ba1
	ld c,e			;0ba3
l0ba4h:
	in a,(c)		;0ba4
	rra			;0ba6
	jp c,l0ba4h		;0ba7
	ld c,d			;0baa
	outi			;0bab
	ld c,e			;0bad
l0baeh:
	in a,(c)		;0bae
	rra			;0bb0
	jp c,l0baeh		;0bb1
	ld c,d			;0bb4
	outi			;0bb5
	ld a,(l0cbeh)		;0bb7
	or a			;0bba
	jr z,l0be6h		;0bbb
	ld b,a			;0bbd
	ld a,(l0cbdh)		;0bbe
	cp 018h			;0bc1
	jr nz,l0bd9h		;0bc3
	ld b,004h		;0bc5
l0bc7h:
	ld c,e			;0bc7
l0bc8h:
	in a,(c)		;0bc8
	rra			;0bca
	jp c,l0bc8h		;0bcb
	ld c,d			;0bce
	outi			;0bcf
	jp nz,l0bc7h		;0bd1
	ld hl,(l0db4h)		;0bd4
	ld b,080h		;0bd7
l0bd9h:
	ld c,e			;0bd9
l0bdah:
	in a,(c)		;0bda
	rra			;0bdc
	jp c,l0bdah		;0bdd
	ld c,d			;0be0
	outi			;0be1
	jp nz,l0bd9h		;0be3
l0be6h:
	pop de			;0be6
	pop hl			;0be7
	ret			;0be8
sub_0be9h:
	push hl			;0be9
	push de			;0bea
	ld hl,l0cbdh		;0beb
	ld de,(l0db6h)		;0bee
	ld c,e			;0bf2
l0bf3h:
	in a,(c)		;0bf3
	jp p,l0bf3h		;0bf5
	ld c,d			;0bf8
	in a,(c)		;0bf9
	cp 005h			;0bfb
	jr nz,l0c4eh		;0bfd
	ld c,e			;0bff
l0c00h:
	in a,(c)		;0c00
	jp p,l0c00h		;0c02
	ld c,d			;0c05
	in a,(c)		;0c06
	cp 001h			;0c08
	jr nz,l0c4eh		;0c0a
	ld c,e			;0c0c
l0c0dh:
	in a,(c)		;0c0d
	jp p,l0c0dh		;0c0f
	ld c,d			;0c12
	ini			;0c13
	ld a,(l0cbdh)		;0c15
	cp 017h			;0c18
	jr nz,l0c2eh		;0c1a
	ld c,e			;0c1c
l0c1dh:
	in a,(c)		;0c1d
	jp p,l0c1dh		;0c1f
	ld c,d			;0c22
	in a,(c)		;0c23
	or a			;0c25
	jr z,l0c4ah		;0c26
	ld b,a			;0c28
	ld hl,(l0db4h)		;0c29
	jr l0c3eh		;0c2c
l0c2eh:
	ld c,e			;0c2e
l0c2fh:
	in a,(c)		;0c2f
	jp p,l0c2fh		;0c31
	ld c,d			;0c34
	ini			;0c35
	ld a,(l0cbeh)		;0c37
	or a			;0c3a
	jr z,l0c4ah		;0c3b
	ld b,a			;0c3d
l0c3eh:
	ld c,e			;0c3e
l0c3fh:
	in a,(c)		;0c3f
	jp p,l0c3fh		;0c41
	ld c,d			;0c44
	ini			;0c45
	jp nz,l0c3eh		;0c47
l0c4ah:
	pop de			;0c4a
	pop hl			;0c4b
	xor a			;0c4c
	ret			;0c4d
l0c4eh:
	call sub_0c56h		;0c4e
	pop de			;0c51
	pop hl			;0c52
	xor a			;0c53
	inc a			;0c54
	ret			;0c55
sub_0c56h:
	ld hl,00fa0h		;0c56
	ld b,000h		;0c59
l0c5bh:
	dec hl			;0c5b
	ld a,h			;0c5c
	or l			;0c5d
	ret z			;0c5e
	ld c,e			;0c5f
	in a,(c)		;0c60
	jp p,l0c5bh		;0c62
	ld c,d			;0c65
	in a,(c)		;0c66
	inc b			;0c68
	jr nz,l0c5bh		;0c69
	dec b			;0c6b
	jr l0c5bh		;0c6c
l0c6eh:
	jp 00000h		;0c6e
l0c71h:
	jp 00000h		;0c71
l0c74h:
	jp 00000h		;0c74
l0c77h:
	jp 00000h		;0c77
l0c7ah:
	jp 00000h		;0c7a
l0c7dh:
	jp 00000h		;0c7d
l0c80h:
	jp 00000h		;0c80
l0c83h:
	jp 00000h		;0c83
sub_0c86h:
	jp 00000h		;0c86
l0c89h:
	jp 00000h		;0c89
l0c8ch:
	jp 00000h		;0c8c
l0c8fh:
	jp 00000h		;0c8f
l0c92h:
	jp 00000h		;0c92
l0c95h:
	jp 00000h		;0c95
l0c98h:
	jp 00000h		;0c98
l0c9bh:
	jp 00000h		;0c9b
l0c9eh:
	nop			;0c9e
	nop			;0c9f
	nop			;0ca0
	nop			;0ca1
	nop			;0ca2
	nop			;0ca3
	nop			;0ca4
	nop			;0ca5
	rst 28h			;0ca6
	inc c			;0ca7
	xor (hl)		;0ca8
	inc c			;0ca9
	nop			;0caa
	nop			;0cab
	ld l,a			;0cac
	dec c			;0cad
l0caeh:
	ld a,(de)		;0cae
	nop			;0caf
	inc bc			;0cb0
	rlca			;0cb1
	nop			;0cb2
l0cb3h:
	nop			;0cb3
	nop			;0cb4
l0cb5h:
	ccf			;0cb5
	nop			;0cb6
	ret nz			;0cb7
	nop			;0cb8
	nop			;0cb9
	nop			;0cba
l0cbbh:
	nop			;0cbb
	nop			;0cbc
l0cbdh:
	pop af			;0cbd
l0cbeh:
	nop			;0cbe
l0cbfh:
	nop			;0cbf
	nop			;0cc0
l0cc1h:
	nop			;0cc1
l0cc2h:
	nop			;0cc2
	nop			;0cc3
	nop			;0cc4
	nop			;0cc5
	nop			;0cc6
	nop			;0cc7
	nop			;0cc8
	nop			;0cc9
	nop			;0cca
	nop			;0ccb
	nop			;0ccc
	nop			;0ccd
	nop			;0cce
	nop			;0ccf
	nop			;0cd0
	nop			;0cd1
	nop			;0cd2
	nop			;0cd3
	nop			;0cd4
	nop			;0cd5
	nop			;0cd6
	nop			;0cd7
	nop			;0cd8
	nop			;0cd9
	nop			;0cda
	nop			;0cdb
	nop			;0cdc
	nop			;0cdd
	nop			;0cde
	nop			;0cdf
	nop			;0ce0
	nop			;0ce1
	nop			;0ce2
	nop			;0ce3
	nop			;0ce4
	nop			;0ce5
	nop			;0ce6
	nop			;0ce7
	nop			;0ce8
	nop			;0ce9
	nop			;0cea
	nop			;0ceb
	nop			;0cec
	nop			;0ced
	nop			;0cee
l0cefh:
	nop			;0cef
	nop			;0cf0
	nop			;0cf1
	nop			;0cf2
	nop			;0cf3
	nop			;0cf4
	nop			;0cf5
	nop			;0cf6
	nop			;0cf7
	nop			;0cf8
	nop			;0cf9
	nop			;0cfa
	nop			;0cfb
	nop			;0cfc
	nop			;0cfd
	nop			;0cfe
	nop			;0cff
	nop			;0d00
	nop			;0d01
	nop			;0d02
	nop			;0d03
	nop			;0d04
	nop			;0d05
	nop			;0d06
	nop			;0d07
	nop			;0d08
	nop			;0d09
	nop			;0d0a
	nop			;0d0b
	nop			;0d0c
	nop			;0d0d
	nop			;0d0e
	nop			;0d0f
	nop			;0d10
	nop			;0d11
	nop			;0d12
	nop			;0d13
	nop			;0d14
	nop			;0d15
	nop			;0d16
	nop			;0d17
	nop			;0d18
	nop			;0d19
	nop			;0d1a
	nop			;0d1b
	nop			;0d1c
	nop			;0d1d
	nop			;0d1e
	nop			;0d1f
	nop			;0d20
	nop			;0d21
	nop			;0d22
	nop			;0d23
	nop			;0d24
	nop			;0d25
	nop			;0d26
	nop			;0d27
	nop			;0d28
	nop			;0d29
l0d2ah:
	nop			;0d2a
	nop			;0d2b
	nop			;0d2c
	nop			;0d2d
	nop			;0d2e
	nop			;0d2f
	nop			;0d30
	nop			;0d31
	nop			;0d32
	nop			;0d33
	nop			;0d34
	nop			;0d35
	nop			;0d36
	nop			;0d37
	nop			;0d38
	nop			;0d39
	nop			;0d3a
	nop			;0d3b
	nop			;0d3c
	nop			;0d3d
	nop			;0d3e
	nop			;0d3f
	nop			;0d40
	nop			;0d41
	nop			;0d42
	nop			;0d43
	nop			;0d44
	nop			;0d45
	nop			;0d46
	nop			;0d47
	nop			;0d48
	nop			;0d49
	nop			;0d4a
	nop			;0d4b
	nop			;0d4c
	nop			;0d4d
	nop			;0d4e
	nop			;0d4f
	nop			;0d50
	nop			;0d51
	nop			;0d52
	nop			;0d53
	nop			;0d54
	nop			;0d55
	nop			;0d56
	nop			;0d57
	nop			;0d58
	nop			;0d59
	nop			;0d5a
	nop			;0d5b
	nop			;0d5c
	nop			;0d5d
	nop			;0d5e
	nop			;0d5f
	nop			;0d60
	nop			;0d61
	nop			;0d62
	nop			;0d63
	nop			;0d64
	nop			;0d65
	nop			;0d66
	nop			;0d67
	nop			;0d68
	nop			;0d69
	nop			;0d6a
	nop			;0d6b
	nop			;0d6c
	nop			;0d6d
	nop			;0d6e
	nop			;0d6f
	nop			;0d70
	nop			;0d71
	nop			;0d72
	nop			;0d73
	nop			;0d74
	nop			;0d75
	nop			;0d76
	nop			;0d77
	nop			;0d78
	nop			;0d79
	nop			;0d7a
	nop			;0d7b
	nop			;0d7c
	nop			;0d7d
	nop			;0d7e
	nop			;0d7f
	nop			;0d80
	nop			;0d81
	nop			;0d82
	nop			;0d83
	nop			;0d84
	nop			;0d85
	nop			;0d86
	nop			;0d87
	nop			;0d88
	nop			;0d89
	nop			;0d8a
	nop			;0d8b
	nop			;0d8c
	nop			;0d8d
	nop			;0d8e
	nop			;0d8f
	nop			;0d90
	nop			;0d91
	nop			;0d92
	nop			;0d93
	nop			;0d94
	nop			;0d95
	nop			;0d96
	nop			;0d97
	nop			;0d98
	nop			;0d99
l0d9ah:
	nop			;0d9a
	nop			;0d9b
	nop			;0d9c
	nop			;0d9d
	nop			;0d9e
	nop			;0d9f
	nop			;0da0
	nop			;0da1
	nop			;0da2
	nop			;0da3
	nop			;0da4
	nop			;0da5
	nop			;0da6
	nop			;0da7
	nop			;0da8
	nop			;0da9
	nop			;0daa
	nop			;0dab
	nop			;0dac
	nop			;0dad
	nop			;0dae
l0dafh:
	nop			;0daf
l0db0h:
	nop			;0db0
	nop			;0db1
l0db2h:
	nop			;0db2
	nop			;0db3
l0db4h:
	nop			;0db4
	nop			;0db5
l0db6h:
	rst 38h			;0db6
	cp 00ch			;0db7
l0db9h:
	nop			;0db9
	nop			;0dba
l0dbbh:
	nop			;0dbb
	nop			;0dbc
l0dbdh:
	nop			;0dbd
	nop			;0dbe
	nop			;0dbf
	nop			;0dc0
	nop			;0dc1
	nop			;0dc2
	nop			;0dc3
	nop			;0dc4
	nop			;0dc5
	nop			;0dc6
	nop			;0dc7
	nop			;0dc8
	nop			;0dc9
	nop			;0dca
	nop			;0dcb
	nop			;0dcc
	nop			;0dcd
	nop			;0dce
	nop			;0dcf
	nop			;0dd0
	nop			;0dd1
	nop			;0dd2
	nop			;0dd3
	nop			;0dd4
	nop			;0dd5
	nop			;0dd6
	nop			;0dd7
	nop			;0dd8
	nop			;0dd9
	nop			;0dda
	nop			;0ddb
	nop			;0ddc
	nop			;0ddd
	nop			;0dde
	nop			;0ddf
	nop			;0de0
	nop			;0de1
	nop			;0de2
	nop			;0de3
	nop			;0de4
	nop			;0de5
	nop			;0de6
	nop			;0de7
	nop			;0de8
	nop			;0de9
	nop			;0dea
	nop			;0deb
	nop			;0dec
	nop			;0ded
	nop			;0dee
	nop			;0def
	nop			;0df0
	nop			;0df1
	nop			;0df2
	nop			;0df3
	nop			;0df4
	nop			;0df5
	nop			;0df6
	nop			;0df7
	nop			;0df8
	nop			;0df9
	nop			;0dfa
	nop			;0dfb
	nop			;0dfc
	nop			;0dfd
	nop			;0dfe
	nop			;0dff
l0e00h:
	inc b			;0e00
	sub d			;0e01
	ld c,c			;0e02
	inc h			;0e03
	sub d			;0e04
	ld c,c			;0e05
	inc h			;0e06
	ld b,b			;0e07
	jr nz,l0d9ah		;0e08
	ex af,af'		;0e0a
	ld (de),a		;0e0b
	nop			;0e0c
	ld b,b			;0e0d
	inc b			;0e0e
	nop			;0e0f
	jr nz,$+34		;0e10
	ld c,b			;0e12
	adc a,b			;0e13
	ld bc,l2022h		;0e14
	ld b,c			;0e17
	nop			;0e18
	ld c,b			;0e19
	nop			;0e1a
	ld c,b			;0e1b
	ld (de),a		;0e1c
	ld hl,01222h		;0e1d
	ld hl,04424h		;0e20
	sub c			;0e23
	inc b			;0e24
	ld (02422h),hl		;0e25
	adc a,b			;0e28
	adc a,c			;0e29
	ld (04408h),hl		;0e2a
	ld b,h			;0e2d
	ld c,b			;0e2e
	ld b,h			;0e2f
	ld (bc),a		;0e30
	jr nz,l0e73h		;0e31
	inc b			;0e33
	nop			;0e34
	ld b,b			;0e35
	djnz l0e78h		;0e36
	add a,b			;0e38
	inc b			;0e39
	ld (de),a		;0e3a
	ld bc,l0404h		;0e3b
	ld b,c			;0e3e
	nop			;0e3f
	ex af,af'		;0e40
	nop			;0e41
	ld b,c			;0e42
	nop			;0e43
	ld b,b			;0e44
	djnz l0e57h		;0e45
	ld b,b			;0e47
	djnz l0e8ah		;0e48
	add a,b			;0e4a
	nop			;0e4b
	ex af,af'		;0e4c
	nop			;0e4d
	nop			;0e4e
	nop			;0e4f
	nop			;0e50
	nop			;0e51
	nop			;0e52
	nop			;0e53
	ld bc,00044h		;0e54
l0e57h:
	nop			;0e57
	nop			;0e58
	nop			;0e59
	nop			;0e5a
	nop			;0e5b
	nop			;0e5c
	nop			;0e5d
	nop			;0e5e
	nop			;0e5f
	nop			;0e60
	nop			;0e61
	nop			;0e62
	nop			;0e63
	nop			;0e64
	nop			;0e65
	nop			;0e66
	nop			;0e67
	nop			;0e68
	nop			;0e69
	nop			;0e6a
	nop			;0e6b
	nop			;0e6c
	nop			;0e6d
	nop			;0e6e
	nop			;0e6f
	nop			;0e70
	nop			;0e71
	nop			;0e72
l0e73h:
	nop			;0e73
	nop			;0e74
	nop			;0e75
	nop			;0e76
	nop			;0e77
l0e78h:
	nop			;0e78
	nop			;0e79
	nop			;0e7a
	nop			;0e7b
	nop			;0e7c
	nop			;0e7d
	nop			;0e7e
	nop			;0e7f
	nop			;0e80
	nop			;0e81
	nop			;0e82
	nop			;0e83
	nop			;0e84
	nop			;0e85
	nop			;0e86
	nop			;0e87
	nop			;0e88
	nop			;0e89
l0e8ah:
	nop			;0e8a
	nop			;0e8b
	nop			;0e8c
	nop			;0e8d
	nop			;0e8e
	nop			;0e8f
	nop			;0e90
	nop			;0e91
	nop			;0e92
	nop			;0e93
	nop			;0e94
	nop			;0e95
	nop			;0e96
	nop			;0e97
	nop			;0e98
	nop			;0e99
	nop			;0e9a
	nop			;0e9b
	nop			;0e9c
	nop			;0e9d
	nop			;0e9e
	nop			;0e9f
	nop			;0ea0
	nop			;0ea1
	nop			;0ea2
	nop			;0ea3
	nop			;0ea4
	nop			;0ea5
	nop			;0ea6
	nop			;0ea7
	nop			;0ea8
	nop			;0ea9
	nop			;0eaa
	nop			;0eab
	nop			;0eac
	nop			;0ead
	nop			;0eae
	nop			;0eaf
	nop			;0eb0
	nop			;0eb1
	nop			;0eb2
	nop			;0eb3
	nop			;0eb4
	nop			;0eb5
	nop			;0eb6
	nop			;0eb7
	nop			;0eb8
	nop			;0eb9
	nop			;0eba
	nop			;0ebb
	nop			;0ebc
	nop			;0ebd
	nop			;0ebe
	nop			;0ebf
	nop			;0ec0
	nop			;0ec1
	nop			;0ec2
	nop			;0ec3
	nop			;0ec4
	nop			;0ec5
	nop			;0ec6
	nop			;0ec7
	nop			;0ec8
	nop			;0ec9
	nop			;0eca
	nop			;0ecb
	nop			;0ecc
	nop			;0ecd
	nop			;0ece
	nop			;0ecf
	nop			;0ed0
	nop			;0ed1
	nop			;0ed2
	nop			;0ed3
	nop			;0ed4
	nop			;0ed5
	nop			;0ed6
	nop			;0ed7
	nop			;0ed8
	nop			;0ed9
	nop			;0eda
	nop			;0edb
	nop			;0edc
	nop			;0edd
	nop			;0ede
	nop			;0edf
	nop			;0ee0
	nop			;0ee1
	nop			;0ee2
	nop			;0ee3
	nop			;0ee4
	nop			;0ee5
	nop			;0ee6
	nop			;0ee7
	nop			;0ee8
	nop			;0ee9
	nop			;0eea
	nop			;0eeb
	nop			;0eec
	nop			;0eed
	nop			;0eee
	nop			;0eef
	nop			;0ef0
	nop			;0ef1
	nop			;0ef2
	nop			;0ef3
	nop			;0ef4
	nop			;0ef5
	nop			;0ef6
	nop			;0ef7
	nop			;0ef8
	nop			;0ef9
	nop			;0efa
	nop			;0efb
	nop			;0efc
	nop			;0efd
	nop			;0efe
	nop			;0eff
l0f00h:
	adc a,h			;0f00
	ret z			;0f01
	adc a,(hl)		;0f02
	ret nc			;0f03
	adc a,(hl)		;0f04
	ret c			;0f05
	adc a,(hl)		;0f06
	ret nz			;0f07
	cp h			;0f08
	nop			;0f09
	ld h,0fch		;0f0a
	ret pe			;0f0c
	ld c,l			;0f0d
	nop			;0f0e
	ld l,080h		;0f0f
	ld a,000h		;0f11
	ld h,018h		;0f13
	ld (hl),h		;0f15
	push af			;0f16
	or b			;0f17
	add a,b			;0f18
	ld l,0a2h		;0f19
	ld bc,0e826h		;0f1b
	ld (bc),a		;0f1e
	nop			;0f1f
	ex de,hl		;0f20
	jp pe,000bbh		;0f21
	ld h,0e4h		;0f24
	ld bc,080a8h		;0f26
	ld (hl),l		;0f29
	jp m,005b0h		;0f2a
	and 000h		;0f2d
	call po,0a801h		;0f2f
	add a,b			;0f32
	ld (hl),l		;0f33
	jp m,l01b0h		;0f34
	and 000h		;0f37
	cp c			;0f39
	ld (bc),a		;0f3a
	nop			;0f3b
	call po,0a801h		;0f3c
	add a,b			;0f3f
	ld (hl),l		;0f40
	jp m,l078ah		;0f41
	and 000h		;0f44
	ld b,e			;0f46
	jp po,l1ef3h		;0f47
	ret pe			;0f4a
	ld d,l			;0f4b
	nop			;0f4c
	call po,0a801h		;0f4d
	add a,b			;0f50
	ld (hl),l		;0f51
	jp m,l078ah		;0f52
	and 000h		;0f55
	ld b,e			;0f57
	jp po,l1ff3h		;0f58
	jp 000bbh		;0f5b
	ld h,0e4h		;0f5e
	ld bc,001a8h		;0f60
	ld (hl),h		;0f63
	jp m,000e4h		;0f64
	inc a			;0f67
	dec b			;0f68
	ld (hl),l		;0f69
	call p,001e4h		;0f6a
	xor b			;0f6d
	ld bc,0fa74h		;0f6e
	call po,03c00h		;0f71
	ld bc,0f075h		;0f74
	cp c			;0f77
	ld b,000h		;0f78
	call po,0a801h		;0f7a
	ld bc,0fa74h		;0f7d
	call po,08800h		;0f80
	rlca			;0f83
	ld b,e			;0f84
	jp po,02ef3h		;0f85
	add a,b			;0f88
	ld a,000h		;0f89
	ld h,017h		;0f8b
	ld (hl),h		;0f8d
	ld (de),a		;0f8e
	ld e,0e8h		;0f8f
	rrca			;0f91
	nop			;0f92
	call po,0a801h		;0f93
	ld bc,0fa74h		;0f96
	call po,08800h		;0f99
	rlca			;0f9c
	ld b,e			;0f9d
	jp po,l1ff3h		;0f9e
	jp 0a12eh		;0fa1
	ld (bc),a		;0fa4
	ld h,0bbh		;0fa5
	ret nc			;0fa7
	nop			;0fa8
	rst 30h			;0fa9
	ex (sp),hl		;0faa
	dec b			;0fab
	ld d,b			;0fac
	nop			;0fad
	adc a,(hl)		;0fae
	ret c			;0faf
	ld l,0a1h		;0fb0
	inc b			;0fb2
	ld h,0feh		;0fb3
	ret z			;0fb5
	or e			;0fb6
	add a,b			;0fb7
	or 0e3h			;0fb8
	adc a,e			;0fba
	ret c			;0fbb
	cp c			;0fbc
	add a,b			;0fbd
	nop			;0fbe
	jp 00000h		;0fbf
	nop			;0fc2
	nop			;0fc3
	nop			;0fc4
	nop			;0fc5
	nop			;0fc6
	nop			;0fc7
	nop			;0fc8
	nop			;0fc9
	nop			;0fca
	nop			;0fcb
	nop			;0fcc
	nop			;0fcd
	nop			;0fce
	nop			;0fcf
	nop			;0fd0
	nop			;0fd1
	nop			;0fd2
	nop			;0fd3
	nop			;0fd4
	nop			;0fd5
	nop			;0fd6
	nop			;0fd7
	nop			;0fd8
	nop			;0fd9
	nop			;0fda
	nop			;0fdb
	nop			;0fdc
	nop			;0fdd
	nop			;0fde
	nop			;0fdf
	nop			;0fe0
	nop			;0fe1
	nop			;0fe2
	nop			;0fe3
	nop			;0fe4
	nop			;0fe5
	nop			;0fe6
	nop			;0fe7
	nop			;0fe8
	nop			;0fe9
	nop			;0fea
	nop			;0feb
	nop			;0fec
	nop			;0fed
	nop			;0fee
	nop			;0fef
	nop			;0ff0
	nop			;0ff1
	nop			;0ff2
	nop			;0ff3
	nop			;0ff4
	nop			;0ff5
	nop			;0ff6
	nop			;0ff7
	nop			;0ff8
	nop			;0ff9
	nop			;0ffa
	nop			;0ffb
	nop			;0ffc
	nop			;0ffd
	nop			;0ffe
	nop			;0fff
	nop			;1000
	nop			;1001
	nop			;1002
	nop			;1003
	nop			;1004
	nop			;1005
	nop			;1006
	nop			;1007
	nop			;1008
	nop			;1009
	nop			;100a
	nop			;100b
	nop			;100c
	nop			;100d
	nop			;100e
	nop			;100f
	nop			;1010
	nop			;1011
	nop			;1012
	nop			;1013
	nop			;1014
	nop			;1015
	nop			;1016
	nop			;1017
	nop			;1018
	nop			;1019
	nop			;101a
	nop			;101b
	nop			;101c
	nop			;101d
	nop			;101e
	nop			;101f
	nop			;1020
	nop			;1021
	nop			;1022
	nop			;1023
	nop			;1024
	nop			;1025
	nop			;1026
	nop			;1027
	nop			;1028
	nop			;1029
	nop			;102a
	nop			;102b
	nop			;102c
	nop			;102d
	nop			;102e
	nop			;102f
	nop			;1030
	nop			;1031
	nop			;1032
	nop			;1033
	nop			;1034
	nop			;1035
	nop			;1036
	nop			;1037
	nop			;1038
	nop			;1039
	nop			;103a
	nop			;103b
	nop			;103c
	nop			;103d
	nop			;103e
	nop			;103f
	nop			;1040
	nop			;1041
	nop			;1042
	nop			;1043
	nop			;1044
	nop			;1045
	nop			;1046
	nop			;1047
	nop			;1048
	nop			;1049
	nop			;104a
	nop			;104b
	nop			;104c
	nop			;104d
	nop			;104e
	nop			;104f
	nop			;1050
	nop			;1051
	nop			;1052
	nop			;1053
	nop			;1054
	nop			;1055
	nop			;1056
	nop			;1057
	nop			;1058
	nop			;1059
	nop			;105a
	nop			;105b
	nop			;105c
	nop			;105d
	nop			;105e
	nop			;105f
	nop			;1060
	nop			;1061
	nop			;1062
	nop			;1063
	nop			;1064
	nop			;1065
	nop			;1066
	nop			;1067
	nop			;1068
	nop			;1069
	nop			;106a
	nop			;106b
	nop			;106c
	nop			;106d
	nop			;106e
	nop			;106f
	nop			;1070
	nop			;1071
	nop			;1072
	nop			;1073
	nop			;1074
	nop			;1075
	nop			;1076
	nop			;1077
	nop			;1078
	nop			;1079
	nop			;107a
	nop			;107b
	nop			;107c
	nop			;107d
	nop			;107e
	nop			;107f
	nop			;1080
	nop			;1081
	nop			;1082
	nop			;1083
	nop			;1084
	nop			;1085
	nop			;1086
	nop			;1087
	nop			;1088
	nop			;1089
	nop			;108a
	nop			;108b
	nop			;108c
	nop			;108d
	nop			;108e
	nop			;108f
	nop			;1090
	nop			;1091
	nop			;1092
	nop			;1093
	nop			;1094
	nop			;1095
	nop			;1096
	nop			;1097
	nop			;1098
	nop			;1099
	nop			;109a
	nop			;109b
	nop			;109c
	nop			;109d
	nop			;109e
	nop			;109f
	nop			;10a0
	nop			;10a1
	nop			;10a2
	nop			;10a3
	nop			;10a4
	nop			;10a5
	nop			;10a6
	nop			;10a7
	nop			;10a8
	nop			;10a9
	nop			;10aa
	nop			;10ab
	nop			;10ac
	nop			;10ad
	nop			;10ae
	nop			;10af
	nop			;10b0
	nop			;10b1
	nop			;10b2
	nop			;10b3
	nop			;10b4
	nop			;10b5
	nop			;10b6
	nop			;10b7
	nop			;10b8
	nop			;10b9
	nop			;10ba
	nop			;10bb
	nop			;10bc
	nop			;10bd
	nop			;10be
	nop			;10bf
	nop			;10c0
	nop			;10c1
	nop			;10c2
	nop			;10c3
	nop			;10c4
	nop			;10c5
	nop			;10c6
	nop			;10c7
	nop			;10c8
	nop			;10c9
	nop			;10ca
	nop			;10cb
	nop			;10cc
	nop			;10cd
	nop			;10ce
	nop			;10cf
	nop			;10d0
	nop			;10d1
	nop			;10d2
	nop			;10d3
	nop			;10d4
	nop			;10d5
	nop			;10d6
	nop			;10d7
	nop			;10d8
	nop			;10d9
	nop			;10da
	nop			;10db
	nop			;10dc
	nop			;10dd
	nop			;10de
	nop			;10df
	nop			;10e0
	nop			;10e1
	nop			;10e2
	nop			;10e3
	nop			;10e4
	nop			;10e5
	nop			;10e6
	nop			;10e7
	nop			;10e8
	nop			;10e9
	nop			;10ea
	nop			;10eb
	nop			;10ec
	nop			;10ed
	nop			;10ee
	nop			;10ef
	nop			;10f0
	nop			;10f1
	nop			;10f2
	nop			;10f3
	nop			;10f4
	nop			;10f5
	nop			;10f6
	nop			;10f7
	nop			;10f8
	nop			;10f9
	nop			;10fa
	nop			;10fb
	nop			;10fc
	nop			;10fd
	nop			;10fe
	nop			;10ff
	jp l0111h		;1100
	inc c			;1103
	ld e,c			;1104
	nop			;1105
	nop			;1106
	rst 38h			;1107
	cp 000h			;1108
	ld a,(bc)		;110a
	nop			;110b
	inc b			;110c
	nop			;110d
	rrca			;110e
	nop			;110f
	inc de			;1110
	ld sp,l09a7h		;1111
	ld hl,(00001h)		;1114
	ld de,0001ah		;1117
	add hl,de		;111a
	ld a,(hl)		;111b
	cp h			;111c
	jp nc,l02dch		;111d
	ld de,l012bh		;1120
	ld c,009h		;1123
	call 00005h		;1125
	jp 00000h		;1128
	dec c			;112b
	ld a,(bc)		;112c
	ld hl,(02a2ah)		;112d
	jr nz,$+116		;1130
	ld h,c			;1132
	ld l,l			;1133
	ld h,h			;1134
	ld l,c			;1135
	ld (hl),e		;1136
	ld l,e			;1137
	jr nz,l119eh		;1138
	ld (hl),d		;113a
	ld l,c			;113b
	halt			;113c
	ld h,l			;113d
	ld (hl),d		;113e
	jr nz,l11aah		;113f
	ld (hl),e		;1141
	jr nz,l11a5h		;1142
	ld l,h			;1144
	ld (hl),d		;1145
	ld h,l			;1146
	ld h,c			;1147
	ld h,h			;1148
	ld a,c			;1149
	jr nz,l11adh		;114a
	ld h,e			;114c
	ld (hl),h		;114d
	ld l,c			;114e
	halt			;114f
	ld h,l			;1150
	jr nz,l117dh		;1151
	ld hl,(l0d2ah)		;1153
	ld a,(bc)		;1156
	inc h			;1157
	ld de,l0163h		;1158
	ld c,009h		;115b
	call 00005h		;115d
	jp 00000h		;1160
	dec c			;1163
	ld a,(bc)		;1164
	ld a,(bc)		;1165
	ld hl,(02a2ah)		;1166
	jr nz,l11ceh		;1169
	ld h,c			;116b
	ld l,(hl)		;116c
	ld l,(hl)		;116d
	ld l,a			;116e
	ld (hl),h		;116f
	jr nz,l11deh		;1170
	ld l,a			;1172
	ld h,c			;1173
	ld h,h			;1174
	inc l			;1175
	jr nz,l11b0h		;1176
	jr nc,l11b2h		;1178
	jr c,$+34		;117a
	ld h,h			;117c
l117dh:
	ld l,a			;117d
	ld h,l			;117e
	ld (hl),e		;117f
	jr nz,l11f0h		;1180
	ld l,a			;1182
	ld (hl),h		;1183
	jr nz,l11f8h		;1184
	ld h,l			;1186
	ld (hl),e		;1187
	ld (hl),b		;1188
	ld l,a			;1189
	ld l,(hl)		;118a
	ld h,h			;118b
	jr nz,l11b8h		;118c
	ld hl,(l0d2ah)		;118e
	ld a,(bc)		;1191
	inc h			;1192
	ld de,l019eh		;1193
	ld c,009h		;1196
	call 00005h		;1198
	jp 00000h		;119b
l119eh:
	dec c			;119e
	ld a,(bc)		;119f
	ld hl,(02a2ah)		;11a0
	jr nz,$+112		;11a3
l11a5h:
	ld l,a			;11a5
	ld (hl),h		;11a6
	jr nz,$+117		;11a7
	ld (hl),h		;11a9
l11aah:
	ld h,c			;11aa
	ld l,(hl)		;11ab
	ld h,h			;11ac
l11adh:
	ld h,c			;11ad
	ld (hl),d		;11ae
	ld h,h			;11af
l11b0h:
	jr nz,l11f5h		;11b0
l11b2h:
	ld d,b			;11b2
	cpl			;11b3
	ld c,l			;11b4
	jr nz,l122ah		;11b5
	ld a,c			;11b7
l11b8h:
	ld (hl),e		;11b8
	ld (hl),h		;11b9
	ld h,l			;11ba
	ld l,l			;11bb
	inc l			;11bc
	jr nz,$+101		;11bd
	ld h,c			;11bf
	ld l,(hl)		;11c0
	ld l,(hl)		;11c1
	ld l,a			;11c2
	ld (hl),h		;11c3
	jr nz,$+107		;11c4
	ld l,(hl)		;11c6
	ld (hl),e		;11c7
	ld (hl),h		;11c8
	ld h,c			;11c9
	ld l,h			;11ca
	ld l,h			;11cb
	jr nz,l11f8h		;11cc
l11ceh:
	ld hl,(l0d2ah)		;11ce
	ld a,(bc)		;11d1
	inc h			;11d2
	ld de,l01deh		;11d3
	ld c,009h		;11d6
	call 00005h		;11d8
	jp 00000h		;11db
l11deh:
	dec c			;11de
	ld a,(bc)		;11df
	ld hl,(02a2ah)		;11e0
	jr nz,l124eh		;11e3
	ld l,(hl)		;11e5
	halt			;11e6
	ld h,c			;11e7
	ld l,h			;11e8
	ld l,c			;11e9
	ld h,h			;11ea
	jr nz,$+114		;11eb
	ld h,c			;11ed
	ld (hl),d		;11ee
	ld h,c			;11ef
l11f0h:
	ld l,l			;11f0
	ld h,l			;11f1
	ld (hl),h		;11f2
	ld h,l			;11f3
	ld (hl),d		;11f4
l11f5h:
	jr nz,l1260h		;11f5
	ld l,(hl)		;11f7
l11f8h:
	jr nz,$+101		;11f8
	ld l,a			;11fa
	ld l,l			;11fb
	ld l,l			;11fc
	ld h,c			;11fd
	ld l,(hl)		;11fe
	ld h,h			;11ff
	jr nz,$+110		;1200
	ld l,c			;1202
	ld l,(hl)		;1203
	ld h,l			;1204
	jr nz,$+44		;1205
	ld hl,(l0d2ah)		;1207
	ld a,(bc)		;120a
	inc h			;120b
	dec c			;120c
	ld a,(bc)		;120d
	ld a,(bc)		;120e
	ld hl,(02a2ah)		;120f
	ld hl,(02a2ah)		;1212
	ld hl,(02a2ah)		;1215
	ld hl,(02a2ah)		;1218
	ld hl,(02a2ah)		;121b
	ld hl,(02a2ah)		;121e
	ld hl,(02a2ah)		;1221
	ld hl,(02a2ah)		;1224
	ld hl,(02a2ah)		;1227
l122ah:
	ld hl,(02a2ah)		;122a
	ld hl,(02a2ah)		;122d
	ld hl,(02a2ah)		;1230
	ld hl,(02a2ah)		;1233
	ld hl,(02a2ah)		;1236
	ld hl,(02a2ah)		;1239
	ld hl,(02a2ah)		;123c
	ld hl,(00a0dh)		;123f
	ld hl,(l202ah)		;1242
	jr nz,l129ah		;1245
	ld d,a			;1247
	ld d,b			;1248
	jr nz,$+69		;1249
	ld l,a			;124b
	ld d,b			;124c
	ld l,a			;124d
l124eh:
	ld (hl),a		;124e
	ld h,l			;124f
	ld (hl),d		;1250
	ld e,a			;1251
	jr c,l128ch		;1252
	jr nz,$+116		;1254
	ld h,c			;1256
	ld l,l			;1257
	ld h,h			;1258
	ld l,c			;1259
	ld (hl),e		;125a
	ld l,e			;125b
	jr nz,$+102		;125c
	ld (hl),d		;125e
	ld l,c			;125f
l1260h:
	halt			;1260
	ld h,l			;1261
	ld (hl),d		;1262
	jr nz,l1285h		;1263
	jr nz,$+52		;1265
	ld sp,04e2dh		;1267
	ld l,a			;126a
	halt			;126b
	dec l			;126c
	jr c,$+54		;126d
	jr nz,l1291h		;126f
	ld hl,(l0d2ah)		;1271
	ld a,(bc)		;1274
	ld hl,(l202ah)		;1275
	jr nz,l129ah		;1278
	jr nz,l129ch		;127a
	jr nz,l129eh		;127c
	jr nz,l12a0h		;127e
	jr nz,l12a2h		;1280
	jr nz,l12a4h		;1282
	ld h,e			;1284
l1285h:
	ld l,a			;1285
	ld (hl),b		;1286
	ld a,c			;1287
	ld (hl),d		;1288
	ld l,c			;1289
	ld h,a			;128a
	ld l,b			;128b
l128ch:
	ld (hl),h		;128c
	jr nz,l12b7h		;128d
	ld b,e			;128f
	add hl,hl		;1290
l1291h:
	jr nz,$+51		;1291
	add hl,sp		;1293
	jr c,$+54		;1294
	jr nz,$+34		;1296
	jr nz,l12bah		;1298
l129ah:
	jr nz,$+34		;129a
l129ch:
	jr nz,$+34		;129c
l129eh:
	jr nz,l12c0h		;129e
l12a0h:
	jr nz,$+34		;12a0
l12a2h:
	jr nz,$+34		;12a2
l12a4h:
	ld hl,(l0d2ah)		;12a4
	ld a,(bc)		;12a7
	ld hl,(02a2ah)		;12a8
	ld hl,(02a2ah)		;12ab
	ld hl,(02a2ah)		;12ae
	ld hl,(02a2ah)		;12b1
	ld hl,(02a2ah)		;12b4
l12b7h:
	ld hl,(02a2ah)		;12b7
l12bah:
	ld hl,(02a2ah)		;12ba
	ld hl,(02a2ah)		;12bd
l12c0h:
	ld hl,(02a2ah)		;12c0
	ld hl,(02a2ah)		;12c3
	ld hl,(02a2ah)		;12c6
	ld hl,(02a2ah)		;12c9
	ld hl,(02a2ah)		;12cc
	ld hl,(02a2ah)		;12cf
	ld hl,(02a2ah)		;12d2
	ld hl,(02a2ah)		;12d5
	ld hl,(00a0dh)		;12d8
	inc h			;12db
	ld de,l020ch		;12dc
	ld c,009h		;12df
	call 00005h		;12e1
	ld hl,00080h		;12e4
	ld a,(hl)		;12e7
	or a			;12e8
	jr z,l1300h		;12e9
	ld b,000h		;12eb
	ld c,(hl)		;12ed
	inc hl			;12ee
	add hl,bc		;12ef
	ld d,h			;12f0
	ld e,l			;12f1
	inc de			;12f2
	ld bc,00005h		;12f3
	ld (hl),00dh		;12f6
	ldir			;12f8
	ld hl,00082h		;12fa
	ld (l0961h),hl		;12fd
l1300h:
	rst 38h			;1300
	rst 38h			;1301
	rst 38h			;1302
	rst 38h			;1303
	rst 38h			;1304
	rst 38h			;1305
	nop			;1306
	nop			;1307
	rst 38h			;1308
	rst 38h			;1309
	rst 38h			;130a
	rst 38h			;130b
	rst 38h			;130c
	rst 38h			;130d
	rst 38h			;130e
	rst 38h			;130f
	rst 38h			;1310
	nop			;1311
	nop			;1312
	nop			;1313
	rst 38h			;1314
	nop			;1315
	nop			;1316
	nop			;1317
	nop			;1318
	rst 38h			;1319
	nop			;131a
	nop			;131b
	nop			;131c
	nop			;131d
	nop			;131e
	rst 38h			;131f
	nop			;1320
	nop			;1321
	nop			;1322
	rst 38h			;1323
	nop			;1324
	rst 38h			;1325
	rst 38h			;1326
	nop			;1327
	nop			;1328
	nop			;1329
	rst 38h			;132a
	nop			;132b
	nop			;132c
	rst 38h			;132d
	nop			;132e
	nop			;132f
	rst 38h			;1330
	nop			;1331
	nop			;1332
	nop			;1333
	nop			;1334
	nop			;1335
	nop			;1336
	nop			;1337
	nop			;1338
	rst 38h			;1339
	nop			;133a
	nop			;133b
	nop			;133c
	nop			;133d
	nop			;133e
	nop			;133f
	nop			;1340
	nop			;1341
	nop			;1342
	nop			;1343
	rst 38h			;1344
	nop			;1345
	nop			;1346
	nop			;1347
	rst 38h			;1348
	nop			;1349
	rst 38h			;134a
	nop			;134b
	rst 38h			;134c
	nop			;134d
	rst 38h			;134e
	nop			;134f
	rst 38h			;1350
	nop			;1351
	rst 38h			;1352
	nop			;1353
	rst 38h			;1354
	nop			;1355
	rst 38h			;1356
	nop			;1357
	rst 38h			;1358
	nop			;1359
	rst 38h			;135a
	nop			;135b
	rst 38h			;135c
	nop			;135d
	rst 38h			;135e
	nop			;135f
	rst 38h			;1360
	nop			;1361
	rst 38h			;1362
	nop			;1363
	rst 38h			;1364
	nop			;1365
	rst 38h			;1366
	nop			;1367
	rst 38h			;1368
	nop			;1369
	rst 38h			;136a
	nop			;136b
	rst 38h			;136c
	nop			;136d
	rst 38h			;136e
	nop			;136f
	rst 38h			;1370
	nop			;1371
	rst 38h			;1372
	nop			;1373
	rst 38h			;1374
	nop			;1375
	rst 38h			;1376
	nop			;1377
	rst 38h			;1378
	nop			;1379
	rst 38h			;137a
	nop			;137b
	rst 38h			;137c
	nop			;137d
	rst 38h			;137e
	nop			;137f
	rst 38h			;1380
	nop			;1381
	rst 38h			;1382
	nop			;1383
	rst 38h			;1384
	nop			;1385
	rst 38h			;1386
	nop			;1387
	rst 38h			;1388
	nop			;1389
	rst 38h			;138a
	nop			;138b
	rst 38h			;138c
	nop			;138d
	rst 38h			;138e
	nop			;138f
	rst 38h			;1390
	nop			;1391
	rst 38h			;1392
	nop			;1393
	rst 38h			;1394
	nop			;1395
	rst 38h			;1396
	nop			;1397
	rst 38h			;1398
	rst 38h			;1399
	rst 38h			;139a
	rst 38h			;139b
	rst 38h			;139c
	rst 38h			;139d
	rst 38h			;139e
	rst 38h			;139f
	rst 38h			;13a0
	rst 38h			;13a1
	rst 38h			;13a2
	rst 38h			;13a3
	rst 38h			;13a4
	rst 38h			;13a5
	rst 38h			;13a6
	rst 38h			;13a7
	rst 38h			;13a8
	rst 38h			;13a9
	rst 38h			;13aa
	rst 38h			;13ab
	rst 38h			;13ac
	rst 38h			;13ad
	rst 38h			;13ae
	rst 38h			;13af
	rst 38h			;13b0
	rst 38h			;13b1
	rst 38h			;13b2
	rst 38h			;13b3
	rst 38h			;13b4
	rst 38h			;13b5
	rst 38h			;13b6
	rst 38h			;13b7
	rst 38h			;13b8
	rst 38h			;13b9
	rst 38h			;13ba
	rst 38h			;13bb
	rst 38h			;13bc
	rst 38h			;13bd
	rst 38h			;13be
	rst 38h			;13bf
	rst 38h			;13c0
	rst 38h			;13c1
	rst 38h			;13c2
	rst 38h			;13c3
	rst 38h			;13c4
	rst 38h			;13c5
	rst 38h			;13c6
	rst 38h			;13c7
	rst 38h			;13c8
	rst 38h			;13c9
	rst 38h			;13ca
	rst 38h			;13cb
	rst 38h			;13cc
	rst 38h			;13cd
	rst 38h			;13ce
	rst 38h			;13cf
	rst 38h			;13d0
	rst 38h			;13d1
	rst 38h			;13d2
	rst 38h			;13d3
	rst 38h			;13d4
	rst 38h			;13d5
	rst 38h			;13d6
	rst 38h			;13d7
	rst 38h			;13d8
	rst 38h			;13d9
	rst 38h			;13da
	rst 38h			;13db
	rst 38h			;13dc
	rst 38h			;13dd
	rst 38h			;13de
	rst 38h			;13df
	rst 38h			;13e0
	rst 38h			;13e1
	rst 38h			;13e2
	rst 38h			;13e3
	rst 38h			;13e4
	rst 38h			;13e5
	rst 38h			;13e6
	rst 38h			;13e7
	rst 38h			;13e8
	rst 38h			;13e9
	rst 38h			;13ea
	rst 38h			;13eb
	rst 38h			;13ec
	rst 38h			;13ed
	rst 38h			;13ee
	rst 38h			;13ef
	rst 38h			;13f0
	rst 38h			;13f1
	rst 38h			;13f2
	rst 38h			;13f3
	rst 38h			;13f4
	rst 38h			;13f5
	rst 38h			;13f6
	rst 38h			;13f7
	rst 38h			;13f8
	rst 38h			;13f9
	rst 38h			;13fa
	nop			;13fb
	nop			;13fc
	rst 38h			;13fd
	nop			;13fe
	nop			;13ff
	nop			;1400
	nop			;1401
	nop			;1402
	nop			;1403
	nop			;1404
	rst 38h			;1405
	nop			;1406
	nop			;1407
	rst 38h			;1408
	nop			;1409
	nop			;140a
	rst 38h			;140b
	nop			;140c
	nop			;140d
	nop			;140e
	nop			;140f
	nop			;1410
	rst 38h			;1411
	nop			;1412
	nop			;1413
	nop			;1414
	nop			;1415
	nop			;1416
	nop			;1417
	nop			;1418
	nop			;1419
	nop			;141a
	nop			;141b
	nop			;141c
	nop			;141d
	nop			;141e
	nop			;141f
	nop			;1420
	nop			;1421
	nop			;1422
	nop			;1423
	nop			;1424
	rst 38h			;1425
	nop			;1426
	nop			;1427
	nop			;1428
	rst 38h			;1429
	nop			;142a
	nop			;142b
	rst 38h			;142c
	nop			;142d
	nop			;142e
	nop			;142f
	nop			;1430
	nop			;1431
	rst 38h			;1432
	nop			;1433
	nop			;1434
	nop			;1435
	nop			;1436
	rst 38h			;1437
	nop			;1438
	nop			;1439
	rst 38h			;143a
	nop			;143b
	nop			;143c
	nop			;143d
	nop			;143e
	nop			;143f
	nop			;1440
	nop			;1441
	nop			;1442
	nop			;1443
	rst 38h			;1444
	nop			;1445
	nop			;1446
	nop			;1447
	nop			;1448
	nop			;1449
	rst 38h			;144a
	nop			;144b
	nop			;144c
	nop			;144d
	rst 38h			;144e
	nop			;144f
	nop			;1450
	nop			;1451
	rst 38h			;1452
	nop			;1453
	nop			;1454
	nop			;1455
	nop			;1456
	rst 38h			;1457
	nop			;1458
	nop			;1459
	nop			;145a
	nop			;145b
	rst 38h			;145c
	nop			;145d
	nop			;145e
	nop			;145f
	rst 38h			;1460
	nop			;1461
	nop			;1462
	nop			;1463
	nop			;1464
	rst 38h			;1465
	nop			;1466
	nop			;1467
	nop			;1468
	nop			;1469
	nop			;146a
	nop			;146b
	nop			;146c
	nop			;146d
	nop			;146e
	nop			;146f
	nop			;1470
	nop			;1471
	nop			;1472
	nop			;1473
	nop			;1474
	nop			;1475
	rst 38h			;1476
	nop			;1477
	nop			;1478
	nop			;1479
	nop			;147a
	nop			;147b
	nop			;147c
	nop			;147d
	nop			;147e
	nop			;147f
	nop			;1480
	nop			;1481
	rst 38h			;1482
	nop			;1483
	nop			;1484
	rst 38h			;1485
	nop			;1486
	nop			;1487
	nop			;1488
	nop			;1489
	nop			;148a
	rst 38h			;148b
	nop			;148c
	nop			;148d
	nop			;148e
	nop			;148f
	nop			;1490
	nop			;1491
	nop			;1492
	nop			;1493
	nop			;1494
	rst 38h			;1495
	nop			;1496
	nop			;1497
	nop			;1498
	nop			;1499
	rst 38h			;149a
	nop			;149b
	nop			;149c
	rst 38h			;149d
	nop			;149e
	nop			;149f
	nop			;14a0
	nop			;14a1
	rst 38h			;14a2
	nop			;14a3
	nop			;14a4
	nop			;14a5
	rst 38h			;14a6
	nop			;14a7
	nop			;14a8
	nop			;14a9
	nop			;14aa
	rst 38h			;14ab
	nop			;14ac
	nop			;14ad
	nop			;14ae
	nop			;14af
	rst 38h			;14b0
	nop			;14b1
	nop			;14b2
	nop			;14b3
	nop			;14b4
	rst 38h			;14b5
	nop			;14b6
	nop			;14b7
	rst 38h			;14b8
	nop			;14b9
	nop			;14ba
	rst 38h			;14bb
	nop			;14bc
	nop			;14bd
	rst 38h			;14be
	nop			;14bf
	nop			;14c0
	nop			;14c1
	nop			;14c2
	nop			;14c3
	nop			;14c4
	rst 38h			;14c5
	nop			;14c6
	nop			;14c7
	rst 38h			;14c8
	nop			;14c9
	nop			;14ca
	nop			;14cb
	nop			;14cc
	rst 38h			;14cd
	nop			;14ce
	nop			;14cf
	nop			;14d0
	nop			;14d1
	rst 38h			;14d2
	nop			;14d3
	nop			;14d4
	nop			;14d5
	nop			;14d6
	nop			;14d7
	nop			;14d8
	nop			;14d9
	nop			;14da
	nop			;14db
	rst 38h			;14dc
	nop			;14dd
	nop			;14de
	nop			;14df
	rst 38h			;14e0
	nop			;14e1
	nop			;14e2
	rst 38h			;14e3
	nop			;14e4
	nop			;14e5
	rst 38h			;14e6
	nop			;14e7
	nop			;14e8
	rst 38h			;14e9
	nop			;14ea
	nop			;14eb
	nop			;14ec
	nop			;14ed
	nop			;14ee
	nop			;14ef
	nop			;14f0
	nop			;14f1
	nop			;14f2
	rst 38h			;14f3
	nop			;14f4
	nop			;14f5
	nop			;14f6
	nop			;14f7
	nop			;14f8
	nop			;14f9
	nop			;14fa
	nop			;14fb
	rst 38h			;14fc
	nop			;14fd
	nop			;14fe
	nop			;14ff
	nop			;1500
	rst 38h			;1501
	nop			;1502
	nop			;1503
	nop			;1504
	nop			;1505
	rst 38h			;1506
	nop			;1507
	nop			;1508
	nop			;1509
	nop			;150a
	rst 38h			;150b
	nop			;150c
	nop			;150d
	nop			;150e
	rst 38h			;150f
	nop			;1510
	nop			;1511
	rst 38h			;1512
	nop			;1513
	nop			;1514
	rst 38h			;1515
	nop			;1516
	nop			;1517
	nop			;1518
	nop			;1519
	rst 38h			;151a
	nop			;151b
	nop			;151c
	nop			;151d
	nop			;151e
	rst 38h			;151f
	rst 38h			;1520
	rst 38h			;1521
	rst 38h			;1522
	nop			;1523
	nop			;1524
	rst 38h			;1525
	nop			;1526
	nop			;1527
	nop			;1528
	nop			;1529
	rst 38h			;152a
	nop			;152b
	nop			;152c
	nop			;152d
	nop			;152e
	rst 38h			;152f
	nop			;1530
	nop			;1531
	nop			;1532
	rst 38h			;1533
	nop			;1534
	nop			;1535
	rst 38h			;1536
	nop			;1537
	nop			;1538
	nop			;1539
	nop			;153a
	rst 38h			;153b
	nop			;153c
	nop			;153d
	nop			;153e
	rst 38h			;153f
	nop			;1540
	nop			;1541
	nop			;1542
	nop			;1543
	nop			;1544
	nop			;1545
	nop			;1546
	rst 38h			;1547
	nop			;1548
	nop			;1549
	nop			;154a
	nop			;154b
	rst 38h			;154c
	nop			;154d
	nop			;154e
	nop			;154f
	rst 38h			;1550
	nop			;1551
	nop			;1552
	rst 38h			;1553
	nop			;1554
	nop			;1555
	nop			;1556
	rst 38h			;1557
	nop			;1558
	nop			;1559
	nop			;155a
	rst 38h			;155b
	nop			;155c
	nop			;155d
	rst 38h			;155e
	nop			;155f
	nop			;1560
	nop			;1561
	nop			;1562
	rst 38h			;1563
	nop			;1564
	nop			;1565
	rst 38h			;1566
	nop			;1567
	nop			;1568
	nop			;1569
	rst 38h			;156a
	nop			;156b
	nop			;156c
	nop			;156d
	nop			;156e
	rst 38h			;156f
	nop			;1570
	nop			;1571
	nop			;1572
	rst 38h			;1573
	nop			;1574
	nop			;1575
	nop			;1576
	nop			;1577
	nop			;1578
	nop			;1579
	nop			;157a
	nop			;157b
	rst 38h			;157c
	nop			;157d
	nop			;157e
	nop			;157f
	nop			;1580
	nop			;1581
	nop			;1582
	nop			;1583
	rst 38h			;1584
	nop			;1585
	nop			;1586
	nop			;1587
	nop			;1588
	rst 38h			;1589
	nop			;158a
	nop			;158b
	nop			;158c
	rst 38h			;158d
	nop			;158e
	nop			;158f
	nop			;1590
	rst 38h			;1591
	nop			;1592
	nop			;1593
	rst 38h			;1594
	nop			;1595
	nop			;1596
	nop			;1597
	rst 38h			;1598
	nop			;1599
	nop			;159a
	rst 38h			;159b
	nop			;159c
	nop			;159d
	rst 38h			;159e
	nop			;159f
	nop			;15a0
	nop			;15a1
	rst 38h			;15a2
	nop			;15a3
	nop			;15a4
	rst 38h			;15a5
	nop			;15a6
	nop			;15a7
	nop			;15a8
	nop			;15a9
	nop			;15aa
	nop			;15ab
	nop			;15ac
	nop			;15ad
	rst 38h			;15ae
	nop			;15af
	nop			;15b0
	nop			;15b1
	nop			;15b2
	nop			;15b3
	nop			;15b4
	nop			;15b5
	nop			;15b6
	rst 38h			;15b7
	nop			;15b8
	nop			;15b9
	nop			;15ba
	nop			;15bb
	nop			;15bc
	nop			;15bd
	nop			;15be
	nop			;15bf
	rst 38h			;15c0
	nop			;15c1
	nop			;15c2
	nop			;15c3
	nop			;15c4
	nop			;15c5
	nop			;15c6
	rst 38h			;15c7
	nop			;15c8
	nop			;15c9
	rst 38h			;15ca
	nop			;15cb
	nop			;15cc
	rst 38h			;15cd
	nop			;15ce
	nop			;15cf
	rst 38h			;15d0
	nop			;15d1
	nop			;15d2
	rst 38h			;15d3
	nop			;15d4
	nop			;15d5
	nop			;15d6
	nop			;15d7
	rst 38h			;15d8
	nop			;15d9
	nop			;15da
	nop			;15db
	rst 38h			;15dc
	nop			;15dd
	nop			;15de
	rst 38h			;15df
	nop			;15e0
	nop			;15e1
	rst 38h			;15e2
	nop			;15e3
	nop			;15e4
	nop			;15e5
	rst 38h			;15e6
	nop			;15e7
	nop			;15e8
	rst 38h			;15e9
	nop			;15ea
	nop			;15eb
	rst 38h			;15ec
	nop			;15ed
	nop			;15ee
	nop			;15ef
	nop			;15f0
	nop			;15f1
	rst 38h			;15f2
	nop			;15f3
	nop			;15f4
	nop			;15f5
	nop			;15f6
	nop			;15f7
	nop			;15f8
	nop			;15f9
	nop			;15fa
	nop			;15fb
	nop			;15fc
	rst 38h			;15fd
	nop			;15fe
	nop			;15ff
l1600h:
	rst 38h			;1600
	nop			;1601
	nop			;1602
	rst 38h			;1603
	nop			;1604
	nop			;1605
	nop			;1606
	nop			;1607
	nop			;1608
	rst 38h			;1609
	ld bc,00101h		;160a
	ld bc,00101h		;160d
	ld bc,00101h		;1610
	ld bc,00101h		;1613
	ld bc,00101h		;1616
	ld bc,00101h		;1619
	ld bc,00101h		;161c
	ld bc,00101h		;161f
	ld bc,00101h		;1622
	ld bc,00101h		;1625
	ld bc,00101h		;1628
	ld bc,00101h		;162b
	ld bc,00101h		;162e
	ld bc,00101h		;1631
	ld bc,00101h		;1634
	ld bc,00101h		;1637
	ld bc,00101h		;163a
	ld bc,00101h		;163d
	ld bc,00101h		;1640
	ld bc,00101h		;1643
	ld bc,00000h		;1646
	rst 38h			;1649
	nop			;164a
	nop			;164b
	nop			;164c
	nop			;164d
	nop			;164e
	nop			;164f
	nop			;1650
	nop			;1651
	nop			;1652
	nop			;1653
	nop			;1654
	nop			;1655
	nop			;1656
	nop			;1657
	rst 38h			;1658
	nop			;1659
	nop			;165a
	rst 38h			;165b
	nop			;165c
	nop			;165d
	nop			;165e
	rst 38h			;165f
	nop			;1660
	nop			;1661
	nop			;1662
	nop			;1663
	nop			;1664
	nop			;1665
	nop			;1666
	nop			;1667
	nop			;1668
	rst 38h			;1669
	nop			;166a
	nop			;166b
	nop			;166c
	nop			;166d
	rst 38h			;166e
	nop			;166f
	nop			;1670
	nop			;1671
	nop			;1672
	rst 38h			;1673
	nop			;1674
	nop			;1675
	nop			;1676
	nop			;1677
	nop			;1678
	rst 38h			;1679
	nop			;167a
	nop			;167b
	rst 38h			;167c
	nop			;167d
	nop			;167e
	nop			;167f
	nop			;1680
	rst 38h			;1681
	nop			;1682
	nop			;1683
	rst 38h			;1684
	nop			;1685
	nop			;1686
	nop			;1687
	rst 38h			;1688
	nop			;1689
	nop			;168a
	nop			;168b
	nop			;168c
	rst 38h			;168d
	nop			;168e
	nop			;168f
	rst 38h			;1690
	nop			;1691
	nop			;1692
	nop			;1693
	rst 38h			;1694
	nop			;1695
	nop			;1696
	nop			;1697
	nop			;1698
	nop			;1699
	rst 38h			;169a
	nop			;169b
	nop			;169c
	nop			;169d
	nop			;169e
	nop			;169f
	nop			;16a0
	nop			;16a1
	nop			;16a2
	rst 38h			;16a3
	nop			;16a4
	nop			;16a5
	nop			;16a6
	rst 38h			;16a7
	nop			;16a8
	nop			;16a9
	nop			;16aa
	nop			;16ab
	nop			;16ac
	rst 38h			;16ad
	nop			;16ae
	nop			;16af
	nop			;16b0
	nop			;16b1
	nop			;16b2
	nop			;16b3
	rst 38h			;16b4
	nop			;16b5
	nop			;16b6
	rst 38h			;16b7
	nop			;16b8
	nop			;16b9
	rst 38h			;16ba
	nop			;16bb
	nop			;16bc
	nop			;16bd
	nop			;16be
	rst 38h			;16bf
	nop			;16c0
	nop			;16c1
	rst 38h			;16c2
	nop			;16c3
	nop			;16c4
	rst 38h			;16c5
	nop			;16c6
	nop			;16c7
	nop			;16c8
	nop			;16c9
	rst 38h			;16ca
	nop			;16cb
	nop			;16cc
	rst 38h			;16cd
	nop			;16ce
	nop			;16cf
	rst 38h			;16d0
	nop			;16d1
	nop			;16d2
	rst 38h			;16d3
	nop			;16d4
	nop			;16d5
	nop			;16d6
	nop			;16d7
	nop			;16d8
	rst 38h			;16d9
	nop			;16da
	nop			;16db
	nop			;16dc
	nop			;16dd
	nop			;16de
	rst 38h			;16df
	nop			;16e0
	nop			;16e1
	nop			;16e2
	nop			;16e3
	nop			;16e4
	nop			;16e5
	nop			;16e6
	nop			;16e7
	nop			;16e8
	nop			;16e9
	rst 38h			;16ea
	nop			;16eb
	nop			;16ec
	nop			;16ed
	rst 38h			;16ee
	nop			;16ef
	nop			;16f0
	nop			;16f1
	nop			;16f2
	nop			;16f3
	nop			;16f4
	nop			;16f5
	nop			;16f6
	nop			;16f7
	nop			;16f8
	rst 38h			;16f9
	nop			;16fa
	nop			;16fb
	nop			;16fc
	rst 38h			;16fd
	nop			;16fe
	nop			;16ff
	nop			;1700
	rst 38h			;1701
	nop			;1702
	nop			;1703
	nop			;1704
	nop			;1705
	nop			;1706
	nop			;1707
	rst 38h			;1708
	nop			;1709
	nop			;170a
	nop			;170b
	nop			;170c
	nop			;170d
	rst 38h			;170e
	nop			;170f
	nop			;1710
	nop			;1711
	nop			;1712
	nop			;1713
	nop			;1714
	nop			;1715
	rst 38h			;1716
	nop			;1717
	nop			;1718
	nop			;1719
	nop			;171a
	nop			;171b
	rst 38h			;171c
	nop			;171d
	nop			;171e
	nop			;171f
	rst 38h			;1720
	nop			;1721
	nop			;1722
	nop			;1723
	nop			;1724
	nop			;1725
	nop			;1726
	rst 38h			;1727
	nop			;1728
	nop			;1729
	nop			;172a
	nop			;172b
	nop			;172c
	nop			;172d
	nop			;172e
	nop			;172f
	nop			;1730
	nop			;1731
	nop			;1732
	nop			;1733
	rst 38h			;1734
	nop			;1735
	nop			;1736
	nop			;1737
	rst 38h			;1738
	nop			;1739
	nop			;173a
	nop			;173b
	nop			;173c
	rst 38h			;173d
	nop			;173e
	nop			;173f
	rst 38h			;1740
	nop			;1741
	nop			;1742
	nop			;1743
	rst 38h			;1744
	nop			;1745
	nop			;1746
	nop			;1747
	nop			;1748
	nop			;1749
	rst 38h			;174a
	nop			;174b
	nop			;174c
	nop			;174d
	nop			;174e
	nop			;174f
	nop			;1750
	nop			;1751
	rst 38h			;1752
	nop			;1753
	nop			;1754
	nop			;1755
	rst 38h			;1756
	nop			;1757
	nop			;1758
	nop			;1759
	nop			;175a
	rst 38h			;175b
	nop			;175c
	nop			;175d
	nop			;175e
	nop			;175f
	rst 38h			;1760
	nop			;1761
	nop			;1762
	nop			;1763
	nop			;1764
	nop			;1765
	nop			;1766
	nop			;1767
	rst 38h			;1768
	nop			;1769
	nop			;176a
	nop			;176b
	rst 38h			;176c
	nop			;176d
	nop			;176e
	nop			;176f
	nop			;1770
	nop			;1771
	nop			;1772
	nop			;1773
	nop			;1774
	nop			;1775
	nop			;1776
	nop			;1777
	nop			;1778
	rst 38h			;1779
	nop			;177a
	nop			;177b
	nop			;177c
	nop			;177d
	nop			;177e
	rst 38h			;177f
	nop			;1780
	nop			;1781
	rst 38h			;1782
	nop			;1783
	nop			;1784
	nop			;1785
	rst 38h			;1786
	nop			;1787
	nop			;1788
	nop			;1789
	nop			;178a
	nop			;178b
	rst 38h			;178c
	nop			;178d
	nop			;178e
	rst 38h			;178f
	nop			;1790
	nop			;1791
	nop			;1792
	nop			;1793
	rst 38h			;1794
	nop			;1795
	nop			;1796
	rst 38h			;1797
	nop			;1798
	nop			;1799
	rst 38h			;179a
	nop			;179b
	nop			;179c
	nop			;179d
	rst 38h			;179e
	nop			;179f
	nop			;17a0
	nop			;17a1
	nop			;17a2
	nop			;17a3
	rst 38h			;17a4
	nop			;17a5
	nop			;17a6
	nop			;17a7
	rst 38h			;17a8
	nop			;17a9
	nop			;17aa
	nop			;17ab
	nop			;17ac
	nop			;17ad
	nop			;17ae
	nop			;17af
	rst 38h			;17b0
	nop			;17b1
	nop			;17b2
	nop			;17b3
	nop			;17b4
	nop			;17b5
	nop			;17b6
	nop			;17b7
	nop			;17b8
	nop			;17b9
	nop			;17ba
	nop			;17bb
	nop			;17bc
	rst 38h			;17bd
	nop			;17be
	nop			;17bf
	nop			;17c0
	rst 38h			;17c1
	nop			;17c2
	nop			;17c3
	nop			;17c4
	nop			;17c5
	rst 38h			;17c6
	nop			;17c7
	nop			;17c8
	rst 38h			;17c9
	nop			;17ca
	nop			;17cb
	rst 38h			;17cc
	nop			;17cd
	nop			;17ce
	nop			;17cf
	rst 38h			;17d0
	nop			;17d1
	nop			;17d2
	nop			;17d3
	rst 38h			;17d4
	nop			;17d5
	nop			;17d6
	rst 38h			;17d7
	nop			;17d8
	nop			;17d9
	nop			;17da
	nop			;17db
	rst 38h			;17dc
	nop			;17dd
	nop			;17de
	nop			;17df
	nop			;17e0
	rst 38h			;17e1
	nop			;17e2
	nop			;17e3
	nop			;17e4
	nop			;17e5
	nop			;17e6
	rst 38h			;17e7
	nop			;17e8
	nop			;17e9
	nop			;17ea
	nop			;17eb
	nop			;17ec
	nop			;17ed
	nop			;17ee
	nop			;17ef
	nop			;17f0
	nop			;17f1
	nop			;17f2
	nop			;17f3
	nop			;17f4
	nop			;17f5
	rst 38h			;17f6
	nop			;17f7
	nop			;17f8
	nop			;17f9
	nop			;17fa
	rst 38h			;17fb
	nop			;17fc
	nop			;17fd
	nop			;17fe
	nop			;17ff
	nop			;1800
	nop			;1801
	rst 38h			;1802
	nop			;1803
	nop			;1804
	nop			;1805
	nop			;1806
	nop			;1807
	nop			;1808
	nop			;1809
	rst 38h			;180a
	nop			;180b
	nop			;180c
	nop			;180d
	rst 38h			;180e
	nop			;180f
	nop			;1810
	nop			;1811
	nop			;1812
	nop			;1813
	nop			;1814
	rst 38h			;1815
	nop			;1816
	nop			;1817
	nop			;1818
	nop			;1819
	nop			;181a
	nop			;181b
	nop			;181c
	nop			;181d
	nop			;181e
	nop			;181f
	rst 38h			;1820
	nop			;1821
	nop			;1822
	rst 38h			;1823
	nop			;1824
	nop			;1825
	nop			;1826
	rst 38h			;1827
	nop			;1828
	nop			;1829
	nop			;182a
	nop			;182b
	nop			;182c
	nop			;182d
	rst 38h			;182e
	nop			;182f
	nop			;1830
	nop			;1831
	nop			;1832
	nop			;1833
	rst 38h			;1834
	nop			;1835
	nop			;1836
	rst 38h			;1837
	nop			;1838
	nop			;1839
	rst 38h			;183a
	nop			;183b
	nop			;183c
	nop			;183d
	nop			;183e
	rst 38h			;183f
	nop			;1840
	nop			;1841
	nop			;1842
	nop			;1843
	nop			;1844
	nop			;1845
	rst 38h			;1846
	nop			;1847
	nop			;1848
	nop			;1849
	nop			;184a
	nop			;184b
	nop			;184c
	nop			;184d
	nop			;184e
	nop			;184f
	rst 38h			;1850
	nop			;1851
	nop			;1852
	rst 38h			;1853
	nop			;1854
	nop			;1855
	rst 38h			;1856
	nop			;1857
	nop			;1858
	nop			;1859
	rst 38h			;185a
	nop			;185b
	nop			;185c
	rst 38h			;185d
	nop			;185e
	nop			;185f
	rst 38h			;1860
	nop			;1861
	nop			;1862
	rst 38h			;1863
	nop			;1864
	nop			;1865
	nop			;1866
	nop			;1867
	nop			;1868
	nop			;1869
	nop			;186a
	rst 38h			;186b
	nop			;186c
	nop			;186d
	nop			;186e
	nop			;186f
	nop			;1870
	nop			;1871
	nop			;1872
	nop			;1873
	rst 38h			;1874
	nop			;1875
	nop			;1876
	nop			;1877
	nop			;1878
	nop			;1879
	rst 38h			;187a
	nop			;187b
	nop			;187c
	nop			;187d
	nop			;187e
	nop			;187f
	nop			;1880
	rst 38h			;1881
	nop			;1882
	nop			;1883
	nop			;1884
	rst 38h			;1885
	nop			;1886
	nop			;1887
	nop			;1888
	nop			;1889
	nop			;188a
	nop			;188b
	nop			;188c
	nop			;188d
	rst 38h			;188e
	nop			;188f
	nop			;1890
	nop			;1891
	nop			;1892
	nop			;1893
	nop			;1894
	nop			;1895
	nop			;1896
	nop			;1897
	nop			;1898
	nop			;1899
	nop			;189a
	nop			;189b
	nop			;189c
	nop			;189d
	nop			;189e
	nop			;189f
	rst 38h			;18a0
	nop			;18a1
	nop			;18a2
	nop			;18a3
	rst 38h			;18a4
	nop			;18a5
	nop			;18a6
	rst 38h			;18a7
	nop			;18a8
	nop			;18a9
	nop			;18aa
	nop			;18ab
	rst 38h			;18ac
	nop			;18ad
	nop			;18ae
	rst 38h			;18af
	nop			;18b0
	nop			;18b1
	nop			;18b2
	rst 38h			;18b3
	nop			;18b4
	nop			;18b5
	nop			;18b6
	nop			;18b7
	nop			;18b8
	rst 38h			;18b9
	nop			;18ba
	nop			;18bb
	nop			;18bc
	nop			;18bd
	rst 38h			;18be
	nop			;18bf
	nop			;18c0
	nop			;18c1
	rst 38h			;18c2
	nop			;18c3
	nop			;18c4
	nop			;18c5
	nop			;18c6
	nop			;18c7
	rst 38h			;18c8
	nop			;18c9
	nop			;18ca
	rst 38h			;18cb
	nop			;18cc
	nop			;18cd
	nop			;18ce
	nop			;18cf
	rst 38h			;18d0
	nop			;18d1
	nop			;18d2
	rst 38h			;18d3
	nop			;18d4
	nop			;18d5
	rst 38h			;18d6
	nop			;18d7
	nop			;18d8
	rst 38h			;18d9
	nop			;18da
	nop			;18db
	rst 38h			;18dc
	nop			;18dd
	nop			;18de
	rst 38h			;18df
	nop			;18e0
	nop			;18e1
	rst 38h			;18e2
	nop			;18e3
	nop			;18e4
	nop			;18e5
	nop			;18e6
	nop			;18e7
	rst 38h			;18e8
	nop			;18e9
	nop			;18ea
	rst 38h			;18eb
	nop			;18ec
	nop			;18ed
	nop			;18ee
	rst 38h			;18ef
	nop			;18f0
	nop			;18f1
	nop			;18f2
	nop			;18f3
	rst 38h			;18f4
	nop			;18f5
	nop			;18f6
	rst 38h			;18f7
	nop			;18f8
	nop			;18f9
	nop			;18fa
	nop			;18fb
	nop			;18fc
	nop			;18fd
	nop			;18fe
	nop			;18ff
	nop			;1900
	nop			;1901
	nop			;1902
	rst 38h			;1903
	nop			;1904
	nop			;1905
	nop			;1906
	rst 38h			;1907
	nop			;1908
	nop			;1909
	nop			;190a
	rst 38h			;190b
	nop			;190c
	nop			;190d
	nop			;190e
	rst 38h			;190f
	nop			;1910
	nop			;1911
	rst 38h			;1912
	nop			;1913
	nop			;1914
	rst 38h			;1915
	nop			;1916
	nop			;1917
	rst 38h			;1918
	nop			;1919
	nop			;191a
	rst 38h			;191b
	nop			;191c
	nop			;191d
	nop			;191e
	nop			;191f
	nop			;1920
	nop			;1921
	nop			;1922
	nop			;1923
	rst 38h			;1924
	nop			;1925
	nop			;1926
	rst 38h			;1927
	nop			;1928
	nop			;1929
	nop			;192a
	nop			;192b
	nop			;192c
	rst 38h			;192d
	nop			;192e
	nop			;192f
	rst 38h			;1930
	nop			;1931
	nop			;1932
	nop			;1933
	rst 38h			;1934
	nop			;1935
	nop			;1936
	nop			;1937
	nop			;1938
	nop			;1939
	nop			;193a
	nop			;193b
	nop			;193c
	nop			;193d
	nop			;193e
	nop			;193f
	nop			;1940
	nop			;1941
	nop			;1942
	nop			;1943
	nop			;1944
	nop			;1945
	nop			;1946
	nop			;1947
	nop			;1948
	nop			;1949
	nop			;194a
	nop			;194b
	nop			;194c
	nop			;194d
	nop			;194e
	nop			;194f
	nop			;1950
	nop			;1951
	nop			;1952
	rst 38h			;1953
	nop			;1954
	nop			;1955
	nop			;1956
	nop			;1957
	nop			;1958
	nop			;1959
	rst 38h			;195a
	nop			;195b
	nop			;195c
	nop			;195d
	nop			;195e
	rst 38h			;195f
	nop			;1960
	nop			;1961
	nop			;1962
	nop			;1963
	nop			;1964
	nop			;1965
	nop			;1966
	nop			;1967
	rst 38h			;1968
	nop			;1969
	nop			;196a
	nop			;196b
	nop			;196c
	rst 38h			;196d
	nop			;196e
	nop			;196f
	nop			;1970
	nop			;1971
	nop			;1972
	nop			;1973
	nop			;1974
	nop			;1975
	nop			;1976
	nop			;1977
	nop			;1978
	nop			;1979
	nop			;197a
	rst 38h			;197b
	nop			;197c
	nop			;197d
	nop			;197e
	rst 38h			;197f
	nop			;1980
	nop			;1981
	nop			;1982
	nop			;1983
	nop			;1984
	nop			;1985
	nop			;1986
	rst 38h			;1987
	nop			;1988
	nop			;1989
	nop			;198a
	nop			;198b
	nop			;198c
	nop			;198d
	nop			;198e
	nop			;198f
	nop			;1990
	nop			;1991
	rst 38h			;1992
	nop			;1993
	nop			;1994
	rst 38h			;1995
	nop			;1996
	nop			;1997
	nop			;1998
	nop			;1999
	nop			;199a
	nop			;199b
	rst 38h			;199c
	nop			;199d
	nop			;199e
	nop			;199f
	nop			;19a0
	nop			;19a1
	rst 38h			;19a2
	nop			;19a3
	nop			;19a4
	rst 38h			;19a5
	nop			;19a6
	nop			;19a7
	nop			;19a8
	nop			;19a9
	rst 38h			;19aa
	nop			;19ab
	nop			;19ac
	nop			;19ad
	nop			;19ae
	nop			;19af
	rst 38h			;19b0
	nop			;19b1
	nop			;19b2
	nop			;19b3
	nop			;19b4
	nop			;19b5
	nop			;19b6
	nop			;19b7
	nop			;19b8
	rst 38h			;19b9
	nop			;19ba
	nop			;19bb
	rst 38h			;19bc
	nop			;19bd
	nop			;19be
	nop			;19bf
	rst 38h			;19c0
	nop			;19c1
	nop			;19c2
	nop			;19c3
	nop			;19c4
	nop			;19c5
	rst 38h			;19c6
	nop			;19c7
	nop			;19c8
	rst 38h			;19c9
	nop			;19ca
	nop			;19cb
	nop			;19cc
	nop			;19cd
	nop			;19ce
	nop			;19cf
	nop			;19d0
	rst 38h			;19d1
	nop			;19d2
	nop			;19d3
	nop			;19d4
	nop			;19d5
	rst 38h			;19d6
	nop			;19d7
	nop			;19d8
	rst 38h			;19d9
	nop			;19da
	nop			;19db
	nop			;19dc
	rst 38h			;19dd
	nop			;19de
	nop			;19df
	nop			;19e0
	nop			;19e1
	nop			;19e2
	rst 38h			;19e3
	nop			;19e4
	nop			;19e5
	rst 38h			;19e6
	nop			;19e7
	nop			;19e8
	nop			;19e9
	rst 38h			;19ea
	nop			;19eb
	nop			;19ec
	nop			;19ed
	nop			;19ee
	nop			;19ef
	nop			;19f0
	rst 38h			;19f1
	nop			;19f2
	nop			;19f3
	nop			;19f4
	rst 38h			;19f5
	nop			;19f6
	nop			;19f7
	nop			;19f8
	nop			;19f9
	rst 38h			;19fa
	nop			;19fb
	nop			;19fc
	rst 38h			;19fd
	nop			;19fe
	nop			;19ff
	rst 38h			;1a00
	nop			;1a01
	nop			;1a02
	rst 38h			;1a03
	nop			;1a04
	nop			;1a05
	rst 38h			;1a06
	nop			;1a07
	nop			;1a08
	nop			;1a09
	nop			;1a0a
	rst 38h			;1a0b
	nop			;1a0c
	nop			;1a0d
	nop			;1a0e
	nop			;1a0f
	nop			;1a10
	nop			;1a11
	nop			;1a12
	nop			;1a13
	nop			;1a14
	nop			;1a15
	nop			;1a16
	nop			;1a17
	nop			;1a18
	nop			;1a19
	nop			;1a1a
	nop			;1a1b
	rst 38h			;1a1c
	nop			;1a1d
	nop			;1a1e
	rst 38h			;1a1f
	nop			;1a20
	nop			;1a21
	nop			;1a22
	rst 38h			;1a23
	nop			;1a24
	nop			;1a25
	rst 38h			;1a26
	nop			;1a27
	nop			;1a28
	rst 38h			;1a29
	nop			;1a2a
	nop			;1a2b
	rst 38h			;1a2c
	nop			;1a2d
	nop			;1a2e
	nop			;1a2f
	nop			;1a30
	rst 38h			;1a31
	nop			;1a32
	nop			;1a33
	rst 38h			;1a34
	nop			;1a35
	nop			;1a36
	rst 38h			;1a37
	nop			;1a38
	nop			;1a39
	rst 38h			;1a3a
	nop			;1a3b
	nop			;1a3c
	nop			;1a3d
	nop			;1a3e
	nop			;1a3f
	nop			;1a40
	rst 38h			;1a41
	nop			;1a42
	nop			;1a43
	nop			;1a44
	rst 38h			;1a45
	nop			;1a46
	nop			;1a47
	nop			;1a48
	rst 38h			;1a49
	nop			;1a4a
	nop			;1a4b
	rst 38h			;1a4c
	nop			;1a4d
	nop			;1a4e
	rst 38h			;1a4f
	nop			;1a50
	nop			;1a51
	nop			;1a52
	nop			;1a53
	nop			;1a54
	nop			;1a55
	nop			;1a56
	rst 38h			;1a57
	nop			;1a58
	nop			;1a59
	nop			;1a5a
	nop			;1a5b
	nop			;1a5c
	rst 38h			;1a5d
	nop			;1a5e
	nop			;1a5f
	nop			;1a60
	nop			;1a61
	nop			;1a62
	rst 38h			;1a63
	nop			;1a64
	nop			;1a65
	nop			;1a66
	nop			;1a67
	nop			;1a68
	rst 38h			;1a69
	nop			;1a6a
	nop			;1a6b
	nop			;1a6c
	nop			;1a6d
	nop			;1a6e
	rst 38h			;1a6f
	nop			;1a70
	nop			;1a71
	rst 38h			;1a72
	nop			;1a73
	nop			;1a74
	nop			;1a75
	nop			;1a76
	rst 38h			;1a77
	nop			;1a78
	nop			;1a79
	nop			;1a7a
	rst 38h			;1a7b
	nop			;1a7c
	nop			;1a7d
	nop			;1a7e
	nop			;1a7f
	nop			;1a80
	nop			;1a81
	rst 38h			;1a82
	nop			;1a83
	nop			;1a84
	rst 38h			;1a85
	nop			;1a86
	nop			;1a87
	nop			;1a88
	nop			;1a89
	rst 38h			;1a8a
	nop			;1a8b
	nop			;1a8c
	rst 38h			;1a8d
	nop			;1a8e
	nop			;1a8f
	nop			;1a90
	nop			;1a91
	nop			;1a92
	nop			;1a93
	nop			;1a94
	nop			;1a95
	rst 38h			;1a96
	nop			;1a97
	nop			;1a98
	nop			;1a99
	nop			;1a9a
	rst 38h			;1a9b
	nop			;1a9c
	nop			;1a9d
	rst 38h			;1a9e
	nop			;1a9f
	nop			;1aa0
	nop			;1aa1
	nop			;1aa2
	rst 38h			;1aa3
	nop			;1aa4
	nop			;1aa5
	rst 38h			;1aa6
	nop			;1aa7
	nop			;1aa8
	nop			;1aa9
	rst 38h			;1aaa
	nop			;1aab
	nop			;1aac
	rst 38h			;1aad
	nop			;1aae
	nop			;1aaf
	nop			;1ab0
	nop			;1ab1
	nop			;1ab2
	nop			;1ab3
	rst 38h			;1ab4
	nop			;1ab5
	nop			;1ab6
	rst 38h			;1ab7
	nop			;1ab8
	nop			;1ab9
	rst 38h			;1aba
	nop			;1abb
	nop			;1abc
	rst 38h			;1abd
	nop			;1abe
	nop			;1abf
	nop			;1ac0
	nop			;1ac1
	nop			;1ac2
	nop			;1ac3
	rst 38h			;1ac4
	nop			;1ac5
	nop			;1ac6
	nop			;1ac7
	nop			;1ac8
	nop			;1ac9
	rst 38h			;1aca
	nop			;1acb
	nop			;1acc
	nop			;1acd
	rst 38h			;1ace
	nop			;1acf
	nop			;1ad0
	nop			;1ad1
	nop			;1ad2
	rst 38h			;1ad3
	nop			;1ad4
	nop			;1ad5
	nop			;1ad6
	nop			;1ad7
	nop			;1ad8
	nop			;1ad9
	rst 38h			;1ada
	nop			;1adb
	nop			;1adc
	nop			;1add
	nop			;1ade
	nop			;1adf
	nop			;1ae0
	nop			;1ae1
	rst 38h			;1ae2
	nop			;1ae3
	nop			;1ae4
	nop			;1ae5
	rst 38h			;1ae6
	nop			;1ae7
	nop			;1ae8
	nop			;1ae9
	nop			;1aea
	rst 38h			;1aeb
	nop			;1aec
	nop			;1aed
	nop			;1aee
	nop			;1aef
	rst 38h			;1af0
	nop			;1af1
	nop			;1af2
	nop			;1af3
	nop			;1af4
	nop			;1af5
	nop			;1af6
	nop			;1af7
	rst 38h			;1af8
	nop			;1af9
	nop			;1afa
	nop			;1afb
	nop			;1afc
	nop			;1afd
	nop			;1afe
	nop			;1aff
	nop			;1b00
	nop			;1b01
	nop			;1b02
	nop			;1b03
	nop			;1b04
	nop			;1b05
	rst 38h			;1b06
	nop			;1b07
	nop			;1b08
	nop			;1b09
	nop			;1b0a
	rst 38h			;1b0b
	nop			;1b0c
	nop			;1b0d
	nop			;1b0e
	rst 38h			;1b0f
	nop			;1b10
	nop			;1b11
	rst 38h			;1b12
	nop			;1b13
	nop			;1b14
	rst 38h			;1b15
	nop			;1b16
	nop			;1b17
	rst 38h			;1b18
	nop			;1b19
	nop			;1b1a
	nop			;1b1b
	nop			;1b1c
	rst 38h			;1b1d
	nop			;1b1e
	nop			;1b1f
	rst 38h			;1b20
	nop			;1b21
	nop			;1b22
	nop			;1b23
	nop			;1b24
	nop			;1b25
	nop			;1b26
	nop			;1b27
	nop			;1b28
	rst 38h			;1b29
	nop			;1b2a
	nop			;1b2b
	nop			;1b2c
	rst 38h			;1b2d
	nop			;1b2e
	nop			;1b2f
	nop			;1b30
	nop			;1b31
	nop			;1b32
	nop			;1b33
	rst 38h			;1b34
	nop			;1b35
	nop			;1b36
	rst 38h			;1b37
	nop			;1b38
	nop			;1b39
	rst 38h			;1b3a
	nop			;1b3b
	nop			;1b3c
	nop			;1b3d
	nop			;1b3e
	rst 38h			;1b3f
	nop			;1b40
	nop			;1b41
	rst 38h			;1b42
	nop			;1b43
	nop			;1b44
	nop			;1b45
	nop			;1b46
	nop			;1b47
	nop			;1b48
	nop			;1b49
	rst 38h			;1b4a
	nop			;1b4b
	nop			;1b4c
	rst 38h			;1b4d
	nop			;1b4e
	nop			;1b4f
	rst 38h			;1b50
	nop			;1b51
	nop			;1b52
	nop			;1b53
	nop			;1b54
	rst 38h			;1b55
	nop			;1b56
	nop			;1b57
	rst 38h			;1b58
	nop			;1b59
	nop			;1b5a
	nop			;1b5b
	rst 38h			;1b5c
	nop			;1b5d
	nop			;1b5e
	nop			;1b5f
	nop			;1b60
	nop			;1b61
	rst 38h			;1b62
	nop			;1b63
	nop			;1b64
	nop			;1b65
	rst 38h			;1b66
	nop			;1b67
	nop			;1b68
	nop			;1b69
	nop			;1b6a
	nop			;1b6b
	rst 38h			;1b6c
	nop			;1b6d
	nop			;1b6e
	rst 38h			;1b6f
	nop			;1b70
	nop			;1b71
	nop			;1b72
	nop			;1b73
	nop			;1b74
	nop			;1b75
	nop			;1b76
	nop			;1b77
	nop			;1b78
	nop			;1b79
	nop			;1b7a
	nop			;1b7b
	nop			;1b7c
	nop			;1b7d
	nop			;1b7e
	nop			;1b7f
	nop			;1b80
	nop			;1b81
	nop			;1b82
	rst 38h			;1b83
	nop			;1b84
	nop			;1b85
	nop			;1b86
	nop			;1b87
	rst 38h			;1b88
	nop			;1b89
	nop			;1b8a
	nop			;1b8b
	nop			;1b8c
	rst 38h			;1b8d
	nop			;1b8e
	nop			;1b8f
	nop			;1b90
	nop			;1b91
	nop			;1b92
	nop			;1b93
	nop			;1b94
	nop			;1b95
	nop			;1b96
	nop			;1b97
	nop			;1b98
	nop			;1b99
	nop			;1b9a
	nop			;1b9b
	nop			;1b9c
	nop			;1b9d
	nop			;1b9e
	nop			;1b9f
	nop			;1ba0
	nop			;1ba1
	nop			;1ba2
	nop			;1ba3
	nop			;1ba4
	rst 38h			;1ba5
	nop			;1ba6
	nop			;1ba7
	rst 38h			;1ba8
	nop			;1ba9
	nop			;1baa
	rst 38h			;1bab
	nop			;1bac
	nop			;1bad
	rst 38h			;1bae
	nop			;1baf
	nop			;1bb0
	nop			;1bb1
	rst 38h			;1bb2
	nop			;1bb3
	nop			;1bb4
	nop			;1bb5
	nop			;1bb6
	nop			;1bb7
	nop			;1bb8
	nop			;1bb9
	rst 38h			;1bba
	nop			;1bbb
	nop			;1bbc
	rst 38h			;1bbd
	nop			;1bbe
	nop			;1bbf
	nop			;1bc0
	nop			;1bc1
	nop			;1bc2
	nop			;1bc3
	rst 38h			;1bc4
	nop			;1bc5
	nop			;1bc6
	nop			;1bc7
	nop			;1bc8
	rst 38h			;1bc9
	nop			;1bca
	nop			;1bcb
	nop			;1bcc
	nop			;1bcd
	nop			;1bce
	rst 38h			;1bcf
	nop			;1bd0
	nop			;1bd1
	nop			;1bd2
	rst 38h			;1bd3
	nop			;1bd4
	nop			;1bd5
	nop			;1bd6
	nop			;1bd7
	nop			;1bd8
	rst 38h			;1bd9
	nop			;1bda
	nop			;1bdb
	nop			;1bdc
	nop			;1bdd
	rst 38h			;1bde
	nop			;1bdf
	nop			;1be0
	nop			;1be1
	nop			;1be2
	nop			;1be3
	rst 38h			;1be4
	nop			;1be5
	nop			;1be6
	rst 38h			;1be7
	nop			;1be8
	nop			;1be9
	rst 38h			;1bea
	nop			;1beb
	nop			;1bec
	nop			;1bed
	rst 38h			;1bee
	nop			;1bef
	nop			;1bf0
	nop			;1bf1
	nop			;1bf2
	nop			;1bf3
	rst 38h			;1bf4
	nop			;1bf5
	nop			;1bf6
	nop			;1bf7
	nop			;1bf8
	nop			;1bf9
	nop			;1bfa
	rst 38h			;1bfb
	nop			;1bfc
	nop			;1bfd
	nop			;1bfe
	nop			;1bff
	nop			;1c00
	nop			;1c01
	rst 38h			;1c02
	nop			;1c03
	nop			;1c04
	nop			;1c05
	nop			;1c06
	nop			;1c07
	nop			;1c08
	nop			;1c09
	nop			;1c0a
	nop			;1c0b
	nop			;1c0c
	rst 38h			;1c0d
	nop			;1c0e
	nop			;1c0f
	nop			;1c10
	nop			;1c11
	nop			;1c12
	nop			;1c13
	nop			;1c14
	nop			;1c15
	nop			;1c16
	nop			;1c17
	nop			;1c18
	nop			;1c19
	nop			;1c1a
	rst 38h			;1c1b
	nop			;1c1c
	nop			;1c1d
	rst 38h			;1c1e
	nop			;1c1f
	nop			;1c20
	rst 38h			;1c21
	nop			;1c22
	nop			;1c23
	nop			;1c24
	nop			;1c25
	rst 38h			;1c26
	nop			;1c27
	nop			;1c28
	rst 38h			;1c29
	nop			;1c2a
	nop			;1c2b
	nop			;1c2c
	rst 38h			;1c2d
	nop			;1c2e
	nop			;1c2f
	rst 38h			;1c30
	nop			;1c31
	nop			;1c32
	nop			;1c33
	nop			;1c34
	rst 38h			;1c35
	nop			;1c36
	nop			;1c37
	rst 38h			;1c38
	nop			;1c39
	nop			;1c3a
	nop			;1c3b
	rst 38h			;1c3c
	nop			;1c3d
	nop			;1c3e
	nop			;1c3f
	nop			;1c40
	nop			;1c41
	nop			;1c42
	nop			;1c43
	nop			;1c44
	nop			;1c45
	nop			;1c46
	nop			;1c47
	nop			;1c48
	nop			;1c49
	nop			;1c4a
	rst 38h			;1c4b
	nop			;1c4c
	nop			;1c4d
	nop			;1c4e
	nop			;1c4f
	nop			;1c50
	nop			;1c51
	nop			;1c52
	rst 38h			;1c53
	nop			;1c54
	nop			;1c55
	rst 38h			;1c56
	nop			;1c57
	nop			;1c58
	rst 38h			;1c59
	nop			;1c5a
	nop			;1c5b
	nop			;1c5c
	rst 38h			;1c5d
	nop			;1c5e
	nop			;1c5f
	rst 38h			;1c60
	nop			;1c61
	nop			;1c62
	rst 38h			;1c63
	nop			;1c64
	nop			;1c65
	nop			;1c66
	rst 38h			;1c67
	nop			;1c68
	nop			;1c69
	nop			;1c6a
	nop			;1c6b
	nop			;1c6c
	nop			;1c6d
	nop			;1c6e
	nop			;1c6f
	nop			;1c70
	nop			;1c71
	nop			;1c72
	rst 38h			;1c73
	nop			;1c74
	nop			;1c75
	nop			;1c76
	rst 38h			;1c77
	nop			;1c78
	nop			;1c79
	nop			;1c7a
	rst 38h			;1c7b
	nop			;1c7c
	nop			;1c7d
	nop			;1c7e
	rst 38h			;1c7f
	nop			;1c80
	nop			;1c81
	rst 38h			;1c82
	nop			;1c83
	nop			;1c84
	nop			;1c85
	nop			;1c86
	nop			;1c87
	nop			;1c88
	nop			;1c89
	nop			;1c8a
	nop			;1c8b
	nop			;1c8c
	rst 38h			;1c8d
	nop			;1c8e
	nop			;1c8f
	nop			;1c90
	nop			;1c91
	rst 38h			;1c92
	nop			;1c93
	nop			;1c94
	rst 38h			;1c95
	nop			;1c96
	nop			;1c97
	rst 38h			;1c98
	nop			;1c99
	nop			;1c9a
	rst 38h			;1c9b
	nop			;1c9c
	nop			;1c9d
	nop			;1c9e
	rst 38h			;1c9f
	nop			;1ca0
	nop			;1ca1
	rst 38h			;1ca2
	nop			;1ca3
	nop			;1ca4
	rst 38h			;1ca5
	nop			;1ca6
	nop			;1ca7
	rst 38h			;1ca8
	nop			;1ca9
	nop			;1caa
	rst 38h			;1cab
	nop			;1cac
	nop			;1cad
	rst 38h			;1cae
	nop			;1caf
	nop			;1cb0
	rst 38h			;1cb1
	nop			;1cb2
	nop			;1cb3
	nop			;1cb4
	rst 38h			;1cb5
	nop			;1cb6
	nop			;1cb7
	rst 38h			;1cb8
	nop			;1cb9
	nop			;1cba
	rst 38h			;1cbb
	nop			;1cbc
	nop			;1cbd
	nop			;1cbe
	nop			;1cbf
	rst 38h			;1cc0
	nop			;1cc1
	nop			;1cc2
	nop			;1cc3
	nop			;1cc4
	rst 38h			;1cc5
	nop			;1cc6
	nop			;1cc7
	rst 38h			;1cc8
	nop			;1cc9
	nop			;1cca
	rst 38h			;1ccb
	nop			;1ccc
	nop			;1ccd
	rst 38h			;1cce
	nop			;1ccf
	nop			;1cd0
	nop			;1cd1
	rst 38h			;1cd2
	nop			;1cd3
	nop			;1cd4
	nop			;1cd5
	nop			;1cd6
	rst 38h			;1cd7
	nop			;1cd8
	nop			;1cd9
	rst 38h			;1cda
	nop			;1cdb
	nop			;1cdc
	nop			;1cdd
	rst 38h			;1cde
	nop			;1cdf
	nop			;1ce0
	rst 38h			;1ce1
	nop			;1ce2
	nop			;1ce3
	nop			;1ce4
	rst 38h			;1ce5
	nop			;1ce6
	nop			;1ce7
	rst 38h			;1ce8
	nop			;1ce9
	nop			;1cea
	rst 38h			;1ceb
	nop			;1cec
	nop			;1ced
	rst 38h			;1cee
	nop			;1cef
	nop			;1cf0
	rst 38h			;1cf1
	nop			;1cf2
	nop			;1cf3
	rst 38h			;1cf4
	nop			;1cf5
	nop			;1cf6
	rst 38h			;1cf7
	nop			;1cf8
	nop			;1cf9
	rst 38h			;1cfa
	nop			;1cfb
	nop			;1cfc
	rst 38h			;1cfd
	nop			;1cfe
	nop			;1cff
	nop			;1d00
	nop			;1d01
	rst 38h			;1d02
	nop			;1d03
	nop			;1d04
	nop			;1d05
	nop			;1d06
	rst 38h			;1d07
	nop			;1d08
	nop			;1d09
	rst 38h			;1d0a
	nop			;1d0b
	nop			;1d0c
	rst 38h			;1d0d
	nop			;1d0e
	nop			;1d0f
	rst 38h			;1d10
	nop			;1d11
	nop			;1d12
	rst 38h			;1d13
	nop			;1d14
	nop			;1d15
	rst 38h			;1d16
	nop			;1d17
	nop			;1d18
	nop			;1d19
	nop			;1d1a
	rst 38h			;1d1b
	nop			;1d1c
	nop			;1d1d
	rst 38h			;1d1e
	nop			;1d1f
	nop			;1d20
	rst 38h			;1d21
	nop			;1d22
	nop			;1d23
	nop			;1d24
	nop			;1d25
	rst 38h			;1d26
	nop			;1d27
	nop			;1d28
	rst 38h			;1d29
	nop			;1d2a
	nop			;1d2b
	rst 38h			;1d2c
	nop			;1d2d
	nop			;1d2e
	nop			;1d2f
	nop			;1d30
	nop			;1d31
	nop			;1d32
	rst 38h			;1d33
	nop			;1d34
	nop			;1d35
	nop			;1d36
	nop			;1d37
	rst 38h			;1d38
	nop			;1d39
	nop			;1d3a
	nop			;1d3b
	nop			;1d3c
	rst 38h			;1d3d
	nop			;1d3e
	nop			;1d3f
	nop			;1d40
	nop			;1d41
	rst 38h			;1d42
	nop			;1d43
	nop			;1d44
	nop			;1d45
	nop			;1d46
	rst 38h			;1d47
	nop			;1d48
	nop			;1d49
	rst 38h			;1d4a
	nop			;1d4b
	nop			;1d4c
	nop			;1d4d
	rst 38h			;1d4e
	nop			;1d4f
	nop			;1d50
	nop			;1d51
	nop			;1d52
	nop			;1d53
	nop			;1d54
	rst 38h			;1d55
	nop			;1d56
	nop			;1d57
	nop			;1d58
	rst 38h			;1d59
	nop			;1d5a
	nop			;1d5b
	rst 38h			;1d5c
	nop			;1d5d
	nop			;1d5e
	rst 38h			;1d5f
	nop			;1d60
	nop			;1d61
	nop			;1d62
	rst 38h			;1d63
	nop			;1d64
	nop			;1d65
	nop			;1d66
	nop			;1d67
	nop			;1d68
	nop			;1d69
	nop			;1d6a
	nop			;1d6b
	nop			;1d6c
	nop			;1d6d
	nop			;1d6e
	nop			;1d6f
	rst 38h			;1d70
	nop			;1d71
	nop			;1d72
	nop			;1d73
	nop			;1d74
	nop			;1d75
	rst 38h			;1d76
	nop			;1d77
	nop			;1d78
	rst 38h			;1d79
	nop			;1d7a
	nop			;1d7b
	nop			;1d7c
	nop			;1d7d
	rst 38h			;1d7e
	nop			;1d7f
	nop			;1d80
	nop			;1d81
	nop			;1d82
	nop			;1d83
	nop			;1d84
	nop			;1d85
	rst 38h			;1d86
	nop			;1d87
	nop			;1d88
	nop			;1d89
	rst 38h			;1d8a
	nop			;1d8b
	nop			;1d8c
	nop			;1d8d
	nop			;1d8e
	nop			;1d8f
	nop			;1d90
	rst 38h			;1d91
	nop			;1d92
	nop			;1d93
	rst 38h			;1d94
	nop			;1d95
	nop			;1d96
	rst 38h			;1d97
	nop			;1d98
	nop			;1d99
	nop			;1d9a
	nop			;1d9b
	rst 38h			;1d9c
	nop			;1d9d
	nop			;1d9e
	nop			;1d9f
	rst 38h			;1da0
	nop			;1da1
	nop			;1da2
	nop			;1da3
	rst 38h			;1da4
	nop			;1da5
	nop			;1da6
	rst 38h			;1da7
	nop			;1da8
	nop			;1da9
	nop			;1daa
	nop			;1dab
	rst 38h			;1dac
	nop			;1dad
	nop			;1dae
	nop			;1daf
	nop			;1db0
	nop			;1db1
	nop			;1db2
	rst 38h			;1db3
	nop			;1db4
	nop			;1db5
	nop			;1db6
	rst 38h			;1db7
	nop			;1db8
	nop			;1db9
	rst 38h			;1dba
	nop			;1dbb
	nop			;1dbc
	rst 38h			;1dbd
	nop			;1dbe
	nop			;1dbf
	nop			;1dc0
	nop			;1dc1
	rst 38h			;1dc2
	nop			;1dc3
	nop			;1dc4
	nop			;1dc5
	rst 38h			;1dc6
	nop			;1dc7
	nop			;1dc8
	rst 38h			;1dc9
	nop			;1dca
	nop			;1dcb
	nop			;1dcc
	rst 38h			;1dcd
	nop			;1dce
	nop			;1dcf
	nop			;1dd0
	nop			;1dd1
	rst 38h			;1dd2
	rst 38h			;1dd3
	rst 38h			;1dd4
	rst 38h			;1dd5
	rst 38h			;1dd6
	nop			;1dd7
	nop			;1dd8
	nop			;1dd9
	rst 38h			;1dda
	nop			;1ddb
	nop			;1ddc
	nop			;1ddd
	nop			;1dde
	nop			;1ddf
	nop			;1de0
	nop			;1de1
	nop			;1de2
	rst 38h			;1de3
	nop			;1de4
	nop			;1de5
	rst 38h			;1de6
	nop			;1de7
	nop			;1de8
	nop			;1de9
	nop			;1dea
	rst 38h			;1deb
	nop			;1dec
	nop			;1ded
	rst 38h			;1dee
	nop			;1def
	nop			;1df0
	rst 38h			;1df1
	nop			;1df2
	nop			;1df3
	rst 38h			;1df4
	nop			;1df5
	nop			;1df6
	nop			;1df7
	nop			;1df8
	rst 38h			;1df9
	nop			;1dfa
	nop			;1dfb
	nop			;1dfc
	rst 38h			;1dfd
	nop			;1dfe
	nop			;1dff
	nop			;1e00
	nop			;1e01
	rst 38h			;1e02
	nop			;1e03
	nop			;1e04
	nop			;1e05
	rst 38h			;1e06
	nop			;1e07
	nop			;1e08
	nop			;1e09
	rst 38h			;1e0a
	nop			;1e0b
	nop			;1e0c
	nop			;1e0d
	nop			;1e0e
	nop			;1e0f
	nop			;1e10
	nop			;1e11
	nop			;1e12
	nop			;1e13
	nop			;1e14
	nop			;1e15
	nop			;1e16
	nop			;1e17
	nop			;1e18
	nop			;1e19
	nop			;1e1a
	nop			;1e1b
	nop			;1e1c
	nop			;1e1d
	nop			;1e1e
	nop			;1e1f
	nop			;1e20
	nop			;1e21
	nop			;1e22
	nop			;1e23
	nop			;1e24
	nop			;1e25
	nop			;1e26
	nop			;1e27
	nop			;1e28
	nop			;1e29
	nop			;1e2a
	nop			;1e2b
	nop			;1e2c
	rst 38h			;1e2d
	nop			;1e2e
	nop			;1e2f
	nop			;1e30
	nop			;1e31
	nop			;1e32
	nop			;1e33
	nop			;1e34
	nop			;1e35
	nop			;1e36
	nop			;1e37
	nop			;1e38
	nop			;1e39
	nop			;1e3a
	rst 38h			;1e3b
	nop			;1e3c
	nop			;1e3d
	nop			;1e3e
	nop			;1e3f
	nop			;1e40
	nop			;1e41
	nop			;1e42
	nop			;1e43
	nop			;1e44
	nop			;1e45
	rst 38h			;1e46
	nop			;1e47
	nop			;1e48
	nop			;1e49
	nop			;1e4a
	rst 38h			;1e4b
	nop			;1e4c
	nop			;1e4d
	nop			;1e4e
	nop			;1e4f
	nop			;1e50
	nop			;1e51
	rst 38h			;1e52
	nop			;1e53
	nop			;1e54
	nop			;1e55
	rst 38h			;1e56
	nop			;1e57
	nop			;1e58
	nop			;1e59
	nop			;1e5a
	nop			;1e5b
	nop			;1e5c
	nop			;1e5d
	nop			;1e5e
	nop			;1e5f
	nop			;1e60
	nop			;1e61
	nop			;1e62
	rst 38h			;1e63
	nop			;1e64
	nop			;1e65
	rst 38h			;1e66
	nop			;1e67
	nop			;1e68
	nop			;1e69
	rst 38h			;1e6a
	nop			;1e6b
	nop			;1e6c
	nop			;1e6d
	nop			;1e6e
	nop			;1e6f
	nop			;1e70
	nop			;1e71
	rst 38h			;1e72
	nop			;1e73
	nop			;1e74
	rst 38h			;1e75
	nop			;1e76
	nop			;1e77
	nop			;1e78
	nop			;1e79
	rst 38h			;1e7a
	nop			;1e7b
	nop			;1e7c
	nop			;1e7d
	rst 38h			;1e7e
	nop			;1e7f
	nop			;1e80
	nop			;1e81
	nop			;1e82
	rst 38h			;1e83
	nop			;1e84
	nop			;1e85
	nop			;1e86
	rst 38h			;1e87
	nop			;1e88
	nop			;1e89
	nop			;1e8a
	nop			;1e8b
	nop			;1e8c
	nop			;1e8d
	nop			;1e8e
	rst 38h			;1e8f
	nop			;1e90
	nop			;1e91
	rst 38h			;1e92
	nop			;1e93
	nop			;1e94
	nop			;1e95
	nop			;1e96
	rst 38h			;1e97
	nop			;1e98
	nop			;1e99
	rst 38h			;1e9a
	nop			;1e9b
	nop			;1e9c
	nop			;1e9d
	nop			;1e9e
	nop			;1e9f
	rst 38h			;1ea0
	nop			;1ea1
	nop			;1ea2
	rst 38h			;1ea3
	nop			;1ea4
	nop			;1ea5
	nop			;1ea6
	nop			;1ea7
	nop			;1ea8
	nop			;1ea9
	nop			;1eaa
	nop			;1eab
	nop			;1eac
	nop			;1ead
	nop			;1eae
	nop			;1eaf
	nop			;1eb0
	nop			;1eb1
	nop			;1eb2
	nop			;1eb3
	nop			;1eb4
	nop			;1eb5
	nop			;1eb6
	nop			;1eb7
	nop			;1eb8
	nop			;1eb9
	nop			;1eba
	nop			;1ebb
	nop			;1ebc
	nop			;1ebd
	nop			;1ebe
	nop			;1ebf
	nop			;1ec0
	nop			;1ec1
	nop			;1ec2
	nop			;1ec3
	nop			;1ec4
	nop			;1ec5
	nop			;1ec6
	nop			;1ec7
	nop			;1ec8
	nop			;1ec9
	nop			;1eca
	nop			;1ecb
	nop			;1ecc
	nop			;1ecd
	nop			;1ece
	nop			;1ecf
	nop			;1ed0
	nop			;1ed1
	nop			;1ed2
	nop			;1ed3
	nop			;1ed4
	nop			;1ed5
	rst 38h			;1ed6
	nop			;1ed7
	nop			;1ed8
	rst 38h			;1ed9
	nop			;1eda
	nop			;1edb
	nop			;1edc
	nop			;1edd
	nop			;1ede
	nop			;1edf
	nop			;1ee0
	nop			;1ee1
	nop			;1ee2
	nop			;1ee3
	nop			;1ee4
	nop			;1ee5
	rst 38h			;1ee6
	nop			;1ee7
	nop			;1ee8
	rst 38h			;1ee9
	nop			;1eea
	nop			;1eeb
	rst 38h			;1eec
	nop			;1eed
	nop			;1eee
	nop			;1eef
	nop			;1ef0
	nop			;1ef1
	rst 38h			;1ef2
l1ef3h:
	nop			;1ef3
	nop			;1ef4
	nop			;1ef5
	nop			;1ef6
	nop			;1ef7
	nop			;1ef8
	nop			;1ef9
	nop			;1efa
	nop			;1efb
	nop			;1efc
	nop			;1efd
	nop			;1efe
	nop			;1eff
	rst 38h			;1f00
	nop			;1f01
	nop			;1f02
	nop			;1f03
	nop			;1f04
	nop			;1f05
	nop			;1f06
	nop			;1f07
	rst 38h			;1f08
	nop			;1f09
	nop			;1f0a
	rst 38h			;1f0b
	nop			;1f0c
	nop			;1f0d
	nop			;1f0e
	nop			;1f0f
	rst 38h			;1f10
	nop			;1f11
	nop			;1f12
	nop			;1f13
	nop			;1f14
	nop			;1f15
	rst 38h			;1f16
	nop			;1f17
	nop			;1f18
	nop			;1f19
	nop			;1f1a
	nop			;1f1b
	nop			;1f1c
	nop			;1f1d
	nop			;1f1e
	nop			;1f1f
	nop			;1f20
	nop			;1f21
	nop			;1f22
	rst 38h			;1f23
	nop			;1f24
	nop			;1f25
	rst 38h			;1f26
	nop			;1f27
	nop			;1f28
	nop			;1f29
	rst 38h			;1f2a
	nop			;1f2b
	nop			;1f2c
	nop			;1f2d
	nop			;1f2e
	rst 38h			;1f2f
	nop			;1f30
	nop			;1f31
	nop			;1f32
	rst 38h			;1f33
	nop			;1f34
	nop			;1f35
	nop			;1f36
	nop			;1f37
	nop			;1f38
	rst 38h			;1f39
	nop			;1f3a
	nop			;1f3b
	nop			;1f3c
	nop			;1f3d
	rst 38h			;1f3e
	nop			;1f3f
	nop			;1f40
	rst 38h			;1f41
	nop			;1f42
	nop			;1f43
	rst 38h			;1f44
	nop			;1f45
	nop			;1f46
	rst 38h			;1f47
	nop			;1f48
	nop			;1f49
	rst 38h			;1f4a
	nop			;1f4b
	rst 38h			;1f4c
	nop			;1f4d
	nop			;1f4e
	nop			;1f4f
	rst 38h			;1f50
	nop			;1f51
	nop			;1f52
	nop			;1f53
	nop			;1f54
	rst 38h			;1f55
	nop			;1f56
	nop			;1f57
	rst 38h			;1f58
	nop			;1f59
	nop			;1f5a
	nop			;1f5b
	nop			;1f5c
	nop			;1f5d
	nop			;1f5e
	rst 38h			;1f5f
	nop			;1f60
	nop			;1f61
	nop			;1f62
	rst 38h			;1f63
	rst 38h			;1f64
	nop			;1f65
	nop			;1f66
	rst 38h			;1f67
	nop			;1f68
	nop			;1f69
	rst 38h			;1f6a
	nop			;1f6b
	nop			;1f6c
	nop			;1f6d
	rst 38h			;1f6e
	nop			;1f6f
	nop			;1f70
	nop			;1f71
	nop			;1f72
	nop			;1f73
	rst 38h			;1f74
	nop			;1f75
	nop			;1f76
	rst 38h			;1f77
	nop			;1f78
	nop			;1f79
	rst 38h			;1f7a
	nop			;1f7b
	nop			;1f7c
	nop			;1f7d
	nop			;1f7e
	nop			;1f7f
	nop			;1f80
	nop			;1f81
	rst 38h			;1f82
	nop			;1f83
	nop			;1f84
	nop			;1f85
	nop			;1f86
	nop			;1f87
	rst 38h			;1f88
	nop			;1f89
	nop			;1f8a
	rst 38h			;1f8b
	nop			;1f8c
	nop			;1f8d
	nop			;1f8e
	rst 38h			;1f8f
	nop			;1f90
	nop			;1f91
	nop			;1f92
	nop			;1f93
	nop			;1f94
	rst 38h			;1f95
	nop			;1f96
	nop			;1f97
	rst 38h			;1f98
	nop			;1f99
	nop			;1f9a
	rst 38h			;1f9b
	nop			;1f9c
	nop			;1f9d
	rst 38h			;1f9e
	nop			;1f9f
	nop			;1fa0
	rst 38h			;1fa1
	nop			;1fa2
	nop			;1fa3
	rst 38h			;1fa4
	nop			;1fa5
	nop			;1fa6
	rst 38h			;1fa7
	nop			;1fa8
	nop			;1fa9
	rst 38h			;1faa
	nop			;1fab
	nop			;1fac
	nop			;1fad
	nop			;1fae
	nop			;1faf
	nop			;1fb0
	nop			;1fb1
	nop			;1fb2
	rst 38h			;1fb3
	nop			;1fb4
	nop			;1fb5
	rst 38h			;1fb6
	nop			;1fb7
	nop			;1fb8
	nop			;1fb9
	nop			;1fba
	nop			;1fbb
	rst 38h			;1fbc
	nop			;1fbd
	nop			;1fbe
	rst 38h			;1fbf
	nop			;1fc0
	nop			;1fc1
	nop			;1fc2
	nop			;1fc3
	rst 38h			;1fc4
	nop			;1fc5
	nop			;1fc6
	rst 38h			;1fc7
	nop			;1fc8
	nop			;1fc9
	rst 38h			;1fca
	nop			;1fcb
	nop			;1fcc
	rst 38h			;1fcd
	nop			;1fce
	nop			;1fcf
	rst 38h			;1fd0
	nop			;1fd1
	nop			;1fd2
	rst 38h			;1fd3
	nop			;1fd4
	nop			;1fd5
	rst 38h			;1fd6
	nop			;1fd7
	nop			;1fd8
	rst 38h			;1fd9
	nop			;1fda
	nop			;1fdb
	rst 38h			;1fdc
	nop			;1fdd
	nop			;1fde
	rst 38h			;1fdf
	nop			;1fe0
	nop			;1fe1
	rst 38h			;1fe2
	nop			;1fe3
	nop			;1fe4
	rst 38h			;1fe5
	nop			;1fe6
	nop			;1fe7
	rst 38h			;1fe8
	nop			;1fe9
	nop			;1fea
	rst 38h			;1feb
	nop			;1fec
	nop			;1fed
	rst 38h			;1fee
	nop			;1fef
	nop			;1ff0
	rst 38h			;1ff1
	nop			;1ff2
l1ff3h:
	nop			;1ff3
	rst 38h			;1ff4
	nop			;1ff5
	nop			;1ff6
	rst 38h			;1ff7
	nop			;1ff8
	nop			;1ff9
	rst 38h			;1ffa
	nop			;1ffb
	nop			;1ffc
	rst 38h			;1ffd
	nop			;1ffe
	nop			;1fff
	rst 38h			;2000
	nop			;2001
	nop			;2002
	rst 38h			;2003
	nop			;2004
	nop			;2005
	rst 38h			;2006
	nop			;2007
	nop			;2008
	rst 38h			;2009
	nop			;200a
	nop			;200b
	nop			;200c
	rst 38h			;200d
	nop			;200e
	nop			;200f
	rst 38h			;2010
	nop			;2011
	nop			;2012
	rst 38h			;2013
	nop			;2014
	nop			;2015
	rst 38h			;2016
	nop			;2017
	nop			;2018
	rst 38h			;2019
	nop			;201a
	nop			;201b
	rst 38h			;201c
	nop			;201d
	nop			;201e
	rst 38h			;201f
	nop			;2020
	nop			;2021
l2022h:
	rst 38h			;2022
	nop			;2023
	nop			;2024
	rst 38h			;2025
	nop			;2026
	nop			;2027
	rst 38h			;2028
	nop			;2029
l202ah:
	nop			;202a
	rst 38h			;202b
	nop			;202c
	nop			;202d
	nop			;202e
	rst 38h			;202f
	nop			;2030
	nop			;2031
	nop			;2032
	nop			;2033
	rst 38h			;2034
	nop			;2035
	nop			;2036
	rst 38h			;2037
	nop			;2038
	nop			;2039
	rst 38h			;203a
	nop			;203b
	nop			;203c
	nop			;203d
	nop			;203e
	rst 38h			;203f
	nop			;2040
	nop			;2041
	nop			;2042
	rst 38h			;2043
	nop			;2044
	nop			;2045
	rst 38h			;2046
	nop			;2047
	nop			;2048
	rst 38h			;2049
	nop			;204a
	nop			;204b
	rst 38h			;204c
	nop			;204d
	nop			;204e
	rst 38h			;204f
	nop			;2050
	nop			;2051
	rst 38h			;2052
	nop			;2053
	nop			;2054
	rst 38h			;2055
	nop			;2056
	nop			;2057
	nop			;2058
	nop			;2059
	nop			;205a
	nop			;205b
	nop			;205c
	rst 38h			;205d
	nop			;205e
	nop			;205f
	nop			;2060
	nop			;2061
	nop			;2062
	nop			;2063
	nop			;2064
	rst 38h			;2065
	nop			;2066
	nop			;2067
	nop			;2068
	rst 38h			;2069
	nop			;206a
	nop			;206b
	nop			;206c
	nop			;206d
	nop			;206e
	nop			;206f
	nop			;2070
	nop			;2071
	rst 38h			;2072
	nop			;2073
	nop			;2074
	nop			;2075
	rst 38h			;2076
	nop			;2077
	nop			;2078
	nop			;2079
	rst 38h			;207a
	nop			;207b
	nop			;207c
	rst 38h			;207d
	nop			;207e
	nop			;207f
	nop			;2080
	nop			;2081
	rst 38h			;2082
	nop			;2083
	nop			;2084
	nop			;2085
	rst 38h			;2086
	nop			;2087
	nop			;2088
	nop			;2089
	rst 38h			;208a
	nop			;208b
	nop			;208c
	rst 38h			;208d
	nop			;208e
	nop			;208f
	rst 38h			;2090
	nop			;2091
	nop			;2092
	rst 38h			;2093
	nop			;2094
	nop			;2095
	nop			;2096
	rst 38h			;2097
	nop			;2098
	nop			;2099
	nop			;209a
	nop			;209b
	nop			;209c
	rst 38h			;209d
	nop			;209e
	nop			;209f
	nop			;20a0
	nop			;20a1
	rst 38h			;20a2
	nop			;20a3
	nop			;20a4
	nop			;20a5
	nop			;20a6
	rst 38h			;20a7
	nop			;20a8
	nop			;20a9
	rst 38h			;20aa
	nop			;20ab
	nop			;20ac
	ld bc,00101h		;20ad
	ld bc,0ffffh		;20b0
	ld bc,00101h		;20b3
	ld bc,00101h		;20b6
	ld bc,00101h		;20b9
	ld bc,00101h		;20bc
	ld bc,00101h		;20bf
	ld bc,00101h		;20c2
	ld bc,00101h		;20c5
	ld bc,00101h		;20c8
	ld bc,00101h		;20cb
	ld bc,00101h		;20ce
	ld bc,00101h		;20d1
	ld bc,00101h		;20d4
	ld bc,00101h		;20d7
	ld bc,00101h		;20da
	ld bc,00101h		;20dd
	ld bc,00101h		;20e0
	ld bc,00101h		;20e3
	ld bc,00101h		;20e6
	ld bc,00101h		;20e9
	ld bc,0ff01h		;20ec
	rst 38h			;20ef
	rst 38h			;20f0
	rst 38h			;20f1
	rst 38h			;20f2
	rst 38h			;20f3
	rst 38h			;20f4
	rst 38h			;20f5
	rst 38h			;20f6
	rst 38h			;20f7
	rst 38h			;20f8
	rst 38h			;20f9
	rst 38h			;20fa
	rst 38h			;20fb
	rst 38h			;20fc
	rst 38h			;20fd
	rst 38h			;20fe
	rst 38h			;20ff
	sub l			;2100
	defb 0ddh,000h,000h ;illegal sequence	;2101
	nop			;2104
	nop			;2105
	nop			;2106
	nop			;2107
	nop			;2108
	nop			;2109
	nop			;210a
	nop			;210b
	nop			;210c
	nop			;210d
	nop			;210e
	nop			;210f
	nop			;2110
	nop			;2111
	nop			;2112
	nop			;2113
	nop			;2114
	nop			;2115
	nop			;2116
	nop			;2117
	nop			;2118
	nop			;2119
	nop			;211a
	nop			;211b
	nop			;211c
	nop			;211d
	nop			;211e
	nop			;211f
	nop			;2120
	nop			;2121
	nop			;2122
	nop			;2123
	nop			;2124
	nop			;2125
	nop			;2126
	nop			;2127
	nop			;2128
	nop			;2129
	nop			;212a
	nop			;212b
	nop			;212c
	nop			;212d
	nop			;212e
	nop			;212f
	nop			;2130
	nop			;2131
	nop			;2132
	nop			;2133
	nop			;2134
	nop			;2135
	nop			;2136
	nop			;2137
	nop			;2138
	nop			;2139
	nop			;213a
	nop			;213b
	nop			;213c
	nop			;213d
	nop			;213e
	nop			;213f
	nop			;2140
	nop			;2141
	nop			;2142
	nop			;2143
	nop			;2144
	nop			;2145
	nop			;2146
	nop			;2147
	nop			;2148
	nop			;2149
	nop			;214a
	nop			;214b
	nop			;214c
	nop			;214d
	nop			;214e
	nop			;214f
	nop			;2150
	nop			;2151
	nop			;2152
	nop			;2153
	nop			;2154
	nop			;2155
	nop			;2156
	nop			;2157
	nop			;2158
	nop			;2159
	nop			;215a
	nop			;215b
	nop			;215c
	nop			;215d
	nop			;215e
	nop			;215f
	nop			;2160
	nop			;2161
	nop			;2162
	nop			;2163
	nop			;2164
	nop			;2165
	nop			;2166
	nop			;2167
	nop			;2168
	nop			;2169
	nop			;216a
	nop			;216b
	nop			;216c
	nop			;216d
	nop			;216e
	nop			;216f
	nop			;2170
	nop			;2171
	nop			;2172
	nop			;2173
	nop			;2174
	nop			;2175
	nop			;2176
	nop			;2177
	nop			;2178
	nop			;2179
	nop			;217a
	nop			;217b
	nop			;217c
	nop			;217d
	nop			;217e
	nop			;217f
	nop			;2180
	nop			;2181
	nop			;2182
	nop			;2183
	nop			;2184
	nop			;2185
	nop			;2186
	nop			;2187
	nop			;2188
	nop			;2189
	nop			;218a
	nop			;218b
	nop			;218c
	nop			;218d
	nop			;218e
	nop			;218f
	nop			;2190
	nop			;2191
	nop			;2192
	nop			;2193
	nop			;2194
	nop			;2195
	nop			;2196
	nop			;2197
	nop			;2198
	nop			;2199
	nop			;219a
	nop			;219b
	nop			;219c
	nop			;219d
	nop			;219e
	nop			;219f
	nop			;21a0
	nop			;21a1
	nop			;21a2
	nop			;21a3
	nop			;21a4
	nop			;21a5
	nop			;21a6
	nop			;21a7
	nop			;21a8
	nop			;21a9
	nop			;21aa
	nop			;21ab
	nop			;21ac
	nop			;21ad
	nop			;21ae
	nop			;21af
	nop			;21b0
	nop			;21b1
	nop			;21b2
	nop			;21b3
	nop			;21b4
	nop			;21b5
	nop			;21b6
	nop			;21b7
	nop			;21b8
	nop			;21b9
	nop			;21ba
	nop			;21bb
	nop			;21bc
	nop			;21bd
	nop			;21be
	nop			;21bf
	nop			;21c0
	nop			;21c1
	nop			;21c2
	nop			;21c3
	nop			;21c4
	nop			;21c5
	nop			;21c6
	nop			;21c7
	nop			;21c8
	nop			;21c9
	nop			;21ca
	nop			;21cb
	nop			;21cc
	nop			;21cd
	nop			;21ce
	nop			;21cf
	nop			;21d0
	nop			;21d1
	nop			;21d2
	nop			;21d3
	nop			;21d4
	nop			;21d5
	nop			;21d6
	nop			;21d7
	nop			;21d8
	nop			;21d9
	nop			;21da
	nop			;21db
	nop			;21dc
	nop			;21dd
	nop			;21de
	nop			;21df
	nop			;21e0
	nop			;21e1
	nop			;21e2
	nop			;21e3
	nop			;21e4
	nop			;21e5
	nop			;21e6
	nop			;21e7
	nop			;21e8
	nop			;21e9
	nop			;21ea
	nop			;21eb
	nop			;21ec
	nop			;21ed
	nop			;21ee
	nop			;21ef
	nop			;21f0
	nop			;21f1
	nop			;21f2
	nop			;21f3
	nop			;21f4
	nop			;21f5
	nop			;21f6
	nop			;21f7
	nop			;21f8
	nop			;21f9
	nop			;21fa
	nop			;21fb
	nop			;21fc
	nop			;21fd
	nop			;21fe
	nop			;21ff
