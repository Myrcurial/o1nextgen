; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x100 -o /tmp/k_msdos.asm research/copower88/kaypro/extracted_cpm/msdos.com

	org 00100h

l0100h:
	jp l0534h		;0100
l0103h:
	ld a,a			;0103
l0104h:
	ld a,(hl)		;0104
	nop			;0105
l0106h:
	jp l0534h		;0106
l0109h:
	dec bc			;0109
	nop			;010a
l010bh:
	nop			;010b
l010ch:
	nop			;010c
l010dh:
	ld a,(bc)		;010d
	nop			;010e
l010fh:
	nop			;010f
	nop			;0110
l0111h:
	inc c			;0111
	nop			;0112
	nop			;0113
	nop			;0114
l0115h:
	ex af,af'		;0115
	nop			;0116
	nop			;0117
	nop			;0118
l0119h:
	dec de			;0119
	dec a			;011a
	nop			;011b
	nop			;011c
l011dh:
	ld a,(de)		;011d
	nop			;011e
	nop			;011f
	nop			;0120
l0121h:
	rla			;0121
	nop			;0122
	nop			;0123
	nop			;0124
l0125h:
	jr l0127h		;0125
l0127h:
	nop			;0127
	nop			;0128
l0129h:
	dec de			;0129
	ld b,d			;012a
	jr nc,l012dh		;012b
l012dh:
	dec de			;012d
	ld b,e			;012e
	jr nc,l0131h		;012f
l0131h:
	dec de			;0131
	ld b,l			;0132
	nop			;0133
	nop			;0134
l0135h:
	dec de			;0135
	ld d,d			;0136
	nop			;0137
	nop			;0138
	nop			;0139
	nop			;013a
	nop			;013b
l013ch:
	nop			;013c
	nop			;013d
	nop			;013e
	nop			;013f
l0140h:
	dec c			;0140
l0141h:
	ld a,(bc)		;0141
	ld a,(bc)		;0142
	ld a,(bc)		;0143
	ld a,(bc)		;0144
	ld a,(bc)		;0145
	add hl,bc		;0146
	add hl,bc		;0147
	ld hl,(l2a2ah)		;0148
	ld hl,(l2a2ah)		;014b
	ld hl,(l2a2ah)		;014e
	ld hl,(l2a2ah)		;0151
	ld hl,(l2a2ah)		;0154
	ld hl,(l2a2ah)		;0157
	ld hl,(l2a2ah)		;015a
	ld hl,(l2a2ah)		;015d
	ld hl,(l2a2ah)		;0160
	ld hl,(l2a2ah)		;0163
	ld hl,(l0d2ah)		;0166
	ld a,(bc)		;0169
	add hl,bc		;016a
	add hl,bc		;016b
	ld hl,(0202ah)		;016c
	jr nz,$+34		;016f
	jr nz,l0193h		;0171
	jr nz,l0195h		;0173
l0175h:
	jr nz,$+34		;0175
	jr nz,l0199h		;0177
	jr nz,l019bh		;0179
	jr nz,l019dh		;017b
	jr nz,l019fh		;017d
	jr nz,l01a1h		;017f
	jr nz,l01a3h		;0181
	jr nz,$+34		;0183
	jr nz,l01a7h		;0185
	jr nz,l01a9h		;0187
	jr nz,$+44		;0189
	ld hl,(l0a0dh)		;018b
	add hl,bc		;018e
	add hl,bc		;018f
l0190h:
	ld hl,(0202ah)		;0190
l0193h:
	ld d,e			;0193
	ld d,a			;0194
l0195h:
	ld d,b			;0195
	jr nz,l01e5h		;0196
	ld l,c			;0198
l0199h:
	ld h,e			;0199
	ld (hl),d		;019a
l019bh:
	ld l,a			;019b
	ld h,e			;019c
l019dh:
	ld l,a			;019d
	ld l,l			;019e
l019fh:
	ld (hl),b		;019f
	ld (hl),l		;01a0
l01a1h:
	ld (hl),h		;01a1
	ld h,l			;01a2
l01a3h:
	ld (hl),d		;01a3
	jr nz,l01f6h		;01a4
	ld (hl),d		;01a6
l01a7h:
	ld l,a			;01a7
	ld h,h			;01a8
l01a9h:
	ld (hl),l		;01a9
	ld h,e			;01aa
	ld (hl),h		;01ab
	ld (hl),e		;01ac
	jr nz,$+44		;01ad
	ld hl,(l0a0dh)		;01af
	add hl,bc		;01b2
	add hl,bc		;01b3
	ld hl,(0202ah)		;01b4
	ld sp,l3030h		;01b7
	jr nc,l01dch		;01ba
	ld d,a			;01bc
	ld h,l			;01bd
	ld (hl),e		;01be
l01bfh:
	ld (hl),h		;01bf
	jr nz,l0208h		;01c0
	ld (hl),l		;01c2
	ld l,h			;01c3
	ld l,h			;01c4
	ld h,l			;01c5
	ld (hl),d		;01c6
	jr nz,l01e9h		;01c7
	jr nz,l01ebh		;01c9
	jr nz,$+34		;01cb
	jr nz,l01efh		;01cd
	jr nz,l01f1h		;01cf
	jr nz,$+44		;01d1
	ld hl,(l0a0dh)		;01d3
	add hl,bc		;01d6
	add hl,bc		;01d7
	ld hl,(0202ah)		;01d8
	ld b,(hl)		;01db
l01dch:
	ld l,a			;01dc
	ld (hl),d		;01dd
	ld (hl),h		;01de
	jr nz,l0238h		;01df
	ld l,a			;01e1
	ld (hl),d		;01e2
	ld (hl),h		;01e3
	ld l,b			;01e4
l01e5h:
	inc l			;01e5
	jr nz,l023ch		;01e6
	ld h,l			;01e8
l01e9h:
	ld a,b			;01e9
	ld h,c			;01ea
l01ebh:
	ld (hl),e		;01eb
	jr nz,l020eh		;01ec
	scf			;01ee
l01efh:
	ld (hl),031h		;01ef
l01f1h:
	ld sp,02035h		;01f1
	jr nz,$+34		;01f4
l01f6h:
	ld hl,(l0d2ah)		;01f6
	ld a,(bc)		;01f9
	add hl,bc		;01fa
	add hl,bc		;01fb
	ld hl,(0202ah)		;01fc
	ld h,e			;01ff
l0200h:
	ld l,a			;0200
l0201h:
	ld (hl),b		;0201
	ld a,c			;0202
	ld (hl),d		;0203
	ld l,c			;0204
	ld h,a			;0205
	ld l,b			;0206
	ld (hl),h		;0207
l0208h:
	jr nz,$+51		;0208
	add hl,sp		;020a
	jr c,$+53		;020b
	inc l			;020d
l020eh:
	jr c,l0244h		;020e
	inc l			;0210
	jr c,$+55		;0211
	jr nz,$+34		;0213
	jr nz,$+34		;0215
	jr nz,$+34		;0217
	jr nz,$+44		;0219
	ld hl,(l0a0dh)		;021b
	add hl,bc		;021e
	add hl,bc		;021f
	ld hl,(0202ah)		;0220
	ld sp,l2d30h		;0223
	ld c,l			;0226
	ld h,c			;0227
	ld a,c			;0228
	dec l			;0229
	jr c,l0261h		;022a
	jr nz,$+34		;022c
	jr nz,$+34		;022e
	jr nz,$+34		;0230
	jr nz,$+34		;0232
	jr nz,$+34		;0234
	jr nz,$+34		;0236
l0238h:
	jr nz,$+34		;0238
	jr nz,$+34		;023a
l023ch:
	jr nz,$+34		;023c
	ld hl,(l0d2ah)		;023e
	ld a,(bc)		;0241
	add hl,bc		;0242
	add hl,bc		;0243
l0244h:
	ld hl,(0202ah)		;0244
	jr nz,$+34		;0247
	jr nz,l026bh		;0249
	jr nz,$+34		;024b
	jr nz,$+34		;024d
	jr nz,l0271h		;024f
	jr nz,$+34		;0251
	jr nz,$+34		;0253
	jr nz,l0277h		;0255
	jr nz,$+34		;0257
	jr nz,$+34		;0259
	jr nz,l027dh		;025b
	jr nz,$+34		;025d
	jr nz,$+34		;025f
l0261h:
	jr nz,l028dh		;0261
	ld hl,(l0a0dh)		;0263
	add hl,bc		;0266
	add hl,bc		;0267
	ld hl,(l2a2ah)		;0268
l026bh:
	ld hl,(l2a2ah)		;026b
	ld hl,(l2a2ah)		;026e
l0271h:
	ld hl,(l2a2ah)		;0271
	ld hl,(l2a2ah)		;0274
l0277h:
	ld hl,(l2a2ah)		;0277
	ld hl,(l2a2ah)		;027a
l027dh:
	ld hl,(l2a2ah)		;027d
	ld hl,(l2a2ah)		;0280
	ld hl,(l2a2ah)		;0283
	ld hl,(l0d2ah)		;0286
	ld a,(bc)		;0289
	dec c			;028a
	ld a,(bc)		;028b
	ld a,(bc)		;028c
l028dh:
	inc h			;028d
	nop			;028e
	nop			;028f
	nop			;0290
	nop			;0291
	nop			;0292
	nop			;0293
	nop			;0294
	nop			;0295
	nop			;0296
	nop			;0297
	nop			;0298
	nop			;0299
	nop			;029a
	nop			;029b
	nop			;029c
	nop			;029d
	nop			;029e
	nop			;029f
	nop			;02a0
	nop			;02a1
	nop			;02a2
l02a3h:
	nop			;02a3
	nop			;02a4
	nop			;02a5
	nop			;02a6
	nop			;02a7
	nop			;02a8
	nop			;02a9
	nop			;02aa
	nop			;02ab
	nop			;02ac
	nop			;02ad
	nop			;02ae
	nop			;02af
sub_02b0h:
	nop			;02b0
	nop			;02b1
	nop			;02b2
	nop			;02b3
	nop			;02b4
	nop			;02b5
	nop			;02b6
	nop			;02b7
	nop			;02b8
	nop			;02b9
	nop			;02ba
	nop			;02bb
	nop			;02bc
	nop			;02bd
	nop			;02be
	nop			;02bf
	nop			;02c0
	nop			;02c1
	nop			;02c2
	nop			;02c3
	nop			;02c4
	nop			;02c5
	nop			;02c6
	nop			;02c7
	nop			;02c8
	nop			;02c9
	nop			;02ca
l02cbh:
	nop			;02cb
	nop			;02cc
	nop			;02cd
	nop			;02ce
	nop			;02cf
	nop			;02d0
	nop			;02d1
	nop			;02d2
	nop			;02d3
	nop			;02d4
	nop			;02d5
	nop			;02d6
	nop			;02d7
	nop			;02d8
	nop			;02d9
	nop			;02da
	nop			;02db
	nop			;02dc
	nop			;02dd
l02deh:
	nop			;02de
	nop			;02df
	nop			;02e0
	nop			;02e1
	nop			;02e2
	nop			;02e3
	nop			;02e4
	nop			;02e5
	nop			;02e6
	nop			;02e7
l02e8h:
	nop			;02e8
	nop			;02e9
	nop			;02ea
	nop			;02eb
	nop			;02ec
	nop			;02ed
	nop			;02ee
	nop			;02ef
	nop			;02f0
	nop			;02f1
	nop			;02f2
	nop			;02f3
	nop			;02f4
	nop			;02f5
	nop			;02f6
	nop			;02f7
	nop			;02f8
	nop			;02f9
	nop			;02fa
l02fbh:
	nop			;02fb
	nop			;02fc
	nop			;02fd
	nop			;02fe
	nop			;02ff
sub_0300h:
	jp l0320h		;0300
sub_0303h:
	jp 003a2h		;0303
sub_0306h:
	jp l03ebh		;0306
sub_0309h:
	jp l0404h		;0309
sub_030ch:
	bit 0,c			;030c
l030eh:
	jr z,l0315h		;030e
l0310h:
	ld ix,l031ah		;0310
	ret			;0314
l0315h:
	ld ix,l031dh		;0315
	ret			;0319
l031ah:
	inc c			;031a
	ld c,008h		;031b
l031dh:
	inc b			;031d
	ld b,000h		;031e
l0320h:
	call sub_030ch		;0320
	ld c,(ix+001h)		;0323
l0326h:
	ld a,e			;0326
	push af			;0327
	rra			;0328
	and 00eh		;0329
	ld d,a			;032b
	ld a,e			;032c
	and 001h		;032d
	or d			;032f
	ld d,000h		;0330
	ld e,a			;0332
	ld hl,l0367h		;0333
l0336h:
	call sub_0361h		;0336
	ld hl,l0378h		;0339
l033ch:
	call sub_0361h		;033c
	ld hl,l0389h		;033f
	call sub_0361h		;0342
	ld a,001h		;0345
	out (c),a		;0347
	ld a,000h		;0349
	out (c),a		;034b
	pop af			;034d
	and 0e0h		;034e
	rlca			;0350
	rlca			;0351
	rlca			;0352
	ld e,a			;0353
	ld hl,l039ah		;0354
	add hl,de		;0357
	ld c,(ix+002h)		;0358
	outi			;035b
	call sub_03a5h		;035d
	ret			;0360
sub_0361h:
	outi			;0361
	add hl,de		;0363
	outi			;0364
	ret			;0366
l0367h:
	inc b			;0367
	ld b,h			;0368
	ld b,h			;0369
	ld c,h			;036a
	ld c,h			;036b
	ld b,h			;036c
	ld b,h			;036d
	ld c,h			;036e
	ld c,h			;036f
	ld b,h			;0370
	ld b,h			;0371
	ld c,h			;0372
	ld c,h			;0373
l0374h:
	ld b,h			;0374
l0375h:
	ld b,h			;0375
	ld c,h			;0376
	ld c,h			;0377
l0378h:
	inc bc			;0378
	ld b,c			;0379
	pop bc			;037a
	ld b,c			;037b
	pop bc			;037c
	ld b,c			;037d
	pop bc			;037e
	ld b,c			;037f
	pop bc			;0380
	ld b,c			;0381
	pop bc			;0382
	ld b,c			;0383
	pop bc			;0384
	ld b,c			;0385
	pop bc			;0386
	ld b,c			;0387
	pop bc			;0388
l0389h:
	dec b			;0389
	xor d			;038a
	jp pe,0eaaah		;038b
	xor d			;038e
	jp pe,0eaaah		;038f
	xor d			;0392
	jp pe,0eaaah		;0393
	xor d			;0396
	jp pe,0eaaah		;0397
l039ah:
	ld (bc),a		;039a
	inc b			;039b
	dec b			;039c
	ld b,007h		;039d
	ld a,(bc)		;039f
	inc c			;03a0
	ld c,0cdh		;03a1
	inc c			;03a3
	inc bc			;03a4
sub_03a5h:
	ld de,00000h		;03a5
	ld c,(ix+001h)		;03a8
	ld a,010h		;03ab
	out (c),a		;03ad
	in a,(c)		;03af
	bit 2,a			;03b1
	jr z,l03b9h		;03b3
	set 5,d			;03b5
	set 6,d			;03b7
l03b9h:
	bit 0,a			;03b9
	jr z,l03bfh		;03bb
	set 0,d			;03bd
l03bfh:
	bit 3,a			;03bf
	jr z,l03c5h		;03c1
l03c3h:
	set 7,e			;03c3
l03c5h:
	bit 5,a			;03c5
	jr z,l03cbh		;03c7
	set 4,e			;03c9
l03cbh:
	ld a,001h		;03cb
	out (c),a		;03cd
	in a,(c)		;03cf
	bit 6,a			;03d1
	jr z,l03d7h		;03d3
	set 3,d			;03d5
l03d7h:
	bit 5,a			;03d7
	jr z,l03ddh		;03d9
	set 1,d			;03db
l03ddh:
	bit 4,a			;03dd
	jr z,l03e3h		;03df
	set 2,d			;03e1
l03e3h:
	and 070h		;03e3
	ret z			;03e5
	ld a,030h		;03e6
l03e8h:
	out (c),a		;03e8
	ret			;03ea
l03ebh:
	call sub_030ch		;03eb
	ld c,(ix+001h)		;03ee
l03f1h:
	in a,(c)		;03f1
	and 001h		;03f3
	jr z,l03f1h		;03f5
	call sub_03a5h		;03f7
	ld a,d			;03fa
	and 09eh		;03fb
	ld d,a			;03fd
	ld c,(ix+000h)		;03fe
l0401h:
	in e,(c)		;0401
	ret			;0403
l0404h:
	call sub_030ch		;0404
	ld c,(ix+001h)		;0407
l040ah:
	in a,(c)		;040a
	and 004h		;040c
	jr z,l040ah		;040e
	ld c,(ix+000h)		;0410
	out (c),e		;0413
	call sub_03a5h		;0415
	ret			;0418
	nop			;0419
	nop			;041a
	nop			;041b
	nop			;041c
	nop			;041d
	nop			;041e
	nop			;041f
	nop			;0420
	nop			;0421
	nop			;0422
	nop			;0423
	nop			;0424
	nop			;0425
	nop			;0426
	nop			;0427
	nop			;0428
	nop			;0429
	nop			;042a
	nop			;042b
l042ch:
	nop			;042c
	nop			;042d
	nop			;042e
	nop			;042f
	nop			;0430
	nop			;0431
	nop			;0432
	nop			;0433
	nop			;0434
	nop			;0435
	nop			;0436
	nop			;0437
	nop			;0438
	nop			;0439
	nop			;043a
	nop			;043b
	nop			;043c
	nop			;043d
	nop			;043e
	nop			;043f
	nop			;0440
	nop			;0441
	nop			;0442
	nop			;0443
	nop			;0444
l0445h:
	nop			;0445
	nop			;0446
	nop			;0447
	nop			;0448
	nop			;0449
	nop			;044a
	nop			;044b
	nop			;044c
	nop			;044d
	nop			;044e
	nop			;044f
	nop			;0450
	nop			;0451
	nop			;0452
	nop			;0453
	nop			;0454
	nop			;0455
	nop			;0456
	nop			;0457
	nop			;0458
	nop			;0459
	nop			;045a
	nop			;045b
	nop			;045c
	nop			;045d
	nop			;045e
	nop			;045f
	nop			;0460
	nop			;0461
	nop			;0462
	nop			;0463
	nop			;0464
l0465h:
	nop			;0465
	nop			;0466
	nop			;0467
	nop			;0468
	nop			;0469
	nop			;046a
	nop			;046b
	nop			;046c
	nop			;046d
	nop			;046e
	nop			;046f
	nop			;0470
	nop			;0471
	nop			;0472
	nop			;0473
l0474h:
	nop			;0474
l0475h:
	nop			;0475
l0476h:
	nop			;0476
l0477h:
	nop			;0477
	nop			;0478
	nop			;0479
	nop			;047a
	nop			;047b
	nop			;047c
	nop			;047d
	nop			;047e
	nop			;047f
	nop			;0480
	nop			;0481
	nop			;0482
	nop			;0483
	nop			;0484
	nop			;0485
	nop			;0486
	nop			;0487
	nop			;0488
	nop			;0489
	nop			;048a
	nop			;048b
	nop			;048c
	nop			;048d
	nop			;048e
	nop			;048f
	nop			;0490
	nop			;0491
	nop			;0492
	nop			;0493
	nop			;0494
	nop			;0495
	nop			;0496
	nop			;0497
	nop			;0498
	nop			;0499
	nop			;049a
	nop			;049b
	nop			;049c
	nop			;049d
	nop			;049e
	nop			;049f
	nop			;04a0
	nop			;04a1
	nop			;04a2
	nop			;04a3
	nop			;04a4
	nop			;04a5
	nop			;04a6
	nop			;04a7
	nop			;04a8
	nop			;04a9
	nop			;04aa
	nop			;04ab
	nop			;04ac
	nop			;04ad
	nop			;04ae
	nop			;04af
	nop			;04b0
l04b1h:
	nop			;04b1
	nop			;04b2
	nop			;04b3
	nop			;04b4
	nop			;04b5
	nop			;04b6
	nop			;04b7
	nop			;04b8
l04b9h:
	nop			;04b9
	nop			;04ba
	nop			;04bb
	nop			;04bc
	nop			;04bd
	nop			;04be
	nop			;04bf
	nop			;04c0
	nop			;04c1
	nop			;04c2
	nop			;04c3
	nop			;04c4
	nop			;04c5
	nop			;04c6
	nop			;04c7
	nop			;04c8
	nop			;04c9
	nop			;04ca
	nop			;04cb
	nop			;04cc
	nop			;04cd
	nop			;04ce
	nop			;04cf
	nop			;04d0
	nop			;04d1
	nop			;04d2
	nop			;04d3
	nop			;04d4
	nop			;04d5
	nop			;04d6
	nop			;04d7
	nop			;04d8
	nop			;04d9
	nop			;04da
	nop			;04db
	nop			;04dc
	nop			;04dd
	nop			;04de
	nop			;04df
	nop			;04e0
	nop			;04e1
	nop			;04e2
	nop			;04e3
	nop			;04e4
	nop			;04e5
	nop			;04e6
	nop			;04e7
l04e8h:
	nop			;04e8
	nop			;04e9
	nop			;04ea
	nop			;04eb
	nop			;04ec
	nop			;04ed
	nop			;04ee
	nop			;04ef
	nop			;04f0
	nop			;04f1
	nop			;04f2
	nop			;04f3
	nop			;04f4
	nop			;04f5
	nop			;04f6
	nop			;04f7
	nop			;04f8
	nop			;04f9
	nop			;04fa
	nop			;04fb
	nop			;04fc
	nop			;04fd
	nop			;04fe
	nop			;04ff
	ld de,(l155eh)		;0500
	ld a,(l1560h)		;0504
	ld c,a			;0507
	ld a,d			;0508
	cp 000h			;0509
	jr z,l0525h		;050b
	cp 001h			;050d
	jr z,l052fh		;050f
	cp 002h			;0511
	jr z,l052ah		;0513
	call sub_0303h		;0515
l0518h:
	ld (l155eh),de		;0518
	ld a,002h		;051c
	ld (l155dh),a		;051e
	call sub_134bh		;0521
	ret			;0524
l0525h:
	call sub_0300h		;0525
	jr l0518h		;0528
l052ah:
	call sub_0306h		;052a
	jr l0518h		;052d
l052fh:
	call sub_0309h		;052f
	jr l0518h		;0532
l0534h:
	ld hl,(00006h)		;0534
	ld sp,hl		;0537
	ld hl,(00001h)		;0538
	ld de,l143ah		;053b
	ld bc,00030h		;053e
	ldir			;0541
	xor a			;0543
	ld (l1436h),a		;0544
	ld (l1474h),a		;0547
	ld (l147eh),a		;054a
	ld hl,l03e8h		;054d
	ld de,00000h		;0550
l0553h:
	ld a,(l0103h)		;0553
	ld c,a			;0556
	in a,(c)		;0557
	bit 7,a			;0559
	jr z,l0564h		;055b
	ld a,(l0104h)		;055d
	ld c,a			;0560
	in a,(c)		;0561
	inc de			;0563
l0564h:
	dec hl			;0564
	ld a,h			;0565
	or l			;0566
	jr nz,l0553h		;0567
	ld a,d			;0569
	or e			;056a
	call z,sub_07c1h	;056b
	ld hl,0fff8h		;056e
	add hl,de		;0571
sub_0572h:
	call c,sub_07c1h	;0572
	ld hl,00000h		;0575
	ld (l155ch),hl		;0578
	call sub_134bh		;057b
	call sub_0bf1h		;057e
	cp 005h			;0581
	call nz,sub_07c1h	;0583
	call sub_13c6h		;0586
	ld a,(l155ch)		;0589
	cp 009h			;058c
	call nz,sub_07c1h	;058e
	ld hl,00009h		;0591
	ld (l155ch),hl		;0594
	call sub_134bh		;0597
	call sub_0bf1h		;059a
	cp 005h			;059d
	call nz,sub_07c1h	;059f
	call sub_13c6h		;05a2
	ld a,(l155ch)		;05a5
	cp 008h			;05a8
	call nz,sub_07c1h	;05aa
	ld hl,00008h		;05ad
	ld (l155ch),hl		;05b0
	call sub_134bh		;05b3
	call sub_0bf1h		;05b6
	cp 005h			;05b9
	call nz,sub_07c1h	;05bb
	call sub_13c6h		;05be
	ld a,(l155ch)		;05c1
	cp 015h			;05c4
	call nz,sub_07c1h	;05c6
	call sub_119dh		;05c9
	ld a,(00080h)		;05cc
	or a			;05cf
	jr z,l05f4h		;05d0
	ld b,000h		;05d2
	ld c,a			;05d4
	ld hl,00081h		;05d5
	ld a,02fh		;05d8
	cpir			;05da
	jr nz,l05f4h		;05dc
	ld a,(hl)		;05de
	cp 054h			;05df
	jr nz,l05f4h		;05e1
	ld hl,l0140h		;05e3
	ld de,l0141h		;05e6
	ld bc,l01bfh		;05e9
	ld (hl),000h		;05ec
	ldir			;05ee
	xor a			;05f0
	ld (l0875h),a		;05f1
l05f4h:
	ld a,(l0103h)		;05f4
	ld c,a			;05f7
	in a,(c)		;05f8
	bit 7,a			;05fa
	jp nz,l0685h		;05fc
	ld a,(l1436h)		;05ff
	or a			;0602
	jr nz,l05f4h		;0603
	call sub_143dh		;0605
	or a			;0608
	jr z,l05f4h		;0609
	ld d,a			;060b
	ld a,(l0103h)		;060c
	ld c,a			;060f
	ld a,000h		;0610
	out (c),a		;0612
	ld a,080h		;0614
	ld (l1436h),a		;0616
	jr l05f4h		;0619
l061bh:
	call sub_143dh		;061b
	or a			;061e
	jr z,l05f4h		;061f
	ld a,(l0103h)		;0621
	ld c,a			;0624
	in a,(c)		;0625
	bit 0,a			;0627
	jr nz,l061bh		;0629
	ld a,(l0104h)		;062b
	ld c,a			;062e
	ld a,001h		;062f
	out (c),a		;0631
l0633h:
	ld a,(l0103h)		;0633
	ld c,a			;0636
	in a,(c)		;0637
	bit 0,a			;0639
l063bh:
	jr nz,l0633h		;063b
l063dh:
	call sub_1440h		;063d
	ld d,a			;0640
	in a,(007h)		;0641
	bit 0,a			;0643
	jr nz,l0677h		;0645
	in a,(005h)		;0647
	bit 7,a			;0649
	jr z,l0677h		;064b
	ld hl,l0716h		;064d
	cp 0e5h			;0650
	jr nz,l065ch		;0652
	inc (hl)		;0654
	ld c,007h		;0655
l0657h:
	call sub_0e83h		;0657
	jr l063dh		;065a
l065ch:
	cp 0f1h			;065c
	jr nc,l0664h		;065e
	bit 0,(hl)		;0660
	jr nz,l0677h		;0662
l0664h:
	ld hl,l0717h		;0664
	ld bc,00012h		;0667
	cpir			;066a
	jr nz,l0677h		;066c
	ld bc,l0718h		;066e
	or a			;0671
l0672h:
	sbc hl,bc		;0672
	ld d,l			;0674
	set 7,d			;0675
l0677h:
	ld a,(l0104h)		;0677
	ld c,a			;067a
	out (c),d		;067b
	ld a,000h		;067d
	ld (l1436h),a		;067f
	jp l05f4h		;0682
l0685h:
	ld a,(l0104h)		;0685
	ld c,a			;0688
	in a,(c)		;0689
	cp 084h			;068b
	jp z,l06b8h		;068d
	cp 08bh			;0690
	jp z,l06c2h		;0692
	cp 0ffh			;0695
	jr z,l061bh		;0697
	cp 005h			;0699
	call nz,sub_081ch	;069b
	jp nz,l05f4h		;069e
	call sub_13c6h		;06a1
	ld a,(l155ch)		;06a4
	cp 023h			;06a7
	call nc,sub_0729h	;06a9
	call l0875h		;06ac
	ld hl,l06d0h		;06af
	call 00be7h		;06b2
	jp l05f4h		;06b5
l06b8h:
	call sub_0bf1h		;06b8
	ld c,a			;06bb
	call sub_0e83h		;06bc
	jp l05f4h		;06bf
l06c2h:
	call sub_0bf1h		;06c2
l06c5h:
	and 00fh		;06c5
l06c7h:
	ld hl,(l0c56h)		;06c7
	call 00be7h		;06ca
	jp l05f4h		;06cd
l06d0h:
	add hl,hl		;06d0
	rlca			;06d1
	add hl,hl		;06d2
	rlca			;06d3
	add hl,hl		;06d4
	rlca			;06d5
	add hl,hl		;06d6
	rlca			;06d7
	add hl,hl		;06d8
	rlca			;06d9
	dec bc			;06da
	rrca			;06db
	inc de			;06dc
	rrca			;06dd
	dec de			;06de
	rrca			;06df
	add hl,hl		;06e0
	rlca			;06e1
	add hl,hl		;06e2
l06e3h:
	rlca			;06e3
	add hl,hl		;06e4
	rlca			;06e5
	add hl,hl		;06e6
	rlca			;06e7
	add hl,hl		;06e8
	rlca			;06e9
	add hl,hl		;06ea
	rlca			;06eb
	add hl,hl		;06ec
	rlca			;06ed
	ld e,(hl)		;06ee
	rrca			;06ef
	ld (hl),d		;06f0
	rrca			;06f1
	add hl,hl		;06f2
	rlca			;06f3
	add hl,hl		;06f4
	rlca			;06f5
l06f6h:
	add hl,hl		;06f6
	rlca			;06f7
	cpl			;06f8
	rrca			;06f9
	add hl,hl		;06fa
	rlca			;06fb
	add hl,hl		;06fc
	rlca			;06fd
	dec b			;06fe
	djnz l077fh		;06ff
	djnz l072ch		;0701
	rlca			;0703
	nop			;0704
	dec b			;0705
l0706h:
	add hl,hl		;0706
	rlca			;0707
	add hl,hl		;0708
	rlca			;0709
	ld a,c			;070a
	rrca			;070b
	add hl,hl		;070c
	rlca			;070d
l070eh:
	add hl,hl		;070e
	rlca			;070f
	xor (hl)		;0710
	ex af,af'		;0711
	ld bc,l2d09h		;0712
	add hl,bc		;0715
l0716h:
	nop			;0716
l0717h:
	pop af			;0717
l0718h:
	jp p,0f4f3h		;0718
	or c			;071b
	ret nz			;071c
	pop bc			;071d
	jp nz,0d1d0h		;071e
	jp nc,0e2e1h		;0721
	ex (sp),hl		;0724
	call po,0c3d3h		;0725
	or d			;0728
sub_0729h:
	call sub_074ch		;0729
l072ch:
	ld (l079ah),hl		;072c
	pop hl			;072f
	push hl			;0730
	ld a,h			;0731
	call sub_074ch		;0732
	ld (007a0h),hl		;0735
	pop hl			;0738
	ld a,l			;0739
	call sub_074ch		;073a
	ld (l07a2h),hl		;073d
	ld hl,l077ch		;0740
	call sub_0764h		;0743
	call sub_1440h		;0746
	jp l0f2fh		;0749
sub_074ch:
	push af			;074c
	rra			;074d
	rra			;074e
	rra			;074f
	rra			;0750
	call sub_075bh		;0751
	ld l,a			;0754
	pop af			;0755
	call sub_075bh		;0756
sub_0759h:
	ld h,a			;0759
sub_075ah:
	ret			;075a
sub_075bh:
	and 00fh		;075b
	add a,090h		;075d
	daa			;075f
	adc a,040h		;0760
	daa			;0762
	ret			;0763
sub_0764h:
	ld c,(hl)		;0764
	inc hl			;0765
	push hl			;0766
	call sub_0e83h		;0767
	pop hl			;076a
	ld a,(hl)		;076b
	cp 024h			;076c
	jr nz,sub_0764h		;076e
	ret			;0770
sub_0771h:
	ld c,00dh		;0771
	call sub_0e83h		;0773
	ld c,00ah		;0776
	call sub_0e83h		;0778
	ret			;077b
l077ch:
	dec c			;077c
	ld a,(bc)		;077d
	dec c			;077e
l077fh:
	ld a,(bc)		;077f
l0780h:
	ld hl,(l2a2ah)		;0780
	jr nz,$+75		;0783
	ld c,(hl)		;0785
	ld d,(hl)		;0786
	ld b,c			;0787
	ld c,h			;0788
	ld c,c			;0789
	ld b,h			;078a
	jr nz,$+58		;078b
	jr nc,l07c7h		;078d
	jr c,l07b1h		;078f
	ld d,d			;0791
	ld b,l			;0792
	ld d,c			;0793
	ld d,l			;0794
	ld b,l			;0795
	ld d,e			;0796
	ld d,h			;0797
	jr nz,$+37		;0798
l079ah:
	ld e,b			;079a
	ld e,b			;079b
	jr nz,l07dfh		;079c
	ld d,h			;079e
	jr nz,l07f9h		;079f
	ld e,b			;07a1
l07a2h:
	ld e,b			;07a2
	ld e,b			;07a3
l07a4h:
	inc l			;07a4
	jr nz,l07f7h		;07a5
	ld d,d			;07a7
	ld b,l			;07a8
	ld d,e			;07a9
	ld d,e			;07aa
	jr nz,l07eeh		;07ab
	ld c,(hl)		;07ad
	ld e,c			;07ae
	jr nz,$+77		;07af
l07b1h:
	ld b,l			;07b1
	ld e,c			;07b2
	jr nz,l0809h		;07b3
	ld c,a			;07b5
	jr nz,l07f9h		;07b6
	ld b,d			;07b8
	ld c,a			;07b9
	ld d,d			;07ba
	ld d,h			;07bb
	jr nz,l07e8h		;07bc
	ld hl,(l242ah)		;07be
sub_07c1h:
	pop hl			;07c1
	push hl			;07c2
	ld a,h			;07c3
	call sub_074ch		;07c4
l07c7h:
	ld (0080fh),hl		;07c7
	pop hl			;07ca
	ld a,l			;07cb
	call sub_074ch		;07cc
	ld (l0811h),hl		;07cf
	ld de,l07ddh		;07d2
	ld c,009h		;07d5
	call 00005h		;07d7
	jp 00000h		;07da
l07ddh:
	dec c			;07dd
	ld a,(bc)		;07de
l07dfh:
	dec c			;07df
	ld a,(bc)		;07e0
	ld hl,(l2a2ah)		;07e1
	jr nz,$+58		;07e4
	jr nc,$+58		;07e6
l07e8h:
	jr c,l080ah		;07e8
	ld b,h			;07ea
	ld c,a			;07eb
	ld b,l			;07ec
	ld d,e			;07ed
l07eeh:
	jr nz,l083eh		;07ee
	ld c,a			;07f0
	ld d,h			;07f1
	jr nz,l0846h		;07f2
	ld b,l			;07f4
	ld d,e			;07f5
	ld d,b			;07f6
l07f7h:
	ld c,a			;07f7
	ld c,(hl)		;07f8
l07f9h:
	ld b,h			;07f9
	inc l			;07fa
	jr nz,l084dh		;07fb
	ld d,d			;07fd
	ld c,a			;07fe
	ld b,a			;07ff
l0800h:
	ld d,d			;0800
	ld b,c			;0801
	ld c,l			;0802
	jr nz,l0846h		;0803
	ld b,d			;0805
	ld c,a			;0806
	ld d,d			;0807
	ld d,h			;0808
l0809h:
	ld b,l			;0809
l080ah:
	ld b,h			;080a
	jr nz,l084eh		;080b
	ld d,h			;080d
	jr nz,l0868h		;080e
	ld e,b			;0810
l0811h:
	ld e,b			;0811
	ld e,b			;0812
	jr nz,$+44		;0813
	ld hl,(l0d2ah)		;0815
	ld a,(bc)		;0818
	dec c			;0819
	ld a,(bc)		;081a
	inc h			;081b
sub_081ch:
	ld hl,l0837h		;081c
	call sub_0764h		;081f
	call sub_1440h		;0822
	cp 052h			;0825
	jr z,l082eh		;0827
	cp 072h			;0829
	jp nz,l0f2fh		;082b
l082eh:
	call sub_0771h		;082e
	call sub_0771h		;0831
	xor a			;0834
	inc a			;0835
	ret			;0836
l0837h:
	dec c			;0837
	ld a,(bc)		;0838
	dec c			;0839
	ld a,(bc)		;083a
	ld hl,(l2a2ah)		;083b
l083eh:
	jr nz,$+58		;083e
	jr nc,l087ah		;0840
	jr c,l0864h		;0842
	ld d,e			;0844
	ld e,c			;0845
l0846h:
	ld c,(hl)		;0846
	ld b,e			;0847
	jr nz,l088fh		;0848
	ld d,d			;084a
	ld d,d			;084b
	ld c,a			;084c
l084dh:
	ld d,d			;084d
l084eh:
	inc l			;084e
	jr nz,l08a1h		;084f
	ld d,d			;0851
	ld b,l			;0852
	ld d,e			;0853
	ld d,e			;0854
	jr nz,$+36		;0855
	ld d,d			;0857
	ld (l5420h),hl		;0858
	ld c,a			;085b
	jr nz,$+84		;085c
	ld b,l			;085e
	ld d,h			;085f
	ld d,d			;0860
	ld e,c			;0861
	jr nz,$+81		;0862
l0864h:
	ld d,d			;0864
	jr nz,l08ach		;0865
	ld c,h			;0867
l0868h:
	ld d,e			;0868
	ld b,l			;0869
	jr nz,l08adh		;086a
	ld b,d			;086c
	ld c,a			;086d
	ld d,d			;086e
	ld d,h			;086f
	jr nz,$+44		;0870
	ld hl,(l242ah)		;0872
l0875h:
	ret			;0875
	ld ix,l155ch		;0876
l087ah:
	call sub_089bh		;087a
	ld b,(ix+000h)		;087d
	call sub_089bh		;0880
	inc b			;0883
	dec b			;0884
	jr z,l088ch		;0885
l0887h:
	call sub_089bh		;0887
	djnz l0887h		;088a
l088ch:
	ld a,(l155ch)		;088c
l088fh:
	ld d,000h		;088f
	ld e,a			;0891
	ld hl,00240h		;0892
	add hl,de		;0895
	inc (hl)		;0896
	ret nz			;0897
	ld (hl),0ffh		;0898
	ret			;089a
sub_089bh:
	ld hl,l08adh		;089b
	ld d,000h		;089e
	ld e,(hl)		;08a0
l08a1h:
	inc (hl)		;08a1
	ld hl,l0140h		;08a2
	add hl,de		;08a5
	ld a,(ix+000h)		;08a6
	inc ix			;08a9
	ld (hl),a		;08ab
l08ach:
	ret			;08ac
l08adh:
	nop			;08ad
	ld hl,(l08b2h)		;08ae
	jp (hl)			;08b1
l08b2h:
	call 0cd08h		;08b2
	adc a,00ah		;08b5
	jr nz,l08c7h		;08b7
	ld a,020h		;08b9
	ld (l155ch),a		;08bb
	ld a,080h		;08be
	ld (l155dh),a		;08c0
	call sub_134bh		;08c3
	ret			;08c6
l08c7h:
	ld hl,l08cdh		;08c7
	ld (l08b2h),hl		;08ca
l08cdh:
	ld a,020h		;08cd
	ld (l155ch),a		;08cf
	xor a			;08d2
	ld (l155dh),a		;08d3
	call sub_134bh		;08d6
	ret			;08d9
l08dah:
	ld hl,(l0b9bh)		;08da
	ld a,h			;08dd
	or l			;08de
	jr z,l08c7h		;08df
	dec hl			;08e1
	ld (l0b9bh),hl		;08e2
	ld hl,(l0b99h)		;08e5
	ld de,l155eh		;08e8
	ld bc,00010h		;08eb
	ldir			;08ee
	ld (l0b99h),hl		;08f0
	ld a,020h		;08f3
	ld (l155ch),a		;08f5
	ld a,010h		;08f8
	ld (l155dh),a		;08fa
	call sub_134bh		;08fd
	ret			;0900
	ld hl,(l0905h)		;0901
	jp (hl)			;0904
l0905h:
	jr nz,$+11		;0905
l0907h:
	call sub_0b2ah		;0907
	jr nz,l091ah		;090a
	ld a,021h		;090c
	ld (l155ch),a		;090e
	ld a,001h		;0911
	ld (l155dh),a		;0913
	call sub_134bh		;0916
	ret			;0919
l091ah:
	ld hl,l0920h		;091a
	ld (l0905h),hl		;091d
l0920h:
	ld a,021h		;0920
	ld (l155ch),a		;0922
	xor a			;0925
	ld (l155dh),a		;0926
	call sub_134bh		;0929
	ret			;092c
	ld hl,l155ch		;092d
	ld (hl),022h		;0930
	inc hl			;0932
	ld b,(hl)		;0933
	inc hl			;0934
	ld a,(hl)		;0935
	inc hl			;0936
	cp 00eh			;0937
	jp z,l0abch		;0939
	cp 00fh			;093c
	jp z,l09c0h		;093e
	cp 010h			;0941
	jp z,l09eah		;0943
	cp 011h			;0946
	jp z,l0962h		;0948
	cp 012h			;094b
	jp z,l0a15h		;094d
	cp 013h			;0950
	jp z,l0962h		;0952
	cp 016h			;0955
	jp z,l09d5h		;0957
	xor a			;095a
	ld (l155dh),a		;095b
	call sub_134bh		;095e
	ret			;0961
l0962h:
	push af			;0962
	call sub_0aa9h		;0963
	ld c,020h		;0966
	ld e,0ffh		;0968
	call 00005h		;096a
	ld (l0b9eh),a		;096d
	ld hl,l0b75h		;0970
	ld a,(hl)		;0973
	rra			;0974
l0975h:
	rra			;0975
l0976h:
	rra			;0976
	rra			;0977
	and 00fh		;0978
	ld e,a			;097a
	ld a,(hl)		;097b
	and 00fh		;097c
	ld (hl),a		;097e
	ld c,020h		;097f
	call 00005h		;0981
	pop af			;0984
	ld c,a			;0985
	ld de,l0b75h		;0986
	cp 011h			;0989
	jr nz,l0996h		;098b
	call 00005h		;098d
	push af			;0990
	call sub_134bh		;0991
	pop af			;0994
	ret			;0995
l0996h:
	call 00005h		;0996
	cp 0ffh			;0999
	push af			;099b
	jr nz,l09a2h		;099c
	xor a			;099e
	ld (l155dh),a		;099f
l09a2h:
	call sub_134bh		;09a2
	call sub_09aah		;09a5
	pop af			;09a8
	ret			;09a9
sub_09aah:
	push af			;09aa
	ld a,(l0b9eh)		;09ab
	ld e,a			;09ae
	ld c,020h		;09af
	call 00005h		;09b1
	pop af			;09b4
	ret			;09b5
sub_09b6h:
	ld a,(l0b9fh)		;09b6
	ld e,a			;09b9
	ld c,020h		;09ba
	call 00005h		;09bc
	ret			;09bf
l09c0h:
	call l0962h		;09c0
	ret z			;09c3
	ld hl,l08b2h+2		;09c4
	ld (l08b2h),hl		;09c7
	xor a			;09ca
	ld (l0b9dh),a		;09cb
	ld hl,00000h		;09ce
	ld (l0b9bh),hl		;09d1
	ret			;09d4
l09d5h:
	call l0962h		;09d5
	ret z			;09d8
	ld hl,l0907h		;09d9
	ld (l0905h),hl		;09dc
	xor a			;09df
	ld (l0ba2h),a		;09e0
	ld hl,04361h		;09e3
	ld (l0ba0h),hl		;09e6
	ret			;09e9
l09eah:
	ld hl,l0920h		;09ea
	ld (l0905h),hl		;09ed
	ld a,(l0ba2h)		;09f0
	or a			;09f3
	jr z,l09fbh		;09f4
	call sub_0b47h		;09f6
	jr nz,l0a0dh		;09f9
l09fbh:
	call sub_09b6h		;09fb
	ld de,l0b75h		;09fe
	ld c,010h		;0a01
	call 00005h		;0a03
	call sub_09aah		;0a06
	cp 0ffh			;0a09
	jr nz,l0a11h		;0a0b
l0a0dh:
	xor a			;0a0d
	ld (l155dh),a		;0a0e
l0a11h:
	call sub_134bh		;0a11
	ret			;0a14
l0a15h:
	push hl			;0a15
	ld de,00080h		;0a16
	ld c,01ah		;0a19
	call 00005h		;0a1b
	pop hl			;0a1e
	ld a,011h		;0a1f
	call l0962h		;0a21
	ld hl,l08dah		;0a24
	ld (l08b2h),hl		;0a27
	ld hl,00000h		;0a2a
	ld (l0b9bh),hl		;0a2d
	ld de,04361h		;0a30
	ld (l0b99h),de		;0a33
	cp 0ffh			;0a37
	jr z,l0a67h		;0a39
	call sub_0a6bh		;0a3b
l0a3eh:
	push de			;0a3e
	ld c,012h		;0a3f
	call 00005h		;0a41
	pop de			;0a44
	cp 0ffh			;0a45
	jr z,l0a4eh		;0a47
	call sub_0a6bh		;0a49
	jr l0a3eh		;0a4c
l0a4eh:
	ld ix,04361h		;0a4e
	ld bc,(l0b9bh)		;0a52
l0a56h:
	ld a,(ix+00ch)		;0a56
	or a			;0a59
	call nz,sub_0a84h	;0a5a
	ld de,00010h		;0a5d
	add ix,de		;0a60
	dec bc			;0a62
	ld a,b			;0a63
	or c			;0a64
	jr nz,l0a56h		;0a65
l0a67h:
	call sub_09aah		;0a67
	ret			;0a6a
sub_0a6bh:
	add a,a			;0a6b
	add a,a			;0a6c
	add a,a			;0a6d
	add a,a			;0a6e
	add a,a			;0a6f
	ld b,000h		;0a70
	ld c,a			;0a72
	ld hl,00080h		;0a73
	add hl,bc		;0a76
	ld bc,00010h		;0a77
	ldir			;0a7a
	ld hl,(l0b9bh)		;0a7c
	inc hl			;0a7f
	ld (l0b9bh),hl		;0a80
	ret			;0a83
sub_0a84h:
	push ix			;0a84
	pop hl			;0a86
	push hl			;0a87
	push bc			;0a88
	ld a,(l0b75h)		;0a89
	push af			;0a8c
	call sub_0aa9h		;0a8d
	pop af			;0a90
	ld (l0b75h),a		;0a91
	ld c,023h		;0a94
	ld de,l0b75h		;0a96
	call 00005h		;0a99
	pop bc			;0a9c
	pop ix			;0a9d
	ld hl,(l0b96h)		;0a9f
	ld (ix+00eh),h		;0aa2
	ld (ix+00fh),l		;0aa5
	ret			;0aa8
sub_0aa9h:
	ld de,l0b75h		;0aa9
	ld bc,0000ch		;0aac
	ldir			;0aaf
	ld h,d			;0ab1
	ld l,e			;0ab2
	inc de			;0ab3
	ld (hl),000h		;0ab4
	ld bc,00017h		;0ab6
	ldir			;0ab9
	ret			;0abb
l0abch:
	call sub_134bh		;0abc
	ld c,00dh		;0abf
	call 00005h		;0ac1
	ld a,(l155fh)		;0ac4
	ld e,a			;0ac7
	ld c,00eh		;0ac8
	call 00005h		;0aca
	ret			;0acd
	ld hl,(l0b9bh)		;0ace
	ld a,h			;0ad1
	or l			;0ad2
	jr nz,l0b13h		;0ad3
	ld a,(l0b9dh)		;0ad5
	or a			;0ad8
	ret nz			;0ad9
	ld hl,04361h		;0ada
	ld (l0b99h),hl		;0add
	ld b,0e4h		;0ae0
l0ae2h:
	push hl			;0ae2
	push bc			;0ae3
l0ae4h:
	ex de,hl		;0ae4
	ld c,01ah		;0ae5
	call 00005h		;0ae7
	call sub_09b6h		;0aea
	ld de,l0b75h		;0aed
	ld c,014h		;0af0
	call 00005h		;0af2
	call sub_09aah		;0af5
	pop bc			;0af8
	pop de			;0af9
	ld (l0b9dh),a		;0afa
	ld hl,(l0b9bh)		;0afd
l0b00h:
	or a			;0b00
	jr z,l0b09h		;0b01
	ld a,h			;0b03
	or l			;0b04
	jr nz,l0b13h		;0b05
	dec a			;0b07
	ret			;0b08
l0b09h:
	inc hl			;0b09
	ld (l0b9bh),hl		;0b0a
	ld hl,00080h		;0b0d
	add hl,de		;0b10
	djnz l0ae2h		;0b11
l0b13h:
	ld hl,(l0b99h)		;0b13
	ld de,l155eh		;0b16
	ld bc,00080h		;0b19
	ldir			;0b1c
	ld (l0b99h),hl		;0b1e
	ld hl,(l0b9bh)		;0b21
	dec hl			;0b24
	ld (l0b9bh),hl		;0b25
	xor a			;0b28
	ret			;0b29
sub_0b2ah:
	ld hl,l155eh		;0b2a
	ld de,(l0ba0h)		;0b2d
	ld bc,00080h		;0b31
	ldir			;0b34
	ld (l0ba0h),de		;0b36
	ld a,(l0ba2h)		;0b3a
	inc a			;0b3d
	ld (l0ba2h),a		;0b3e
	cp 0e4h			;0b41
	jr nc,sub_0b47h		;0b43
	xor a			;0b45
	ret			;0b46
sub_0b47h:
	ld hl,l0ba2h		;0b47
	ld b,(hl)		;0b4a
	ld (hl),000h		;0b4b
	ld hl,04361h		;0b4d
	ld (l0ba0h),hl		;0b50
l0b53h:
	push hl			;0b53
	push bc			;0b54
	ex de,hl		;0b55
	ld c,01ah		;0b56
	call 00005h		;0b58
	call sub_09b6h		;0b5b
	ld de,l0b75h		;0b5e
	ld c,015h		;0b61
	call 00005h		;0b63
	call sub_09aah		;0b66
	pop bc			;0b69
	pop hl			;0b6a
	or a			;0b6b
	ret nz			;0b6c
	ld de,00080h		;0b6d
	add hl,de		;0b70
	djnz l0b53h		;0b71
	xor a			;0b73
	ret			;0b74
l0b75h:
	nop			;0b75
	nop			;0b76
	nop			;0b77
	nop			;0b78
	nop			;0b79
	nop			;0b7a
	nop			;0b7b
	nop			;0b7c
	nop			;0b7d
	nop			;0b7e
	nop			;0b7f
	nop			;0b80
	nop			;0b81
	nop			;0b82
	nop			;0b83
	nop			;0b84
	nop			;0b85
	nop			;0b86
	nop			;0b87
	nop			;0b88
	nop			;0b89
	nop			;0b8a
	nop			;0b8b
	nop			;0b8c
	nop			;0b8d
	nop			;0b8e
	nop			;0b8f
	nop			;0b90
	nop			;0b91
	nop			;0b92
	nop			;0b93
	nop			;0b94
	nop			;0b95
l0b96h:
	nop			;0b96
	nop			;0b97
	nop			;0b98
l0b99h:
	nop			;0b99
	nop			;0b9a
l0b9bh:
	nop			;0b9b
	nop			;0b9c
l0b9dh:
	nop			;0b9d
l0b9eh:
	nop			;0b9e
l0b9fh:
	nop			;0b9f
l0ba0h:
	nop			;0ba0
	nop			;0ba1
l0ba2h:
	nop			;0ba2
sub_0ba3h:
	call sub_2111h		;0ba3
	ret			;0ba6
l0ba7h:
	ld (bc),a		;0ba7
	inc c			;0ba8
	ld e,b			;0ba9
	inc c			;0baa
	ld e,l			;0bab
	inc c			;0bac
	ld h,d			;0bad
	inc c			;0bae
	ld h,a			;0baf
	inc c			;0bb0
	ld a,d			;0bb1
	inc c			;0bb2
	sub e			;0bb3
	inc c			;0bb4
	sbc a,d			;0bb5
	inc c			;0bb6
	and c			;0bb7
	inc c			;0bb8
	xor b			;0bb9
	inc c			;0bba
	xor a			;0bbb
	inc c			;0bbc
	call nz,0e60ch		;0bbd
	inc c			;0bc0
	and 00ch		;0bc1
	or (hl)			;0bc3
	inc c			;0bc4
	cp l			;0bc5
	inc c			;0bc6
l0bc7h:
	ld (bc),a		;0bc7
	inc c			;0bc8
	rst 20h			;0bc9
	inc c			;0bca
	pop af			;0bcb
	inc c			;0bcc
	ld sp,hl		;0bcd
	inc c			;0bce
	ld bc,l2a0dh		;0bcf
	dec c			;0bd2
	ccf			;0bd3
	dec c			;0bd4
	ld (hl),b		;0bd5
	dec c			;0bd6
	sub 00dh		;0bd7
	jp m,0000dh		;0bd9
	ld c,046h		;0bdc
	ld c,062h		;0bde
	ld c,071h		;0be0
	ld c,006h		;0be2
	ld c,012h		;0be4
	ld c,016h		;0be6
	nop			;0be8
	ld e,a			;0be9
	add hl,de		;0bea
	add hl,de		;0beb
	ld e,(hl)		;0bec
	inc hl			;0bed
	ld d,(hl)		;0bee
	ex de,hl		;0bef
	jp (hl)			;0bf0
sub_0bf1h:
	ld a,(l0103h)		;0bf1
	ld c,a			;0bf4
	in a,(c)		;0bf5
	bit 7,a			;0bf7
	jr z,sub_0bf1h		;0bf9
	ld a,(l0104h)		;0bfb
	ld c,a			;0bfe
	in a,(c)		;0bff
	ret			;0c01
	call sub_0bf1h		;0c02
	or a			;0c05
	jr z,l0c2fh		;0c06
	dec a			;0c08
	jr z,l0c1eh		;0c09
	dec a			;0c0b
	ret nz			;0c0c
	ld hl,l0e87h		;0c0d
	ld (l0c54h),hl		;0c10
	ld hl,l0bc7h		;0c13
	ld (l0c56h),hl		;0c16
	ld hl,l0eedh		;0c19
	jr l0c3eh		;0c1c
l0c1eh:
	ld hl,l0ee1h		;0c1e
	ld (l0c54h),hl		;0c21
	ld hl,l0bc7h		;0c24
	ld (l0c56h),hl		;0c27
	ld hl,l0eedh		;0c2a
	jr l0c3eh		;0c2d
l0c2fh:
	ld hl,l1443h		;0c2f
	ld (l0c54h),hl		;0c32
	ld hl,l0ba7h		;0c35
	ld (l0c56h),hl		;0c38
	ld hl,sub_0729h		;0c3b
l0c3eh:
	ld (00702h),hl		;0c3e
	ld a,006h		;0c41
	ld hl,(l0c56h)		;0c43
	call 00be7h		;0c46
	ld bc,l320ah		;0c49
l0c4ch:
	push bc			;0c4c
	call sub_0e83h		;0c4d
	pop bc			;0c50
	djnz l0c4ch		;0c51
	ret			;0c53
l0c54h:
	ld b,e			;0c54
	inc d			;0c55
l0c56h:
	and a			;0c56
	dec bc			;0c57
	ld hl,l0109h		;0c58
	jr l0c6ah		;0c5b
	ld hl,l010dh		;0c5d
	jr l0c6ah		;0c60
	ld hl,l0111h		;0c62
	jr l0c6ah		;0c65
	ld hl,l0115h		;0c67
l0c6ah:
	push hl			;0c6a
	call sub_0bf1h		;0c6b
	pop hl			;0c6e
	ld b,a			;0c6f
l0c70h:
	push hl			;0c70
	push bc			;0c71
sub_0c72h:
	call sub_0cd5h		;0c72
	pop bc			;0c75
	pop hl			;0c76
	djnz l0c70h		;0c77
	ret			;0c79
	ld hl,l0119h		;0c7a
	call sub_0cd5h		;0c7d
	call sub_0bf1h		;0c80
	add a,020h		;0c83
	ld c,a			;0c85
	call sub_0e83h		;0c86
	call sub_0bf1h		;0c89
	add a,020h		;0c8c
	ld c,a			;0c8e
	call sub_0e83h		;0c8f
	ret			;0c92
	ld hl,l011dh		;0c93
	call sub_0cd5h		;0c96
	ret			;0c99
	ld hl,l0121h		;0c9a
	call sub_0cd5h		;0c9d
	ret			;0ca0
	ld hl,l0125h		;0ca1
	call sub_0cd5h		;0ca4
	ret			;0ca7
	ld hl,l0129h		;0ca8
	call sub_0cd5h		;0cab
	ret			;0cae
	ld hl,l012dh		;0caf
	call sub_0cd5h		;0cb2
	ret			;0cb5
	ld hl,l0131h		;0cb6
	call sub_0cd5h		;0cb9
	ret			;0cbc
	ld hl,l0135h		;0cbd
	call sub_0cd5h		;0cc0
	ret			;0cc3
	ld hl,l0119h		;0cc4
	call sub_0cd5h		;0cc7
	ld c,020h		;0cca
	call sub_0e83h		;0ccc
	ld c,020h		;0ccf
	call sub_0e83h		;0cd1
	ret			;0cd4
sub_0cd5h:
	ld b,004h		;0cd5
l0cd7h:
	ld a,(hl)		;0cd7
	inc hl			;0cd8
	or a			;0cd9
	ret z			;0cda
	ld c,a			;0cdb
	push hl			;0cdc
	push bc			;0cdd
	call sub_0e83h		;0cde
	pop bc			;0ce1
	pop hl			;0ce2
	djnz l0cd7h		;0ce3
	ret			;0ce5
	ret			;0ce6
	call sub_0bf1h		;0ce7
	neg			;0cea
	ld b,a			;0cec
	ld c,000h		;0ced
	jr l0d09h		;0cef
	call sub_0bf1h		;0cf1
	ld b,a			;0cf4
	ld c,000h		;0cf5
	jr l0d09h		;0cf7
	call sub_0bf1h		;0cf9
	ld b,000h		;0cfc
	ld c,a			;0cfe
	jr l0d09h		;0cff
l0d01h:
	call sub_0bf1h		;0d01
	ld b,000h		;0d04
	neg			;0d06
	ld c,a			;0d08
l0d09h:
	push bc			;0d09
	ld a,003h		;0d0a
	ld (l155fh),a		;0d0c
	call sub_1966h		;0d0f
	pop bc			;0d12
	ld a,(l1565h)		;0d13
	add a,b			;0d16
	ld (l1565h),a		;0d17
	ld a,(l1564h)		;0d1a
	add a,c			;0d1d
	ld (l1564h),a		;0d1e
	ld a,002h		;0d21
	ld (l155fh),a		;0d23
	call sub_1966h		;0d26
	ret			;0d29
l0d2ah:
	call sub_0bf1h		;0d2a
	ld (l1565h),a		;0d2d
	call sub_0bf1h		;0d30
	ld (l1564h),a		;0d33
	ld a,002h		;0d36
	ld (l155fh),a		;0d38
	call sub_1966h		;0d3b
	ret			;0d3e
	ld hl,l0200h		;0d3f
	ld (l155eh),hl		;0d42
	ld hl,00000h		;0d45
	ld (l1560h),hl		;0d48
	ld hl,00000h		;0d4b
	ld (l1562h),hl		;0d4e
	ld hl,00000h		;0d51
	ld (l1564h),hl		;0d54
	call sub_1966h		;0d57
	ld hl,l0920h		;0d5a
	ld (l155eh),hl		;0d5d
	ld hl,00007h		;0d60
	ld (l1560h),hl		;0d63
	ld hl,007d0h		;0d66
	ld (l1562h),hl		;0d69
	call sub_1966h		;0d6c
	ret			;0d6f
	ld a,003h		;0d70
	ld (l155fh),a		;0d72
	call sub_1966h		;0d75
	ld a,(l1565h)		;0d78
	ld d,000h		;0d7b
	ld e,a			;0d7d
	ld hl,l1564h		;0d7e
	ld a,050h		;0d81
	sub (hl)		;0d83
	ld hl,l0da4h		;0d84
	add hl,de		;0d87
	add hl,de		;0d88
	add a,(hl)		;0d89
	ld (l1562h),a		;0d8a
	inc hl			;0d8d
	ld a,000h		;0d8e
	adc a,(hl)		;0d90
	ld (l1563h),a		;0d91
	ld hl,l0920h		;0d94
	ld (l155eh),hl		;0d97
	ld hl,00007h		;0d9a
	ld (l1560h),hl		;0d9d
	call sub_1966h		;0da0
	ret			;0da3
l0da4h:
	add a,b			;0da4
	rlca			;0da5
	jr nc,l0dafh		;0da6
	ret po			;0da8
	ld b,090h		;0da9
	ld b,040h		;0dab
	ld b,0f0h		;0dad
l0dafh:
	dec b			;0daf
l0db0h:
	and b			;0db0
	dec b			;0db1
	ld d,b			;0db2
	dec b			;0db3
	nop			;0db4
	dec b			;0db5
	or b			;0db6
	inc b			;0db7
	ld h,b			;0db8
	inc b			;0db9
	djnz l0dc0h		;0dba
	ret nz			;0dbc
	inc bc			;0dbd
	ld (hl),b		;0dbe
	inc bc			;0dbf
l0dc0h:
	jr nz,l0dc5h		;0dc0
	ret nc			;0dc2
	ld (bc),a		;0dc3
	add a,b			;0dc4
l0dc5h:
	ld (bc),a		;0dc5
	jr nc,$+4		;0dc6
	ret po			;0dc8
	ld bc,l0190h		;0dc9
	ld b,b			;0dcc
	ld bc,000f0h		;0dcd
	and b			;0dd0
	nop			;0dd1
	ld d,b			;0dd2
	nop			;0dd3
	nop			;0dd4
	nop			;0dd5
	ld a,003h		;0dd6
	ld (l155fh),a		;0dd8
	call sub_1966h		;0ddb
	ld hl,l1564h		;0dde
	ld a,050h		;0de1
	sub (hl)		;0de3
	ld h,000h		;0de4
	ld l,a			;0de6
	ld (l1562h),hl		;0de7
	ld hl,l0920h		;0dea
	ld (l155eh),hl		;0ded
	ld hl,00007h		;0df0
	ld (l1560h),hl		;0df3
	call sub_1966h		;0df6
	ret			;0df9
	ld a,070h		;0dfa
	ld (l0e82h),a		;0dfc
	ret			;0dff
	ld a,007h		;0e00
	ld (l0e82h),a		;0e02
	ret			;0e05
	call sub_0e1eh		;0e06
	ld a,007h		;0e09
	ld (l155fh),a		;0e0b
	call sub_1966h		;0e0e
	ret			;0e11
	call sub_0e1eh		;0e12
	ld a,006h		;0e15
	ld (l155fh),a		;0e17
	call sub_1966h		;0e1a
	ret			;0e1d
sub_0e1eh:
	ld a,003h		;0e1e
	ld (l155fh),a		;0e20
	call sub_1966h		;0e23
	ld a,(l1565h)		;0e26
	ld (l1563h),a		;0e29
	ld a,000h		;0e2c
	ld (l1562h),a		;0e2e
	ld a,018h		;0e31
	ld (l1565h),a		;0e33
	ld a,04fh		;0e36
	ld (l1564h),a		;0e38
l0e3bh:
	ld a,001h		;0e3b
	ld (l155eh),a		;0e3d
	ld a,007h		;0e40
	ld (l1561h),a		;0e42
	ret			;0e45
	ld hl,l0200h		;0e46
	ld (l155eh),hl		;0e49
	ld hl,00000h		;0e4c
	ld (l1560h),hl		;0e4f
	ld hl,00000h		;0e52
	ld (l1562h),hl		;0e55
	ld hl,00000h		;0e58
	ld (l1564h),hl		;0e5b
	call sub_1966h		;0e5e
	ret			;0e61
	ld a,003h		;0e62
	ld (l155fh),a		;0e64
	call sub_1966h		;0e67
	ld hl,(l1564h)		;0e6a
	ld (l0e80h),hl		;0e6d
	ret			;0e70
	ld hl,(l0e80h)		;0e71
	ld (l1564h),hl		;0e74
	ld a,002h		;0e77
	ld (l155fh),a		;0e79
	call sub_1966h		;0e7c
	ret			;0e7f
l0e80h:
	nop			;0e80
	nop			;0e81
l0e82h:
	rlca			;0e82
sub_0e83h:
	ld hl,(l0c54h)		;0e83
	jp (hl)			;0e86
l0e87h:
	ld a,c			;0e87
l0e88h:
	cp 020h			;0e88
l0e8ah:
	jr nc,l0e9ch		;0e8a
	cp 007h			;0e8c
	jr z,l0ee1h		;0e8e
	cp 008h			;0e90
	jr z,l0ee1h		;0e92
	cp 00ah			;0e94
	jr z,l0ee1h		;0e96
	cp 00dh			;0e98
	jr z,l0ee1h		;0e9a
l0e9ch:
	ld h,009h		;0e9c
	ld l,c			;0e9e
	ld (l155eh),hl		;0e9f
	ld a,(l0e82h)		;0ea2
	ld h,000h		;0ea5
	ld l,a			;0ea7
	ld (l1560h),hl		;0ea8
	ld l,001h		;0eab
	ld (l1562h),hl		;0ead
	call sub_1966h		;0eb0
	ld a,003h		;0eb3
	ld (l155fh),a		;0eb5
	call sub_1966h		;0eb8
	ld a,(l1564h)		;0ebb
	inc a			;0ebe
	cp 050h			;0ebf
	jr nc,l0ecfh		;0ec1
	ld (l1564h),a		;0ec3
	ld a,002h		;0ec6
	ld (l155fh),a		;0ec8
	call sub_1966h		;0ecb
	ret			;0ece
l0ecfh:
	ld hl,00e0dh		;0ecf
	ld (l155eh),hl		;0ed2
	call sub_1966h		;0ed5
	ld a,00ah		;0ed8
	ld (l155eh),a		;0eda
	call sub_1966h		;0edd
	ret			;0ee0
l0ee1h:
	ld hl,l155eh		;0ee1
	ld (hl),c		;0ee4
	ld a,00eh		;0ee5
	inc hl			;0ee7
	ld (hl),a		;0ee8
	call sub_1966h		;0ee9
	ret			;0eec
l0eedh:
	ld a,(l155fh)		;0eed
	cp 003h			;0ef0
	jr z,l0f04h		;0ef2
	cp 008h			;0ef4
	jr z,l0f04h		;0ef6
	cp 00fh			;0ef8
	jr z,l0f04h		;0efa
	cp 018h			;0efc
	jr z,l0f04h		;0efe
	call sub_1966h		;0f00
	ret			;0f03
l0f04h:
	call sub_1966h		;0f04
	call sub_134bh		;0f07
	ret			;0f0a
	ld a,(l155eh)		;0f0b
	ld c,a			;0f0e
	call sub_1446h		;0f0f
	ret			;0f12
	ld a,(l155eh)		;0f13
	ld c,a			;0f16
	call sub_1449h		;0f17
	ret			;0f1a
	call sub_144ch		;0f1b
	ld (l155eh),a		;0f1e
	ld a,007h		;0f21
	ld (l155ch),a		;0f23
	ld a,001h		;0f26
	ld (l155dh),a		;0f28
	call sub_134bh		;0f2b
	ret			;0f2e
l0f2fh:
	ld c,009h		;0f2f
	ld de,l0f43h		;0f31
	call 00005h		;0f34
	ld c,00dh		;0f37
	call 00005h		;0f39
	xor a			;0f3c
	ld (00004h),a		;0f3d
	jp 00000h		;0f40
l0f43h:
	dec c			;0f43
	ld a,(bc)		;0f44
	ld a,(bc)		;0f45
	ld a,(bc)		;0f46
	ld a,(bc)		;0f47
	ld a,(bc)		;0f48
	ld a,(bc)		;0f49
	ld a,(bc)		;0f4a
	ld a,(bc)		;0f4b
	ld a,(bc)		;0f4c
	ld a,(bc)		;0f4d
	ld a,(bc)		;0f4e
	ld a,(bc)		;0f4f
	ld a,(bc)		;0f50
	ld a,(bc)		;0f51
	ld a,(bc)		;0f52
	ld a,(bc)		;0f53
	ld a,(bc)		;0f54
	ld a,(bc)		;0f55
	ld a,(bc)		;0f56
	ld a,(bc)		;0f57
	ld a,(bc)		;0f58
	ld a,(bc)		;0f59
	ld a,(bc)		;0f5a
	ld a,(bc)		;0f5b
	ld a,(bc)		;0f5c
	inc h			;0f5d
	ld a,00fh		;0f5e
	ld (l155ch),a		;0f60
	ld a,(00003h)		;0f63
	ld (l155eh),a		;0f66
	ld a,001h		;0f69
	ld (l155dh),a		;0f6b
	call sub_134bh		;0f6e
	ret			;0f71
	ld a,(l155eh)		;0f72
	ld (00003h),a		;0f75
	ret			;0f78
	ld a,(l155eh)		;0f79
	cp 001h			;0f7c
	jp z,l1005h		;0f7e
	cp 002h			;0f81
	jp z,l107eh		;0f83
	cp 003h			;0f86
	cp 004h			;0f88
	jp z,l10f1h		;0f8a
	cp 005h			;0f8d
	call nz,sub_0729h	;0f8f
	call sub_0f99h		;0f92
	call sub_134bh		;0f95
	ret			;0f98
sub_0f99h:
	push ix			;0f99
	ld ix,l151dh		;0f9b
	ld a,005h		;0f9f
	ld (ix+000h),a		;0fa1
	ld a,(l155fh)		;0fa4
	ld (l147fh),a		;0fa7
	ld (ix+001h),a		;0faa
	ld (ix+002h),000h	;0fad
	ld (ix+003h),001h	;0fb1
	ld hl,l1526h		;0fb5
	ld (ix+004h),l		;0fb8
	ld (ix+005h),h		;0fbb
	call sub_0ba3h		;0fbe
	ld a,005h		;0fc1
	ld (l155dh),a		;0fc3
	ld a,(l147fh)		;0fc6
	ld e,a			;0fc9
	ld d,000h		;0fca
	ld a,(ix+004h)		;0fcc
	ld (l155eh),a		;0fcf
	ld b,a			;0fd2
	ld a,(ix+005h)		;0fd3
	ld (l155fh),a		;0fd6
	sub b			;0fd9
	inc a			;0fda
	ld a,(l1529h)		;0fdb
	ld hl,l1488h		;0fde
	ld b,a			;0fe1
	or a			;0fe2
	jr z,l0fe9h		;0fe3
l0fe5h:
	inc hl			;0fe5
	inc hl			;0fe6
	djnz l0fe5h		;0fe7
l0fe9h:
	ld c,(hl)		;0fe9
	inc hl			;0fea
	ld b,(hl)		;0feb
	ld hl,l1480h		;0fec
	add hl,de		;0fef
	add hl,de		;0ff0
	ld (hl),c		;0ff1
	inc hl			;0ff2
	ld (hl),b		;0ff3
	ld a,(ix+006h)		;0ff4
	ld a,040h		;0ff7
	ld (l1560h),a		;0ff9
	ld a,(ix+008h)		;0ffc
	ld (l1562h),a		;0fff
	pop ix			;1002
	ret			;1004
l1005h:
	call sub_101fh		;1005
	ld a,017h		;1008
	ld (l155ch),a		;100a
	jr nz,l1018h		;100d
	ld a,080h		;100f
l1011h:
	ld (l155dh),a		;1011
	call sub_134bh		;1014
	ret			;1017
l1018h:
	ld (l155eh),a		;1018
	ld a,001h		;101b
	jr l1011h		;101d
sub_101fh:
	push bc			;101f
	push de			;1020
	push hl			;1021
	push ix			;1022
	ld ix,l151dh		;1024
	ld a,001h		;1028
	ld (ix+000h),a		;102a
	ld a,(l155eh)		;102d
	ld e,a			;1030
	ld d,000h		;1031
	ld (ix+001h),a		;1033
	ld a,(l1563h)		;1036
	and 001h		;1039
	ld a,(l1561h)		;103b
	ld (ix+003h),a		;103e
	jr z,l1047h		;1041
	set 7,(ix+001h)		;1043
l1047h:
	inc (ix+003h)		;1047
	ld a,(l155fh)		;104a
	ld (ix+002h),a		;104d
	call sub_1069h		;1050
	ld bc,l155eh		;1053
	ld (ix+004h),c		;1056
	ld (ix+005h),b		;1059
	call sub_0ba3h		;105c
	ld a,(ix+008h)		;105f
	or a			;1062
	pop ix			;1063
	pop hl			;1065
	pop de			;1066
	pop bc			;1067
	ret			;1068
sub_1069h:
	ld hl,l1480h		;1069
	add hl,de		;106c
	add hl,de		;106d
	ld a,(hl)		;106e
	ld (ix+006h),a		;106f
	ld (l1486h),a		;1072
	inc hl			;1075
	ld a,(hl)		;1076
	ld (ix+007h),a		;1077
	ld (l1487h),a		;107a
	ret			;107d
l107eh:
	push ix			;107e
	ld ix,l151dh		;1080
	ld a,002h		;1084
	ld (ix+000h),a		;1086
	ld a,(l155eh)		;1089
	ld e,a			;108c
	ld d,000h		;108d
	ld (ix+001h),a		;108f
	ld a,(l1563h)		;1092
	and 001h		;1095
	ld a,(l1561h)		;1097
	ld (ix+003h),a		;109a
	jr z,l10a3h		;109d
	set 7,(ix+001h)		;109f
l10a3h:
	inc (ix+003h)		;10a3
	ld a,(l155fh)		;10a6
	ld (ix+002h),a		;10a9
	call sub_1069h		;10ac
	ld bc,(l1486h)		;10af
	ld hl,l1564h		;10b3
l10b6h:
	ld a,(l0103h)		;10b6
	push bc			;10b9
	ld c,a			;10ba
l10bbh:
	in a,(c)		;10bb
	bit 7,a			;10bd
	jr z,l10bbh		;10bf
	ld a,(l0104h)		;10c1
	ld c,a			;10c4
	in a,(c)		;10c5
	ld (hl),a		;10c7
	inc hl			;10c8
	pop bc			;10c9
	dec bc			;10ca
	ld a,b			;10cb
	or c			;10cc
	jr nz,l10b6h		;10cd
	ld bc,l1564h		;10cf
	ld (ix+004h),c		;10d2
	ld (ix+005h),b		;10d5
	call sub_0ba3h		;10d8
	ld a,018h		;10db
	ld (l155ch),a		;10dd
	ld a,(ix+008h)		;10e0
	ld (l155eh),a		;10e3
	pop ix			;10e6
l10e8h:
	ld a,001h		;10e8
	ld (l155dh),a		;10ea
	call sub_134bh		;10ed
	ret			;10f0
l10f1h:
	ld ix,l151dh		;10f1
	ld a,004h		;10f5
	ld (ix+000h),a		;10f7
	ld a,(l155fh)		;10fa
	ld (ix+001h),a		;10fd
	ld hl,l1526h		;1100
	ld (ix+004h),l		;1103
	ld (ix+005h),h		;1106
	ld a,(l1560h)		;1109
	ld iy,l1490h		;110c
	bit 6,a			;1110
	jr nz,l1118h		;1112
	ld iy,l1536h		;1114
l1118h:
	ld a,(iy+001h)		;1118
	ld (hl),a		;111b
	push hl			;111c
	push de			;111d
	push bc			;111e
	ld b,a			;111f
	ld a,(ix+001h)		;1120
	ld e,a			;1123
	ld d,000h		;1124
	ld hl,l1488h		;1126
	ld a,b			;1129
	or a			;112a
	jr nz,l112fh		;112b
	inc a			;112d
	ld b,a			;112e
l112fh:
	inc hl			;112f
	inc hl			;1130
	djnz l112fh		;1131
	ld c,(hl)		;1133
	inc hl			;1134
	ld b,(hl)		;1135
	ld hl,l1480h		;1136
	add hl,de		;1139
	add hl,de		;113a
	ld (hl),c		;113b
	inc hl			;113c
	ld (hl),b		;113d
	pop bc			;113e
	pop de			;113f
	pop hl			;1140
	inc hl			;1141
	ld a,(iy+002h)		;1142
	ld (hl),a		;1145
	inc hl			;1146
	ld a,(iy+003h)		;1147
	ld (hl),a		;114a
	inc hl			;114b
	ld a,000h		;114c
	ld (ix+002h),a		;114e
	ld a,0e6h		;1151
	ld (hl),a		;1153
	inc hl			;1154
	ex de,hl		;1155
	push iy			;1156
	pop hl			;1158
	inc hl			;1159
	inc hl			;115a
	inc hl			;115b
	inc hl			;115c
	ld bc,0000ah		;115d
	ldir			;1160
	ld hl,l186ah		;1162
	ld (ix+006h),l		;1165
	ld (ix+007h),h		;1168
	ld b,(iy+000h)		;116b
l116eh:
	push bc			;116e
	call sub_0ba3h		;116f
	ld a,(l1560h)		;1172
l1175h:
	bit 4,a			;1175
	jr z,l1184h		;1177
	set 7,(ix+001h)		;1179
	call sub_0ba3h		;117d
	res 7,(ix+001h)		;1180
l1184h:
	inc (ix+002h)		;1184
	pop bc			;1187
	ld a,(ix+008h)		;1188
	or a			;118b
	jr nz,l1191h		;118c
	djnz l116eh		;118e
	xor a			;1190
l1191h:
	ld (l155eh),a		;1191
	ld a,001h		;1194
	ld (l155dh),a		;1196
	call sub_134bh		;1199
	ret			;119c
sub_119dh:
	ld hl,l149ch		;119d
	ld de,l155eh		;11a0
	ld bc,00080h		;11a3
	ldir			;11a6
	call sub_1221h		;11a8
	ld de,l1237h		;11ab
	ld c,009h		;11ae
	call 00005h		;11b0
	call sub_1440h		;11b3
	cp 00dh			;11b6
	jr z,l11d8h		;11b8
	cp 041h			;11ba
	jr z,l11d8h		;11bc
	cp 061h			;11be
	jr z,l11d8h		;11c0
	cp 042h			;11c2
	jr z,l11d4h		;11c4
	cp 062h			;11c6
	jr z,l11d4h		;11c8
	jr l11d8h		;11ca
	ld a,002h		;11cc
	jr l11dah		;11ce
	ld a,003h		;11d0
	jr l11dah		;11d2
l11d4h:
	ld a,001h		;11d4
	jr l11dah		;11d6
l11d8h:
	ld a,000h		;11d8
l11dah:
	ld (l147fh),a		;11da
	ld de,l0140h		;11dd
	ld c,009h		;11e0
	call 00005h		;11e2
	ld b,0e4h		;11e5
	ld a,(l147fh)		;11e7
	inc a			;11ea
	ld (04364h),a		;11eb
	ld hl,04361h		;11ee
l11f1h:
	push bc			;11f1
	ld bc,00080h		;11f2
	ld de,l155eh		;11f5
	ldir			;11f8
	push hl			;11fa
	call sub_1221h		;11fb
	pop hl			;11fe
	pop bc			;11ff
	djnz l11f1h		;1200
	jr l120fh		;1202
	ld c,009h		;1204
	call 00005h		;1206
	call sub_1229h		;1209
	jp 00000h		;120c
l120fh:
	call sub_1225h		;120f
	ret			;1212
	ld de,l131bh		;1213
	ld c,009h		;1216
	call 00005h		;1218
	call sub_1229h		;121b
	jp 00000h		;121e
sub_1221h:
	ld b,080h		;1221
	jr l122bh		;1223
sub_1225h:
	ld b,001h		;1225
	jr l122bh		;1227
sub_1229h:
	ld b,000h		;1229
l122bh:
	ld hl,l155ch		;122b
	ld a,016h		;122e
	ld (hl),a		;1230
	inc hl			;1231
	ld (hl),b		;1232
	call sub_134bh		;1233
	ret			;1236
l1237h:
	ld d,b			;1237
	ld l,h			;1238
	ld h,c			;1239
	ld h,e			;123a
	ld h,l			;123b
	jr nz,l128bh		;123c
	ld d,e			;123e
	ld b,h			;123f
	ld c,a			;1240
	ld d,e			;1241
	jr nz,l12a8h		;1242
	ld l,c			;1244
	ld (hl),e		;1245
	ld l,e			;1246
	jr nz,l12b2h		;1247
	ld l,(hl)		;1249
	jr nz,l12b0h		;124a
	ld (hl),d		;124c
l124dh:
	ld l,c			;124d
	halt			;124e
	ld h,l			;124f
	dec c			;1250
	ld a,(bc)		;1251
	ld a,(bc)		;1252
	ld d,h			;1253
	ld l,b			;1254
	ld h,l			;1255
	ld l,(hl)		;1256
	jr nz,$+118		;1257
	ld a,c			;1259
	ld (hl),b		;125a
	ld h,l			;125b
	jr nz,l12c2h		;125c
	ld (hl),d		;125e
	ld l,c			;125f
	halt			;1260
	ld h,l			;1261
	jr nz,$+42		;1262
	ld b,c			;1264
	inc l			;1265
	jr nz,l12aah		;1266
	add hl,hl		;1268
	jr nz,$+118		;1269
	ld l,a			;126b
	jr nz,$+110		;126c
	ld l,a			;126e
	ld h,c			;126f
	ld h,h			;1270
	jr nz,l12e6h		;1271
	ld a,c			;1273
l1274h:
	ld (hl),e		;1274
	ld (hl),h		;1275
	ld h,l			;1276
	ld l,l			;1277
	ld l,00dh		;1278
	ld a,(bc)		;127a
	ld a,(bc)		;127b
	ld b,c			;127c
	ld l,(hl)		;127d
	ld a,c			;127e
	jr nz,l12f0h		;127f
	ld (hl),h		;1281
	ld l,b			;1282
	ld h,l			;1283
	ld (hl),d		;1284
	jr nz,$+102		;1285
	ld (hl),d		;1287
	ld l,c			;1288
	halt			;1289
	ld h,l			;128a
l128bh:
	jr nz,l12f1h		;128b
	ld h,l			;128d
	ld h,(hl)		;128e
	ld h,c			;128f
	ld (hl),l		;1290
	ld l,h			;1291
	ld (hl),h		;1292
	ld (hl),e		;1293
	jr nz,l130ah		;1294
	ld l,a			;1296
	jr nz,$+102		;1297
	ld (hl),d		;1299
	ld l,c			;129a
	halt			;129b
	ld h,l			;129c
	jr nz,l12e0h		;129d
	dec c			;129f
	ld a,(bc)		;12a0
	ld l,c			;12a1
	ld h,l			;12a2
	inc l			;12a3
	jr nz,l12f8h		;12a4
	ld b,l			;12a6
	ld d,h			;12a7
l12a8h:
	ld d,l			;12a8
	ld d,d			;12a9
l12aah:
	ld c,(hl)		;12aa
	jr nz,l1324h		;12ab
	ld l,c			;12ad
	ld (hl),h		;12ae
	ld l,b			;12af
l12b0h:
	ld l,a			;12b0
	ld (hl),l		;12b1
l12b2h:
	ld (hl),h		;12b2
	jr nz,l1319h		;12b3
	ld (hl),d		;12b5
	ld l,c			;12b6
	halt			;12b7
	ld h,l			;12b8
	jr nz,l1327h		;12b9
	ld h,l			;12bb
	ld (hl),h		;12bc
	ld (hl),h		;12bd
	ld h,l			;12be
	ld (hl),d		;12bf
	jr nz,$+102		;12c0
l12c2h:
	ld h,l			;12c2
	ld h,(hl)		;12c3
	ld h,c			;12c4
	ld (hl),l		;12c5
	ld l,h			;12c6
	ld (hl),h		;12c7
	ld (hl),e		;12c8
	jr nz,l133fh		;12c9
	ld l,a			;12cb
	jr nz,l1332h		;12cc
	ld (hl),d		;12ce
	ld l,c			;12cf
	halt			;12d0
	ld h,l			;12d1
	jr nz,$+67		;12d2
	ld a,(l0a0dh)		;12d4
	jr nz,$+34		;12d7
	jr nz,$+34		;12d9
	ld (l2241h),hl		;12db
	jr nz,$+100		;12de
l12e0h:
	ld l,a			;12e0
	ld l,a			;12e1
	ld (hl),h		;12e2
	ld (hl),e		;12e3
	jr nz,l1333h		;12e4
l12e6h:
	ld d,e			;12e6
	ld b,h			;12e7
	ld c,a			;12e8
	ld d,e			;12e9
	jr nz,$+113		;12ea
	ld l,(hl)		;12ec
	jr nz,$+102		;12ed
	ld (hl),d		;12ef
l12f0h:
	ld l,c			;12f0
l12f1h:
	halt			;12f1
	ld h,l			;12f2
	jr nz,l1336h		;12f3
	ld a,(l0a0dh)		;12f5
l12f8h:
	jr nz,l131ah		;12f8
	jr nz,$+34		;12fa
	ld (l2242h),hl		;12fc
	jr nz,$+100		;12ff
	ld l,a			;1301
	ld l,a			;1302
	ld (hl),h		;1303
	ld (hl),e		;1304
	jr nz,$+79		;1305
	ld d,e			;1307
	ld b,h			;1308
	ld c,a			;1309
l130ah:
	ld d,e			;130a
	jr nz,l137ch		;130b
	ld l,(hl)		;130d
	jr nz,l1374h		;130e
	ld (hl),d		;1310
	ld l,c			;1311
	halt			;1312
	ld h,l			;1313
	jr nz,l1358h		;1314
	ld a,(l0a0dh)		;1316
l1319h:
	ld a,(bc)		;1319
l131ah:
	inc h			;131a
l131bh:
	ld hl,(l2a2ah)		;131b
	jr nz,$+69		;131e
	ld b,c			;1320
	ld c,(hl)		;1321
	ld c,(hl)		;1322
	ld c,a			;1323
l1324h:
	ld d,h			;1324
	jr nz,l136dh		;1325
l1327h:
	ld c,c			;1327
	ld c,(hl)		;1328
	ld b,h			;1329
	jr nz,l1379h		;132a
	ld d,e			;132c
	ld b,h			;132d
	ld c,a			;132e
	ld d,e			;132f
	ld l,044h		;1330
l1332h:
	ld b,c			;1332
l1333h:
	ld d,h			;1333
	jr nz,l137ch		;1334
l1336h:
	ld c,c			;1336
	ld c,h			;1337
	ld b,l			;1338
	jr nz,$+81		;1339
	ld c,(hl)		;133b
	jr nz,$+74		;133c
	ld b,c			;133e
l133fh:
	ld d,d			;133f
	ld b,h			;1340
	jr nz,l1387h		;1341
	ld c,c			;1343
	ld d,e			;1344
	ld c,e			;1345
	jr nz,l1372h		;1346
	ld hl,(l242ah)		;1348
sub_134bh:
	push hl			;134b
	push de			;134c
	push bc			;134d
	ld de,(l0103h)		;134e
	ld hl,l155ch		;1352
	ld c,e			;1355
l1356h:
	in a,(c)		;1356
l1358h:
	bit 0,a			;1358
	jr nz,l1356h		;135a
	ld a,005h		;135c
	ld c,d			;135e
	out (c),a		;135f
	ld c,e			;1361
l1362h:
	in a,(c)		;1362
	bit 0,a			;1364
	jr nz,l1362h		;1366
	ld a,001h		;1368
	ld c,d			;136a
	out (c),a		;136b
l136dh:
	ld c,e			;136d
l136eh:
	in a,(c)		;136e
	bit 0,a			;1370
l1372h:
	jr nz,l136eh		;1372
l1374h:
	ld a,(hl)		;1374
	ld c,d			;1375
	out (c),a		;1376
	inc hl			;1378
l1379h:
	ld c,e			;1379
l137ah:
	in a,(c)		;137a
l137ch:
	bit 0,a			;137c
	jr nz,l137ah		;137e
	ld a,(hl)		;1380
	ld c,d			;1381
	out (c),a		;1382
	or a			;1384
	jr z,l13c2h		;1385
l1387h:
	ld b,a			;1387
	inc hl			;1388
	cp 001h			;1389
	jr z,l13b4h		;138b
	ld a,(l155ch)		;138d
	cp 00ch			;1390
	jr z,l13b1h		;1392
	cp 017h			;1394
	jr nz,l13b4h		;1396
	ld bc,(l1486h)		;1398
l139ch:
	push bc			;139c
l139dh:
	ld c,e			;139d
	in a,(c)		;139e
	bit 0,a			;13a0
	jr nz,l139dh		;13a2
	ld a,(hl)		;13a4
	ld c,d			;13a5
	out (c),a		;13a6
	inc hl			;13a8
	pop bc			;13a9
	dec bc			;13aa
	ld a,b			;13ab
	or c			;13ac
	jr nz,l139ch		;13ad
	jr l13c2h		;13af
l13b1h:
	ld hl,(l146eh)		;13b1
l13b4h:
	ld c,e			;13b4
l13b5h:
	in a,(c)		;13b5
	bit 0,a			;13b7
	jr nz,l13b5h		;13b9
	ld a,(hl)		;13bb
	ld c,d			;13bc
	out (c),a		;13bd
	inc hl			;13bf
	djnz l13b4h		;13c0
l13c2h:
	pop bc			;13c2
	pop de			;13c3
	pop hl			;13c4
	ret			;13c5
sub_13c6h:
	push hl			;13c6
	push de			;13c7
	push bc			;13c8
	ld de,(l0103h)		;13c9
	ld hl,l155ch		;13cd
	ld c,e			;13d0
l13d1h:
	in a,(c)		;13d1
	bit 7,a			;13d3
	jr z,l13d1h		;13d5
	ld c,d			;13d7
	in a,(c)		;13d8
	cp 001h			;13da
	call nz,sub_081ch	;13dc
l13dfh:
	jp nz,l13dfh		;13df
	ld c,e			;13e2
l13e3h:
	in a,(c)		;13e3
	bit 7,a			;13e5
	jr z,l13e3h		;13e7
	ld c,d			;13e9
	in a,(c)		;13ea
	ld (hl),a		;13ec
	inc hl			;13ed
	cp 018h			;13ee
	ld c,e			;13f0
	jr z,l1414h		;13f1
l13f3h:
	in a,(c)		;13f3
	bit 7,a			;13f5
	jr z,l13f3h		;13f7
	ld c,d			;13f9
	in a,(c)		;13fa
	cp 000h			;13fc
	jr z,l1410h		;13fe
	ld b,a			;1400
	ld (hl),a		;1401
l1402h:
	inc hl			;1402
	ld c,e			;1403
l1404h:
	in a,(c)		;1404
	bit 7,a			;1406
	jr z,l1404h		;1408
	ld c,d			;140a
	in a,(c)		;140b
	ld (hl),a		;140d
	djnz l1402h		;140e
l1410h:
	pop bc			;1410
	pop de			;1411
	pop hl			;1412
	ret			;1413
l1414h:
	in a,(c)		;1414
	bit 7,a			;1416
	jr z,l1414h		;1418
	ld c,d			;141a
	in a,(c)		;141b
	cp 000h			;141d
	jr z,l1410h		;141f
	ld b,006h		;1421
	ld (hl),b		;1423
l1424h:
	inc hl			;1424
	ld c,e			;1425
l1426h:
	in a,(c)		;1426
	bit 7,a			;1428
	jr z,l1426h		;142a
	ld c,d			;142c
	in a,(c)		;142d
	ld (hl),a		;142f
	djnz l1424h		;1430
	pop bc			;1432
	pop de			;1433
	pop hl			;1434
	ret			;1435
l1436h:
	nop			;1436
	call sub_0729h		;1437
l143ah:
	nop			;143a
	nop			;143b
	nop			;143c
sub_143dh:
	nop			;143d
	nop			;143e
	nop			;143f
sub_1440h:
	nop			;1440
	nop			;1441
	nop			;1442
l1443h:
	nop			;1443
	nop			;1444
	nop			;1445
sub_1446h:
	nop			;1446
	nop			;1447
	nop			;1448
sub_1449h:
	nop			;1449
	nop			;144a
	nop			;144b
sub_144ch:
	nop			;144c
	nop			;144d
	nop			;144e
	nop			;144f
	nop			;1450
	nop			;1451
	nop			;1452
	nop			;1453
	nop			;1454
	nop			;1455
	nop			;1456
	nop			;1457
	nop			;1458
	nop			;1459
	nop			;145a
	nop			;145b
	nop			;145c
	nop			;145d
	nop			;145e
	nop			;145f
	nop			;1460
	nop			;1461
	nop			;1462
	nop			;1463
	nop			;1464
	nop			;1465
	nop			;1466
	nop			;1467
	nop			;1468
	nop			;1469
	nop			;146a
	nop			;146b
	nop			;146c
	nop			;146d
l146eh:
	nop			;146e
	nop			;146f
	nop			;1470
	nop			;1471
	nop			;1472
	nop			;1473
l1474h:
	nop			;1474
	nop			;1475
	nop			;1476
	nop			;1477
	nop			;1478
	nop			;1479
	nop			;147a
	nop			;147b
	nop			;147c
	nop			;147d
l147eh:
	nop			;147e
l147fh:
	nop			;147f
l1480h:
	nop			;1480
	ld (bc),a		;1481
	nop			;1482
	ld (bc),a		;1483
	nop			;1484
	ld (bc),a		;1485
l1486h:
	nop			;1486
l1487h:
	ld (bc),a		;1487
l1488h:
	add a,b			;1488
	nop			;1489
	nop			;148a
	ld bc,l0200h		;148b
	nop			;148e
	inc b			;148f
l1490h:
	jr z,$+4		;1490
	ex af,af'		;1492
	ld (sub_0300h+1),a	;1493
	dec b			;1496
	rlca			;1497
	ld (bc),a		;1498
	inc b			;1499
	ld b,008h		;149a
l149ch:
	ld bc,00400h		;149c
	ld h,b			;149f
	nop			;14a0
	nop			;14a1
	nop			;14a2
	nop			;14a3
	nop			;14a4
	nop			;14a5
	nop			;14a6
	nop			;14a7
	nop			;14a8
	nop			;14a9
	nop			;14aa
	nop			;14ab
	nop			;14ac
	nop			;14ad
	nop			;14ae
	nop			;14af
	nop			;14b0
	nop			;14b1
	nop			;14b2
	nop			;14b3
	nop			;14b4
	nop			;14b5
	nop			;14b6
	nop			;14b7
	nop			;14b8
l14b9h:
	nop			;14b9
	nop			;14ba
	nop			;14bb
	nop			;14bc
	nop			;14bd
	nop			;14be
	nop			;14bf
	nop			;14c0
	nop			;14c1
	nop			;14c2
	nop			;14c3
	nop			;14c4
	nop			;14c5
	nop			;14c6
	nop			;14c7
	nop			;14c8
	nop			;14c9
	nop			;14ca
	nop			;14cb
	nop			;14cc
	nop			;14cd
	nop			;14ce
	nop			;14cf
	nop			;14d0
	nop			;14d1
	nop			;14d2
	nop			;14d3
	nop			;14d4
	nop			;14d5
	nop			;14d6
	nop			;14d7
	nop			;14d8
	nop			;14d9
	nop			;14da
	nop			;14db
	nop			;14dc
	nop			;14dd
	nop			;14de
	nop			;14df
	nop			;14e0
	nop			;14e1
	nop			;14e2
	nop			;14e3
	nop			;14e4
	nop			;14e5
	nop			;14e6
	nop			;14e7
	nop			;14e8
	nop			;14e9
	nop			;14ea
l14ebh:
	nop			;14eb
	nop			;14ec
	nop			;14ed
	nop			;14ee
	nop			;14ef
	nop			;14f0
	nop			;14f1
	nop			;14f2
	nop			;14f3
	nop			;14f4
	nop			;14f5
	nop			;14f6
	nop			;14f7
	nop			;14f8
	nop			;14f9
	nop			;14fa
	nop			;14fb
	nop			;14fc
	nop			;14fd
	nop			;14fe
	nop			;14ff
	nop			;1500
	nop			;1501
	nop			;1502
	nop			;1503
	nop			;1504
	nop			;1505
	nop			;1506
	nop			;1507
	nop			;1508
	nop			;1509
	nop			;150a
	nop			;150b
	nop			;150c
	nop			;150d
	nop			;150e
	nop			;150f
	nop			;1510
	nop			;1511
	nop			;1512
	nop			;1513
	nop			;1514
l1515h:
	nop			;1515
	nop			;1516
	nop			;1517
	nop			;1518
	nop			;1519
	nop			;151a
	nop			;151b
	nop			;151c
l151dh:
	nop			;151d
	nop			;151e
	nop			;151f
	nop			;1520
	nop			;1521
	nop			;1522
	nop			;1523
	nop			;1524
	nop			;1525
l1526h:
	nop			;1526
	nop			;1527
	nop			;1528
l1529h:
	nop			;1529
	nop			;152a
	nop			;152b
	nop			;152c
	nop			;152d
	nop			;152e
	nop			;152f
	nop			;1530
	nop			;1531
	nop			;1532
	nop			;1533
	nop			;1534
	nop			;1535
l1536h:
	jr z,$+4		;1536
	add hl,bc		;1538
	ld (sub_0300h+1),a	;1539
	dec b			;153c
	rlca			;153d
	add hl,bc		;153e
	ld (bc),a		;153f
	inc b			;1540
	ld b,008h		;1541
	ld c,l			;1543
	inc bc			;1544
	ex af,af'		;1545
	ld (hl),h		;1546
	ld bc,00503h		;1547
	rlca			;154a
	ld (bc),a		;154b
	inc b			;154c
	ld b,008h		;154d
	ld d,b			;154f
	ld (bc),a		;1550
	add hl,bc		;1551
	ld (sub_0300h+1),a	;1552
	dec b			;1555
	rlca			;1556
	add hl,bc		;1557
	ld (bc),a		;1558
	inc b			;1559
	ld b,008h		;155a
l155ch:
	nop			;155c
l155dh:
	nop			;155d
l155eh:
	nop			;155e
l155fh:
	nop			;155f
l1560h:
	nop			;1560
l1561h:
	nop			;1561
l1562h:
	nop			;1562
l1563h:
	nop			;1563
l1564h:
	nop			;1564
l1565h:
	nop			;1565
	nop			;1566
	nop			;1567
	nop			;1568
	nop			;1569
	nop			;156a
	nop			;156b
	nop			;156c
	nop			;156d
	nop			;156e
	nop			;156f
	nop			;1570
	nop			;1571
	nop			;1572
	nop			;1573
l1574h:
	nop			;1574
	nop			;1575
	nop			;1576
	nop			;1577
l1578h:
	nop			;1578
	nop			;1579
	nop			;157a
	nop			;157b
	nop			;157c
	nop			;157d
	nop			;157e
	nop			;157f
	nop			;1580
	nop			;1581
	nop			;1582
	nop			;1583
	nop			;1584
	nop			;1585
	nop			;1586
	nop			;1587
	nop			;1588
	nop			;1589
	nop			;158a
	nop			;158b
	nop			;158c
	nop			;158d
	nop			;158e
	nop			;158f
	nop			;1590
	nop			;1591
	nop			;1592
	nop			;1593
	nop			;1594
	nop			;1595
	nop			;1596
	nop			;1597
	nop			;1598
	nop			;1599
	nop			;159a
	nop			;159b
	nop			;159c
	nop			;159d
	nop			;159e
	nop			;159f
	nop			;15a0
	nop			;15a1
	nop			;15a2
	nop			;15a3
	nop			;15a4
	nop			;15a5
	nop			;15a6
	nop			;15a7
	nop			;15a8
	nop			;15a9
	nop			;15aa
	nop			;15ab
	nop			;15ac
	nop			;15ad
	nop			;15ae
	nop			;15af
	nop			;15b0
	nop			;15b1
	nop			;15b2
	nop			;15b3
	nop			;15b4
	nop			;15b5
	nop			;15b6
	nop			;15b7
	nop			;15b8
	nop			;15b9
	nop			;15ba
	nop			;15bb
	nop			;15bc
	nop			;15bd
	nop			;15be
	nop			;15bf
	nop			;15c0
	nop			;15c1
	nop			;15c2
	nop			;15c3
	nop			;15c4
	nop			;15c5
	nop			;15c6
	nop			;15c7
	nop			;15c8
	nop			;15c9
	nop			;15ca
	nop			;15cb
	nop			;15cc
	nop			;15cd
	nop			;15ce
	nop			;15cf
	nop			;15d0
	nop			;15d1
	nop			;15d2
	nop			;15d3
	nop			;15d4
	nop			;15d5
	nop			;15d6
	nop			;15d7
	nop			;15d8
	nop			;15d9
	nop			;15da
	nop			;15db
	nop			;15dc
	nop			;15dd
	nop			;15de
	nop			;15df
	nop			;15e0
	nop			;15e1
	nop			;15e2
	nop			;15e3
	nop			;15e4
	nop			;15e5
	nop			;15e6
	nop			;15e7
	nop			;15e8
	nop			;15e9
	nop			;15ea
	nop			;15eb
	nop			;15ec
	nop			;15ed
	nop			;15ee
	nop			;15ef
	nop			;15f0
	nop			;15f1
	nop			;15f2
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
	nop			;15fd
	nop			;15fe
	nop			;15ff
	nop			;1600
	nop			;1601
	nop			;1602
	nop			;1603
	nop			;1604
	nop			;1605
	nop			;1606
	nop			;1607
	nop			;1608
	nop			;1609
	nop			;160a
	nop			;160b
	nop			;160c
	nop			;160d
	nop			;160e
	nop			;160f
	nop			;1610
	nop			;1611
	nop			;1612
	nop			;1613
	nop			;1614
	nop			;1615
l1616h:
	nop			;1616
	nop			;1617
	nop			;1618
	nop			;1619
	nop			;161a
	nop			;161b
	nop			;161c
	nop			;161d
l161eh:
	nop			;161e
	nop			;161f
	nop			;1620
	nop			;1621
	nop			;1622
	nop			;1623
	nop			;1624
	nop			;1625
	nop			;1626
	nop			;1627
	nop			;1628
	nop			;1629
	nop			;162a
	nop			;162b
	nop			;162c
	nop			;162d
	nop			;162e
	nop			;162f
	nop			;1630
	nop			;1631
	nop			;1632
	nop			;1633
	nop			;1634
	nop			;1635
	nop			;1636
	nop			;1637
	nop			;1638
	nop			;1639
	nop			;163a
	nop			;163b
	nop			;163c
	nop			;163d
	nop			;163e
	nop			;163f
	nop			;1640
	nop			;1641
	nop			;1642
	nop			;1643
	nop			;1644
	nop			;1645
	nop			;1646
	nop			;1647
	nop			;1648
	nop			;1649
	nop			;164a
	nop			;164b
	nop			;164c
	nop			;164d
	nop			;164e
	nop			;164f
l1650h:
	nop			;1650
	nop			;1651
	nop			;1652
	nop			;1653
	nop			;1654
	nop			;1655
	nop			;1656
	nop			;1657
	nop			;1658
	nop			;1659
	nop			;165a
	nop			;165b
	nop			;165c
	nop			;165d
	nop			;165e
	nop			;165f
	nop			;1660
	nop			;1661
	nop			;1662
	nop			;1663
	nop			;1664
	nop			;1665
	nop			;1666
	nop			;1667
	nop			;1668
	nop			;1669
	nop			;166a
	nop			;166b
	nop			;166c
	nop			;166d
	nop			;166e
	nop			;166f
	nop			;1670
	nop			;1671
	nop			;1672
	nop			;1673
l1674h:
	nop			;1674
	nop			;1675
l1676h:
	nop			;1676
	nop			;1677
	nop			;1678
	nop			;1679
	nop			;167a
	nop			;167b
	nop			;167c
	nop			;167d
	nop			;167e
	nop			;167f
	nop			;1680
	nop			;1681
	nop			;1682
	nop			;1683
	nop			;1684
	nop			;1685
	nop			;1686
	nop			;1687
	nop			;1688
l1689h:
	nop			;1689
l168ah:
	nop			;168a
sub_168bh:
	nop			;168b
	nop			;168c
	nop			;168d
l168eh:
	nop			;168e
	nop			;168f
	nop			;1690
	nop			;1691
	nop			;1692
	nop			;1693
	nop			;1694
	nop			;1695
	nop			;1696
	nop			;1697
	nop			;1698
	nop			;1699
	nop			;169a
	nop			;169b
	nop			;169c
	nop			;169d
	nop			;169e
	nop			;169f
	nop			;16a0
	nop			;16a1
	nop			;16a2
	nop			;16a3
	nop			;16a4
	nop			;16a5
	nop			;16a6
	nop			;16a7
	nop			;16a8
	nop			;16a9
	nop			;16aa
	nop			;16ab
	nop			;16ac
	nop			;16ad
	nop			;16ae
	nop			;16af
l16b0h:
	nop			;16b0
	nop			;16b1
	nop			;16b2
	nop			;16b3
	nop			;16b4
	nop			;16b5
	nop			;16b6
	nop			;16b7
	nop			;16b8
l16b9h:
	nop			;16b9
	nop			;16ba
	nop			;16bb
	nop			;16bc
	nop			;16bd
	nop			;16be
	nop			;16bf
	nop			;16c0
	nop			;16c1
	nop			;16c2
	nop			;16c3
	nop			;16c4
	nop			;16c5
	nop			;16c6
	nop			;16c7
	nop			;16c8
	nop			;16c9
	nop			;16ca
	nop			;16cb
	nop			;16cc
	nop			;16cd
	nop			;16ce
	nop			;16cf
	nop			;16d0
	nop			;16d1
	nop			;16d2
	nop			;16d3
	nop			;16d4
	nop			;16d5
	nop			;16d6
	nop			;16d7
	nop			;16d8
	nop			;16d9
	nop			;16da
	nop			;16db
	nop			;16dc
	nop			;16dd
	nop			;16de
	nop			;16df
	nop			;16e0
	nop			;16e1
	nop			;16e2
	nop			;16e3
	nop			;16e4
	nop			;16e5
	nop			;16e6
	nop			;16e7
l16e8h:
	nop			;16e8
	nop			;16e9
	nop			;16ea
l16ebh:
	nop			;16eb
	nop			;16ec
	nop			;16ed
	nop			;16ee
	nop			;16ef
	nop			;16f0
	nop			;16f1
	nop			;16f2
	nop			;16f3
	nop			;16f4
	nop			;16f5
	nop			;16f6
l16f7h:
	nop			;16f7
	nop			;16f8
	nop			;16f9
	nop			;16fa
	nop			;16fb
	nop			;16fc
l16fdh:
	nop			;16fd
	nop			;16fe
	nop			;16ff
	nop			;1700
	nop			;1701
	nop			;1702
	nop			;1703
	nop			;1704
	nop			;1705
	nop			;1706
	nop			;1707
	nop			;1708
	nop			;1709
	nop			;170a
	nop			;170b
	nop			;170c
	nop			;170d
	nop			;170e
	nop			;170f
	nop			;1710
	nop			;1711
	nop			;1712
	nop			;1713
	nop			;1714
	nop			;1715
	nop			;1716
	nop			;1717
	nop			;1718
	nop			;1719
	nop			;171a
	nop			;171b
	nop			;171c
	nop			;171d
	nop			;171e
	nop			;171f
	nop			;1720
	nop			;1721
	nop			;1722
	nop			;1723
	nop			;1724
	nop			;1725
	nop			;1726
	nop			;1727
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
	nop			;1734
	nop			;1735
	nop			;1736
	nop			;1737
	nop			;1738
	nop			;1739
	nop			;173a
	nop			;173b
	nop			;173c
	nop			;173d
	nop			;173e
	nop			;173f
	nop			;1740
	nop			;1741
	nop			;1742
	nop			;1743
	nop			;1744
	nop			;1745
	nop			;1746
	nop			;1747
	nop			;1748
	nop			;1749
	nop			;174a
	nop			;174b
	nop			;174c
	nop			;174d
	nop			;174e
	nop			;174f
	nop			;1750
	nop			;1751
	nop			;1752
	nop			;1753
	nop			;1754
	nop			;1755
	nop			;1756
	nop			;1757
	nop			;1758
	nop			;1759
	nop			;175a
	nop			;175b
	nop			;175c
	nop			;175d
	nop			;175e
	nop			;175f
	nop			;1760
	nop			;1761
	nop			;1762
	nop			;1763
	nop			;1764
	nop			;1765
	nop			;1766
	nop			;1767
	nop			;1768
	nop			;1769
	nop			;176a
	nop			;176b
	nop			;176c
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
	nop			;1779
	nop			;177a
	nop			;177b
	nop			;177c
	nop			;177d
	nop			;177e
	nop			;177f
	nop			;1780
	nop			;1781
	nop			;1782
	nop			;1783
	nop			;1784
	nop			;1785
	nop			;1786
	nop			;1787
	nop			;1788
	nop			;1789
	nop			;178a
	nop			;178b
	nop			;178c
	nop			;178d
	nop			;178e
	nop			;178f
	nop			;1790
	nop			;1791
	nop			;1792
	nop			;1793
	nop			;1794
	nop			;1795
	nop			;1796
	nop			;1797
	nop			;1798
	nop			;1799
	nop			;179a
	nop			;179b
	nop			;179c
	nop			;179d
	nop			;179e
	nop			;179f
	nop			;17a0
	nop			;17a1
	nop			;17a2
	nop			;17a3
	nop			;17a4
	nop			;17a5
	nop			;17a6
	nop			;17a7
	nop			;17a8
	nop			;17a9
	nop			;17aa
	nop			;17ab
	nop			;17ac
	nop			;17ad
	nop			;17ae
	nop			;17af
	nop			;17b0
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
	nop			;17bd
	nop			;17be
	nop			;17bf
	nop			;17c0
	nop			;17c1
	nop			;17c2
	nop			;17c3
	nop			;17c4
	nop			;17c5
	nop			;17c6
	nop			;17c7
	nop			;17c8
	nop			;17c9
	nop			;17ca
	nop			;17cb
	nop			;17cc
	nop			;17cd
	nop			;17ce
	nop			;17cf
	nop			;17d0
	nop			;17d1
	nop			;17d2
	nop			;17d3
	nop			;17d4
	nop			;17d5
	nop			;17d6
	nop			;17d7
	nop			;17d8
	nop			;17d9
	nop			;17da
	nop			;17db
	nop			;17dc
	nop			;17dd
	nop			;17de
	nop			;17df
	nop			;17e0
	nop			;17e1
	nop			;17e2
	nop			;17e3
	nop			;17e4
	nop			;17e5
	nop			;17e6
	nop			;17e7
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
	nop			;17f6
	nop			;17f7
	nop			;17f8
	nop			;17f9
	nop			;17fa
	nop			;17fb
	nop			;17fc
	nop			;17fd
	nop			;17fe
	nop			;17ff
	nop			;1800
	nop			;1801
	nop			;1802
	nop			;1803
	nop			;1804
	nop			;1805
	nop			;1806
	nop			;1807
	nop			;1808
	nop			;1809
	nop			;180a
	nop			;180b
	nop			;180c
	nop			;180d
	nop			;180e
	nop			;180f
	nop			;1810
	nop			;1811
	nop			;1812
	nop			;1813
	nop			;1814
	nop			;1815
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
	nop			;1820
	nop			;1821
	nop			;1822
	nop			;1823
	nop			;1824
	nop			;1825
	nop			;1826
	nop			;1827
	nop			;1828
	nop			;1829
	nop			;182a
	nop			;182b
	nop			;182c
	nop			;182d
	nop			;182e
	nop			;182f
	nop			;1830
	nop			;1831
	nop			;1832
	nop			;1833
	nop			;1834
	nop			;1835
	nop			;1836
	nop			;1837
	nop			;1838
	nop			;1839
	nop			;183a
	nop			;183b
	nop			;183c
	nop			;183d
	nop			;183e
	nop			;183f
	nop			;1840
	nop			;1841
	nop			;1842
	nop			;1843
	nop			;1844
	nop			;1845
	nop			;1846
	nop			;1847
	nop			;1848
	nop			;1849
	nop			;184a
	nop			;184b
	nop			;184c
	nop			;184d
	nop			;184e
	nop			;184f
	nop			;1850
	nop			;1851
	nop			;1852
	nop			;1853
	nop			;1854
	nop			;1855
	nop			;1856
	nop			;1857
	nop			;1858
	nop			;1859
	nop			;185a
	nop			;185b
	nop			;185c
	nop			;185d
	nop			;185e
	nop			;185f
	nop			;1860
	nop			;1861
	nop			;1862
	nop			;1863
	nop			;1864
	nop			;1865
	nop			;1866
	nop			;1867
	nop			;1868
	nop			;1869
l186ah:
	nop			;186a
	nop			;186b
	nop			;186c
	nop			;186d
sub_186eh:
	nop			;186e
	nop			;186f
	nop			;1870
	nop			;1871
	nop			;1872
	nop			;1873
sub_1874h:
	nop			;1874
	nop			;1875
	nop			;1876
	nop			;1877
	nop			;1878
	nop			;1879
	nop			;187a
	nop			;187b
	nop			;187c
	nop			;187d
	nop			;187e
	nop			;187f
	nop			;1880
	nop			;1881
	nop			;1882
	nop			;1883
	nop			;1884
	nop			;1885
	nop			;1886
	nop			;1887
	nop			;1888
	nop			;1889
	nop			;188a
	nop			;188b
	nop			;188c
	nop			;188d
	nop			;188e
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
	nop			;18a0
	nop			;18a1
	nop			;18a2
	nop			;18a3
	nop			;18a4
	nop			;18a5
	nop			;18a6
	nop			;18a7
	nop			;18a8
	nop			;18a9
	nop			;18aa
	nop			;18ab
	nop			;18ac
	nop			;18ad
	nop			;18ae
	nop			;18af
	nop			;18b0
	nop			;18b1
	nop			;18b2
	nop			;18b3
	nop			;18b4
	nop			;18b5
	nop			;18b6
	nop			;18b7
	nop			;18b8
	nop			;18b9
	nop			;18ba
	nop			;18bb
	nop			;18bc
	nop			;18bd
	nop			;18be
l18bfh:
	nop			;18bf
	nop			;18c0
	nop			;18c1
	nop			;18c2
	nop			;18c3
	nop			;18c4
	nop			;18c5
	nop			;18c6
	nop			;18c7
	nop			;18c8
	nop			;18c9
	nop			;18ca
	nop			;18cb
	nop			;18cc
	nop			;18cd
	nop			;18ce
	nop			;18cf
	nop			;18d0
	nop			;18d1
	nop			;18d2
	nop			;18d3
	nop			;18d4
	nop			;18d5
	nop			;18d6
	nop			;18d7
	nop			;18d8
	nop			;18d9
	nop			;18da
	nop			;18db
	nop			;18dc
	nop			;18dd
	nop			;18de
	nop			;18df
	nop			;18e0
	nop			;18e1
	nop			;18e2
	nop			;18e3
	nop			;18e4
	nop			;18e5
	nop			;18e6
	nop			;18e7
	nop			;18e8
	nop			;18e9
	nop			;18ea
	nop			;18eb
	nop			;18ec
	nop			;18ed
	nop			;18ee
	nop			;18ef
	nop			;18f0
	nop			;18f1
	nop			;18f2
	nop			;18f3
	nop			;18f4
	nop			;18f5
	nop			;18f6
	nop			;18f7
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
	nop			;1903
	nop			;1904
	nop			;1905
	nop			;1906
	nop			;1907
	nop			;1908
	nop			;1909
	nop			;190a
	nop			;190b
	nop			;190c
	nop			;190d
	nop			;190e
	nop			;190f
	nop			;1910
	nop			;1911
	nop			;1912
	nop			;1913
	nop			;1914
	nop			;1915
	nop			;1916
	nop			;1917
	nop			;1918
	nop			;1919
	nop			;191a
	nop			;191b
	nop			;191c
	nop			;191d
	nop			;191e
	nop			;191f
	nop			;1920
	nop			;1921
	nop			;1922
	nop			;1923
	nop			;1924
	nop			;1925
	nop			;1926
	nop			;1927
	nop			;1928
	nop			;1929
	nop			;192a
	nop			;192b
	nop			;192c
	nop			;192d
	nop			;192e
	nop			;192f
	nop			;1930
	nop			;1931
	nop			;1932
	nop			;1933
	nop			;1934
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
	nop			;1953
	nop			;1954
	nop			;1955
	nop			;1956
	nop			;1957
	nop			;1958
	nop			;1959
	nop			;195a
	nop			;195b
	nop			;195c
	nop			;195d
	nop			;195e
	nop			;195f
	nop			;1960
	nop			;1961
	nop			;1962
	nop			;1963
	nop			;1964
	nop			;1965
sub_1966h:
	ld a,(l155fh)		;1966
	and 01fh		;1969
	ld h,000h		;196b
	ld l,a			;196d
	add hl,hl		;196e
	ld de,l1978h		;196f
	add hl,de		;1972
	ld a,(hl)		;1973
	inc hl			;1974
	ld h,(hl)		;1975
	ld l,a			;1976
	jp (hl)			;1977
l1978h:
	cp b			;1978
	add hl,de		;1979
	or 019h			;197a
	sub l			;197c
	dec e			;197d
	sbc a,a			;197e
	dec e			;197f
	push hl			;1980
	add hl,de		;1981
	push hl			;1982
	add hl,de		;1983
	defb 0edh ;next byte illegal after ed	;1984
	dec e			;1985
	defb 0edh ;next byte illegal after ed	;1986
	dec e			;1987
	dec b			;1988
	dec e			;1989
	dec de			;198a
	inc e			;198b
	ld l,b			;198c
	inc e			;198d
	push hl			;198e
	add hl,de		;198f
	push hl			;1990
	add hl,de		;1991
	push hl			;1992
	add hl,de		;1993
	adc a,l			;1994
	rra			;1995
	and 019h		;1996
	push hl			;1998
	add hl,de		;1999
	push hl			;199a
	add hl,de		;199b
	push hl			;199c
	add hl,de		;199d
	push hl			;199e
	add hl,de		;199f
	push hl			;19a0
	add hl,de		;19a1
	push hl			;19a2
	add hl,de		;19a3
	push hl			;19a4
	add hl,de		;19a5
	ret nc			;19a6
	inc e			;19a7
	ld c,c			;19a8
	dec e			;19a9
	ld b,h			;19aa
	inc e			;19ab
	sbc a,(hl)		;19ac
	inc e			;19ad
	push hl			;19ae
	add hl,de		;19af
	push hl			;19b0
	add hl,de		;19b1
	push hl			;19b2
	add hl,de		;19b3
	push hl			;19b4
	add hl,de		;19b5
	push hl			;19b6
	add hl,de		;19b7
	ld a,(l155eh)		;19b8
	ld (l20beh),a		;19bb
	xor a			;19be
	ld (l20bbh),a		;19bf
	ld hl,00000h		;19c2
	ld bc,l0800h		;19c5
	ld de,00020h		;19c8
	call sub_1e80h		;19cb
	ld hl,00000h		;19ce
	ld a,00ch		;19d1
	out (01ch),a		;19d3
	ld a,h			;19d5
	out (01dh),a		;19d6
	ld a,00dh		;19d8
	out (01ch),a		;19da
	ld a,l			;19dc
	out (01dh),a		;19dd
	ld (l20b9h),hl		;19df
	call sub_2018h		;19e2
	ret			;19e5
	ld a,(l20beh)		;19e6
	ld (l155eh),a		;19e9
	ld a,050h		;19ec
	ld (l155fh),a		;19ee
	xor a			;19f1
	ld (l1561h),a		;19f2
	ret			;19f5
	ld hl,(l1562h)		;19f6
	ld (l20bch),hl		;19f9
	ld a,00ah		;19fc
	out (01ch),a		;19fe
	ld a,h			;1a00
	out (01dh),a		;1a01
	ld a,00bh		;1a03
	out (01ch),a		;1a05
	ld a,l			;1a07
	out (01dh),a		;1a08
	ret			;1a0a
l1a0bh:
	ld bc,l0106h+2		;1a0b
	ld bc,l0100h+1		;1a0e
	ld bc,l0100h		;1a11
	ld a,(bc)		;1a14
	ld bc,l0100h+1		;1a15
	ld bc,l0201h		;1a18
	ld bc,l0100h+1		;1a1b
	ld bc,l0100h+1		;1a1e
	ld bc,l0100h+1		;1a21
	ld bc,l0100h+1		;1a24
	ld bc,l0100h+1		;1a27
	ld bc,l0100h+1		;1a2a
	ld bc,l0100h+1		;1a2d
	ld bc,l0100h+1		;1a30
	ld bc,l0100h+1		;1a33
	ld bc,l0100h+1		;1a36
	ld bc,l0100h+1		;1a39
	ld bc,l0100h+1		;1a3c
	ld bc,l0100h+1		;1a3f
	ld bc,l0100h+1		;1a42
	ld bc,l0100h+1		;1a45
	ld bc,l0100h+1		;1a48
	ld bc,l0100h+1		;1a4b
	ld bc,l0100h+1		;1a4e
	ld bc,l0100h+1		;1a51
	ld bc,l0100h+1		;1a54
	ld bc,l0100h+1		;1a57
	ld bc,l0100h+1		;1a5a
	ld bc,l0100h+1		;1a5d
	ld bc,l0100h+1		;1a60
	ld bc,l0100h+1		;1a63
	ld bc,l0100h+1		;1a66
	ld bc,l0100h+1		;1a69
	ld bc,l0100h+1		;1a6c
	ld bc,l0100h+1		;1a6f
	ld bc,l0100h+1		;1a72
	ld bc,l0100h+1		;1a75
	ld bc,l0100h+1		;1a78
	ld bc,l0100h+1		;1a7b
	ld bc,l0100h+1		;1a7e
	add hl,bc		;1a81
	ld bc,l0103h		;1a82
	ld bc,l0100h+1		;1a85
	ld bc,l010bh		;1a88
	ld bc,l010ch		;1a8b
	ld bc,l0100h+1		;1a8e
	ld bc,l0104h		;1a91
	ld c,001h		;1a94
	ld bc,l0100h+1		;1a96
	ld bc,l0106h		;1a99
	ld bc,l0100h+1		;1a9c
	ld bc,l0100h+1		;1a9f
	ld bc,l0100h+1		;1aa2
	ld bc,l0100h+1		;1aa5
	ld bc,l0100h+1		;1aa8
	ld bc,l0100h+1		;1aab
	ld bc,l0100h+1		;1aae
	ld bc,l0100h+1		;1ab1
	ld bc,l0100h+1		;1ab4
	ld bc,l0100h+1		;1ab7
	ld bc,l0100h+1		;1aba
	ld bc,l0100h+1		;1abd
	ld bc,l0100h+1		;1ac0
	ld bc,l0100h+1		;1ac3
	ld bc,l0100h+1		;1ac6
	ld bc,l0100h+1		;1ac9
	ld bc,l0100h+1		;1acc
	ld bc,l0100h+1		;1acf
	ld bc,l0100h+1		;1ad2
	ld bc,l0100h+1		;1ad5
	ld bc,l0100h+1		;1ad8
	ld bc,l0100h+1		;1adb
	ld bc,l0100h+1		;1ade
	ld bc,l0100h+1		;1ae1
	ld bc,l0100h+1		;1ae4
	ld bc,l0100h+1		;1ae7
	ld bc,l0100h+1		;1aea
	ld bc,l0100h+1		;1aed
	ld bc,l0100h+1		;1af0
	ld bc,l0100h+1		;1af3
	ld bc,l0100h+1		;1af6
	ld bc,00501h		;1af9
	ld bc,l0100h+1		;1afc
	ld bc,l0d01h		;1aff
	ld bc,l0106h+1		;1b02
	ld bc,l0100h+1		;1b05
	ld bc,l010fh		;1b08
l1b0bh:
	rlca			;1b0b
	ld (hl),b		;1b0c
	rrca			;1b0d
	ld a,b			;1b0e
	add a,a			;1b0f
	ret p			;1b10
	adc a,a			;1b11
	ret m			;1b12
	ld bc,l0976h		;1b13
	ld a,(hl)		;1b16
	add a,c			;1b17
	or 089h			;1b18
	cp 020h			;1b1a
	ld c,a			;1b1c
	ld c,a			;1b1d
	ld c,b			;1b1e
	ld b,h			;1b1f
	ld b,e			;1b20
	ld d,e			;1b21
	ld hl,(l4f2ah)		;1b22
	ld c,a			;1b25
	ld l,a			;1b26
	ld l,a			;1b27
	ld l,h			;1b28
	ld l,h			;1b29
	ld l,a			;1b2a
	ex af,af'		;1b2b
	ld a,(bc)		;1b2c
	nop			;1b2d
	ld hl,l531eh		;1b2e
	or b			;1b31
	nop			;1b32
	ld a,a			;1b33
	dec bc			;1b34
	ex af,af'		;1b35
	ld a,(bc)		;1b36
	cp b			;1b37
	dec l			;1b38
	ld a,a			;1b39
	dec bc			;1b3a
	jr nz,l1b5eh		;1b3b
	ld (02423h),hl		;1b3d
	dec h			;1b40
	ld h,027h		;1b41
	jr z,l1b6eh		;1b43
	ld hl,(l2c2bh)		;1b45
	dec l			;1b48
	ld l,02fh		;1b49
	jr nc,l1b7eh		;1b4b
	ld (l3433h),a		;1b4d
	dec (hl)		;1b50
	ld (hl),037h		;1b51
	jr c,l1b8eh		;1b53
	ld a,(l3c3bh)		;1b55
	dec a			;1b58
	ld a,03fh		;1b59
	ld b,b			;1b5b
	ld b,c			;1b5c
	ld b,d			;1b5d
l1b5eh:
	ld b,e			;1b5e
	ld b,h			;1b5f
	ld b,l			;1b60
	ld b,(hl)		;1b61
	ld b,a			;1b62
	ld c,b			;1b63
	ld c,c			;1b64
	ld c,d			;1b65
	ld c,e			;1b66
	ld c,h			;1b67
	ld c,l			;1b68
	ld c,(hl)		;1b69
	ld c,a			;1b6a
	ld d,b			;1b6b
	ld d,c			;1b6c
	ld d,d			;1b6d
l1b6eh:
	ld d,e			;1b6e
	ld d,h			;1b6f
	ld d,l			;1b70
	ld d,(hl)		;1b71
	ld d,a			;1b72
	ld e,b			;1b73
	ld e,c			;1b74
	ld e,d			;1b75
	ld e,e			;1b76
	ld e,h			;1b77
	ld e,l			;1b78
	ld e,(hl)		;1b79
	ld e,a			;1b7a
	ld h,b			;1b7b
	ld h,c			;1b7c
	ld h,d			;1b7d
l1b7eh:
	ld h,e			;1b7e
	ld h,h			;1b7f
	ld h,l			;1b80
	ld h,(hl)		;1b81
	ld h,a			;1b82
	ld l,b			;1b83
	ld l,c			;1b84
	ld l,d			;1b85
	ld l,e			;1b86
	ld l,h			;1b87
	ld l,l			;1b88
	ld l,(hl)		;1b89
	ld l,a			;1b8a
	ld (hl),b		;1b8b
	ld (hl),c		;1b8c
	ld (hl),d		;1b8d
l1b8eh:
	ld (hl),e		;1b8e
	ld (hl),h		;1b8f
	ld (hl),l		;1b90
	halt			;1b91
	ld (hl),a		;1b92
	ld a,b			;1b93
	ld a,c			;1b94
	ld a,d			;1b95
	ld a,e			;1b96
	ld a,h			;1b97
	ld a,l			;1b98
	ld a,(hl)		;1b99
	ld a,a			;1b9a
	ld h,e			;1b9b
	ld (hl),l		;1b9c
	ld h,l			;1b9d
	ld h,c			;1b9e
	ld h,c			;1b9f
	ld h,c			;1ba0
	ld h,c			;1ba1
	ld h,e			;1ba2
	ld h,l			;1ba3
	ld h,l			;1ba4
	ld h,l			;1ba5
	ld l,c			;1ba6
	ld l,c			;1ba7
	ld l,c			;1ba8
	ld b,c			;1ba9
	ld b,c			;1baa
	ld b,l			;1bab
	ld b,c			;1bac
	ld b,c			;1bad
	ld l,a			;1bae
	ld l,a			;1baf
	ld h,c			;1bb0
	ld (hl),l		;1bb1
	ld (hl),l		;1bb2
	ld a,c			;1bb3
	ld c,a			;1bb4
	ld d,l			;1bb5
	ld h,e			;1bb6
	ld c,h			;1bb7
	ld e,c			;1bb8
	ld (hl),b		;1bb9
	ld h,(hl)		;1bba
	ld h,c			;1bbb
	ld l,c			;1bbc
	ld l,a			;1bbd
	ld (hl),l		;1bbe
	ld l,(hl)		;1bbf
	ld c,(hl)		;1bc0
	ld h,c			;1bc1
	ld l,a			;1bc2
	ccf			;1bc3
	xor h			;1bc4
	sbc a,h			;1bc5
	ld (l2134h),a		;1bc6
	inc a			;1bc9
	ld a,0e6h		;1bca
	and 0e6h		;1bcc
	nop			;1bce
	inc d			;1bcf
	inc d			;1bd0
	inc d			;1bd1
	inc bc			;1bd2
	inc bc			;1bd3
	inc d			;1bd4
	nop			;1bd5
	inc bc			;1bd6
	inc b			;1bd7
	inc b			;1bd8
	inc b			;1bd9
	inc bc			;1bda
	dec b			;1bdb
	dec d			;1bdc
	inc de			;1bdd
	ld d,02dh		;1bde
	ld bc,l1616h		;1be0
	dec b			;1be3
	ld b,015h		;1be4
	inc de			;1be6
	ld d,02dh		;1be7
	ld bc,l1515h		;1be9
	inc de			;1bec
	inc de			;1bed
	dec b			;1bee
	dec b			;1bef
	ld b,006h		;1bf0
	ld bc,l0401h		;1bf2
	ld b,009h		;1bf5
	ret nz			;1bf7
	adc a,d			;1bf8
	push de			;1bf9
	adc a,a			;1bfa
	ld h,c			;1bfb
	ld h,d			;1bfc
	ld h,a			;1bfd
	ld (hl),b		;1bfe
	ld d,e			;1bff
	ld (hl),e		;1c00
	ld l,l			;1c01
	ld (hl),h		;1c02
	ld d,b			;1c03
	ld d,h			;1c04
	ld c,a			;1c05
	ld h,h			;1c06
	ccf			;1c07
	ld c,a			;1c08
	ld b,l			;1c09
	ccf			;1c0a
	dec a			;1c0b
	rlca			;1c0c
	ld a,03ch		;1c0d
	ccf			;1c0f
	ccf			;1c10
	cpl			;1c11
	dec a			;1c12
	ld l,02eh		;1c13
	ld l,03fh		;1c15
	ld l,b			;1c17
	ld (02094h),a		;1c18
	ld hl,(l1560h)		;1c1b
	ld h,000h		;1c1e
	ld bc,l1a0bh		;1c20
	add hl,bc		;1c23
	ld d,(hl)		;1c24
	ld hl,(l155eh)		;1c25
	ld h,000h		;1c28
	ld bc,01b1bh		;1c2a
	add hl,bc		;1c2d
	ld e,(hl)		;1c2e
	ld hl,(l20b7h)		;1c2f
	ld bc,(l1562h)		;1c32
	call sub_1e80h		;1c36
sub_1c39h:
	ld hl,(l20b7h)		;1c39
	ld a,h			;1c3c
	and 007h		;1c3d
	ld h,a			;1c3f
	call sub_1f74h		;1c40
	ret			;1c43
	ld hl,(l1560h)		;1c44
	ld h,000h		;1c47
	ld bc,l1a0bh		;1c49
	add hl,bc		;1c4c
	ld d,(hl)		;1c4d
	ld hl,(l155eh)		;1c4e
	ld h,000h		;1c51
	ld bc,01b1bh		;1c53
	add hl,bc		;1c56
	ld e,(hl)		;1c57
	push de			;1c58
	call sub_1d87h		;1c59
	pop de			;1c5c
	ld bc,(l1562h)		;1c5d
	call sub_1e80h		;1c61
	call sub_1c39h		;1c64
	ret			;1c67
	ld hl,(l155eh)		;1c68
	ld h,000h		;1c6b
	ld bc,01b1bh		;1c6d
	add hl,bc		;1c70
	ld e,(hl)		;1c71
	ld bc,(l1562h)		;1c72
	ld hl,(l20b7h)		;1c76
	ld a,h			;1c79
	and 007h		;1c7a
	ld h,a			;1c7c
sub_1c7dh:
	push hl			;1c7d
	call sub_1f74h		;1c7e
l1c81h:
	ld a,01fh		;1c81
	out (01ch),a		;1c83
l1c85h:
	in a,(01ch)		;1c85
	or a			;1c87
	jp p,l1c85h		;1c88
	ld a,e			;1c8b
	out (01fh),a		;1c8c
	inc hl			;1c8e
	bit 3,h			;1c8f
	call nz,sub_1f70h	;1c91
	dec bc			;1c94
	ld a,b			;1c95
	or c			;1c96
	jr nz,l1c81h		;1c97
	pop hl			;1c99
	call sub_1f74h		;1c9a
	ret			;1c9d
	ld hl,(l155eh)		;1c9e
	ld h,000h		;1ca1
	ld bc,01b1bh		;1ca3
	add hl,bc		;1ca6
	ld e,(hl)		;1ca7
	push de			;1ca8
	call sub_1d87h		;1ca9
	pop de			;1cac
	call sub_1f74h		;1cad
	ld bc,(l1562h)		;1cb0
l1cb4h:
	ld a,01fh		;1cb4
	out (01ch),a		;1cb6
l1cb8h:
	in a,(01ch)		;1cb8
	or a			;1cba
	jp p,l1cb8h		;1cbb
	ld a,e			;1cbe
	out (01fh),a		;1cbf
	inc hl			;1cc1
	bit 3,h			;1cc2
	call nz,sub_1f70h	;1cc4
	dec bc			;1cc7
	ld a,b			;1cc8
	or c			;1cc9
	jr nz,l1cb4h		;1cca
	call sub_1c39h		;1ccc
	ret			;1ccf
	ld hl,(l155eh)		;1cd0
	ld h,000h		;1cd3
	ld bc,l1a0bh		;1cd5
	add hl,bc		;1cd8
	ld e,(hl)		;1cd9
	push de			;1cda
	call sub_1d87h		;1cdb
	pop de			;1cde
	inc hl			;1cdf
	set 3,h			;1ce0
	call sub_1f74h		;1ce2
	ld bc,(l1562h)		;1ce5
l1ce9h:
	ld a,01fh		;1ce9
l1cebh:
	out (01ch),a		;1ceb
l1cedh:
	in a,(01ch)		;1ced
	or a			;1cef
	jp p,l1cedh		;1cf0
	ld a,e			;1cf3
	out (01fh),a		;1cf4
	inc hl			;1cf6
	bit 3,h			;1cf7
	call z,sub_1f70h	;1cf9
	dec bc			;1cfc
	ld a,b			;1cfd
	or c			;1cfe
	jr nz,l1ce9h		;1cff
	call sub_1c39h		;1d01
	ret			;1d04
	ld hl,(l20b7h)		;1d05
	ld a,h			;1d08
	and 007h		;1d09
	ld h,a			;1d0b
	push hl			;1d0c
	inc hl			;1d0d
	set 3,h			;1d0e
	call sub_1f74h		;1d10
	ld a,01fh		;1d13
	out (01ch),a		;1d15
l1d17h:
	in a,(01ch)		;1d17
	or a			;1d19
	jp p,l1d17h		;1d1a
	in a,(01fh)		;1d1d
	and 00fh		;1d1f
	ld l,a			;1d21
	ld h,000h		;1d22
	ld de,l1b0bh		;1d24
	add hl,de		;1d27
	ld a,(hl)		;1d28
	ld (l155fh),a		;1d29
	pop hl			;1d2c
	push hl			;1d2d
	call sub_1f74h		;1d2e
	ld a,01fh		;1d31
	out (01ch),a		;1d33
l1d35h:
	in a,(01ch)		;1d35
	or a			;1d37
	jp p,l1d35h		;1d38
	in a,(01fh)		;1d3b
	ld (l155eh),a		;1d3d
	xor a			;1d40
	ld (l1561h),a		;1d41
	pop hl			;1d44
	call sub_1f74h		;1d45
	ret			;1d48
	call sub_1d87h		;1d49
	push hl			;1d4c
	inc hl			;1d4d
	set 3,h			;1d4e
	call sub_1f74h		;1d50
	ld a,01fh		;1d53
	out (01ch),a		;1d55
l1d57h:
	in a,(01ch)		;1d57
	or a			;1d59
	jp p,l1d57h		;1d5a
	in a,(01fh)		;1d5d
	and 00fh		;1d5f
	ld l,a			;1d61
	ld h,000h		;1d62
	ld de,l1b0bh		;1d64
	add hl,de		;1d67
	ld a,(hl)		;1d68
	ld (l155fh),a		;1d69
	pop hl			;1d6c
	call sub_1f74h		;1d6d
	ld a,01fh		;1d70
	out (01ch),a		;1d72
l1d74h:
	in a,(01ch)		;1d74
	or a			;1d76
	jp p,l1d74h		;1d77
	in a,(01fh)		;1d7a
	ld (l155eh),a		;1d7c
	xor a			;1d7f
	ld (l1561h),a		;1d80
	call sub_1c39h		;1d83
	ret			;1d86
sub_1d87h:
	ld hl,(l1564h)		;1d87
	ld a,h			;1d8a
	ld h,l			;1d8b
	ld l,a			;1d8c
	call sub_204ch		;1d8d
	ld a,h			;1d90
	and 007h		;1d91
	ld h,a			;1d93
	ret			;1d94
	ld hl,(l1564h)		;1d95
	ld a,h			;1d98
	ld h,l			;1d99
	ld l,a			;1d9a
	call sub_2018h		;1d9b
	ret			;1d9e
	ld a,(l20b6h)		;1d9f
	ld (l1564h),a		;1da2
	ld a,(l20b5h)		;1da5
	ld (l1565h),a		;1da8
	ld hl,(l20bch)		;1dab
	ld (l1562h),hl		;1dae
	ret			;1db1
sub_1db2h:
	ld hl,00050h		;1db2
	ld a,(l155fh)		;1db5
	and 00fh		;1db8
	cp 007h			;1dba
	jr nz,l1dc1h		;1dbc
	ld hl,0ffb0h		;1dbe
l1dc1h:
	ld (l20bfh),hl		;1dc1
	ld a,(l1565h)		;1dc4
	cp 019h			;1dc7
	jr c,l1dcdh		;1dc9
	ld a,018h		;1dcb
l1dcdh:
	ld hl,l1563h		;1dcd
	sub (hl)		;1dd0
	ld b,a			;1dd1
	cp 019h			;1dd2
	ret nc			;1dd4
	ld a,(l1564h)		;1dd5
	cp 050h			;1dd8
	jr c,l1ddeh		;1dda
	ld a,04fh		;1ddc
l1ddeh:
	ld hl,l1562h		;1dde
	sub (hl)		;1de1
	ld c,a			;1de2
	cp 050h			;1de3
	ret nc			;1de5
	ld hl,l155eh		;1de6
	ld a,b			;1de9
	cp (hl)			;1dea
	ccf			;1deb
	ret			;1dec
	call sub_1db2h		;1ded
	ret nc			;1df0
	push bc			;1df1
	ld hl,(l1562h)		;1df2
	ld a,(l155fh)		;1df5
	and 00fh		;1df8
	cp 006h			;1dfa
	jr z,l1e01h		;1dfc
	ld hl,(l1564h)		;1dfe
l1e01h:
	ld a,h			;1e01
	ld h,l			;1e02
	ld l,a			;1e03
	call sub_204ch		;1e04
	pop bc			;1e07
	ld a,(l155eh)		;1e08
	or a			;1e0b
	jr nz,l1e12h		;1e0c
	ld a,b			;1e0e
	inc a			;1e0f
	jr l1e43h		;1e10
l1e12h:
	ld d,h			;1e12
	ld e,l			;1e13
	push bc			;1e14
	ld bc,(l20bfh)		;1e15
	ld a,(l155eh)		;1e19
l1e1ch:
	add hl,bc		;1e1c
	dec a			;1e1d
	jr nz,l1e1ch		;1e1e
	pop bc			;1e20
	ld a,(l155eh)		;1e21
	neg			;1e24
	add a,b			;1e26
	inc a			;1e27
	jr z,l1e3fh		;1e28
	ld b,a			;1e2a
l1e2bh:
	push bc			;1e2b
	push hl			;1e2c
	push de			;1e2d
	call sub_1ec2h		;1e2e
	pop de			;1e31
	pop hl			;1e32
	ld bc,(l20bfh)		;1e33
	add hl,bc		;1e37
	ex de,hl		;1e38
	add hl,bc		;1e39
	ex de,hl		;1e3a
	pop bc			;1e3b
	dec b			;1e3c
	jr nz,l1e2bh		;1e3d
l1e3fh:
	ld a,(l155eh)		;1e3f
	ex de,hl		;1e42
l1e43h:
	push af			;1e43
	push bc			;1e44
	push hl			;1e45
	call sub_1e5fh		;1e46
	pop hl			;1e49
	ld bc,(l20bfh)		;1e4a
	add hl,bc		;1e4e
	pop bc			;1e4f
	pop af			;1e50
	dec a			;1e51
l1e52h:
	jr nz,l1e43h		;1e52
	ld hl,(l20b7h)		;1e54
	ld a,h			;1e57
	and 007h		;1e58
	ld h,a			;1e5a
	call sub_1f74h		;1e5b
	ret			;1e5e
sub_1e5fh:
	push hl			;1e5f
	ld hl,(l1561h)		;1e60
	ld h,000h		;1e63
	ld de,l1a0bh		;1e65
	add hl,de		;1e68
	ld d,(hl)		;1e69
	ld e,020h		;1e6a
	ld b,000h		;1e6c
	inc c			;1e6e
	pop hl			;1e6f
	ld a,(l155fh)		;1e70
	and 00fh		;1e73
	cp 007h			;1e75
	jr nz,l1e7ch		;1e77
	or a			;1e79
	sbc hl,bc		;1e7a
l1e7ch:
	call sub_1e80h		;1e7c
	ret			;1e7f
sub_1e80h:
	ld a,h			;1e80
	and 007h		;1e81
	ld h,a			;1e83
	push hl			;1e84
	push bc			;1e85
	inc hl			;1e86
	set 3,h			;1e87
l1e89h:
	call sub_1f74h		;1e89
l1e8ch:
	ld a,01fh		;1e8c
	out (01ch),a		;1e8e
l1e90h:
	in a,(01ch)		;1e90
	or a			;1e92
	jp p,l1e90h		;1e93
	ld a,d			;1e96
	out (01fh),a		;1e97
	inc hl			;1e99
	bit 3,h			;1e9a
	call z,sub_1f70h	;1e9c
	dec bc			;1e9f
	ld a,b			;1ea0
	or c			;1ea1
	jr nz,l1e8ch		;1ea2
	pop bc			;1ea4
	pop hl			;1ea5
	call sub_1f74h		;1ea6
l1ea9h:
	ld a,01fh		;1ea9
	out (01ch),a		;1eab
l1eadh:
	in a,(01ch)		;1ead
	or a			;1eaf
	jp p,l1eadh		;1eb0
	ld a,e			;1eb3
	out (01fh),a		;1eb4
	inc hl			;1eb6
	bit 3,h			;1eb7
	call nz,sub_1f70h	;1eb9
	dec bc			;1ebc
	ld a,b			;1ebd
	or c			;1ebe
	jr nz,l1ea9h		;1ebf
	ret			;1ec1
sub_1ec2h:
	ld b,000h		;1ec2
	inc c			;1ec4
l1ec5h:
	ld a,(l155fh)		;1ec5
	and 00fh		;1ec8
	cp 007h			;1eca
	jr nz,l1ed6h		;1ecc
	or a			;1ece
	sbc hl,bc		;1ecf
	ex de,hl		;1ed1
	or a			;1ed2
	sbc hl,bc		;1ed3
	ex de,hl		;1ed5
l1ed6h:
	ld b,c			;1ed6
	ld a,h			;1ed7
	and 007h		;1ed8
	ld h,a			;1eda
l1edbh:
	ld a,d			;1edb
	and 007h		;1edc
	ld d,a			;1ede
	push hl			;1edf
	push de			;1ee0
	push bc			;1ee1
	inc hl			;1ee2
	set 3,h			;1ee3
	call sub_1f74h		;1ee5
sub_1ee8h:
	ld ix,l20c1h		;1ee8
l1eech:
	ld a,01fh		;1eec
	out (01ch),a		;1eee
l1ef0h:
	in a,(01ch)		;1ef0
	or a			;1ef2
	jp p,l1ef0h		;1ef3
	in a,(01fh)		;1ef6
	ld (ix+000h),a		;1ef8
	inc ix			;1efb
	inc hl			;1efd
	bit 3,h			;1efe
	call z,sub_1f70h	;1f00
	dec c			;1f03
	jr nz,l1eech		;1f04
l1f06h:
	ex de,hl		;1f06
	inc hl			;1f07
	set 3,h			;1f08
	call sub_1f74h		;1f0a
	ld ix,l20c1h		;1f0d
l1f11h:
	ld a,01fh		;1f11
sub_1f13h:
	out (01ch),a		;1f13
l1f15h:
	in a,(01ch)		;1f15
	or a			;1f17
	jp p,l1f15h		;1f18
	ld a,(ix+000h)		;1f1b
	inc ix			;1f1e
	out (01fh),a		;1f20
	inc hl			;1f22
	bit 3,h			;1f23
	call z,sub_1f70h	;1f25
	djnz l1f11h		;1f28
	pop bc			;1f2a
	pop de			;1f2b
	pop hl			;1f2c
	call sub_1f74h		;1f2d
	ld ix,l20c1h		;1f30
l1f34h:
	ld a,01fh		;1f34
	out (01ch),a		;1f36
l1f38h:
	in a,(01ch)		;1f38
	or a			;1f3a
	jp p,l1f38h		;1f3b
	in a,(01fh)		;1f3e
	ld (ix+000h),a		;1f40
	inc ix			;1f43
	inc hl			;1f45
	bit 3,h			;1f46
	call nz,sub_1f70h	;1f48
	dec c			;1f4b
	jr nz,l1f34h		;1f4c
	ex de,hl		;1f4e
	call sub_1f74h		;1f4f
	ld ix,l20c1h		;1f52
l1f56h:
	ld a,01fh		;1f56
	out (01ch),a		;1f58
l1f5ah:
	in a,(01ch)		;1f5a
	or a			;1f5c
	jp p,l1f5ah		;1f5d
	ld a,(ix+000h)		;1f60
	inc ix			;1f63
	out (01fh),a		;1f65
	inc hl			;1f67
	bit 3,h			;1f68
	call nz,sub_1f70h	;1f6a
	djnz l1f56h		;1f6d
	ret			;1f6f
sub_1f70h:
	ld a,h			;1f70
	xor 008h		;1f71
	ld h,a			;1f73
sub_1f74h:
	ld a,01fh		;1f74
	out (01ch),a		;1f76
l1f78h:
	in a,(01ch)		;1f78
	or a			;1f7a
	jp p,l1f78h		;1f7b
	ld a,012h		;1f7e
	out (01ch),a		;1f80
	ld a,h			;1f82
	out (01dh),a		;1f83
	ld a,013h		;1f85
	out (01ch),a		;1f87
	ld a,l			;1f89
	out (01dh),a		;1f8a
	ret			;1f8c
	ld a,(l155eh)		;1f8d
	cp 007h			;1f90
	jp z,l1fedh		;1f92
	cp 008h			;1f95
	jp z,l1ff7h		;1f97
	cp 00ah			;1f9a
	jp z,l206eh		;1f9c
	cp 00dh			;1f9f
	jp z,l20adh		;1fa1
	ld h,000h		;1fa4
	ld l,a			;1fa6
	ld bc,01b1bh		;1fa7
	add hl,bc		;1faa
	ld a,01fh		;1fab
	out (01ch),a		;1fad
l1fafh:
	in a,(01ch)		;1faf
	or a			;1fb1
	jp p,l1fafh		;1fb2
	ld a,(hl)		;1fb5
	out (01fh),a		;1fb6
	ld a,(l20b6h)		;1fb8
	inc a			;1fbb
	cp 050h			;1fbc
	jr nc,l1fe6h		;1fbe
	ld (l20b6h),a		;1fc0
	ld hl,(l20b7h)		;1fc3
	ld a,h			;1fc6
	inc hl			;1fc7
	ld (l20b7h),hl		;1fc8
	xor h			;1fcb
	and 008h		;1fcc
	jr z,l1fd7h		;1fce
	ld hl,(l20b5h)		;1fd0
	call sub_2018h		;1fd3
	ret			;1fd6
l1fd7h:
	ld a,00eh		;1fd7
	out (01ch),a		;1fd9
	ld a,h			;1fdb
	out (01dh),a		;1fdc
	ld a,00fh		;1fde
	out (01ch),a		;1fe0
	ld a,l			;1fe2
	out (01dh),a		;1fe3
	ret			;1fe5
l1fe6h:
	xor a			;1fe6
	ld (l20b6h),a		;1fe7
	jp l206eh		;1fea
l1fedh:
	ld hl,(00001h)		;1fed
	ld de,00009h		;1ff0
	add hl,de		;1ff3
	ld c,007h		;1ff4
	jp (hl)			;1ff6
l1ff7h:
	ld de,0ff00h		;1ff7
	jr l2009h		;1ffa
	ld de,l0100h		;1ffc
	jr l2009h		;1fff
l2001h:
	ld de,000ffh		;2001
	jr l2009h		;2004
l2006h:
	ld de,00001h		;2006
l2009h:
	ld hl,(l20b5h)		;2009
sub_200ch:
	ld a,l			;200c
	add a,e			;200d
	cp 019h			;200e
	ret nc			;2010
	ld l,a			;2011
	ld a,h			;2012
	add a,d			;2013
	cp 050h			;2014
	ret nc			;2016
	ld h,a			;2017
sub_2018h:
	ld (l20b5h),hl		;2018
	call sub_204ch		;201b
	ld (l20b7h),hl		;201e
	ld a,01fh		;2021
	out (01ch),a		;2023
l2025h:
	in a,(01ch)		;2025
	or a			;2027
	jp p,l2025h		;2028
	ld a,00eh		;202b
	out (01ch),a		;202d
	ld a,h			;202f
	out (01dh),a		;2030
	ld a,00fh		;2032
	out (01ch),a		;2034
	ld a,l			;2036
	out (01dh),a		;2037
	ld a,h			;2039
	and 007h		;203a
	ld h,a			;203c
	ld a,012h		;203d
	out (01ch),a		;203f
	ld a,h			;2041
	out (01dh),a		;2042
	ld a,013h		;2044
	out (01ch),a		;2046
	ld a,l			;2048
	out (01dh),a		;2049
	ret			;204b
sub_204ch:
	ld b,000h		;204c
	ld c,h			;204e
	ld h,b			;204f
	add hl,hl		;2050
	add hl,hl		;2051
	add hl,hl		;2052
	add hl,hl		;2053
	ld d,h			;2054
	ld e,l			;2055
	add hl,hl		;2056
	add hl,hl		;2057
	add hl,de		;2058
	add hl,bc		;2059
	ex de,hl		;205a
	ld hl,(l20b9h)		;205b
	add hl,de		;205e
	ret			;205f
	ld a,(l20b5h)		;2060
	or a			;2063
	jr nz,l2001h		;2064
	ld de,0ffb0h		;2066
	ld bc,00000h		;2069
	jr l207ch		;206c
l206eh:
	ld a,(l20b5h)		;206e
	cp 018h			;2071
	jp nz,l2006h		;2073
	ld de,00050h		;2076
	ld bc,l0780h		;2079
l207ch:
	ld hl,(l20b9h)		;207c
	add hl,de		;207f
	ld a,h			;2080
	and 007h		;2081
	ld h,a			;2083
	ld (l20b9h),hl		;2084
	ld a,00ch		;2087
	out (01ch),a		;2089
	ld a,h			;208b
	out (01dh),a		;208c
	ld a,00dh		;208e
	out (01ch),a		;2090
	ld a,l			;2092
	out (01dh),a		;2093
	add hl,bc		;2095
	ld a,h			;2096
	and 007h		;2097
	ld h,a			;2099
	ld a,(l20bbh)		;209a
	ld d,a			;209d
	ld e,020h		;209e
	ld bc,00050h		;20a0
	call sub_1e80h		;20a3
	ld hl,(l20b5h)		;20a6
	call sub_2018h		;20a9
	ret			;20ac
l20adh:
	ld hl,(l20b5h)		;20ad
	ld h,000h		;20b0
	jp sub_2018h		;20b2
l20b5h:
	nop			;20b5
l20b6h:
	nop			;20b6
l20b7h:
	nop			;20b7
	nop			;20b8
l20b9h:
	nop			;20b9
	nop			;20ba
l20bbh:
	nop			;20bb
l20bch:
	nop			;20bc
	nop			;20bd
l20beh:
	nop			;20be
l20bfh:
	nop			;20bf
	nop			;20c0
l20c1h:
	nop			;20c1
	nop			;20c2
	nop			;20c3
	nop			;20c4
	nop			;20c5
	nop			;20c6
	nop			;20c7
	nop			;20c8
	nop			;20c9
	nop			;20ca
	nop			;20cb
	nop			;20cc
	nop			;20cd
	nop			;20ce
	nop			;20cf
	nop			;20d0
	nop			;20d1
	nop			;20d2
	nop			;20d3
	nop			;20d4
	nop			;20d5
	nop			;20d6
	nop			;20d7
	nop			;20d8
	nop			;20d9
	nop			;20da
	nop			;20db
	nop			;20dc
	nop			;20dd
	nop			;20de
	nop			;20df
	nop			;20e0
	nop			;20e1
	nop			;20e2
	nop			;20e3
	nop			;20e4
	nop			;20e5
	nop			;20e6
	nop			;20e7
	nop			;20e8
	nop			;20e9
	nop			;20ea
	nop			;20eb
	nop			;20ec
	nop			;20ed
	nop			;20ee
	nop			;20ef
	nop			;20f0
	nop			;20f1
	nop			;20f2
	nop			;20f3
	nop			;20f4
	nop			;20f5
	nop			;20f6
	nop			;20f7
	nop			;20f8
	nop			;20f9
	nop			;20fa
	nop			;20fb
	nop			;20fc
	nop			;20fd
	nop			;20fe
	nop			;20ff
	nop			;2100
	nop			;2101
	nop			;2102
	nop			;2103
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
sub_2111h:
	ld a,(ix+000h)		;2111
	or a			;2114
	jp z,l213dh		;2115
	dec a			;2118
	jp z,l21bch		;2119
	dec a			;211c
	jp z,l21c5h		;211d
	dec a			;2120
	jp z,l214fh		;2121
	dec a			;2124
	jp z,l243fh		;2125
	dec a			;2128
	jp z,l2168h		;2129
	ld (ix+008h),0ffh	;212c
sub_2130h:
	xor a			;2130
	ld (l265fh),a		;2131
l2134h:
	call sub_2428h		;2134
	ld a,010h		;2137
	ld (l2660h),a		;2139
	ret			;213c
l213dh:
	call sub_2219h		;213d
	ld (ix+008h),a		;2140
	ld a,(l265dh)		;2143
	and 080h		;2146
	ld (ix+006h),a		;2148
	call sub_2130h		;214b
	ret			;214e
l214fh:
	ld (ix+006h),006h	;214f
	ld (ix+007h),000h	;2153
	ld b,0c0h		;2157
	call sub_21ceh		;2159
	ld a,(l265dh)		;215c
	and 080h		;215f
	ld (ix+006h),a		;2161
	call sub_2130h		;2164
	ret			;2167
l2168h:
	ld (ix+006h),006h	;2168
	ld (ix+007h),000h	;216c
	ld de,000ffh		;2170
	ld bc,00000h		;2173
l2176h:
	push de			;2176
	push bc			;2177
	ld b,0c0h		;2178
	call sub_21ceh		;217a
	pop bc			;217d
	pop de			;217e
	ld a,(ix+008h)		;217f
	or a			;2182
	jr nz,l21b4h		;2183
	ld l,(ix+004h)		;2185
	ld h,(ix+005h)		;2188
	inc hl			;218b
	inc hl			;218c
	ld a,(hl)		;218d
	cp e			;218e
	jr nc,l2192h		;218f
	ld e,a			;2191
l2192h:
	cp d			;2192
	jr c,l2196h		;2193
	ld d,a			;2195
l2196h:
	ld a,b			;2196
	or a			;2197
	jr nz,l21a4h		;2198
	inc hl			;219a
	ld a,(hl)		;219b
	and 003h		;219c
	ld c,a			;219e
	ld hl,l21b8h		;219f
	add hl,bc		;21a2
l21a3h:
	ld b,(hl)		;21a3
l21a4h:
	djnz l2176h		;21a4
	ld (ix+004h),e		;21a6
	ld (ix+005h),d		;21a9
	ld a,(l265dh)		;21ac
	and 080h		;21af
	ld (ix+006h),a		;21b1
l21b4h:
	call sub_2130h		;21b4
	ret			;21b7
l21b8h:
	ld (hl),036h		;21b8
	ld e,00fh		;21ba
l21bch:
	ld b,088h		;21bc
	call sub_21ceh		;21be
	call sub_2130h		;21c1
	ret			;21c4
l21c5h:
	ld b,0a8h		;21c5
	call sub_21ceh		;21c7
	call sub_2130h		;21ca
	ret			;21cd
sub_21ceh:
	ld a,b			;21ce
	ld (l2661h),a		;21cf
	call sub_2219h		;21d2
	bit 7,a			;21d5
	jr nz,l2215h		;21d7
	ld a,(l2658h)		;21d9
	cp 0ffh			;21dc
	jr z,l21e5h		;21de
	cp (ix+002h)		;21e0
	jr z,l21eah		;21e3
l21e5h:
	call sub_22a9h		;21e5
l21e8h:
	jr nz,l2215h		;21e8
l21eah:
	ld a,00ah		;21ea
	ld (l2662h),a		;21ec
l21efh:
	di			;21ef
	ld a,(ix+003h)		;21f0
	out (012h),a		;21f3
	ld a,(ix+002h)		;21f5
	out (011h),a		;21f8
	ld a,(l2661h)		;21fa
	out (010h),a		;21fd
	call sub_2354h		;21ff
	ei			;2202
	and 0fdh		;2203
	jr z,l2215h		;2205
	push af			;2207
	call sub_23a1h		;2208
	pop bc			;220b
	jr nz,l2214h		;220c
	ld hl,l2662h		;220e
	dec (hl)		;2211
	jr nz,l21efh		;2212
l2214h:
	ld a,b			;2214
l2215h:
	ld (ix+008h),a		;2215
	ret			;2218
sub_2219h:
	ld a,(ix+001h)		;2219
	res 7,a			;221c
	cp 002h			;221e
	jr nc,l2276h		;2220
	ld b,000h		;2222
	ld c,a			;2224
	ld hl,l2657h		;2225
	sub (hl)		;2228
	push af			;2229
	ld d,000h		;222a
	ld e,(hl)		;222c
	ld (hl),c		;222d
	ld hl,l2659h		;222e
	add hl,de		;2231
	ld a,(l2658h)		;2232
	ld (hl),a		;2235
	ld de,00002h		;2236
	add hl,de		;2239
	ld a,(l265dh)		;223a
	ld (hl),a		;223d
	ld hl,l2659h		;223e
l2241h:
	add hl,bc		;2241
l2242h:
	ld a,(hl)		;2242
	ld (l2658h),a		;2243
	add hl,de		;2246
	ld a,(hl)		;2247
	ld (l265dh),a		;2248
	di			;224b
	and 020h		;224c
	ld b,a			;224e
	in a,(014h)		;224f
	and 0c8h		;2251
	inc c			;2253
	or c			;2254
	or b			;2255
	bit 7,(ix+001h)		;2256
	jr z,l225eh		;225a
	or 004h			;225c
l225eh:
	xor 017h		;225e
	out (014h),a		;2260
	ei			;2262
	pop af			;2263
	call nz,sub_2430h	;2264
	call sub_2428h		;2267
	bit 5,a			;226a
	ret nz			;226c
	call sub_227ah		;226d
	jr c,l2276h		;2270
	call sub_2428h		;2272
	ret			;2275
l2276h:
	ld a,080h		;2276
	or a			;2278
	ret			;2279
sub_227ah:
	in a,(011h)		;227a
	out (013h),a		;227c
	ld a,018h		;227e
	out (010h),a		;2280
	call sub_2428h		;2282
	ld c,a			;2285
	ld b,00ah		;2286
	ld hl,0b5b0h		;2288
l228bh:
	call sub_2296h		;228b
	ret c			;228e
	call sub_2296h		;228f
	ret c			;2292
	djnz l228bh		;2293
	ret			;2295
sub_2296h:
	call sub_2428h		;2296
	xor c			;2299
	and 002h		;229a
	jr nz,l22a5h		;229c
	dec hl			;229e
	ld a,h			;229f
	or l			;22a0
	jr nz,sub_2296h		;22a1
	scf			;22a3
	ret			;22a4
l22a5h:
	ld a,c			;22a5
	cpl			;22a6
	ld c,a			;22a7
	ret			;22a8
sub_22a9h:
	ld a,0ffh		;22a9
	ld (l2663h),a		;22ab
	ld a,(l2658h)		;22ae
	cp 0ffh			;22b1
	jr nz,l22bah		;22b3
	call sub_22d6h		;22b5
	jr nz,l22cdh		;22b8
l22bah:
	ld b,001h		;22ba
	call sub_22e3h		;22bc
	ret z			;22bf
	jr nc,l22c7h		;22c0
	call sub_22d6h		;22c2
	jr nz,l22cdh		;22c5
l22c7h:
	ld b,003h		;22c7
	call sub_22e3h		;22c9
	ret z			;22cc
l22cdh:
	ld a,0ffh		;22cd
	ld (l2658h),a		;22cf
	ld a,010h		;22d2
	or a			;22d4
	ret			;22d5
sub_22d6h:
	call sub_2428h		;22d6
	ld a,00bh		;22d9
	call sub_2414h		;22db
	xor 004h		;22de
	and 084h		;22e0
	ret			;22e2
sub_22e3h:
	push bc			;22e3
	ld a,(l2658h)		;22e4
	ld b,a			;22e7
	ld c,(ix+002h)		;22e8
	ld a,(l265fh)		;22eb
	or a			;22ee
	call nz,sub_2308h	;22ef
	call sub_2314h		;22f2
	call sub_232bh		;22f5
	pop bc			;22f8
	scf			;22f9
	ret nz			;22fa
	in a,(012h)		;22fb
	ld (l2658h),a		;22fd
	sub (ix+002h)		;2300
	ret z			;2303
	djnz sub_22e3h		;2304
	or a			;2306
	ret			;2307
sub_2308h:
	ld a,b			;2308
	sub c			;2309
	jr c,l230fh		;230a
	add a,b			;230c
	ld b,a			;230d
	ret			;230e
l230fh:
	neg			;230f
	add a,c			;2311
	ld c,a			;2312
	ret			;2313
sub_2314h:
	ld a,b			;2314
	out (011h),a		;2315
	ld a,c			;2317
	out (013h),a		;2318
	ld a,(l265eh)		;231a
	and 003h		;231d
	or 018h			;231f
	call sub_2414h		;2321
	ld hl,0000fh		;2324
	call sub_2433h		;2327
	ret			;232a
sub_232bh:
	ld a,0c0h		;232b
	call sub_23f9h		;232d
	and 098h		;2330
	ret z			;2332
	ld a,(l265dh)		;2333
	cpl			;2336
	ld (l265dh),a		;2337
	and 020h		;233a
	ld b,a			;233c
	di			;233d
	in a,(014h)		;233e
	and 0dfh		;2340
	or b			;2342
	out (014h),a		;2343
	ei			;2345
	ld hl,00032h		;2346
	call sub_2433h		;2349
	ld a,0c0h		;234c
	call sub_23f9h		;234e
	and 098h		;2351
	ret			;2353
sub_2354h:
	ld hl,(00066h)		;2354
	push hl			;2357
	ld hl,(00068h)		;2358
	push hl			;235b
	ld hl,0a2edh		;235c
	and 020h		;235f
	jr z,l2364h		;2361
	inc h			;2363
l2364h:
	ld (00066h),hl		;2364
	ld hl,00068h		;2367
	ld (hl),0c9h		;236a
	ld c,013h		;236c
	ld l,(ix+004h)		;236e
	ld h,(ix+005h)		;2371
	ld b,(ix+006h)		;2374
	ld a,(ix+007h)		;2377
	srl a			;237a
	jr z,l238eh		;237c
	srl a			;237e
	jr z,l238ah		;2380
l2382h:
	halt			;2382
	jp nz,l2382h		;2383
l2386h:
	halt			;2386
	jp nz,l2386h		;2387
l238ah:
	halt			;238a
	jp nz,l238ah		;238b
l238eh:
	halt			;238e
	jp nz,l238eh		;238f
l2392h:
	in a,(010h)		;2392
	bit 0,a			;2394
	jr nz,l2392h		;2396
	pop hl			;2398
	ld (00068h),hl		;2399
	pop hl			;239c
	ld (00066h),hl		;239d
	ret			;23a0
sub_23a1h:
	ld b,a			;23a1
	and 0e7h		;23a2
	jr z,l23aeh		;23a4
	push af			;23a6
	call sub_2428h		;23a7
	pop af			;23aa
	and 0e1h		;23ab
	ret			;23ad
l23aeh:
	bit 4,b			;23ae
	jr nz,l23d3h		;23b0
	ld a,(l2662h)		;23b2
	sub 00ah		;23b5
	ret z			;23b7
	ld a,(l2658h)		;23b8
	ld b,a			;23bb
	or a			;23bc
	jr nz,l23c3h		;23bd
	ld c,001h		;23bf
	jr l23c5h		;23c1
l23c3h:
	dec a			;23c3
	ld c,a			;23c4
l23c5h:
	push bc			;23c5
	call sub_2314h		;23c6
	pop de			;23c9
	ld b,e			;23ca
	ld c,d			;23cb
	call sub_2314h		;23cc
	call sub_232bh		;23cf
	ret			;23d2
l23d3h:
	ld a,(l265dh)		;23d3
	push af			;23d6
	call sub_232bh		;23d7
	pop bc			;23da
	jr nz,l23f0h		;23db
	in a,(012h)		;23dd
	cp (ix+002h)		;23df
	jr nz,l23f2h		;23e2
	ld a,(l265dh)		;23e4
	cp b			;23e7
l23e8h:
	jr z,l23ech		;23e8
	xor a			;23ea
	ret			;23eb
l23ech:
	ld a,010h		;23ec
	or a			;23ee
	ret			;23ef
l23f0h:
	ld a,0ffh		;23f0
l23f2h:
	ld (l2658h),a		;23f2
	call sub_22a9h		;23f5
	ret			;23f8
sub_23f9h:
	push bc			;23f9
	call sub_2420h		;23fa
	ld bc,0963eh		;23fd
l2400h:
	in a,(010h)		;2400
	bit 0,a			;2402
	jr z,l240dh		;2404
	dec bc			;2406
	ld a,b			;2407
	or c			;2408
	jr nz,l2400h		;2409
	ld a,010h		;240b
l240dh:
	pop bc			;240d
	push af			;240e
	call sub_2428h		;240f
	pop af			;2412
	ret			;2413
sub_2414h:
	res 2,a			;2414
	call sub_2420h		;2416
l2419h:
	in a,(010h)		;2419
	bit 0,a			;241b
	jr nz,l2419h		;241d
	ret			;241f
sub_2420h:
	out (010h),a		;2420
	ld a,00dh		;2422
l2424h:
	dec a			;2424
	jr nz,l2424h		;2425
	ret			;2427
sub_2428h:
	ld a,0d0h		;2428
l242ah:
	call sub_2420h		;242a
	in a,(010h)		;242d
	ret			;242f
sub_2430h:
	ld hl,00032h		;2430
sub_2433h:
	ld a,0c7h		;2433
l2435h:
	nop			;2435
	dec a			;2436
	jr nz,l2435h		;2437
	dec hl			;2439
	ld a,h			;243a
	or l			;243b
	jr nz,sub_2433h		;243c
	ret			;243e
l243fh:
	call sub_2219h		;243f
	and 0c0h		;2442
	jp nz,l2565h		;2444
	ld a,(l2663h)		;2447
	or a			;244a
	jr z,l2457h		;244b
	call sub_22d6h		;244d
	jp nz,l2565h		;2450
	xor a			;2453
	ld (l2658h),a		;2454
l2457h:
	ld c,(ix+002h)		;2457
	ld hl,l2658h		;245a
	ld b,(hl)		;245d
	ld (hl),c		;245e
	ld a,(l265fh)		;245f
	or a			;2462
	call nz,sub_2308h	;2463
	ld a,b			;2466
	cp c			;2467
	call nz,sub_2314h	;2468
	di			;246b
	in a,(014h)		;246c
	and 0dfh		;246e
	out (014h),a		;2470
	ei			;2472
	ld de,04361h		;2473
	call sub_256fh		;2476
	ld a,0ffh		;2479
	jp c,l2565h		;247b
	di			;247e
	ld hl,00066h		;247f
	ld a,(hl)		;2482
	ld (hl),0c9h		;2483
	push af			;2485
	ld a,(ix+002h)		;2486
	out (011h),a		;2489
	ld hl,04361h		;248b
	ld b,06ah		;248e
	ld c,013h		;2490
	ld a,0f4h		;2492
	call sub_2420h		;2494
l2497h:
	halt			;2497
	outi			;2498
	jp nz,l2497h		;249a
l249dh:
	halt			;249d
	outi			;249e
	jp nz,l249dh		;24a0
l24a3h:
	halt			;24a3
	outi			;24a4
	jp nz,l24a3h		;24a6
l24a9h:
	halt			;24a9
	outi			;24aa
	jp nz,l24a9h		;24ac
l24afh:
	halt			;24af
	outi			;24b0
	jp nz,l24afh		;24b2
l24b5h:
	halt			;24b5
	outi			;24b6
	jp nz,l24b5h		;24b8
l24bbh:
	halt			;24bb
	outi			;24bc
	jp nz,l24bbh		;24be
l24c1h:
	halt			;24c1
	outi			;24c2
	jp nz,l24c1h		;24c4
l24c7h:
	halt			;24c7
	outi			;24c8
	jp nz,l24c7h		;24ca
l24cdh:
	halt			;24cd
	outi			;24ce
	jp nz,l24cdh		;24d0
l24d3h:
	halt			;24d3
	outi			;24d4
	jp nz,l24d3h		;24d6
l24d9h:
	halt			;24d9
	outi			;24da
	jp nz,l24d9h		;24dc
l24dfh:
	halt			;24df
	outi			;24e0
	jp nz,l24dfh		;24e2
l24e5h:
	halt			;24e5
	outi			;24e6
	jp nz,l24e5h		;24e8
l24ebh:
	halt			;24eb
	outi			;24ec
	jp nz,l24ebh		;24ee
l24f1h:
	halt			;24f1
	outi			;24f2
	jp nz,l24f1h		;24f4
l24f7h:
	halt			;24f7
	outi			;24f8
	jp nz,l24f7h		;24fa
l24fdh:
	halt			;24fd
	outi			;24fe
	jp nz,l24fdh		;2500
l2503h:
	halt			;2503
	outi			;2504
l2506h:
	jp nz,l2503h		;2506
l2509h:
	halt			;2509
	outi			;250a
	jp nz,l2509h		;250c
l250fh:
	halt			;250f
	outi			;2510
	jp nz,l250fh		;2512
l2515h:
	halt			;2515
	outi			;2516
	jp nz,l2515h		;2518
l251bh:
	halt			;251b
	outi			;251c
	jp nz,l251bh		;251e
l2521h:
	halt			;2521
	outi			;2522
	jp nz,l2521h		;2524
l2527h:
	halt			;2527
	outi			;2528
	jp nz,l2527h		;252a
	pop af			;252d
	ld (00066h),a		;252e
	ei			;2531
l2532h:
	in a,(010h)		;2532
	bit 0,a			;2534
	jr nz,l2532h		;2536
	ld l,(ix+004h)		;2538
	ld h,(ix+005h)		;253b
	inc hl			;253e
	ld b,(hl)		;253f
	inc hl			;2540
	inc hl			;2541
	inc hl			;2542
	ld (ix+006h),000h	;2543
l2547h:
	ld a,(hl)		;2547
	inc hl			;2548
	out (012h),a		;2549
	ld (ix+007h),a		;254b
	ld a,088h		;254e
	call sub_23f9h		;2550
	and 099h		;2553
	jr z,l255fh		;2555
	cp 008h			;2557
	jp nz,l2565h		;2559
	inc (ix+006h)		;255c
l255fh:
	call sub_2428h		;255f
	djnz l2547h		;2562
	xor a			;2564
l2565h:
	ld (ix+008h),a		;2565
	ld (l2663h),a		;2568
	call sub_2130h		;256b
	ret			;256e
sub_256fh:
	ld l,e			;256f
	ld h,d			;2570
	ld bc,l186ah		;2571
	add hl,bc		;2574
	ld (ix+006h),l		;2575
	ld (ix+007h),h		;2578
	ld hl,l2635h		;257b
	call sub_2614h		;257e
	ret c			;2581
	ld l,(ix+004h)		;2582
	ld h,(ix+005h)		;2585
	inc hl			;2588
	inc hl			;2589
	inc hl			;258a
	inc hl			;258b
	push hl			;258c
	pop iy			;258d
	ld a,(iy-002h)		;258f
	ld (02655h),a		;2592
	ld bc,00000h		;2595
l2598h:
	ld hl,l2640h		;2598
	call sub_2614h		;259b
	ret c			;259e
	ld hl,00004h		;259f
	add hl,de		;25a2
	ld a,(ix+006h)		;25a3
	sub l			;25a6
	ld a,(ix+007h)		;25a7
	sbc a,h			;25aa
	ret c			;25ab
	ld a,(ix+002h)		;25ac
	ld (de),a		;25af
	inc de			;25b0
	ld a,(ix+001h)		;25b1
	rlca			;25b4
	and 001h		;25b5
	ld (de),a		;25b7
	inc de			;25b8
	push iy			;25b9
	pop hl			;25bb
	add hl,bc		;25bc
	ld a,(hl)		;25bd
	ld (de),a		;25be
	inc de			;25bf
	ld a,(iy-004h)		;25c0
	ld (de),a		;25c3
	inc de			;25c4
	ld hl,02647h		;25c5
	call sub_2614h		;25c8
	ret c			;25cb
	ld hl,00080h		;25cc
	ld a,(iy-004h)		;25cf
	and 003h		;25d2
	jr z,l25dah		;25d4
l25d6h:
	add hl,hl		;25d6
	dec a			;25d7
	jr nz,l25d6h		;25d8
l25dah:
	push hl			;25da
	add hl,de		;25db
	ld a,(ix+006h)		;25dc
	sub l			;25df
	ld a,(ix+007h)		;25e0
	sbc a,h			;25e3
	pop hl			;25e4
	ret c			;25e5
l25e6h:
	ld a,(iy-001h)		;25e6
	ld (de),a		;25e9
	inc de			;25ea
	dec hl			;25eb
	ld a,h			;25ec
	or l			;25ed
	jr nz,l25e6h		;25ee
	ld hl,02652h		;25f0
	call sub_2614h		;25f3
	ret c			;25f6
	inc bc			;25f7
	ld a,c			;25f8
	cp (iy-003h)		;25f9
	jr c,l2598h		;25fc
	ld l,(ix+006h)		;25fe
	ld h,(ix+007h)		;2601
	sbc hl,de		;2604
	jr z,l2612h		;2606
	ld b,h			;2608
	ld c,l			;2609
	dec bc			;260a
	ld h,d			;260b
	ld l,e			;260c
	inc de			;260d
	ld (hl),04eh		;260e
	ldir			;2610
l2612h:
	xor a			;2612
	ret			;2613
sub_2614h:
	push bc			;2614
	ld c,(hl)		;2615
	inc hl			;2616
l2617h:
	push hl			;2617
	ld l,(hl)		;2618
	ld h,000h		;2619
	add hl,de		;261b
	ld a,(ix+006h)		;261c
	sub l			;261f
	ld a,(ix+007h)		;2620
	sbc a,h			;2623
sub_2624h:
	pop hl			;2624
	jr c,l2633h		;2625
	ld b,(hl)		;2627
	inc hl			;2628
	ld a,(hl)		;2629
	inc hl			;262a
l262bh:
	ld (de),a		;262b
	inc de			;262c
	djnz l262bh		;262d
	dec c			;262f
	jr nz,l2617h		;2630
	xor a			;2632
l2633h:
	pop bc			;2633
	ret			;2634
l2635h:
	dec b			;2635
	ld d,b			;2636
	ld c,(hl)		;2637
	inc c			;2638
	nop			;2639
	inc bc			;263a
	or 001h			;263b
	call m,sub_4e32h	;263d
l2640h:
	inc bc			;2640
	inc c			;2641
	nop			;2642
	inc bc			;2643
	push af			;2644
	ld bc,005feh		;2645
	ld bc,l16f7h		;2648
	ld c,(hl)		;264b
	inc c			;264c
	nop			;264d
	inc bc			;264e
	push af			;264f
	ld bc,l02fbh		;2650
	ld bc,l32f7h		;2653
	ld c,(hl)		;2656
l2657h:
	nop			;2657
l2658h:
	rst 38h			;2658
l2659h:
	rst 38h			;2659
	rst 38h			;265a
	rst 38h			;265b
	rst 38h			;265c
l265dh:
	rst 38h			;265d
l265eh:
	nop			;265e
l265fh:
	nop			;265f
l2660h:
	nop			;2660
l2661h:
	nop			;2661
l2662h:
	nop			;2662
l2663h:
	rst 38h			;2663
	ld e,000h		;2664
	ld ix,l27f3h		;2666
	call sub_272ch		;266a
	ld e,001h		;266d
	ld ix,l3527h		;266f
	call sub_272ch		;2673
	ret			;2676
l2677h:
	nop			;2677
	nop			;2678
l2679h:
	nop			;2679
	ld c,l			;267a
	ld d,e			;267b
	ld b,h			;267c
	ld c,a			;267d
	ld d,e			;267e
	jr nz,l26a1h		;267f
	jr nz,l26c7h		;2681
	ld b,c			;2683
	ld d,h			;2684
	ccf			;2685
	nop			;2686
	ccf			;2687
	nop			;2688
	nop			;2689
	nop			;268a
	nop			;268b
	nop			;268c
	nop			;268d
	nop			;268e
	nop			;268f
	nop			;2690
	nop			;2691
	nop			;2692
l2693h:
	nop			;2693
	nop			;2694
	nop			;2695
	nop			;2696
	nop			;2697
	nop			;2698
	nop			;2699
	nop			;269a
	nop			;269b
	nop			;269c
l269dh:
	nop			;269d
	nop			;269e
	nop			;269f
	nop			;26a0
l26a1h:
	nop			;26a1
	nop			;26a2
	nop			;26a3
	nop			;26a4
	nop			;26a5
	nop			;26a6
	nop			;26a7
	nop			;26a8
	nop			;26a9
	nop			;26aa
	nop			;26ab
	nop			;26ac
l26adh:
	nop			;26ad
	nop			;26ae
	nop			;26af
	nop			;26b0
	nop			;26b1
	nop			;26b2
	nop			;26b3
	nop			;26b4
	nop			;26b5
	nop			;26b6
	nop			;26b7
	nop			;26b8
	nop			;26b9
	nop			;26ba
	nop			;26bb
	nop			;26bc
	nop			;26bd
	nop			;26be
	nop			;26bf
	nop			;26c0
	nop			;26c1
	nop			;26c2
l26c3h:
	nop			;26c3
	nop			;26c4
	nop			;26c5
	nop			;26c6
l26c7h:
	nop			;26c7
	nop			;26c8
	nop			;26c9
	nop			;26ca
	nop			;26cb
	nop			;26cc
	nop			;26cd
	nop			;26ce
	nop			;26cf
	nop			;26d0
	nop			;26d1
	nop			;26d2
	nop			;26d3
	nop			;26d4
	nop			;26d5
	nop			;26d6
	nop			;26d7
	nop			;26d8
	nop			;26d9
	nop			;26da
	nop			;26db
	nop			;26dc
	nop			;26dd
	nop			;26de
	nop			;26df
	nop			;26e0
	nop			;26e1
	nop			;26e2
	nop			;26e3
l26e4h:
	nop			;26e4
	nop			;26e5
	nop			;26e6
	nop			;26e7
	nop			;26e8
	nop			;26e9
	nop			;26ea
	nop			;26eb
	nop			;26ec
	nop			;26ed
	nop			;26ee
	nop			;26ef
	nop			;26f0
	nop			;26f1
	nop			;26f2
	nop			;26f3
l26f4h:
	nop			;26f4
	nop			;26f5
	nop			;26f6
	nop			;26f7
	nop			;26f8
	nop			;26f9
	nop			;26fa
	nop			;26fb
	nop			;26fc
	nop			;26fd
	nop			;26fe
	nop			;26ff
	nop			;2700
	nop			;2701
	nop			;2702
	nop			;2703
	nop			;2704
	nop			;2705
	nop			;2706
	nop			;2707
	nop			;2708
	nop			;2709
	nop			;270a
	nop			;270b
	nop			;270c
	nop			;270d
	nop			;270e
	nop			;270f
	nop			;2710
	nop			;2711
	nop			;2712
	nop			;2713
	nop			;2714
	nop			;2715
	nop			;2716
	nop			;2717
	nop			;2718
	nop			;2719
	nop			;271a
	nop			;271b
	nop			;271c
l271dh:
	ld b,h			;271d
	nop			;271e
	dec b			;271f
	rra			;2720
	ld bc,l0465h		;2721
	rst 38h			;2724
	inc bc			;2725
	rst 38h			;2726
	nop			;2727
	nop			;2728
	nop			;2729
	inc b			;272a
	nop			;272b
sub_272ch:
	push ix			;272c
	pop hl			;272e
	ld (hl),000h		;272f
	inc hl			;2731
	ld (hl),000h		;2732
	inc hl			;2734
	ld (l2677h),hl		;2735
	push ix			;2738
	ld c,00eh		;273a
	call 00005h		;273c
	pop ix			;273f
	push ix			;2741
	ld c,01fh		;2743
	call 00005h		;2745
	pop ix			;2748
	ld de,l271dh		;274a
	ld bc,0000fh		;274d
l2750h:
	ld a,(de)		;2750
	cp (hl)			;2751
	ret nz			;2752
	ldi			;2753
	jp pe,l2750h		;2755
	ld de,l269dh		;2758
	push ix			;275b
	ld c,01ah		;275d
	call 00005h		;275f
	pop ix			;2762
	ld de,l2679h		;2764
	push ix			;2767
	ld c,011h		;2769
	call 00005h		;276b
	pop ix			;276e
	cp 0ffh			;2770
	ret z			;2772
l2773h:
	add a,a			;2773
	add a,a			;2774
	add a,a			;2775
	add a,a			;2776
	add a,a			;2777
	ld b,000h		;2778
	ld c,a			;277a
	ld hl,l26adh		;277b
	add hl,bc		;277e
	ld de,(l2677h)		;277f
	ld bc,00010h		;2783
l2786h:
	ld a,(hl)		;2786
	ldi			;2787
	or (hl)			;2789
	ldi			;278a
	inc de			;278c
	jr z,l2799h		;278d
	inc (ix+000h)		;278f
	jr nz,l279ch		;2792
	inc (ix+001h)		;2794
	jr l279ch		;2797
l2799h:
	dec de			;2799
	dec de			;279a
	dec de			;279b
l279ch:
	ld a,b			;279c
	or c			;279d
	jr nz,l2786h		;279e
	ld (l2677h),de		;27a0
	ld de,l2679h		;27a4
	push ix			;27a7
	ld c,012h		;27a9
	call 00005h		;27ab
	pop ix			;27ae
	cp 0ffh			;27b0
	jr nz,l2773h		;27b2
	ld c,(ix+000h)		;27b4
	ld b,(ix+001h)		;27b7
	inc ix			;27ba
	inc ix			;27bc
l27beh:
	ld l,(ix+000h)		;27be
	ld h,(ix+001h)		;27c1
	add hl,hl		;27c4
	add hl,hl		;27c5
	add hl,hl		;27c6
	ld de,00088h		;27c7
	add hl,de		;27ca
	push bc			;27cb
	ld bc,00022h		;27cc
	call sub_27e8h		;27cf
	pop bc			;27d2
	ld (ix+000h),l		;27d3
	ld (ix+001h),e		;27d6
	ld (ix+002h),d		;27d9
	inc ix			;27dc
	inc ix			;27de
	inc ix			;27e0
	dec bc			;27e2
	ld a,b			;27e3
	or c			;27e4
	jr nz,l27beh		;27e5
	ret			;27e7
sub_27e8h:
	ld de,0ffffh		;27e8
l27ebh:
	inc de			;27eb
	or a			;27ec
	sbc hl,bc		;27ed
	jr nc,l27ebh		;27ef
	add hl,bc		;27f1
	ret			;27f2
l27f3h:
	nop			;27f3
	nop			;27f4
	nop			;27f5
	nop			;27f6
	nop			;27f7
	nop			;27f8
	nop			;27f9
	nop			;27fa
	nop			;27fb
	nop			;27fc
	nop			;27fd
	nop			;27fe
	nop			;27ff
	nop			;2800
	nop			;2801
	nop			;2802
	nop			;2803
	nop			;2804
	nop			;2805
	nop			;2806
	nop			;2807
	nop			;2808
	nop			;2809
	nop			;280a
	nop			;280b
	nop			;280c
	nop			;280d
	nop			;280e
	nop			;280f
	nop			;2810
	nop			;2811
	nop			;2812
	nop			;2813
	nop			;2814
	nop			;2815
	nop			;2816
	nop			;2817
	nop			;2818
	nop			;2819
	nop			;281a
	nop			;281b
	nop			;281c
	nop			;281d
	nop			;281e
	nop			;281f
	nop			;2820
	nop			;2821
	nop			;2822
	nop			;2823
	nop			;2824
	nop			;2825
	nop			;2826
	nop			;2827
	nop			;2828
	nop			;2829
	nop			;282a
	nop			;282b
	nop			;282c
	nop			;282d
	nop			;282e
	nop			;282f
	nop			;2830
	nop			;2831
	nop			;2832
	nop			;2833
	nop			;2834
	nop			;2835
	nop			;2836
	nop			;2837
	nop			;2838
	nop			;2839
	nop			;283a
	nop			;283b
	nop			;283c
	nop			;283d
	nop			;283e
	nop			;283f
	nop			;2840
	nop			;2841
	nop			;2842
	nop			;2843
	nop			;2844
	nop			;2845
	nop			;2846
	nop			;2847
	nop			;2848
	nop			;2849
	nop			;284a
	nop			;284b
	nop			;284c
	nop			;284d
	nop			;284e
	nop			;284f
	nop			;2850
	nop			;2851
	nop			;2852
	nop			;2853
	nop			;2854
	nop			;2855
	nop			;2856
	nop			;2857
	nop			;2858
	nop			;2859
	nop			;285a
	nop			;285b
	nop			;285c
	nop			;285d
	nop			;285e
	nop			;285f
	nop			;2860
	nop			;2861
	nop			;2862
	nop			;2863
	nop			;2864
	nop			;2865
	nop			;2866
	nop			;2867
	nop			;2868
	nop			;2869
	nop			;286a
	nop			;286b
	nop			;286c
	nop			;286d
	nop			;286e
	nop			;286f
	nop			;2870
	nop			;2871
	nop			;2872
	nop			;2873
	nop			;2874
	nop			;2875
	nop			;2876
	nop			;2877
	nop			;2878
	nop			;2879
	nop			;287a
	nop			;287b
	nop			;287c
	nop			;287d
	nop			;287e
	nop			;287f
	nop			;2880
	nop			;2881
	nop			;2882
	nop			;2883
	nop			;2884
	nop			;2885
	nop			;2886
	nop			;2887
	nop			;2888
	nop			;2889
	nop			;288a
	nop			;288b
	nop			;288c
	nop			;288d
	nop			;288e
	nop			;288f
	nop			;2890
	nop			;2891
	nop			;2892
	nop			;2893
	nop			;2894
	nop			;2895
	nop			;2896
	nop			;2897
	nop			;2898
	nop			;2899
	nop			;289a
	nop			;289b
	nop			;289c
	nop			;289d
	nop			;289e
	nop			;289f
	nop			;28a0
	nop			;28a1
	nop			;28a2
	nop			;28a3
	nop			;28a4
	nop			;28a5
	nop			;28a6
	nop			;28a7
	nop			;28a8
	nop			;28a9
	nop			;28aa
	nop			;28ab
	nop			;28ac
	nop			;28ad
	nop			;28ae
	nop			;28af
	nop			;28b0
	nop			;28b1
	nop			;28b2
	nop			;28b3
	nop			;28b4
	nop			;28b5
	nop			;28b6
	nop			;28b7
	nop			;28b8
	nop			;28b9
	nop			;28ba
	nop			;28bb
	nop			;28bc
	nop			;28bd
	nop			;28be
	nop			;28bf
	nop			;28c0
	nop			;28c1
	nop			;28c2
	nop			;28c3
	nop			;28c4
	nop			;28c5
	nop			;28c6
	nop			;28c7
	nop			;28c8
	nop			;28c9
	nop			;28ca
	nop			;28cb
	nop			;28cc
	nop			;28cd
	nop			;28ce
	nop			;28cf
	nop			;28d0
	nop			;28d1
	nop			;28d2
	nop			;28d3
	nop			;28d4
	nop			;28d5
	nop			;28d6
	nop			;28d7
	nop			;28d8
	nop			;28d9
	nop			;28da
	nop			;28db
	nop			;28dc
	nop			;28dd
	nop			;28de
	nop			;28df
	nop			;28e0
	nop			;28e1
	nop			;28e2
	nop			;28e3
	nop			;28e4
	nop			;28e5
	nop			;28e6
	nop			;28e7
	nop			;28e8
	nop			;28e9
	nop			;28ea
	nop			;28eb
	nop			;28ec
	nop			;28ed
	nop			;28ee
	nop			;28ef
	nop			;28f0
	nop			;28f1
	nop			;28f2
	nop			;28f3
	nop			;28f4
	nop			;28f5
	nop			;28f6
	nop			;28f7
	nop			;28f8
	nop			;28f9
	nop			;28fa
	nop			;28fb
	nop			;28fc
	nop			;28fd
	nop			;28fe
	nop			;28ff
	nop			;2900
	nop			;2901
	nop			;2902
	nop			;2903
	nop			;2904
	nop			;2905
	nop			;2906
	nop			;2907
	nop			;2908
	nop			;2909
	nop			;290a
	nop			;290b
	nop			;290c
	nop			;290d
	nop			;290e
	nop			;290f
	nop			;2910
	nop			;2911
	nop			;2912
	nop			;2913
	nop			;2914
	nop			;2915
	nop			;2916
	nop			;2917
	nop			;2918
	nop			;2919
	nop			;291a
	nop			;291b
	nop			;291c
	nop			;291d
	nop			;291e
	nop			;291f
	nop			;2920
	nop			;2921
	nop			;2922
	nop			;2923
	nop			;2924
	nop			;2925
	nop			;2926
	nop			;2927
	nop			;2928
	nop			;2929
	nop			;292a
	nop			;292b
	nop			;292c
	nop			;292d
	nop			;292e
	nop			;292f
	nop			;2930
	nop			;2931
	nop			;2932
	nop			;2933
	nop			;2934
	nop			;2935
	nop			;2936
	nop			;2937
	nop			;2938
	nop			;2939
	nop			;293a
	nop			;293b
	nop			;293c
	nop			;293d
	nop			;293e
	nop			;293f
	nop			;2940
	nop			;2941
	nop			;2942
	nop			;2943
	nop			;2944
	nop			;2945
	nop			;2946
	nop			;2947
	nop			;2948
	nop			;2949
	nop			;294a
	nop			;294b
	nop			;294c
	nop			;294d
	nop			;294e
	nop			;294f
	nop			;2950
	nop			;2951
	nop			;2952
	nop			;2953
	nop			;2954
	nop			;2955
	nop			;2956
	nop			;2957
	nop			;2958
	nop			;2959
	nop			;295a
	nop			;295b
	nop			;295c
	nop			;295d
	nop			;295e
	nop			;295f
	nop			;2960
	nop			;2961
	nop			;2962
	nop			;2963
	nop			;2964
	nop			;2965
	nop			;2966
	nop			;2967
	nop			;2968
	nop			;2969
	nop			;296a
	nop			;296b
	nop			;296c
	nop			;296d
	nop			;296e
	nop			;296f
	nop			;2970
	nop			;2971
	nop			;2972
	nop			;2973
	nop			;2974
	nop			;2975
	nop			;2976
	nop			;2977
	nop			;2978
	nop			;2979
	nop			;297a
	nop			;297b
	nop			;297c
	nop			;297d
	nop			;297e
	nop			;297f
	nop			;2980
	nop			;2981
	nop			;2982
	nop			;2983
	nop			;2984
	nop			;2985
	nop			;2986
	nop			;2987
	nop			;2988
	nop			;2989
	nop			;298a
	nop			;298b
	nop			;298c
	nop			;298d
	nop			;298e
	nop			;298f
	nop			;2990
	nop			;2991
	nop			;2992
	nop			;2993
	nop			;2994
	nop			;2995
	nop			;2996
	nop			;2997
	nop			;2998
	nop			;2999
	nop			;299a
	nop			;299b
	nop			;299c
	nop			;299d
	nop			;299e
	nop			;299f
	nop			;29a0
	nop			;29a1
	nop			;29a2
	nop			;29a3
	nop			;29a4
	nop			;29a5
	nop			;29a6
	nop			;29a7
	nop			;29a8
	nop			;29a9
	nop			;29aa
	nop			;29ab
	nop			;29ac
	nop			;29ad
	nop			;29ae
	nop			;29af
	nop			;29b0
	nop			;29b1
	nop			;29b2
	nop			;29b3
	nop			;29b4
	nop			;29b5
	nop			;29b6
	nop			;29b7
	nop			;29b8
	nop			;29b9
	nop			;29ba
	nop			;29bb
	nop			;29bc
	nop			;29bd
	nop			;29be
	nop			;29bf
	nop			;29c0
	nop			;29c1
	nop			;29c2
	nop			;29c3
	nop			;29c4
	nop			;29c5
	nop			;29c6
	nop			;29c7
	nop			;29c8
	nop			;29c9
	nop			;29ca
	nop			;29cb
	nop			;29cc
	nop			;29cd
	nop			;29ce
	nop			;29cf
	nop			;29d0
	nop			;29d1
	nop			;29d2
	nop			;29d3
	nop			;29d4
	nop			;29d5
	nop			;29d6
	nop			;29d7
	nop			;29d8
	nop			;29d9
	nop			;29da
	nop			;29db
	nop			;29dc
	nop			;29dd
	nop			;29de
	nop			;29df
	nop			;29e0
	nop			;29e1
	nop			;29e2
	nop			;29e3
	nop			;29e4
	nop			;29e5
	nop			;29e6
	nop			;29e7
l29e8h:
	nop			;29e8
	nop			;29e9
	nop			;29ea
	nop			;29eb
	nop			;29ec
	nop			;29ed
	nop			;29ee
	nop			;29ef
	nop			;29f0
	nop			;29f1
	nop			;29f2
	nop			;29f3
	nop			;29f4
	nop			;29f5
	nop			;29f6
	nop			;29f7
	nop			;29f8
	nop			;29f9
	nop			;29fa
	nop			;29fb
	nop			;29fc
	nop			;29fd
	nop			;29fe
	nop			;29ff
	nop			;2a00
	nop			;2a01
	nop			;2a02
	nop			;2a03
	nop			;2a04
	nop			;2a05
	nop			;2a06
	nop			;2a07
	nop			;2a08
	nop			;2a09
	nop			;2a0a
	nop			;2a0b
	nop			;2a0c
l2a0dh:
	nop			;2a0d
	nop			;2a0e
	nop			;2a0f
	nop			;2a10
	nop			;2a11
	nop			;2a12
	nop			;2a13
	nop			;2a14
	nop			;2a15
	nop			;2a16
	nop			;2a17
	nop			;2a18
	nop			;2a19
	nop			;2a1a
	nop			;2a1b
	nop			;2a1c
	nop			;2a1d
	nop			;2a1e
	nop			;2a1f
	nop			;2a20
	nop			;2a21
	nop			;2a22
	nop			;2a23
	nop			;2a24
	nop			;2a25
	nop			;2a26
	nop			;2a27
	nop			;2a28
	nop			;2a29
l2a2ah:
	nop			;2a2a
	nop			;2a2b
	nop			;2a2c
	nop			;2a2d
	nop			;2a2e
	nop			;2a2f
	nop			;2a30
	nop			;2a31
	nop			;2a32
	nop			;2a33
	nop			;2a34
	nop			;2a35
	nop			;2a36
	nop			;2a37
	nop			;2a38
	nop			;2a39
	nop			;2a3a
	nop			;2a3b
	nop			;2a3c
	nop			;2a3d
	nop			;2a3e
	nop			;2a3f
	nop			;2a40
	nop			;2a41
	nop			;2a42
	nop			;2a43
	nop			;2a44
	nop			;2a45
	nop			;2a46
	nop			;2a47
	nop			;2a48
	nop			;2a49
	nop			;2a4a
	nop			;2a4b
	nop			;2a4c
	nop			;2a4d
	nop			;2a4e
	nop			;2a4f
	nop			;2a50
	nop			;2a51
	nop			;2a52
	nop			;2a53
	nop			;2a54
	nop			;2a55
	nop			;2a56
	nop			;2a57
	nop			;2a58
	nop			;2a59
	nop			;2a5a
	nop			;2a5b
	nop			;2a5c
	nop			;2a5d
	nop			;2a5e
	nop			;2a5f
	nop			;2a60
	nop			;2a61
	nop			;2a62
	nop			;2a63
	nop			;2a64
	nop			;2a65
	nop			;2a66
	nop			;2a67
	nop			;2a68
	nop			;2a69
	nop			;2a6a
	nop			;2a6b
	nop			;2a6c
	nop			;2a6d
	nop			;2a6e
	nop			;2a6f
	nop			;2a70
	nop			;2a71
	nop			;2a72
	nop			;2a73
	nop			;2a74
	nop			;2a75
	nop			;2a76
	nop			;2a77
	nop			;2a78
	nop			;2a79
	nop			;2a7a
	nop			;2a7b
	nop			;2a7c
	nop			;2a7d
	nop			;2a7e
	nop			;2a7f
	nop			;2a80
	nop			;2a81
	nop			;2a82
	nop			;2a83
	nop			;2a84
	nop			;2a85
	nop			;2a86
	nop			;2a87
	nop			;2a88
	nop			;2a89
	nop			;2a8a
	nop			;2a8b
	nop			;2a8c
	nop			;2a8d
	nop			;2a8e
	nop			;2a8f
	nop			;2a90
	nop			;2a91
	nop			;2a92
	nop			;2a93
	nop			;2a94
	nop			;2a95
	nop			;2a96
	nop			;2a97
	nop			;2a98
	nop			;2a99
	nop			;2a9a
	nop			;2a9b
	nop			;2a9c
	nop			;2a9d
	nop			;2a9e
	nop			;2a9f
	nop			;2aa0
	nop			;2aa1
	nop			;2aa2
	nop			;2aa3
	nop			;2aa4
	nop			;2aa5
	nop			;2aa6
	nop			;2aa7
	nop			;2aa8
	nop			;2aa9
	nop			;2aaa
	nop			;2aab
	nop			;2aac
	nop			;2aad
	nop			;2aae
	nop			;2aaf
	nop			;2ab0
	nop			;2ab1
	nop			;2ab2
	nop			;2ab3
	nop			;2ab4
	nop			;2ab5
	nop			;2ab6
	nop			;2ab7
	nop			;2ab8
	nop			;2ab9
	nop			;2aba
	nop			;2abb
	nop			;2abc
	nop			;2abd
	nop			;2abe
	nop			;2abf
	nop			;2ac0
	nop			;2ac1
	nop			;2ac2
	nop			;2ac3
	nop			;2ac4
	nop			;2ac5
	nop			;2ac6
	nop			;2ac7
	nop			;2ac8
	nop			;2ac9
	nop			;2aca
	nop			;2acb
	nop			;2acc
	nop			;2acd
	nop			;2ace
	nop			;2acf
	nop			;2ad0
	nop			;2ad1
	nop			;2ad2
	nop			;2ad3
	nop			;2ad4
	nop			;2ad5
	nop			;2ad6
	nop			;2ad7
	nop			;2ad8
	nop			;2ad9
	nop			;2ada
	nop			;2adb
	nop			;2adc
	nop			;2add
	nop			;2ade
	nop			;2adf
	nop			;2ae0
	nop			;2ae1
	nop			;2ae2
	nop			;2ae3
	nop			;2ae4
	nop			;2ae5
	nop			;2ae6
	nop			;2ae7
	nop			;2ae8
	nop			;2ae9
	nop			;2aea
	nop			;2aeb
	nop			;2aec
	nop			;2aed
	nop			;2aee
	nop			;2aef
	nop			;2af0
	nop			;2af1
	nop			;2af2
	nop			;2af3
	nop			;2af4
	nop			;2af5
	nop			;2af6
	nop			;2af7
	nop			;2af8
	nop			;2af9
	nop			;2afa
	nop			;2afb
	nop			;2afc
	nop			;2afd
	nop			;2afe
	nop			;2aff
	nop			;2b00
	nop			;2b01
	nop			;2b02
	nop			;2b03
	nop			;2b04
	nop			;2b05
	nop			;2b06
	nop			;2b07
	nop			;2b08
	nop			;2b09
	nop			;2b0a
	nop			;2b0b
	nop			;2b0c
	nop			;2b0d
	nop			;2b0e
	nop			;2b0f
	nop			;2b10
	nop			;2b11
	nop			;2b12
	nop			;2b13
	nop			;2b14
	nop			;2b15
	nop			;2b16
	nop			;2b17
	nop			;2b18
	nop			;2b19
	nop			;2b1a
	nop			;2b1b
	nop			;2b1c
	nop			;2b1d
	nop			;2b1e
	nop			;2b1f
	nop			;2b20
	nop			;2b21
	nop			;2b22
	nop			;2b23
	nop			;2b24
	nop			;2b25
	nop			;2b26
	nop			;2b27
	nop			;2b28
	nop			;2b29
	nop			;2b2a
	nop			;2b2b
	nop			;2b2c
	nop			;2b2d
	nop			;2b2e
	nop			;2b2f
	nop			;2b30
	nop			;2b31
	nop			;2b32
	nop			;2b33
	nop			;2b34
	nop			;2b35
	nop			;2b36
	nop			;2b37
	nop			;2b38
	nop			;2b39
	nop			;2b3a
	nop			;2b3b
	nop			;2b3c
	nop			;2b3d
	nop			;2b3e
	nop			;2b3f
	nop			;2b40
	nop			;2b41
	nop			;2b42
	nop			;2b43
	nop			;2b44
	nop			;2b45
	nop			;2b46
	nop			;2b47
	nop			;2b48
	nop			;2b49
	nop			;2b4a
	nop			;2b4b
	nop			;2b4c
	nop			;2b4d
	nop			;2b4e
	nop			;2b4f
	nop			;2b50
	nop			;2b51
	nop			;2b52
	nop			;2b53
	nop			;2b54
	nop			;2b55
	nop			;2b56
	nop			;2b57
l2b58h:
	nop			;2b58
	nop			;2b59
	nop			;2b5a
	nop			;2b5b
	nop			;2b5c
	nop			;2b5d
	nop			;2b5e
l2b5fh:
	nop			;2b5f
	nop			;2b60
	nop			;2b61
	nop			;2b62
	nop			;2b63
	nop			;2b64
	nop			;2b65
	nop			;2b66
	nop			;2b67
	nop			;2b68
	nop			;2b69
	nop			;2b6a
	nop			;2b6b
	nop			;2b6c
	nop			;2b6d
	nop			;2b6e
	nop			;2b6f
	nop			;2b70
	nop			;2b71
	nop			;2b72
	nop			;2b73
	nop			;2b74
	nop			;2b75
	nop			;2b76
	nop			;2b77
	nop			;2b78
	nop			;2b79
	nop			;2b7a
	nop			;2b7b
	nop			;2b7c
	nop			;2b7d
	nop			;2b7e
	nop			;2b7f
	nop			;2b80
	nop			;2b81
	nop			;2b82
	nop			;2b83
	nop			;2b84
	nop			;2b85
	nop			;2b86
	nop			;2b87
	nop			;2b88
	nop			;2b89
	nop			;2b8a
	nop			;2b8b
	nop			;2b8c
	nop			;2b8d
	nop			;2b8e
	nop			;2b8f
	nop			;2b90
	nop			;2b91
	nop			;2b92
	nop			;2b93
	nop			;2b94
	nop			;2b95
	nop			;2b96
	nop			;2b97
	nop			;2b98
	nop			;2b99
	nop			;2b9a
	nop			;2b9b
	nop			;2b9c
	nop			;2b9d
	nop			;2b9e
	nop			;2b9f
	nop			;2ba0
	nop			;2ba1
	nop			;2ba2
	nop			;2ba3
	nop			;2ba4
	nop			;2ba5
	nop			;2ba6
	nop			;2ba7
	nop			;2ba8
	nop			;2ba9
	nop			;2baa
	nop			;2bab
	nop			;2bac
	nop			;2bad
	nop			;2bae
	nop			;2baf
	nop			;2bb0
	nop			;2bb1
	nop			;2bb2
	nop			;2bb3
	nop			;2bb4
	nop			;2bb5
	nop			;2bb6
	nop			;2bb7
	nop			;2bb8
	nop			;2bb9
	nop			;2bba
	nop			;2bbb
	nop			;2bbc
	nop			;2bbd
	nop			;2bbe
	nop			;2bbf
	nop			;2bc0
	nop			;2bc1
	nop			;2bc2
	nop			;2bc3
	nop			;2bc4
	nop			;2bc5
	nop			;2bc6
	nop			;2bc7
	nop			;2bc8
	nop			;2bc9
	nop			;2bca
	nop			;2bcb
	nop			;2bcc
	nop			;2bcd
	nop			;2bce
	nop			;2bcf
	nop			;2bd0
	nop			;2bd1
	nop			;2bd2
	nop			;2bd3
	nop			;2bd4
	nop			;2bd5
	nop			;2bd6
	nop			;2bd7
	nop			;2bd8
	nop			;2bd9
	nop			;2bda
	nop			;2bdb
	nop			;2bdc
	nop			;2bdd
	nop			;2bde
	nop			;2bdf
	nop			;2be0
	nop			;2be1
	nop			;2be2
	nop			;2be3
	nop			;2be4
	nop			;2be5
	nop			;2be6
	nop			;2be7
	nop			;2be8
	nop			;2be9
	nop			;2bea
	nop			;2beb
	nop			;2bec
	nop			;2bed
	nop			;2bee
	nop			;2bef
	nop			;2bf0
	nop			;2bf1
	nop			;2bf2
	nop			;2bf3
	nop			;2bf4
	nop			;2bf5
	nop			;2bf6
	nop			;2bf7
	nop			;2bf8
	nop			;2bf9
	nop			;2bfa
	nop			;2bfb
	nop			;2bfc
	nop			;2bfd
	nop			;2bfe
	nop			;2bff
	nop			;2c00
	nop			;2c01
	nop			;2c02
	nop			;2c03
	nop			;2c04
	nop			;2c05
	nop			;2c06
	nop			;2c07
	nop			;2c08
	nop			;2c09
	nop			;2c0a
	nop			;2c0b
	nop			;2c0c
	nop			;2c0d
	nop			;2c0e
	nop			;2c0f
	nop			;2c10
	nop			;2c11
	nop			;2c12
	nop			;2c13
	nop			;2c14
	nop			;2c15
	nop			;2c16
	nop			;2c17
	nop			;2c18
	nop			;2c19
	nop			;2c1a
	nop			;2c1b
	nop			;2c1c
	nop			;2c1d
	nop			;2c1e
	nop			;2c1f
	nop			;2c20
	nop			;2c21
	nop			;2c22
	nop			;2c23
	nop			;2c24
	nop			;2c25
	nop			;2c26
	nop			;2c27
	nop			;2c28
	nop			;2c29
	nop			;2c2a
l2c2bh:
	nop			;2c2b
	nop			;2c2c
	nop			;2c2d
	nop			;2c2e
	nop			;2c2f
	nop			;2c30
	nop			;2c31
	nop			;2c32
	nop			;2c33
	nop			;2c34
	nop			;2c35
	nop			;2c36
	nop			;2c37
	nop			;2c38
	nop			;2c39
	nop			;2c3a
	nop			;2c3b
	nop			;2c3c
	nop			;2c3d
	nop			;2c3e
	nop			;2c3f
	nop			;2c40
	nop			;2c41
	nop			;2c42
	nop			;2c43
	nop			;2c44
	nop			;2c45
	nop			;2c46
	nop			;2c47
	nop			;2c48
	nop			;2c49
	nop			;2c4a
	nop			;2c4b
	nop			;2c4c
	nop			;2c4d
	nop			;2c4e
	nop			;2c4f
	nop			;2c50
	nop			;2c51
	nop			;2c52
	nop			;2c53
	nop			;2c54
	nop			;2c55
	nop			;2c56
	nop			;2c57
	nop			;2c58
	nop			;2c59
	nop			;2c5a
	nop			;2c5b
	nop			;2c5c
	nop			;2c5d
	nop			;2c5e
	nop			;2c5f
	nop			;2c60
	nop			;2c61
	nop			;2c62
	nop			;2c63
	nop			;2c64
	nop			;2c65
	nop			;2c66
	nop			;2c67
	nop			;2c68
	nop			;2c69
	nop			;2c6a
	nop			;2c6b
	nop			;2c6c
	nop			;2c6d
	nop			;2c6e
	nop			;2c6f
	nop			;2c70
	nop			;2c71
	nop			;2c72
	nop			;2c73
l2c74h:
	nop			;2c74
	nop			;2c75
	nop			;2c76
	nop			;2c77
	nop			;2c78
	nop			;2c79
	nop			;2c7a
	nop			;2c7b
	nop			;2c7c
	nop			;2c7d
	nop			;2c7e
	nop			;2c7f
	nop			;2c80
	nop			;2c81
	nop			;2c82
	nop			;2c83
	nop			;2c84
	nop			;2c85
	nop			;2c86
	nop			;2c87
	nop			;2c88
	nop			;2c89
l2c8ah:
	nop			;2c8a
	nop			;2c8b
	nop			;2c8c
	nop			;2c8d
	nop			;2c8e
	nop			;2c8f
	nop			;2c90
	nop			;2c91
	nop			;2c92
	nop			;2c93
	nop			;2c94
	nop			;2c95
	nop			;2c96
	nop			;2c97
	nop			;2c98
	nop			;2c99
	nop			;2c9a
	nop			;2c9b
	nop			;2c9c
	nop			;2c9d
	nop			;2c9e
	nop			;2c9f
	nop			;2ca0
l2ca1h:
	nop			;2ca1
	nop			;2ca2
	nop			;2ca3
	nop			;2ca4
	nop			;2ca5
	nop			;2ca6
	nop			;2ca7
	nop			;2ca8
	nop			;2ca9
	nop			;2caa
	nop			;2cab
	nop			;2cac
	nop			;2cad
	nop			;2cae
	nop			;2caf
	nop			;2cb0
	nop			;2cb1
	nop			;2cb2
	nop			;2cb3
	nop			;2cb4
	nop			;2cb5
	nop			;2cb6
	nop			;2cb7
	nop			;2cb8
	nop			;2cb9
	nop			;2cba
	nop			;2cbb
	nop			;2cbc
	nop			;2cbd
	nop			;2cbe
	nop			;2cbf
	nop			;2cc0
	nop			;2cc1
	nop			;2cc2
	nop			;2cc3
	nop			;2cc4
	nop			;2cc5
	nop			;2cc6
	nop			;2cc7
	nop			;2cc8
	nop			;2cc9
	nop			;2cca
	nop			;2ccb
	nop			;2ccc
	nop			;2ccd
	nop			;2cce
	nop			;2ccf
	nop			;2cd0
	nop			;2cd1
	nop			;2cd2
	nop			;2cd3
	nop			;2cd4
	nop			;2cd5
	nop			;2cd6
	nop			;2cd7
	nop			;2cd8
	nop			;2cd9
	nop			;2cda
	nop			;2cdb
	nop			;2cdc
	nop			;2cdd
	nop			;2cde
	nop			;2cdf
	nop			;2ce0
	nop			;2ce1
	nop			;2ce2
	nop			;2ce3
	nop			;2ce4
	nop			;2ce5
	nop			;2ce6
	nop			;2ce7
	nop			;2ce8
l2ce9h:
	nop			;2ce9
	nop			;2cea
	nop			;2ceb
	nop			;2cec
	nop			;2ced
	nop			;2cee
	nop			;2cef
	nop			;2cf0
	nop			;2cf1
	nop			;2cf2
	nop			;2cf3
	nop			;2cf4
	nop			;2cf5
	nop			;2cf6
	nop			;2cf7
	nop			;2cf8
	nop			;2cf9
	nop			;2cfa
	nop			;2cfb
	nop			;2cfc
	nop			;2cfd
	nop			;2cfe
	nop			;2cff
	nop			;2d00
	nop			;2d01
	nop			;2d02
	nop			;2d03
	nop			;2d04
	nop			;2d05
	nop			;2d06
	nop			;2d07
	nop			;2d08
l2d09h:
	nop			;2d09
	nop			;2d0a
	nop			;2d0b
	nop			;2d0c
	nop			;2d0d
	nop			;2d0e
	nop			;2d0f
	nop			;2d10
	nop			;2d11
	nop			;2d12
	nop			;2d13
	nop			;2d14
	nop			;2d15
	nop			;2d16
	nop			;2d17
	nop			;2d18
	nop			;2d19
	nop			;2d1a
	nop			;2d1b
	nop			;2d1c
	nop			;2d1d
	nop			;2d1e
	nop			;2d1f
	nop			;2d20
	nop			;2d21
	nop			;2d22
	nop			;2d23
	nop			;2d24
	nop			;2d25
	nop			;2d26
	nop			;2d27
	nop			;2d28
	nop			;2d29
	nop			;2d2a
	nop			;2d2b
	nop			;2d2c
	nop			;2d2d
	nop			;2d2e
	nop			;2d2f
l2d30h:
	nop			;2d30
	nop			;2d31
	nop			;2d32
	nop			;2d33
	nop			;2d34
	nop			;2d35
	nop			;2d36
	nop			;2d37
	nop			;2d38
	nop			;2d39
	nop			;2d3a
	nop			;2d3b
	nop			;2d3c
	nop			;2d3d
	nop			;2d3e
	nop			;2d3f
	nop			;2d40
	nop			;2d41
	nop			;2d42
	nop			;2d43
	nop			;2d44
	nop			;2d45
	nop			;2d46
	nop			;2d47
	nop			;2d48
	nop			;2d49
	nop			;2d4a
	nop			;2d4b
	nop			;2d4c
	nop			;2d4d
	nop			;2d4e
	nop			;2d4f
	nop			;2d50
	nop			;2d51
	nop			;2d52
	nop			;2d53
	nop			;2d54
	nop			;2d55
	nop			;2d56
	nop			;2d57
	nop			;2d58
	nop			;2d59
	nop			;2d5a
	nop			;2d5b
	nop			;2d5c
	nop			;2d5d
	nop			;2d5e
	nop			;2d5f
	nop			;2d60
	nop			;2d61
	nop			;2d62
	nop			;2d63
	nop			;2d64
	nop			;2d65
	nop			;2d66
	nop			;2d67
	nop			;2d68
	nop			;2d69
	nop			;2d6a
	nop			;2d6b
	nop			;2d6c
	nop			;2d6d
	nop			;2d6e
	nop			;2d6f
	nop			;2d70
	nop			;2d71
	nop			;2d72
l2d73h:
	nop			;2d73
	nop			;2d74
	nop			;2d75
	nop			;2d76
	nop			;2d77
	nop			;2d78
	nop			;2d79
	nop			;2d7a
	nop			;2d7b
	nop			;2d7c
	nop			;2d7d
	nop			;2d7e
	nop			;2d7f
	nop			;2d80
	nop			;2d81
	nop			;2d82
	nop			;2d83
	nop			;2d84
	nop			;2d85
	nop			;2d86
	nop			;2d87
	nop			;2d88
	nop			;2d89
	nop			;2d8a
	nop			;2d8b
	nop			;2d8c
	nop			;2d8d
	nop			;2d8e
	nop			;2d8f
	nop			;2d90
	nop			;2d91
	nop			;2d92
	nop			;2d93
	nop			;2d94
	nop			;2d95
	nop			;2d96
	nop			;2d97
	nop			;2d98
	nop			;2d99
	nop			;2d9a
	nop			;2d9b
	nop			;2d9c
	nop			;2d9d
	nop			;2d9e
	nop			;2d9f
	nop			;2da0
	nop			;2da1
	nop			;2da2
l2da3h:
	nop			;2da3
	nop			;2da4
	nop			;2da5
	nop			;2da6
	nop			;2da7
	nop			;2da8
	nop			;2da9
	nop			;2daa
	nop			;2dab
	nop			;2dac
	nop			;2dad
	nop			;2dae
	nop			;2daf
	nop			;2db0
	nop			;2db1
	nop			;2db2
	nop			;2db3
	nop			;2db4
	nop			;2db5
	nop			;2db6
	nop			;2db7
	nop			;2db8
	nop			;2db9
	nop			;2dba
	nop			;2dbb
	nop			;2dbc
	nop			;2dbd
	nop			;2dbe
	nop			;2dbf
	nop			;2dc0
	nop			;2dc1
	nop			;2dc2
	nop			;2dc3
	nop			;2dc4
	nop			;2dc5
	nop			;2dc6
	nop			;2dc7
	nop			;2dc8
	nop			;2dc9
	nop			;2dca
	nop			;2dcb
	nop			;2dcc
	nop			;2dcd
	nop			;2dce
	nop			;2dcf
	nop			;2dd0
	nop			;2dd1
	nop			;2dd2
	nop			;2dd3
	nop			;2dd4
	nop			;2dd5
	nop			;2dd6
	nop			;2dd7
	nop			;2dd8
	nop			;2dd9
	nop			;2dda
	nop			;2ddb
	nop			;2ddc
	nop			;2ddd
	nop			;2dde
	nop			;2ddf
	nop			;2de0
	nop			;2de1
	nop			;2de2
	nop			;2de3
	nop			;2de4
	nop			;2de5
	nop			;2de6
	nop			;2de7
	nop			;2de8
	nop			;2de9
	nop			;2dea
	nop			;2deb
	nop			;2dec
	nop			;2ded
	nop			;2dee
	nop			;2def
	nop			;2df0
	nop			;2df1
	nop			;2df2
	nop			;2df3
	nop			;2df4
	nop			;2df5
	nop			;2df6
	nop			;2df7
	nop			;2df8
	nop			;2df9
	nop			;2dfa
	nop			;2dfb
	nop			;2dfc
	nop			;2dfd
	nop			;2dfe
	nop			;2dff
l2e00h:
	nop			;2e00
	nop			;2e01
	nop			;2e02
	nop			;2e03
	nop			;2e04
	nop			;2e05
	nop			;2e06
	nop			;2e07
	nop			;2e08
	nop			;2e09
	nop			;2e0a
	nop			;2e0b
	nop			;2e0c
	nop			;2e0d
	nop			;2e0e
	nop			;2e0f
	nop			;2e10
	nop			;2e11
	nop			;2e12
	nop			;2e13
	nop			;2e14
	nop			;2e15
	nop			;2e16
	nop			;2e17
	nop			;2e18
	nop			;2e19
	nop			;2e1a
	nop			;2e1b
	nop			;2e1c
	nop			;2e1d
	nop			;2e1e
	nop			;2e1f
	nop			;2e20
	nop			;2e21
	nop			;2e22
sub_2e23h:
	nop			;2e23
	nop			;2e24
	nop			;2e25
	nop			;2e26
	nop			;2e27
	nop			;2e28
	nop			;2e29
	nop			;2e2a
	nop			;2e2b
	nop			;2e2c
	nop			;2e2d
	nop			;2e2e
	nop			;2e2f
	nop			;2e30
	nop			;2e31
	nop			;2e32
	nop			;2e33
	nop			;2e34
	nop			;2e35
	nop			;2e36
	nop			;2e37
	nop			;2e38
	nop			;2e39
	nop			;2e3a
	nop			;2e3b
l2e3ch:
	nop			;2e3c
	nop			;2e3d
	nop			;2e3e
	nop			;2e3f
	nop			;2e40
	nop			;2e41
	nop			;2e42
	nop			;2e43
	nop			;2e44
	nop			;2e45
	nop			;2e46
	nop			;2e47
	nop			;2e48
	nop			;2e49
	nop			;2e4a
	nop			;2e4b
	nop			;2e4c
	nop			;2e4d
	nop			;2e4e
	nop			;2e4f
l2e50h:
	nop			;2e50
	nop			;2e51
	nop			;2e52
l2e53h:
	nop			;2e53
	nop			;2e54
	nop			;2e55
	nop			;2e56
	nop			;2e57
	nop			;2e58
	nop			;2e59
	nop			;2e5a
	nop			;2e5b
	nop			;2e5c
	nop			;2e5d
	nop			;2e5e
	nop			;2e5f
	nop			;2e60
	nop			;2e61
	nop			;2e62
	nop			;2e63
	nop			;2e64
	nop			;2e65
	nop			;2e66
	nop			;2e67
	nop			;2e68
	nop			;2e69
	nop			;2e6a
	nop			;2e6b
	nop			;2e6c
	nop			;2e6d
	nop			;2e6e
	nop			;2e6f
	nop			;2e70
	nop			;2e71
	nop			;2e72
	nop			;2e73
	nop			;2e74
	nop			;2e75
	nop			;2e76
	nop			;2e77
	nop			;2e78
	nop			;2e79
	nop			;2e7a
	nop			;2e7b
	nop			;2e7c
	nop			;2e7d
	nop			;2e7e
	nop			;2e7f
	nop			;2e80
	nop			;2e81
	nop			;2e82
	nop			;2e83
	nop			;2e84
	nop			;2e85
	nop			;2e86
	nop			;2e87
l2e88h:
	nop			;2e88
sub_2e89h:
	nop			;2e89
	nop			;2e8a
	nop			;2e8b
	nop			;2e8c
	nop			;2e8d
	nop			;2e8e
	nop			;2e8f
	nop			;2e90
	nop			;2e91
	nop			;2e92
	nop			;2e93
	nop			;2e94
	nop			;2e95
	nop			;2e96
	nop			;2e97
	nop			;2e98
	nop			;2e99
	nop			;2e9a
	nop			;2e9b
	nop			;2e9c
	nop			;2e9d
	nop			;2e9e
	nop			;2e9f
	nop			;2ea0
	nop			;2ea1
	nop			;2ea2
	nop			;2ea3
	nop			;2ea4
	nop			;2ea5
	nop			;2ea6
	nop			;2ea7
	nop			;2ea8
	nop			;2ea9
	nop			;2eaa
	nop			;2eab
	nop			;2eac
	nop			;2ead
	nop			;2eae
	nop			;2eaf
	nop			;2eb0
	nop			;2eb1
	nop			;2eb2
	nop			;2eb3
	nop			;2eb4
	nop			;2eb5
	nop			;2eb6
	nop			;2eb7
	nop			;2eb8
	nop			;2eb9
	nop			;2eba
	nop			;2ebb
	nop			;2ebc
	nop			;2ebd
	nop			;2ebe
	nop			;2ebf
	nop			;2ec0
	nop			;2ec1
	nop			;2ec2
	nop			;2ec3
l2ec4h:
	nop			;2ec4
	nop			;2ec5
	nop			;2ec6
	nop			;2ec7
	nop			;2ec8
	nop			;2ec9
	nop			;2eca
	nop			;2ecb
	nop			;2ecc
	nop			;2ecd
	nop			;2ece
	nop			;2ecf
	nop			;2ed0
	nop			;2ed1
	nop			;2ed2
	nop			;2ed3
	nop			;2ed4
	nop			;2ed5
	nop			;2ed6
	nop			;2ed7
	nop			;2ed8
	nop			;2ed9
	nop			;2eda
l2edbh:
	nop			;2edb
	nop			;2edc
	nop			;2edd
	nop			;2ede
	nop			;2edf
	nop			;2ee0
	nop			;2ee1
	nop			;2ee2
	nop			;2ee3
	nop			;2ee4
	nop			;2ee5
	nop			;2ee6
	nop			;2ee7
l2ee8h:
	nop			;2ee8
	nop			;2ee9
	nop			;2eea
	nop			;2eeb
	nop			;2eec
	nop			;2eed
	nop			;2eee
	nop			;2eef
	nop			;2ef0
	nop			;2ef1
	nop			;2ef2
	nop			;2ef3
	nop			;2ef4
	nop			;2ef5
	nop			;2ef6
	nop			;2ef7
	nop			;2ef8
	nop			;2ef9
	nop			;2efa
	nop			;2efb
l2efch:
	nop			;2efc
	nop			;2efd
	nop			;2efe
	nop			;2eff
	nop			;2f00
	nop			;2f01
	nop			;2f02
	nop			;2f03
	nop			;2f04
	nop			;2f05
	nop			;2f06
	nop			;2f07
	nop			;2f08
	nop			;2f09
	nop			;2f0a
	nop			;2f0b
	nop			;2f0c
	nop			;2f0d
	nop			;2f0e
	nop			;2f0f
	nop			;2f10
	nop			;2f11
	nop			;2f12
	nop			;2f13
	nop			;2f14
	nop			;2f15
	nop			;2f16
	nop			;2f17
	nop			;2f18
	nop			;2f19
	nop			;2f1a
	nop			;2f1b
	nop			;2f1c
	nop			;2f1d
	nop			;2f1e
	nop			;2f1f
	nop			;2f20
	nop			;2f21
	nop			;2f22
	nop			;2f23
	nop			;2f24
	nop			;2f25
	nop			;2f26
	nop			;2f27
	nop			;2f28
	nop			;2f29
	nop			;2f2a
	nop			;2f2b
	nop			;2f2c
	nop			;2f2d
	nop			;2f2e
	nop			;2f2f
	nop			;2f30
	nop			;2f31
	nop			;2f32
	nop			;2f33
	nop			;2f34
	nop			;2f35
	nop			;2f36
	nop			;2f37
	nop			;2f38
	nop			;2f39
	nop			;2f3a
	nop			;2f3b
	nop			;2f3c
	nop			;2f3d
	nop			;2f3e
	nop			;2f3f
	nop			;2f40
	nop			;2f41
	nop			;2f42
	nop			;2f43
	nop			;2f44
	nop			;2f45
	nop			;2f46
	nop			;2f47
	nop			;2f48
	nop			;2f49
	nop			;2f4a
	nop			;2f4b
	nop			;2f4c
	nop			;2f4d
	nop			;2f4e
	nop			;2f4f
	nop			;2f50
	nop			;2f51
	nop			;2f52
	nop			;2f53
	nop			;2f54
	nop			;2f55
	nop			;2f56
	nop			;2f57
	nop			;2f58
	nop			;2f59
	nop			;2f5a
	nop			;2f5b
	nop			;2f5c
	nop			;2f5d
	nop			;2f5e
	nop			;2f5f
	nop			;2f60
	nop			;2f61
	nop			;2f62
	nop			;2f63
	nop			;2f64
	nop			;2f65
	nop			;2f66
	nop			;2f67
	nop			;2f68
	nop			;2f69
	nop			;2f6a
	nop			;2f6b
	nop			;2f6c
	nop			;2f6d
	nop			;2f6e
	nop			;2f6f
	nop			;2f70
	nop			;2f71
	nop			;2f72
	nop			;2f73
	nop			;2f74
	nop			;2f75
	nop			;2f76
	nop			;2f77
	nop			;2f78
	nop			;2f79
	nop			;2f7a
	nop			;2f7b
	nop			;2f7c
	nop			;2f7d
	nop			;2f7e
	nop			;2f7f
	nop			;2f80
	nop			;2f81
	nop			;2f82
	nop			;2f83
	nop			;2f84
	nop			;2f85
	nop			;2f86
	nop			;2f87
	nop			;2f88
	nop			;2f89
	nop			;2f8a
	nop			;2f8b
	nop			;2f8c
	nop			;2f8d
	nop			;2f8e
	nop			;2f8f
	nop			;2f90
	nop			;2f91
	nop			;2f92
	nop			;2f93
	nop			;2f94
	nop			;2f95
	nop			;2f96
	nop			;2f97
	nop			;2f98
	nop			;2f99
	nop			;2f9a
	nop			;2f9b
	nop			;2f9c
	nop			;2f9d
	nop			;2f9e
	nop			;2f9f
	nop			;2fa0
l2fa1h:
	nop			;2fa1
	nop			;2fa2
	nop			;2fa3
	nop			;2fa4
	nop			;2fa5
	nop			;2fa6
	nop			;2fa7
	nop			;2fa8
	nop			;2fa9
	nop			;2faa
	nop			;2fab
	nop			;2fac
	nop			;2fad
	nop			;2fae
	nop			;2faf
	nop			;2fb0
	nop			;2fb1
	nop			;2fb2
	nop			;2fb3
	nop			;2fb4
	nop			;2fb5
	nop			;2fb6
	nop			;2fb7
	nop			;2fb8
	nop			;2fb9
	nop			;2fba
	nop			;2fbb
	nop			;2fbc
	nop			;2fbd
	nop			;2fbe
	nop			;2fbf
	nop			;2fc0
	nop			;2fc1
	nop			;2fc2
	nop			;2fc3
	nop			;2fc4
	nop			;2fc5
	nop			;2fc6
	nop			;2fc7
	nop			;2fc8
	nop			;2fc9
	nop			;2fca
	nop			;2fcb
	nop			;2fcc
	nop			;2fcd
	nop			;2fce
	nop			;2fcf
	nop			;2fd0
	nop			;2fd1
	nop			;2fd2
	nop			;2fd3
	nop			;2fd4
	nop			;2fd5
	nop			;2fd6
	nop			;2fd7
	nop			;2fd8
	nop			;2fd9
	nop			;2fda
	nop			;2fdb
	nop			;2fdc
	nop			;2fdd
	nop			;2fde
	nop			;2fdf
	nop			;2fe0
	nop			;2fe1
	nop			;2fe2
	nop			;2fe3
	nop			;2fe4
	nop			;2fe5
	nop			;2fe6
	nop			;2fe7
	nop			;2fe8
	nop			;2fe9
	nop			;2fea
	nop			;2feb
	nop			;2fec
	nop			;2fed
	nop			;2fee
	nop			;2fef
	nop			;2ff0
	nop			;2ff1
	nop			;2ff2
	nop			;2ff3
	nop			;2ff4
	nop			;2ff5
	nop			;2ff6
	nop			;2ff7
	nop			;2ff8
	nop			;2ff9
	nop			;2ffa
	nop			;2ffb
	nop			;2ffc
	nop			;2ffd
	nop			;2ffe
	nop			;2fff
	nop			;3000
	nop			;3001
	nop			;3002
	nop			;3003
	nop			;3004
	nop			;3005
	nop			;3006
	nop			;3007
	nop			;3008
	nop			;3009
	nop			;300a
	nop			;300b
	nop			;300c
	nop			;300d
	nop			;300e
	nop			;300f
	nop			;3010
	nop			;3011
	nop			;3012
	nop			;3013
	nop			;3014
	nop			;3015
	nop			;3016
	nop			;3017
	nop			;3018
	nop			;3019
	nop			;301a
	nop			;301b
	nop			;301c
	nop			;301d
	nop			;301e
	nop			;301f
	nop			;3020
	nop			;3021
	nop			;3022
	nop			;3023
	nop			;3024
	nop			;3025
	nop			;3026
	nop			;3027
	nop			;3028
	nop			;3029
	nop			;302a
	nop			;302b
	nop			;302c
	nop			;302d
	nop			;302e
	nop			;302f
l3030h:
	nop			;3030
	nop			;3031
	nop			;3032
	nop			;3033
	nop			;3034
	nop			;3035
	nop			;3036
	nop			;3037
	nop			;3038
	nop			;3039
	nop			;303a
	nop			;303b
	nop			;303c
	nop			;303d
	nop			;303e
	nop			;303f
	nop			;3040
	nop			;3041
	nop			;3042
	nop			;3043
	nop			;3044
	nop			;3045
	nop			;3046
	nop			;3047
	nop			;3048
	nop			;3049
	nop			;304a
	nop			;304b
	nop			;304c
	nop			;304d
	nop			;304e
	nop			;304f
	nop			;3050
	nop			;3051
	nop			;3052
	nop			;3053
	nop			;3054
	nop			;3055
	nop			;3056
	nop			;3057
	nop			;3058
	nop			;3059
	nop			;305a
	nop			;305b
	nop			;305c
	nop			;305d
	nop			;305e
	nop			;305f
	nop			;3060
	nop			;3061
	nop			;3062
	nop			;3063
	nop			;3064
	nop			;3065
	nop			;3066
	nop			;3067
	nop			;3068
	nop			;3069
	nop			;306a
	nop			;306b
	nop			;306c
	nop			;306d
	nop			;306e
	nop			;306f
	nop			;3070
	nop			;3071
	nop			;3072
	nop			;3073
	nop			;3074
	nop			;3075
	nop			;3076
	nop			;3077
	nop			;3078
	nop			;3079
	nop			;307a
	nop			;307b
	nop			;307c
	nop			;307d
	nop			;307e
	nop			;307f
	nop			;3080
	nop			;3081
	nop			;3082
	nop			;3083
	nop			;3084
	nop			;3085
	nop			;3086
	nop			;3087
	nop			;3088
	nop			;3089
	nop			;308a
	nop			;308b
	nop			;308c
	nop			;308d
	nop			;308e
	nop			;308f
	nop			;3090
	nop			;3091
	nop			;3092
	nop			;3093
	nop			;3094
	nop			;3095
	nop			;3096
	nop			;3097
	nop			;3098
	nop			;3099
	nop			;309a
	nop			;309b
	nop			;309c
	nop			;309d
	nop			;309e
	nop			;309f
	nop			;30a0
	nop			;30a1
	nop			;30a2
	nop			;30a3
	nop			;30a4
	nop			;30a5
	nop			;30a6
	nop			;30a7
	nop			;30a8
	nop			;30a9
	nop			;30aa
	nop			;30ab
	nop			;30ac
	nop			;30ad
	nop			;30ae
	nop			;30af
	nop			;30b0
	nop			;30b1
	nop			;30b2
	nop			;30b3
	nop			;30b4
	nop			;30b5
	nop			;30b6
	nop			;30b7
	nop			;30b8
	nop			;30b9
	nop			;30ba
	nop			;30bb
	nop			;30bc
	nop			;30bd
	nop			;30be
	nop			;30bf
	nop			;30c0
	nop			;30c1
	nop			;30c2
	nop			;30c3
	nop			;30c4
	nop			;30c5
	nop			;30c6
	nop			;30c7
	nop			;30c8
	nop			;30c9
	nop			;30ca
	nop			;30cb
	nop			;30cc
	nop			;30cd
	nop			;30ce
	nop			;30cf
	nop			;30d0
	nop			;30d1
	nop			;30d2
	nop			;30d3
	nop			;30d4
	nop			;30d5
	nop			;30d6
	nop			;30d7
	nop			;30d8
	nop			;30d9
	nop			;30da
	nop			;30db
	nop			;30dc
	nop			;30dd
	nop			;30de
	nop			;30df
	nop			;30e0
	nop			;30e1
	nop			;30e2
	nop			;30e3
	nop			;30e4
	nop			;30e5
	nop			;30e6
	nop			;30e7
	nop			;30e8
	nop			;30e9
	nop			;30ea
	nop			;30eb
	nop			;30ec
	nop			;30ed
	nop			;30ee
	nop			;30ef
	nop			;30f0
	nop			;30f1
	nop			;30f2
	nop			;30f3
	nop			;30f4
	nop			;30f5
	nop			;30f6
	nop			;30f7
	nop			;30f8
	nop			;30f9
	nop			;30fa
	nop			;30fb
	nop			;30fc
	nop			;30fd
	nop			;30fe
	nop			;30ff
	nop			;3100
	nop			;3101
	nop			;3102
	nop			;3103
	nop			;3104
	nop			;3105
l3106h:
	nop			;3106
	nop			;3107
	nop			;3108
	nop			;3109
	nop			;310a
	nop			;310b
	nop			;310c
	nop			;310d
	nop			;310e
	nop			;310f
	nop			;3110
	nop			;3111
	nop			;3112
	nop			;3113
	nop			;3114
	nop			;3115
	nop			;3116
	nop			;3117
	nop			;3118
	nop			;3119
	nop			;311a
	nop			;311b
	nop			;311c
	nop			;311d
	nop			;311e
	nop			;311f
	nop			;3120
	nop			;3121
	nop			;3122
	nop			;3123
	nop			;3124
	nop			;3125
	nop			;3126
	nop			;3127
	nop			;3128
	nop			;3129
	nop			;312a
	nop			;312b
	nop			;312c
	nop			;312d
	nop			;312e
	nop			;312f
	nop			;3130
	nop			;3131
	nop			;3132
	nop			;3133
	nop			;3134
	nop			;3135
	nop			;3136
	nop			;3137
	nop			;3138
	nop			;3139
	nop			;313a
	nop			;313b
	nop			;313c
	nop			;313d
	nop			;313e
	nop			;313f
	nop			;3140
	nop			;3141
	nop			;3142
	nop			;3143
	nop			;3144
	nop			;3145
	nop			;3146
	nop			;3147
	nop			;3148
	nop			;3149
	nop			;314a
	nop			;314b
	nop			;314c
	nop			;314d
	nop			;314e
	nop			;314f
	nop			;3150
	nop			;3151
	nop			;3152
	nop			;3153
	nop			;3154
	nop			;3155
	nop			;3156
	nop			;3157
	nop			;3158
	nop			;3159
	nop			;315a
	nop			;315b
	nop			;315c
	nop			;315d
	nop			;315e
	nop			;315f
	nop			;3160
	nop			;3161
	nop			;3162
	nop			;3163
	nop			;3164
	nop			;3165
	nop			;3166
	nop			;3167
	nop			;3168
	nop			;3169
	nop			;316a
	nop			;316b
	nop			;316c
	nop			;316d
	nop			;316e
	nop			;316f
	nop			;3170
	nop			;3171
	nop			;3172
	nop			;3173
	nop			;3174
	nop			;3175
	nop			;3176
	nop			;3177
	nop			;3178
	nop			;3179
	nop			;317a
	nop			;317b
	nop			;317c
	nop			;317d
	nop			;317e
	nop			;317f
	nop			;3180
	nop			;3181
	nop			;3182
	nop			;3183
	nop			;3184
	nop			;3185
	nop			;3186
	nop			;3187
	nop			;3188
	nop			;3189
	nop			;318a
	nop			;318b
	nop			;318c
	nop			;318d
	nop			;318e
	nop			;318f
	nop			;3190
	nop			;3191
	nop			;3192
	nop			;3193
	nop			;3194
	nop			;3195
	nop			;3196
	nop			;3197
	nop			;3198
	nop			;3199
	nop			;319a
	nop			;319b
	nop			;319c
	nop			;319d
	nop			;319e
	nop			;319f
	nop			;31a0
l31a1h:
	nop			;31a1
	nop			;31a2
	nop			;31a3
	nop			;31a4
	nop			;31a5
	nop			;31a6
	nop			;31a7
	nop			;31a8
	nop			;31a9
	nop			;31aa
	nop			;31ab
	nop			;31ac
	nop			;31ad
	nop			;31ae
	nop			;31af
	nop			;31b0
	nop			;31b1
	nop			;31b2
	nop			;31b3
	nop			;31b4
	nop			;31b5
	nop			;31b6
	nop			;31b7
	nop			;31b8
	nop			;31b9
	nop			;31ba
	nop			;31bb
	nop			;31bc
	nop			;31bd
	nop			;31be
	nop			;31bf
	nop			;31c0
	nop			;31c1
	nop			;31c2
	nop			;31c3
	nop			;31c4
	nop			;31c5
	nop			;31c6
	nop			;31c7
	nop			;31c8
	nop			;31c9
	nop			;31ca
	nop			;31cb
	nop			;31cc
	nop			;31cd
	nop			;31ce
	nop			;31cf
	nop			;31d0
	nop			;31d1
	nop			;31d2
	nop			;31d3
	nop			;31d4
	nop			;31d5
	nop			;31d6
	nop			;31d7
	nop			;31d8
	nop			;31d9
	nop			;31da
	nop			;31db
	nop			;31dc
	nop			;31dd
	nop			;31de
	nop			;31df
	nop			;31e0
	nop			;31e1
	nop			;31e2
	nop			;31e3
	nop			;31e4
	nop			;31e5
	nop			;31e6
	nop			;31e7
	nop			;31e8
	nop			;31e9
	nop			;31ea
	nop			;31eb
	nop			;31ec
	nop			;31ed
	nop			;31ee
	nop			;31ef
	nop			;31f0
	nop			;31f1
	nop			;31f2
	nop			;31f3
	nop			;31f4
	nop			;31f5
	nop			;31f6
	nop			;31f7
	nop			;31f8
	nop			;31f9
	nop			;31fa
	nop			;31fb
	nop			;31fc
	nop			;31fd
	nop			;31fe
	nop			;31ff
l3200h:
	nop			;3200
	nop			;3201
	nop			;3202
	nop			;3203
	nop			;3204
	nop			;3205
	nop			;3206
	nop			;3207
	nop			;3208
	nop			;3209
l320ah:
	nop			;320a
	nop			;320b
	nop			;320c
	nop			;320d
	nop			;320e
	nop			;320f
	nop			;3210
	nop			;3211
	nop			;3212
	nop			;3213
	nop			;3214
	nop			;3215
	nop			;3216
	nop			;3217
	nop			;3218
	nop			;3219
	nop			;321a
	nop			;321b
	nop			;321c
	nop			;321d
	nop			;321e
	nop			;321f
	nop			;3220
	nop			;3221
	nop			;3222
	nop			;3223
	nop			;3224
	nop			;3225
	nop			;3226
	nop			;3227
	nop			;3228
	nop			;3229
	nop			;322a
	nop			;322b
	nop			;322c
	nop			;322d
	nop			;322e
	nop			;322f
	nop			;3230
	nop			;3231
	nop			;3232
	nop			;3233
	nop			;3234
	nop			;3235
	nop			;3236
	nop			;3237
	nop			;3238
	nop			;3239
	nop			;323a
	nop			;323b
	nop			;323c
	nop			;323d
	nop			;323e
	nop			;323f
	nop			;3240
	nop			;3241
	nop			;3242
	nop			;3243
	nop			;3244
	nop			;3245
	nop			;3246
	nop			;3247
	nop			;3248
	nop			;3249
	nop			;324a
	nop			;324b
	nop			;324c
	nop			;324d
	nop			;324e
	nop			;324f
	nop			;3250
	nop			;3251
	nop			;3252
	nop			;3253
	nop			;3254
	nop			;3255
	nop			;3256
	nop			;3257
	nop			;3258
	nop			;3259
l325ah:
	nop			;325a
	nop			;325b
	nop			;325c
	nop			;325d
	nop			;325e
	nop			;325f
	nop			;3260
	nop			;3261
	nop			;3262
	nop			;3263
	nop			;3264
	nop			;3265
	nop			;3266
	nop			;3267
	nop			;3268
	nop			;3269
	nop			;326a
	nop			;326b
	nop			;326c
	nop			;326d
	nop			;326e
	nop			;326f
	nop			;3270
	nop			;3271
	nop			;3272
	nop			;3273
	nop			;3274
	nop			;3275
	nop			;3276
	nop			;3277
	nop			;3278
	nop			;3279
	nop			;327a
	nop			;327b
	nop			;327c
	nop			;327d
	nop			;327e
	nop			;327f
	nop			;3280
	nop			;3281
	nop			;3282
	nop			;3283
	nop			;3284
	nop			;3285
	nop			;3286
	nop			;3287
	nop			;3288
	nop			;3289
	nop			;328a
	nop			;328b
	nop			;328c
	nop			;328d
	nop			;328e
	nop			;328f
	nop			;3290
	nop			;3291
	nop			;3292
	nop			;3293
	nop			;3294
	nop			;3295
	nop			;3296
	nop			;3297
	nop			;3298
	nop			;3299
	nop			;329a
	nop			;329b
	nop			;329c
	nop			;329d
	nop			;329e
	nop			;329f
	nop			;32a0
	nop			;32a1
	nop			;32a2
	nop			;32a3
	nop			;32a4
	nop			;32a5
	nop			;32a6
	nop			;32a7
	nop			;32a8
	nop			;32a9
	nop			;32aa
	nop			;32ab
	nop			;32ac
	nop			;32ad
	nop			;32ae
	nop			;32af
	nop			;32b0
	nop			;32b1
	nop			;32b2
	nop			;32b3
	nop			;32b4
	nop			;32b5
	nop			;32b6
	nop			;32b7
	nop			;32b8
	nop			;32b9
	nop			;32ba
	nop			;32bb
	nop			;32bc
	nop			;32bd
	nop			;32be
	nop			;32bf
	nop			;32c0
	nop			;32c1
	nop			;32c2
	nop			;32c3
	nop			;32c4
	nop			;32c5
	nop			;32c6
	nop			;32c7
	nop			;32c8
	nop			;32c9
	nop			;32ca
	nop			;32cb
	nop			;32cc
	nop			;32cd
	nop			;32ce
	nop			;32cf
	nop			;32d0
	nop			;32d1
	nop			;32d2
	nop			;32d3
	nop			;32d4
	nop			;32d5
	nop			;32d6
	nop			;32d7
	nop			;32d8
	nop			;32d9
	nop			;32da
	nop			;32db
	nop			;32dc
	nop			;32dd
	nop			;32de
	nop			;32df
	nop			;32e0
	nop			;32e1
	nop			;32e2
	nop			;32e3
	nop			;32e4
	nop			;32e5
	nop			;32e6
	nop			;32e7
	nop			;32e8
	nop			;32e9
	nop			;32ea
	nop			;32eb
	nop			;32ec
	nop			;32ed
	nop			;32ee
	nop			;32ef
	nop			;32f0
	nop			;32f1
	nop			;32f2
	nop			;32f3
	nop			;32f4
	nop			;32f5
	nop			;32f6
l32f7h:
	nop			;32f7
	nop			;32f8
	nop			;32f9
	nop			;32fa
	nop			;32fb
	nop			;32fc
	nop			;32fd
	nop			;32fe
	nop			;32ff
l3300h:
	nop			;3300
	nop			;3301
	nop			;3302
	nop			;3303
	nop			;3304
	nop			;3305
	nop			;3306
	nop			;3307
	nop			;3308
	nop			;3309
	nop			;330a
	nop			;330b
	nop			;330c
	nop			;330d
	nop			;330e
	nop			;330f
	nop			;3310
	nop			;3311
	nop			;3312
	nop			;3313
	nop			;3314
	nop			;3315
	nop			;3316
	nop			;3317
	nop			;3318
	nop			;3319
l331ah:
	nop			;331a
	nop			;331b
	nop			;331c
	nop			;331d
	nop			;331e
	nop			;331f
	nop			;3320
	nop			;3321
	nop			;3322
	nop			;3323
	nop			;3324
	nop			;3325
	nop			;3326
	nop			;3327
	nop			;3328
	nop			;3329
	nop			;332a
	nop			;332b
	nop			;332c
	nop			;332d
	nop			;332e
	nop			;332f
	nop			;3330
	nop			;3331
	nop			;3332
	nop			;3333
	nop			;3334
	nop			;3335
	nop			;3336
	nop			;3337
	nop			;3338
	nop			;3339
	nop			;333a
	nop			;333b
	nop			;333c
	nop			;333d
	nop			;333e
	nop			;333f
	nop			;3340
	nop			;3341
	nop			;3342
	nop			;3343
	nop			;3344
	nop			;3345
	nop			;3346
	nop			;3347
l3348h:
	nop			;3348
	nop			;3349
	nop			;334a
	nop			;334b
	nop			;334c
	nop			;334d
	nop			;334e
	nop			;334f
l3350h:
	nop			;3350
	nop			;3351
	nop			;3352
l3353h:
	nop			;3353
	nop			;3354
	nop			;3355
	nop			;3356
	nop			;3357
	nop			;3358
	nop			;3359
	nop			;335a
	nop			;335b
	nop			;335c
	nop			;335d
	nop			;335e
	nop			;335f
	nop			;3360
	nop			;3361
	nop			;3362
	nop			;3363
	nop			;3364
	nop			;3365
	nop			;3366
	nop			;3367
	nop			;3368
	nop			;3369
	nop			;336a
	nop			;336b
	nop			;336c
	nop			;336d
	nop			;336e
	nop			;336f
	nop			;3370
	nop			;3371
	nop			;3372
	nop			;3373
sub_3374h:
	nop			;3374
	nop			;3375
	nop			;3376
	nop			;3377
	nop			;3378
	nop			;3379
	nop			;337a
	nop			;337b
	nop			;337c
	nop			;337d
	nop			;337e
	nop			;337f
	nop			;3380
	nop			;3381
	nop			;3382
	nop			;3383
	nop			;3384
	nop			;3385
	nop			;3386
	nop			;3387
	nop			;3388
	nop			;3389
	nop			;338a
	nop			;338b
	nop			;338c
	nop			;338d
	nop			;338e
	nop			;338f
	nop			;3390
	nop			;3391
	nop			;3392
	nop			;3393
	nop			;3394
	nop			;3395
	nop			;3396
	nop			;3397
	nop			;3398
	nop			;3399
	nop			;339a
	nop			;339b
	nop			;339c
	nop			;339d
	nop			;339e
	nop			;339f
	nop			;33a0
	nop			;33a1
	nop			;33a2
	nop			;33a3
	nop			;33a4
	nop			;33a5
	nop			;33a6
	nop			;33a7
	nop			;33a8
	nop			;33a9
sub_33aah:
	nop			;33aa
l33abh:
	nop			;33ab
	nop			;33ac
	nop			;33ad
	nop			;33ae
	nop			;33af
	nop			;33b0
	nop			;33b1
	nop			;33b2
	nop			;33b3
	nop			;33b4
	nop			;33b5
	nop			;33b6
	nop			;33b7
	nop			;33b8
	nop			;33b9
	nop			;33ba
	nop			;33bb
	nop			;33bc
	nop			;33bd
	nop			;33be
	nop			;33bf
	nop			;33c0
	nop			;33c1
	nop			;33c2
	nop			;33c3
	nop			;33c4
	nop			;33c5
	nop			;33c6
	nop			;33c7
	nop			;33c8
	nop			;33c9
	nop			;33ca
	nop			;33cb
	nop			;33cc
	nop			;33cd
	nop			;33ce
	nop			;33cf
	nop			;33d0
	nop			;33d1
	nop			;33d2
	nop			;33d3
	nop			;33d4
	nop			;33d5
	nop			;33d6
	nop			;33d7
	nop			;33d8
	nop			;33d9
	nop			;33da
	nop			;33db
	nop			;33dc
	nop			;33dd
	nop			;33de
	nop			;33df
	nop			;33e0
	nop			;33e1
	nop			;33e2
	nop			;33e3
	nop			;33e4
	nop			;33e5
	nop			;33e6
	nop			;33e7
	nop			;33e8
	nop			;33e9
	nop			;33ea
	nop			;33eb
	nop			;33ec
	nop			;33ed
	nop			;33ee
	nop			;33ef
	nop			;33f0
	nop			;33f1
	nop			;33f2
	nop			;33f3
	nop			;33f4
	nop			;33f5
	nop			;33f6
	nop			;33f7
	nop			;33f8
	nop			;33f9
	nop			;33fa
	nop			;33fb
	nop			;33fc
	nop			;33fd
	nop			;33fe
	nop			;33ff
	nop			;3400
	nop			;3401
	nop			;3402
	nop			;3403
	nop			;3404
	nop			;3405
	nop			;3406
	nop			;3407
	nop			;3408
	nop			;3409
	nop			;340a
	nop			;340b
	nop			;340c
	nop			;340d
	nop			;340e
	nop			;340f
	nop			;3410
	nop			;3411
	nop			;3412
	nop			;3413
	nop			;3414
	nop			;3415
	nop			;3416
	nop			;3417
	nop			;3418
	nop			;3419
	nop			;341a
	nop			;341b
	nop			;341c
	nop			;341d
	nop			;341e
	nop			;341f
	nop			;3420
	nop			;3421
	nop			;3422
	nop			;3423
	nop			;3424
	nop			;3425
	nop			;3426
	nop			;3427
	nop			;3428
	nop			;3429
	nop			;342a
	nop			;342b
	nop			;342c
	nop			;342d
	nop			;342e
	nop			;342f
	nop			;3430
	nop			;3431
	nop			;3432
l3433h:
	nop			;3433
	nop			;3434
	nop			;3435
	nop			;3436
	nop			;3437
	nop			;3438
	nop			;3439
	nop			;343a
	nop			;343b
	nop			;343c
	nop			;343d
	nop			;343e
	nop			;343f
	nop			;3440
	nop			;3441
	nop			;3442
	nop			;3443
	nop			;3444
	nop			;3445
	nop			;3446
	nop			;3447
	nop			;3448
	nop			;3449
	nop			;344a
	nop			;344b
	nop			;344c
	nop			;344d
	nop			;344e
	nop			;344f
	nop			;3450
	nop			;3451
	nop			;3452
	nop			;3453
	nop			;3454
	nop			;3455
	nop			;3456
	nop			;3457
	nop			;3458
	nop			;3459
	nop			;345a
	nop			;345b
	nop			;345c
	nop			;345d
	nop			;345e
	nop			;345f
	nop			;3460
	nop			;3461
	nop			;3462
	nop			;3463
	nop			;3464
	nop			;3465
	nop			;3466
	nop			;3467
	nop			;3468
	nop			;3469
	nop			;346a
	nop			;346b
	nop			;346c
	nop			;346d
	nop			;346e
	nop			;346f
	nop			;3470
	nop			;3471
	nop			;3472
	nop			;3473
	nop			;3474
	nop			;3475
	nop			;3476
	nop			;3477
	nop			;3478
	nop			;3479
	nop			;347a
	nop			;347b
	nop			;347c
	nop			;347d
	nop			;347e
	nop			;347f
	nop			;3480
	nop			;3481
	nop			;3482
	nop			;3483
	nop			;3484
	nop			;3485
	nop			;3486
	nop			;3487
	nop			;3488
	nop			;3489
	nop			;348a
	nop			;348b
	nop			;348c
	nop			;348d
	nop			;348e
	nop			;348f
	nop			;3490
	nop			;3491
	nop			;3492
	nop			;3493
	nop			;3494
	nop			;3495
	nop			;3496
	nop			;3497
	nop			;3498
	nop			;3499
	nop			;349a
	nop			;349b
	nop			;349c
	nop			;349d
	nop			;349e
	nop			;349f
	nop			;34a0
	nop			;34a1
	nop			;34a2
	nop			;34a3
	nop			;34a4
	nop			;34a5
	nop			;34a6
	nop			;34a7
	nop			;34a8
	nop			;34a9
	nop			;34aa
	nop			;34ab
	nop			;34ac
	nop			;34ad
	nop			;34ae
	nop			;34af
	nop			;34b0
	nop			;34b1
	nop			;34b2
	nop			;34b3
	nop			;34b4
	nop			;34b5
	nop			;34b6
	nop			;34b7
	nop			;34b8
	nop			;34b9
	nop			;34ba
	nop			;34bb
	nop			;34bc
	nop			;34bd
	nop			;34be
	nop			;34bf
	nop			;34c0
	nop			;34c1
	nop			;34c2
	nop			;34c3
	nop			;34c4
	nop			;34c5
	nop			;34c6
	nop			;34c7
	nop			;34c8
	nop			;34c9
	nop			;34ca
	nop			;34cb
	nop			;34cc
	nop			;34cd
	nop			;34ce
	nop			;34cf
	nop			;34d0
	nop			;34d1
	nop			;34d2
	nop			;34d3
	nop			;34d4
	nop			;34d5
	nop			;34d6
	nop			;34d7
	nop			;34d8
	nop			;34d9
	nop			;34da
	nop			;34db
	nop			;34dc
	nop			;34dd
	nop			;34de
	nop			;34df
	nop			;34e0
	nop			;34e1
	nop			;34e2
	nop			;34e3
	nop			;34e4
	nop			;34e5
	nop			;34e6
	nop			;34e7
	nop			;34e8
	nop			;34e9
	nop			;34ea
	nop			;34eb
	nop			;34ec
	nop			;34ed
	nop			;34ee
	nop			;34ef
	nop			;34f0
	nop			;34f1
	nop			;34f2
	nop			;34f3
	nop			;34f4
	nop			;34f5
	nop			;34f6
	nop			;34f7
	nop			;34f8
	nop			;34f9
	nop			;34fa
	nop			;34fb
	nop			;34fc
	nop			;34fd
	nop			;34fe
	nop			;34ff
	nop			;3500
	nop			;3501
	nop			;3502
	nop			;3503
	nop			;3504
	nop			;3505
	nop			;3506
	nop			;3507
	nop			;3508
	nop			;3509
	nop			;350a
	nop			;350b
	nop			;350c
	nop			;350d
	nop			;350e
	nop			;350f
	nop			;3510
	nop			;3511
	nop			;3512
	nop			;3513
	nop			;3514
	nop			;3515
	nop			;3516
	nop			;3517
	nop			;3518
	nop			;3519
	nop			;351a
	nop			;351b
	nop			;351c
	nop			;351d
	nop			;351e
	nop			;351f
	nop			;3520
	nop			;3521
	nop			;3522
	nop			;3523
	nop			;3524
	nop			;3525
	nop			;3526
l3527h:
	nop			;3527
	nop			;3528
	nop			;3529
	nop			;352a
	nop			;352b
	nop			;352c
	nop			;352d
	nop			;352e
	nop			;352f
	nop			;3530
	nop			;3531
	nop			;3532
	nop			;3533
	nop			;3534
	nop			;3535
	nop			;3536
	nop			;3537
	nop			;3538
	nop			;3539
	nop			;353a
	nop			;353b
	nop			;353c
	nop			;353d
	nop			;353e
	nop			;353f
	nop			;3540
	nop			;3541
	nop			;3542
	nop			;3543
	nop			;3544
	nop			;3545
	nop			;3546
	nop			;3547
	nop			;3548
	nop			;3549
	nop			;354a
	nop			;354b
	nop			;354c
	nop			;354d
	nop			;354e
	nop			;354f
	nop			;3550
	nop			;3551
	nop			;3552
	nop			;3553
	nop			;3554
	nop			;3555
	nop			;3556
	nop			;3557
	nop			;3558
	nop			;3559
	nop			;355a
	nop			;355b
	nop			;355c
	nop			;355d
	nop			;355e
	nop			;355f
	nop			;3560
	nop			;3561
	nop			;3562
	nop			;3563
	nop			;3564
	nop			;3565
	nop			;3566
	nop			;3567
	nop			;3568
	nop			;3569
	nop			;356a
	nop			;356b
	nop			;356c
	nop			;356d
	nop			;356e
	nop			;356f
	nop			;3570
	nop			;3571
	nop			;3572
	nop			;3573
	nop			;3574
	nop			;3575
	nop			;3576
	nop			;3577
	nop			;3578
	nop			;3579
	nop			;357a
	nop			;357b
	nop			;357c
	nop			;357d
	nop			;357e
	nop			;357f
	nop			;3580
	nop			;3581
	nop			;3582
	nop			;3583
	nop			;3584
	nop			;3585
	nop			;3586
	nop			;3587
	nop			;3588
l3589h:
	nop			;3589
	nop			;358a
	nop			;358b
	nop			;358c
	nop			;358d
	nop			;358e
	nop			;358f
	nop			;3590
	nop			;3591
	nop			;3592
	nop			;3593
	nop			;3594
	nop			;3595
	nop			;3596
	nop			;3597
	nop			;3598
	nop			;3599
	nop			;359a
	nop			;359b
	nop			;359c
	nop			;359d
	nop			;359e
	nop			;359f
	nop			;35a0
l35a1h:
	nop			;35a1
	nop			;35a2
	nop			;35a3
	nop			;35a4
	nop			;35a5
	nop			;35a6
	nop			;35a7
	nop			;35a8
	nop			;35a9
	nop			;35aa
	nop			;35ab
	nop			;35ac
	nop			;35ad
	nop			;35ae
	nop			;35af
	nop			;35b0
	nop			;35b1
	nop			;35b2
	nop			;35b3
	nop			;35b4
	nop			;35b5
	nop			;35b6
	nop			;35b7
	nop			;35b8
	nop			;35b9
	nop			;35ba
	nop			;35bb
	nop			;35bc
	nop			;35bd
	nop			;35be
	nop			;35bf
	nop			;35c0
	nop			;35c1
	nop			;35c2
	nop			;35c3
	nop			;35c4
	nop			;35c5
	nop			;35c6
	nop			;35c7
	nop			;35c8
	nop			;35c9
	nop			;35ca
	nop			;35cb
	nop			;35cc
	nop			;35cd
	nop			;35ce
	nop			;35cf
	nop			;35d0
	nop			;35d1
	nop			;35d2
	nop			;35d3
	nop			;35d4
	nop			;35d5
	nop			;35d6
	nop			;35d7
	nop			;35d8
	nop			;35d9
	nop			;35da
	nop			;35db
	nop			;35dc
	nop			;35dd
	nop			;35de
	nop			;35df
	nop			;35e0
	nop			;35e1
	nop			;35e2
	nop			;35e3
	nop			;35e4
	nop			;35e5
	nop			;35e6
	nop			;35e7
	nop			;35e8
	nop			;35e9
	nop			;35ea
	nop			;35eb
	nop			;35ec
	nop			;35ed
	nop			;35ee
	nop			;35ef
	nop			;35f0
	nop			;35f1
	nop			;35f2
	nop			;35f3
	nop			;35f4
	nop			;35f5
	nop			;35f6
	nop			;35f7
	nop			;35f8
	nop			;35f9
	nop			;35fa
	nop			;35fb
	nop			;35fc
	nop			;35fd
	nop			;35fe
	nop			;35ff
sub_3600h:
	nop			;3600
l3601h:
	nop			;3601
	nop			;3602
	nop			;3603
l3604h:
	nop			;3604
	nop			;3605
	nop			;3606
	nop			;3607
	nop			;3608
	nop			;3609
	nop			;360a
	nop			;360b
	nop			;360c
	nop			;360d
	nop			;360e
	nop			;360f
	nop			;3610
	nop			;3611
	nop			;3612
	nop			;3613
	nop			;3614
	nop			;3615
l3616h:
	nop			;3616
	nop			;3617
	nop			;3618
	nop			;3619
l361ah:
	nop			;361a
	nop			;361b
	nop			;361c
	nop			;361d
	nop			;361e
	nop			;361f
	nop			;3620
	nop			;3621
	nop			;3622
	nop			;3623
	nop			;3624
	nop			;3625
	nop			;3626
	nop			;3627
	nop			;3628
	nop			;3629
	nop			;362a
	nop			;362b
	nop			;362c
	nop			;362d
	nop			;362e
	nop			;362f
	nop			;3630
	nop			;3631
	nop			;3632
	nop			;3633
	nop			;3634
	nop			;3635
	nop			;3636
	nop			;3637
	nop			;3638
	nop			;3639
	nop			;363a
	nop			;363b
	nop			;363c
	nop			;363d
	nop			;363e
	nop			;363f
	nop			;3640
l3641h:
	nop			;3641
	nop			;3642
	nop			;3643
	nop			;3644
	nop			;3645
	nop			;3646
	nop			;3647
	nop			;3648
	nop			;3649
	nop			;364a
	nop			;364b
	nop			;364c
	nop			;364d
l364eh:
	nop			;364e
	nop			;364f
l3650h:
	nop			;3650
l3651h:
	nop			;3651
	nop			;3652
	nop			;3653
	nop			;3654
	nop			;3655
	nop			;3656
	nop			;3657
	nop			;3658
l3659h:
	nop			;3659
	nop			;365a
	nop			;365b
	nop			;365c
	nop			;365d
	nop			;365e
l365fh:
	nop			;365f
	nop			;3660
	nop			;3661
	nop			;3662
	nop			;3663
	nop			;3664
	nop			;3665
	nop			;3666
	nop			;3667
	nop			;3668
	nop			;3669
	nop			;366a
	nop			;366b
	nop			;366c
	nop			;366d
	nop			;366e
	nop			;366f
	nop			;3670
	nop			;3671
	nop			;3672
	nop			;3673
	nop			;3674
	nop			;3675
	nop			;3676
	nop			;3677
	nop			;3678
	nop			;3679
	nop			;367a
	nop			;367b
	nop			;367c
	nop			;367d
	nop			;367e
	nop			;367f
	nop			;3680
	nop			;3681
	nop			;3682
	nop			;3683
	nop			;3684
	nop			;3685
	nop			;3686
	nop			;3687
	nop			;3688
l3689h:
	nop			;3689
	nop			;368a
l368bh:
	nop			;368b
	nop			;368c
	nop			;368d
	nop			;368e
	nop			;368f
	nop			;3690
	nop			;3691
	nop			;3692
	nop			;3693
	nop			;3694
	nop			;3695
	nop			;3696
	nop			;3697
	nop			;3698
	nop			;3699
	nop			;369a
	nop			;369b
l369ch:
	nop			;369c
	nop			;369d
	nop			;369e
	nop			;369f
	nop			;36a0
	nop			;36a1
	nop			;36a2
	nop			;36a3
	nop			;36a4
	nop			;36a5
	nop			;36a6
	nop			;36a7
	nop			;36a8
	nop			;36a9
sub_36aah:
	nop			;36aa
	nop			;36ab
l36ach:
	nop			;36ac
	nop			;36ad
	nop			;36ae
	nop			;36af
	nop			;36b0
	nop			;36b1
	nop			;36b2
	nop			;36b3
	nop			;36b4
	nop			;36b5
	nop			;36b6
	nop			;36b7
	nop			;36b8
	nop			;36b9
	nop			;36ba
	nop			;36bb
	nop			;36bc
	nop			;36bd
	nop			;36be
	nop			;36bf
	nop			;36c0
	nop			;36c1
	nop			;36c2
	nop			;36c3
	nop			;36c4
l36c5h:
	nop			;36c5
	nop			;36c6
	nop			;36c7
	nop			;36c8
	nop			;36c9
	nop			;36ca
	nop			;36cb
	nop			;36cc
	nop			;36cd
	nop			;36ce
	nop			;36cf
	nop			;36d0
	nop			;36d1
	nop			;36d2
	nop			;36d3
	nop			;36d4
	nop			;36d5
	nop			;36d6
	nop			;36d7
	nop			;36d8
	nop			;36d9
	nop			;36da
	nop			;36db
	nop			;36dc
	nop			;36dd
	nop			;36de
	nop			;36df
	nop			;36e0
	nop			;36e1
	nop			;36e2
	nop			;36e3
l36e4h:
	nop			;36e4
	nop			;36e5
	nop			;36e6
	nop			;36e7
	nop			;36e8
	nop			;36e9
	nop			;36ea
	nop			;36eb
	nop			;36ec
	nop			;36ed
	nop			;36ee
	nop			;36ef
	nop			;36f0
	nop			;36f1
l36f2h:
	nop			;36f2
	nop			;36f3
l36f4h:
	nop			;36f4
	nop			;36f5
l36f6h:
	nop			;36f6
	nop			;36f7
l36f8h:
	nop			;36f8
	nop			;36f9
	nop			;36fa
	nop			;36fb
	nop			;36fc
l36fdh:
	nop			;36fd
sub_36feh:
	nop			;36fe
l36ffh:
	nop			;36ff
	nop			;3700
	nop			;3701
	nop			;3702
	nop			;3703
	nop			;3704
	nop			;3705
	nop			;3706
	nop			;3707
	nop			;3708
	nop			;3709
	nop			;370a
	nop			;370b
	nop			;370c
	nop			;370d
	nop			;370e
	nop			;370f
	nop			;3710
	nop			;3711
	nop			;3712
	nop			;3713
	nop			;3714
	nop			;3715
	nop			;3716
	nop			;3717
	nop			;3718
	nop			;3719
	nop			;371a
	nop			;371b
	nop			;371c
	nop			;371d
	nop			;371e
	nop			;371f
	nop			;3720
	nop			;3721
	nop			;3722
	nop			;3723
	nop			;3724
	nop			;3725
	nop			;3726
	nop			;3727
	nop			;3728
	nop			;3729
	nop			;372a
	nop			;372b
	nop			;372c
	nop			;372d
	nop			;372e
	nop			;372f
	nop			;3730
	nop			;3731
	nop			;3732
	nop			;3733
	nop			;3734
	nop			;3735
	nop			;3736
	nop			;3737
	nop			;3738
	nop			;3739
	nop			;373a
	nop			;373b
	nop			;373c
	nop			;373d
	nop			;373e
	nop			;373f
	nop			;3740
	nop			;3741
	nop			;3742
	nop			;3743
	nop			;3744
	nop			;3745
	nop			;3746
	nop			;3747
	nop			;3748
	nop			;3749
	nop			;374a
	nop			;374b
	nop			;374c
	nop			;374d
	nop			;374e
	nop			;374f
	nop			;3750
	nop			;3751
	nop			;3752
	nop			;3753
	nop			;3754
	nop			;3755
	nop			;3756
	nop			;3757
	nop			;3758
	nop			;3759
	nop			;375a
	nop			;375b
	nop			;375c
	nop			;375d
	nop			;375e
	nop			;375f
	nop			;3760
	nop			;3761
	nop			;3762
	nop			;3763
	nop			;3764
	nop			;3765
	nop			;3766
	nop			;3767
	nop			;3768
	nop			;3769
	nop			;376a
	nop			;376b
	nop			;376c
	nop			;376d
	nop			;376e
	nop			;376f
	nop			;3770
	nop			;3771
	nop			;3772
	nop			;3773
	nop			;3774
	nop			;3775
	nop			;3776
	nop			;3777
	nop			;3778
	nop			;3779
	nop			;377a
	nop			;377b
	nop			;377c
	nop			;377d
	nop			;377e
	nop			;377f
	nop			;3780
	nop			;3781
	nop			;3782
	nop			;3783
	nop			;3784
	nop			;3785
	nop			;3786
	nop			;3787
	nop			;3788
	nop			;3789
	nop			;378a
l378bh:
	nop			;378b
	nop			;378c
	nop			;378d
	nop			;378e
	nop			;378f
	nop			;3790
	nop			;3791
	nop			;3792
	nop			;3793
	nop			;3794
	nop			;3795
	nop			;3796
	nop			;3797
	nop			;3798
	nop			;3799
	nop			;379a
	nop			;379b
	nop			;379c
	nop			;379d
	nop			;379e
	nop			;379f
	nop			;37a0
	nop			;37a1
	nop			;37a2
	nop			;37a3
	nop			;37a4
	nop			;37a5
	nop			;37a6
	nop			;37a7
	nop			;37a8
	nop			;37a9
	nop			;37aa
	nop			;37ab
	nop			;37ac
	nop			;37ad
	nop			;37ae
	nop			;37af
	nop			;37b0
	nop			;37b1
	nop			;37b2
	nop			;37b3
	nop			;37b4
	nop			;37b5
	nop			;37b6
	nop			;37b7
	nop			;37b8
	nop			;37b9
	nop			;37ba
	nop			;37bb
	nop			;37bc
	nop			;37bd
	nop			;37be
	nop			;37bf
	nop			;37c0
	nop			;37c1
	nop			;37c2
	nop			;37c3
	nop			;37c4
	nop			;37c5
	nop			;37c6
	nop			;37c7
	nop			;37c8
	nop			;37c9
	nop			;37ca
	nop			;37cb
	nop			;37cc
	nop			;37cd
	nop			;37ce
	nop			;37cf
	nop			;37d0
	nop			;37d1
	nop			;37d2
	nop			;37d3
	nop			;37d4
	nop			;37d5
	nop			;37d6
	nop			;37d7
	nop			;37d8
	nop			;37d9
	nop			;37da
	nop			;37db
	nop			;37dc
	nop			;37dd
	nop			;37de
	nop			;37df
	nop			;37e0
	nop			;37e1
	nop			;37e2
	nop			;37e3
	nop			;37e4
	nop			;37e5
	nop			;37e6
	nop			;37e7
l37e8h:
	nop			;37e8
	nop			;37e9
	nop			;37ea
	nop			;37eb
	nop			;37ec
	nop			;37ed
	nop			;37ee
	nop			;37ef
	nop			;37f0
	nop			;37f1
	nop			;37f2
	nop			;37f3
	nop			;37f4
	nop			;37f5
	nop			;37f6
	nop			;37f7
	nop			;37f8
	nop			;37f9
	nop			;37fa
	nop			;37fb
	nop			;37fc
	nop			;37fd
	nop			;37fe
	nop			;37ff
	nop			;3800
	nop			;3801
	nop			;3802
	nop			;3803
	nop			;3804
	nop			;3805
	nop			;3806
	nop			;3807
	nop			;3808
	nop			;3809
	nop			;380a
	nop			;380b
	nop			;380c
	nop			;380d
	nop			;380e
	nop			;380f
	nop			;3810
	nop			;3811
	nop			;3812
	nop			;3813
	nop			;3814
	nop			;3815
	nop			;3816
	nop			;3817
	nop			;3818
	nop			;3819
	nop			;381a
	nop			;381b
	nop			;381c
	nop			;381d
	nop			;381e
	nop			;381f
	nop			;3820
	nop			;3821
	nop			;3822
	nop			;3823
	nop			;3824
	nop			;3825
	nop			;3826
	nop			;3827
	nop			;3828
	nop			;3829
	nop			;382a
	nop			;382b
	nop			;382c
	nop			;382d
	nop			;382e
	nop			;382f
	nop			;3830
	nop			;3831
	nop			;3832
	nop			;3833
	nop			;3834
	nop			;3835
l3836h:
	nop			;3836
	nop			;3837
	nop			;3838
	nop			;3839
	nop			;383a
	nop			;383b
	nop			;383c
	nop			;383d
	nop			;383e
	nop			;383f
	nop			;3840
	nop			;3841
	nop			;3842
	nop			;3843
	nop			;3844
	nop			;3845
	nop			;3846
	nop			;3847
	nop			;3848
	nop			;3849
	nop			;384a
	nop			;384b
	nop			;384c
	nop			;384d
	nop			;384e
	nop			;384f
	nop			;3850
	nop			;3851
	nop			;3852
	nop			;3853
	nop			;3854
	nop			;3855
	nop			;3856
	nop			;3857
	nop			;3858
	nop			;3859
	nop			;385a
	nop			;385b
	nop			;385c
	nop			;385d
	nop			;385e
	nop			;385f
	nop			;3860
	nop			;3861
	nop			;3862
	nop			;3863
	nop			;3864
	nop			;3865
	nop			;3866
	nop			;3867
	nop			;3868
	nop			;3869
	nop			;386a
	nop			;386b
	nop			;386c
	nop			;386d
	nop			;386e
	nop			;386f
	nop			;3870
	nop			;3871
	nop			;3872
	nop			;3873
	nop			;3874
	nop			;3875
	nop			;3876
	nop			;3877
	nop			;3878
	nop			;3879
	nop			;387a
	nop			;387b
	nop			;387c
	nop			;387d
	nop			;387e
	nop			;387f
	nop			;3880
	nop			;3881
	nop			;3882
	nop			;3883
	nop			;3884
	nop			;3885
	nop			;3886
	nop			;3887
	nop			;3888
	nop			;3889
	nop			;388a
	nop			;388b
	nop			;388c
	nop			;388d
	nop			;388e
	nop			;388f
	nop			;3890
	nop			;3891
	nop			;3892
	nop			;3893
	nop			;3894
	nop			;3895
	nop			;3896
	nop			;3897
	nop			;3898
	nop			;3899
	nop			;389a
	nop			;389b
	nop			;389c
	nop			;389d
	nop			;389e
	nop			;389f
	nop			;38a0
	nop			;38a1
	nop			;38a2
	nop			;38a3
	nop			;38a4
	nop			;38a5
	nop			;38a6
	nop			;38a7
	nop			;38a8
	nop			;38a9
	nop			;38aa
	nop			;38ab
	nop			;38ac
	nop			;38ad
	nop			;38ae
	nop			;38af
	nop			;38b0
	nop			;38b1
	nop			;38b2
	nop			;38b3
	nop			;38b4
	nop			;38b5
	nop			;38b6
	nop			;38b7
	nop			;38b8
	nop			;38b9
	nop			;38ba
	nop			;38bb
	nop			;38bc
	nop			;38bd
	nop			;38be
	nop			;38bf
	nop			;38c0
	nop			;38c1
	nop			;38c2
	nop			;38c3
	nop			;38c4
	nop			;38c5
	nop			;38c6
	nop			;38c7
	nop			;38c8
	nop			;38c9
	nop			;38ca
	nop			;38cb
	nop			;38cc
	nop			;38cd
	nop			;38ce
	nop			;38cf
	nop			;38d0
	nop			;38d1
	nop			;38d2
	nop			;38d3
	nop			;38d4
	nop			;38d5
	nop			;38d6
	nop			;38d7
	nop			;38d8
	nop			;38d9
	nop			;38da
	nop			;38db
	nop			;38dc
	nop			;38dd
	nop			;38de
	nop			;38df
	nop			;38e0
	nop			;38e1
	nop			;38e2
	nop			;38e3
	nop			;38e4
	nop			;38e5
	nop			;38e6
	nop			;38e7
	nop			;38e8
	nop			;38e9
	nop			;38ea
	nop			;38eb
	nop			;38ec
	nop			;38ed
	nop			;38ee
	nop			;38ef
	nop			;38f0
	nop			;38f1
	nop			;38f2
	nop			;38f3
	nop			;38f4
	nop			;38f5
	nop			;38f6
	nop			;38f7
	nop			;38f8
	nop			;38f9
	nop			;38fa
	nop			;38fb
	nop			;38fc
	nop			;38fd
	nop			;38fe
	nop			;38ff
	nop			;3900
	nop			;3901
	nop			;3902
	nop			;3903
	nop			;3904
	nop			;3905
	nop			;3906
	nop			;3907
	nop			;3908
	nop			;3909
	nop			;390a
	nop			;390b
	nop			;390c
	nop			;390d
	nop			;390e
	nop			;390f
	nop			;3910
	nop			;3911
	nop			;3912
	nop			;3913
	nop			;3914
	nop			;3915
	nop			;3916
	nop			;3917
	nop			;3918
	nop			;3919
	nop			;391a
	nop			;391b
	nop			;391c
	nop			;391d
	nop			;391e
	nop			;391f
	nop			;3920
	nop			;3921
	nop			;3922
	nop			;3923
	nop			;3924
	nop			;3925
	nop			;3926
	nop			;3927
	nop			;3928
	nop			;3929
	nop			;392a
	nop			;392b
	nop			;392c
	nop			;392d
	nop			;392e
	nop			;392f
	nop			;3930
	nop			;3931
	nop			;3932
	nop			;3933
	nop			;3934
	nop			;3935
	nop			;3936
	nop			;3937
	nop			;3938
	nop			;3939
	nop			;393a
	nop			;393b
	nop			;393c
	nop			;393d
	nop			;393e
	nop			;393f
	nop			;3940
	nop			;3941
	nop			;3942
	nop			;3943
	nop			;3944
	nop			;3945
	nop			;3946
	nop			;3947
	nop			;3948
	nop			;3949
	nop			;394a
	nop			;394b
	nop			;394c
	nop			;394d
	nop			;394e
	nop			;394f
	nop			;3950
	nop			;3951
	nop			;3952
	nop			;3953
	nop			;3954
	nop			;3955
	nop			;3956
	nop			;3957
	nop			;3958
	nop			;3959
	nop			;395a
	nop			;395b
	nop			;395c
	nop			;395d
	nop			;395e
	nop			;395f
	nop			;3960
	nop			;3961
	nop			;3962
	nop			;3963
	nop			;3964
	nop			;3965
	nop			;3966
	nop			;3967
	nop			;3968
	nop			;3969
	nop			;396a
	nop			;396b
	nop			;396c
	nop			;396d
	nop			;396e
	nop			;396f
	nop			;3970
	nop			;3971
	nop			;3972
	nop			;3973
	nop			;3974
	nop			;3975
	nop			;3976
	nop			;3977
	nop			;3978
	nop			;3979
	nop			;397a
	nop			;397b
	nop			;397c
	nop			;397d
	nop			;397e
	nop			;397f
	nop			;3980
	nop			;3981
	nop			;3982
	nop			;3983
	nop			;3984
	nop			;3985
	nop			;3986
	nop			;3987
	nop			;3988
	nop			;3989
	nop			;398a
	nop			;398b
	nop			;398c
	nop			;398d
	nop			;398e
	nop			;398f
	nop			;3990
	nop			;3991
	nop			;3992
	nop			;3993
	nop			;3994
	nop			;3995
	nop			;3996
	nop			;3997
	nop			;3998
	nop			;3999
	nop			;399a
	nop			;399b
	nop			;399c
	nop			;399d
	nop			;399e
	nop			;399f
	nop			;39a0
	nop			;39a1
	nop			;39a2
	nop			;39a3
	nop			;39a4
	nop			;39a5
	nop			;39a6
	nop			;39a7
	nop			;39a8
	nop			;39a9
	nop			;39aa
	nop			;39ab
	nop			;39ac
	nop			;39ad
	nop			;39ae
	nop			;39af
	nop			;39b0
	nop			;39b1
	nop			;39b2
	nop			;39b3
	nop			;39b4
	nop			;39b5
	nop			;39b6
	nop			;39b7
	nop			;39b8
	nop			;39b9
	nop			;39ba
	nop			;39bb
	nop			;39bc
	nop			;39bd
	nop			;39be
	nop			;39bf
	nop			;39c0
	nop			;39c1
	nop			;39c2
	nop			;39c3
	nop			;39c4
	nop			;39c5
	nop			;39c6
	nop			;39c7
	nop			;39c8
	nop			;39c9
	nop			;39ca
	nop			;39cb
	nop			;39cc
	nop			;39cd
	nop			;39ce
	nop			;39cf
	nop			;39d0
	nop			;39d1
	nop			;39d2
	nop			;39d3
	nop			;39d4
	nop			;39d5
	nop			;39d6
	nop			;39d7
	nop			;39d8
	nop			;39d9
	nop			;39da
	nop			;39db
	nop			;39dc
	nop			;39dd
	nop			;39de
	nop			;39df
	nop			;39e0
	nop			;39e1
	nop			;39e2
	nop			;39e3
	nop			;39e4
	nop			;39e5
	nop			;39e6
	nop			;39e7
	nop			;39e8
	nop			;39e9
	nop			;39ea
	nop			;39eb
	nop			;39ec
	nop			;39ed
	nop			;39ee
	nop			;39ef
	nop			;39f0
	nop			;39f1
	nop			;39f2
	nop			;39f3
	nop			;39f4
	nop			;39f5
	nop			;39f6
	nop			;39f7
	nop			;39f8
	nop			;39f9
	nop			;39fa
	nop			;39fb
	nop			;39fc
	nop			;39fd
	nop			;39fe
	nop			;39ff
	nop			;3a00
	nop			;3a01
	nop			;3a02
	nop			;3a03
	nop			;3a04
	nop			;3a05
	nop			;3a06
	nop			;3a07
	nop			;3a08
	nop			;3a09
	nop			;3a0a
	nop			;3a0b
	nop			;3a0c
	nop			;3a0d
	nop			;3a0e
	nop			;3a0f
	nop			;3a10
	nop			;3a11
	nop			;3a12
	nop			;3a13
	nop			;3a14
	nop			;3a15
	nop			;3a16
	nop			;3a17
	nop			;3a18
	nop			;3a19
	nop			;3a1a
	nop			;3a1b
	nop			;3a1c
	nop			;3a1d
	nop			;3a1e
	nop			;3a1f
	nop			;3a20
	nop			;3a21
	nop			;3a22
	nop			;3a23
	nop			;3a24
	nop			;3a25
	nop			;3a26
	nop			;3a27
	nop			;3a28
	nop			;3a29
	nop			;3a2a
	nop			;3a2b
	nop			;3a2c
	nop			;3a2d
	nop			;3a2e
	nop			;3a2f
	nop			;3a30
	nop			;3a31
	nop			;3a32
	nop			;3a33
	nop			;3a34
	nop			;3a35
	nop			;3a36
	nop			;3a37
	nop			;3a38
	nop			;3a39
	nop			;3a3a
	nop			;3a3b
	nop			;3a3c
	nop			;3a3d
	nop			;3a3e
	nop			;3a3f
	nop			;3a40
	nop			;3a41
	nop			;3a42
	nop			;3a43
	nop			;3a44
	nop			;3a45
	nop			;3a46
	nop			;3a47
	nop			;3a48
	nop			;3a49
	nop			;3a4a
	nop			;3a4b
	nop			;3a4c
	nop			;3a4d
	nop			;3a4e
	nop			;3a4f
	nop			;3a50
	nop			;3a51
	nop			;3a52
	nop			;3a53
	nop			;3a54
	nop			;3a55
	nop			;3a56
	nop			;3a57
	nop			;3a58
	nop			;3a59
	nop			;3a5a
	nop			;3a5b
	nop			;3a5c
	nop			;3a5d
	nop			;3a5e
	nop			;3a5f
	nop			;3a60
	nop			;3a61
	nop			;3a62
	nop			;3a63
	nop			;3a64
	nop			;3a65
	nop			;3a66
	nop			;3a67
	nop			;3a68
	nop			;3a69
	nop			;3a6a
	nop			;3a6b
	nop			;3a6c
	nop			;3a6d
	nop			;3a6e
	nop			;3a6f
	nop			;3a70
	nop			;3a71
	nop			;3a72
	nop			;3a73
	nop			;3a74
	nop			;3a75
	nop			;3a76
	nop			;3a77
	nop			;3a78
	nop			;3a79
	nop			;3a7a
	nop			;3a7b
	nop			;3a7c
	nop			;3a7d
	nop			;3a7e
	nop			;3a7f
	nop			;3a80
	nop			;3a81
	nop			;3a82
	nop			;3a83
	nop			;3a84
	nop			;3a85
	nop			;3a86
	nop			;3a87
	nop			;3a88
	nop			;3a89
	nop			;3a8a
	nop			;3a8b
	nop			;3a8c
	nop			;3a8d
	nop			;3a8e
	nop			;3a8f
	nop			;3a90
	nop			;3a91
	nop			;3a92
	nop			;3a93
	nop			;3a94
	nop			;3a95
	nop			;3a96
	nop			;3a97
	nop			;3a98
	nop			;3a99
	nop			;3a9a
	nop			;3a9b
	nop			;3a9c
	nop			;3a9d
	nop			;3a9e
	nop			;3a9f
	nop			;3aa0
	nop			;3aa1
	nop			;3aa2
	nop			;3aa3
	nop			;3aa4
	nop			;3aa5
	nop			;3aa6
	nop			;3aa7
	nop			;3aa8
	nop			;3aa9
	nop			;3aaa
	nop			;3aab
	nop			;3aac
	nop			;3aad
	nop			;3aae
	nop			;3aaf
	nop			;3ab0
	nop			;3ab1
	nop			;3ab2
	nop			;3ab3
	nop			;3ab4
	nop			;3ab5
	nop			;3ab6
	nop			;3ab7
	nop			;3ab8
	nop			;3ab9
	nop			;3aba
	nop			;3abb
	nop			;3abc
	nop			;3abd
	nop			;3abe
	nop			;3abf
	nop			;3ac0
	nop			;3ac1
	nop			;3ac2
	nop			;3ac3
	nop			;3ac4
	nop			;3ac5
	nop			;3ac6
	nop			;3ac7
	nop			;3ac8
	nop			;3ac9
	nop			;3aca
	nop			;3acb
	nop			;3acc
	nop			;3acd
	nop			;3ace
	nop			;3acf
	nop			;3ad0
	nop			;3ad1
	nop			;3ad2
	nop			;3ad3
	nop			;3ad4
	nop			;3ad5
	nop			;3ad6
l3ad7h:
	nop			;3ad7
	nop			;3ad8
	nop			;3ad9
	nop			;3ada
	nop			;3adb
	nop			;3adc
	nop			;3add
	nop			;3ade
	nop			;3adf
	nop			;3ae0
	nop			;3ae1
	nop			;3ae2
	nop			;3ae3
	nop			;3ae4
	nop			;3ae5
	nop			;3ae6
	nop			;3ae7
	nop			;3ae8
	nop			;3ae9
	nop			;3aea
	nop			;3aeb
	nop			;3aec
	nop			;3aed
	nop			;3aee
	nop			;3aef
	nop			;3af0
	nop			;3af1
	nop			;3af2
	nop			;3af3
	nop			;3af4
	nop			;3af5
	nop			;3af6
	nop			;3af7
	nop			;3af8
	nop			;3af9
	nop			;3afa
	nop			;3afb
	nop			;3afc
	nop			;3afd
	nop			;3afe
	nop			;3aff
	nop			;3b00
	nop			;3b01
	nop			;3b02
l3b03h:
	nop			;3b03
	nop			;3b04
	nop			;3b05
	nop			;3b06
	nop			;3b07
	nop			;3b08
	nop			;3b09
	nop			;3b0a
	nop			;3b0b
	nop			;3b0c
	nop			;3b0d
	nop			;3b0e
	nop			;3b0f
	nop			;3b10
	nop			;3b11
	nop			;3b12
	nop			;3b13
	nop			;3b14
	nop			;3b15
	nop			;3b16
	nop			;3b17
	nop			;3b18
	nop			;3b19
	nop			;3b1a
	nop			;3b1b
	nop			;3b1c
	nop			;3b1d
	nop			;3b1e
	nop			;3b1f
l3b20h:
	nop			;3b20
	nop			;3b21
	nop			;3b22
	nop			;3b23
	nop			;3b24
	nop			;3b25
l3b26h:
	nop			;3b26
	nop			;3b27
	nop			;3b28
	nop			;3b29
	nop			;3b2a
	nop			;3b2b
	nop			;3b2c
	nop			;3b2d
	nop			;3b2e
	nop			;3b2f
	nop			;3b30
	nop			;3b31
	nop			;3b32
	nop			;3b33
	nop			;3b34
	nop			;3b35
	nop			;3b36
	nop			;3b37
	nop			;3b38
	nop			;3b39
	nop			;3b3a
	nop			;3b3b
	nop			;3b3c
	nop			;3b3d
	nop			;3b3e
	nop			;3b3f
	nop			;3b40
	nop			;3b41
	nop			;3b42
sub_3b43h:
	nop			;3b43
	nop			;3b44
	nop			;3b45
	nop			;3b46
	nop			;3b47
	nop			;3b48
	nop			;3b49
	nop			;3b4a
	nop			;3b4b
	nop			;3b4c
	nop			;3b4d
	nop			;3b4e
	nop			;3b4f
	nop			;3b50
	nop			;3b51
	nop			;3b52
	nop			;3b53
	nop			;3b54
	nop			;3b55
	nop			;3b56
	nop			;3b57
	nop			;3b58
	nop			;3b59
	nop			;3b5a
	nop			;3b5b
	nop			;3b5c
	nop			;3b5d
l3b5eh:
	nop			;3b5e
	nop			;3b5f
	nop			;3b60
	nop			;3b61
	nop			;3b62
	nop			;3b63
	nop			;3b64
	nop			;3b65
	nop			;3b66
	nop			;3b67
	nop			;3b68
	nop			;3b69
	nop			;3b6a
	nop			;3b6b
	nop			;3b6c
	nop			;3b6d
	nop			;3b6e
	nop			;3b6f
	nop			;3b70
	nop			;3b71
	nop			;3b72
	nop			;3b73
l3b74h:
	nop			;3b74
	nop			;3b75
	nop			;3b76
	nop			;3b77
	nop			;3b78
	nop			;3b79
	nop			;3b7a
	nop			;3b7b
	nop			;3b7c
	nop			;3b7d
	nop			;3b7e
	nop			;3b7f
	nop			;3b80
	nop			;3b81
	nop			;3b82
	nop			;3b83
	nop			;3b84
	nop			;3b85
	nop			;3b86
	nop			;3b87
	nop			;3b88
	nop			;3b89
	nop			;3b8a
	nop			;3b8b
	nop			;3b8c
	nop			;3b8d
	nop			;3b8e
	nop			;3b8f
	nop			;3b90
	nop			;3b91
	nop			;3b92
	nop			;3b93
	nop			;3b94
	nop			;3b95
	nop			;3b96
	nop			;3b97
	nop			;3b98
	nop			;3b99
	nop			;3b9a
	nop			;3b9b
	nop			;3b9c
	nop			;3b9d
	nop			;3b9e
	nop			;3b9f
	nop			;3ba0
	nop			;3ba1
	nop			;3ba2
l3ba3h:
	nop			;3ba3
	nop			;3ba4
	nop			;3ba5
	nop			;3ba6
	nop			;3ba7
	nop			;3ba8
	nop			;3ba9
	nop			;3baa
	nop			;3bab
	nop			;3bac
	nop			;3bad
	nop			;3bae
	nop			;3baf
	nop			;3bb0
	nop			;3bb1
	nop			;3bb2
	nop			;3bb3
	nop			;3bb4
	nop			;3bb5
	nop			;3bb6
	nop			;3bb7
	nop			;3bb8
	nop			;3bb9
	nop			;3bba
	nop			;3bbb
	nop			;3bbc
	nop			;3bbd
	nop			;3bbe
	nop			;3bbf
	nop			;3bc0
	nop			;3bc1
	nop			;3bc2
	nop			;3bc3
	nop			;3bc4
	nop			;3bc5
	nop			;3bc6
	nop			;3bc7
	nop			;3bc8
	nop			;3bc9
	nop			;3bca
	nop			;3bcb
	nop			;3bcc
	nop			;3bcd
	nop			;3bce
	nop			;3bcf
	nop			;3bd0
	nop			;3bd1
	nop			;3bd2
	nop			;3bd3
	nop			;3bd4
	nop			;3bd5
	nop			;3bd6
	nop			;3bd7
	nop			;3bd8
	nop			;3bd9
	nop			;3bda
	nop			;3bdb
	nop			;3bdc
	nop			;3bdd
	nop			;3bde
	nop			;3bdf
	nop			;3be0
	nop			;3be1
	nop			;3be2
	nop			;3be3
	nop			;3be4
	nop			;3be5
	nop			;3be6
	nop			;3be7
	nop			;3be8
	nop			;3be9
	nop			;3bea
	nop			;3beb
	nop			;3bec
	nop			;3bed
	nop			;3bee
	nop			;3bef
	nop			;3bf0
	nop			;3bf1
	nop			;3bf2
	nop			;3bf3
	nop			;3bf4
	nop			;3bf5
	nop			;3bf6
	nop			;3bf7
	nop			;3bf8
	nop			;3bf9
	nop			;3bfa
	nop			;3bfb
	nop			;3bfc
	nop			;3bfd
	nop			;3bfe
	nop			;3bff
	nop			;3c00
	nop			;3c01
	nop			;3c02
	nop			;3c03
	nop			;3c04
	nop			;3c05
	nop			;3c06
	nop			;3c07
	nop			;3c08
	nop			;3c09
	nop			;3c0a
	nop			;3c0b
	nop			;3c0c
	nop			;3c0d
	nop			;3c0e
	nop			;3c0f
	nop			;3c10
	nop			;3c11
	nop			;3c12
	nop			;3c13
	nop			;3c14
	nop			;3c15
	nop			;3c16
sub_3c17h:
	nop			;3c17
	nop			;3c18
	nop			;3c19
	nop			;3c1a
	nop			;3c1b
	nop			;3c1c
	nop			;3c1d
	nop			;3c1e
	nop			;3c1f
	nop			;3c20
	nop			;3c21
	nop			;3c22
	nop			;3c23
	nop			;3c24
	nop			;3c25
	nop			;3c26
	nop			;3c27
	nop			;3c28
	nop			;3c29
	nop			;3c2a
	nop			;3c2b
	nop			;3c2c
	nop			;3c2d
	nop			;3c2e
	nop			;3c2f
	nop			;3c30
	nop			;3c31
	nop			;3c32
	nop			;3c33
	nop			;3c34
	nop			;3c35
	nop			;3c36
	nop			;3c37
	nop			;3c38
	nop			;3c39
	nop			;3c3a
l3c3bh:
	nop			;3c3b
	nop			;3c3c
	nop			;3c3d
	nop			;3c3e
	nop			;3c3f
	nop			;3c40
	nop			;3c41
	nop			;3c42
	nop			;3c43
	nop			;3c44
	nop			;3c45
	nop			;3c46
	nop			;3c47
	nop			;3c48
	nop			;3c49
	nop			;3c4a
	nop			;3c4b
	nop			;3c4c
	nop			;3c4d
	nop			;3c4e
	nop			;3c4f
	nop			;3c50
	nop			;3c51
	nop			;3c52
	nop			;3c53
	nop			;3c54
	nop			;3c55
	nop			;3c56
	nop			;3c57
	nop			;3c58
	nop			;3c59
	nop			;3c5a
	nop			;3c5b
	nop			;3c5c
	nop			;3c5d
	nop			;3c5e
	nop			;3c5f
	nop			;3c60
	nop			;3c61
	nop			;3c62
	nop			;3c63
	nop			;3c64
	nop			;3c65
	nop			;3c66
	nop			;3c67
	nop			;3c68
	nop			;3c69
	nop			;3c6a
	nop			;3c6b
	nop			;3c6c
	nop			;3c6d
	nop			;3c6e
	nop			;3c6f
	nop			;3c70
	nop			;3c71
	nop			;3c72
	nop			;3c73
	nop			;3c74
	nop			;3c75
	nop			;3c76
	nop			;3c77
	nop			;3c78
	nop			;3c79
	nop			;3c7a
	nop			;3c7b
	nop			;3c7c
	nop			;3c7d
	nop			;3c7e
	nop			;3c7f
	nop			;3c80
	nop			;3c81
	nop			;3c82
	nop			;3c83
	nop			;3c84
	nop			;3c85
	nop			;3c86
	nop			;3c87
	nop			;3c88
	nop			;3c89
	nop			;3c8a
	nop			;3c8b
	nop			;3c8c
	nop			;3c8d
	nop			;3c8e
	nop			;3c8f
	nop			;3c90
	nop			;3c91
	nop			;3c92
	nop			;3c93
	nop			;3c94
	nop			;3c95
	nop			;3c96
	nop			;3c97
	nop			;3c98
	nop			;3c99
	nop			;3c9a
	nop			;3c9b
	nop			;3c9c
	nop			;3c9d
	nop			;3c9e
	nop			;3c9f
	nop			;3ca0
	nop			;3ca1
	nop			;3ca2
	nop			;3ca3
	nop			;3ca4
	nop			;3ca5
	nop			;3ca6
	nop			;3ca7
	nop			;3ca8
	nop			;3ca9
	nop			;3caa
	nop			;3cab
l3cach:
	nop			;3cac
	nop			;3cad
	nop			;3cae
	nop			;3caf
	nop			;3cb0
	nop			;3cb1
	nop			;3cb2
	nop			;3cb3
	nop			;3cb4
	nop			;3cb5
	nop			;3cb6
	nop			;3cb7
	nop			;3cb8
	nop			;3cb9
	nop			;3cba
	nop			;3cbb
	nop			;3cbc
	nop			;3cbd
	nop			;3cbe
	nop			;3cbf
	nop			;3cc0
	nop			;3cc1
	nop			;3cc2
	nop			;3cc3
	nop			;3cc4
	nop			;3cc5
	nop			;3cc6
	nop			;3cc7
	nop			;3cc8
	nop			;3cc9
	nop			;3cca
	nop			;3ccb
	nop			;3ccc
	nop			;3ccd
	nop			;3cce
	nop			;3ccf
	nop			;3cd0
	nop			;3cd1
	nop			;3cd2
	nop			;3cd3
	nop			;3cd4
	nop			;3cd5
	nop			;3cd6
	nop			;3cd7
	nop			;3cd8
	nop			;3cd9
	nop			;3cda
	nop			;3cdb
	nop			;3cdc
	nop			;3cdd
	nop			;3cde
	nop			;3cdf
	nop			;3ce0
	nop			;3ce1
	nop			;3ce2
	nop			;3ce3
l3ce4h:
	nop			;3ce4
	nop			;3ce5
l3ce6h:
	nop			;3ce6
	nop			;3ce7
l3ce8h:
	nop			;3ce8
	nop			;3ce9
	nop			;3cea
	nop			;3ceb
	nop			;3cec
	nop			;3ced
	nop			;3cee
	nop			;3cef
	nop			;3cf0
	nop			;3cf1
	nop			;3cf2
	nop			;3cf3
	nop			;3cf4
	nop			;3cf5
	nop			;3cf6
	nop			;3cf7
	nop			;3cf8
	nop			;3cf9
	nop			;3cfa
	nop			;3cfb
	nop			;3cfc
	nop			;3cfd
	nop			;3cfe
	nop			;3cff
	nop			;3d00
	nop			;3d01
	nop			;3d02
	nop			;3d03
	nop			;3d04
	nop			;3d05
	nop			;3d06
	nop			;3d07
	nop			;3d08
	nop			;3d09
	nop			;3d0a
	nop			;3d0b
	nop			;3d0c
	nop			;3d0d
	nop			;3d0e
	nop			;3d0f
	nop			;3d10
	nop			;3d11
	nop			;3d12
	nop			;3d13
	nop			;3d14
	nop			;3d15
	nop			;3d16
	nop			;3d17
	nop			;3d18
	nop			;3d19
	nop			;3d1a
	nop			;3d1b
	nop			;3d1c
	nop			;3d1d
	nop			;3d1e
	nop			;3d1f
	nop			;3d20
	nop			;3d21
	nop			;3d22
	nop			;3d23
	nop			;3d24
	nop			;3d25
	nop			;3d26
	nop			;3d27
	nop			;3d28
	nop			;3d29
	nop			;3d2a
	nop			;3d2b
	nop			;3d2c
	nop			;3d2d
	nop			;3d2e
	nop			;3d2f
	nop			;3d30
	nop			;3d31
	nop			;3d32
	nop			;3d33
	nop			;3d34
	nop			;3d35
	nop			;3d36
	nop			;3d37
	nop			;3d38
	nop			;3d39
	nop			;3d3a
	nop			;3d3b
	nop			;3d3c
	nop			;3d3d
	nop			;3d3e
	nop			;3d3f
	nop			;3d40
	nop			;3d41
	nop			;3d42
	nop			;3d43
	nop			;3d44
	nop			;3d45
	nop			;3d46
	nop			;3d47
	nop			;3d48
	nop			;3d49
	nop			;3d4a
	nop			;3d4b
	nop			;3d4c
	nop			;3d4d
	nop			;3d4e
	nop			;3d4f
	nop			;3d50
	nop			;3d51
	nop			;3d52
	nop			;3d53
	nop			;3d54
	nop			;3d55
	nop			;3d56
	nop			;3d57
	nop			;3d58
	nop			;3d59
	nop			;3d5a
	nop			;3d5b
	nop			;3d5c
	nop			;3d5d
	nop			;3d5e
	nop			;3d5f
	nop			;3d60
	nop			;3d61
	nop			;3d62
	nop			;3d63
	nop			;3d64
	nop			;3d65
	nop			;3d66
	nop			;3d67
	nop			;3d68
	nop			;3d69
	nop			;3d6a
	nop			;3d6b
	nop			;3d6c
	nop			;3d6d
	nop			;3d6e
	nop			;3d6f
	nop			;3d70
	nop			;3d71
	nop			;3d72
	nop			;3d73
	nop			;3d74
	nop			;3d75
	nop			;3d76
	nop			;3d77
	nop			;3d78
	nop			;3d79
	nop			;3d7a
	nop			;3d7b
	nop			;3d7c
	nop			;3d7d
	nop			;3d7e
	nop			;3d7f
l3d80h:
	nop			;3d80
	nop			;3d81
	nop			;3d82
	nop			;3d83
	nop			;3d84
	nop			;3d85
	nop			;3d86
	nop			;3d87
	nop			;3d88
	nop			;3d89
	nop			;3d8a
	nop			;3d8b
	nop			;3d8c
	nop			;3d8d
	nop			;3d8e
	nop			;3d8f
	nop			;3d90
	nop			;3d91
	nop			;3d92
	nop			;3d93
	nop			;3d94
	nop			;3d95
	nop			;3d96
	nop			;3d97
	nop			;3d98
	nop			;3d99
	nop			;3d9a
	nop			;3d9b
	nop			;3d9c
	nop			;3d9d
	nop			;3d9e
	nop			;3d9f
	nop			;3da0
	nop			;3da1
	nop			;3da2
	nop			;3da3
	nop			;3da4
	nop			;3da5
	nop			;3da6
	nop			;3da7
	nop			;3da8
	nop			;3da9
	nop			;3daa
	nop			;3dab
	nop			;3dac
	nop			;3dad
	nop			;3dae
	nop			;3daf
	nop			;3db0
	nop			;3db1
	nop			;3db2
	nop			;3db3
	nop			;3db4
	nop			;3db5
	nop			;3db6
	nop			;3db7
	nop			;3db8
	nop			;3db9
	nop			;3dba
	nop			;3dbb
	nop			;3dbc
	nop			;3dbd
	nop			;3dbe
	nop			;3dbf
	nop			;3dc0
	nop			;3dc1
	nop			;3dc2
	nop			;3dc3
	nop			;3dc4
sub_3dc5h:
	nop			;3dc5
	nop			;3dc6
	nop			;3dc7
	nop			;3dc8
	nop			;3dc9
	nop			;3dca
	nop			;3dcb
	nop			;3dcc
	nop			;3dcd
	nop			;3dce
	nop			;3dcf
	nop			;3dd0
	nop			;3dd1
	nop			;3dd2
	nop			;3dd3
	nop			;3dd4
	nop			;3dd5
	nop			;3dd6
	nop			;3dd7
	nop			;3dd8
	nop			;3dd9
	nop			;3dda
	nop			;3ddb
	nop			;3ddc
	nop			;3ddd
	nop			;3dde
	nop			;3ddf
	nop			;3de0
	nop			;3de1
	nop			;3de2
	nop			;3de3
	nop			;3de4
	nop			;3de5
	nop			;3de6
	nop			;3de7
	nop			;3de8
	nop			;3de9
	nop			;3dea
	nop			;3deb
	nop			;3dec
	nop			;3ded
	nop			;3dee
	nop			;3def
	nop			;3df0
	nop			;3df1
	nop			;3df2
	nop			;3df3
	nop			;3df4
	nop			;3df5
	nop			;3df6
	nop			;3df7
	nop			;3df8
	nop			;3df9
	nop			;3dfa
	nop			;3dfb
	nop			;3dfc
	nop			;3dfd
	nop			;3dfe
	nop			;3dff
	nop			;3e00
	nop			;3e01
	nop			;3e02
	nop			;3e03
	nop			;3e04
	nop			;3e05
	nop			;3e06
	nop			;3e07
	nop			;3e08
	nop			;3e09
	nop			;3e0a
	nop			;3e0b
	nop			;3e0c
	nop			;3e0d
	nop			;3e0e
	nop			;3e0f
	nop			;3e10
	nop			;3e11
	nop			;3e12
	nop			;3e13
	nop			;3e14
	nop			;3e15
	nop			;3e16
	nop			;3e17
	nop			;3e18
	nop			;3e19
	nop			;3e1a
	nop			;3e1b
	nop			;3e1c
	nop			;3e1d
	nop			;3e1e
	nop			;3e1f
	nop			;3e20
	nop			;3e21
	nop			;3e22
	nop			;3e23
	nop			;3e24
	nop			;3e25
	nop			;3e26
	nop			;3e27
	nop			;3e28
	nop			;3e29
	nop			;3e2a
	nop			;3e2b
	nop			;3e2c
	nop			;3e2d
	nop			;3e2e
	nop			;3e2f
	nop			;3e30
	nop			;3e31
	nop			;3e32
	nop			;3e33
	nop			;3e34
	nop			;3e35
	nop			;3e36
	nop			;3e37
	nop			;3e38
	nop			;3e39
	nop			;3e3a
	nop			;3e3b
	nop			;3e3c
	nop			;3e3d
	nop			;3e3e
	nop			;3e3f
	nop			;3e40
	nop			;3e41
	nop			;3e42
	nop			;3e43
	nop			;3e44
	nop			;3e45
	nop			;3e46
	nop			;3e47
	nop			;3e48
	nop			;3e49
	nop			;3e4a
	nop			;3e4b
	nop			;3e4c
	nop			;3e4d
	nop			;3e4e
	nop			;3e4f
	nop			;3e50
	nop			;3e51
	nop			;3e52
	nop			;3e53
	nop			;3e54
	nop			;3e55
	nop			;3e56
	nop			;3e57
	nop			;3e58
	nop			;3e59
	nop			;3e5a
	nop			;3e5b
	nop			;3e5c
	nop			;3e5d
	nop			;3e5e
	nop			;3e5f
	nop			;3e60
	nop			;3e61
	nop			;3e62
	nop			;3e63
	nop			;3e64
	nop			;3e65
	nop			;3e66
	nop			;3e67
	nop			;3e68
	nop			;3e69
	nop			;3e6a
	nop			;3e6b
	nop			;3e6c
	nop			;3e6d
	nop			;3e6e
	nop			;3e6f
	nop			;3e70
	nop			;3e71
	nop			;3e72
	nop			;3e73
	nop			;3e74
	nop			;3e75
	nop			;3e76
	nop			;3e77
	nop			;3e78
	nop			;3e79
	nop			;3e7a
	nop			;3e7b
	nop			;3e7c
	nop			;3e7d
	nop			;3e7e
	nop			;3e7f
	nop			;3e80
	nop			;3e81
	nop			;3e82
	nop			;3e83
	nop			;3e84
	nop			;3e85
	nop			;3e86
	nop			;3e87
	nop			;3e88
sub_3e89h:
	nop			;3e89
	nop			;3e8a
	nop			;3e8b
	nop			;3e8c
	nop			;3e8d
	nop			;3e8e
	nop			;3e8f
	nop			;3e90
	nop			;3e91
	nop			;3e92
	nop			;3e93
	nop			;3e94
	nop			;3e95
	nop			;3e96
	nop			;3e97
	nop			;3e98
	nop			;3e99
	nop			;3e9a
	nop			;3e9b
	nop			;3e9c
	nop			;3e9d
	nop			;3e9e
	nop			;3e9f
	nop			;3ea0
	nop			;3ea1
	nop			;3ea2
	nop			;3ea3
	nop			;3ea4
	nop			;3ea5
	nop			;3ea6
	nop			;3ea7
	nop			;3ea8
	nop			;3ea9
	nop			;3eaa
	nop			;3eab
	nop			;3eac
	nop			;3ead
	nop			;3eae
	nop			;3eaf
	nop			;3eb0
	nop			;3eb1
	nop			;3eb2
	nop			;3eb3
	nop			;3eb4
	nop			;3eb5
	nop			;3eb6
	nop			;3eb7
	nop			;3eb8
	nop			;3eb9
	nop			;3eba
	nop			;3ebb
	nop			;3ebc
	nop			;3ebd
	nop			;3ebe
	nop			;3ebf
	nop			;3ec0
	nop			;3ec1
	nop			;3ec2
	nop			;3ec3
l3ec4h:
	nop			;3ec4
sub_3ec5h:
	nop			;3ec5
	nop			;3ec6
	nop			;3ec7
	nop			;3ec8
	nop			;3ec9
	nop			;3eca
	nop			;3ecb
	nop			;3ecc
	nop			;3ecd
	nop			;3ece
	nop			;3ecf
	nop			;3ed0
	nop			;3ed1
	nop			;3ed2
	nop			;3ed3
	nop			;3ed4
	nop			;3ed5
	nop			;3ed6
	nop			;3ed7
	nop			;3ed8
	nop			;3ed9
	nop			;3eda
	nop			;3edb
	nop			;3edc
	nop			;3edd
	nop			;3ede
	nop			;3edf
	nop			;3ee0
	nop			;3ee1
	nop			;3ee2
	nop			;3ee3
	nop			;3ee4
	nop			;3ee5
	nop			;3ee6
	nop			;3ee7
	nop			;3ee8
	nop			;3ee9
	nop			;3eea
	nop			;3eeb
	nop			;3eec
	nop			;3eed
	nop			;3eee
	nop			;3eef
	nop			;3ef0
	nop			;3ef1
	nop			;3ef2
	nop			;3ef3
	nop			;3ef4
	nop			;3ef5
	nop			;3ef6
	nop			;3ef7
	nop			;3ef8
	nop			;3ef9
	nop			;3efa
	nop			;3efb
	nop			;3efc
	nop			;3efd
	nop			;3efe
	nop			;3eff
	nop			;3f00
	nop			;3f01
	nop			;3f02
	nop			;3f03
	nop			;3f04
	nop			;3f05
	nop			;3f06
	nop			;3f07
	nop			;3f08
	nop			;3f09
	nop			;3f0a
	nop			;3f0b
	nop			;3f0c
	nop			;3f0d
	nop			;3f0e
	nop			;3f0f
	nop			;3f10
	nop			;3f11
	nop			;3f12
	nop			;3f13
	nop			;3f14
	nop			;3f15
	nop			;3f16
	nop			;3f17
	nop			;3f18
	nop			;3f19
	nop			;3f1a
	nop			;3f1b
	nop			;3f1c
	nop			;3f1d
	nop			;3f1e
	nop			;3f1f
	nop			;3f20
	nop			;3f21
	nop			;3f22
	nop			;3f23
	nop			;3f24
	nop			;3f25
	nop			;3f26
	nop			;3f27
	nop			;3f28
	nop			;3f29
	nop			;3f2a
	nop			;3f2b
	nop			;3f2c
	nop			;3f2d
	nop			;3f2e
	nop			;3f2f
	nop			;3f30
	nop			;3f31
	nop			;3f32
	nop			;3f33
	nop			;3f34
	nop			;3f35
	nop			;3f36
	nop			;3f37
	nop			;3f38
	nop			;3f39
	nop			;3f3a
	nop			;3f3b
	nop			;3f3c
	nop			;3f3d
	nop			;3f3e
	nop			;3f3f
	nop			;3f40
	nop			;3f41
	nop			;3f42
	nop			;3f43
	nop			;3f44
	nop			;3f45
	nop			;3f46
	nop			;3f47
	nop			;3f48
	nop			;3f49
	nop			;3f4a
	nop			;3f4b
	nop			;3f4c
	nop			;3f4d
	nop			;3f4e
	nop			;3f4f
	nop			;3f50
	nop			;3f51
	nop			;3f52
	nop			;3f53
	nop			;3f54
	nop			;3f55
	nop			;3f56
	nop			;3f57
	nop			;3f58
	nop			;3f59
	nop			;3f5a
	nop			;3f5b
	nop			;3f5c
	nop			;3f5d
	nop			;3f5e
	nop			;3f5f
	nop			;3f60
	nop			;3f61
	nop			;3f62
	nop			;3f63
	nop			;3f64
	nop			;3f65
	nop			;3f66
	nop			;3f67
	nop			;3f68
	nop			;3f69
	nop			;3f6a
	nop			;3f6b
	nop			;3f6c
	nop			;3f6d
	nop			;3f6e
	nop			;3f6f
	nop			;3f70
	nop			;3f71
	nop			;3f72
l3f73h:
	nop			;3f73
	nop			;3f74
	nop			;3f75
	nop			;3f76
	nop			;3f77
	nop			;3f78
	nop			;3f79
	nop			;3f7a
	nop			;3f7b
	nop			;3f7c
	nop			;3f7d
	nop			;3f7e
	nop			;3f7f
l3f80h:
	nop			;3f80
	nop			;3f81
	nop			;3f82
	nop			;3f83
	nop			;3f84
	nop			;3f85
	nop			;3f86
	nop			;3f87
	nop			;3f88
	nop			;3f89
	nop			;3f8a
	nop			;3f8b
	nop			;3f8c
	nop			;3f8d
	nop			;3f8e
	nop			;3f8f
	nop			;3f90
	nop			;3f91
	nop			;3f92
	nop			;3f93
	nop			;3f94
	nop			;3f95
	nop			;3f96
	nop			;3f97
	nop			;3f98
	nop			;3f99
	nop			;3f9a
	nop			;3f9b
	nop			;3f9c
	nop			;3f9d
	nop			;3f9e
	nop			;3f9f
	nop			;3fa0
	nop			;3fa1
	nop			;3fa2
	nop			;3fa3
	nop			;3fa4
	nop			;3fa5
	nop			;3fa6
	nop			;3fa7
	nop			;3fa8
	nop			;3fa9
	nop			;3faa
	nop			;3fab
	nop			;3fac
	nop			;3fad
	nop			;3fae
	nop			;3faf
	nop			;3fb0
	nop			;3fb1
	nop			;3fb2
	nop			;3fb3
	nop			;3fb4
	nop			;3fb5
	nop			;3fb6
	nop			;3fb7
	nop			;3fb8
	nop			;3fb9
	nop			;3fba
	nop			;3fbb
	nop			;3fbc
l3fbdh:
	nop			;3fbd
	nop			;3fbe
	nop			;3fbf
	nop			;3fc0
	nop			;3fc1
	nop			;3fc2
	nop			;3fc3
	nop			;3fc4
	nop			;3fc5
	nop			;3fc6
	nop			;3fc7
	nop			;3fc8
	nop			;3fc9
	nop			;3fca
	nop			;3fcb
	nop			;3fcc
	nop			;3fcd
	nop			;3fce
	nop			;3fcf
	nop			;3fd0
	nop			;3fd1
	nop			;3fd2
	nop			;3fd3
	nop			;3fd4
	nop			;3fd5
	nop			;3fd6
	nop			;3fd7
	nop			;3fd8
	nop			;3fd9
	nop			;3fda
	nop			;3fdb
	nop			;3fdc
	nop			;3fdd
	nop			;3fde
	nop			;3fdf
	nop			;3fe0
	nop			;3fe1
	nop			;3fe2
	nop			;3fe3
	nop			;3fe4
	nop			;3fe5
	nop			;3fe6
	nop			;3fe7
	nop			;3fe8
	nop			;3fe9
	nop			;3fea
	nop			;3feb
	nop			;3fec
	nop			;3fed
	nop			;3fee
	nop			;3fef
	nop			;3ff0
	nop			;3ff1
	nop			;3ff2
	nop			;3ff3
	nop			;3ff4
	nop			;3ff5
	nop			;3ff6
	nop			;3ff7
	nop			;3ff8
	nop			;3ff9
	nop			;3ffa
	nop			;3ffb
	nop			;3ffc
	nop			;3ffd
	nop			;3ffe
	nop			;3fff
	nop			;4000
l4001h:
	nop			;4001
	nop			;4002
	nop			;4003
	nop			;4004
	nop			;4005
	nop			;4006
	nop			;4007
	nop			;4008
	nop			;4009
	nop			;400a
	nop			;400b
sub_400ch:
	nop			;400c
	nop			;400d
	nop			;400e
	nop			;400f
	nop			;4010
	nop			;4011
	nop			;4012
	nop			;4013
	nop			;4014
	nop			;4015
	nop			;4016
	nop			;4017
	nop			;4018
	nop			;4019
	nop			;401a
	nop			;401b
	nop			;401c
	nop			;401d
	nop			;401e
	nop			;401f
	nop			;4020
	nop			;4021
	nop			;4022
	nop			;4023
	nop			;4024
	nop			;4025
	nop			;4026
	nop			;4027
	nop			;4028
	nop			;4029
	nop			;402a
	nop			;402b
	nop			;402c
	nop			;402d
	nop			;402e
	nop			;402f
	nop			;4030
	nop			;4031
	nop			;4032
	nop			;4033
	nop			;4034
	nop			;4035
	nop			;4036
	nop			;4037
	nop			;4038
	nop			;4039
	nop			;403a
	nop			;403b
	nop			;403c
	nop			;403d
	nop			;403e
	nop			;403f
	nop			;4040
	nop			;4041
	nop			;4042
	nop			;4043
	nop			;4044
	nop			;4045
	nop			;4046
	nop			;4047
	nop			;4048
	nop			;4049
	nop			;404a
	nop			;404b
	nop			;404c
	nop			;404d
	nop			;404e
	nop			;404f
	nop			;4050
	nop			;4051
	nop			;4052
	nop			;4053
	nop			;4054
	nop			;4055
	nop			;4056
	nop			;4057
	nop			;4058
	nop			;4059
	nop			;405a
	nop			;405b
	nop			;405c
	nop			;405d
	nop			;405e
	nop			;405f
	nop			;4060
	nop			;4061
	nop			;4062
	nop			;4063
	nop			;4064
	nop			;4065
	nop			;4066
	nop			;4067
	nop			;4068
	nop			;4069
	nop			;406a
	nop			;406b
	nop			;406c
	nop			;406d
	nop			;406e
	nop			;406f
	nop			;4070
	nop			;4071
	nop			;4072
	nop			;4073
	nop			;4074
	nop			;4075
	nop			;4076
	nop			;4077
	nop			;4078
	nop			;4079
	nop			;407a
	nop			;407b
	nop			;407c
	nop			;407d
	nop			;407e
	nop			;407f
	nop			;4080
	nop			;4081
	nop			;4082
	nop			;4083
	nop			;4084
	nop			;4085
	nop			;4086
	nop			;4087
	nop			;4088
	nop			;4089
	nop			;408a
	nop			;408b
	nop			;408c
	nop			;408d
	nop			;408e
	nop			;408f
	nop			;4090
	nop			;4091
	nop			;4092
	nop			;4093
	nop			;4094
	nop			;4095
	nop			;4096
	nop			;4097
	nop			;4098
	nop			;4099
	nop			;409a
	nop			;409b
	nop			;409c
	nop			;409d
	nop			;409e
	nop			;409f
	nop			;40a0
	nop			;40a1
	nop			;40a2
	nop			;40a3
	nop			;40a4
	nop			;40a5
	nop			;40a6
	nop			;40a7
	nop			;40a8
	nop			;40a9
	nop			;40aa
	nop			;40ab
	nop			;40ac
	nop			;40ad
	nop			;40ae
	nop			;40af
	nop			;40b0
	nop			;40b1
	nop			;40b2
	nop			;40b3
	nop			;40b4
	nop			;40b5
	nop			;40b6
	nop			;40b7
	nop			;40b8
	nop			;40b9
	nop			;40ba
	nop			;40bb
	nop			;40bc
	nop			;40bd
	nop			;40be
	nop			;40bf
	nop			;40c0
	nop			;40c1
	nop			;40c2
	nop			;40c3
	nop			;40c4
	nop			;40c5
	nop			;40c6
	nop			;40c7
	nop			;40c8
	nop			;40c9
	nop			;40ca
	nop			;40cb
	nop			;40cc
	nop			;40cd
	nop			;40ce
	nop			;40cf
	nop			;40d0
	nop			;40d1
	nop			;40d2
	nop			;40d3
	nop			;40d4
	nop			;40d5
	nop			;40d6
	nop			;40d7
	nop			;40d8
	nop			;40d9
	nop			;40da
	nop			;40db
	nop			;40dc
	nop			;40dd
	nop			;40de
	nop			;40df
	nop			;40e0
	nop			;40e1
	nop			;40e2
	nop			;40e3
	nop			;40e4
	nop			;40e5
	nop			;40e6
	nop			;40e7
	nop			;40e8
	nop			;40e9
	nop			;40ea
	nop			;40eb
	nop			;40ec
	nop			;40ed
	nop			;40ee
	nop			;40ef
	nop			;40f0
	nop			;40f1
	nop			;40f2
	nop			;40f3
	nop			;40f4
	nop			;40f5
	nop			;40f6
	nop			;40f7
	nop			;40f8
	nop			;40f9
	nop			;40fa
	nop			;40fb
	nop			;40fc
	nop			;40fd
	nop			;40fe
	nop			;40ff
l4100h:
	ld bc,00002h		;4100
	ret pe			;4103
	ld hl,0c605h		;4104
	ld b,0ddh		;4107
	ld (bc),a		;4109
	ld d,0e8h		;410a
	adc a,e			;410c
	inc b			;410d
	ld (hl),e		;410e
	and (hl)		;410f
	call nz,l082eh		;4110
	inc bc			;4113
	adc a,e			;4114
	ld e,02fh		;4115
	inc bc			;4117
	ret pe			;4118
	dec hl			;4119
	dec d			;411a
	ld e,d			;411b
	ld (0e8c0h),a		;411c
	inc e			;411f
	ld d,0c5h		;4120
	ld a,04bh		;4122
	inc bc			;4124
	ld e,e			;4125
	inc bc			;4126
	rst 18h			;4127
	add a,007h		;4128
	push hl			;412a
	jp (hl)			;412b
	dec bc			;412c
	cp 0b0h			;412d
	inc bc			;412f
	ex de,hl		;4130
	sub c			;4131
	cp a			;4132
	nop			;4133
	nop			;4134
	ld (hl),0a1h		;4135
	xor 000h		;4137
	ret pe			;4139
	jr nz,l413ch		;413a
l413ch:
	ld (hl),e		;413c
	ld bc,l06c2h+1		;413d
	rra			;4140
	add hl,sp		;4141
	ld e,001h		;4142
	nop			;4144
	ld (hl),l		;4145
	inc b			;4146
	adc a,c			;4147
	ld a,001h		;4148
	nop			;414a
	add a,b			;414b
	dec a			;414c
	ld e,d			;414d
	ld (hl),h		;414e
	xor 0e8h		;414f
	ld (bc),a		;4151
	nop			;4152
	ex de,hl		;4153
	rst 20h			;4154
	adc a,h			;4155
	ret c			;4156
	inc bc			;4157
	ld b,003h		;4158
	nop			;415a
	ld b,b			;415b
	adc a,(hl)		;415c
	ret nz			;415d
	ld h,080h		;415e
	dec a			;4160
	ld c,l			;4161
	ld (hl),h		;4162
	ex af,af'		;4163
	ld h,080h		;4164
	dec a			;4166
	ld e,d			;4167
	ld (hl),h		;4168
	ld (bc),a		;4169
	ld sp,hl		;416a
	jp 0c3f8h		;416b
	add a,b			;416e
	dec a			;416f
	ld e,d			;4170
	ld (hl),h		;4171
	jp m,0dfe8h		;4172
	rst 38h			;4175
	ld (hl),d		;4176
	push af			;4177
	ld h,039h		;4178
	ld a,001h		;417a
	nop			;417c
	ld (hl),l		;417d
	xor 026h		;417e
	adc a,e			;4180
	ld c,003h		;4181
	nop			;4183
	ld b,c			;4184
	ld bc,l030eh		;4185
	nop			;4188
	ld h,08ah		;4189
	dec c			;418b
	adc a,b			;418c
	dec c			;418d
	ex de,hl		;418e
	sbc a,033h		;418f
	ret nz			;4191
	adc a,e			;4192
	ret m			;4193
	ld (hl),0a3h		;4194
	rst 20h			;4196
	nop			;4197
	ld (hl),0a3h		;4198
	jp (hl)			;419a
	nop			;419b
	ld (hl),0a3h		;419c
	ex de,hl		;419e
	nop			;419f
	ld d,b			;41a0
	ld (hl),0a1h		;41a1
	xor 000h		;41a3
	ret pe			;41a5
	or h			;41a6
	rst 38h			;41a7
	ld (hl),d		;41a8
	ld (de),a		;41a9
	ld b,01fh		;41aa
	add hl,sp		;41ac
	ld a,001h		;41ad
	nop			;41af
	ld (hl),h		;41b0
	inc hl			;41b1
	add a,b			;41b2
	dec a			;41b3
	ld e,d			;41b4
	ld (hl),h		;41b5
	dec bc			;41b6
	ret pe			;41b7
	sbc a,e			;41b8
	rst 38h			;41b9
	ld (hl),e		;41ba
	xor 058h		;41bb
	or b			;41bd
	rlca			;41be
	jp (hl)			;41bf
	sbc a,0f7h		;41c0
	ld (hl),083h		;41c2
	ld a,0e7h		;41c4
	nop			;41c6
	nop			;41c7
	ld (hl),l		;41c8
	ld l,b			;41c9
	ret pe			;41ca
	ld h,h			;41cb
	or 05bh			;41cc
	adc a,c			;41ce
	ld e,h			;41cf
	ld (bc),a		;41d0
	or b			;41d1
	ex af,af'		;41d2
	ex de,hl		;41d3
	jp pe,096e8h		;41d4
	rst 38h			;41d7
	ld (hl),d		;41d8
	jp po,l0e8ah+1		;41d9
	inc bc			;41dc
	nop			;41dd
	ld e,d			;41de
	dec sp			;41df
	jp z,00276h		;41e0
	adc a,e			;41e3
	pop de			;41e4
	ld d,d			;41e5
	dec sp			;41e6
	exx			;41e7
	ld (hl),a		;41e8
	ret z			;41e9
	ld (hl),083h		;41ea
	ld a,0e7h		;41ec
	nop			;41ee
	nop			;41ef
	ld (hl),l		;41f0
	dec b			;41f1
	ld (hl),08ch		;41f2
	ld e,0e7h		;41f4
	nop			;41f6
	ld (hl),083h		;41f7
	ld a,0e9h		;41f9
	nop			;41fb
	nop			;41fc
	ld (hl),h		;41fd
	ld c,006h		;41fe
	ld (hl),08eh		;4200
	ld b,0e9h		;4202
	nop			;4204
	ld h,039h		;4205
	ld c,003h		;4207
	nop			;4209
	rlca			;420a
	halt			;420b
	dec b			;420c
	ld (hl),08ch		;420d
	ld e,0e9h		;420f
	nop			;4211
	ld (hl),08ch		;4212
	ld e,0ebh		;4214
	nop			;4216
	ex de,hl		;4217
	sbc a,c			;4218
	ld (hl),08eh		;4219
	ld e,0ebh		;421b
	nop			;421d
	adc a,e			;421e
	ld c,003h		;421f
	nop			;4221
	dec hl			;4222
	res 1,h			;4223
	jp c,l4574h		;4225
	inc bc			;4228
	pop de			;4229
	adc a,(hl)		;422a
	jp nz,08749h		;422b
	exx			;422e
	ex de,hl		;422f
	daa			;4230
	sub b			;4231
	ld (hl),080h		;4232
	ld a,0edh		;4234
	nop			;4236
	ld bc,0df77h		;4237
	ld (hl),08eh		;423a
	ld e,0e7h		;423c
	nop			;423e
	ld (hl),d		;423f
	dec b			;4240
	ld (hl),08eh		;4241
	ld e,0e9h		;4243
	nop			;4245
	adc a,e			;4246
	ld c,003h		;4247
	nop			;4249
	dec hl			;424a
	res 1,h			;424b
	ret c			;424d
	adc a,e			;424e
	ret nc			;424f
	ld (hl),h		;4250
	dec de			;4251
	inc bc			;4252
	jp 08e40h		;4253
	ret nz			;4256
	ld c,c			;4257
	adc a,c			;4258
	ld e,003h		;4259
	nop			;425b
	ld h,089h		;425c
	ld c,003h		;425e
	nop			;4260
	or e			;4261
	ld c,l			;4262
	add a,(hl)		;4263
	dec e			;4264
	ld h,088h		;4265
	dec e			;4267
	ld h,089h		;4268
	ld a,001h		;426a
l426ch:
	nop			;426c
	adc a,(hl)		;426d
	jp c,0a136h		;426e
	adc a,e			;4271
	ld bc,l01a3h		;4272
	nop			;4275
	adc a,h			;4276
	ret c			;4277
	ld b,b			;4278
	ld e,e			;4279
	jp (hl)			;427a
	add hl,de		;427b
	rst 30h			;427c
	cp a			;427d
	nop			;427e
	nop			;427f
	adc a,h			;4280
	ret nz			;4281
	ld c,b			;4282
	ret pe			;4283
	sub 0feh		;4284
	ld (hl),e		;4286
	inc bc			;4287
	jp (hl)			;4288
	ld (08effh),a		;4289
	ret c			;428c
	ret pe			;428d
	sbc a,0feh		;428e
	ld (hl),d		;4290
	or 08bh			;4291
	ld c,003h		;4293
	nop			;4295
	ld d,c			;4296
	dec sp			;4297
	exx			;4298
	halt			;4299
	xor e			;429a
	jp (hl)			;429b
	inc l			;429c
	rst 38h			;429d
	cp a			;429e
	nop			;429f
	nop			;42a0
	adc a,h			;42a1
	ret nz			;42a2
	ld c,b			;42a3
	ret pe			;42a4
	or l			;42a5
	cp 072h			;42a6
	rlca			;42a8
	ld h,089h		;42a9
	ld a,001h		;42ab
	nop			;42ad
	ex de,hl		;42ae
	jp z,009b0h		;42af
	jp (hl)			;42b2
	ex de,hl		;42b3
	or 03ch			;42b4
	ld bc,l0672h		;42b6
	ld (hl),h		;42b9
	inc c			;42ba
	or b			;42bb
	ld bc,0f3ebh		;42bc
	ld (hl),0a0h		;42bf
	defb 0edh ;next byte illegal after ed	;42c1
	nop			;42c2
	ld (0ebe4h),a		;42c3
	rst 20h			;42c6
	ld (hl),088h		;42c7
	ld e,0edh		;42c9
	nop			;42cb
	ex de,hl		;42cc
	rst 30h			;42cd
	ret pe			;42ce
	inc a			;42cf
	push af			;42d0
	ld (hl),08ch		;42d1
	ld d,057h		;42d3
	ld bc,0c736h		;42d5
	ld b,055h		;42d8
	ld bc,l02cbh		;42da
	ld (hl),0c7h		;42dd
	ld b,059h		;42df
	ld bc,00001h		;42e1
	ld (hl),0a3h		;42e4
	rlc d			;42e6
	or 044h			;42e8
	jr l426ch		;42ea
	ld (hl),l		;42ec
	inc bc			;42ed
	jp (hl)			;42ee
	add a,b			;42ef
	nop			;42f0
	ret pe			;42f1
	dec l			;42f2
	push af			;42f3
	ld e,016h		;42f4
	rlca			;42f6
	ld d,01fh		;42f7
	inc sp			;42f9
	in a,(089h)		;42fa
	ld e,04ah		;42fc
	ld bc,01e88h		;42fe
	ld d,h			;4301
	ld bc,047bbh		;4302
	ld bc,l16b9h		;4305
	inc b			;4308
	ld a,(bc)		;4309
	call po,sub_1874h	;430a
	cp c			;430d
	ld c,005h		;430e
	cp 0cch			;4310
	ld (hl),h		;4312
	ld de,l16b9h		;4313
	ex af,af'		;4316
	cp 0cch			;4317
	ld (hl),h		;4319
	ld d,d			;431a
	cp c			;431b
	dec c			;431c
	ld a,(bc)		;431d
	cp 0cch			;431e
	ld (hl),h		;4320
	ld c,e			;4321
	cp c			;4322
	rrca			;4323
	rlca			;4324
	or h			;4325
	add a,(hl)		;4326
	adc a,b			;4327
	ld c,047h		;4328
	ld bc,l2e88h		;432a
	ld c,c			;432d
	ld bc,0cc8ah		;432e
	rra			;4331
	ret pe			;4332
	call z,sub_3600h	;4333
	adc a,e			;4336
	ld a,04ah		;4337
	ld bc,0c7f7h		;4339
	nop			;433c
	add a,b			;433d
	ld (hl),h		;433e
	rrca			;433f
	adc a,d			;4340
	pop hl			;4341
	ret pe			;4342
	inc (hl)		;4343
	ld a,(de)		;4344
	inc a			;4345
	ld bc,08574h		;4346
	ld (hl),080h		;4349
	ld h,04bh		;434b
	ld bc,l16fdh		;434d
	rra			;4350
	add a,b			;4351
	defb 0fdh,005h,075h ;illegal sequence	;4352
	ld b,0a0h		;4355
	ld d,h			;4357
	ld bc,0cba2h		;4358
	ld (bc),a		;435b
	adc a,d			;435c
	ld h,04bh		;435d
	ld bc,0d4f6h		;435f
	add a,b			;4362
	call po,0e802h		;4363
	and l			;4366
	call p,0a136h		;4367
	rlc d			;436a
	jp 087b4h		;436c
	ex de,hl		;436f
	or (hl)			;4370
	ld a,(bc)		;4371
	call po,02674h		;4372
	cp 0cch			;4375
	ld (hl),h		;4377
	dec b			;4378
	cp 0cch			;4379
	ld (hl),h		;437b
	ld de,0ffc3h		;437c
	ld (hl),h		;437f
	ld hl,074ffh		;4380
	inc hl			;4383
	ret pe			;4384
	inc d			;4385
	nop			;4386
	adc a,a			;4387
	ld b,h			;4388
	inc hl			;4389
	adc a,a			;438a
	ld b,h			;438b
	ld hl,0e8c3h		;438c
	inc hl			;438f
	nop			;4390
	ret pe			;4391
	rst 38h			;4392
	rlca			;4393
	ret pe			;4394
	sub b			;4395
	dec d			;4396
	ret pe			;4397
	ld d,b			;4398
	nop			;4399
	jp l16e8h		;439a
	nop			;439d
	ret pe			;439e
	cp e			;439f
	ld b,051h		;43a0
	ret pe			;43a2
	add a,d			;43a3
	dec d			;43a4
	ld e,c			;43a5
	dec bc			;43a6
	ret			;43a7
	ret pe			;43a8
	ccf			;43a9
	nop			;43aa
	ld (hl),0a0h		;43ab
	rlc d			;43ad
	ld (hl),l		;43af
	jp (hl)			;43b0
	or b			;43b1
	ld a,(de)		;43b2
	jp 08f36h		;43b3
	ld b,03fh		;43b6
	ld bc,l65e8h		;43b8
	call p,0ff36h		;43bb
	ld (hl),0dfh		;43be
	nop			;43c0
	ld (hl),0ffh		;43c1
	ld (hl),0e1h		;43c3
	nop			;43c5
	ld e,016h		;43c6
	rra			;43c8
	adc a,e			;43c9
	ld c,057h		;43ca
	ld bc,l0e88h+1		;43cc
	pop hl			;43cf
	nop			;43d0
	adc a,e			;43d1
	ld c,055h		;43d2
l43d4h:
	ld bc,l0e88h+1		;43d4
	rst 18h			;43d7
	nop			;43d8
	adc a,e			;43d9
	ld c,059h		;43da
	ld bc,0c71fh		;43dc
	ld b,h			;43df
	ld c,001h		;43e0
	nop			;43e2
	adc a,e			;43e3
	sub 0e8h		;43e4
	inc e			;43e6
	djnz l43d4h		;43e7
	ld (de),a		;43e9
	ld (hl),08fh		;43ea
	ld b,03fh		;43ec
	ld bc,08f36h		;43ee
	ld b,0e1h		;43f1
	nop			;43f3
	ld (hl),08fh		;43f4
	ld b,0dfh		;43f6
	nop			;43f8
	ret pe			;43f9
	ld de,l36f4h		;43fa
	rst 38h			;43fd
	ld h,03fh		;43fe
	ld bc,074c5h		;4400
	add hl,de		;4403
	adc a,e			;4404
	ld b,h			;4405
	ld b,036h		;4406
	and e			;4408
	ld b,e			;4409
	ld bc,08c36h		;440a
	ld e,045h		;440d
	ld bc,0ff36h		;440f
	ld e,043h		;4412
	ld bc,0448bh		;4414
	ex af,af'		;4417
	ld (hl),0a3h		;4418
	ld b,e			;441a
	ld bc,0ff36h		;441b
	ld e,043h		;441e
	ld bc,056c3h		;4420
	ld d,a			;4423
	ld d,c			;4424
	or 006h			;4425
	defb 0ddh,002h,008h ;illegal sequence	;4427
	ld (hl),l		;442a
	jr nz,$-64		;442b
	rlca			;442d
	ld bc,l44f7h		;442e
	inc b			;4431
	nop			;4432
	add a,b			;4433
	ld (hl),h		;4434
	rrca			;4435
	ld d,(hl)		;4436
	add a,e			;4437
	add a,00ah		;4438
l443ah:
	cp a			;443a
	pop de			;443b
	ld (bc),a		;443c
	cp c			;443d
	inc b			;443e
	nop			;443f
	di			;4440
	and a			;4441
	ld e,(hl)		;4442
	ld (hl),h		;4443
	ld c,0c5h		;4444
	inc (hl)		;4446
	add a,e			;4447
	cp 0ffh			;4448
	ld (hl),l		;444a
	ex (sp),hl		;444b
	ld sp,hl		;444c
	ld d,01fh		;444d
	ld e,c			;444f
	ld e,a			;4450
	ld e,(hl)		;4451
	jp 08c36h		;4452
	ld e,01bh		;4455
	inc bc			;4457
	adc a,d			;4458
	ld a,h			;4459
	inc b			;445a
	add a,b			;445b
	rst 8			;445c
	ret nz			;445d
	add a,b			;445e
	rst 20h			;445f
	rst 18h			;4460
	ld (hl),089h		;4461
	ld (hl),019h		;4463
	inc bc			;4465
	ex de,hl		;4466
	push hl			;4467
	call nz,0f02eh		;4468
	nop			;446b
	inc h			;446c
	ccf			;446d
	ld a,(00006h)		;446e
	ld bc,l72f5h		;4471
	inc c			;4474
	ld h,03ah		;4475
	ld b,(hl)		;4477
	nop			;4478
	ld (hl),h		;4479
	ld b,026h		;447a
	call nz,sub_186eh	;447c
	ex de,hl		;447f
	call p,sub_2e89h	;4480
	ex af,af'		;4483
	inc bc			;4484
	adc a,h			;4485
	ld b,00ah		;4486
	inc bc			;4488
	jp l5157h		;4489
	ld d,b			;448c
	or c			;448d
	inc b			;448e
l448fh:
	or b			;448f
	ld d,016h		;4490
	rlca			;4492
	cp a			;4493
	dec l			;4494
	ld bc,l58aah		;4495
	xor d			;4498
	ld d,b			;4499
	adc a,d			;449a
	pop bc			;449b
	xor d			;449c
	inc sp			;449d
	ret nz			;449e
	xor e			;449f
	add a,e			;44a0
	rst 0			;44a1
	ex af,af'		;44a2
	ld e,b			;44a3
	add a,(hl)		;44a4
	ret po			;44a5
	xor d			;44a6
	add a,(hl)		;44a7
	call nz,08b50h		;44a8
	jp 08cabh		;44ab
	ret c			;44ae
	xor e			;44af
	ld e,c			;44b0
	ld e,b			;44b1
	xor e			;44b2
	sub d			;44b3
	xor e			;44b4
	sub c			;44b5
	add a,a			;44b6
	pop de			;44b7
	ld e,a			;44b8
	cp e			;44b9
	dec l			;44ba
	ld bc,l57c3h		;44bb
	ld d,c			;44be
	ld d,b			;44bf
	or c			;44c0
	ex af,af'		;44c1
	ld (hl),002h		;44c2
	ld c,0dbh		;44c4
	nop			;44c6
	ex de,hl		;44c7
	add a,0a1h		;44c8
	ld b,c			;44ca
	inc bc			;44cb
	dec a			;44cc
	rst 38h			;44cd
	rst 38h			;44ce
	ld (hl),l		;44cf
	halt			;44d0
	add a,e			;44d1
	ld a,02fh		;44d2
	inc bc			;44d4
	nop			;44d5
	ld (hl),l		;44d6
	ld (bc),a		;44d7
	ld sp,hl		;44d8
	jp l1e89h+2		;44d9
	cpl			;44dc
	inc bc			;44dd
	dec bc			;44de
	in a,(074h)		;44df
	inc bc			;44e1
	ret pe			;44e2
l44e3h:
	ld (hl),l		;44e3
	ld de,001b9h		;44e4
	nop			;44e7
	ret pe			;44e8
	cp l			;44e9
	djnz l455eh		;44ea
	call pe,sub_168bh	;44ec
	cpl			;44ef
	inc bc			;44f0
	dec bc			;44f1
	jp nc,l0b75h		;44f2
	ret pe			;44f5
l44f6h:
	ret p			;44f6
l44f7h:
	ld bc,l06c7h		;44f7
	ld hl,0ff01h		;44fa
	rst 38h			;44fd
	ex de,hl		;44fe
	inc de			;44ff
	add a,c			;4500
	ld a,02bh		;4501
l4503h:
	inc bc			;4503
	ret m			;4504
	rrca			;4505
	ld (hl),d		;4506
	inc b			;4507
	adc a,c			;4508
	ld e,02bh		;4509
	inc bc			;450b
	adc a,e			;450c
	out (032h),a		;450d
	in a,(0e8h)		;450f
	ld h,h			;4511
	djnz l453ah		;4512
	adc a,d			;4514
	ld c,(hl)		;4515
	inc b			;4516
	cp 0c1h			;4517
	ld (l51edh),a		;4519
	or b			;451c
	rst 38h			;451d
	ret pe			;451e
	inc e			;451f
	ld (de),a		;4520
	ld h,08bh		;4521
	ld c,(hl)		;4523
	ld (bc),a		;4524
	ld b,0c4h		;4525
	ld a,04bh		;4527
	inc bc			;4529
	ld d,a			;452a
	add a,e			;452b
	rst 0			;452c
	djnz l4562h		;452d
	ret nz			;452f
	pop de			;4530
	jp (hl)			;4531
	di			;4532
	xor e			;4533
	ld (hl),e		;4534
	ld bc,l5faah		;4535
	cp 0c0h			;4538
l453ah:
	ld h,088h		;453a
	ld b,l			;453c
	dec b			;453d
	rlca			;453e
	ld e,c			;453f
	ld b,d			;4540
	jp po,0a1d8h		;4541
	ld hl,l4001h		;4544
	ret m			;4547
	jp l04b9h		;4548
	nop			;454b
	cp b			;454c
	jr nz,l456fh		;454d
	di			;454f
	xor e			;4550
	xor d			;4551
	adc a,e			;4552
	ld (hl),01dh		;4553
	inc bc			;4555
	or b			;4556
	djnz l4503h		;4557
	add a,e			;4559
	rst 0			;455a
	ld a,(bc)		;455b
	adc a,e			;455c
	ld b,h			;455d
l455eh:
	ld d,0abh		;455e
	adc a,e			;4560
	ld b,h			;4561
l4562h:
	inc d			;4562
	xor e			;4563
	adc a,e			;4564
	jp nz,l33abh		;4565
	ret nz			;4568
	xor e			;4569
	xor e			;456a
	jp 075e8h		;456b
	ld a,(de)		;456e
l456fh:
	ld (hl),d		;456f
	jp m,l1e52h		;4570
	ret pe			;4573
l4574h:
	ex af,af'		;4574
	nop			;4575
	rlca			;4576
	ld e,a			;4577
	jp l68e8h		;4578
	ld a,(de)		;457b
	ld (hl),d		;457c
	jp m,l1f15h+1		;457d
	ret pe			;4580
	sbc a,a			;4581
	cp 072h			;4582
	inc b			;4584
	ret pe			;4585
	inc (hl)		;4586
	ld a,(de)		;4587
	jp 0dfe8h		;4588
	inc bc			;458b
	add a,b			;458c
	ld a,0ddh		;458d
	ld (bc),a		;458f
	ex af,af'		;4590
	ld (hl),l		;4591
	inc bc			;4592
	ret pe			;4593
	ld hl,(0e801h)		;4594
	adc a,(hl)		;4597
	nop			;4598
	ld e,08eh		;4599
	ld e,04dh		;459b
	inc bc			;459d
	adc a,d			;459e
	daa			;459f
	ld a,(bc)		;45a0
	call po,sub_3374h	;45a1
	ld (hl),03ah		;45a4
	ld h,0fbh		;45a6
	ld (bc),a		;45a8
	ld (hl),h		;45a9
	inc l			;45aa
	or 047h			;45ab
	dec bc			;45ad
	ex af,af'		;45ae
	ld (hl),h		;45af
	dec b			;45b0
	ld (hl),0feh		;45b1
	ld b,04fh		;45b3
	inc bc			;45b5
	adc a,e			;45b6
	di			;45b7
	ld d,007h		;45b8
	cp a			;45ba
	pop de			;45bb
	ld (bc),a		;45bc
	cp c			;45bd
	dec bc			;45be
	nop			;45bf
	di			;45c0
	and (hl)		;45c1
	ld (hl),h		;45c2
	cpl			;45c3
	ld h,080h		;45c4
	ld a,l			;45c6
	rst 38h			;45c7
	ccf			;45c8
	ld (hl),h		;45c9
	push af			;45ca
	rra			;45cb
	call nz,l082eh		;45cc
	inc bc			;45cf
	ret pe			;45d0
	add a,d			;45d1
	nop			;45d2
	ld (hl),e		;45d3
	call nz,sub_4debh	;45d4
	rra			;45d7
	adc a,e			;45d8
	ld c,021h		;45d9
	ld bc,l0e3bh		;45db
	ld b,c			;45de
	inc bc			;45df
	ld (hl),e		;45e0
	inc b			;45e1
	adc a,c			;45e2
	ld c,041h		;45e3
	inc bc			;45e5
	ld a,(0fb26h)		;45e6
	ld (bc),a		;45e9
	ld (hl),h		;45ea
l45ebh:
	ret po			;45eb
	adc a,c			;45ec
	ld c,043h		;45ed
	inc bc			;45ef
	ld sp,hl		;45f0
	ex de,hl		;45f1
	ld sp,l2c8ah		;45f2
	rra			;45f5
	adc a,d			;45f6
	ld h,0ddh		;45f7
	ld (bc),a		;45f9
	or 0c5h			;45fa
	ex af,af'		;45fc
	ld (hl),h		;45fd
l45feh:
	add hl,bc		;45fe
	or 0c4h			;45ff
	ex af,af'		;4601
	ld (hl),h		;4602
	ret z			;4603
	ld (0ebe4h),a		;4604
	inc d			;4607
	add a,b			;4608
	call m,07408h		;4609
	cp a			;460c
	add a,e			;460d
	add a,00fh		;460e
	ret pe			;4610
	ld l,h			;4611
	inc bc			;4612
	ld (hl),h		;4613
	rlca			;4614
	or 006h			;4615
	jp m,0ff02h		;4617
	ld (hl),h		;461a
	or b			;461b
	call nz,l082eh		;461c
	inc bc			;461f
	ld h,08ah		;4620
	ld h,(hl)		;4622
	nop			;4623
	ld d,007h		;4624
	jp 021a1h		;4626
	ld bc,l21a3h		;4629
	ld bc,l04b1h		;462c
	out (0e0h),a		;462f
	inc sp			;4631
	jp nc,0e0d1h		;4632
	pop de			;4635
	jp nc,08b26h		;4636
	ld e,(hl)		;4639
	ld (bc),a		;463a
	add a,b			;463b
	ex (sp),hl		;463c
	ret po			;463d
	rst 30h			;463e
	di			;463f
	adc a,e			;4640
	jp c,0e853h		;4641
	ld l,c			;4644
	ld b,05bh		;4645
	adc a,e			;4647
	ld d,04bh		;4648
	inc bc			;464a
	add a,e			;464b
	jp nz,l0310h		;464c
	jp c,l0326h		;464f
	ld d,(hl)		;4652
	ld (bc),a		;4653
	jp 021a1h		;4654
	ld bc,l063bh		;4657
	ld b,e			;465a
	inc bc			;465b
	ld (hl),h		;465c
	dec h			;465d
	ld b,b			;465e
	add a,e			;465f
	jp l3b20h		;4660
	jp c,01f72h		;4663
	adc a,d			;4666
	ld e,003h		;4667
	inc bc			;4669
	cp 0c3h			;466a
	ld a,(l0c1eh)		;466c
	inc bc			;466f
	ld (hl),d		;4670
	jr l45feh		;4671
	ld e,045h		;4673
	inc bc			;4675
	add a,c			;4676
	ei			;4677
	ret m			;4678
	rrca			;4679
	ld (hl),e		;467a
	rlca			;467b
	add a,e			;467c
	ei			;467d
	ld (bc),a		;467e
	ld (hl),d		;467f
	ld (bc),a		;4680
	ex de,hl		;4681
	and a			;4682
	ld sp,hl		;4683
	jp l21a3h		;4684
	ld bc,0c3f8h		;4687
	adc a,b			;468a
	ld e,003h		;468b
	inc bc			;468d
	and e			;468e
	ld hl,l1e01h		;468f
	push bc			;4692
	ld a,04bh		;4693
	inc bc			;4695
	adc a,e			;4696
	ld d,l			;4697
	ex af,af'		;4698
	ld b,d			;4699
	rra			;469a
	ret pe			;469b
	ld c,d			;469c
	ld b,033h		;469d
	in a,(0ebh)		;469f
	and l			;46a1
	ld h,08bh		;46a2
	ld e,(hl)		;46a4
	inc e			;46a5
	dec bc			;46a6
	in a,(074h)		;46a7
	ld d,081h		;46a9
	ei			;46ab
	ret m			;46ac
	rrca			;46ad
	ld (hl),d		;46ae
	jr c,$+8		;46af
	rra			;46b1
	adc a,l			;46b2
	halt			;46b3
	ld e,0e8h		;46b4
	jp p,l7301h		;46b6
	ld h,026h		;46b9
	rst 0			;46bb
	ld b,(hl)		;46bc
	inc e			;46bd
	nop			;46be
	nop			;46bf
	ld d,01fh		;46c0
	inc sp			;46c2
	ret nz			;46c3
	and e			;46c4
	cpl			;46c5
	inc bc			;46c6
	and d			;46c7
	inc bc			;46c8
	inc bc			;46c9
	ld c,b			;46ca
	and e			;46cb
	dec hl			;46cc
	inc bc			;46cd
	ld h,08bh		;46ce
	ld b,(hl)		;46d0
	dec bc			;46d1
	ld h,08bh		;46d2
	ld d,(hl)		;46d4
	djnz l4702h		;46d5
	jp nz,00ca2h		;46d7
	inc bc			;46da
	adc a,c			;46db
	ld d,02dh		;46dc
	inc bc			;46de
	jp l2fa1h		;46df
	inc bc			;46e2
	ld h,089h		;46e3
	ld b,(hl)		;46e5
	inc e			;46e6
	jp 0db0bh		;46e7
	ld (hl),h		;46ea
l46ebh:
	call nc,l1f15h+1	;46eb
	adc a,c			;46ee
	ld e,02fh		;46ef
	inc bc			;46f1
	ld h,08ah		;46f2
	ld b,(hl)		;46f4
	inc b			;46f5
	cp 0c0h			;46f6
	and d			;46f8
	inc c			;46f9
	inc bc			;46fa
	ret pe			;46fb
	rst 20h			;46fc
	ld a,(bc)		;46fd
	adc a,c			;46fe
	ld a,02bh		;46ff
	inc bc			;4701
l4702h:
	adc a,e			;4702
	out (032h),a		;4703
	in a,(088h)		;4705
	ld e,003h		;4707
	inc bc			;4709
	ret pe			;470a
	ld l,d			;470b
	ld c,089h		;470c
	ld d,02dh		;470e
	inc bc			;4710
	jp 0e850h		;4711
	sbc a,(hl)		;4714
	nop			;4715
	adc a,d			;4716
	pop de			;4717
	ld e,c			;4718
	ld (hl),088h		;4719
	ld c,0ddh		;471b
	ld (bc),a		;471d
	adc a,e			;471e
	ret z			;471f
	ld (hl),e		;4720
	rrca			;4721
	ld (hl),l		;4722
	inc b			;4723
	ld a,(bc)		;4724
	jp nc,l0475h		;4725
	or b			;4728
	inc b			;4729
	ld sp,hl		;472a
	jp 0c032h		;472b
	ld sp,hl		;472e
	ex de,hl		;472f
	ld a,(l2c74h)		;4730
	or b			;4733
	inc bc			;4734
	ld (hl),0f6h		;4735
	ld b,0ddh		;4737
	ld (bc),a		;4739
	jr l47b1h		;473a
	jr l4748h		;473c
	in a,(c)		;473e
	jr l4793h		;4740
	ld (hl),08eh		;4742
	ld e,04dh		;4744
	inc bc			;4746
	adc a,d			;4747
l4748h:
	ld l,a			;4748
	dec bc			;4749
	or 0c5h			;474a
	ld bc,l0375h		;474c
	ret pe			;474f
	dec l			;4750
	ld (bc),a		;4751
	ld e,c			;4752
	ld (hl),h		;4753
	inc b			;4754
	or b			;4755
	dec b			;4756
	ex de,hl		;4757
	pop de			;4758
	ld (0b0c0h),a		;4759
	inc bc			;475c
	ex de,hl		;475d
	inc c			;475e
	or b			;475f
	ld bc,0f636h		;4760
	ld b,0ddh		;4763
	ld (bc),a		;4765
	djnz l47dch		;4766
	pop bc			;4768
	ret m			;4769
	jp l1650h		;476a
	rra			;476d
	sbc a,h			;476e
	add a,b			;476f
	ld a,0d1h		;4770
	ld (bc),a		;4772
	ld l,075h		;4773
	dec b			;4775
	sbc a,l			;4776
	or b			;4777
	ld bc,010ebh		;4778
	sbc a,l			;477b
	ld b,0c4h		;477c
	ld a,01dh		;477e
	inc bc			;4780
	ld e,057h		;4781
	ld b,08bh		;4783
	pop bc			;4785
	ret pe			;4786
	call po,sub_1f13h	;4787
	rlca			;478a
	ld a,(bc)		;478b
	ret nz			;478c
	ld e,b			;478d
	ld (hl),h		;478e
	inc b			;478f
	or b			;4790
	ld (bc),a		;4791
	ld sp,hl		;4792
l4793h:
	jp 0c406h		;4793
	ld a,01dh		;4796
	inc bc			;4798
	ld b,a			;4799
	ld e,056h		;479a
	adc a,(hl)		;479c
	ld e,04dh		;479d
	inc bc			;479f
	adc a,e			;47a0
	di			;47a1
	cp c			;47a2
l47a3h:
	dec bc			;47a3
	nop			;47a4
	di			;47a5
	and h			;47a6
	ld e,(hl)		;47a7
	rra			;47a8
	rlca			;47a9
	inc a			;47aa
	ld bc,l0477h		;47ab
	ld a,(bc)		;47ae
	ret nz			;47af
	ret m			;47b0
l47b1h:
	jp 0c3f9h		;47b1
	inc sp			;47b4
	ret nz			;47b5
	ld (hl),0a3h		;47b6
	dec c			;47b8
	inc bc			;47b9
	ld (hl),0c6h		;47ba
	ld b,0ddh		;47bc
	ld (bc),a		;47be
	ld d,0ach		;47bf
	ret pe			;47c1
	jp (hl)			;47c2
	jr $+118		;47c3
	ld b,e			;47c5
sub_47c6h:
	adc a,d			;47c6
	ret po			;47c7
	xor h			;47c8
	inc a			;47c9
	ld a,(l6574h)		;47ca
	ld c,(hl)		;47cd
	ld c,(hl)		;47ce
	ld e,056h		;47cf
	ld d,007h		;47d1
	ld (hl),080h		;47d3
	ld a,0e6h		;47d5
	nop			;47d7
	nop			;47d8
	ld (hl),h		;47d9
	dec b			;47da
	ret pe			;47db
l47dch:
	and h			;47dc
	nop			;47dd
	ld (hl),e		;47de
	ld c,b			;47df
	ret pe			;47e0
	jr l47e3h		;47e1
l47e3h:
	ld (hl),0a0h		;47e3
	push de			;47e5
	nop			;47e6
	ld d,b			;47e7
	ld (hl),0c6h		;47e8
	ld b,0d5h		;47ea
	nop			;47ec
	nop			;47ed
	ret pe			;47ee
l47efh:
	or c			;47ef
	cp 058h			;47f0
	ld (hl),0a2h		;47f2
	push de			;47f4
	nop			;47f5
	ld e,(hl)		;47f6
	rra			;47f7
	jp (hl)			;47f8
	or h			;47f9
	nop			;47fa
	ld (0e8c0h),a		;47fb
	sbc a,e			;47fe
	inc b			;47ff
	ld (hl),d		;4800
	or c			;4801
	ld d,01fh		;4802
	ret pe			;4804
	ret po			;4805
	ld a,(bc)		;4806
	ret m			;4807
	jp l561eh		;4808
	ret pe			;480b
	defb 0edh ;next byte illegal after ed	;480c
	rst 38h			;480d
	ld e,(hl)		;480e
	rra			;480f
	ld (hl),0feh		;4810
	ld b,00eh		;4812
	inc bc			;4814
	add a,b			;4815
	inc a			;4816
	nop			;4817
	ld (hl),h		;4818
	ld b,b			;4819
	ld e,056h		;481a
	ld b,0e8h		;481c
	ld b,b			;481e
	nop			;481f
	rlca			;4820
	ld (hl),e		;4821
	dec b			;4822
	ld e,(hl)		;4823
	rra			;4824
	jp (hl)			;4825
	add a,d			;4826
	nop			;4827
	ld e,b			;4828
	ld e,b			;4829
	ld d,007h		;482a
	ret pe			;482c
	adc a,l			;482d
	rla			;482e
	cp 0c0h			;482f
	jp 0fe36h		;4831
	ld b,00dh		;4834
	inc bc			;4836
	adc a,d			;4837
	call nz,sub_200ch	;4838
	inc l			;483b
	ld h,b			;483c
	ld e,056h		;483d
	ld d,b			;483f
	ld d,007h		;4840
	ret pe			;4842
	dec a			;4843
	nop			;4844
	ld e,b			;4845
	ld (hl),e		;4846
	ret po			;4847
	ret pe			;4848
	or d			;4849
	rst 38h			;484a
	ld e,(hl)		;484b
	rra			;484c
	ld (hl),d		;484d
	jp po,0e8ach		;484e
	ld e,d			;4851
	jr l48c8h		;4852
	cp e			;4854
	ld c,(hl)		;4855
	ld e,056h		;4856
	ex de,hl		;4858
	adc a,c			;4859
	ret pe			;485a
	ld h,e			;485b
	cp 032h			;485c
	ret nz			;485e
	jp l0716h		;485f
	cp a			;4862
	inc b			;4863
	nop			;4864
	inc sp			;4865
	ret			;4866
	ld (hl),08ah		;4867
	ld c,003h		;4869
	nop			;486b
	di			;486c
	and (hl)		;486d
	ld (hl),h		;486e
	inc c			;486f
	ld c,(hl)		;4870
	ret pe			;4871
	call po,l2617h		;4872
	ld a,(0ff45h)		;4875
	ld (hl),h		;4878
	jp p,0c3f9h		;4879
	xor h			;487c
	ret pe			;487d
	dec l			;487e
	jr $+119		;487f
	ret m			;4881
	cp a			;4882
	pop de			;4883
	ld (bc),a		;4884
	cp c			;4885
	add hl,bc		;4886
	nop			;4887
	ret pe			;4888
	call sub_3c17h		;4889
	ld l,074h		;488c
	ld c,0e8h		;488e
	dec de			;4890
	jr l4907h		;4891
	rlca			;4893
	ld a,(bc)		;4894
	ret nz			;4895
l4896h:
	ld (hl),h		;4896
	dec b			;4897
	xor d			;4898
	jp po,0f9edh		;4899
	jp 0c183h		;489c
	ld (bc),a		;489f
	or b			;48a0
	jr nz,l4896h		;48a1
	xor d			;48a3
	ld d,01fh		;48a4
	ret pe			;48a6
	ld a,c			;48a7
	ei			;48a8
	jp 0e81eh		;48a9
	ld (de),a		;48ac
	cp 01fh			;48ad
	ld b,056h		;48af
	ret pe			;48b1
	jp z,08a16h		;48b2
	ret z			;48b5
	add a,b			;48b6
	ret			;48b7
	add a,b			;48b8
	ld e,a			;48b9
	rlca			;48ba
	dec sp			;48bb
	rst 30h			;48bc
	ld (hl),l		;48bd
	inc bc			;48be
	jp (hl)			;48bf
	adc a,d			;48c0
	nop			;48c1
	ld e,056h		;48c2
	adc a,d			;48c4
	inc b			;48c5
	ld d,01fh		;48c6
l48c8h:
	add a,b			;48c8
	ld a,0e6h		;48c9
	nop			;48cb
	nop			;48cc
	ld (hl),h		;48cd
	rla			;48ce
	ld b,016h		;48cf
	rlca			;48d1
	ret pe			;48d2
	ld c,l			;48d3
	ei			;48d4
	rlca			;48d5
	ld (hl),d		;48d6
	ld c,00ah		;48d7
	ret nz			;48d9
	ld (hl),l		;48da
	ld (hl),h		;48db
	ld e,(hl)		;48dc
	ld e,(hl)		;48dd
	ld d,007h		;48de
	ret pe			;48e0
	exx			;48e1
	ld d,0feh		;48e2
	ret nz			;48e4
	jp l0657h		;48e5
	ld d,c			;48e8
	ret pe			;48e9
	sbc a,l			;48ea
	call m,sub_0759h	;48eb
	ld e,a			;48ee
	ld (hl),d		;48ef
	ld (hl),b		;48f0
	push bc			;48f1
	ld a,04bh		;48f2
	inc bc			;48f4
	or 047h			;48f5
	dec bc			;48f7
	djnz l496eh		;48f8
	ld d,l			;48fa
	ld (hl),080h		;48fb
	ld a,0d5h		;48fd
	nop			;48ff
	nop			;4900
	ld (hl),h		;4901
	ld de,0d78bh		;4902
	adc a,h			;4905
	ret c			;4906
l4907h:
	ld e,a			;4907
	rra			;4908
	add a,b			;4909
	dec a			;490a
	nop			;490b
	ld (hl),h		;490c
	ld d,b			;490d
	ld e,057h		;490e
	adc a,e			;4910
	jp m,0d88eh		;4911
	adc a,e			;4914
	inc d			;4915
	dec hl			;4916
	rst 18h			;4917
	dec hl			;4918
	rst 30h			;4919
	ld d,e			;491a
	ld d,b			;491b
	ld d,(hl)		;491c
	ld d,c			;491d
	rst 38h			;491e
	ld (hl),l		;491f
	ex af,af'		;4920
	adc a,e			;4921
	jp c,0c2e8h		;4922
	defb 0fdh,05ah,032h ;illegal sequence	;4925
	ret nz			;4928
	ret pe			;4929
	ld de,0590eh		;492a
	ld e,(hl)		;492d
	ld e,b			;492e
	ld e,e			;492f
	adc a,e			;4930
	ld a,04bh		;4931
	inc bc			;4933
	inc bc			;4934
	rst 30h			;4935
	inc bc			;4936
	rst 18h			;4937
	ld e,a			;4938
	rra			;4939
	adc a,d			;493a
	dec b			;493b
	ld a,(bc)		;493c
	ret nz			;493d
	ld (hl),h		;493e
	ld e,047h		;493f
	adc a,e			;4941
	rst 30h			;4942
	ret pe			;4943
	ld h,a			;4944
	rla			;4945
	ld (hl),l		;4946
	inc bc			;4947
	jp (hl)			;4948
	ld h,h			;4949
	rst 38h			;494a
	ld c,(hl)		;494b
	ld (0f9c9h),a		;494c
	jp 01f5fh		;494f
	adc a,d			;4952
	dec b			;4953
	ld a,(bc)		;4954
	ret nz			;4955
	ld (hl),h		;4956
	inc b			;4957
	adc a,e			;4958
	rst 30h			;4959
	ld sp,hl		;495a
	jp 0c0feh		;495b
	ld d,01fh		;495e
	jp 01f5eh		;4960
	adc a,d			;4963
	inc b			;4964
	adc a,e			;4965
	rst 30h			;4966
	ld a,(bc)		;4967
	ret nz			;4968
	ld sp,hl		;4969
	jp l2ec4h		;496a
	ex af,af'		;496d
l496eh:
	inc bc			;496e
	inc sp			;496f
	ret nz			;4970
	and e			;4971
	ld hl,0a201h		;4972
	ld c,a			;4975
	inc bc			;4976
	ld c,b			;4977
	and e			;4978
	ld b,c			;4979
	inc bc			;497a
	and e			;497b
	ld b,e			;497c
	inc bc			;497d
	jp l3650h		;497e
	and b			;4981
	defb 0ddh,002h,0f6h ;illegal sequence	;4982
	ret nc			;4985
	ld (024c5h),hl		;4986
	ld d,058h		;4989
	jp 05706h		;498b
	ld d,(hl)		;498e
	ld d,e			;498f
	cp e			;4990
	ld bc,0e800h		;4991
	push af			;4994
	inc h			;4995
	add a,e			;4996
	rst 0			;4997
	inc bc			;4998
	adc a,d			;4999
	ld e,059h		;499a
	inc bc			;499c
	push bc			;499d
	ld (hl),05ah		;499e
	inc bc			;49a0
	ld h,089h		;49a1
	ld (hl),l		;49a3
	add hl,de		;49a4
	ld h,08ch		;49a5
	ld e,l			;49a7
	dec de			;49a8
	ld h,088h		;49a9
	ld e,l			;49ab
	jr $+24			;49ac
	rra			;49ae
	inc sp			;49af
	in a,(0e8h)		;49b0
	rst 10h			;49b2
	inc h			;49b3
	add a,e			;49b4
	rst 0			;49b5
	inc bc			;49b6
l49b7h:
	adc a,d			;49b7
	ld e,058h		;49b8
	inc bc			;49ba
	push bc			;49bb
	ld (hl),054h		;49bc
	inc bc			;49be
	ld h,089h		;49bf
	ld (hl),l		;49c1
	add hl,de		;49c2
	ld h,08ch		;49c3
	ld e,l			;49c5
	dec de			;49c6
	ld h,088h		;49c7
	ld e,l			;49c9
	jr l49e2h		;49ca
	rra			;49cc
	add a,006h		;49cd
	ld h,001h		;49cf
	nop			;49d1
	add a,006h		;49d2
	daa			;49d4
	ld bc,l5b01h		;49d5
	ld e,(hl)		;49d8
	ld e,a			;49d9
	rlca			;49da
	jp 05706h		;49db
	ld d,(hl)		;49de
	ld d,e			;49df
	add a,006h		;49e0
l49e2h:
	ld h,001h		;49e2
	ld bc,l06c5h+1		;49e4
	daa			;49e7
	ld bc,l3300h		;49e8
	in a,(0e8h)		;49eb
	sbc a,h			;49ed
	inc h			;49ee
	add a,e			;49ef
	rst 0			;49f0
	inc bc			;49f1
	ld h,08ah		;49f2
	ld e,l			;49f4
	jr $-118		;49f5
	ld e,058h		;49f7
	inc bc			;49f9
	ld h,0c5h		;49fa
	ld (hl),l		;49fc
	add hl,de		;49fd
	ld (hl),089h		;49fe
	ld (hl),054h		;4a00
	inc bc			;4a02
	ld (hl),08ch		;4a03
	ld e,056h		;4a05
	inc bc			;4a07
	ld (hl),0c5h		;4a08
	ld (hl),01dh		;4a0a
	inc bc			;4a0c
	adc a,d			;4a0d
l4a0eh:
	ld e,h			;4a0e
	jr $-57			;4a0f
	ld (hl),h		;4a11
	add hl,de		;4a12
	ld h,088h		;4a13
	ld e,l			;4a15
	jr $+40			;4a16
	adc a,c			;4a18
	ld (hl),l		;4a19
	add hl,de		;4a1a
	ld h,08ch		;4a1b
	ld e,l			;4a1d
	dec de			;4a1e
	ld d,01fh		;4a1f
	cp e			;4a21
	ld bc,0e800h		;4a22
	ld h,h			;4a25
	inc h			;4a26
	add a,e			;4a27
	rst 0			;4a28
	inc bc			;4a29
	ld h,08ah		;4a2a
	ld e,l			;4a2c
	jr l49b7h		;4a2d
	ld e,059h		;4a2f
	inc bc			;4a31
	ld h,0c5h		;4a32
	ld (hl),l		;4a34
	add hl,de		;4a35
	ld (hl),089h		;4a36
	ld (hl),05ah		;4a38
	inc bc			;4a3a
	ld (hl),08ch		;4a3b
	ld e,05ch		;4a3d
	inc bc			;4a3f
	ld (hl),0c5h		;4a40
	ld (hl),01dh		;4a42
	inc bc			;4a44
	adc a,d			;4a45
	ld e,h			;4a46
	jr l4a0eh		;4a47
	ld (hl),h		;4a49
	add hl,de		;4a4a
	ld h,088h		;4a4b
	ld e,l			;4a4d
	jr $+40			;4a4e
	adc a,c			;4a50
	ld (hl),l		;4a51
	add hl,de		;4a52
	ld h,08ch		;4a53
	ld e,l			;4a55
	dec de			;4a56
	ld d,01fh		;4a57
	jp (hl)			;4a59
	ld a,e			;4a5a
	rst 38h			;4a5b
	ret pe			;4a5c
	ld a,(de)		;4a5d
	inc bc			;4a5e
	ld a,(bc)		;4a5f
	in a,(078h)		;4a60
	inc b			;4a62
	ret pe			;4a63
	cpl			;4a64
	inc b			;4a65
	jp l3ec4h		;4a66
	rst 18h			;4a69
	nop			;4a6a
	or 0c3h			;4a6b
	ld b,b			;4a6d
	ld (hl),h		;4a6e
	rlca			;4a6f
	or 0c3h			;4a70
	inc b			;4a72
	ld (hl),h		;4a73
	add hl,sp		;4a74
	ld (0e9c0h),a		;4a75
	xor d			;4a78
	nop			;4a79
	ld b,01fh		;4a7a
	adc a,e			;4a7c
	rst 18h			;4a7d
	inc sp			;4a7e
	jp nc,0c033h		;4a7f
	ret pe			;4a82
	dec b			;4a83
	jp m,0c536h		;4a84
	ld (hl),01dh		;4a87
	inc bc			;4a89
	ret pe			;4a8a
	ld (hl),h		;4a8b
	ld sp,hl		;4a8c
	adc a,e			;4a8d
	rst 10h			;4a8e
	or h			;4a8f
	add a,(hl)		;4a90
	ld (hl),08bh		;4a91
	ld a,030h		;4a93
	ld bc,0c7f7h		;4a95
	nop			;4a98
	add a,b			;4a99
	ld (hl),h		;4a9a
	add hl,bc		;4a9b
	ret pe			;4a9c
	jp c,08b12h		;4a9d
	jp m,l013ch		;4aa0
	ld (hl),h		;4aa3
	rst 10h			;4aa4
	adc a,e			;4aa5
	jp m,l0336h		;4aa6
	ld a,03fh		;4aa9
	ld bc,076ebh		;4aab
	or 0c3h			;4aae
	jr nz,l4b27h		;4ab0
	rst 0			;4ab2
	or 0c3h			;4ab3
	ld bc,l0374h		;4ab5
	jp (hl)			;4ab8
	sbc a,a			;4ab9
	nop			;4aba
	adc a,h			;4abb
	ret nz			;4abc
	adc a,(hl)		;4abd
	ret c			;4abe
	adc a,e			;4abf
	rst 18h			;4ac0
	inc sp			;4ac1
	jp nc,0c28bh		;4ac2
	ld d,c			;4ac5
	cp c			;4ac6
	ld bc,0e800h		;4ac7
	cp (hl)			;4aca
	ld sp,hl		;4acb
	ld e,c			;4acc
	ld (hl),0c5h		;4acd
	ld (hl),01dh		;4acf
	inc bc			;4ad1
	push bc			;4ad2
	ld (hl),h		;4ad3
	add hl,de		;4ad4
	ret pe			;4ad5
	rra			;4ad6
	ld de,l29e8h		;4ad7
	ld sp,hl		;4ada
	ld d,a			;4adb
	or h			;4adc
	add a,(hl)		;4add
	ld (hl),08bh		;4ade
	ld a,030h		;4ae0
	ld bc,0c7f7h		;4ae2
	nop			;4ae5
	add a,b			;4ae6
	ld (hl),h		;4ae7
l4ae8h:
	inc de			;4ae8
	ret pe			;4ae9
	adc a,l			;4aea
	ld (de),a		;4aeb
	ld e,a			;4aec
	ld (hl),0c7h		;4aed
	ld b,03fh		;4aef
	ld bc,00001h		;4af1
	inc a			;4af4
	ld bc,0dd74h		;4af5
	ld (0ebc0h),a		;4af8
	ld (de),a		;4afb
	ld e,a			;4afc
	ld (hl),083h		;4afd
	ld a,03fh		;4aff
	ld bc,07501h		;4b01
	rra			;4b04
	ld e,036h		;4b05
	adc a,(hl)		;4b07
	ld e,03dh		;4b08
	ld bc,0058ah		;4b0a
	rra			;4b0d
	ld (hl),0ffh		;4b0e
	ld b,03bh		;4b10
	ld bc,0c736h		;4b12
l4b15h:
	ld b,030h		;4b15
	ld bc,00000h		;4b17
	ld b,a			;4b1a
	inc a			;4b1b
	ld a,(de)		;4b1c
	ld (hl),h		;4b1d
	inc b			;4b1e
	inc a			;4b1f
	dec c			;4b20
	ret po			;4b21
	or d			;4b22
	ld c,a			;4b23
	ex de,hl		;4b24
	rra			;4b25
	xor h			;4b26
l4b27h:
	xor d			;4b27
	inc a			;4b28
	dec c			;4b29
	ld (hl),l		;4b2a
	inc bc			;4b2b
	add a,004h		;4b2c
	ld a,(bc)		;4b2e
	inc a			;4b2f
	ld a,(bc)		;4b30
	ret po			;4b31
	di			;4b32
	ld (hl),l		;4b33
	rlca			;4b34
	inc sp			;4b35
	or 0e8h			;4b36
	ld a,a			;4b38
	ld a,(de)		;4b39
	inc c			;4b3a
	ld bc,l1f15h+1		;4b3b
sub_4b3eh:
	ret pe			;4b3e
	ld c,e			;4b3f
	cp 089h			;4b40
	ld (hl),0dch		;4b42
	nop			;4b44
	ld d,01fh		;4b45
	adc a,c			;4b47
	ld a,021h		;4b48
	inc bc			;4b4a
	ld (hl),l		;4b4b
	add hl,bc		;4b4c
	call nz,01d3eh		;4b4d
	inc bc			;4b50
	ld h,080h		;4b51
	ld h,l			;4b53
	jr l4b15h		;4b54
	ret pe			;4b56
	ld a,(0c304h)		;4b57
	ret pe			;4b5a
	ld a,a			;4b5b
	cp 08bh			;4b5c
	ld (hl),0dch		;4b5e
	nop			;4b60
	dec bc			;4b61
	or 075h			;4b62
	pop bc			;4b64
	add a,b			;4b65
	ld a,042h		;4b66
	ld (bc),a		;4b68
	add a,b			;4b69
	ld (hl),h		;4b6a
	ld b,0c7h		;4b6b
	ld b,042h		;4b6d
	ld (bc),a		;4b6f
	add a,b			;4b70
	rst 38h			;4b71
	ld d,c			;4b72
	ld b,057h		;4b73
	cp d			;4b75
	ld b,d			;4b76
	ld (bc),a		;4b77
	ret pe			;4b78
	ld hl,l5f1bh		;4b79
	rlca			;4b7c
	ld e,c			;4b7d
	cp (hl)			;4b7e
	ld b,h			;4b7f
	ld (bc),a		;4b80
	add a,b			;4b81
	inc a			;4b82
	ld a,(de)		;4b83
	ld (hl),l		;4b84
	and b			;4b85
	or b			;4b86
	ld a,(de)		;4b87
	xor d			;4b88
	ld c,a			;4b89
	or b			;4b8a
	ld a,(bc)		;4b8b
	ret pe			;4b8c
	ld hl,(l331ah)		;4b8d
	or 0ebh			;4b90
	xor c			;4b92
	ret pe			;4b93
	ex (sp),hl		;4b94
	ld bc,0db0ah		;4b95
	ld a,b			;4b98
	ld h,l			;4b99
	ret pe			;4b9a
	rst 30h			;4b9b
	inc e			;4b9c
	ld h,089h		;4b9d
	ld b,l			;4b9f
	inc d			;4ba0
	ld h,089h		;4ba1
	ld d,l			;4ba3
	ld d,0e8h		;4ba4
	ld e,b			;4ba6
	inc b			;4ba7
	jp l161eh		;4ba8
	rra			;4bab
	ret pe			;4bac
	dec l			;4bad
	cp 01fh			;4bae
	adc a,e			;4bb0
	di			;4bb1
	ld d,c			;4bb2
	xor h			;4bb3
	inc a			;4bb4
	ld a,(de)		;4bb5
	ld (hl),h		;4bb6
	dec b			;4bb7
	ret pe			;4bb8
	cp 019h			;4bb9
	jp po,058f6h		;4bbb
	dec hl			;4bbe
	pop bc			;4bbf
	rra			;4bc0
	ret pe			;4bc1
	ret z			;4bc2
	defb 0fdh,0ebh,029h ;illegal sequence	;4bc3
	inc sp			;4bc6
	ret nz			;4bc7
	ret pe			;4bc8
	jp p,l36f8h		;4bc9
	push bc			;4bcc
	ld (hl),01dh		;4bcd
	inc bc			;4bcf
	ret pe			;4bd0
	ld l,0f8h		;4bd1
	adc a,e			;4bd3
	rst 10h			;4bd4
	or h			;4bd5
	add a,a			;4bd6
	ld (hl),08bh		;4bd7
	ld a,030h		;4bd9
	ld bc,0c7f7h		;4bdb
	nop			;4bde
	add a,b			;4bdf
	ld (hl),h		;4be0
	add hl,bc		;4be1
	ret pe			;4be2
	sub h			;4be3
	ld de,0da8bh		;4be4
	inc a			;4be7
	ld bc,0db74h		;4be8
	rra			;4beb
	and c			;4bec
	ccf			;4bed
	ld bc,l3ec4h		;4bee
	dec e			;4bf1
	inc bc			;4bf2
	inc sp			;4bf3
	jp nc,0f726h		;4bf4
	ld (hl),l		;4bf7
	ld c,08bh		;4bf8
	ret z			;4bfa
	ret pe			;4bfb
	pop af			;4bfc
	inc bc			;4bfd
	jp 0cb80h		;4bfe
	ld b,b			;4c01
	inc sp			;4c02
	ret nz			;4c03
	ex (sp),hl		;4c04
	jp (hl)			;4c05
	ld e,08ah		;4c06
	jp l1ec5h		;4c08
	rst 18h			;4c0b
	nop			;4c0c
	adc a,e			;4c0d
	ei			;4c0e
	inc sp			;4c0f
	jp nc,020a8h		;4c10
	ld (hl),l		;4c13
	or c			;4c14
	xor b			;4c15
	ld (bc),a		;4c16
	ld (hl),l		;4c17
	sub b			;4c18
	xor b			;4c19
	inc b			;4c1a
	ld (hl),l		;4c1b
	ld h,a			;4c1c
	adc a,e			;4c1d
	jp nz,l3f80h		;4c1e
	ld a,(de)		;4c21
	ld (hl),h		;4c22
	ld e,d			;4c23
	ld d,c			;4c24
	cp c			;4c25
	ld bc,0e800h		;4c26
	sub d			;4c29
	ret m			;4c2a
	ld e,c			;4c2b
	ld (hl),0c5h		;4c2c
	ld (hl),01dh		;4c2e
	inc bc			;4c30
	push bc			;4c31
	ld (hl),h		;4c32
	add hl,de		;4c33
	ret pe			;4c34
	ret nz			;4c35
	rrca			;4c36
	ret pe			;4c37
	jp z,l57f7h		;4c38
	or h			;4c3b
	add a,a			;4c3c
	ld (hl),08bh		;4c3d
	ld a,030h		;4c3f
	ld bc,0c7f7h		;4c41
	nop			;4c44
	add a,b			;4c45
	ld (hl),h		;4c46
	ld de,l2ee8h		;4c47
	ld de,l365fh		;4c4a
	rst 0			;4c4d
	ld b,03fh		;4c4e
	ld bc,00001h		;4c50
	inc a			;4c53
	ld bc,0dd74h		;4c54
	ex de,hl		;4c57
	add hl,bc		;4c58
	ld e,a			;4c59
	ld (hl),083h		;4c5a
	ld a,03fh		;4c5c
	ld bc,07400h		;4c5e
	inc e			;4c61
	ld b,d			;4c62
	ld (hl),0ffh		;4c63
	ld b,03bh		;4c65
	ld bc,01e47h		;4c67
	ld (hl),08eh		;4c6a
	ld e,03dh		;4c6c
	ld bc,l3d80h		;4c6e
	ld a,(de)		;4c71
	rra			;4c72
	ld (hl),h		;4c73
	add hl,bc		;4c74
	ld (hl),0c7h		;4c75
	ld b,030h		;4c77
	ld bc,00000h		;4c79
	jp po,08bb6h		;4c7c
	jp nz,0e91fh		;4c7f
	ld l,e			;4c82
	rst 38h			;4c83
	adc a,e			;4c84
	pop de			;4c85
	ex de,hl		;4c86
	or 016h			;4c87
	rra			;4c89
	ld b,057h		;4c8a
	ret pe			;4c8c
	call m,07221h		;4c8d
	rlca			;4c90
	adc a,e			;4c91
	rst 30h			;4c92
	add a,e			;4c93
	add a,003h		;4c94
	ld b,01fh		;4c96
	ld e,a			;4c98
	rlca			;4c99
	jp l3836h		;4c9a
	ld b,000h		;4c9d
	ld bc,0f872h		;4c9f
	cp 0c8h			;4ca2
	ld a,c			;4ca4
	inc b			;4ca5
	ld (hl),0a0h		;4ca6
	jr nz,$+3		;4ca8
	ld (hl),0a2h		;4caa
	rlca			;4cac
	inc bc			;4cad
	jp l0e8ah		;4cae
	inc c			;4cb1
	inc bc			;4cb2
	or 0f1h			;4cb3
	adc a,b			;4cb5
	ld h,003h		;4cb6
	inc bc			;4cb8
l4cb9h:
	adc a,d			;4cb9
	ret z			;4cba
	ld (08bedh),a		;4cbb
	ld d,02dh		;4cbe
	inc bc			;4cc0
	ld (bc),a		;4cc1
	call nc,0d680h		;4cc2
	nop			;4cc5
	adc a,e			;4cc6
	ld e,02bh		;4cc7
	inc bc			;4cc9
	adc a,c			;4cca
	ld e,045h		;4ccb
	inc bc			;4ccd
	ex (sp),hl		;4cce
	jr l4cb9h		;4ccf
	ld (de),a		;4cd1
	dec b			;4cd2
	add a,a			;4cd3
	rst 18h			;4cd4
	add a,c			;4cd5
	ei			;4cd6
	ret m			;4cd7
	rrca			;4cd8
	ld (hl),e		;4cd9
	ld (bc),a		;4cda
	jp po,089f3h		;4cdb
	ld e,045h		;4cde
	inc bc			;4ce0
	adc a,e			;4ce1
	rst 10h			;4ce2
	adc a,d			;4ce3
	call c,08fe8h		;4ce4
	ex af,af'		;4ce7
	ld (0b4c0h),a		;4ce8
	rrca			;4ceb
	ret pe			;4cec
	ld c,(hl)		;4ced
	ld a,(bc)		;4cee
	jp 0f98bh		;4cef
	ld h,08ah		;4cf2
	ld c,(hl)		;4cf4
	ex af,af'		;4cf5
	ld h,08ah		;4cf6
	ld b,(hl)		;4cf8
	rrca			;4cf9
	ld (08ae4h),a		;4cfa
	call pe,sub_5152h	;4cfd
	ld d,b			;4d00
	adc a,e			;4d01
	rst 8			;4d02
	ret pe			;4d03
	jr nz,l4d06h		;4d04
l4d06h:
	ld e,b			;4d06
	ld e,c			;4d07
	ld (hl),h		;4d08
	ld a,(de)		;4d09
	inc bc			;4d0a
	ret nc			;4d0b
	jp po,l5af1h		;4d0c
	adc a,e			;4d0f
	rst 8			;4d10
l4d11h:
	ret pe			;4d11
	ld (de),a		;4d12
	nop			;4d13
	ld (hl),h		;4d14
	sbc a,b			;4d15
	ld (hl),0c6h		;4d16
	ld b,006h		;4d18
	inc bc			;4d1a
	nop			;4d1b
	ret pe			;4d1c
	ld (hl),b		;4d1d
	djnz $+62		;4d1e
	ld bc,0ee74h		;4d20
	jp 0c35ah		;4d23
	ld d,c			;4d26
	ld h,08ah		;4d27
	ld h,(hl)		;4d29
	ld d,026h		;4d2a
	adc a,d			;4d2c
	ld b,(hl)		;4d2d
	ld bc,00653h		;4d2e
	ret pe			;4d31
	ld d,(hl)		;4d32
	rst 30h			;4d33
	ex de,hl		;4d34
	ld (0e890h),hl		;4d35
	djnz l4d3ah		;4d38
l4d3ah:
	ld (hl),h		;4d3a
	jp (hl)			;4d3b
	ld (hl),0c6h		;4d3c
	ld b,006h		;4d3e
	inc bc			;4d40
	ld bc,l4ae8h		;4d41
	djnz l4d82h		;4d44
	ld bc,0ee74h		;4d46
	jp 02651h		;4d49
	adc a,d			;4d4c
	ld h,(hl)		;4d4d
	ld d,026h		;4d4e
	adc a,d			;4d50
	ld b,(hl)		;4d51
	ld bc,00653h		;4d52
	ret pe			;4d55
	ld h,l			;4d56
	rst 30h			;4d57
	adc a,h			;4d58
	exx			;4d59
	rra			;4d5a
	ld e,03eh		;4d5b
	push bc			;4d5d
	halt			;4d5e
	ld (de),a		;4d5f
	ret pe			;4d60
	and c			;4d61
	or 08eh			;4d62
	exx			;4d64
	rlca			;4d65
	ld e,e			;4d66
	ld (hl),08bh		;4d67
	ld c,03fh		;4d69
	ld bc,l2b5fh		;4d6b
	rst 8			;4d6e
	rst 30h			;4d6f
	exx			;4d70
	ld (hl),0a1h		;4d71
	jr nc,l4d76h		;4d73
	xor c			;4d75
l4d76h:
	nop			;4d76
	add a,b			;4d77
	jp 08a50h		;4d78
	dec b			;4d7b
	cp 0c8h			;4d7c
	ld (hl),0a2h		;4d7e
	rlca			;4d80
	inc bc			;4d81
l4d82h:
	adc a,d			;4d82
	ld b,l			;4d83
	jr l4d11h		;4d84
	ld (hl),l		;4d86
	ld c,00bh		;4d87
	or 075h			;4d89
	ld b,0beh		;4d8b
	add a,b			;4d8d
	nop			;4d8e
	adc a,c			;4d8f
	ld (hl),l		;4d90
	ld c,036h		;4d91
	adc a,h			;4d93
	ld e,01fh		;4d94
	inc bc			;4d96
	ld d,01fh		;4d97
	adc a,c			;4d99
	ld a,01dh		;4d9a
	inc bc			;4d9c
	ld a,(bc)		;4d9d
	ret nz			;4d9e
	ld a,c			;4d9f
	ld (bc),a		;4da0
	ld (0e8c0h),a		;4da1
	jp nz,058f6h		;4da4
	ld (hl),e		;4da7
	add hl,bc		;4da8
	inc sp			;4da9
	ret			;4daa
	add a,006h		;4dab
	inc b			;4dad
	inc bc			;4dae
	inc b			;4daf
	ld e,e			;4db0
	jp 0fe83h		;4db1
	ld b,b			;4db4
	ld (hl),d		;4db5
	ld (bc),a		;4db6
	ld (089f6h),a		;4db7
	ld c,027h		;4dba
	inc bc			;4dbc
	and e			;4dbd
	inc hl			;4dbe
	inc bc			;4dbf
	adc a,c			;4dc0
	ld d,025h		;4dc1
	inc bc			;4dc3
	adc a,e			;4dc4
	ld e,0dfh		;4dc5
	nop			;4dc7
	adc a,c			;4dc8
	ld e,021h		;4dc9
	inc bc			;4dcb
	add a,006h		;4dcc
	inc b			;4dce
	inc bc			;4dcf
	nop			;4dd0
	add a,006h		;4dd1
	dec b			;4dd3
	inc bc			;4dd4
	nop			;4dd5
	adc a,e			;4dd6
	jp c,0e6f7h		;4dd7
	and e			;4dda
	scf			;4ddb
	inc bc			;4ddc
	ld d,d			;4ddd
	adc a,e			;4dde
	jp 0e6f7h		;4ddf
	ld e,e			;4de2
	inc bc			;4de3
	jp 0d283h		;4de4
	nop			;4de7
	ld (hl),l		;4de8
	ld e,(hl)		;4de9
	and e			;4dea
sub_4debh:
	add hl,sp		;4deb
	inc bc			;4dec
	adc a,e			;4ded
	ret nc			;4dee
	and c			;4def
	scf			;4df0
	inc bc			;4df1
	ld h,08bh		;4df2
	ld e,(hl)		;4df4
	ld (bc),a		;4df5
	dec sp			;4df6
	out (073h),a		;4df7
	ld c,(hl)		;4df9
	rst 30h			;4dfa
	di			;4dfb
	and e			;4dfc
	ld sp,08903h		;4dfd
	ld d,035h		;4e00
	inc bc			;4e02
	adc a,e			;4e03
l4e04h:
	ret nc			;4e04
	ld h,022h		;4e05
	ld b,(hl)		;4e07
	inc b			;4e08
	and d			;4e09
	inc bc			;4e0a
l4e0bh:
	inc bc			;4e0b
	adc a,e			;4e0c
	pop bc			;4e0d
	ld h,08ah		;4e0e
	ld c,(hl)		;4e10
	dec b			;4e11
	out (0eah),a		;4e12
	adc a,c			;4e14
	ld d,02bh		;4e15
	inc bc			;4e17
	rst 30h			;4e18
	and 08bh		;4e19
	ret z			;4e1b
	inc bc			;4e1c
	ld b,0dfh		;4e1d
	nop			;4e1f
	add a,e			;4e20
	jp nc,07400h		;4e21
	ld a,(de)		;4e24
	and c			;4e25
	rst 18h			;4e26
	nop			;4e27
	rst 30h			;4e28
	ret c			;4e29
	ld (hl),l		;4e2a
	ld bc,l3348h		;4e2b
	jp nc,0f6f7h		;4e2e
	and e			;4e31
sub_4e32h:
	daa			;4e32
	inc bc			;4e33
	rst 30h			;4e34
	and 0c6h		;4e35
	ld b,004h		;4e37
	inc bc			;4e39
	ld (bc),a		;4e3a
	adc a,e			;4e3b
	ret z			;4e3c
	ex (sp),hl		;4e3d
	djnz l4e04h		;4e3e
	ld a,01dh		;4e40
	inc bc			;4e42
	ld h,08ah		;4e43
	ld e,l			;4e45
	jr l4e0bh		;4e46
	add a,006h		;4e48
	inc b			;4e4a
	inc bc			;4e4b
	ld bc,0c933h		;4e4c
	call nz,01d3eh		;4e4f
	inc bc			;4e52
	ld e,e			;4e53
	jp l35a1h		;4e54
	inc bc			;4e57
	adc a,e			;4e58
	exx			;4e59
	dec bc			;4e5a
	ret nz			;4e5b
	ld (hl),h		;4e5c
	ld c,026h		;4e5d
	dec hl			;4e5f
	ld b,(hl)		;4e60
	ld (bc),a		;4e61
	rst 30h			;4e62
	ret c			;4e63
	dec hl			;4e64
	ret c			;4e65
	ld (hl),e		;4e66
	inc b			;4e67
	inc bc			;4e68
	jp 0db33h		;4e69
	and e			;4e6c
	dec sp			;4e6d
	inc bc			;4e6e
	adc a,e			;4e6f
	jp 0d233h		;4e70
	ld h,0f7h		;4e73
	halt			;4e75
	ld (bc),a		;4e76
	and e			;4e77
	ccf			;4e78
	inc bc			;4e79
	adc a,c			;4e7a
	ld d,03dh		;4e7b
	inc bc			;4e7d
	dec bc			;4e7e
	ld d,03bh		;4e7f
	inc bc			;4e81
	ld (hl),l		;4e82
	ret nc			;4e83
	dec a			;4e84
	ld bc,07500h		;4e85
	sla (hl)		;4e88
	adc a,e			;4e8a
	ld b,(hl)		;4e8b
	ld (bc),a		;4e8c
	and e			;4e8d
	dec a			;4e8e
	inc bc			;4e8f
	adc a,c			;4e90
	ld d,03fh		;4e91
	inc bc			;4e93
	jp 08b26h		;4e94
	ld b,l			;4e97
	djnz l4ec0h		;4e98
	adc a,e			;4e9a
	ld e,l			;4e9b
	ld (de),a		;4e9c
	dec hl			;4e9d
	ld b,037h		;4e9e
	inc bc			;4ea0
	dec de			;4ea1
	ld e,039h		;4ea2
	inc bc			;4ea4
	ld (hl),d		;4ea5
	ld e,075h		;4ea6
	ld a,(bc)		;4ea8
	dec bc			;4ea9
	ret nz			;4eaa
	ld (hl),h		;4eab
	jr l4ee9h		;4eac
	pop bc			;4eae
	ld (hl),e		;4eaf
	ld (bc),a		;4eb0
	adc a,e			;4eb1
	ret z			;4eb2
	call nz,l082eh		;4eb3
	inc bc			;4eb6
	ret pe			;4eb7
	sbc a,e			;4eb8
	rst 38h			;4eb9
	adc a,e			;4eba
	ld c,02bh		;4ebb
	inc bc			;4ebd
	ret pe			;4ebe
	ld d,h			;4ebf
l4ec0h:
	dec b			;4ec0
	dec bc			;4ec1
	ret			;4ec2
	ld (hl),h		;4ec3
	add hl,bc		;4ec4
	jp (hl)			;4ec5
	or c			;4ec6
	ld bc,0b0e9h		;4ec7
	nop			;4eca
	jp (hl)			;4ecb
	push bc			;4ecc
	nop			;4ecd
	adc a,c			;4ece
	ld d,029h		;4ecf
	inc bc			;4ed1
	adc a,c			;4ed2
	ld e,02bh		;4ed3
	inc bc			;4ed5
	add a,e			;4ed6
	ld a,03bh		;4ed7
	inc bc			;4ed9
	nop			;4eda
	ld (hl),h		;4edb
	inc bc			;4edc
	ret pe			;4edd
	sbc a,e			;4ede
	dec b			;4edf
	add a,e			;4ee0
	ld a,03fh		;4ee1
	inc bc			;4ee3
	nop			;4ee4
	ld (hl),h		;4ee5
	pop hl			;4ee6
	ret pe			;4ee7
	dec b			;4ee8
l4ee9h:
	ld b,072h		;4ee9
	rst 18h			;4eeb
	add a,006h		;4eec
	dec b			;4eee
	inc bc			;4eef
	ld bc,l168ah		;4ef0
	inc bc			;4ef3
	inc bc			;4ef4
	adc a,e			;4ef5
	ld c,03fh		;4ef6
	inc bc			;4ef8
	adc a,e			;4ef9
	ld e,02bh		;4efa
	inc bc			;4efc
	ret pe			;4efd
	rra			;4efe
	ld b,057h		;4eff
	ld d,b			;4f01
	ld d,e			;4f02
	adc a,(hl)		;4f03
	ld e,0e1h		;4f04
	nop			;4f06
	ld d,d			;4f07
	ld d,c			;4f08
	ret pe			;4f09
	dec b			;4f0a
	cp 05bh			;4f0b
	ld e,d			;4f0d
	inc bc			;4f0e
	jp c,08a26h		;4f0f
	ld b,(hl)		;4f12
	nop			;4f13
	ret pe			;4f14
	ld d,b			;4f15
	rlca			;4f16
	add a,045h		;4f17
	rlca			;4f19
	ld bc,l453ah		;4f1a
	inc b			;4f1d
	ld (hl),l		;4f1e
	ld b,c			;4f1f
	add hl,sp		;4f20
	ld d,l			;4f21
	ex af,af'		;4f22
	ld (hl),d		;4f23
	inc a			;4f24
	add hl,sp		;4f25
l4f26h:
	ld e,l			;4f26
	ex af,af'		;4f27
	ld (hl),e		;4f28
	scf			;4f29
l4f2ah:
	add a,b			;4f2a
	ld a,l			;4f2b
	dec b			;4f2c
	nop			;4f2d
	ld (hl),h		;4f2e
	ld l,058h		;4f2f
	ld d,b			;4f31
	ld d,a			;4f32
	ld d,d			;4f33
	dec hl			;4f34
	ld d,l			;4f35
	ex af,af'		;4f36
	rst 30h			;4f37
	jp c,0f78bh		;4f38
	adc a,e			;4f3b
	ret m			;4f3c
	adc a,e			;4f3d
	jp nz,08b26h		;4f3e
	ld c,(hl)		;4f41
	ld (bc),a		;4f42
	rst 30h			;4f43
	pop hl			;4f44
	inc bc			;4f45
	ret m			;4f46
	add a,e			;4f47
	add a,010h		;4f48
	pop de			;4f4a
	jp (hl)			;4f4b
	ld b,036h		;4f4c
	adc a,(hl)		;4f4e
	ld b,0e1h		;4f4f
	nop			;4f51
	di			;4f52
	and l			;4f53
	ld (hl),e		;4f54
	ld bc,l07a4h		;4f55
	ld e,d			;4f58
	ld e,a			;4f59
	ld h,08ah		;4f5a
	ld b,(hl)		;4f5c
	nop			;4f5d
	ret pe			;4f5e
	cpl			;4f5f
	rlca			;4f60
	ret pe			;4f61
	inc e			;4f62
	rlca			;4f63
	ld (hl),l		;4f64
	or c			;4f65
	ld d,01fh		;4f66
	ld e,c			;4f68
	ld e,c			;4f69
	ld e,e			;4f6a
	ex (sp),hl		;4f6b
	ld c,081h		;4f6c
	ei			;4f6e
	ret m			;4f6f
	rrca			;4f70
	ld (hl),e		;4f71
	jr nz,l4f26h		;4f72
	nop			;4f74
	rst 38h			;4f75
	ld b,029h		;4f76
	inc bc			;4f78
	ex de,hl		;4f79
	add a,d			;4f7a
	and c			;4f7b
	dec a			;4f7c
	inc bc			;4f7d
	dec bc			;4f7e
	ret nz			;4f7f
	ld (hl),h		;4f80
	ld de,l3ba3h		;4f81
	inc bc			;4f84
	ret pe			;4f85
	ld h,a			;4f86
	dec b			;4f87
	ld (hl),d		;4f88
	add hl,bc		;4f89
	rst 0			;4f8a
	ld b,035h		;4f8b
	inc bc			;4f8d
	nop			;4f8e
	nop			;4f8f
	ret pe			;4f90
	ret pe			;4f91
	inc b			;4f92
	call nz,l1d35h+1	;4f93
	inc bc			;4f96
	and c			;4f97
	ld hl,08b03h		;4f98
	ret m			;4f9b
	dec hl			;4f9c
	ld b,0dfh		;4f9d
	nop			;4f9f
	inc sp			;4fa0
	jp nc,08b26h		;4fa1
	ld c,h			;4fa4
	ld c,0f7h		;4fa5
	pop af			;4fa7
	dec sp			;4fa8
	ld b,027h		;4fa9
	inc bc			;4fab
	ld (hl),h		;4fac
	ld (l06c5h+1),hl	;4fad
	inc b			;4fb0
	inc bc			;4fb1
	ld bc,0d20bh		;4fb2
	ld (hl),h		;4fb5
	add hl,de		;4fb6
	add a,006h		;4fb7
	inc b			;4fb9
	inc bc			;4fba
	inc bc			;4fbb
	dec hl			;4fbc
	jp z,08e06h		;4fbd
	ld b,0e1h		;4fc0
	nop			;4fc2
	sub e			;4fc3
	inc sp			;4fc4
	ret nz			;4fc5
	pop de			;4fc6
	jp (hl)			;4fc7
	ld (hl),e		;4fc8
	ld bc,0f3aah		;4fc9
l4fcch:
	xor e			;4fcc
	sub e			;4fcd
	rlca			;4fce
	ld b,b			;4fcf
	adc a,e			;4fd0
	ret z			;4fd1
	adc a,e			;4fd2
	cp 026h			;4fd3
	or 045h			;4fd5
	jr $+1			;4fd7
	ld a,b			;4fd9
	inc d			;4fda
	and c			;4fdb
	dec hl			;4fdc
	inc bc			;4fdd
	ld h,081h		;4fde
	ld h,l			;4fe0
	dec e			;4fe1
	nop			;4fe2
	ret p			;4fe3
	ld h,009h		;4fe4
l4fe6h:
	ld b,l			;4fe6
	dec e			;4fe7
	and c			;4fe8
	add hl,hl		;4fe9
	inc bc			;4fea
	ld h,089h		;4feb
	ld b,l			;4fed
	dec de			;4fee
	and c			;4fef
	inc hl			;4ff0
	inc bc			;4ff1
	adc a,e			;4ff2
	ld d,025h		;4ff3
	inc bc			;4ff5
	ex (sp),hl		;4ff6
	rlca			;4ff7
	ld c,c			;4ff8
	inc bc			;4ff9
	pop bc			;4ffa
	add a,e			;4ffb
	jp nc,l4100h		;4ffc
	jp 0e380h		;4fff
	ccf			;5002
	ld h,088h		;5003
	ld e,l			;5005
	jr l4fcch		;5006
	ld l,008h		;5008
	inc bc			;500a
	ret pe			;500b
	ld b,a			;500c
	cp 0a1h			;500d
	scf			;500f
	inc bc			;5010
	adc a,e			;5011
	ld d,039h		;5012
	inc bc			;5014
	ex (sp),hl		;5015
	ld a,b			;5016
	inc bc			;5017
	pop bc			;5018
	add a,e			;5019
	jp nc,02600h		;501a
	rst 30h			;501d
l501eh:
	halt			;501e
	ld (bc),a		;501f
	adc a,e			;5020
	ret c			;5021
	dec bc			;5022
	jp nc,l0175h		;5023
	ld c,b			;5026
	ld h,08ah		;5027
	ld c,(hl)		;5029
	dec b			;502a
	out (0e8h),a		;502b
	ld d,b			;502d
	ld d,d			;502e
	ld b,0c4h		;502f
	ld a,01dh		;5031
	inc bc			;5033
	ld h,08bh		;5034
	ld b,l			;5036
	djnz l505fh		;5037
	adc a,e			;5039
	ld d,l			;503a
	ld (de),a		;503b
	rlca			;503c
	ld h,0f7h		;503d
	halt			;503f
	ld (bc),a		;5040
	adc a,e			;5041
	ret z			;5042
	dec bc			;5043
	jp nc,00174h		;5044
	ld b,b			;5047
	and e			;5048
	inc sp			;5049
	inc bc			;504a
	inc sp			;504b
	ret nz			;504c
	and e			;504d
	ld b,a			;504e
	inc bc			;504f
	and e			;5050
sub_5051h:
	ld c,c			;5051
	inc bc			;5052
	ld e,b			;5053
	dec hl			;5054
	exx			;5055
	ld (hl),d		;5056
	ld b,a			;5057
	ld (hl),h		;5058
	jr c,l4fe6h		;5059
	jp z,l2693h		;505b
	rst 30h			;505e
l505fh:
	ld h,(hl)		;505f
	ld (bc),a		;5060
	dec hl			;5061
	pop bc			;5062
	add a,e			;5063
	jp c,sub_0300h		;5064
	jp 0d283h		;5067
	nop			;506a
	ex de,hl		;506b
	dec hl			;506c
	adc a,e			;506d
	ret z			;506e
	ret pe			;506f
	rst 0			;5070
	inc bc			;5071
	ex (sp),hl		;5072
	jr $-22			;5073
	ld sp,l7305h		;5075
	inc de			;5078
	inc sp			;5079
	ret			;507a
	add a,006h		;507b
	inc b			;507d
	inc bc			;507e
	ld bc,sub_23a1h		;507f
	inc bc			;5082
	adc a,e			;5083
	ld d,025h		;5084
	inc bc			;5086
	call nz,01d3eh		;5087
	inc bc			;508a
	jp l45ebh		;508b
	sub b			;508e
	jp (hl)			;508f
	di			;5090
	nop			;5091
	dec hl			;5092
	jp nz,l0976h		;5093
	inc sp			;5096
	jp nc,l47a3h		;5097
	inc bc			;509a
	adc a,c			;509b
	ld d,049h		;509c
	inc bc			;509e
	ld e,b			;509f
	adc a,e			;50a0
	ld c,02bh		;50a1
	inc bc			;50a3
	ret pe			;50a4
	ld l,(hl)		;50a5
	inc bc			;50a6
	adc a,c			;50a7
	ld e,02bh		;50a8
	inc bc			;50aa
l50abh:
	adc a,c			;50ab
	ld d,029h		;50ac
	inc bc			;50ae
	dec hl			;50af
	jp nz,02074h		;50b0
	ex (sp),hl		;50b3
	cp b			;50b4
	ld d,c			;50b5
	adc a,e			;50b6
	ret z			;50b7
	ret pe			;50b8
	defb 0edh ;next byte illegal after ed	;50b9
	inc b			;50ba
	ld e,b			;50bb
	ld (hl),d		;50bc
	cp e			;50bd
	adc a,e			;50be
	ret z			;50bf
	adc a,e			;50c0
	ld d,029h		;50c1
	inc bc			;50c3
	ld b,d			;50c4
	ld c,c			;50c5
	ld (hl),h		;50c6
	inc bc			;50c7
	ret pe			;50c8
	ld l,(hl)		;50c9
	inc bc			;50ca
	adc a,c			;50cb
	ld e,02bh		;50cc
	inc bc			;50ce
	adc a,c			;50cf
	ld d,029h		;50d0
	inc bc			;50d2
	add a,e			;50d3
	ld a,03bh		;50d4
	inc bc			;50d6
	nop			;50d7
	ld (hl),h		;50d8
	rlca			;50d9
	adc a,e			;50da
	ld e,02bh		;50db
	inc bc			;50dd
	ret pe			;50de
	call z,0a103h		;50df
	ccf			;50e2
	inc bc			;50e3
	dec bc			;50e4
	ret nz			;50e5
	ld (hl),h		;50e6
	ld h,l			;50e7
	ld bc,l3106h		;50e8
	inc bc			;50eb
	ret pe			;50ec
	nop			;50ed
	inc b			;50ee
	add a,006h		;50ef
	dec b			;50f1
	inc bc			;50f2
	ld bc,l168ah		;50f3
	inc bc			;50f6
	inc bc			;50f7
	adc a,e			;50f8
	ld e,02bh		;50f9
	inc bc			;50fb
	adc a,e			;50fc
	ld c,03fh		;50fd
	inc bc			;50ff
	ret pe			;5100
	inc e			;5101
	inc b			;5102
	ld d,a			;5103
	ld d,b			;5104
	ld d,d			;5105
l5106h:
	ld d,e			;5106
	ld h,08ah		;5107
	ld b,(hl)		;5109
	nop			;510a
	adc a,e			;510b
	exx			;510c
	inc bc			;510d
	jp c,l55e8h		;510e
	dec b			;5111
	add a,045h		;5112
	rlca			;5114
	ld bc,l453ah		;5115
	inc b			;5118
	ld (hl),l		;5119
	ld (de),a		;511a
	add hl,sp		;511b
	ld d,l			;511c
	ex af,af'		;511d
	ld (hl),d		;511e
	dec c			;511f
	add hl,sp		;5120
	ld e,l			;5121
	ex af,af'		;5122
	ld (hl),e		;5123
	ex af,af'		;5124
	rst 0			;5125
	ld b,l			;5126
	inc b			;5127
	rst 38h			;5128
	nop			;5129
	ret pe			;512a
	ld h,e			;512b
	dec b			;512c
	ret pe			;512d
	ld d,b			;512e
	dec b			;512f
	ld (hl),l		;5130
	ret po			;5131
	ld e,e			;5132
	ld e,d			;5133
	ld (hl),08eh		;5134
	ld e,0e1h		;5136
	nop			;5138
	ret pe			;5139
	ei			;513a
	ei			;513b
	ld e,c			;513c
	ld e,e			;513d
	ld d,01fh		;513e
	ex (sp),hl		;5140
	dec bc			;5141
	or d			;5142
	nop			;5143
	rst 38h			;5144
	ld b,029h		;5145
	inc bc			;5147
	ex de,hl		;5148
	or (hl)			;5149
	jp (hl)			;514a
	inc l			;514b
	rst 38h			;514c
	and c			;514d
	dec a			;514e
	inc bc			;514f
l5150h:
	dec bc			;5150
	ret nz			;5151
sub_5152h:
	ld (hl),h		;5152
l5153h:
	rrca			;5153
l5154h:
	and e			;5154
	dec sp			;5155
l5156h:
	inc bc			;5156
l5157h:
	ret pe			;5157
	sub l			;5158
	inc bc			;5159
	rst 0			;515a
	ld b,035h		;515b
	inc bc			;515d
	nop			;515e
	nop			;515f
	ret pe			;5160
	ld c,d			;5161
	inc bc			;5162
	call nz,01d3eh		;5163
	inc bc			;5166
	and c			;5167
	ld b,a			;5168
	inc bc			;5169
	adc a,e			;516a
	ld c,049h		;516b
	inc bc			;516d
	dec bc			;516e
	ret nz			;516f
	ld (hl),l		;5170
	inc b			;5171
	dec bc			;5172
	ret			;5173
	ld (hl),h		;5174
	ex af,af'		;5175
	ld h,001h		;5176
	ld b,l			;5178
	djnz l51a1h		;5179
	ld de,l124dh		;517b
	adc a,e			;517e
	ld c,027h		;517f
	inc bc			;5181
	jp (hl)			;5182
	ld c,a			;5183
	cp 08bh			;5184
	ret z			;5186
	dec bc			;5187
	jp z,l3b74h		;5188
	dec l			;518b
	ld bc,08300h		;518c
	jp c,02600h		;518f
	rst 30h			;5192
	halt			;5193
	ld (bc),a		;5194
	ld h,08ah		;5195
	ld c,(hl)		;5197
	dec b			;5198
	out (0e8h),a		;5199
	adc a,e			;519b
	ret z			;519c
	ret pe			;519d
	ld (hl),l		;519e
	ld (bc),a		;519f
	ex (sp),hl		;51a0
l51a1h:
	inc e			;51a1
	ret pe			;51a2
	inc bc			;51a3
	inc b			;51a4
	ld (hl),d		;51a5
	and e			;51a6
	call nz,01d3eh		;51a7
	inc bc			;51aa
	and c			;51ab
	scf			;51ac
	inc bc			;51ad
	ld h,089h		;51ae
	ld b,l			;51b0
	djnz l5154h		;51b1
	add hl,sp		;51b3
	inc bc			;51b4
	ld h,089h		;51b5
	ld b,l			;51b7
	ld (de),a		;51b8
	inc sp			;51b9
	ret			;51ba
	jp (hl)			;51bb
	ld sp,0bafeh		;51bc
	rst 38h			;51bf
	rrca			;51c0
	ret pe			;51c1
	add a,h			;51c2
l51c3h:
	inc b			;51c3
	ex de,hl		;51c4
	pop hl			;51c5
	inc sp			;51c6
	in a,(006h)		;51c7
	call nz,01d3eh		;51c9
	inc bc			;51cc
	ld h,089h		;51cd
	ld e,l			;51cf
	dec de			;51d0
	ld h,087h		;51d1
	ld e,l			;51d3
	add hl,de		;51d4
	ld h,081h		;51d5
	ld h,l			;51d7
	dec e			;51d8
	nop			;51d9
	ret p			;51da
	rlca			;51db
	dec bc			;51dc
	in a,(074h)		;51dd
	rst 0			;51df
	ret pe			;51e0
	ld h,e			;51e1
	inc b			;51e2
	ex de,hl		;51e3
	jp nz,l3b26h		;51e4
	ld e,(hl)		;51e7
	dec c			;51e8
	ld (hl),a		;51e9
	dec d			;51ea
	ret pe			;51eb
	add a,d			;51ec
l51edh:
	nop			;51ed
	adc a,e			;51ee
	dec a			;51ef
	ld (hl),e		;51f0
	rlca			;51f1
	ld d,c			;51f2
	or c			;51f3
	inc b			;51f4
	out (0efh),a		;51f5
	ld e,c			;51f7
	ld sp,hl		;51f8
	add a,c			;51f9
	rst 20h			;51fa
	rst 38h			;51fb
	rrca			;51fc
	ld d,01fh		;51fd
	jp 0b450h		;51ff
	add a,b			;5202
	cp a			;5203
	rst 38h			;5204
	rrca			;5205
	ret pe			;5206
	rst 0			;5207
	dec bc			;5208
	ld e,b			;5209
	jp l62e8h		;520a
	nop			;520d
	adc a,e			;520e
	dec (hl)		;520f
	ld (hl),e		;5210
	inc c			;5211
	ld d,c			;5212
	or c			;5213
	inc b			;5214
	out (0e2h),a		;5215
	ld e,c			;5217
	add a,c			;5218
	and 00fh		;5219
	nop			;521b
	ex de,hl		;521c
	inc b			;521d
	add a,c			;521e
	and 000h		;521f
	ret p			;5221
	dec bc			;5222
	jp p,l3589h		;5223
	ld (hl),0c5h		;5226
	ld (hl),04bh		;5228
	inc bc			;522a
	add a,044h		;522b
	dec b			;522d
	ld bc,08036h		;522e
	ld a,00fh		;5231
	inc bc			;5233
	nop			;5234
	ld d,01fh		;5235
	ld (hl),h		;5237
	pop de			;5238
	ld d,b			;5239
	ld d,e			;523a
	ld d,c			;523b
	and c			;523c
	ld de,08e03h		;523d
	ld e,04dh		;5240
	inc bc			;5242
	add a,e			;5243
	add a,010h		;5244
	adc a,b			;5246
	inc h			;5247
	ld d,01fh		;5248
	ld d,b			;524a
	adc a,e			;524b
	ld d,013h		;524c
	inc bc			;524e
	cp (hl)			;524f
l5250h:
	ld bc,l3200h		;5250
l5253h:
	ret nz			;5253
	ret pe			;5254
l5255h:
	ret pe			;5255
l5256h:
	inc b			;5256
	push bc			;5257
	ld a,04bh		;5258
	inc bc			;525a
	add a,045h		;525b
	dec b			;525d
	ld bc,0c783h		;525e
	djnz l52b2h		;5261
	ld h,003h		;5263
	ld a,(hl)		;5265
	ld (bc),a		;5266
	ld e,b			;5267
	adc a,b			;5268
	dec b			;5269
	ld d,01fh		;526a
	ld e,c			;526c
	ld e,e			;526d
	ld e,b			;526e
	jp l06c5h+1		;526f
	rrca			;5272
	inc bc			;5273
	nop			;5274
	ld d,b			;5275
	ld d,e			;5276
	ld d,c			;5277
	ld d,d			;5278
	adc a,e			;5279
	jp 0e8d1h		;527a
	inc bc			;527d
	jp 0d233h		;527e
	ld h,08bh		;5281
	ld c,(hl)		;5283
	ld (bc),a		;5284
	rst 30h			;5285
	pop af			;5286
	ld h,003h		;5287
	ld b,(hl)		;5289
	ld b,049h		;528a
	ld d,b			;528c
	ld d,d			;528d
	ld d,c			;528e
	adc a,e			;528f
	ret nc			;5290
	ld (0bec0h),a		;5291
	ld bc,0e800h		;5294
	and (hl)		;5297
	inc b			;5298
	push bc			;5299
	ld (hl),04bh		;529a
	inc bc			;529c
	adc a,l			;529d
	ld a,h			;529e
	djnz $+91		;529f
	ld e,b			;52a1
	ld e,d			;52a2
	inc bc			;52a3
	ret m			;52a4
	dec sp			;52a5
	pop bc			;52a6
	ld (hl),l		;52a7
	add hl,hl		;52a8
	adc a,d			;52a9
	dec b			;52aa
	ld d,01fh		;52ab
	cp 006h			;52ad
	rrca			;52af
	inc bc			;52b0
	and d			;52b1
l52b2h:
	ld de,08903h		;52b2
	ld d,013h		;52b5
	inc bc			;52b7
	ld b,d			;52b8
	ld (0bec0h),a		;52b9
	ld bc,0e800h		;52bc
	ld a,(hl)		;52bf
	inc b			;52c0
	push bc			;52c1
	ld (hl),04bh		;52c2
	inc bc			;52c4
	adc a,l			;52c5
	ld a,h			;52c6
	djnz l5253h		;52c7
	dec b			;52c9
	ld d,01fh		;52ca
	and d			;52cc
	ld (de),a		;52cd
	inc bc			;52ce
	cp a			;52cf
	ld de,l5a03h		;52d0
	ld e,c			;52d3
	ld e,e			;52d4
	adc a,e			;52d5
	jp 0e8d1h		;52d6
	ld e,b			;52d9
	jp 0e781h		;52da
	rst 38h			;52dd
	nop			;52de
	or h			;52df
	ld (bc),a		;52e0
	and b			;52e1
	rlca			;52e2
	inc bc			;52e3
	ret pe			;52e4
	defb 0edh ;next byte illegal after ed	;52e5
	ld a,(bc)		;52e6
	and b			;52e7
l52e8h:
	rlca			;52e8
	inc bc			;52e9
	ret pe			;52ea
	ld a,e			;52eb
	pop af			;52ec
	or b			;52ed
	rrca			;52ee
	ld h,08ah		;52ef
	ld h,(hl)		;52f1
	ld bc,l2da3h		;52f2
	ld bc,l06c5h+1		;52f5
	cpl			;52f8
	ld bc,0c701h		;52f9
	ld b,030h		;52fc
	ld bc,00000h		;52fe
	ld h,08ah		;5301
	ld b,(hl)		;5303
	ld d,0a2h		;5304
	ld a,(00601h)		;5306
	ld e,0bbh		;5309
	dec l			;530b
	ld bc,0c526h		;530c
	halt			;530f
	ld (de),a		;5310
	rlca			;5311
	ret pe			;5312
	rst 28h			;5313
	ret p			;5314
	ld d,01fh		;5315
	rlca			;5317
	adc a,e			;5318
	ld a,030h		;5319
	ld bc,0c7f7h		;531b
l531eh:
	nop			;531e
	add a,b			;531f
	ld (hl),l		;5320
	cp c			;5321
	ld (l26e4h),a		;5322
	add a,(hl)		;5325
	ld h,(hl)		;5326
	rla			;5327
	and b			;5328
	rlca			;5329
	inc bc			;532a
	ld a,(bc)		;532b
	ld h,03bh		;532c
	ld bc,l1578h		;532e
	ld (hl),h		;5331
	ld bc,0fec3h		;5332
	call nz,sub_3ec5h	;5335
	inc bc			;5338
	ld bc,l453ah+1		;5339
	inc b			;533c
	ld (hl),h		;533d
	call p,sub_3dc5h	;533e
	add a,e			;5341
	rst 38h			;5342
	rst 38h			;5343
	ld (hl),l		;5344
	call p,sub_1ee8h	;5345
	inc bc			;5348
	add a,045h		;5349
	rlca			;534b
	ld bc,l453ah		;534c
	inc b			;534f
	ld (hl),l		;5350
	ex af,af'		;5351
	rst 0			;5352
	ld b,l			;5353
	inc b			;5354
	rst 38h			;5355
l5356h:
	nop			;5356
	ret pe			;5357
	ld (hl),003h		;5358
	ret pe			;535a
	inc hl			;535b
	inc bc			;535c
	ld (hl),l		;535d
	jp pe,0c526h		;535e
	ld a,(hl)		;5361
	ld (de),a		;5362
	rst 30h			;5363
	ld b,l			;5364
	inc b			;5365
	nop			;5366
	jr nz,$+119		;5367
	ld c,016h		;5369
	rra			;536b
	cp e			;536c
	ld (bc),a		;536d
	nop			;536e
	ret pe			;536f
	ld (hl),e		;5370
	cp 0c5h			;5371
	ld a,04bh		;5373
	inc bc			;5375
	ex de,hl		;5376
	inc c			;5377
	ld b,055h		;5378
	ld (hl),0c5h		;537a
	ld a,003h		;537c
	ld bc,098e8h		;537e
	inc b			;5381
	ld e,l			;5382
	rlca			;5383
	add a,e			;5384
	rst 0			;5385
	djnz l53beh		;5386
	adc a,h			;5388
	ld e,03dh		;5389
	ld bc,l1f15h+1		;538b
	adc a,c			;538e
	ld a,03bh		;538f
	ld bc,l16b0h		;5391
	ld h,08ah		;5394
	ld h,(hl)		;5396
	ld bc,l2da3h		;5397
	ld bc,l06c5h+1		;539a
	cpl			;539d
	ld bc,0c702h		;539e
	ld b,030h		;53a1
	ld bc,00000h		;53a3
	ld h,08ah		;53a6
	ld b,(hl)		;53a8
	ld d,0a2h		;53a9
	ld a,(00601h)		;53ab
	ld e,026h		;53ae
	rst 38h			;53b0
	halt			;53b1
	inc d			;53b2
	ld h,0ffh		;53b3
	halt			;53b5
	ld (de),a		;53b6
	cp e			;53b7
	dec l			;53b8
	ld bc,01f5eh		;53b9
	rlca			;53bc
	ret pe			;53bd
l53beh:
	ld b,h			;53be
	ret p			;53bf
	rlca			;53c0
	ld d,01fh		;53c1
sub_53c3h:
	adc a,e			;53c3
	ld a,030h		;53c4
	ld bc,0c7f7h		;53c6
	nop			;53c9
	add a,b			;53ca
l53cbh:
	ld (hl),l		;53cb
	ld sp,08a26h		;53cc
	ld b,(hl)		;53cf
	ld d,0c5h		;53d0
	ld (hl),03fh		;53d2
	ld bc,l443ah		;53d4
	ld a,(bc)		;53d7
	ld (hl),h		;53d8
	inc de			;53d9
	ret pe			;53da
	ld (hl),e		;53db
	jp pe,0c536h		;53dc
	ld a,03bh		;53df
	ld bc,08a26h		;53e1
	ld b,(hl)		;53e4
	ex af,af'		;53e5
	ld h,08ah		;53e6
l53e8h:
	ld h,(hl)		;53e8
	rrca			;53e9
	adc a,c			;53ea
	ld b,l			;53eb
	jp m,l1f15h+1		;53ec
	cp b			;53ef
	rst 38h			;53f0
	rst 38h			;53f1
	ld h,085h		;53f2
	ld b,(hl)		;53f4
	inc e			;53f5
	ld (hl),l		;53f6
	ld bc,l26c3h		;53f7
	adc a,c			;53fa
	ld b,(hl)		;53fb
	inc e			;53fc
	jp 0dae9h		;53fd
	cp 0b9h			;5400
	ld bc,08b00h		;5402
	jp m,l3d80h		;5405
	rst 38h			;5408
	ld (hl),l		;5409
	inc bc			;540a
	add a,e			;540b
	rst 0			;540c
	rlca			;540d
	adc a,e			;540e
	ld b,l			;540f
	ld hl,l558bh		;5410
	inc hl			;5413
	jp 0c406h		;5414
	ld a,01dh		;5417
	inc bc			;5419
	ld h,08bh		;541a
	ld e,l			;541c
	dec e			;541d
	add a,c			;541e
	ex (sp),hl		;541f
l5420h:
	rst 38h			;5420
	rrca			;5421
	ld h,08bh		;5422
	ld d,l			;5424
	dec de			;5425
	dec bc			;5426
	in a,(074h)		;5427
	ld e,02bh		;5429
	jp z,00873h		;542b
	inc bc			;542e
	jp z,0d233h		;542f
	ld h,08bh		;5432
	ld e,l			;5434
	add hl,de		;5435
	rlca			;5436
	ex (sp),hl		;5437
	ld c,0e8h		;5438
	xor c			;543a
	defb 0fdh,081h,0ffh ;illegal sequence	;543b
	ret m			;543e
	rrca			;543f
	ld (hl),e		;5440
	dec b			;5441
	add a,a			;5442
	rst 18h			;5443
	ld b,d			;5444
	jp po,0c3f2h		;5445
	rlca			;5448
	ld b,c			;5449
	ld c,d			;544a
	jp sub_168bh		;544b
	dec hl			;544e
	inc bc			;544f
	adc a,d			;5450
	ld e,003h		;5451
	inc bc			;5453
	ret pe			;5454
	jr nz,l5458h		;5455
	ret pe			;5457
l5458h:
	ex (sp),hl		;5458
	ld (bc),a		;5459
	add a,006h		;545a
	dec b			;545c
	inc bc			;545d
	ld bc,l368bh		;545e
	ld hl,08b03h		;5461
	cp 08bh			;5464
	ld c,03bh		;5466
	inc bc			;5468
	inc bc			;5469
	ld sp,hl		;546a
	adc a,c			;546b
	ld a,021h		;546c
	inc bc			;546e
	call nz,sub_4b3eh	;546f
	inc bc			;5472
	add a,e			;5473
	rst 0			;5474
	djnz l547ah		;5475
	ld a,035h		;5477
	inc bc			;5479
l547ah:
	jp 0b806h		;547a
	nop			;547d
	ld (bc),a		;547e
	ret pe			;547f
	jp z,08cffh		;5480
	jp 0068eh		;5483
	pop hl			;5486
	nop			;5487
	adc a,(hl)		;5488
	in a,(087h)		;5489
	cp 0d1h			;548b
	jp (hl)			;548d
	ld (hl),e		;548e
	ld bc,0f3a4h		;548f
	and l			;5492
	rlca			;5493
	ld (hl),0c5h		;5494
	ld a,04bh		;5496
	inc bc			;5498
	adc a,l			;5499
	ld e,l			;549a
	djnz l54c8h		;549b
	di			;549d
	ret pe			;549e
	defb 0fdh,001h,026h ;illegal sequence	;549f
l54a2h:
	dec sp			;54a2
	halt			;54a3
	ld (bc),a		;54a4
	ld (hl),d		;54a5
	inc bc			;54a6
	ret pe			;54a7
	ld c,a			;54a8
	ld (bc),a		;54a9
	ld d,01fh		;54aa
	jp l31a1h		;54ac
	inc bc			;54af
	ld b,b			;54b0
	and e			;54b1
	ld sp,l3b03h		;54b2
	ld b,033h		;54b5
	inc bc			;54b7
	or b			;54b8
	ld bc,l0277h		;54b9
	ld (006c0h),a		;54bc
	ret pe			;54bf
	adc a,d			;54c0
	rst 38h			;54c1
	adc a,(hl)		;54c2
	ld e,0e1h		;54c3
	nop			;54c5
	pop de			;54c6
	jp (hl)			;54c7
l54c8h:
	ld (hl),e		;54c8
	ld bc,0f3a4h		;54c9
	and l			;54cc
	rlca			;54cd
	ld (hl),0c5h		;54ce
	ld e,04bh		;54d0
	inc bc			;54d2
	add a,047h		;54d3
	dec b			;54d5
	ld bc,0778dh		;54d6
	djnz l5506h		;54d9
	cp 08bh			;54db
	rst 30h			;54dd
	adc a,e			;54de
	ei			;54df
	ret pe			;54e0
	cp e			;54e1
	ld bc,l3b26h		;54e2
	halt			;54e5
	ld (bc),a		;54e6
	ld (hl),d		;54e7
	inc bc			;54e8
	ret pe			;54e9
	dec c			;54ea
	ld (bc),a		;54eb
	ld d,01fh		;54ec
	jp l06f6h		;54ee
	dec b			;54f1
	inc bc			;54f2
	rst 38h			;54f3
	ld (hl),h		;54f4
	dec h			;54f5
	and b			;54f6
	inc bc			;54f7
	inc bc			;54f8
	cp 0c0h			;54f9
	ld h,03ah		;54fb
	ld b,(hl)		;54fd
	inc b			;54fe
	halt			;54ff
	rla			;5500
	adc a,e			;5501
	ld e,02bh		;5502
	inc bc			;5504
	add a,c			;5505
l5506h:
	ei			;5506
	ret m			;5507
	rrca			;5508
	ld (hl),e		;5509
	ld (de),a		;550a
	ret pe			;550b
	rst 10h			;550c
	call m,sub_3e89h	;550d
	dec hl			;5510
	inc bc			;5511
	rst 38h			;5512
	ld b,029h		;5513
	inc bc			;5515
	or b			;5516
	nop			;5517
	and d			;5518
	inc bc			;5519
	inc bc			;551a
	ret m			;551b
	jp 0c3f9h		;551c
	ld d,d			;551f
	ld d,e			;5520
	ld h,08ah		;5521
	ld b,(hl)		;5523
l5524h:
	inc b			;5524
	cp 0c0h			;5525
	adc a,d			;5527
	ret po			;5528
	ld hl,(08bc2h)		;5529
	pop de			;552c
	cp c			;552d
	nop			;552e
	nop			;552f
	ret pe			;5530
	or d			;5531
	call m,0c802h		;5532
	add a,b			;5535
	push de			;5536
	nop			;5537
	dec sp			;5538
	jp z,l2d73h		;5539
	adc a,d			;553c
	call nz,sub_3b43h	;553d
	ei			;5540
	ld (hl),h		;5541
	ld bc,(l1e89h)		;5542
	dec hl			;5546
	inc bc			;5547
	dec hl			;5548
	pop de			;5549
	ld d,d			;554a
	adc a,e			;554b
	pop bc			;554c
	ld h,0f7h		;554d
	ld h,(hl)		;554f
	ld (bc),a		;5550
	adc a,e			;5551
	ld (hl),021h		;5552
	inc bc			;5554
	inc bc			;5555
	add a,0a3h		;5556
	ld hl,05803h		;5558
	ld e,d			;555b
	dec hl			;555c
	jp c,l1e01h		;555d
	add hl,hl		;5560
	inc bc			;5561
	ld e,e			;5562
	ret pe			;5563
	ld de,08b00h		;5564
	sbc a,0c3h		;5567
	dec hl			;5569
	jp z,0e12ah		;556a
	cp 0cch			;556d
	adc a,b			;556f
	ld h,003h		;5570
	inc bc			;5572
	adc a,e			;5573
	jp z,0cdebh		;5574
	ld d,c			;5577
	ld h,08ah		;5578
	ld c,(hl)		;557a
	dec b			;557b
	ld c,d			;557c
	ld c,d			;557d
	out (0e2h),a		;557e
	ld a,(bc)		;5580
	out (026h),a		;5581
	inc bc			;5583
	ld d,(hl)		;5584
	dec bc			;5585
	ld e,c			;5586
	jp 0fa8bh		;5587
	add a,b			;558a
l558bh:
	dec a			;558b
	rst 38h			;558c
	ld (hl),l		;558d
	inc bc			;558e
	add a,e			;558f
	rst 0			;5590
	rlca			;5591
	cp c			;5592
	ld bc,08a00h		;5593
	ld b,l			;5596
	jr nz,l5524h		;5597
	ld d,l			;5599
	inc c			;559a
	ret nc			;559b
	ret po			;559c
	pop de			;559d
	jp pe,0d8d0h		;559e
	adc a,d			;55a1
	jp po,0d68ah		;55a2
	or (hl)			;55a5
	nop			;55a6
	jp l3353h		;55a7
	in a,(0e8h)		;55aa
	scf			;55ac
	call m,sub_3e89h	;55ad
	rla			;55b0
	inc bc			;55b1
	ld e,e			;55b2
	ld d,d			;55b3
	ld d,c			;55b4
	ld d,e			;55b5
	adc a,e			;55b6
	jp 0d38bh		;55b7
	ld b,e			;55ba
	ld h,03bh		;55bb
	ld e,(hl)		;55bd
	dec c			;55be
	ld a,(hl)		;55bf
	dec hl			;55c0
	dec a			;55c1
	ld bc,07f00h		;55c2
	dec hl			;55c5
	ld e,e			;55c6
	cp d			;55c7
	rst 38h			;55c8
	rrca			;55c9
	ret pe			;55ca
	ld a,e			;55cb
	nop			;55cc
	ld e,b			;55cd
	dec hl			;55ce
	pop bc			;55cf
	ld e,d			;55d0
	ret pe			;55d1
	ld h,d			;55d2
	nop			;55d3
	ld b,d			;55d4
	inc bc			;55d5
	jp nz,08a26h		;55d6
	ld d,(hl)		;55d9
	inc b			;55da
	or (hl)			;55db
	nop			;55dc
	ld b,d			;55dd
	rst 30h			;55de
	jp po,0c88bh		;55df
	dec hl			;55e2
	ld c,023h		;55e3
	inc bc			;55e5
	ld (hl),a		;55e6
	ld (bc),a		;55e7
l55e8h:
	inc sp			;55e8
	ret			;55e9
	ld sp,hl		;55ea
	jp 0f6e8h		;55eb
	ei			;55ee
	ld (hl),h		;55ef
	inc c			;55f0
	ld c,b			;55f1
	ld a,(hl)		;55f2
	add a,093h		;55f3
	ret pe			;55f5
	defb 0edh ;next byte illegal after ed	;55f6
	ei			;55f7
	ld (hl),h		;55f8
	inc bc			;55f9
	sub e			;55fa
	ex de,hl		;55fb
	cp l			;55fc
	add a,a			;55fd
	jp c,0c28bh		;55fe
	ret pe			;5601
	rlca			;5602
	call m,0d88bh		;5603
	jp po,0bab0h		;5606
	rst 38h			;5609
	rrca			;560a
	ret pe			;560b
	defb 0fdh,0fbh,05bh ;illegal sequence	;560c
	ld e,c			;560f
	ld e,d			;5610
	ret pe			;5611
	pop de			;5612
	ei			;5613
	ret pe			;5614
	rra			;5615
	nop			;5616
	add a,a			;5617
	rst 18h			;5618
	dec bc			;5619
	rst 38h			;561a
	ld (hl),l		;561b
	adc a,006h		;561c
l561eh:
	call nz,01d3eh		;561e
	inc bc			;5621
	add a,c			;5622
	ex (sp),hl		;5623
	rst 38h			;5624
	rrca			;5625
	ld h,089h		;5626
	ld e,l			;5628
	add hl,de		;5629
	ld h,081h		;562a
	ld h,l			;562c
	dec e			;562d
	nop			;562e
	ret p			;562f
	ld h,009h		;5630
	ld e,l			;5632
	dec e			;5633
	rlca			;5634
	jp l5253h		;5635
	ld d,a			;5638
	inc sp			;5639
	in a,(08bh)		;563a
	ld d,017h		;563c
	inc bc			;563e
	ret pe			;563f
	ret			;5640
	ei			;5641
	ld e,a			;5642
	ld e,d			;5643
	ld e,e			;5644
	jp 0d233h		;5645
	ret pe			;5648
	sbc a,d			;5649
	ei			;564a
	ld (hl),h		;564b
	ret m			;564c
	adc a,e			;564d
	rst 0			;564e
	ret pe			;564f
	cp c			;5650
	ei			;5651
	dec a			;5652
	ret m			;5653
	rrca			;5654
	adc a,e			;5655
	ret c			;5656
	ld (hl),d		;5657
	defb 0edh ;next byte illegal after ed	;5658
	jp 088e8h		;5659
	ei			;565c
	add a,c			;565d
	rst 38h			;565e
	ret m			;565f
	rrca			;5660
	ld (hl),e		;5661
	or 08bh			;5662
	rst 18h			;5664
	ex de,hl		;5665
	di			;5666
	ld (hl),0c5h		;5667
	ld a,003h		;5669
	ld bc,l3350h		;566b
	ret nz			;566e
	adc a,b			;566f
	ld b,l			;5670
	rlca			;5671
	push bc			;5672
	dec a			;5673
	add a,e			;5674
	rst 38h			;5675
	rst 38h			;5676
	ld (hl),l		;5677
	or 036h			;5678
	push bc			;567a
	ld a,003h		;567b
	ld bc,0c358h		;567d
	add a,e			;5680
	rst 38h			;5681
	rst 38h			;5682
	ld (hl),h		;5683
	jp m,07d80h		;5684
	rlca			;5687
	ld bc,0f475h		;5688
	push bc			;568b
	dec a			;568c
	ex de,hl		;568d
	pop af			;568e
	jp 0c406h		;568f
	dec (hl)		;5692
	ret pe			;5693
	ex af,af'		;5694
	nop			;5695
	ld b,01fh		;5696
	adc a,e			;5698
	cp 007h			;5699
	jp l57ebh		;569b
	ret pe			;569e
	add a,b			;569f
	pop hl			;56a0
	call nz,0830dh		;56a1
	ld sp,hl		;56a4
	rst 38h			;56a5
	ld (hl),h		;56a6
	ld c,l			;56a7
	adc a,h			;56a8
	push bc			;56a9
	ld e,007h		;56aa
	ld (hl),0c5h		;56ac
	ld (hl),003h		;56ae
	ld bc,07ae8h		;56b0
	nop			;56b3
	ld (hl),l		;56b4
	inc c			;56b5
	ld (hl),089h		;56b6
	ld c,003h		;56b8
	ld bc,08936h		;56ba
	ld l,005h		;56bd
	ld bc,l14ebh		;56bf
	ld e,056h		;56c2
	push bc			;56c4
	inc (hl)		;56c5
	ret pe			;56c6
	ld h,l			;56c7
	nop			;56c8
	ld (hl),h		;56c9
	inc b			;56ca
	ld e,b			;56cb
	ld e,b			;56cc
	ex de,hl		;56cd
	di			;56ce
	ld e,(hl)		;56cf
	rra			;56d0
	adc a,c			;56d1
	inc c			;56d2
	adc a,c			;56d3
	ld l,h			;56d4
	ld (bc),a		;56d5
	ld e,056h		;56d6
	push bc			;56d8
	inc (hl)		;56d9
	add a,e			;56da
	cp 0ffh			;56db
	ld (hl),h		;56dd
	inc b			;56de
	ld e,b			;56df
	ld e,b			;56e0
	ex de,hl		;56e1
	di			;56e2
	ld e,(hl)		;56e3
	rra			;56e4
	adc a,c			;56e5
	inc a			;56e6
	adc a,h			;56e7
	ld b,h			;56e8
	ld (bc),a		;56e9
	ld h,0c7h		;56ea
	dec b			;56ec
	rst 38h			;56ed
	rst 38h			;56ee
	ld h,0c7h		;56ef
	ld b,l			;56f1
	ld (bc),a		;56f2
	rst 38h			;56f3
	rst 38h			;56f4
	ret pe			;56f5
	dec d			;56f6
	pop hl			;56f7
	jp l25e6h+2		;56f8
	pop hl			;56fb
	ld e,007h		;56fc
	ld (hl),0c5h		;56fe
	ld (hl),003h		;5700
	ld bc,08936h		;5702
	ld a,003h		;5705
	ld bc,08c36h		;5707
	ld b,005h		;570a
	ld bc,08926h		;570c
	dec (hl)		;570f
	ld h,08ch		;5710
	ld e,l			;5712
	ld (bc),a		;5713
	ld e,056h		;5714
	push bc			;5716
	inc (hl)		;5717
	ret pe			;5718
l5719h:
	inc de			;5719
	nop			;571a
	ld (hl),h		;571b
	inc b			;571c
	ld e,b			;571d
	ld e,b			;571e
	ex de,hl		;571f
	di			;5720
	ld e,(hl)		;5721
	rra			;5722
	rst 0			;5723
	inc b			;5724
	rst 38h			;5725
	rst 38h			;5726
	rst 0			;5727
	ld b,h			;5728
	ld (bc),a		;5729
	rst 38h			;572a
	rst 38h			;572b
	ex de,hl		;572c
	rst 0			;572d
	dec sp			;572e
	rst 30h			;572f
	ld (hl),l		;5730
	add a,051h		;5731
	ld d,d			;5733
	adc a,h			;5734
	exx			;5735
	adc a,h			;5736
	jp nz,0ca3bh		;5737
	ld e,d			;573a
	ld e,c			;573b
	jp 0f633h		;573c
	and e			;573f
	dec d			;5740
	inc bc			;5741
	ld h,08ah		;5742
	ld b,(hl)		;5744
	nop			;5745
	push bc			;5746
	ld a,029h		;5747
	ld bc,0ff83h		;5749
	rst 38h			;574c
	ld (hl),h		;574d
	inc c			;574e
	dec sp			;574f
	ld d,l			;5750
	ex af,af'		;5751
	ld (hl),l		;5752
	rlca			;5753
	ld a,(l0445h)		;5754
	ld (hl),l		;5757
	ld (bc),a		;5758
	ex de,hl		;5759
	ld l,a			;575a
	ld (hl),0c5h		;575b
	ld a,003h		;575d
	ld bc,0553bh		;575f
	ex af,af'		;5762
	ld (hl),l		;5763
	rlca			;5764
	ld a,(l0445h)		;5765
	ld (hl),l		;5768
	ld (bc),a		;5769
	ex de,hl		;576a
	ld c,c			;576b
	push bc			;576c
	dec a			;576d
	add a,e			;576e
	rst 38h			;576f
	rst 38h			;5770
	ld (hl),l		;5771
	defb 0edh ;next byte illegal after ed	;5772
	ld (hl),0c5h		;5773
	ld a,003h		;5775
	ld bc,l5256h		;5777
	ld d,l			;577a
	ld b,0e8h		;577b
	sbc a,e			;577d
	nop			;577e
	rlca			;577f
	ld e,l			;5780
	ld e,d			;5781
	ld e,(hl)		;5782
	ld (hl),0f6h		;5783
	ld b,015h		;5785
	inc bc			;5787
	rst 38h			;5788
	ld (hl),l		;5789
	jr l5719h		;578a
	ld e,l			;578c
	djnz $-69		;578d
	ld bc,05600h		;578f
	ld d,a			;5792
	ld d,d			;5793
	dec bc			;5794
	or 074h			;5795
	dec b			;5797
	ret pe			;5798
	ld d,l			;5799
	push af			;579a
	ex de,hl		;579b
	inc bc			;579c
	ret pe			;579d
	ld (hl),c		;579e
	push af			;579f
	ld e,d			;57a0
	ld e,a			;57a1
	ld e,(hl)		;57a2
	adc a,c			;57a3
	ld d,l			;57a4
	ex af,af'		;57a5
	adc a,c			;57a6
	ld l,l			;57a7
	inc c			;57a8
	adc a,h			;57a9
	ld b,l			;57aa
	ld c,032h		;57ab
	call po,08a26h		;57ad
	ld b,(hl)		;57b0
	nop			;57b1
	adc a,c			;57b2
	ld b,l			;57b3
	inc b			;57b4
	cp b			;57b5
	ld bc,l0b00h		;57b6
	or 074h			;57b9
	ex af,af'		;57bb
	ld h,08ah		;57bc
	ld b,(hl)		;57be
	ex af,af'		;57bf
	ld h,08ah		;57c0
	ld h,(hl)		;57c2
l57c3h:
	rrca			;57c3
	adc a,c			;57c4
	ld b,l			;57c5
	ld a,(bc)		;57c6
	ret pe			;57c7
	call nc,sub_36feh	;57c8
	adc a,h			;57cb
	ld e,04dh		;57cc
	inc bc			;57ce
	ld (hl),08ch		;57cf
	ld e,02bh		;57d1
	ld bc,l1f15h+1		;57d3
	adc a,c			;57d6
	ld a,04bh		;57d7
	inc bc			;57d9
	adc a,c			;57da
	ld a,029h		;57db
	ld bc,0c5c3h		;57dd
	ld a,003h		;57e0
	ld bc,0ffb4h		;57e2
	jr c,$+103		;57e5
	inc b			;57e7
	ld (hl),h		;57e8
	ld h,03ah		;57e9
l57ebh:
	ret po			;57eb
	ld (hl),h		;57ec
	dec b			;57ed
	ld a,(l0445h)		;57ee
	ld (hl),l		;57f1
	dec e			;57f2
	add a,b			;57f3
	ld a,l			;57f4
	dec b			;57f5
	nop			;57f6
l57f7h:
	ld (hl),h		;57f7
	rla			;57f8
	ld d,b			;57f9
	rst 38h			;57fa
	ld (hl),l		;57fb
	inc b			;57fc
l57fdh:
	ret pe			;57fd
	ld a,(de)		;57fe
	nop			;57ff
	ld e,b			;5800
	ld (l36e4h),a		;5801
	ld a,(l2506h)		;5804
	ld bc,00275h		;5807
	or b			;580a
	rst 38h			;580b
	adc a,c			;580c
	ld b,l			;580d
	inc b			;580e
	ld e,b			;580f
	push bc			;5810
	dec a			;5811
	add a,e			;5812
	rst 38h			;5813
	rst 38h			;5814
	ld (hl),l		;5815
	adc a,016h		;5816
	rra			;5818
	jp 0ffb8h		;5819
	nop			;581c
	add a,a			;581d
	ld b,l			;581e
	inc b			;581f
	inc a			;5820
	rst 38h			;5821
	ld (hl),h		;5822
	push af			;5823
	ld a,(bc)		;5824
	call po,0f174h		;5825
	ld (hl),03ah		;5828
	ld b,025h		;582a
	ld bc,0ea74h		;582c
	call nz,00c6dh		;582f
	adc a,l			;5832
	ld e,l			;5833
	djnz $-115		;5834
	ld d,l			;5836
	ex af,af'		;5837
	adc a,e			;5838
	ld c,l			;5839
	ld a,(bc)		;583a
	adc a,d			;583b
	push bc			;583c
	ld (08aedh),a		;583d
	push hl			;5840
	ld d,a			;5841
	ld d,c			;5842
	ld d,b			;5843
	cp c			;5844
	ld bc,05300h		;5845
	ld d,d			;5848
	ret pe			;5849
	ex de,hl		;584a
	call p,05b5ah		;584b
	ld e,b			;584e
	ld e,c			;584f
	inc bc			;5850
	ret nc			;5851
	jp po,l5feeh		;5852
	jp l1f15h+1		;5855
	ret pe			;5858
	ld e,(hl)		;5859
l585ah:
	djnz l57fdh		;585a
	dec de			;585c
	ld bc,l1e89h+2		;585d
	add hl,de		;5860
	ld bc,0cce8h		;5861
	rst 18h			;5864
	adc a,c			;5865
	ld e,h			;5866
	ld b,005h		;5867
	cp h			;5869
	rlca			;586a
	adc a,c			;586b
	ld b,h			;586c
	inc b			;586d
	ld (hl),0a0h		;586e
	rra			;5870
	ld bc,0b0c3h		;5871
	rst 38h			;5874
	add a,c			;5875
	jp (hl)			;5876
	cp h			;5877
	rlca			;5878
	ld (hl),d		;5879
	rla			;587a
	add a,e			;587b
	ld sp,hl		;587c
	ld (hl),a		;587d
	ld (hl),a		;587e
	ld (de),a		;587f
	ld a,(bc)		;5880
	or 074h			;5881
	ld c,00ah		;5883
	jp nc,00a74h		;5885
	add a,b			;5888
	cp 00ch			;5889
	ld (hl),a		;588b
	dec b			;588c
	ld d,01fh		;588d
	ret pe			;588f
	or d			;5890
	djnz $-59		;5891
	ld d,01fh		;5893
	ret pe			;5895
	ld hl,0e810h		;5896
	sub (hl)		;5899
	rst 18h			;589a
	adc a,c			;589b
	ld d,h			;589c
	ld b,089h		;589d
	ld c,h			;589f
	inc b			;58a0
	ld (0c3c0h),a		;58a1
	or b			;58a4
	rst 38h			;58a5
	add a,b			;58a6
	defb 0fdh,018h,073h ;illegal sequence	;58a7
l58aah:
	ret m			;58aa
	add a,b			;58ab
	ld sp,hl		;58ac
	inc a			;58ad
	ld (hl),e		;58ae
	di			;58af
	add a,b			;58b0
	cp 03ch			;58b1
	ld (hl),e		;58b3
	xor 080h		;58b4
	jp m,07364h		;58b6
	jp (hl)			;58b9
	ld d,c			;58ba
	ld d,d			;58bb
	ld d,01fh		;58bc
	cp e			;58be
l58bfh:
	push bc			;58bf
	ld (bc),a		;58c0
	cp c			;58c1
	ld b,000h		;58c2
	inc sp			;58c4
	jp nc,0c28bh		;58c5
l58c8h:
	ld d,e			;58c8
	ret pe			;58c9
	cp (hl)			;58ca
	ex de,hl		;58cb
	ld e,0c5h		;58cc
	ld (hl),0f8h		;58ce
	nop			;58d0
	ret pe			;58d1
	jr nc,l58bfh		;58d2
	rra			;58d4
	ld e,e			;58d5
	ret pe			;58d6
	call po,08febh		;58d7
	ld b,0c9h		;58da
	ld (bc),a		;58dc
	adc a,a			;58dd
	ld b,0c7h		;58de
	ld (bc),a		;58e0
	push bc			;58e1
	ld (hl),0f8h		;58e2
	nop			;58e4
	ret pe			;58e5
	inc e			;58e6
	ex de,hl		;58e7
	ld (0c3c0h),a		;58e8
	ret pe			;58eb
	sbc a,d			;58ec
	call m,06be8h		;58ed
	pop af			;58f0
	ex de,hl		;58f1
	ld b,0e8h		;58f2
	sub d			;58f4
	call m,09ae8h		;58f5
	jp p,l44e3h		;58f8
	dec b			;58fb
	ld bc,08300h		;58fc
	jp nc,0eb00h		;58ff
	inc a			;5902
	ret pe			;5903
	ei			;5904
	jp m,l53e8h		;5905
	pop af			;5908
	ex de,hl		;5909
	inc h			;590a
	ret pe			;590b
	di			;590c
	jp m,082e8h		;590d
	jp p,l1cebh		;5910
	ret pe			;5913
	xor 0fah		;5914
	ret pe			;5916
	ld b,e			;5917
	pop af			;5918
	ex de,hl		;5919
	ld b,0e8h		;591a
	and 0fah		;591c
	ret pe			;591e
	ld (hl),d		;591f
	jp p,00de8h		;5920
	rst 18h			;5923
	adc a,c			;5924
	ld c,h			;5925
	inc b			;5926
	ex (sp),hl		;5927
	ld b,005h		;5928
	ld bc,08300h		;592a
	jp nc,02600h		;592d
	adc a,c			;5930
	ld b,l			;5931
	ld hl,08826h		;5932
	ld d,l			;5935
	inc hl			;5936
	ld a,(bc)		;5937
	or 074h			;5938
	inc b			;593a
	ld h,088h		;593b
	ld (hl),l		;593d
	inc h			;593e
	adc a,e			;593f
	ret z			;5940
	inc h			;5941
	ld a,a			;5942
	ld h,088h		;5943
	ld b,l			;5945
	jr nz,l58c8h		;5946
	pop hl			;5948
	add a,b			;5949
	pop de			;594a
	pop hl			;594b
	pop de			;594c
	jp nc,0c58ah		;594d
	adc a,d			;5950
	jp po,08926h		;5951
	ld b,l			;5954
	inc c			;5955
	ld (hl),0a0h		;5956
	inc b			;5958
	inc bc			;5959
	jp 086e8h		;595a
	ld b,0b0h		;595d
	rst 38h			;595f
	ld (hl),0a2h		;5960
	call m,sub_7202h	;5962
	call p,0a036h		;5965
	defb 0ddh,002h,024h ;illegal sequence	;5968
	rra			;596b
	inc a			;596c
	rra			;596d
	ld (hl),l		;596e
	ld (de),a		;596f
	cp c			;5970
	dec bc			;5971
	nop			;5972
	or b			;5973
	ccf			;5974
	cp a			;5975
	pop de			;5976
	ld (bc),a		;5977
	di			;5978
	xor (hl)		;5979
	ld (hl),l		;597a
	ld b,036h		;597b
	add a,006h		;597d
	ei			;597f
	ld (bc),a		;5980
	nop			;5981
	ret pe			;5982
	ld sp,hl		;5983
	ex de,hl		;5984
	or b			;5985
	rst 38h			;5986
	ld (hl),d		;5987
	pop de			;5988
	ld a,(bc)		;5989
	call po,0cd78h		;598a
	call nz,l082eh		;598d
	inc bc			;5990
	adc a,d			;5991
	ld h,0fbh		;5992
	ld (bc),a		;5994
	ld e,0c5h		;5995
	ld a,04bh		;5997
	inc bc			;5999
	ld (hl),0f6h		;599a
	ld b,0ddh		;599c
	ld (bc),a		;599e
	ld bc,l0975h		;599f
	or 047h			;59a2
	dec bc			;59a4
	ld bc,l0374h		;59a5
	rra			;59a8
	ex de,hl		;59a9
	inc e			;59aa
	ld (hl),0c6h		;59ab
	ld b,0fch		;59ad
	ld (bc),a		;59af
	nop			;59b0
	add a,045h		;59b1
	dec b			;59b3
	ld bc,02788h		;59b4
	adc a,e			;59b7
	inc e			;59b8
	rra			;59b9
	dec bc			;59ba
	in a,(074h)		;59bb
	add hl,bc		;59bd
	ld h,03bh		;59be
	ld e,(hl)		;59c0
	dec c			;59c1
	ld (hl),a		;59c2
	inc bc			;59c3
	ret pe			;59c4
	ld a,a			;59c5
	call m,sub_5de8h	;59c6
	call pe,0ffe8h		;59c9
	ex de,hl		;59cc
	ld (hl),e		;59cd
	cp (hl)			;59ce
	ret pe			;59cf
	ld e,d			;59d0
	ld bc,0fca0h		;59d1
	ld (bc),a		;59d4
	jp 089e9h		;59d5
	nop			;59d8
	ret pe			;59d9
	ex af,af'		;59da
	ld b,072h		;59db
	ret m			;59dd
	add a,e			;59de
	add a,005h		;59df
	cp a			;59e1
	sbc a,002h		;59e2
	ret pe			;59e4
	ld d,a			;59e5
	ld b,072h		;59e6
	defb 0edh ;next byte illegal after ed	;59e8
	ret pe			;59e9
	sub d			;59ea
	ex de,hl		;59eb
	ld (hl),d		;59ec
	ret pe			;59ed
	ld a,(bc)		;59ee
	call po,0e478h		;59ef
	cp (hl)			;59f2
	pop de			;59f3
	ld (bc),a		;59f4
	cp a			;59f5
	ex de,hl		;59f6
	ld (bc),a		;59f7
	cp c			;59f8
l59f9h:
	dec c			;59f9
	nop			;59fa
	di			;59fb
	and h			;59fc
	cp a			;59fd
	pop de			;59fe
	ld (bc),a		;59ff
	cp (hl)			;5a00
l5a01h:
	sbc a,002h		;5a01
l5a03h:
	cp c			;5a03
	dec bc			;5a04
	nop			;5a05
	xor h			;5a06
	inc a			;5a07
	ccf			;5a08
	ld (hl),l		;5a09
	ex af,af'		;5a0a
	ld e,08eh		;5a0b
	ld e,04dh		;5a0d
	inc bc			;5a0f
	adc a,d			;5a10
	rlca			;5a11
	rra			;5a12
	xor d			;5a13
	ld b,e			;5a14
	jp po,l47efh		;5a15
	add a,005h		;5a18
	ld d,0e8h		;5a1a
	inc b			;5a1c
	jp pe,l3f73h		;5a1d
	inc sp			;5a20
	ret nz			;5a21
	rst 38h			;5a22
	ld (hl),021h		;5a23
	ld bc,l60e8h		;5a25
	ex de,hl		;5a28
	ld e,b			;5a29
	ld (hl),e		;5a2a
	inc sp			;5a2b
	call nz,l082eh		;5a2c
	inc bc			;5a2f
	ret pe			;5a30
	rst 30h			;5a31
	ex de,hl		;5a32
	adc a,e			;5a33
	ei			;5a34
	adc a,(hl)		;5a35
	ld b,04dh		;5a36
	inc bc			;5a38
	cp (hl)			;5a39
	pop de			;5a3a
	ld (bc),a		;5a3b
	cp c			;5a3c
	dec bc			;5a3d
	nop			;5a3e
	di			;5a3f
	and h			;5a40
	adc a,e			;5a41
	ld a,04bh		;5a42
	inc bc			;5a44
	ld h,0c6h		;5a45
	ld b,l			;5a47
	dec b			;5a48
	ld bc,l0716h		;5a49
	cp (hl)			;5a4c
	ex de,hl		;5a4d
	ld (bc),a		;5a4e
	cp a			;5a4f
	pop de			;5a50
	ld (bc),a		;5a51
	cp c			;5a52
	dec c			;5a53
	nop			;5a54
	di			;5a55
	and h			;5a56
	ret pe			;5a57
	ld (hl),d		;5a58
	ex de,hl		;5a59
	ld (hl),e		;5a5a
	and c			;5a5b
	jp (hl)			;5a5c
	call 0e800h		;5a5d
	jp z,0b000h		;5a60
	rst 38h			;5a63
	jp l04e8h		;5a64
	ex de,hl		;5a67
	ld (hl),d		;5a68
	ret m			;5a69
	ld d,(hl)		;5a6a
	ld d,b			;5a6b
	ld (00ac0h),a		;5a6c
	call po,00878h		;5a6f
	and b			;5a72
	rlca			;5a73
	inc bc			;5a74
	adc a,(hl)		;5a75
	ld e,04dh		;5a76
	inc bc			;5a78
	ld b,b			;5a79
	xor d			;5a7a
	inc sp			;5a7b
	ret nz			;5a7c
	add a,e			;5a7d
	rst 0			;5a7e
	dec bc			;5a7f
	xor e			;5a80
	or b			;5a81
	add a,b			;5a82
	xor e			;5a83
	xor l			;5a84
	adc a,e			;5a85
	ret nc			;5a86
	and l			;5a87
	and l			;5a88
	adc a,e			;5a89
	ld b,h			;5a8a
	ret m			;5a8b
	xor e			;5a8c
	adc a,e			;5a8d
	ld b,h			;5a8e
	or 0abh			;5a8f
	ld e,b			;5a91
	ld e,(hl)		;5a92
	adc a,d			;5a93
	call nz,sub_400ch	;5a94
	xor d			;5a97
l5a98h:
	ld a,b			;5a98
l5a99h:
	daa			;5a99
	adc a,e			;5a9a
	jp nz,l50abh		;5a9b
	inc sp			;5a9e
	ret nz			;5a9f
	xor e			;5aa0
	ld e,b			;5aa1
	xor d			;5aa2
	adc a,d			;5aa3
	call nz,08a36h		;5aa4
	ld h,02fh		;5aa7
	inc bc			;5aa9
	ld d,c			;5aaa
	or c			;5aab
	inc b			;5aac
	jp nc,l0ae4h		;5aad
	call nz,sub_36aah	;5ab0
	and c			;5ab3
	cpl			;5ab4
	inc bc			;5ab5
	or c			;5ab6
	inc b			;5ab7
	out (0e0h),a		;5ab8
	ld e,c			;5aba
	adc a,d			;5abb
	call nz,sub_33aah	;5abc
	ret nz			;5abf
	jp l06c5h		;5ac0
	add hl,de		;5ac3
	inc bc			;5ac4
	xor e			;5ac5
	ld h,08ch		;5ac6
	dec e			;5ac8
	ex de,hl		;5ac9
	di			;5aca
	adc a,e			;5acb
	jp m,l3d80h		;5acc
	rst 38h			;5acf
	ld (hl),l		;5ad0
	inc bc			;5ad1
	add a,e			;5ad2
	rst 0			;5ad3
	rlca			;5ad4
	or 045h			;5ad5
	jr l5a99h		;5ad7
	ld (hl),l		;5ad9
	ld e,h			;5ada
	ret pe			;5adb
	ld bc,l7205h		;5adc
	ld e,d			;5adf
	ld d,d			;5ae0
	ld e,08bh		;5ae1
	jp p,l5c8bh		;5ae3
	ld e,0b1h		;5ae6
	inc b			;5ae8
	out (0ebh),a		;5ae9
	ld d,e			;5aeb
	ld d,01fh		;5aec
	ret pe			;5aee
	or 0f7h			;5aef
l5af1h:
	ld e,e			;5af1
	ret pe			;5af2
	di			;5af3
	ex de,hl		;5af4
	ret pe			;5af5
	sub c			;5af6
	jp pe,05f07h		;5af7
	ld (hl),d		;5afa
	ld a,0c5h		;5afb
sub_5afdh:
	ld e,04bh		;5afd
	inc bc			;5aff
	add a,b			;5b00
l5b01h:
	ld c,h			;5b01
	pop af			;5b02
	jr nz,$+40		;5b03
	adc a,e			;5b05
	ld c,l			;5b06
	add hl,de		;5b07
	adc a,c			;5b08
	inc c			;5b09
	ld h,08bh		;5b0a
	ld d,l			;5b0c
	djnz l5a98h		;5b0d
	ld d,h			;5b0f
	ld (bc),a		;5b10
	ld h,08bh		;5b11
	ld d,l			;5b13
	ld (de),a		;5b14
	adc a,c			;5b15
	ld d,h			;5b16
	inc b			;5b17
	ld h,08bh		;5b18
	ld d,l			;5b1a
	inc d			;5b1b
	adc a,c			;5b1c
	ld d,h			;5b1d
	cp 026h			;5b1e
	adc a,e			;5b20
	ld d,l			;5b21
	ld d,089h		;5b22
	ld d,h			;5b24
	call m,sub_47c6h	;5b25
	dec b			;5b28
	ld bc,l1f15h+1		;5b29
	call nz,l082eh		;5b2c
	inc bc			;5b2f
	ld h,08ah		;5b30
	ld b,(hl)		;5b32
	nop			;5b33
	ret pe			;5b34
	xor b			;5b35
	call m,0c032h		;5b36
	jp 0ffb0h		;5b39
	jp 0a4e8h		;5b3c
	inc b			;5b3f
	ld (hl),d		;5b40
	add hl,hl		;5b41
	cp a			;5b42
	pop de			;5b43
	ld (bc),a		;5b44
	cp c			;5b45
	dec bc			;5b46
	nop			;5b47
	or b			;5b48
	ccf			;5b49
	jp p,074aeh		;5b4a
	dec e			;5b4d
	ld (hl),0c6h		;5b4e
	ld b,0fah		;5b50
	ld (bc),a		;5b52
	rst 38h			;5b53
	ld d,d			;5b54
	ld e,0e8h		;5b55
	dec h			;5b57
	jp pe,l2ec4h		;5b58
	ex af,af'		;5b5b
	inc bc			;5b5c
	ld (hl),e		;5b5d
	ld d,0e8h		;5b5e
	ld h,a			;5b60
	jp (hl)			;5b61
	ld (hl),d		;5b62
	dec b			;5b63
	ret pe			;5b64
	jp 0ebeah		;5b65
	add hl,sp		;5b68
	rra			;5b69
	ld e,d			;5b6a
	ex de,hl		;5b6b
	call sub_075ah		;5b6c
	ld e,c			;5b6f
	ld d,d			;5b70
	ld d,c			;5b71
	ld b,0ebh		;5b72
	call po,0f275h		;5b74
	ld a,(bc)		;5b77
	call po,07678h		;5b78
	ld e,0c5h		;5b7b
	ld a,04bh		;5b7d
	inc bc			;5b7f
	adc a,e			;5b80
	inc c			;5b81
	adc a,e			;5b82
	ld (hl),l		;5b83
	ex af,af'		;5b84
	rra			;5b85
	ex (sp),hl		;5b86
	ld a,(de)		;5b87
	ld h,03bh		;5b88
	ld c,(hl)		;5b8a
	dec c			;5b8b
	ld (hl),a		;5b8c
	inc d			;5b8d
	dec hl			;5b8e
	rst 18h			;5b8f
	ld d,e			;5b90
	ld d,(hl)		;5b91
	adc a,e			;5b92
	exx			;5b93
	ret pe			;5b94
	xor a			;5b95
	jp m,l325ah		;5b96
	ret nz			;5b99
	ret pe			;5b9a
	and b			;5b9b
	ei			;5b9c
	ld e,e			;5b9d
	inc bc			;5b9e
	ld e,04bh		;5b9f
	inc bc			;5ba1
	or 006h			;5ba2
	defb 0ddh,002h,008h ;illegal sequence	;5ba4
	ld (hl),h		;5ba7
	rlca			;5ba8
	add a,b			;5ba9
	ld a,04fh		;5baa
	inc bc			;5bac
	nop			;5bad
	ld (hl),l		;5bae
	cp c			;5baf
	adc a,(hl)		;5bb0
	ld b,04dh		;5bb1
	inc bc			;5bb3
	adc a,e			;5bb4
	ei			;5bb5
	cp (hl)			;5bb6
	pop de			;5bb7
	ld (bc),a		;5bb8
	cp c			;5bb9
	dec b			;5bba
	nop			;5bbb
	and h			;5bbc
	di			;5bbd
	and l			;5bbe
	and b			;5bbf
	defb 0ddh,002h,0aah ;illegal sequence	;5bc0
	or c			;5bc3
	dec b			;5bc4
	inc sp			;5bc5
	ret nz			;5bc6
	di			;5bc7
	xor e			;5bc8
	ret pe			;5bc9
	ret z			;5bca
	inc c			;5bcb
	sub d			;5bcc
	xor e			;5bcd
	sub d			;5bce
	xor e			;5bcf
	inc sp			;5bd0
	ret nz			;5bd1
	ld d,a			;5bd2
	xor e			;5bd3
	xor e			;5bd4
	xor e			;5bd5
	adc a,e			;5bd6
	ld (hl),04bh		;5bd7
	inc bc			;5bd9
	ld h,0c6h		;5bda
	ld b,h			;5bdc
	dec b			;5bdd
	ld bc,l2ec4h		;5bde
	ex af,af'		;5be1
	inc bc			;5be2
	ld h,08ah		;5be3
	ld b,(hl)		;5be5
	nop			;5be6
	ld d,b			;5be7
	ld d,e			;5be8
	ret pe			;5be9
	di			;5bea
	ei			;5beb
	ld e,e			;5bec
	ld e,b			;5bed
	ld e,(hl)		;5bee
	adc a,d			;5bef
	ret po			;5bf0
	ret m			;5bf1
	rlca			;5bf2
	ld e,a			;5bf3
	jp (hl)			;5bf4
	ld (hl),c		;5bf5
	cp 036h			;5bf6
	add a,b			;5bf8
	ld a,023h		;5bf9
	ld bc,07401h		;5bfb
	ld bc,l51c3h		;5bfe
	ld b,053h		;5c01
	ld e,056h		;5c03
	ld c,007h		;5c05
	ld c,01fh		;5c07
	inc sp			;5c09
	ret			;5c0a
	add a,006h		;5c0b
	ld e,a			;5c0d
	ld bc,0c605h		;5c0e
	ld b,05dh		;5c11
	ld bc,0890eh		;5c13
	ld c,060h		;5c16
	ld bc,l5dbbh		;5c18
	ld bc,l36c5h		;5c1b
	call m,0e800h		;5c1e
	pop hl			;5c21
	rst 20h			;5c22
	ld (hl),0f7h		;5c23
	ld b,060h		;5c25
	ld bc,l0200h		;5c27
	ld (hl),l		;5c2a
	ld l,036h		;5c2b
	and b			;5c2d
	ld l,d			;5c2e
	ld bc,l033ch		;5c2f
	ld (hl),l		;5c32
	jr z,l5c6bh		;5c33
	add a,006h		;5c35
	ld e,a			;5c37
	ld bc,l3604h		;5c38
	add a,006h		;5c3b
	ld e,l			;5c3d
	ld bc,l3616h		;5c3e
	adc a,b			;5c41
	ld c,06ah		;5c42
	ld bc,08936h		;5c44
	ld c,060h		;5c47
	ld bc,l3641h		;5c49
	adc a,c			;5c4c
	ld c,06fh		;5c4d
	ld bc,0b1e8h		;5c4f
	rst 20h			;5c52
	ld e,(hl)		;5c53
	rra			;5c54
	ld e,e			;5c55
	rlca			;5c56
	ld e,c			;5c57
	ex de,hl		;5c58
	ld (hl),d		;5c59
	ld (l5ec0h),a		;5c5a
	rra			;5c5d
	ld e,e			;5c5e
	rlca			;5c5f
	ld e,c			;5c60
	jp 0103ch		;5c61
	ld (hl),h		;5c64
	ld c,h			;5c65
	inc a			;5c66
	ld c,074h		;5c67
	ld c,b			;5c69
	inc a			;5c6a
l5c6bh:
	inc bc			;5c6b
	ld (hl),h		;5c6c
	ld b,h			;5c6d
	jp l369ch		;5c6e
	add a,b			;5c71
	ld a,027h		;5c72
	ld bc,07400h		;5c74
	ld a,(bc)		;5c77
	ld (hl),080h		;5c78
	ld a,024h		;5c7a
	ld bc,07500h		;5c7c
	ld (bc),a		;5c7f
	call 09d28h		;5c80
	jp l70e8h		;5c83
	rst 38h			;5c86
	ld d,e			;5c87
	inc sp			;5c88
	in a,(0e8h)		;5c89
l5c8bh:
	ei			;5c8b
	rst 28h			;5c8c
	ld e,e			;5c8d
	ld (hl),d		;5c8e
	di			;5c8f
	or h			;5c90
	ld bc,l3ce8h		;5c91
	and 074h		;5c94
	ret c			;5c96
	inc a			;5c97
	inc de			;5c98
	ld (hl),l		;5c99
	rst 0			;5c9a
	ld (0e8e4h),a		;5c9b
	ld sp,0ebe6h		;5c9e
	add hl,bc		;5ca1
	ld (hl),0f6h		;5ca2
	ld d,0dah		;5ca4
	nop			;5ca6
	jp 0c4e8h		;5ca7
	rst 38h			;5caa
	or h			;5cab
	ld bc,l21e8h		;5cac
	and 074h		;5caf
	or 053h			;5cb1
	inc sp			;5cb3
	in a,(0e8h)		;5cb4
	ret nc			;5cb6
	rst 28h			;5cb7
	ld e,e			;5cb8
	ld (hl),d		;5cb9
	ret z			;5cba
	ld (0e8e4h),a		;5cbb
	ld de,l3ce6h		;5cbe
	djnz $+118		;5cc1
	sbc a,03ch		;5cc3
	ld c,074h		;5cc5
	jp c,l033ch		;5cc7
	ld (hl),l		;5cca
	in a,(0b0h)		;5ccb
	inc bc			;5ccd
	ret pe			;5cce
	ld h,h			;5ccf
	add hl,bc		;5cd0
	ret pe			;5cd1
	ld h,(hl)		;5cd2
	ld a,(bc)		;5cd3
	ld d,01fh		;5cd4
	add a,b			;5cd6
	ld a,026h		;5cd7
	ld bc,07400h		;5cd9
	inc bc			;5cdc
	ret pe			;5cdd
	xor h			;5cde
	call pe,08bfah		;5cdf
	ld h,0fdh		;5ce2
	ld (bc),a		;5ce4
	adc a,(hl)		;5ce5
	ld d,0ffh		;5ce6
	ld (bc),a		;5ce8
	ret pe			;5ce9
	ld hl,l2edbh		;5cea
	add a,006h		;5ced
	inc hl			;5cef
	ld bc,l2e00h		;5cf0
	add a,006h		;5cf3
	inc h			;5cf5
	ld bc,l2e00h		;5cf6
	adc a,c			;5cf9
	ld h,062h		;5cfa
	inc bc			;5cfc
	call sub_2e23h		;5cfd
	and e			;5d00
	rst 38h			;5d01
	ld (bc),a		;5d02
	sbc a,h			;5d03
	ld e,b			;5d04
	ld l,03bh		;5d05
	ld h,062h		;5d07
	inc bc			;5d09
	ld (hl),l		;5d0a
	rlca			;5d0b
	ld l,0a1h		;5d0c
	rst 38h			;5d0e
	ld (bc),a		;5d0f
	jp (hl)			;5d10
	rlca			;5d11
	jp c,0832eh		;5d12
	ld l,062h		;5d15
	inc bc			;5d17
	ld (bc),a		;5d18
	ld l,03bh		;5d19
	ld h,062h		;5d1b
	inc bc			;5d1d
	ld (hl),h		;5d1e
	dec bc			;5d1f
	cp b			;5d20
	nop			;5d21
	ld c,h			;5d22
	ld l,0c6h		;5d23
	ld b,0d6h		;5d25
	nop			;5d27
	rst 38h			;5d28
	ex de,hl		;5d29
	push hl			;5d2a
	ld d,b			;5d2b
	sbc a,l			;5d2c
	ld l,08fh		;5d2d
	ld b,0ffh		;5d2f
	ld (bc),a		;5d31
	ld (hl),e		;5d32
	ret c			;5d33
	ex de,hl		;5d34
	jp pe,090beh		;5d35
	ld bc,l02e8h		;5d38
	nop			;5d3b
	ex de,hl		;5d3c
	jp po,l070eh		;5d3d
	ld c,01fh		;5d40
	add a,006h		;5d42
	ld e,a			;5d44
	ld bc,0c608h		;5d45
	ld b,05dh		;5d48
	ld bc,0c716h		;5d4a
	ld b,060h		;5d4d
	ld bc,00000h		;5d4f
	adc a,d			;5d52
	ld e,0a3h		;5d53
	ld bc,0ff32h		;5d55
	adc a,c			;5d58
	ld e,06fh		;5d59
	ld bc,l5dbbh		;5d5b
	ld bc,l3689h		;5d5e
	ld l,e			;5d61
	ld bc,l36c5h		;5d62
	call m,0e800h		;5d65
	sbc a,d			;5d68
	and 02eh		;5d69
	rst 0			;5d6b
	ld b,06bh		;5d6c
	ld bc,l02cbh		;5d6e
	ld l,0c7h		;5d71
	ld b,06fh		;5d73
	ld bc,00001h		;5d75
	jp 08c36h		;5d78
	ld b,0cfh		;5d7b
	ld (bc),a		;5d7d
	ld (hl),089h		;5d7e
	ld l,0cdh		;5d80
	ld (bc),a		;5d82
	ld d,(hl)		;5d83
	add a,c			;5d84
	rst 20h			;5d85
	rst 38h			;5d86
	nop			;5d87
	adc a,h			;5d88
	defb 0ddh,0e8h,057h ;illegal sequence	;5d89
	nop			;5d8c
	ld e,(hl)		;5d8d
	jp 08197h		;5d8e
	rst 20h			;5d91
	rst 38h			;5d92
	nop			;5d93
	add a,e			;5d94
	rst 38h			;5d95
	nop			;5d96
	ld (hl),l		;5d97
	ld a,(bc)		;5d98
	ld d,b			;5d99
	ld h,08ah		;5d9a
	ld b,(hl)		;5d9c
	nop			;5d9d
	ld (hl),0a2h		;5d9e
	dec h			;5da0
	ld bc,l2b58h		;5da1
	pop bc			;5da4
	inc bc			;5da5
	ret nc			;5da6
	ld d,d			;5da7
	ld h,0f7h		;5da8
	ld h,(hl)		;5daa
	ld (bc),a		;5dab
	ld e,d			;5dac
	inc bc			;5dad
	ret c			;5dae
	ld (l26e4h),a		;5daf
	dec sp			;5db2
	ld d,(hl)		;5db3
	ld b,072h		;5db4
	ld (de),a		;5db6
	cp 0c4h			;5db7
	ld h,03bh		;5db9
l5dbbh:
	ld d,(hl)		;5dbb
	djnz l5e30h		;5dbc
	ld a,(bc)		;5dbe
	cp 0c4h			;5dbf
	ld h,03bh		;5dc1
	ld d,(hl)		;5dc3
	dec bc			;5dc4
	ld (hl),d		;5dc5
	ld (bc),a		;5dc6
	cp 0c4h			;5dc7
	ret nc			;5dc9
	call po,00a36h		;5dca
	ld h,006h		;5dcd
	inc bc			;5dcf
	ld h,08ah		;5dd0
	ld b,(hl)		;5dd2
	nop			;5dd3
	ld (hl),08ch		;5dd4
	ld b,0cfh		;5dd6
	ld (bc),a		;5dd8
	ld (hl),089h		;5dd9
	ld l,0cdh		;5ddb
	ld (bc),a		;5ddd
	ld h,0c4h		;5dde
	halt			;5de0
	ld (de),a		;5de1
	adc a,h			;5de2
	push bc			;5de3
	ld (hl),080h		;5de4
	ld a,024h		;5de6
sub_5de8h:
	ld bc,07500h		;5de8
	ld c,l			;5deb
	ld (hl),089h		;5dec
	ld h,001h		;5dee
	inc bc			;5df0
	ld d,007h		;5df1
	jp m,0fe36h		;5df3
	ld b,024h		;5df6
	ld bc,0fe36h		;5df8
	ld c,023h		;5dfb
	ld bc,08e36h		;5dfd
	ld d,0ffh		;5e00
	ld (bc),a		;5e02
	ld h,08bh		;5e03
	ld h,0fdh		;5e05
	ld (bc),a		;5e07
	call sub_2624h		;5e08
	adc a,c			;5e0b
	ld h,0fdh		;5e0c
	ld (bc),a		;5e0e
	ld h,08ch		;5e0f
	ld d,0ffh		;5e11
	ld (bc),a		;5e13
	adc a,h			;5e14
	call nz,0d48eh		;5e15
	ld (hl),08bh		;5e18
	ld h,001h		;5e1a
	inc bc			;5e1c
	ld (hl),0feh		;5e1d
	ld b,023h		;5e1f
	ld bc,0c636h		;5e21
	ld b,024h		;5e24
	ld bc,0fb00h		;5e26
	ld (hl),0c4h		;5e29
	ld l,0cdh		;5e2b
	ld (bc),a		;5e2d
	inc a			;5e2e
	ld (bc),a		;5e2f
l5e30h:
	ld (hl),h		;5e30
	dec bc			;5e31
	ld (hl),0c6h		;5e32
	ld b,025h		;5e34
	ld bc,0c3ffh		;5e36
	ld (0ebc0h),a		;5e39
	call pe,l1f15h+1	;5e3c
	add a,b			;5e3f
	ld a,026h		;5e40
	ld bc,07400h		;5e42
	inc bc			;5e45
	ret pe			;5e46
	ld b,e			;5e47
	ex de,hl		;5e48
	add a,006h		;5e49
	ld h,(hl)		;5e4b
	inc bc			;5e4c
	ld (bc),a		;5e4d
	adc a,(hl)		;5e4e
	ld e,08bh		;5e4f
	ld bc,0b01eh		;5e51
	ld (0a0e8h),hl		;5e54
	rst 18h			;5e57
	ld (hl),08ch		;5e58
	ld b,0cfh		;5e5a
	ld (bc),a		;5e5c
	ld (hl),089h		;5e5d
	ld e,0cdh		;5e5f
	ld (bc),a		;5e61
	ld (hl),08bh		;5e62
	ld e,08bh		;5e64
	ld bc,0db8eh		;5e66
	and c			;5e69
	ld d,000h		;5e6a
	ld e,c			;5e6c
	dec sp			;5e6d
	jp 02274h		;5e6e
	dec sp			;5e71
	exx			;5e72
	ld (hl),l		;5e73
	ld e,050h		;5e74
	ld (hl),080h		;5e76
	ld a,066h		;5e78
	inc bc			;5e7a
	inc bc			;5e7b
	ld (hl),h		;5e7c
	djnz $-22		;5e7d
	or c			;5e7f
	jp po,l14b9h		;5e80
	nop			;5e83
	adc a,e			;5e84
	exx			;5e85
	ld d,c			;5e86
	ld c,e			;5e87
	ret pe			;5e88
	ld h,010h		;5e89
	ld e,c			;5e8b
	jp po,l36f6h		;5e8c
	adc a,a			;5e8f
	ld b,08bh		;5e90
	ld bc,01f0eh		;5e92
	or b			;5e95
	rst 38h			;5e96
	ret pe			;5e97
	ld b,l			;5e98
	ld sp,hl		;5e99
	jp m,l06c5h+1		;5e9a
	inc hl			;5e9d
	ld bc,0c600h		;5e9e
	ld b,025h		;5ea1
	ld bc,08effh		;5ea3
	ld e,08bh		;5ea6
	ld bc,l168eh		;5ea8
	jr nc,l5eadh		;5eab
l5eadh:
	adc a,e			;5ead
	ld h,02eh		;5eae
	nop			;5eb0
	ret pe			;5eb1
	ld e,c			;5eb2
	exx			;5eb3
	ld e,b			;5eb4
	ld e,b			;5eb5
	ld e,b			;5eb6
	cp b			;5eb7
	ld (bc),a		;5eb8
	jp p,l2e50h		;5eb9
	rst 38h			;5ebc
	ld (hl),0cfh		;5ebd
	ld (bc),a		;5ebf
l5ec0h:
	ld l,0ffh		;5ec0
	ld (hl),0cdh		;5ec2
	ld (bc),a		;5ec4
	ei			;5ec5
	rst 8			;5ec6
	ld (hl),0c6h		;5ec7
	ld b,0d7h		;5ec9
	nop			;5ecb
	nop			;5ecc
	ld (0a8d2h),a		;5ecd
	ld (bc),a		;5ed0
	ld (hl),l		;5ed1
	inc b			;5ed2
	ld h,0c6h		;5ed3
l5ed5h:
	dec b			;5ed5
	nop			;5ed6
	ld b,a			;5ed7
	cp c			;5ed8
	ex af,af'		;5ed9
	nop			;5eda
	xor b			;5edb
	inc b			;5edc
	sub e			;5edd
	or b			;5ede
	jr nz,l5f55h		;5edf
	inc b			;5ee1
	inc bc			;5ee2
	ld sp,hl		;5ee3
	inc sp			;5ee4
	ret			;5ee5
	di			;5ee6
	xor d			;5ee7
	or c			;5ee8
	inc bc			;5ee9
	or 0c3h			;5eea
	ex af,af'		;5eec
	ld (hl),h		;5eed
	inc b			;5eee
	inc bc			;5eef
	ld sp,hl		;5ef0
	inc sp			;5ef1
l5ef2h:
	ret			;5ef2
	di			;5ef3
	xor d			;5ef4
	sub c			;5ef5
	xor e			;5ef6
	xor e			;5ef7
	add a,e			;5ef8
l5ef9h:
	rst 28h			;5ef9
	djnz l5ef2h		;5efa
	jp 07401h		;5efc
	add hl,bc		;5eff
	ret pe			;5f00
	ld (hl),e		;5f01
	nop			;5f02
	ret pe			;5f03
	add a,b			;5f04
	ld bc,l0475h		;5f05
	ld b,(hl)		;5f08
	ret pe			;5f09
	ld l,d			;5f0a
	nop			;5f0b
	ret pe			;5f0c
	ld c,c			;5f0d
	ld bc,l1676h		;5f0e
	add a,b			;5f11
	inc a			;5f12
	ld a,(l1175h)		;5f13
	ld b,(hl)		;5f16
	inc l			;5f17
	ld b,b			;5f18
	halt			;5f19
	rlca			;5f1a
l5f1bh:
	ld (hl),03ah		;5f1b
	ld b,000h		;5f1d
	ld bc,00276h		;5f1f
	or d			;5f22
	rst 38h			;5f23
	xor d			;5f24
	ld b,(hl)		;5f25
	ld c,a			;5f26
	ld c,(hl)		;5f27
	ld b,a			;5f28
	cp c			;5f29
	ex af,af'		;5f2a
	nop			;5f2b
	ret pe			;5f2c
	inc de			;5f2d
	nop			;5f2e
	add a,b			;5f2f
	inc a			;5f30
	ld l,075h		;5f31
	rlca			;5f33
	ld b,(hl)		;5f34
	cp c			;5f35
	inc bc			;5f36
	nop			;5f37
	ret pe			;5f38
	dec c			;5f39
	nop			;5f3a
	adc a,d			;5f3b
	jp nz,l03c3h		;5f3c
	ld sp,hl		;5f3f
	ld c,(hl)		;5f40
	jp 013e8h		;5f41
	ld bc,0f776h		;5f44
	ld c,(hl)		;5f47
	ret pe			;5f48
	dec c			;5f49
	ld bc,02372h		;5f4a
	ld (hl),l		;5f4d
	inc c			;5f4e
	ld (hl),0f6h		;5f4f
	ld b,0d7h		;5f51
	nop			;5f53
	rst 38h			;5f54
l5f55h:
	ld (hl),h		;5f55
	add hl,de		;5f56
	inc a			;5f57
	jr nz,l5fcfh		;5f58
	dec d			;5f5a
sub_5f5bh:
	ex (sp),hl		;5f5b
	ex de,hl		;5f5c
	ld c,c			;5f5d
	inc a			;5f5e
	ld hl,(l0475h)		;5f5f
	or b			;5f62
	ccf			;5f63
	di			;5f64
	xor d			;5f65
l5f66h:
	xor d			;5f66
	inc a			;5f67
	ccf			;5f68
	ld (hl),l		;5f69
	defb 0ddh,080h,0cah ;illegal sequence	;5f6a
	ld bc,0d8ebh		;5f6d
	or b			;5f70
	jr nz,l5f66h		;5f71
	xor d			;5f73
	ld c,(hl)		;5f74
	jp 0e8ach		;5f75
	inc l			;5f78
	ld bc,0fa74h		;5f79
	ld c,(hl)		;5f7c
	jp 0c636h		;5f7d
	ld b,0d7h		;5f80
	nop			;5f82
	ld bc,l0716h		;5f83
	cp a			;5f86
	pop de			;5f87
	ld (bc),a		;5f88
	ld d,a			;5f89
	or b			;5f8a
	jr nz,$-69		;5f8b
	dec bc			;5f8d
	nop			;5f8e
	di			;5f8f
	xor d			;5f90
	ld (08ac0h),a		;5f91
	ret nc			;5f94
	xor d			;5f95
	ld e,a			;5f96
	add a,b			;5f97
	inc a			;5f98
	ld l,075h		;5f99
	adc a,l			;5f9b
	and h			;5f9c
	xor h			;5f9d
	ret pe			;5f9e
	inc c			;5f9f
	ld bc,l1574h		;5fa0
	ld a,(bc)		;5fa3
	ret nz			;5fa4
	ld (hl),h		;5fa5
	ld de,l2e3ch		;5fa6
	ld (hl),l		;5fa9
l5faah:
	inc c			;5faa
	xor d			;5fab
	xor h			;5fac
	ret pe			;5fad
l5faeh:
	defb 0fdh,000h,074h ;illegal sequence	;5fae
	ld b,00ah		;5fb1
	ret nz			;5fb3
	ld (hl),h		;5fb4
	ld (bc),a		;5fb5
	ld c,(hl)		;5fb6
	ld c,(hl)		;5fb7
	ld c,(hl)		;5fb8
	ld (0c3c0h),a		;5fb9
	cp b			;5fbc
	jr nz,l5fdfh		;5fbd
	cp a			;5fbf
	exx			;5fc0
	ld (bc),a		;5fc1
	xor e			;5fc2
	xor d			;5fc3
	inc sp			;5fc4
	ret nz			;5fc5
	cp c			;5fc6
	ld a,(bc)		;5fc7
	nop			;5fc8
	di			;5fc9
	xor e			;5fca
	xor d			;5fcb
	ret pe			;5fcc
	push bc			;5fcd
	ex af,af'		;5fce
l5fcfh:
	cp a			;5fcf
	rst 20h			;5fd0
	ld (bc),a		;5fd1
	sub d			;5fd2
	xor e			;5fd3
	sub d			;5fd4
	xor e			;5fd5
	sub e			;5fd6
	cp e			;5fd7
	pop de			;5fd8
	ld (bc),a		;5fd9
	adc a,e			;5fda
	rst 30h			;5fdb
	ld (0c3c0h),a		;5fdc
l5fdfh:
	cp a			;5fdf
	ld bc,0eb00h		;5fe0
	ld (bc),a		;5fe3
	inc sp			;5fe4
	rst 38h			;5fe5
	ld (hl),0c7h		;5fe6
	ld b,0fah		;5fe8
	ld (bc),a		;5fea
	nop			;5feb
	push hl			;5fec
	adc a,e			;5fed
l5feeh:
	jp p,l36ach		;5fee
	and d			;5ff1
	ld sp,hl		;5ff2
	ld (bc),a		;5ff3
	ld (l3ce4h),a		;5ff4
	rst 38h			;5ff7
	ld (hl),l		;5ff8
	ld a,(bc)		;5ff9
	add a,e			;5ffa
	jp nz,08307h		;5ffb
	add a,006h		;5ffe
	adc a,d			;6000
	ld h,h			;6001
	rst 38h			;6002
	xor h			;6003
	ret pe			;6004
	sub h			;6005
	call pe,0d572h		;6006
	ld e,052h		;6009
	ld d,(hl)		;600b
	ld d,b			;600c
	ld d,a			;600d
	ld d,007h		;600e
	cp a			;6010
	pop de			;6011
	ld (bc),a		;6012
	ret pe			;6013
	jr z,l6016h		;6014
l6016h:
	ld e,a			;6016
	ld (hl),d		;6017
	rla			;6018
	dec bc			;6019
	rst 38h			;601a
	ld (hl),l		;601b
	inc de			;601c
	ld d,01fh		;601d
	ret pe			;601f
	nop			;6020
	call po,sub_0c72h+1	;6021
	ret pe			;6024
	ret nz			;6025
	jp p,0c636h		;6026
	ld b,0ddh		;6029
	ld (bc),a		;602b
	ld d,0e8h		;602c
	ld (hl),d		;602e
	and 058h		;602f
	ld (hl),088h		;6031
	ld h,0ddh		;6033
	ld (bc),a		;6035
	ld e,(hl)		;6036
	ld e,d			;6037
	rra			;6038
	ld d,007h		;6039
l603bh:
	cp a			;603b
	pop de			;603c
	ld (bc),a		;603d
	add a,b			;603e
	inc a			;603f
	jr nz,l603bh		;6040
	ld (hl),h		;6042
	sbc a,d			;6043
	cp c			;6044
	dec bc			;6045
	nop			;6046
	ret pe			;6047
	ld c,000h		;6048
l604ah:
	ld (hl),d		;604a
	dec bc			;604b
	ld (hl),l		;604c
	dec b			;604d
	inc a			;604e
	jr nz,l604ah		;604f
	ld (hl),l		;6051
	adc a,e			;6052
	xor d			;6053
	jp po,0f8f1h		;6054
	jp l3cach		;6057
	ld h,c			;605a
	ld (hl),d		;605b
	ld b,03ch		;605c
	ld a,d			;605e
	ld (hl),a		;605f
	ld (bc),a		;6060
	inc l			;6061
	jr nz,$+88		;6062
	ld (hl),08bh		;6064
	ld (hl),0a4h		;6066
	ld bc,0c683h		;6068
	ld (de),a		;606b
	ld c,02eh		;606c
	rst 38h			;606e
	inc d			;606f
l6070h:
	ld e,(hl)		;6070
	inc a			;6071
	ld l,074h		;6072
	jp po,0223ch		;6074
	ld (hl),h		;6077
	sbc a,0e8h		;6078
	ld sp,07400h		;607a
	exx			;607d
	inc a			;607e
	ld e,e			;607f
	ld (hl),h		;6080
	push de			;6081
	inc a			;6082
	ld e,l			;6083
	ld (hl),h		;6084
	pop de			;6085
	inc a			;6086
	ld a,(0cd74h)		;6087
	inc a			;608a
	inc a			;608b
	ld (hl),h		;608c
	ret			;608d
	inc a			;608e
	ld a,h			;608f
	ld (hl),h		;6090
	push bc			;6091
	inc a			;6092
	ld a,074h		;6093
	pop bc			;6095
	inc a			;6096
	dec hl			;6097
	ld (hl),h		;6098
	cp l			;6099
	inc a			;609a
	dec a			;609b
	ld (hl),h		;609c
	cp c			;609d
	inc a			;609e
	dec sp			;609f
	ld (hl),h		;60a0
	or l			;60a1
	inc a			;60a2
	inc l			;60a3
	ld (hl),h		;60a4
	or c			;60a5
	inc a			;60a6
	add hl,bc		;60a7
	ld (hl),h		;60a8
	xor l			;60a9
	inc a			;60aa
	jr nz,l6070h		;60ab
	inc a			;60ad
	cpl			;60ae
	ld (hl),h		;60af
	ei			;60b0
	inc a			;60b1
	ld e,h			;60b2
	jp 0a136h		;60b3
	ld h,h			;60b6
	inc bc			;60b7
	inc sp			;60b8
	jp nc,08936h		;60b9
	ld d,064h		;60bc
	inc bc			;60be
	jp (hl)			;60bf
	call nc,000d8h		;60c0
	nop			;60c3
	nop			;60c4
	nop			;60c5
	nop			;60c6
	nop			;60c7
	nop			;60c8
	nop			;60c9
	nop			;60ca
	nop			;60cb
	nop			;60cc
	nop			;60cd
	nop			;60ce
	nop			;60cf
	nop			;60d0
	nop			;60d1
	nop			;60d2
	nop			;60d3
	nop			;60d4
	nop			;60d5
	nop			;60d6
	nop			;60d7
	nop			;60d8
	nop			;60d9
	nop			;60da
	nop			;60db
	nop			;60dc
	nop			;60dd
	nop			;60de
	nop			;60df
	nop			;60e0
	nop			;60e1
	nop			;60e2
	nop			;60e3
	nop			;60e4
	nop			;60e5
	nop			;60e6
	nop			;60e7
l60e8h:
	nop			;60e8
	nop			;60e9
	nop			;60ea
	nop			;60eb
	nop			;60ec
	nop			;60ed
	nop			;60ee
	nop			;60ef
	nop			;60f0
	nop			;60f1
	nop			;60f2
	nop			;60f3
	nop			;60f4
	nop			;60f5
	nop			;60f6
	nop			;60f7
	nop			;60f8
	nop			;60f9
	inc a			;60fa
	inc bc			;60fb
	halt			;60fc
	rlca			;60fd
	or b			;60fe
	ld bc,09de9h		;60ff
	ret c			;6102
	ex de,hl		;6103
	ei			;6104
	inc a			;6105
	ld (bc),a		;6106
	ld (hl),h		;6107
	push af			;6108
	ld (hl),089h		;6109
	ld e,061h		;610b
	cpl			;610d
	ld (hl),08ch		;610e
	ld b,063h		;6110
	cpl			;6112
	ld (hl),0a2h		;6113
	ld h,l			;6115
	cpl			;6116
	ld (hl),0c6h		;6117
	ld b,07ah		;6119
	cpl			;611b
	nop			;611c
	ld (0e8c0h),a		;611d
	ld l,e			;6120
	add hl,bc		;6121
	ld (hl),d		;6122
	rst 18h			;6123
	ld (hl),0a3h		;6124
	ld h,(hl)		;6126
	cpl			;6127
	adc a,e			;6128
	ret c			;6129
	ld (0e8c0h),a		;612a
	jp z,0f60eh		;612d
	jp nz,07480h		;6130
	inc b			;6133
	or b			;6134
	ld (bc),a		;6135
	ex de,hl		;6136
	defb 0cbh,036h ;sli (hl)	;6137
	rst 0			;6139
	ld b,078h		;613a
	cpl			;613c
	nop			;613d
sub_613eh:
	nop			;613e
	ld (hl),0f6h		;613f
	ld b,065h		;6141
	cpl			;6143
	ld (bc),a		;6144
	ld (hl),l		;6145
	ld d,d			;6146
	ld (hl),0c5h		;6147
	ld (hl),061h		;6149
	cpl			;614b
	adc a,e			;614c
	inc b			;614d
	dec bc			;614e
	ret nz			;614f
	ld (hl),l		;6150
	djnz l6189h		;6151
	adc a,(hl)		;6153
	ld e,08bh		;6154
	ld bc,l2ca1h		;6156
	nop			;6159
	ld (hl),0a3h		;615a
	ld (hl),h		;615c
	cpl			;615d
	dec bc			;615e
	ret nz			;615f
	ld (hl),h		;6160
	scf			;6161
	call m,0c08eh		;6162
	inc sp			;6165
	rst 38h			;6166
	cp c			;6167
	rst 38h			;6168
	ld a,a			;6169
	ld (0f2c0h),a		;616a
	xor (hl)		;616d
	ld (hl),h		;616e
	dec b			;616f
	or b			;6170
	ld a,(bc)		;6171
	jp (hl)			;6172
	adc a,(hl)		;6173
	nop			;6174
	xor (hl)		;6175
	ld (hl),l		;6176
	call p,08b57h		;6177
	rst 18h			;617a
	add a,e			;617b
	jp 0b10fh		;617c
	inc b			;617f
	out (0ebh),a		;6180
	ld b,0e8h		;6182
	ld a,(bc)		;6184
	ret po			;6185
	rra			;6186
	ld e,c			;6187
	ld (hl),e		;6188
l6189h:
	inc bc			;6189
	ex de,hl		;618a
	ld (hl),c		;618b
	sub b			;618c
	adc a,(hl)		;618d
	ret nz			;618e
	ld (hl),0a3h		;618f
	ld (hl),h		;6191
	cpl			;6192
	inc sp			;6193
	or 033h			;6194
	rst 38h			;6196
	di			;6197
	and h			;6198
	ld d,01fh		;6199
	cp c			;619b
	ld e,000h		;619c
	adc a,e			;619e
	ld e,066h		;619f
	cpl			;61a1
	cp d			;61a2
	ld a,e			;61a3
	cpl			;61a4
	ld b,01eh		;61a5
	ret pe			;61a7
	ld (hl),d		;61a8
	inc bc			;61a9
	ret pe			;61aa
	and h			;61ab
	dec c			;61ac
	ret pe			;61ad
	ld (hl),l		;61ae
	inc bc			;61af
	rra			;61b0
	rlca			;61b1
	ld (hl),d		;61b2
	ld c,l			;61b3
	dec a			;61b4
	ld e,000h		;61b5
	ld (hl),l		;61b7
	add hl,de		;61b8
	add a,e			;61b9
	ld a,087h		;61ba
	cpl			;61bc
	nop			;61bd
	ld (hl),l		;61be
	dec b			;61bf
	add a,006h		;61c0
	ld a,d			;61c2
	cpl			;61c3
	rst 38h			;61c4
	and c			;61c5
	ld a,e			;61c6
	cpl			;61c7
	dec a			;61c8
	ld c,l			;61c9
	ld e,d			;61ca
	ld (hl),h		;61cb
	ex af,af'		;61cc
	dec a			;61cd
	ld e,d			;61ce
	ld c,l			;61cf
	ld (hl),h		;61d0
	inc bc			;61d1
	jp (hl)			;61d2
	ld a,l			;61d3
	ld bc,07fa1h		;61d4
	cpl			;61d7
	or c			;61d8
	dec b			;61d9
	out (0e0h),a		;61da
	dec hl			;61dc
	ld b,083h		;61dd
	cpl			;61df
	and e			;61e0
	ld l,d			;61e1
	cpl			;61e2
	or 006h			;61e3
	ld h,l			;61e5
	cpl			;61e6
	ld (bc),a		;61e7
	ld (hl),h		;61e8
	add hl,hl		;61e9
	call nz,sub_613eh	;61ea
	cpl			;61ed
	ld h,08bh		;61ee
	dec b			;61f0
	and e			;61f1
	sub a			;61f2
	cpl			;61f3
	ld h,08bh		;61f4
	ld b,l			;61f6
	ld (bc),a		;61f7
	and e			;61f8
	ld l,b			;61f9
	cpl			;61fa
	ex de,hl		;61fb
	ld a,b			;61fc
	or b			;61fd
	ex af,af'		;61fe
	ex de,hl		;61ff
	ld (bc),a		;6200
	or b			;6201
	dec bc			;6202
	ld d,b			;6203
	ld (hl),08bh		;6204
	ld e,066h		;6206
	cpl			;6208
	ret pe			;6209
	djnz l620fh		;620a
	ret pe			;620c
	and d			;620d
	inc c			;620e
l620fh:
	ld e,b			;620f
	jp (hl)			;6210
	adc a,l			;6211
	rst 10h			;6212
	ld d,b			;6213
	cp e			;6214
	rst 38h			;6215
	rst 38h			;6216
	ld e,0e8h		;6217
	ld (hl),l		;6219
	rst 18h			;621a
	rra			;621b
	ld e,b			;621c
	dec b			;621d
	djnz l6220h		;621e
l6220h:
	add a,e			;6220
	ei			;6221
	ld de,0d872h		;6222
	dec sp			;6225
	jp 0d477h		;6226
	add a,b			;6229
	ld a,07ah		;622a
	cpl			;622c
	nop			;622d
	ld (hl),l		;622e
	jr l6234h		;622f
	ld b,085h		;6231
	cpl			;6233
l6234h:
	ld (hl),d		;6234
	rst 0			;6235
	dec sp			;6236
	jp 0c377h		;6237
	dec hl			;623a
	ld b,085h		;623b
	cpl			;623d
	inc bc			;623e
	ld b,087h		;623f
	cpl			;6241
	ld (hl),d		;6242
	inc b			;6243
	dec sp			;6244
	jp 00276h		;6245
	adc a,e			;6248
	jp 08b1eh		;6249
	ret c			;624c
	adc a,c			;624d
	ld e,076h		;624e
	cpl			;6250
	ret pe			;6251
	inc a			;6252
	rst 18h			;6253
	rra			;6254
	ld (hl),d		;6255
	and (hl)		;6256
	and e			;6257
	ld a,b			;6258
	cpl			;6259
	dec b			;625a
	djnz l625dh		;625b
l625dh:
	add a,b			;625d
	ld a,07ah		;625e
	cpl			;6260
	nop			;6261
	ld (hl),h		;6262
	dec bc			;6263
	inc bc			;6264
	ld b,076h		;6265
	cpl			;6267
	dec hl			;6268
	ld b,06ah		;6269
	cpl			;626b
	dec l			;626c
	djnz l626fh		;626d
l626fh:
	and e			;626f
	ld l,b			;6270
	cpl			;6271
	and e			;6272
	sub a			;6273
	cpl			;6274
	adc a,e			;6275
	ld d,083h		;6276
	cpl			;6278
	ld d,d			;6279
	or c			;627a
	inc b			;627b
	out (0e2h),a		;627c
	ld e,b			;627e
	or c			;627f
	inc c			;6280
	out (0e8h),a		;6281
	adc a,e			;6283
	ret z			;6284
	adc a,e			;6285
	ld e,066h		;6286
	cpl			;6288
	ld e,032h		;6289
	ret nz			;628b
	ret pe			;628c
	jr l629ch		;628d
	rra			;628f
	adc a,e			;6290
	ld e,06ah		;6291
	cpl			;6293
	add a,c			;6294
	ei			;6295
	nop			;6296
	djnz l630bh		;6297
	inc bc			;6299
	cp e			;629a
	ret po			;629b
l629ch:
	rrca			;629c
	add hl,hl		;629d
	ld e,06ah		;629e
	cpl			;62a0
	ld d,e			;62a1
	or c			;62a2
	inc b			;62a3
	out (0e3h),a		;62a4
	adc a,e			;62a6
	res 1,e			;62a7
	ld e,066h		;62a9
	cpl			;62ab
	ld e,08eh		;62ac
	ld e,097h		;62ae
	cpl			;62b0
	inc sp			;62b1
	jp nc,0e851h		;62b2
	ld h,l			;62b5
	ld (bc),a		;62b6
	ret pe			;62b7
	sub a			;62b8
	inc c			;62b9
	ret pe			;62ba
	ld l,b			;62bb
	ld (bc),a		;62bc
	ld e,c			;62bd
	rra			;62be
	dec sp			;62bf
	ret z			;62c0
	ld e,e			;62c1
	ld (hl),l		;62c2
	dec bc			;62c3
	ld bc,0971eh		;62c4
	cpl			;62c7
	add a,e			;62c8
	ld a,06ah		;62c9
	cpl			;62cb
	nop			;62cc
	ld (hl),l		;62cd
	pop bc			;62ce
	adc a,e			;62cf
	ld c,068h		;62d0
	cpl			;62d2
	and c			;62d3
	adc a,c			;62d4
	cpl			;62d5
	inc bc			;62d6
	pop bc			;62d7
	and e			;62d8
	ld (hl),d		;62d9
	cpl			;62da
	and c			;62db
	adc a,e			;62dc
	cpl			;62dd
	and e			;62de
	ld (hl),b		;62df
	cpl			;62e0
	call nz,08f06h		;62e1
	cpl			;62e4
	and e			;62e5
	ld l,h			;62e6
	cpl			;62e7
l62e8h:
	adc a,h			;62e8
	ret nz			;62e9
	inc bc			;62ea
	pop bc			;62eb
	and e			;62ec
	ld l,(hl)		;62ed
	cpl			;62ee
	inc sp			;62ef
	ret			;62f0
	adc a,e			;62f1
	ld d,093h		;62f2
	cpl			;62f4
	adc a,e			;62f5
	ld e,066h		;62f6
	cpl			;62f8
	ld e,033h		;62f9
	ret nz			;62fb
	ret pe			;62fc
	xor b			;62fd
	inc c			;62fe
	rra			;62ff
	ld (hl),e		;6300
	inc bc			;6301
	jp (hl)			;6302
	call m,08bfeh		;6303
	ld d,081h		;6306
	cpl			;6308
	ld d,d			;6309
l630ah:
	cp d			;630a
l630bh:
	ld a,e			;630b
	cpl			;630c
	cp c			;630d
	inc e			;630e
	nop			;630f
	ld (hl),08bh		;6310
	ld e,066h		;6312
	cpl			;6314
	ld e,0e8h		;6315
	inc bc			;6317
	ld (bc),a		;6318
	ret pe			;6319
	dec (hl)		;631a
	inc c			;631b
	ret pe			;631c
	ld b,002h		;631d
	rlca			;631f
	ld e,d			;6320
	ld (hl),d		;6321
l6322h:
	rst 18h			;6322
	cp c			;6323
	rlca			;6324
	nop			;6325
	cp a			;6326
	ld a,e			;6327
	cpl			;6328
	ld (hl),08bh		;6329
	ld (hl),068h		;632b
	cpl			;632d
	add a,e			;632e
	jp m,07500h		;632f
	inc bc			;6332
	jp (hl)			;6333
	cp b			;6334
	nop			;6335
	ld h,0c5h		;6336
	dec e			;6338
	adc a,h			;6339
	ret c			;633a
	inc bc			;633b
	add a,08eh		;633c
	ret c			;633e
	adc a,e			;633f
	rlca			;6340
	inc bc			;6341
	add a,089h		;6342
	rlca			;6344
	add a,e			;6345
	rst 0			;6346
	inc b			;6347
	ld c,d			;6348
	jp po,l06e3h		;6349
	rra			;634c
	ex de,hl		;634d
	cp d			;634e
	jp (hl)			;634f
	xor e			;6350
	cp 036h			;6351
	or 006h			;6353
	ld h,l			;6355
	cpl			;6356
	ld (bc),a		;6357
	ld (hl),h		;6358
	inc c			;6359
	ld (hl),0c5h		;635a
	ld (hl),061h		;635c
	cpl			;635e
	xor l			;635f
	ld (hl),0a3h		;6360
	sub a			;6362
	cpl			;6363
	ex de,hl		;6364
	jr nc,l6322h		;6365
	rst 38h			;6367
	rst 38h			;6368
	ret pe			;6369
	inc h			;636a
	sbc a,00bh		;636b
	in a,(074h)		;636d
	rst 18h			;636f
	ld (hl),089h		;6370
	ld e,076h		;6372
	cpl			;6374
	ld d,e			;6375
	ret pe			;6376
	rla			;6377
	sbc a,05bh		;6378
	ld (hl),0a3h		;637a
	ld a,b			;637c
	cpl			;637d
	dec b			;637e
	djnz l6381h		;637f
l6381h:
	ld (hl),0a3h		;6381
	sub a			;6383
	cpl			;6384
	add a,e			;6385
	ex de,hl		;6386
	djnz l630ah		;6387
	ei			;6389
	nop			;638a
	djnz l6400h		;638b
	ex af,af'		;638d
	adc a,e			;638e
	jp l04b1h		;638f
	out (0e0h),a		;6392
	ex de,hl		;6394
	inc bc			;6395
	cp b			;6396
	rst 38h			;6397
	rst 38h			;6398
	ld d,b			;6399
	ld (hl),08bh		;639a
	ld e,066h		;639c
	cpl			;639e
	inc sp			;639f
	ret			;63a0
	adc a,e			;63a1
	pop de			;63a2
	inc sp			;63a3
	ret nz			;63a4
	ret pe			;63a5
	rst 38h			;63a6
	dec bc			;63a7
	ld (hl),08bh		;63a8
	ld e,066h		;63aa
	cpl			;63ac
	ld e,c			;63ad
	ld (hl),08eh		;63ae
	ld e,097h		;63b0
	cpl			;63b2
	inc sp			;63b3
	jp nc,0e851h		;63b4
	ld h,e			;63b7
	ld bc,095e8h		;63b8
	dec bc			;63bb
	ret pe			;63bc
	ld h,(hl)		;63bd
	ld bc,l3b5eh		;63be
	add a,074h		;63c1
	adc a,e			;63c3
	ld (hl),0f6h		;63c4
	ld b,065h		;63c6
	cpl			;63c8
	ld (bc),a		;63c9
	ld (hl),l		;63ca
	ld (0a136h),hl		;63cb
	sub a			;63ce
	cpl			;63cf
	dec l			;63d0
	djnz l63d3h		;63d1
l63d3h:
	ld (hl),0a3h		;63d3
	ld l,(hl)		;63d5
	cpl			;63d6
	ld (hl),0c7h		;63d7
	ld b,06ch		;63d9
	cpl			;63db
	nop			;63dc
	ld bc,l364eh		;63dd
	adc a,c			;63e0
	ld (hl),070h		;63e1
	cpl			;63e3
	ld (hl),0a3h		;63e4
	ld (hl),d		;63e6
	cpl			;63e7
	adc a,(hl)		;63e8
	ret c			;63e9
	rst 0			;63ea
	inc b			;63eb
	nop			;63ec
	nop			;63ed
	ld (hl),08bh		;63ee
	ld e,066h		;63f0
	cpl			;63f2
	ret pe			;63f3
	ld h,001h		;63f4
	ret pe			;63f6
	cp b			;63f7
	ld a,(bc)		;63f8
	ret pe			;63f9
	add hl,hl		;63fa
	ld bc,0f636h		;63fb
	ld b,065h		;63fe
l6400h:
	cpl			;6400
	ld (bc),a		;6401
	ld (hl),h		;6402
	inc bc			;6403
	jp (hl)			;6404
	adc a,a			;6405
	push de			;6406
	ld (hl),08bh		;6407
	ld d,078h		;6409
	cpl			;640b
	cp (hl)			;640c
	ld bc,sub_3600h		;640d
	and c			;6410
	ld (hl),h		;6411
	cpl			;6412
	dec bc			;6413
	ret nz			;6414
	ld (hl),h		;6415
	dec b			;6416
	ld c,b			;6417
	adc a,(hl)		;6418
	ret c			;6419
	adc a,c			;641a
	inc d			;641b
	ld (hl),0a1h		;641c
	ld a,b			;641e
	cpl			;641f
	ld c,b			;6420
	adc a,(hl)		;6421
	ret c			;6422
	adc a,c			;6423
	inc d			;6424
	ld d,d			;6425
	ld (hl),0c6h		;6426
	ld b,08dh		;6428
	ld bc,0e8ffh		;642a
	ret z			;642d
	rst 10h			;642e
	ld e,d			;642f
	ld (hl),0ffh		;6430
	ld (hl),074h		;6432
	cpl			;6434
	ld h,08fh		;6435
	ld b,02ch		;6437
	nop			;6439
	ld (hl),08bh		;643a
	ld (hl),076h		;643c
	cpl			;643e
	inc bc			;643f
	jp p,08926h		;6440
	ld (hl),002h		;6443
	nop			;6445
	ld (hl),0c5h		;6446
	ld (hl),061h		;6448
	cpl			;644a
	ld e,056h		;644b
	push bc			;644d
	ld (hl),h		;644e
	ld b,0b9h		;644f
	inc c			;6451
	nop			;6452
	ld d,c			;6453
	cp a			;6454
	ld e,h			;6455
	nop			;6456
	adc a,d			;6457
	inc e			;6458
	di			;6459
	and h			;645a
	inc sp			;645b
	ret nz			;645c
	xor e			;645d
	xor e			;645e
	ld e,c			;645f
	ld e,(hl)		;6460
	rra			;6461
	ld e,056h		;6462
	push bc			;6464
	ld (hl),h		;6465
	ld a,(bc)		;6466
	cp a			;6467
	ld l,h			;6468
	nop			;6469
	adc a,d			;646a
	inc a			;646b
	di			;646c
	and h			;646d
	xor e			;646e
	xor e			;646f
	ld e,(hl)		;6470
	rra			;6471
	push bc			;6472
	ld (hl),h		;6473
	ld (bc),a		;6474
	cp c			;6475
	add a,b			;6476
	nop			;6477
	adc a,e			;6478
	ld sp,hl		;6479
	di			;647a
	and h			;647b
	cp 0c9h			;647c
	ld (hl),03ah		;647e
	ld a,000h		;6480
	ld bc,l0476h		;6482
	adc a,d			;6485
	ld sp,hl		;6486
	ex de,hl		;6487
	ld (bc),a		;6488
	ld (l36ffh),a		;6489
	ld a,(0001eh)		;648c
	ld bc,l0476h		;648f
	adc a,d			;6492
	exx			;6493
	ex de,hl		;6494
	ld (bc),a		;6495
	ld (0e8dbh),a		;6496
	sub (hl)		;6499
	out (0ffh),a		;649a
	ld (hl),h		;649c
	inc d			;649d
	rst 38h			;649e
	ld (hl),h		;649f
	ld (de),a		;64a0
	rst 38h			;64a1
	ld (hl),h		;64a2
	inc d			;64a3
	rst 38h			;64a4
	ld (hl),h		;64a5
	ld (de),a		;64a6
	ld h,08fh		;64a7
	ld b,00ah		;64a9
	nop			;64ab
	ld h,08fh		;64ac
	ld b,00ch		;64ae
	nop			;64b0
	inc sp			;64b1
	ret nz			;64b2
	adc a,(hl)		;64b3
	ret c			;64b4
	adc a,a			;64b5
	ld b,088h		;64b6
	nop			;64b8
	adc a,a			;64b9
	ld b,08ah		;64ba
	nop			;64bc
	ld (hl),0c7h		;64bd
	ld b,0dfh		;64bf
	nop			;64c1
	add a,b			;64c2
	nop			;64c3
	ld (hl),08eh		;64c4
	ld e,08bh		;64c6
	ld bc,08c36h		;64c8
	ld e,0e1h		;64cb
	nop			;64cd
	ld (hl),0f6h		;64ce
	ld b,065h		;64d0
	cpl			;64d2
	ld bc,02674h		;64d3
	ld (hl),0c5h		;64d6
	ld (hl),070h		;64d8
	cpl			;64da
	ld (hl),0c4h		;64db
	ld a,061h		;64dd
	cpl			;64df
	ld h,08ch		;64e0
	ld e,l			;64e2
	djnz $+80		;64e3
	ld c,(hl)		;64e5
	adc a,c			;64e6
	inc e			;64e7
	ld h,089h		;64e8
	ld (hl),l		;64ea
	ld c,036h		;64eb
	push bc			;64ed
	ld b,06ch		;64ee
	cpl			;64f0
	ld h,08ch		;64f1
	ld e,l			;64f3
	inc d			;64f4
	ld h,089h		;64f5
	ld b,l			;64f7
	ld (de),a		;64f8
	jp (hl)			;64f9
	sbc a,d			;64fa
	call nc,0c536h		;64fb
	ld (hl),06ch		;64fe
	cpl			;6500
	jp m,0c636h		;6501
	ld b,023h		;6504
	ld bc,sub_3600h		;6506
	adc a,(hl)		;6509
	ld d,072h		;650a
	cpl			;650c
	ld l,08bh		;650d
	ld h,070h		;650f
	cpl			;6511
	ei			;6512
	ld e,056h		;6513
	adc a,(hl)		;6515
	jp nz,0da8eh		;6516
	adc a,e			;6519
	jp l53cbh		;651a
	cp e			;651d
	nop			;651e
	nop			;651f
	ret pe			;6520
	dec c			;6521
	nop			;6522
	ld e,e			;6523
	jp l2e53h		;6524
	adc a,e			;6527
	ld e,08bh		;6528
	ld bc,l02e8h		;652a
	nop			;652d
	ld e,e			;652e
	jp l501eh		;652f
	ld l,0a1h		;6532
	ld (hl),h		;6534
	cpl			;6535
	dec bc			;6536
	ret nz			;6537
	ld (hl),h		;6538
	rlca			;6539
	ld c,b			;653a
	adc a,(hl)		;653b
	ret c			;653c
	adc a,c			;653d
	ld e,001h		;653e
	nop			;6540
	ld l,0a1h		;6541
	ld a,b			;6543
	cpl			;6544
	dec bc			;6545
	ret nz			;6546
	ld (hl),h		;6547
	rlca			;6548
	ld c,b			;6549
	adc a,(hl)		;654a
	ret c			;654b
	adc a,c			;654c
	ld e,001h		;654d
	nop			;654f
	ld e,b			;6550
	rra			;6551
	jp l3650h		;6552
	add a,006h		;6555
	ld h,(hl)		;6557
	inc bc			;6558
	inc bc			;6559
	ld (hl),08eh		;655a
	ld b,08bh		;655c
	ld bc,0fa83h		;655e
	ld b,073h		;6561
	inc bc			;6563
	cp d			;6564
	ld b,000h		;6565
	adc a,e			;6567
	jp c,00653h		;6568
	ret pe			;656b
	rrca			;656c
	defb 0ddh,01fh,05bh ;illegal sequence	;656d
	ld (hl),d		;6570
	rlca			;6571
	adc a,h			;6572
	ret c			;6573
l6574h:
	inc bc			;6574
	jp l02a3h		;6575
	nop			;6578
	ld e,b			;6579
	ex de,hl		;657a
	inc h			;657b
	cp b			;657c
	nop			;657d
	ld sp,0c283h		;657e
	rrca			;6581
	or c			;6582
	inc b			;6583
	out (0eah),a		;6584
	jp (hl)			;6586
	sub c			;6587
	pop de			;6588
	ld (l36e4h),a		;6589
	add a,(hl)		;658c
	ld h,0d6h		;658d
	nop			;658f
	ld a,(bc)		;6590
	call po,0c636h		;6591
	ld b,066h		;6594
	inc bc			;6596
	nop			;6597
	ld (hl),h		;6598
	ld b,036h		;6599
	add a,006h		;659b
	ld h,(hl)		;659d
	inc bc			;659e
	ld bc,08ee8h		;659f
	jp nc,0ff36h		;65a2
	ld (hl),08bh		;65a5
	ld bc,l448fh		;65a7
	inc d			;65aa
	jp (hl)			;65ab
	ld a,d			;65ac
	call nc,0d0e8h		;65ad
	nop			;65b0
	ld d,b			;65b1
	ret pe			;65b2
	inc b			;65b3
	nop			;65b4
	ld e,b			;65b5
	jp 0c28ah		;65b6
	inc a			;65b9
	jr nz,l662eh		;65ba
	ld b,e			;65bc
	inc a			;65bd
	ld a,a			;65be
	ld (hl),h		;65bf
	dec b			;65c0
	ld (hl),0feh		;65c1
	ld b,0d8h		;65c3
	nop			;65c5
	ld e,056h		;65c6
	ld (hl),0feh		;65c8
	ld b,0deh		;65ca
	nop			;65cc
	ld (hl),080h		;65cd
	ld h,0deh		;65cf
	nop			;65d1
	inc bc			;65d2
	ld (hl),l		;65d3
	dec b			;65d4
	ld d,b			;65d5
	ret pe			;65d6
	xor e			;65d7
	or 058h			;65d8
	ret pe			;65da
	jp l5ed5h		;65db
	rra			;65de
	ld (hl),0f6h		;65df
	ld b,0dah		;65e1
	nop			;65e3
	rst 38h			;65e4
	ld (hl),h		;65e5
	rst 8			;65e6
	ld d,e			;65e7
l65e8h:
	ld e,056h		;65e8
	cp e			;65ea
	ld bc,0e800h		;65eb
	sbc a,b			;65ee
	and 072h		;65ef
	inc c			;65f1
	or 044h			;65f2
	jr $-126		;65f4
	ld (hl),h		;65f6
	ld b,0bbh		;65f7
	inc b			;65f9
	nop			;65fa
	ex de,hl		;65fb
	ld a,l			;65fc
	jp 07debh		;65fd
	inc a			;6600
	dec c			;6601
	ld (hl),h		;6602
	jr nz,l6641h		;6603
	ex af,af'		;6605
l6606h:
	ld (hl),h		;6606
	ld h,03ch		;6607
	add hl,bc		;6609
	ld (hl),l		;660a
	cp d			;660b
	ld (hl),0a0h		;660c
	ret c			;660e
	nop			;660f
	inc c			;6610
	ret m			;6611
	or 0d8h			;6612
	ld d,c			;6614
	adc a,d			;6615
	ret z			;6616
	or l			;6617
	nop			;6618
	ex (sp),hl		;6619
	rlca			;661a
	or b			;661b
	jr nz,l6606h		;661c
	sbc a,c			;661e
	rst 38h			;661f
	jp po,l59f9h		;6620
	jp 0c636h		;6623
	ld b,0d8h		;6626
	nop			;6628
	nop			;6629
	ex de,hl		;662a
	sbc a,d			;662b
	ex de,hl		;662c
	adc a,e			;662d
l662eh:
	ld (hl),0feh		;662e
	ld c,0d8h		;6630
	nop			;6632
	ex de,hl		;6633
	sub c			;6634
	inc a			;6635
	jr nz,$+117		;6636
	di			;6638
	inc a			;6639
	add hl,bc		;663a
	ld (hl),h		;663b
	rst 28h			;663c
	ld d,b			;663d
	or b			;663e
	ld e,(hl)		;663f
	ret pe			;6640
l6641h:
	halt			;6641
	rst 38h			;6642
	ld e,b			;6643
	inc c			;6644
	ld b,b			;6645
	ret pe			;6646
	ld (hl),b		;6647
	rst 38h			;6648
	jp l37e8h		;6649
	or 0bbh			;664c
	inc bc			;664e
	nop			;664f
	ret pe			;6650
	dec (hl)		;6651
	and 072h		;6652
	call p,l03ebh		;6654
	ret pe			;6657
	dec d			;6658
	or 0b4h			;6659
	ld bc,l72e8h		;665b
	call c,0f674h		;665e
	ld (0e8e4h),a		;6661
	ld l,e			;6664
	call c,sub_53c3h	;6665
	cp e			;6668
	inc bc			;6669
	nop			;666a
	ex de,hl		;666b
	inc b			;666c
	ld d,e			;666d
	cp e			;666e
	inc b			;666f
	nop			;6670
	adc a,d			;6671
	jp nz,0e850h		;6672
	dec c			;6675
	or 058h			;6676
	ld e,056h		;6678
	ret pe			;667a
	ld c,c			;667b
	push de			;667c
	ld e,(hl)		;667d
	rra			;667e
	ld e,e			;667f
	jp l561eh		;6680
	ret pe			;6683
	cp 0f5h			;6684
	ld (hl),h		;6686
	ei			;6687
	ld (0e8e4h),a		;6688
	ld b,h			;668b
	call c,01f5eh		;668c
	jp 0f28bh		;668f
	xor h			;6692
	inc a			;6693
	inc h			;6694
	ld (hl),h		;6695
	ret m			;6696
	ret pe			;6697
	rra			;6698
	rst 38h			;6699
	ex de,hl		;669a
	or 08ch			;669b
	ret nc			;669d
	adc a,(hl)		;669e
	ret nz			;669f
	adc a,e			;66a0
	jp p,0ed32h		;66a1
	xor l			;66a4
	ld a,(bc)		;66a5
	ret nz			;66a6
	ld (hl),h		;66a7
	and 08ah		;66a8
	call c,0fd8ah		;66aa
	ld a,(076c3h)		;66ad
	dec b			;66b0
	add a,b			;66b1
	jr c,l66c1h		;66b2
	ld (hl),h		;66b4
	ld (bc),a		;66b5
	adc a,d			;66b6
	defb 0ddh,08ah,0d0h ;illegal sequence	;66b7
	ld c,d			;66ba
	ld (hl),0a0h		;66bb
	ret c			;66bd
	nop			;66be
	ld (hl),0a2h		;66bf
l66c1h:
	exx			;66c1
	nop			;66c2
	ld d,(hl)		;66c3
	cp a			;66c4
	jp nz,l3601h		;66c5
	adc a,b			;66c8
	ld l,010h		;66c9
	inc bc			;66cb
	adc a,d			;66cc
	defb 0fdh,08ah,0f5h ;illegal sequence	;66cd
	ret pe			;66d0
	xor (hl)		;66d1
	rst 38h			;66d2
	inc a			;66d3
	ld a,(bc)		;66d4
	ld (hl),l		;66d5
	inc bc			;66d6
	ret pe			;66d7
	and a			;66d8
	rst 38h			;66d9
	inc a			;66da
	ld b,074h		;66db
	ld sp,hl		;66dd
	ld (hl),03ah		;66de
	ld b,051h		;66e0
	ex af,af'		;66e2
	ld (hl),h		;66e3
	jr c,l6722h		;66e4
	ld a,a			;66e6
	ld (hl),h		;66e7
	dec hl			;66e8
	inc a			;66e9
	ex af,af'		;66ea
	ld (hl),h		;66eb
	daa			;66ec
	inc a			;66ed
	dec c			;66ee
	ld (hl),h		;66ef
	cpl			;66f0
	inc a			;66f1
	ld a,(bc)		;66f2
	ld (hl),h		;66f3
	ld c,a			;66f4
	inc a			;66f5
	jr l676ch		;66f6
	ld d,b			;66f8
	ld a,(073f2h)		;66f9
	add hl,de		;66fc
	xor d			;66fd
	cp 0c6h			;66fe
	ret pe			;6700
	ld (l36ffh),a		;6701
	add a,b			;6704
	ld a,010h		;6705
	inc bc			;6707
	nop			;6708
	ld (hl),l		;6709
	call z,0fb3ah		;670a
	ld (hl),e		;670d
	ret z			;670e
	ld b,(hl)		;670f
	cp 0c7h			;6710
	ex de,hl		;6712
	jp l46ebh		;6713
	or b			;6716
	rlca			;6717
	ret pe			;6718
	sbc a,(hl)		;6719
	cp 0ebh			;671a
	cp d			;671c
	jp (hl)			;671d
	cp d			;671e
	jp nc,0e8aah		;671f
l6722h:
	sub l			;6722
	cp 05fh			;6723
	adc a,b			;6725
	ld (hl),l		;6726
	rst 38h			;6727
	cp 0c6h			;6728
	adc a,h			;672a
	push bc			;672b
	adc a,h			;672c
	in a,(08eh)		;672d
	jp 0dd8eh		;672f
	cp (hl)			;6732
	jp nz,08a01h		;6733
	adc a,0f3h		;6736
	and h			;6738
	jp l0db0h		;6739
	ret pe			;673c
	ld a,d			;673d
	cp 0b0h			;673e
	ld a,(bc)		;6740
	jp (hl)			;6741
	ld (hl),l		;6742
	cp 0e8h			;6743
	di			;6745
	rst 38h			;6746
	ex de,hl		;6747
	adc a,(hl)		;6748
	or b			;6749
	ld e,h			;674a
	ret pe			;674b
	ld l,e			;674c
	cp 05eh			;674d
	ret pe			;674f
	ret pe			;6750
	rst 38h			;6751
	ld (hl),0a0h		;6752
	exx			;6754
	nop			;6755
	ret pe			;6756
	cp e			;6757
	cp 0e9h			;6758
	ld e,a			;675a
	rst 38h			;675b
	ld a,(bc)		;675c
	or 074h			;675d
	ld de,l52e8h		;675f
	nop			;6762
	ld h,08ah		;6763
	dec b			;6765
	inc a			;6766
	jr nz,$+117		;6767
	rlca			;6769
	inc a			;676a
	add hl,bc		;676b
l676ch:
	ld (hl),h		;676c
	dec d			;676d
	ret pe			;676e
	ld b,a			;676f
	nop			;6770
	ld (hl),080h		;6771
	ld a,010h		;6773
	inc bc			;6775
	nop			;6776
	ld (hl),l		;6777
	rlca			;6778
	ld a,(bc)		;6779
	rst 38h			;677a
	ld (hl),h		;677b
	inc bc			;677c
	cp 0cfh			;677d
	ld c,(hl)		;677f
	jp (hl)			;6780
	ld d,h			;6781
	rst 38h			;6782
	ld d,a			;6783
	ld c,a			;6784
	defb 0fdh,08ah,0ceh ;illegal sequence	;6785
	or b			;6788
	jr nz,$+85		;6789
	or e			;678b
	rlca			;678c
	ex (sp),hl		;678d
	ld c,0aeh		;678e
	halt			;6790
	add hl,bc		;6791
	ld h,080h		;6792
	ld a,l			;6794
	ld bc,07409h		;6795
	add hl,bc		;6798
	cp 0cbh			;6799
	jp po,l36f2h		;679b
	ld hl,(0d91eh)		;679e
	nop			;67a1
	ld hl,(l02deh)		;67a2
	res 0,b			;67a5
	pop hl			;67a7
l67a8h:
	rlca			;67a8
	call m,sub_5f5bh	;67a9
	ld (hl),h		;67ac
	jp l07e8h		;67ad
	nop			;67b0
	jp po,0ebfbh		;67b1
	cp h			;67b4
	cp 0ceh			;67b5
	ld c,a			;67b7
	or b			;67b8
	ex af,af'		;67b9
	ret pe			;67ba
	call m,0b0fdh		;67bb
	jr nz,l67a8h		;67be
	rst 30h			;67c0
	defb 0fdh,0b0h,008h ;illegal sequence	;67c1
	jp (hl)			;67c4
	jp p,l36fdh		;67c5
	and b			;67c8
	ld d,c			;67c9
	ex af,af'		;67ca
	jp (hl)			;67cb
	dec hl			;67cc
	rst 38h			;67cd
	adc a,d			;67ce
	sra d			;67cf
	rst 8			;67d1
	ex de,hl		;67d2
	rlca			;67d3
	ret pe			;67d4
	inc (hl)		;67d5
	nop			;67d6
	ex de,hl		;67d7
	ld (bc),a		;67d8
	or c			;67d9
	ld bc,0c636h		;67da
	ld b,010h		;67dd
	inc bc			;67df
	nop			;67e0
	ld a,(074f2h)		;67e1
	rrca			;67e4
	ld a,(074fbh)		;67e5
	dec bc			;67e8
	xor h			;67e9
	xor d			;67ea
	ret pe			;67eb
	ld b,a			;67ec
	cp 0feh			;67ed
	rst 0			;67ef
	cp 0c6h			;67f0
	jp po,0e9e7h		;67f2
	ret po			;67f5
	cp 03ah			;67f6
	ei			;67f8
	ld (hl),h		;67f9
	ld sp,hl		;67fa
	cp 0c7h			;67fb
	ld b,(hl)		;67fd
	jp (hl)			;67fe
	sub 0feh		;67ff
	ret pe			;6801
	rlca			;6802
	nop			;6803
	inc bc			;6804
	pop af			;6805
	ld (bc),a		;6806
	ld sp,hl		;6807
	jp (hl)			;6808
	call z,0e8feh		;6809
	ld (hl),e		;680c
	cp 036h			;680d
	ld a,(l5106h)		;680f
	ex af,af'		;6812
	ld (hl),l		;6813
	ld b,0e8h		;6814
	ld l,c			;6816
	cp 0ebh			;6817
	ld e,090h		;6819
	adc a,d			;681b
	sra d			;681c
	rst 8			;681e
	ld (hl),h		;681f
	rla			;6820
	ld c,c			;6821
	ld (hl),h		;6822
	inc d			;6823
	ld b,01eh		;6824
	rlca			;6826
	ld d,a			;6827
	adc a,e			;6828
	cp 047h			;6829
	jp p,l5faeh		;682b
	rlca			;682e
	ld (hl),l		;682f
	rlca			;6830
	or 0d1h			;6831
	ld (bc),a		;6833
	sra d			;6834
	rst 8			;6836
	jp 0e95dh		;6837
	sbc a,e			;683a
	cp 0b0h			;683b
	ld b,b			;683d
	ret pe			;683e
	ld a,b			;683f
	defb 0fdh,05fh,057h ;illegal sequence	;6840
	ld b,01eh		;6843
	ret pe			;6845
	jp po,01ffeh		;6846
	rlca			;6849
	ld e,(hl)		;684a
	adc a,d			;684b
	sbc a,0e9h		;684c
	rst 38h			;684e
	cp 036h			;684f
	or 016h			;6851
	djnz $+5		;6853
	jp (hl)			;6855
	ld a,a			;6856
	cp 0b0h			;6857
	ld a,(de)		;6859
	jp (hl)			;685a
	sbc a,h			;685b
	cp 0e8h			;685c
	inc h			;685e
	call p,000b0h		;685f
	ld (hl),h		;6862
	out (00ch),a		;6863
	rst 38h			;6865
	jp l5250h		;6866
	inc sp			;6869
	in a,(0e8h)		;686a
	ld a,(de)		;686c
	call po,sub_0572h	;686d
	or h			;6870
	inc b			;6871
	ret pe			;6872
	ld e,h			;6873
	jp c,l585ah		;6874
	adc a,d			;6877
	ret po			;6878
	inc a			;6879
	ld bc,l1374h		;687a
	inc a			;687d
	ld b,074h		;687e
	rrca			;6880
	inc a			;6881
	rlca			;6882
	ld (hl),h		;6883
	dec bc			;6884
	inc a			;6885
	ex af,af'		;6886
	ld (hl),h		;6887
	rlca			;6888
	inc a			;6889
	ld a,(bc)		;688a
	ld (hl),h		;688b
	inc bc			;688c
	or b			;688d
	nop			;688e
	jp 0e9fah		;688f
	jp (hl)			;6892
	adc a,051h		;6893
	ld b,0e8h		;6895
	jr nz,l6899h		;6897
l6899h:
	rlca			;6899
	ret nc			;689a
	pop hl			;689b
	ret nc			;689c
	pop hl			;689d
	pop de			;689e
	pop hl			;689f
	pop de			;68a0
	pop hl			;68a1
	pop de			;68a2
	pop hl			;68a3
	ret nc			;68a4
	xor 00ah		;68a5
	adc a,08bh		;68a7
	pop de			;68a9
	and c			;68aa
	ld a,(de)		;68ab
	ld bc,l04b1h		;68ac
	jp nc,0d1e0h		;68af
	ret po			;68b2
	ld e,c			;68b3
	ld a,(bc)		;68b4
	ld b,019h		;68b5
	ld bc,056c3h		;68b7
	ld d,e			;68ba
	cp e			;68bb
	push bc			;68bc
	ld (bc),a		;68bd
	cp c			;68be
	ld b,000h		;68bf
	inc sp			;68c1
	jp nc,0c28bh		;68c2
	ret pe			;68c5
	jp nz,l1edbh		;68c6
	push bc			;68c9
	ld (hl),0f8h		;68ca
	nop			;68cc
	ret pe			;68cd
	inc (hl)		;68ce
	in a,(01fh)		;68cf
	ld e,e			;68d1
	ld e,(hl)		;68d2
	and c			;68d3
	push bc			;68d4
	ld (bc),a		;68d5
	adc a,e			;68d6
	ld c,0c7h		;68d7
	ld (bc),a		;68d9
	adc a,e			;68da
	ld d,0c9h		;68db
	ld (bc),a		;68dd
	dec sp			;68de
	ld b,01dh		;68df
	ld bc,04274h		;68e1
	dec a			;68e4
	ld (hl),0abh		;68e5
	ld (hl),e		;68e7
l68e8h:
	dec a			;68e8
	and e			;68e9
	dec e			;68ea
	ld bc,l5156h		;68eb
	ld d,d			;68ee
	inc sp			;68ef
	jp nc,0b5b9h		;68f0
	dec b			;68f3
	rst 30h			;68f4
	pop af			;68f5
	pop de			;68f6
	ret po			;68f7
	pop de			;68f8
	ret po			;68f9
	pop de			;68fa
	ret po			;68fb
	adc a,e			;68fc
	ret z			;68fd
	cp (hl)			;68fe
	ld (hl),e		;68ff
	ld bc,l23e8h		;6900
	nop			;6903
	pop de			;6904
	jp (hl)			;6905
	ld (hl),e		;6906
	inc b			;6907
	add a,c			;6908
	jp nz,000c8h		;6909
	ret pe			;690c
	inc h			;690d
	nop			;690e
	or c			;690f
	ld bc,07bbeh		;6910
	ld bc,l10e8h		;6913
	nop			;6916
	adc a,b			;6917
	ld c,01ah		;6918
	ld bc,08842h		;691a
	ld d,019h		;691d
	ld bc,092e8h		;691f
	nop			;6922
	ld e,d			;6923
	ld e,c			;6924
	ld e,(hl)		;6925
	jp 000b4h		;6926
	xor h			;6929
	dec sp			;692a
	ret nc			;692b
	ld (hl),d		;692c
	dec d			;692d
	dec hl			;692e
	ret nc			;692f
	ld b,c			;6930
	ex de,hl		;6931
	or 088h			;6932
	ld c,01bh		;6934
	ld bc,0c1f6h		;6936
	inc bc			;6939
	or b			;693a
	inc e			;693b
	ld (hl),l		;693c
	ld (bc),a		;693d
	cp 0c0h			;693e
	and d			;6940
	ld a,h			;6941
	ld bc,0e8c3h		;6942
	ret p			;6945
	rst 38h			;6946
	adc a,d			;6947
	add a,0bbh		;6948
	ld a,d			;694a
	ld bc,l3ad7h		;694b
	jp nz,0ffb0h		;694e
	ld (hl),d		;6951
	ld (hl),h		;6952
	ret pe			;6953
	defb 0ddh,0ffh,089h ;illegal sequence	;6954
	ld d,019h		;6957
	ld bc,0e9d1h		;6959
	pop de			;695c
	jp (hl)			;695d
	cp b			;695e
	or l			;695f
	dec b			;6960
	adc a,e			;6961
	jp c,0e1f7h		;6962
	adc a,d			;6965
	ld c,01bh		;6966
	ld bc,0e180h		;6968
	inc bc			;696b
	cp (hl)			;696c
	ld (hl),e		;696d
	ld bc,0d08bh		;696e
	pop de			;6971
	pop hl			;6972
	ret pe			;6973
	ld d,d			;6974
	nop			;6975
	adc a,d			;6976
	rst 8			;6977
	cp (hl)			;6978
	ld a,e			;6979
	ld bc,0e849h		;697a
	ld c,c			;697d
	nop			;697e
	adc a,d			;697f
	bit 1,c			;6980
	inc bc			;6982
	pop de			;6983
	sub d			;6984
	and e			;6985
	dec e			;6986
	ld bc,l5356h		;6987
	ld d,b			;698a
	cp e			;698b
	push bc			;698c
	ld (bc),a		;698d
	cp c			;698e
	ld b,000h		;698f
	inc sp			;6991
	jp nc,0c28bh		;6992
	ld d,e			;6995
	ret pe			;6996
	pop af			;6997
	jp c,0c51eh		;6998
	ld (hl),0f8h		;699b
	nop			;699d
	ret pe			;699e
	ld h,e			;699f
	jp c,05b1fh		;69a0
	ret pe			;69a3
	rla			;69a4
	in a,(08fh)		;69a5
	ld b,0c5h		;69a7
	ld (bc),a		;69a9
	ld e,0c5h		;69aa
	ld (hl),0f8h		;69ac
	nop			;69ae
	ret pe			;69af
	ld d,d			;69b0
	jp c,05b1fh		;69b1
	ld e,(hl)		;69b4
	and c			;69b5
	dec e			;69b6
	ld bc,0d233h		;69b7
	cp c			;69ba
	rlca			;69bb
	nop			;69bc
	ld b,b			;69bd
	ld b,b			;69be
	rst 30h			;69bf
	pop af			;69c0
	adc a,b			;69c1
	ld d,01fh		;69c2
	ld bc,0c032h		;69c4
	jp 000b4h		;69c7
	ex (sp),hl		;69ca
	ei			;69cb
	xor h			;69cc
	inc bc			;69cd
	ret nc			;69ce
	jp po,0c3fbh		;69cf
	ld d,b			;69d2
	ld d,c			;69d3
	ld d,(hl)		;69d4
	adc a,e			;69d5
	jp p,0ffb9h		;69d6
	nop			;69d9
	adc a,e			;69da
	inc b			;69db
	ld a,(bc)		;69dc
	ret nz			;69dd
	ld (hl),h		;69de
	add hl,hl		;69df
	add a,b			;69e0
	call m,0753ah		;69e1
	ld b,080h		;69e4
	ld a,h			;69e6
	ld (bc),a		;69e7
	nop			;69e8
	ld (hl),h		;69e9
	ld e,0ach		;69ea
	ld a,(bc)		;69ec
	ret nz			;69ed
	ld (hl),h		;69ee
	ld (hl),03ch		;69ef
	ccf			;69f1
	ld (hl),h		;69f2
	ld a,(de)		;69f3
	inc a			;69f4
	ld hl,(l1674h)		;69f5
	ret pe			;69f8
	or d			;69f9
	or 075h			;69fa
	xor 0e3h		;69fc
	ld a,(bc)		;69fe
	xor h			;69ff
	ld a,(bc)		;6a00
	ret nz			;6a01
	ld (hl),h		;6a02
	ld c,0e8h		;6a03
	and (hl)		;6a05
	or 075h			;6a06
	ex (sp),hl		;6a08
	ld b,c			;6a09
	dec bc			;6a0a
	ret			;6a0b
	ex de,hl		;6a0c
	inc e			;6a0d
	inc sp			;6a0e
	ret			;6a0f
	ex de,hl		;6a10
	exx			;6a11
	dec hl			;6a12
	jp p,0fe83h		;6a13
	ld (bc),a		;6a16
	ld (hl),h		;6a17
	dec c			;6a18
	add a,e			;6a19
	cp 004h			;6a1a
	ld (hl),l		;6a1c
	ex de,hl		;6a1d
	adc a,e			;6a1e
	jp p,07c80h		;6a1f
	ld bc,0753ah		;6a22
	ex (sp),hl		;6a25
	dec bc			;6a26
	ret			;6a27
	ld (hl),l		;6a28
	ld bc,l5ef9h		;6a29
l6a2ch:
	ld e,c			;6a2c
	ld e,b			;6a2d
	jp 0a0e8h		;6a2e
	rst 38h			;6a31
	ld (hl),d		;6a32
	dec c			;6a33
	adc a,e			;6a34
	jp p,07be8h		;6a35
	ld (ix-00dh),e		;6a38
	or b			;6a3b
	ld (bc),a		;6a3c
	ld a,(bc)		;6a3d
	ret			;6a3e
	ld (hl),l		;6a3f
	ld (bc),a		;6a40
	or b			;6a41
	inc bc			;6a42
	ld sp,hl		;6a43
	jp l5150h		;6a44
	or b			;6a47
	rst 38h			;6a48
	ld (hl),08eh		;6a49
	ld b,08bh		;6a4b
	ld bc,l18bfh		;6a4d
	nop			;6a50
	cp c			;6a51
	inc d			;6a52
	nop			;6a53
	jp p,0f9aeh		;6a54
	ld (hl),l		;6a57
	ld (bc),a		;6a58
	ld c,a			;6a59
	ret m			;6a5a
	ld e,c			;6a5b
	ld e,b			;6a5c
	jp l5153h		;6a5d
	ld (hl),0c4h		;6a60
	ld e,0f4h		;6a62
	nop			;6a64
	inc sp			;6a65
	or 083h			;6a66
	ei			;6a68
	rst 38h			;6a69
	ld (hl),h		;6a6a
	jr l6a2ch		;6a6b
	ld b,000h		;6a6d
	ld h,08bh		;6a6f
	ld c,a			;6a71
	inc b			;6a72
	ld h,080h		;6a73
	add hl,sp		;6a75
	nop			;6a76
	ld (hl),h		;6a77
	ld c,083h		;6a78
	rst 0			;6a7a
	jr z,l6ac3h		;6a7b
	jp po,l26f4h		;6a7d
	call nz,0eb1fh		;6a80
	ex (sp),hl		;6a83
	ld sp,hl		;6a84
	ex de,hl		;6a85
	inc bc			;6a86
	inc bc			;6a87
	ei			;6a88
	ret m			;6a89
	ld e,c			;6a8a
	ld e,e			;6a8b
	jp 0c636h		;6a8c
	ld b,05ch		;6a8f
	dec b			;6a91
	nop			;6a92
	inc a			;6a93
	ld (bc),a		;6a94
	halt			;6a95
	dec b			;6a96
	or b			;6a97
	inc c			;6a98
	jp (hl)			;6a99
	inc b			;6a9a
	rst 8			;6a9b
	ld (hl),08ch		;6a9c
	ld e,04eh		;6a9e
	dec b			;6aa0
	ld d,01fh		;6aa1
	adc a,c			;6aa3
	ld d,04ch		;6aa4
	dec b			;6aa6
	and d			;6aa7
	ld d,b			;6aa8
	dec b			;6aa9
	ret pe			;6aaa
	sbc a,b			;6aab
	rst 38h			;6aac
	ld (hl),e		;6aad
	inc b			;6aae
	or b			;6aaf
	inc b			;6ab0
	ex de,hl		;6ab1
	and 08ch		;6ab2
	ld b,053h		;6ab4
	dec b			;6ab6
	adc a,c			;6ab7
	ld a,051h		;6ab8
	dec b			;6aba
	ret pe			;6abb
	and b			;6abc
	rst 38h			;6abd
	ld (hl),d		;6abe
	rst 28h			;6abf
	adc a,c			;6ac0
	ld (hl),055h		;6ac1
l6ac3h:
	dec b			;6ac3
	adc a,c			;6ac4
	ld a,057h		;6ac5
	dec b			;6ac7
	adc a,h			;6ac8
	ld b,059h		;6ac9
	dec b			;6acb
	ld e,0c5h		;6acc
	ld d,04ch		;6ace
	dec b			;6ad0
	ret pe			;6ad1
	ld e,e			;6ad2
	rst 38h			;6ad3
	rra			;6ad4
	ld (hl),e		;6ad5
	ld (bc),a		;6ad6
	ex de,hl		;6ad7
	ret c			;6ad8
	adc a,(hl)		;6ad9
	ld b,04dh		;6ada
	inc bc			;6adc
	adc a,b			;6add
	ld h,05bh		;6ade
	dec b			;6ae0
	or 0c4h			;6ae1
	add a,b			;6ae3
	ld (hl),l		;6ae4
	inc h			;6ae5
	ld h,08ah		;6ae6
	ld b,a			;6ae8
	dec bc			;6ae9
	xor b			;6aea
	djnz l6b61h		;6aeb
	inc b			;6aed
	or b			;6aee
	dec b			;6aef
	ex de,hl		;6af0
l6af1h:
	push hl			;6af1
	xor b			;6af2
	ex af,af'		;6af3
	ld (hl),l		;6af4
	ret m			;6af5
	xor b			;6af6
	ld bc,l1274h		;6af7
	add a,b			;6afa
	ld a,05ch		;6afb
	dec b			;6afd
	nop			;6afe
	ld (hl),l		;6aff
	dec bc			;6b00
	add a,b			;6b01
	ld a,050h		;6b02
	dec b			;6b04
	nop			;6b05
	ld (hl),l		;6b06
	and 0ebh		;6b07
	ld (bc),a		;6b09
	ld d,007h		;6b0a
	cp c			;6b0c
	dec bc			;6b0d
	nop			;6b0e
	ld d,(hl)		;6b0f
	adc a,e			;6b10
	di			;6b11
	adc a,e			;6b12
	ld a,057h		;6b13
	dec b			;6b15
	ld e,006h		;6b16
	adc a,(hl)		;6b18
	ld b,059h		;6b19
	dec b			;6b1b
	rra			;6b1c
	adc a,d			;6b1d
	ld h,a			;6b1e
	dec bc			;6b1f
	ld h,088h		;6b20
	ld h,l			;6b22
	ld (bc),a		;6b23
	add a,e			;6b24
	rst 0			;6b25
	inc b			;6b26
	di			;6b27
	and h			;6b28
	rra			;6b29
	ld e,(hl)		;6b2a
	call nz,0573eh		;6b2b
	dec b			;6b2e
	add a,e			;6b2f
	rst 0			;6b30
	inc bc			;6b31
	adc a,d			;6b32
	ld h,05bh		;6b33
	dec b			;6b35
	ret pe			;6b36
	cpl			;6b37
	rst 28h			;6b38
	ld d,01fh		;6b39
	call nz,0573eh		;6b3b
	dec b			;6b3e
	ld h,0feh		;6b3f
	dec b			;6b41
	and b			;6b42
	ld d,b			;6b43
	dec b			;6b44
	ld h,088h		;6b45
	ld b,l			;6b47
	ld bc,0c033h		;6b48
	ld h,089h		;6b4b
	ld b,l			;6b4d
	inc h			;6b4e
	ld h,089h		;6b4f
	ld b,l			;6b51
	ld h,040h		;6b52
	ld h,089h		;6b54
	ld b,l			;6b56
	ld de,l3ec4h		;6b57
	ld d,c			;6b5a
	dec b			;6b5b
	and c			;6b5c
	ld d,l			;6b5d
	dec b			;6b5e
	ld h,088h		;6b5f
l6b61h:
	dec b			;6b61
	add a,e			;6b62
	rst 28h			;6b63
	jr l6af1h		;6b64
	rst 0			;6b66
	jp (hl)			;6b67
	inc l			;6b68
	adc a,0e8h		;6b69
	jp nz,073feh		;6b6b
	inc bc			;6b6e
	jp (hl)			;6b6f
	ld l,0ceh		;6b70
	ld (hl),h		;6b72
	dec bc			;6b73
	ld (hl),0c5h		;6b74
	ld a,04bh		;6b76
	inc bc			;6b78
	or 047h			;6b79
	dec bc			;6b7b
	ld bc,l0474h		;6b7c
	or b			;6b7f
l6b80h:
	dec b			;6b80
	ex de,hl		;6b81
	call pe,007c6h		;6b82
	push hl			;6b85
	add a,045h		;6b86
	dec b			;6b88
	ld bc,08badh		;6b89
	ret c			;6b8c
	add a,c			;6b8d
	ex (sp),hl		;6b8e
	rst 38h			;6b8f
	rrca			;6b90
	ld d,01fh		;6b91
	ld (hl),h		;6b93
	inc bc			;6b94
	ret pe			;6b95
	xor (hl)		;6b96
	jp pe,08a26h		;6b97
	ld b,(hl)		;6b9a
	nop			;6b9b
	ret pe			;6b9c
	ld b,b			;6b9d
	call pe,0c6ebh		;6b9e
	ret pe			;6ba1
	ld l,0feh		;6ba2
	ld (hl),e		;6ba4
	inc b			;6ba5
	or b			;6ba6
	inc bc			;6ba7
	ex de,hl		;6ba8
	rst 10h			;6ba9
	ld d,d			;6baa
	ld e,016h		;6bab
	rra			;6bad
	rst 0			;6bae
	ld b,0fah		;6baf
	ld (bc),a		;6bb1
	rst 38h			;6bb2
	push hl			;6bb3
	adc a,h			;6bb4
	ld d,01fh		;6bb5
	inc bc			;6bb7
	rst 0			;6bb8
	ld b,01dh		;6bb9
	inc bc			;6bbb
	ret po			;6bbc
	inc bc			;6bbd
	adc a,e			;6bbe
	jp p,0c18ah		;6bbf
	add a,b			;6bc2
	pop hl			;6bc3
	ld bc,l0e88h		;6bc4
	ld e,h			;6bc7
	dec b			;6bc8
	rra			;6bc9
	ld e,0e8h		;6bca
	ld b,h			;6bcc
	in a,(01fh)		;6bcd
	ld e,d			;6bcf
	ld a,(bc)		;6bd0
	ret nz			;6bd1
	ld (hl),h		;6bd2
	ex af,af'		;6bd3
	inc a			;6bd4
	inc bc			;6bd5
	ld (hl),h		;6bd6
	inc b			;6bd7
	or b			;6bd8
	dec b			;6bd9
	ex de,hl		;6bda
	call z,sub_02b0h	;6bdb
	jp (hl)			;6bde
	or d			;6bdf
	cp 016h			;6be0
	rra			;6be2
	ret pe			;6be3
	ld e,a			;6be4
	cp 072h			;6be5
	jr l6befh		;6be7
	ld d,a			;6be9
	ret pe			;6bea
	sbc a,(hl)		;6beb
	ld (bc),a		;6bec
	ld e,(hl)		;6bed
	rra			;6bee
l6befh:
	ld (hl),d		;6bef
	inc de			;6bf0
	ld h,0feh		;6bf1
	dec b			;6bf3
	adc a,d			;6bf4
	ld b,a			;6bf5
	jr l6b80h		;6bf6
	inc b			;6bf8
	add a,e			;6bf9
	xor 018h		;6bfa
	adc a,e			;6bfc
	add a,0ebh		;6bfd
	sbc a,a			;6bff
	or b			;6c00
	inc b			;6c01
	ex de,hl		;6c02
	sub 0b0h		;6c03
	ld b,0ebh		;6c05
	jp m,0d987h		;6c07
	ld d,e			;6c0a
	ld d,c			;6c0b
	ret pe			;6c0c
	and d			;6c0d
	ld (bc),a		;6c0e
	ld d,01fh		;6c0f
	ld e,c			;6c11
	ld e,e			;6c12
	ret pe			;6c13
	adc a,c			;6c14
	ld (bc),a		;6c15
	add a,a			;6c16
	exx			;6c17
	ld (hl),e		;6c18
	adc a,0b0h		;6c19
	ld b,0ebh		;6c1b
	ret pe			;6c1d
	inc a			;6c1e
	ld bc,l0476h		;6c1f
	or b			;6c22
	ld bc,0f6ebh		;6c23
	ld (hl),d		;6c26
	ld c,08bh		;6c27
	exx			;6c29
	add a,c			;6c2a
	ex (sp),hl		;6c2b
	ret c			;6c2c
	rst 38h			;6c2d
	ld (hl),h		;6c2e
	ld b,0b0h		;6c2f
	dec b			;6c31
	ex de,hl		;6c32
	ret p			;6c33
	ex de,hl		;6c34
	call m,sub_5051h	;6c35
	ret pe			;6c38
	call p,sub_5afdh	;6c39
	ld e,c			;6c3c
	ld (hl),d		;6c3d
	push af			;6c3e
	ld (hl),0c4h		;6c3f
	ld a,04bh		;6c41
	inc bc			;6c43
	ld d,01fh		;6c44
	ld a,(bc)		;6c46
	jp nc,l1574h		;6c47
	ld h,080h		;6c4a
	ld h,a			;6c4c
	dec bc			;6c4d
	ret c			;6c4e
	ld h,008h		;6c4f
	ld c,a			;6c51
	dec bc			;6c52
	ld h,0c6h		;6c53
	ld b,l			;6c55
	dec b			;6c56
	ld bc,0ffb0h		;6c57
	ret pe			;6c5a
	add a,d			;6c5b
	ex de,hl		;6c5c
	ex de,hl		;6c5d
	sbc a,a			;6c5e
	inc sp			;6c5f
	ret			;6c60
	ld h,08ah		;6c61
	ld c,a			;6c63
	dec bc			;6c64
	ret pe			;6c65
	ret			;6c66
	res 1,c			;6c67
	ld c,h			;6c69
	inc b			;6c6a
	ex de,hl		;6c6b
	ret p			;6c6c
	ld e,053h		;6c6d
	ld d,(hl)		;6c6f
	ret pe			;6c70
	ld d,a			;6c71
	pop de			;6c72
	inc a			;6c73
	rst 38h			;6c74
	ld (hl),l		;6c75
	rlca			;6c76
	ld e,b			;6c77
	ld e,b			;6c78
	ld e,b			;6c79
	or b			;6c7a
	rrca			;6c7b
	ex de,hl		;6c7c
	or (hl)			;6c7d
	ld e,a			;6c7e
	adc a,a			;6c7f
	ld b,h			;6c80
	ld (bc),a		;6c81
	ld e,e			;6c82
	adc a,c			;6c83
	ld e,h			;6c84
	ld c,026h		;6c85
	add a,e			;6c87
	ld a,(hl)		;6c88
	inc e			;6c89
	rst 38h			;6c8a
	ld (hl),l		;6c8b
	dec c			;6c8c
	ld d,e			;6c8d
	ld d,a			;6c8e
	ld (hl),0c6h		;6c8f
	ld b,0ddh		;6c91
	ld (bc),a		;6c93
	ld d,0e8h		;6c94
	ld a,(bc)		;6c96
	jp c,05b5fh		;6c97
	adc a,e			;6c9a
	push af			;6c9b
	ld b,01fh		;6c9c
	adc a,(hl)		;6c9e
	jp 07c83h		;6c9f
	inc e			;6ca2
	nop			;6ca3
	ld (hl),l		;6ca4
	inc b			;6ca5
	add a,044h		;6ca6
	ld e,000h		;6ca8
	add a,e			;6caa
	add a,01eh		;6cab
	cp c			;6cad
	ld b,b			;6cae
	nop			;6caf
	xor h			;6cb0
	xor d			;6cb1
	ld a,(bc)		;6cb2
	ret nz			;6cb3
	ret po			;6cb4
	jp m,0b3ebh		;6cb5
	ld (hl),089h		;6cb8
	ld d,05dh		;6cba
	dec b			;6cbc
	ld (hl),08ch		;6cbd
	ld e,05fh		;6cbf
	dec b			;6cc1
	ld (hl),089h		;6cc2
	ld a,061h		;6cc4
	dec b			;6cc6
	ld (hl),08ch		;6cc7
	ld b,063h		;6cc9
	dec b			;6ccb
	ret pe			;6ccc
	ld h,b			;6ccd
	ld (iy+002h),e		;6cce
	ex de,hl		;6cd1
	xor c			;6cd2
	ld (hl),h		;6cd3
	ld hl,(08e36h)		;6cd4
	ld e,04dh		;6cd7
	inc bc			;6cd9
	rst 38h			;6cda
	ld (hl),a		;6cdb
	jr $+1			;6cdc
	ld (hl),a		;6cde
	ld a,(de)		;6cdf
	rst 38h			;6ce0
	ld (hl),a		;6ce1
	ld e,0ffh		;6ce2
	ld (hl),a		;6ce4
	inc e			;6ce5
	rst 38h			;6ce6
	ld (hl),a		;6ce7
	ld d,0ffh		;6ce8
	ld (hl),a		;6cea
	dec bc			;6ceb
	ld (hl),0ffh		;6cec
	ld (hl),007h		;6cee
	inc bc			;6cf0
	ld (hl),0c5h		;6cf1
	ld (hl),061h		;6cf3
	dec b			;6cf5
	ret pe			;6cf6
	cp e			;6cf7
	jp c,07258h		;6cf8
	rlca			;6cfb
	add a,e			;6cfc
	call nz,0b00ch		;6cfd
	dec b			;6d00
	ex de,hl		;6d01
	adc a,036h		;6d02
	ld a,(l0706h)		;6d04
	inc bc			;6d07
	ld (hl),h		;6d08
	rlca			;6d09
	add a,e			;6d0a
	call nz,0b00ch		;6d0b
	ld de,0f0ebh		;6d0e
	ld (hl),0c5h		;6d11
	ld (hl),061h		;6d13
	dec b			;6d15
	ld e,b			;6d16
	ld d,b			;6d17
	ld (hl),0c7h		;6d18
	ld b,0fah		;6d1a
	ld (bc),a		;6d1c
	rst 38h			;6d1d
	push hl			;6d1e
	ld (hl),08ch		;6d1f
	ld d,01fh		;6d21
	inc bc			;6d23
	ld (hl),0c7h		;6d24
	ld b,01dh		;6d26
	inc bc			;6d28
	ret po			;6d29
	inc bc			;6d2a
	ret pe			;6d2b
	call po,sub_72d9h	;6d2c
	call z,0c536h		;6d2f
	ld (hl),04bh		;6d32
	inc bc			;6d34
	ld e,b			;6d35
	adc a,b			;6d36
	ld b,a			;6d37
	dec bc			;6d38
	adc a,a			;6d39
	ld b,a			;6d3a
	ld d,08fh		;6d3b
	ld b,a			;6d3d
	inc e			;6d3e
	adc a,a			;6d3f
	ld b,a			;6d40
	ld e,08fh		;6d41
	ld b,a			;6d43
	ld a,(de)		;6d44
	adc a,a			;6d45
	ld b,a			;6d46
	jr $-56			;6d47
	ld b,h			;6d49
	dec b			;6d4a
	ld bc,0c536h		;6d4b
	ld (hl),05dh		;6d4e
	dec b			;6d50
	ret pe			;6d51
	ld h,b			;6d52
	jp c,0c536h		;6d53
	ld (hl),04bh		;6d56
	inc bc			;6d58
	add a,007h		;6d59
	push hl			;6d5b
	add a,044h		;6d5c
	dec b			;6d5e
	ld bc,l1f15h+1		;6d5f
	or b			;6d62
	rst 38h			;6d63
	ret pe			;6d64
	ld a,b			;6d65
	jp pe,l2ce9h		;6d66
	call z,l65e8h		;6d69
	call m,l0672h+1		;6d6c
	ld (hl),h		;6d6f
	inc b			;6d70
	or b			;6d71
	ld (bc),a		;6d72
	ex de,hl		;6d73
	sbc a,d			;6d74
	adc a,e			;6d75
	jp p,l3651h		;6d76
	cp 006h			;6d79
	push de			;6d7b
	nop			;6d7c
	ld (hl),0c7h		;6d7d
	ld b,0fah		;6d7f
	ld (bc),a		;6d81
	nop			;6d82
	push hl			;6d83
	ret pe			;6d84
	dec l			;6d85
	jp c,l3659h		;6d86
	adc a,b			;6d89
	ld c,0ddh		;6d8a
	ld (bc),a		;6d8c
	ld (hl),e		;6d8d
	inc b			;6d8e
	or b			;6d8f
	ld (de),a		;6d90
	ex de,hl		;6d91
	ret po			;6d92
	ld (hl),08eh		;6d93
	ld e,04dh		;6d95
	inc bc			;6d97
	adc a,d			;6d98
	ld l,a			;6d99
	dec bc			;6d9a
	ret pe			;6d9b
	pop hl			;6d9c
	in a,(074h)		;6d9d
	dec c			;6d9f
	ld (hl),0ffh		;6da0
	ld (hl),021h		;6da2
	ld bc,08b36h		;6da4
	ld e,02fh		;6da7
	inc bc			;6da9
	jp (hl)			;6daa
	and b			;6dab
	nop			;6dac
	ld (hl),0c4h		;6dad
	ld a,0dfh		;6daf
	nop			;6db1
	ld (hl),0a0h		;6db2
	defb 0ddh,002h,0aah ;illegal sequence	;6db4
	ld (hl),0a0h		;6db7
	rlca			;6db9
	inc bc			;6dba
	xor d			;6dbb
	cp c			;6dbc
	dec bc			;6dbd
	nop			;6dbe
	ld d,e			;6dbf
	cp (hl)			;6dc0
	pop de			;6dc1
	ld (bc),a		;6dc2
	ld e,016h		;6dc3
	rra			;6dc5
	di			;6dc6
	and h			;6dc7
	rra			;6dc8
	ld (hl),0a1h		;6dc9
	ld hl,0ab01h		;6dcb
	ld (hl),0a1h		;6dce
	ex af,af'		;6dd0
	inc bc			;6dd1
	xor e			;6dd2
	ld (hl),0a1h		;6dd3
	ld a,(bc)		;6dd5
	inc bc			;6dd6
	xor e			;6dd7
	ld (hl),0a1h		;6dd8
l6ddah:
	cpl			;6dda
	inc bc			;6ddb
	xor e			;6ddc
	adc a,d			;6ddd
	ld b,a			;6dde
	dec bc			;6ddf
	xor d			;6de0
	adc a,e			;6de1
	ld b,a			;6de2
	ld d,0abh		;6de3
	adc a,e			;6de5
	ld b,a			;6de6
	jr $-83			;6de7
	adc a,e			;6de9
	ld b,a			;6dea
	inc e			;6deb
	xor e			;6dec
	adc a,e			;6ded
	ld b,a			;6dee
	ld e,0abh		;6def
	ld e,(hl)		;6df1
	cp c			;6df2
	ex af,af'		;6df3
	nop			;6df4
	xor h			;6df5
	xor d			;6df6
	inc a			;6df7
	jr nz,l6ddah		;6df8
	jp m,l0175h		;6dfa
	ld c,a			;6dfd
	inc bc			;6dfe
	pop af			;6dff
	add a,b			;6e00
	inc a			;6e01
	jr nz,l6e78h		;6e02
	rrca			;6e04
	or b			;6e05
	ld l,0aah		;6e06
	cp c			;6e08
	inc bc			;6e09
	nop			;6e0a
	xor h			;6e0b
	xor d			;6e0c
	inc a			;6e0d
	jr nz,$-30		;6e0e
	jp m,l0175h		;6e10
	ld c,a			;6e13
	ld (0aac0h),a		;6e14
	jp (hl)			;6e17
	ld a,h			;6e18
	defb 0cbh,036h ;sli (hl)	;6e19
	push bc			;6e1b
	ld (hl),0dfh		;6e1c
	nop			;6e1e
	adc a,e			;6e1f
	sub 042h		;6e20
	ld d,(hl)		;6e22
	ret pe			;6e23
	cp c			;6e24
	pop af			;6e25
	ld e,(hl)		;6e26
	ld (hl),e		;6e27
	dec b			;6e28
	or b			;6e29
	ld (de),a		;6e2a
	jp (hl)			;6e2b
	ld (hl),d		;6e2c
	res 1,e			;6e2d
	ld b,h			;6e2f
	dec c			;6e30
	call nz,00f6ch		;6e31
	dec bc			;6e34
	ret nz			;6e35
	ld a,b			;6e36
	pop af			;6e37
	adc a,e			;6e38
	ld e,h			;6e39
	inc de			;6e3a
	adc a,d			;6e3b
	inc d			;6e3c
	ld (hl),088h		;6e3d
	ld d,0ddh		;6e3f
	ld (bc),a		;6e41
	ld d,b			;6e42
	ld (hl),089h		;6e43
	ld l,008h		;6e45
	inc bc			;6e47
	ld (hl),08ch		;6e48
	ld b,00ah		;6e4a
	inc bc			;6e4c
	ret pe			;6e4d
	sbc a,b			;6e4e
	ret c			;6e4f
	ld e,b			;6e50
	rst 0			;6e51
	ld b,043h		;6e52
	inc bc			;6e54
	rst 38h			;6e55
	rst 38h			;6e56
	ret pe			;6e57
	ret nc			;6e58
	rst 10h			;6e59
	ret pe			;6e5a
	ld l,a			;6e5b
	rst 10h			;6e5c
	jp (hl)			;6e5d
	dec l			;6e5e
	rst 38h			;6e5f
	ld d,b			;6e60
	call nz,0f43eh		;6e61
	nop			;6e64
	add a,e			;6e65
	rst 38h			;6e66
	rst 38h			;6e67
	ld (hl),h		;6e68
	ld e,026h		;6e69
	dec hl			;6e6b
	ld b,l			;6e6c
	inc b			;6e6d
	ld a,h			;6e6e
	dec b			;6e6f
	ld h,0c4h		;6e70
	dec a			;6e72
	ex de,hl		;6e73
	ret p			;6e74
	ld h,003h		;6e75
	ld b,l			;6e77
l6e78h:
	inc b			;6e78
	ld d,e			;6e79
	cp e			;6e7a
	jr z,l6e7dh		;6e7b
l6e7dh:
	or 0e3h			;6e7d
	ld e,e			;6e7f
	dec b			;6e80
	ld b,000h		;6e81
	inc bc			;6e83
	ret m			;6e84
	ret m			;6e85
	ex de,hl		;6e86
	ld bc,058f9h		;6e87
	jp 0e850h		;6e8a
	djnz l6e8fh		;6e8d
l6e8fh:
	ld (hl),d		;6e8f
	rst 30h			;6e90
	ld h,08ah		;6e91
	dec b			;6e93
	inc a			;6e94
	rst 38h			;6e95
	ld (hl),h		;6e96
	ret p			;6e97
	ld (0e8e4h),a		;6e98
	jp 0ebffh		;6e9b
	jp pe,0fb83h		;6e9e
	inc d			;6ea1
	ld (hl),e		;6ea2
	dec bc			;6ea3
	adc a,(hl)		;6ea4
	ld b,08bh		;6ea5
	ld bc,0fb8bh		;6ea7
	add a,e			;6eaa
	rst 0			;6eab
	jr $-6			;6eac
	jp 0c3f9h		;6eae
	ld d,01fh		;6eb1
	ret pe			;6eb3
	jp (hl)			;6eb4
	rst 38h			;6eb5
	ld (hl),e		;6eb6
	dec b			;6eb7
	or b			;6eb8
	ld b,0e9h		;6eb9
	ex (sp),hl		;6ebb
	jp z,08a26h		;6ebc
	dec b			;6ebf
	inc a			;6ec0
	rst 38h			;6ec1
	ld (hl),h		;6ec2
	call p,0c626h		;6ec3
	dec b			;6ec6
	rst 38h			;6ec7
	ld (0e8e4h),a		;6ec8
	sub e			;6ecb
	rst 38h			;6ecc
	ld (hl),d		;6ecd
	jp (hl)			;6ece
	ld b,01fh		;6ecf
	cp 00dh			;6ed1
	adc a,l			;6ed3
	ld d,l			;6ed4
	inc bc			;6ed5
	or 045h			;6ed6
	dec de			;6ed8
	ret nz			;6ed9
	ld (hl),l		;6eda
	rla			;6edb
	rst 38h			;6edc
	ld (hl),l		;6edd
	ld (bc),a		;6ede
	ret pe			;6edf
	defb 0fdh,0f0h,05bh ;illegal sequence	;6ee0
	ld (hl),088h		;6ee3
	ld e,0ddh		;6ee5
	ld (bc),a		;6ee7
	ret pe			;6ee8
	push af			;6ee9
	ex de,hl		;6eea
	inc a			;6eeb
	rst 38h			;6eec
	ld (hl),l		;6eed
	inc b			;6eee
	or b			;6eef
	ld (bc),a		;6ef0
	ex de,hl		;6ef1
	rst 0			;6ef2
	jp (hl)			;6ef3
	and b			;6ef4
	jp z,08c36h		;6ef5
	ld b,067h		;6ef8
	dec b			;6efa
	ld (hl),089h		;6efb
	ld e,069h		;6efd
	dec b			;6eff
	ld (hl),08fh		;6f00
	ld b,065h		;6f02
	dec b			;6f04
	ld (hl),0c4h		;6f05
	ld e,0dfh		;6f07
	nop			;6f09
	ld b,053h		;6f0a
	ld (hl),0ffh		;6f0c
	ld (hl),065h		;6f0e
	dec b			;6f10
	ret pe			;6f11
	ld hl,(sub_3600h)	;6f12
	adc a,c			;6f15
	ld d,0dfh		;6f16
	nop			;6f18
	ld (hl),08ch		;6f19
	ld e,0e1h		;6f1b
	nop			;6f1d
	ld (hl),08eh		;6f1e
	ld b,067h		;6f20
	dec b			;6f22
	ld (hl),08bh		;6f23
	ld e,069h		;6f25
	dec b			;6f27
	jp 08f36h		;6f28
	ld b,065h		;6f2b
	dec b			;6f2d
	ld (hl),08fh		;6f2e
	ld b,0dfh		;6f30
	nop			;6f32
	ld (hl),08fh		;6f33
	ld b,0e1h		;6f35
	nop			;6f37
	ld (hl),0ffh		;6f38
	ld (hl),065h		;6f3a
	dec b			;6f3c
	jp l5250h+1		;6f3d
	or c			;6f40
	inc b			;6f41
	out (0eah),a		;6f42
	adc a,h			;6f44
	exx			;6f45
	inc bc			;6f46
	jp z,0d98eh		;6f47
	ld e,d			;6f4a
	add a,c			;6f4b
	jp po,0000fh		;6f4c
	ld e,c			;6f4f
	jp 0a2e8h		;6f50
	rst 38h			;6f53
	ret pe			;6f54
	dec sp			;6f55
	nop			;6f56
	ld (hl),d		;6f57
	add hl,bc		;6f58
	ld h,080h		;6f59
	ld a,l			;6f5b
	ld bc,07501h		;6f5c
	rlca			;6f5f
	or b			;6f60
	dec b			;6f61
	ret pe			;6f62
	call nz,0ebffh		;6f63
	adc a,d			;6f66
	ret pe			;6f67
	xor c			;6f68
	jp (hl)			;6f69
	ret pe			;6f6a
	call nz,08bc8h		;6f6b
	ld b,h			;6f6e
	inc b			;6f6f
	ld (hl),08bh		;6f70
	ld c,06bh		;6f72
	dec b			;6f74
	adc a,c			;6f75
	ld c,h			;6f76
	inc b			;6f77
	ret pe			;6f78
	xor (hl)		;6f79
	rst 38h			;6f7a
	jp (hl)			;6f7b
	jr $-52			;6f7c
	ret pe			;6f7e
	ld (hl),l		;6f7f
	rst 38h			;6f80
	ret pe			;6f81
	ld c,000h		;6f82
	ld (hl),d		;6f84
	call c,08026h		;6f85
	ld a,l			;6f88
	ld bc,07400h		;6f89
	out (0e8h),a		;6f8c
	adc a,e			;6f8e
	jp (hl)			;6f8f
	ex de,hl		;6f90
	ret c			;6f91
	ld d,01fh		;6f92
	adc a,c			;6f94
	ld c,06bh		;6f95
	dec b			;6f97
	ret pe			;6f98
	ret p			;6f99
	cp 0b0h			;6f9a
	ld b,08bh		;6f9c
	ld c,06bh		;6f9e
	dec b			;6fa0
	adc a,l			;6fa1
	ld d,l			;6fa2
	inc bc			;6fa3
	ld b,01fh		;6fa4
	jp l033ch		;6fa6
	ld (hl),d		;6fa9
	inc b			;6faa
	or b			;6fab
	ld bc,0b6ebh		;6fac
	ld d,01fh		;6faf
	ret pe			;6fb1
	rst 10h			;6fb2
	cp 006h			;6fb3
	rra			;6fb5
	ld (hl),d		;6fb6
	dec a			;6fb7
	or 045h			;6fb8
	dec de			;6fba
	add a,b			;6fbb
	ld (hl),h		;6fbc
	ld b,033h		;6fbd
	ret nz			;6fbf
	inc sp			;6fc0
	jp nc,l16ebh		;6fc1
	cp 0c8h			;6fc4
	ld a,h			;6fc6
	rrca			;6fc7
	cp 0c8h			;6fc8
	ld a,h			;6fca
	ld e,092h		;6fcb
	add a,a			;6fcd
	pop de			;6fce
	inc bc			;6fcf
	ld b,l			;6fd0
	inc de			;6fd1
	inc de			;6fd2
	ld d,l			;6fd3
	dec d			;6fd4
	ex de,hl		;6fd5
	inc bc			;6fd6
	sub d			;6fd7
	add a,a			;6fd8
	pop de			;6fd9
	adc a,c			;6fda
	ld b,l			;6fdb
	inc h			;6fdc
	adc a,c			;6fdd
	ld d,l			;6fde
	ld h,0e8h		;6fdf
	ld c,(hl)		;6fe1
	ret z			;6fe2
	adc a,c			;6fe3
	ld d,h			;6fe4
	ld b,089h		;6fe5
	inc b			;6fe7
	ex de,hl		;6fe8
	sub c			;6fe9
	sub d			;6fea
	add a,a			;6feb
	pop de			;6fec
	inc bc			;6fed
	ld b,l			;6fee
	inc h			;6fef
	inc de			;6ff0
	ld d,l			;6ff1
	ld h,0ebh		;6ff2
	push hl			;6ff4
	or b			;6ff5
	ld b,0ebh		;6ff6
	or h			;6ff8
	adc a,h			;6ff9
	sbc a,016h		;6ffa
	rra			;6ffc
	inc a			;6ffd
	inc bc			;6ffe
	ld (hl),a		;6fff
	ld d,b			;7000
	ld d,d			;7001
	ret pe			;7002
	add a,(hl)		;7003
	cp 05ah			;7004
	ld (hl),e		;7006
	inc b			;7007
	or b			;7008
	ld b,0ebh		;7009
	ex de,hl		;700b
	inc a			;700c
	ld (bc),a		;700d
l700eh:
	ld (hl),e		;700e
	ld (0003ch),a		;700f
	ld h,08ah		;7012
	ld b,l			;7014
	dec de			;7015
	ld (hl),h		;7016
	ld (de),a		;7017
	ld a,(bc)		;7018
	or 074h			;7019
	inc b			;701b
	or b			;701c
	dec c			;701d
	ex de,hl		;701e
	jp pe,080a8h		;701f
	ld (hl),h		;7022
	ld d,l			;7023
	ld h,088h		;7024
	ld d,l			;7026
	dec de			;7027
	ex de,hl		;7028
	cp (hl)			;7029
	ld (0a8e4h),a		;702a
	add a,b			;702d
	ld (hl),h		;702e
	ex af,af'		;702f
	ld h,0c4h		;7030
	ld a,l			;7032
	inc e			;7033
	ld h,08ah		;7034
	ld h,l			;7036
	dec b			;7037
	ret pe			;7038
	or 0c7h			;7039
	adc a,e			;703b
	ret nc			;703c
	adc a,c			;703d
	ld d,h			;703e
	ld b,0ebh		;703f
	and 026h		;7041
	or 045h			;7043
	dec de			;7045
	add a,b			;7046
	ld (hl),h		;7047
	jr nc,$+40		;7048
	call nz,sub_1c7dh	;704a
	ld (0ebdbh),a		;704d
	ld c,l			;7050
	cp 0c8h			;7051
	cp 0c8h			;7053
	inc a			;7055
	inc bc			;7056
	halt			;7057
	jr z,l700eh		;7058
	ld bc,l042ch		;705a
	ld (hl),h		;705d
	ld b,0b4h		;705e
	inc bc			;7060
	cp 0c8h			;7061
	ld (hl),l		;7063
	inc d			;7064
	ld d,b			;7065
	ret pe			;7066
	rra			;7067
	call c,07258h		;7068
	ld de,l62e8h		;706b
	jp nc,0e08ah		;706e
	or b			;7071
	rst 38h			;7072
	ld (hl),l		;7073
	ld (bc),a		;7074
	cp 0c0h			;7075
	ex de,hl		;7077
	rst 0			;7078
	or b			;7079
	ld bc,0a1ebh		;707a
	or b			;707d
	dec b			;707e
	ex de,hl		;707f
	jp m,l5250h+1		;7080
	ld d,b			;7083
	ld d,(hl)		;7084
	adc a,d			;7085
	jp 011e8h		;7086
	call c,sub_0c72h	;7089
	ret pe			;708c
	ld e,b			;708d
	jp po,08a26h		;708e
	ld e,(hl)		;7091
	ld bc,0c426h		;7092
	ld a,(hl)		;7095
	ld (de),a		;7096
	ret m			;7097
	ld e,(hl)		;7098
	ld e,b			;7099
	ld e,d			;709a
	ld e,c			;709b
	ld (hl),d		;709c
	rst 18h			;709d
	ld h,0f7h		;709e
	ld b,l			;70a0
	inc b			;70a1
	nop			;70a2
	ld b,b			;70a3
	ld (hl),h		;70a4
	out (0feh),a		;70a5
	ret z			;70a7
	cp 0c8h			;70a8
	ld (hl),h		;70aa
	rlca			;70ab
	add a,006h		;70ac
	ld c,c			;70ae
	ld bc,0eb0ch		;70af
	dec b			;70b2
	add a,006h		;70b3
	ld c,c			;70b5
	ld bc,0b003h		;70b6
	ld d,08ah		;70b9
	ex (sp),hl		;70bb
	and e			;70bc
	ld b,a			;70bd
	ld bc,0c033h		;70be
	and e			;70c1
	ld c,d			;70c2
	ld bc,l54a2h		;70c3
	ld bc,l0e88h+1		;70c6
	ld e,c			;70c9
	ld bc,l1689h		;70ca
	ld d,l			;70cd
	ld bc,l3689h		;70ce
	ld d,a			;70d1
	ld bc,l1f06h		;70d2
	adc a,e			;70d5
	rst 30h			;70d6
	ld d,007h		;70d7
	cp e			;70d9
	ld b,a			;70da
	ld bc,l25e6h+2		;70db
	out (036h),a		;70de
	and c			;70e0
	ld e,c			;70e1
	ld bc,092ebh		;70e2
	inc a			;70e5
	ld (bc),a		;70e6
	ld (hl),d		;70e7
l70e8h:
	inc b			;70e8
	or b			;70e9
	ld bc,092ebh		;70ea
	ld d,01fh		;70ed
	ret pe			;70ef
	sbc a,c			;70f0
	ld (iy+004h),e		;70f1
	or b			;70f4
	ld b,0ebh		;70f5
	di			;70f7
	ld a,(bc)		;70f8
	ret nz			;70f9
	ld (hl),l		;70fa
	inc de			;70fb
	ld h,08bh		;70fc
	ld c,l			;70fe
	add hl,de		;70ff
	ld h,08bh		;7100
	ld d,l			;7102
	rla			;7103
	ret pe			;7104
	ld hl,(089c7h)		;7105
	ld c,h			;7108
	inc b			;7109
	adc a,c			;710a
	ld d,h			;710b
	ld b,0ebh		;710c
	call nc,08926h		;710e
	ld c,l			;7111
	add hl,de		;7112
	ld h,089h		;7113
	ld d,l			;7115
	rla			;7116
	ld h,080h		;7117
	ld h,l			;7119
	dec de			;711a
	cp a			;711b
	ex de,hl		;711c
	rst 28h			;711d
	jp m,l2efch		;711e
	adc a,c			;7121
	ld d,0e3h		;7122
	nop			;7124
	ld l,089h		;7125
	ld h,0d2h		;7127
	ld (bc),a		;7129
	ld l,08ch		;712a
	ld d,0d4h		;712c
	ld (bc),a		;712e
	cp h			;712f
	ld (hl),d		;7130
	ld b,d			;7131
	adc a,h			;7132
	ret z			;7133
	adc a,(hl)		;7134
	ret nc			;7135
	ld (hl),08ch		;7136
	ld e,009h		;7138
	ld bc,08936h		;713a
	ld (hl),007h		;713d
	ld bc,0e8e8h		;713f
	ld bc,08356h		;7142
	add a,00ah		;7145
	ld c,007h		;7147
	cp a			;7149
	dec c			;714a
	nop			;714b
	or b			;714c
	inc bc			;714d
	xor d			;714e
	cp 0c8h			;714f
	xor d			;7151
	ld (0aac0h),a		;7152
	xor d			;7155
	cp c			;7156
	inc b			;7157
	nop			;7158
	di			;7159
	and l			;715a
	or c			;715b
	inc bc			;715c
	or b			;715d
	jr nz,$-11		;715e
	xor d			;7160
	add a,e			;7161
	rst 0			;7162
	inc c			;7163
	or b			;7164
	jp 05eaah		;7165
	adc a,e			;7168
	add a,0abh		;7169
	adc a,h			;716b
	ret c			;716c
	xor e			;716d
	add a,b			;716e
	ld c,h			;716f
	inc b			;7170
	inc bc			;7171
	ld (hl),089h		;7172
	ld (hl),0fch		;7174
	nop			;7176
	ld (hl),08ch		;7177
	ld e,0feh		;7179
	nop			;717b
	push bc			;717c
	inc (hl)		;717d
	ret pe			;717e
	xor d			;717f
	ld bc,l44f6h		;7180
	inc b			;7183
	ex af,af'		;7184
	ld (hl),h		;7185
	push af			;7186
	ld (hl),089h		;7187
	ld (hl),0f8h		;7189
	nop			;718b
	ld (hl),08ch		;718c
	ld e,0fah		;718e
	nop			;7190
	cp l			;7191
	ld (hl),h		;7192
	ld b,d			;7193
	push bc			;7194
	inc (hl)		;7195
	add a,e			;7196
	cp 0ffh			;7197
	ld (hl),h		;7199
	ld l,b			;719a
	ret pe			;719b
	adc a,l			;719c
	ld bc,l44f7h		;719d
	inc b			;71a0
	nop			;71a1
	add a,b			;71a2
	ld (hl),l		;71a3
	rst 28h			;71a4
	ld (hl),08ah		;71a5
	ld c,03ah		;71a7
	ld bc,0ed32h		;71a9
	adc a,b			;71ac
	ld c,h			;71ad
	ld a,(bc)		;71ae
	ld (hl),08ah		;71af
	ld d,000h		;71b1
	ld bc,0f632h		;71b3
	ld (hl),000h		;71b6
	ld c,000h		;71b8
	ld bc,l561eh		;71ba
	ld (hl),0c5h		;71bd
	ld e,03fh		;71bf
	ld bc,l378bh		;71c1
	ld b,e			;71c4
	ld b,e			;71c5
	ld h,088h		;71c6
	ld d,(hl)		;71c8
	nop			;71c9
	ld h,088h		;71ca
	halt			;71cc
	ld bc,l5153h		;71cd
	ld d,d			;71d0
	ret pe			;71d1
	ld a,h			;71d2
	call z,08b26h		;71d3
	ld b,(hl)		;71d6
	ld (bc),a		;71d7
	ld (hl),03bh		;71d8
	ld b,001h		;71da
	ld bc,l0476h		;71dc
	ld (hl),0a3h		;71df
	ld bc,l5a01h		;71e1
	ld e,c			;71e4
	ld e,e			;71e5
	adc a,h			;71e6
	ret c			;71e7
	ld e,(hl)		;71e8
	rra			;71e9
	ld h,089h		;71ea
	halt			;71ec
	ld (de),a		;71ed
	ld h,08ch		;71ee
	ld e,(hl)		;71f0
	inc d			;71f1
	ld e,056h		;71f2
	cp 0c6h			;71f4
	cp 0c2h			;71f6
	adc a,(hl)		;71f8
	ret c			;71f9
	add a,e			;71fa
	push bc			;71fb
	ld e,(hl)		;71fc
	jp po,05ec3h		;71fd
	rra			;7200
	ex de,hl		;7201
sub_7202h:
	sub c			;7202
	ld c,01fh		;7203
l7205h:
	adc a,e			;7205
	defb 0fdh,08bh,02eh ;illegal sequence	;7206
	ld bc,0b801h		;7209
	cp l			;720c
	ccf			;720d
	and e			;720e
	sub 002h		;720f
	inc bc			;7211
	push bc			;7212
	dec b			;7213
	djnz l7216h		;7214
l7216h:
	and e			;7216
	ret p			;7217
	nop			;7218
	adc a,e			;7219
	ret nc			;721a
	add a,c			;721b
	jp pe,l3fbdh		;721c
	adc a,e			;721f
	jp pe,0ef03h		;7220
	add a,c			;7223
	defb 0edh ;next byte illegal after ed	;7224
	or a			;7225
	ld (bc),a		;7226
	ld d,l			;7227
	cp a			;7228
	ld (hl),h		;7229
	ld b,d			;722a
	add a,e			;722b
	rst 0			;722c
	jr $-116		;722d
	ld c,000h		;722f
	ld bc,0ed32h		;7231
	dec b			;7234
	ld e,(hl)		;7235
	nop			;7236
	xor e			;7237
	add a,e			;7238
	rst 0			;7239
	ld e,h			;723a
	jp po,083f7h		;723b
	rst 28h			;723e
	ld e,(hl)		;723f
	cp b			;7240
	rst 38h			;7241
	rst 38h			;7242
	xor e			;7243
	add a,e			;7244
	push bc			;7245
	rrca			;7246
	or c			;7247
	inc b			;7248
	out (0edh),a		;7249
	adc a,h			;724b
	jp z,0d503h		;724c
	cp e			;724f
	rrca			;7250
	nop			;7251
	adc a,e			;7252
	ld c,0e3h		;7253
	nop			;7255
	adc a,h			;7256
	call l0e88h+1		;7257
	ex (sp),hl		;725a
	nop			;725b
	adc a,(hl)		;725c
	push bc			;725d
	ld h,08ch		;725e
	ld b,06dh		;7260
	ld bc,0c033h		;7262
	adc a,(hl)		;7265
	ret c			;7266
	adc a,(hl)		;7267
	ret nz			;7268
	cp a			;7269
	add a,d			;726a
	nop			;726b
	adc a,e			;726c
	push bc			;726d
	add a,006h		;726e
	ret nz			;7270
	nop			;7271
	jp pe,l06c7h		;7272
	pop bc			;7275
	nop			;7276
	jp z,0a305h		;7277
	jp 0c700h		;727a
	ld b,000h		;727d
	nop			;727f
	push de			;7280
	dec hl			;7281
	and e			;7282
	ld (bc),a		;7283
	nop			;7284
	cp c			;7285
	ld de,0f300h		;7286
	xor e			;7289
	rst 0			;728a
	ld b,080h		;728b
	nop			;728d
	or l			;728e
	dec b			;728f
	rst 0			;7290
	ld b,084h		;7291
	nop			;7293
	cp c			;7294
	dec b			;7295
	rst 0			;7296
	ld b,088h		;7297
	nop			;7299
	nop			;729a
	ld bc,l1689h		;729b
	adc a,d			;729e
	nop			;729f
	rst 0			;72a0
	ld b,08ch		;72a1
	nop			;72a3
	ret			;72a4
	dec b			;72a5
	rst 0			;72a6
	ld b,090h		;72a7
	nop			;72a9
	ret			;72aa
	dec b			;72ab
	rst 0			;72ac
	ld b,094h		;72ad
	nop			;72af
	push de			;72b0
	rlca			;72b1
	rst 0			;72b2
	ld b,098h		;72b3
	nop			;72b5
	rrca			;72b6
	ex af,af'		;72b7
	rst 0			;72b8
	ld b,09ch		;72b9
	nop			;72bb
	dec de			;72bc
	inc (hl)		;72bd
	rst 0			;72be
	ld b,0a0h		;72bf
	nop			;72c1
	ret			;72c2
	dec b			;72c3
	cp c			;72c4
	inc c			;72c5
	nop			;72c6
	inc sp			;72c7
	ret nz			;72c8
	cp a			;72c9
	xor b			;72ca
	nop			;72cb
	di			;72cc
	xor e			;72cd
	ld c,01fh		;72ce
	ld c,007h		;72d0
	cp b			;72d2
	jp nz,00501h		;72d3
	rrca			;72d6
	nop			;72d7
	or c			;72d8
sub_72d9h:
	inc b			;72d9
	out (0e8h),a		;72da
	adc a,h			;72dc
	rst 18h			;72dd
	inc bc			;72de
	ret m			;72df
	ld b,a			;72e0
	adc a,c			;72e1
	ld a,08bh		;72e2
	ld bc,l5255h		;72e4
	and c			;72e7
l72e8h:
	ex (sp),hl		;72e8
	nop			;72e9
	adc a,e			;72ea
	rst 10h			;72eb
	ret pe			;72ec
	ld (hl),l		;72ed
	ret			;72ee
	ld c,01fh		;72ef
	cp a			;72f1
	jr l72f4h		;72f2
l72f4h:
	inc sp			;72f4
l72f5h:
	ret nz			;72f5
	xor e			;72f6
	xor d			;72f7
	or b			;72f8
	rst 38h			;72f9
	cp c			;72fa
	ld de,0f300h		;72fb
	xor d			;72fe
	ld c,007h		;72ff
l7301h:
	adc a,h			;7301
	ld e,0f6h		;7302
	nop			;7304
l7305h:
	cp (hl)			;7305
	ld l,l			;7306
	dec b			;7307
	ret pe			;7308
	push de			;7309
	ret z			;730a
	ld c,01fh		;730b
	ld c,007h		;730d
	ld e,d			;730f
	ld e,l			;7310
	ld e,c			;7311
	cp (hl)			;7312
	ld (hl),h		;7313
	ld b,d			;7314
	adc a,e			;7315
	ld a,0f0h		;7316
	nop			;7318
	dec hl			;7319
	rst 8			;731a
	dec sp			;731b
	cp 076h			;731c
	rlca			;731e
	ld c,c			;731f
	inc bc			;7320
	ld sp,hl		;7321
	inc bc			;7322
	pop af			;7323
	ld b,c			;7324
	adc a,(iy-03bh)		;7325
	jp (hl)			;7328
	ld c,0c1h		;7329
	ld (hl),0c6h		;732b
	ld b,02dh		;732d
	ld bc,l361ah		;732f
	add a,006h		;7332
	ld l,001h		;7334
	nop			;7336
	ld (hl),0c6h		;7337
	ld b,02fh		;7339
	ld bc,sub_3600h		;733b
	rst 0			;733e
	ld b,030h		;733f
	ld bc,00000h		;7341
	ld b,053h		;7344
	ld d,b			;7346
	cp e			;7347
	dec l			;7348
	ld bc,l070eh		;7349
	ret pe			;734c
	or l			;734d
	ret nc			;734e
	ld e,b			;734f
	ld e,e			;7350
	rlca			;7351
	jp 00000h		;7352
	nop			;7355
	nop			;7356
	nop			;7357
	nop			;7358
	nop			;7359
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	nop			;735e
	nop			;735f
	nop			;7360
	ex af,af'		;7361
	jp z,0b366h		;7362
	xor a			;7365
	or 042h			;7366
	ld b,a			;7368
	call 0b1b2h		;7369
	cp 004h			;736c
	jp nc,0bbcfh		;736e
	call 0b0dch		;7371
	or b			;7374
	ld b,a			;7375
	ld a,0edh		;7376
	jp 0b299h		;7378
	call 0b120h		;737b
	ld a,b			;737e
	or a			;737f
	jp nz,0bbcfh		;7380
	call 0b1b2h		;7383
	cp c			;7386
	jp nz,0b38fh		;7387
	ld a,002h		;738a
	jp 0b399h		;738c
	cp 004h			;738f
	jp nc,0bbcfh		;7391
	cp 002h			;7394
	jp z,0bbcfh		;7396
	ld c,009h		;7399
	jp 0b582h		;739b
	ld c,002h		;739e
	ld hl,0bcd6h		;73a0
	call 0b0fch		;73a3
	jp nz,0b3e0h		;73a6
	ld d,c			;73a9
	inc c			;73aa
	inc c			;73ab
	inc c			;73ac
	call 0b156h		;73ad
	jp nz,0bbcfh		;73b0
	cp 008h			;73b3
	jp c,0b3ddh		;73b5
	sbc a,008h		;73b8
	call 0b1b5h		;73ba
	call 0b127h		;73bd
	jp nz,0b3c5h		;73c0
	ld a,002h		;73c3
	cp 007h			;73c5
	jp c,0b3d5h		;73c7
	sbc a,003h		;73ca
	call 0b120h		;73cc
	ld a,033h		;73cf
	add a,d			;73d1
	jp 0b42ah		;73d2
	rlca			;73d5
	dec c			;73d6
	dec d			;73d7
	jp z,0b3ddh		;73d8
	ld c,00bh		;73db
	jp 0b326h		;73dd
	ld c,001h		;73e0
	ld hl,0bd9ah		;73e2
	call 0b0fch		;73e5
	jp nz,0b545h		;73e8
	call 0b19fh		;73eb
	cp 028h			;73ee
	jp z,0b4b9h		;73f0
	call 0b14eh		;73f3
	cp 008h			;73f6
	jp nc,0b45bh		;73f8
	ld d,a			;73fb
	call 0b0d6h		;73fc
	defb 0f6h		;73ff
