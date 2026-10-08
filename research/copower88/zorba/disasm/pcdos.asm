; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x100 -o /tmp/z_pcdos.asm research/copower88/zorba/extracted/pcdos.com

	org 00100h

	jp l0551h		;0100
l0103h:
	rst 38h			;0103
l0104h:
	cp 001h			;0104
	ld (bc),a		;0106
	inc bc			;0107
	nop			;0108
l0109h:
	inc l			;0109
	ld bc,0411bh		;010a
	nop			;010d
	nop			;010e
l010fh:
	dec de			;010f
	ld b,d			;0110
	nop			;0111
	nop			;0112
l0113h:
	dec de			;0113
	ld b,e			;0114
	nop			;0115
	nop			;0116
l0117h:
	dec de			;0117
	ld b,h			;0118
	nop			;0119
	nop			;011a
l011bh:
	dec de			;011b
	ld e,c			;011c
	nop			;011d
	nop			;011e
l011fh:
	dec de			;011f
	ld b,l			;0120
	nop			;0121
	nop			;0122
l0123h:
	dec de			;0123
	ld c,d			;0124
	nop			;0125
	nop			;0126
l0127h:
	dec de			;0127
	ld c,e			;0128
	nop			;0129
	nop			;012a
l012bh:
	nop			;012b
	nop			;012c
	nop			;012d
	nop			;012e
l012fh:
	nop			;012f
	nop			;0130
	nop			;0131
	nop			;0132
l0133h:
	dec de			;0133
	ld c,h			;0134
	nop			;0135
	nop			;0136
l0137h:
	dec de			;0137
	ld c,l			;0138
	nop			;0139
	nop			;013a
	nop			;013b
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
	add hl,bc		;0144
	add hl,bc		;0145
	ld hl,(l2a2ah)		;0146
	ld hl,(l2a2ah)		;0149
	ld hl,(l2a2ah)		;014c
	ld hl,(l2a2ah)		;014f
	ld hl,(l2a2ah)		;0152
	ld hl,(l2a2ah)		;0155
	ld hl,(l2a2ah)		;0158
	ld hl,(l2a2ah)		;015b
	ld hl,(l2a2ah)		;015e
	ld hl,(l2a2ah)		;0161
	ld hl,(00d2ah)		;0164
	ld a,(bc)		;0167
	add hl,bc		;0168
	add hl,bc		;0169
	ld hl,(l202ah)		;016a
	jr nz,$+34		;016d
	jr nz,l0191h		;016f
	jr nz,l0193h		;0171
	jr nz,$+34		;0173
	jr nz,l0197h		;0175
	jr nz,l0199h		;0177
	jr nz,l019bh		;0179
	jr nz,l019dh		;017b
	jr nz,l019fh		;017d
	jr nz,l01a1h		;017f
	jr nz,$+34		;0181
	jr nz,l01a5h		;0183
	jr nz,l01a7h		;0185
	jr nz,$+44		;0187
	ld hl,(l0a0dh)		;0189
	add hl,bc		;018c
	add hl,bc		;018d
	ld hl,(l202ah)		;018e
l0191h:
	ld d,e			;0191
	ld d,a			;0192
l0193h:
	ld d,b			;0193
	jr nz,l01e3h		;0194
	ld l,c			;0196
l0197h:
	ld h,e			;0197
	ld (hl),d		;0198
l0199h:
	ld l,a			;0199
	ld h,e			;019a
l019bh:
	ld l,a			;019b
	ld l,l			;019c
l019dh:
	ld (hl),b		;019d
	ld (hl),l		;019e
l019fh:
	ld (hl),h		;019f
	ld h,l			;01a0
l01a1h:
	ld (hl),d		;01a1
	jr nz,l01f4h		;01a2
	ld (hl),d		;01a4
l01a5h:
	ld l,a			;01a5
	ld h,h			;01a6
l01a7h:
	ld (hl),l		;01a7
	ld h,e			;01a8
	ld (hl),h		;01a9
	ld (hl),e		;01aa
	jr nz,$+44		;01ab
	ld hl,(l0a0dh)		;01ad
l01b0h:
	add hl,bc		;01b0
l01b1h:
	add hl,bc		;01b1
	ld hl,(l202ah)		;01b2
	ld sp,03030h		;01b5
	jr nc,l01dah		;01b8
	ld d,a			;01ba
	ld h,l			;01bb
	ld (hl),e		;01bc
	ld (hl),h		;01bd
	jr nz,l0206h		;01be
	ld (hl),l		;01c0
	ld l,h			;01c1
	ld l,h			;01c2
	ld h,l			;01c3
	ld (hl),d		;01c4
	jr nz,l01e7h		;01c5
	jr nz,l01e9h		;01c7
	jr nz,$+34		;01c9
	jr nz,l01edh		;01cb
	jr nz,l01efh		;01cd
	jr nz,$+44		;01cf
	ld hl,(l0a0dh)		;01d1
	add hl,bc		;01d4
	add hl,bc		;01d5
	ld hl,(l202ah)		;01d6
	ld b,(hl)		;01d9
l01dah:
	ld l,a			;01da
	ld (hl),d		;01db
	ld (hl),h		;01dc
	jr nz,$+89		;01dd
	ld l,a			;01df
	ld (hl),d		;01e0
	ld (hl),h		;01e1
	ld l,b			;01e2
l01e3h:
	inc l			;01e3
l01e4h:
	jr nz,$+86		;01e4
l01e6h:
	ld h,l			;01e6
l01e7h:
	ld a,b			;01e7
	ld h,c			;01e8
l01e9h:
	ld (hl),e		;01e9
	jr nz,l020ch		;01ea
	scf			;01ec
l01edh:
	ld (hl),031h		;01ed
l01efh:
	ld sp,l2035h		;01ef
	jr nz,$+34		;01f2
l01f4h:
	ld hl,(00d2ah)		;01f4
	ld a,(bc)		;01f7
	add hl,bc		;01f8
	add hl,bc		;01f9
	ld hl,(l202ah)		;01fa
	ld h,e			;01fd
	ld l,a			;01fe
	ld (hl),b		;01ff
l0200h:
	ld a,c			;0200
	ld (hl),d		;0201
	ld l,c			;0202
	ld h,a			;0203
	ld l,b			;0204
	ld (hl),h		;0205
l0206h:
	jr nz,l0239h		;0206
	add hl,sp		;0208
	jr c,$+53		;0209
	inc l			;020b
l020ch:
	jr c,l0242h		;020c
	inc l			;020e
	jr c,$+55		;020f
	jr nz,l0233h		;0211
	jr nz,l0235h		;0213
	jr nz,l0237h		;0215
	jr nz,$+44		;0217
	ld hl,(l0a0dh)		;0219
	add hl,bc		;021c
	add hl,bc		;021d
	ld hl,(l202ah)		;021e
	ld (02d30h),a		;0221
	ld b,c			;0224
	ld (hl),l		;0225
	ld h,a			;0226
	ld (hl),l		;0227
	ld (hl),e		;0228
	ld (hl),h		;0229
	dec l			;022a
	jr c,$+55		;022b
	jr nz,l024fh		;022d
	jr nz,l0251h		;022f
	jr nz,l0253h		;0231
l0233h:
	jr nz,l0255h		;0233
l0235h:
	jr nz,l0257h		;0235
l0237h:
	jr nz,l0259h		;0237
l0239h:
	jr nz,l025bh		;0239
	jr nz,$+44		;023b
	ld hl,(l0a0dh)		;023d
l0240h:
	add hl,bc		;0240
	add hl,bc		;0241
l0242h:
	ld hl,(l202ah)		;0242
	jr nz,$+34		;0245
	jr nz,l0269h		;0247
	jr nz,$+34		;0249
	jr nz,$+34		;024b
	jr nz,l026fh		;024d
l024fh:
	jr nz,$+34		;024f
l0251h:
	jr nz,$+34		;0251
l0253h:
	jr nz,l0275h		;0253
l0255h:
	jr nz,$+34		;0255
l0257h:
	jr nz,$+34		;0257
l0259h:
	jr nz,l027bh		;0259
l025bh:
	jr nz,$+34		;025b
	jr nz,$+34		;025d
	jr nz,l028bh		;025f
	ld hl,(l0a0dh)		;0261
	add hl,bc		;0264
	add hl,bc		;0265
	ld hl,(l2a2ah)		;0266
l0269h:
	ld hl,(l2a2ah)		;0269
	ld hl,(l2a2ah)		;026c
l026fh:
	ld hl,(l2a2ah)		;026f
	ld hl,(l2a2ah)		;0272
l0275h:
	ld hl,(l2a2ah)		;0275
	ld hl,(l2a2ah)		;0278
l027bh:
	ld hl,(l2a2ah)		;027b
	ld hl,(l2a2ah)		;027e
	ld hl,(l2a2ah)		;0281
	ld hl,(00d2ah)		;0284
	ld a,(bc)		;0287
	dec c			;0288
	ld a,(bc)		;0289
	ld a,(bc)		;028a
l028bh:
	inc h			;028b
	nop			;028c
	nop			;028d
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
	jp l030ch		;0300
sub_0303h:
	jp l030ch		;0303
sub_0306h:
	jp l030ch		;0306
sub_0309h:
	jp l030ch		;0309
l030ch:
	ret			;030c
	nop			;030d
	nop			;030e
	nop			;030f
	nop			;0310
	nop			;0311
	nop			;0312
	nop			;0313
	nop			;0314
	nop			;0315
	nop			;0316
	nop			;0317
	nop			;0318
	nop			;0319
	nop			;031a
	nop			;031b
	nop			;031c
	nop			;031d
	nop			;031e
	nop			;031f
	nop			;0320
	nop			;0321
	nop			;0322
	nop			;0323
	nop			;0324
	nop			;0325
	nop			;0326
	nop			;0327
	nop			;0328
	nop			;0329
	nop			;032a
	nop			;032b
	nop			;032c
	nop			;032d
	nop			;032e
	nop			;032f
	nop			;0330
	nop			;0331
	nop			;0332
	nop			;0333
	nop			;0334
	nop			;0335
	nop			;0336
	nop			;0337
	nop			;0338
	nop			;0339
	nop			;033a
	nop			;033b
sub_033ch:
	nop			;033c
	nop			;033d
	nop			;033e
	nop			;033f
	nop			;0340
	nop			;0341
	nop			;0342
	nop			;0343
	nop			;0344
	nop			;0345
	nop			;0346
	nop			;0347
	nop			;0348
	nop			;0349
	nop			;034a
	nop			;034b
	nop			;034c
	nop			;034d
	nop			;034e
	nop			;034f
	nop			;0350
	nop			;0351
	nop			;0352
	nop			;0353
	nop			;0354
	nop			;0355
	nop			;0356
	nop			;0357
	nop			;0358
	nop			;0359
	nop			;035a
	nop			;035b
	nop			;035c
	nop			;035d
	nop			;035e
	nop			;035f
	nop			;0360
	nop			;0361
	nop			;0362
	nop			;0363
	nop			;0364
	nop			;0365
	nop			;0366
	nop			;0367
	nop			;0368
	nop			;0369
	nop			;036a
	nop			;036b
	nop			;036c
	nop			;036d
	nop			;036e
	nop			;036f
	nop			;0370
	nop			;0371
	nop			;0372
	nop			;0373
	nop			;0374
l0375h:
	nop			;0375
	nop			;0376
	nop			;0377
	nop			;0378
	nop			;0379
	nop			;037a
	nop			;037b
	nop			;037c
	nop			;037d
	nop			;037e
	nop			;037f
	nop			;0380
	nop			;0381
	nop			;0382
	nop			;0383
	nop			;0384
	nop			;0385
	nop			;0386
	nop			;0387
	nop			;0388
	nop			;0389
	nop			;038a
	nop			;038b
	nop			;038c
	nop			;038d
	nop			;038e
	nop			;038f
	nop			;0390
	nop			;0391
	nop			;0392
	nop			;0393
	nop			;0394
	nop			;0395
	nop			;0396
	nop			;0397
	nop			;0398
	nop			;0399
	nop			;039a
	nop			;039b
	nop			;039c
	nop			;039d
	nop			;039e
	nop			;039f
	nop			;03a0
	nop			;03a1
	nop			;03a2
	nop			;03a3
	nop			;03a4
	nop			;03a5
	nop			;03a6
	nop			;03a7
	nop			;03a8
	nop			;03a9
	nop			;03aa
	nop			;03ab
	nop			;03ac
	nop			;03ad
	nop			;03ae
	nop			;03af
	nop			;03b0
	nop			;03b1
	nop			;03b2
	nop			;03b3
	nop			;03b4
	nop			;03b5
	nop			;03b6
	nop			;03b7
	nop			;03b8
	nop			;03b9
	nop			;03ba
	nop			;03bb
	nop			;03bc
	nop			;03bd
	nop			;03be
	nop			;03bf
	nop			;03c0
	nop			;03c1
	nop			;03c2
	nop			;03c3
	nop			;03c4
	nop			;03c5
	nop			;03c6
	nop			;03c7
	nop			;03c8
	nop			;03c9
	nop			;03ca
	nop			;03cb
	nop			;03cc
	nop			;03cd
	nop			;03ce
	nop			;03cf
	nop			;03d0
	nop			;03d1
	nop			;03d2
	nop			;03d3
	nop			;03d4
	nop			;03d5
	nop			;03d6
	nop			;03d7
	nop			;03d8
	nop			;03d9
	nop			;03da
	nop			;03db
	nop			;03dc
	nop			;03dd
	nop			;03de
	nop			;03df
	nop			;03e0
	nop			;03e1
	nop			;03e2
	nop			;03e3
l03e4h:
	nop			;03e4
	nop			;03e5
	nop			;03e6
	nop			;03e7
l03e8h:
	nop			;03e8
	nop			;03e9
	nop			;03ea
	nop			;03eb
	nop			;03ec
	nop			;03ed
	nop			;03ee
	nop			;03ef
	nop			;03f0
	nop			;03f1
	nop			;03f2
	nop			;03f3
	nop			;03f4
	nop			;03f5
	nop			;03f6
	nop			;03f7
	nop			;03f8
	nop			;03f9
	nop			;03fa
	nop			;03fb
	nop			;03fc
	nop			;03fd
	nop			;03fe
	nop			;03ff
l0400h:
	nop			;0400
	nop			;0401
	nop			;0402
	nop			;0403
	nop			;0404
	nop			;0405
	nop			;0406
	nop			;0407
	nop			;0408
	nop			;0409
	nop			;040a
	nop			;040b
	nop			;040c
	nop			;040d
	nop			;040e
	nop			;040f
	nop			;0410
	nop			;0411
	nop			;0412
	nop			;0413
	nop			;0414
	nop			;0415
	nop			;0416
	nop			;0417
	nop			;0418
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
	nop			;0474
	nop			;0475
	nop			;0476
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
l0488h:
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
	nop			;04b1
	nop			;04b2
	nop			;04b3
	nop			;04b4
	nop			;04b5
	nop			;04b6
	nop			;04b7
	nop			;04b8
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
	ld de,(l1686h)		;0500
	ld a,(l1688h)		;0504
	ld c,a			;0507
	ld a,d			;0508
	or a			;0509
	jr z,l0524h		;050a
	cp 001h			;050c
	jr z,l054ch		;050e
	cp 002h			;0510
	jr z,l0547h		;0512
	call sub_0303h		;0514
sub_0517h:
	ld (l1686h),de		;0517
	ld a,002h		;051b
	ld (l1685h),a		;051d
	call sub_1195h		;0520
	ret			;0523
l0524h:
	bit 0,c			;0524
	jr z,l0535h		;0526
	jp l052bh		;0528
l052bh:
	call sub_0517h		;052b
	ld hl,l0542h		;052e
	ld (00529h),hl		;0531
	ret			;0534
l0535h:
	jp l0538h		;0535
l0538h:
	call sub_0517h		;0538
	ld hl,l0542h		;053b
	ld (l0535h+1),hl	;053e
	ret			;0541
l0542h:
	call sub_0300h		;0542
	jr sub_0517h		;0545
l0547h:
	call sub_0306h		;0547
	jr sub_0517h		;054a
l054ch:
	call sub_0309h		;054c
	jr sub_0517h		;054f
l0551h:
	ld hl,(00006h)		;0551
	ld sp,hl		;0554
	ld hl,(00001h)		;0555
	ld de,l15a2h		;0558
	ld bc,00030h		;055b
	ldir			;055e
	xor a			;0560
	ld (l159dh),a		;0561
	ld a,(00080h)		;0564
	or a			;0567
	jr z,l05a4h		;0568
	ld b,000h		;056a
	ld c,a			;056c
	ld hl,00081h		;056d
	ld a,02fh		;0570
	cpir			;0572
	jr nz,l05a4h		;0574
	ld a,(hl)		;0576
	ld (l159eh),a		;0577
	cp 057h			;057a
	jp z,l0623h		;057c
	cp 054h			;057f
	jr nz,l05a4h		;0581
	ld hl,l088ch		;0583
	ld (l08d9h),hl		;0586
	ld de,l08dch		;0589
	ld c,009h		;058c
	call 00005h		;058e
	call sub_15a8h		;0591
	ld (l08d9h+2),a		;0594
	call sub_0763h		;0597
	push hl			;059a
	ld c,l			;059b
	call sub_15abh		;059c
	pop hl			;059f
	ld c,h			;05a0
	call sub_15abh		;05a1
l05a4h:
	ld hl,l03e8h		;05a4
	ld de,00000h		;05a7
l05aah:
	ld a,(l0103h)		;05aa
	ld c,a			;05ad
	in a,(c)		;05ae
l05b0h:
	bit 7,a			;05b0
	jr z,l05bbh		;05b2
	ld a,(l0104h)		;05b4
	ld c,a			;05b7
	in a,(c)		;05b8
	inc de			;05ba
l05bbh:
	dec hl			;05bb
	ld a,h			;05bc
	or l			;05bd
	jr nz,l05aah		;05be
	ld a,d			;05c0
	or e			;05c1
	call z,sub_07d8h	;05c2
	ld hl,0fff8h		;05c5
	add hl,de		;05c8
	call c,sub_07d8h	;05c9
	ld hl,00000h		;05cc
	ld (l1684h),hl		;05cf
	call sub_1195h		;05d2
	call sub_0c3bh		;05d5
	cp 005h			;05d8
	call nz,sub_07d8h	;05da
	call sub_11e1h		;05dd
	ld a,(l1684h)		;05e0
	cp 009h			;05e3
	call nz,sub_07d8h	;05e5
	ld hl,00009h		;05e8
	ld (l1684h),hl		;05eb
	call sub_1195h		;05ee
	call sub_0c3bh		;05f1
	cp 005h			;05f4
	call nz,sub_07d8h	;05f6
	call sub_11e1h		;05f9
	ld a,(l1684h)		;05fc
	cp 008h			;05ff
	call nz,sub_07d8h	;0601
	ld hl,00008h		;0604
	ld (l1684h),hl		;0607
	call sub_1195h		;060a
	call sub_0c3bh		;060d
	cp 005h			;0610
	call nz,sub_07d8h	;0612
	call sub_11e1h		;0615
	ld a,(l1684h)		;0618
	cp 015h			;061b
	call nz,sub_07d8h	;061d
	call sub_10b1h		;0620
l0623h:
	call l104dh+2		;0623
	ld a,(l0103h)		;0626
	ld c,a			;0629
	in a,(c)		;062a
	bit 7,a			;062c
	jp nz,l068dh		;062e
	ld a,(l159dh)		;0631
	or a			;0634
	jr nz,l0623h		;0635
	call sub_15a5h		;0637
	or a			;063a
	jr z,l0623h		;063b
	ld a,(l0103h)		;063d
	ld c,a			;0640
	ld a,000h		;0641
	out (c),a		;0643
	ld a,080h		;0645
	ld (l159dh),a		;0647
	jr l0623h		;064a
l064ch:
	call sub_15a5h		;064c
	or a			;064f
	jr z,l0623h		;0650
	ld a,(l0103h)		;0652
	ld c,a			;0655
	in a,(c)		;0656
	bit 0,a			;0658
	jr nz,l064ch		;065a
	ld a,(l0104h)		;065c
	ld c,a			;065f
	ld a,001h		;0660
	out (c),a		;0662
l0664h:
	ld a,(l0103h)		;0664
	ld c,a			;0667
	in a,(c)		;0668
	bit 0,a			;066a
	jr nz,l0664h		;066c
	call sub_15a8h		;066e
	ld d,a			;0671
	ld a,(l0104h)		;0672
	ld c,a			;0675
	out (c),d		;0676
	xor a			;0678
	ld (l159dh),a		;0679
	ld a,(l08d9h+2)		;067c
	or a			;067f
	jp z,l0623h		;0680
	cp d			;0683
	jp nz,l0623h		;0684
	call sub_08d6h		;0687
	jp l0623h		;068a
l068dh:
	ld a,(l0104h)		;068d
	ld c,a			;0690
	in a,(c)		;0691
	cp 020h			;0693
	jp z,l0623h		;0695
	cp 084h			;0698
	jp z,l06c9h		;069a
	cp 08bh			;069d
	jp z,l06d3h		;069f
	cp 0ffh			;06a2
	jp z,l064ch		;06a4
	cp 005h			;06a7
	call nz,sub_0833h	;06a9
l06ach:
	jp nz,l0623h		;06ac
	call sub_11e1h		;06af
	ld a,(l1684h)		;06b2
	cp 026h			;06b5
	call nc,sub_0740h	;06b7
	ld hl,(l08d9h)		;06ba
	call sub_0c3ah		;06bd
	ld hl,l06e1h		;06c0
	call 00c31h		;06c3
l06c6h:
	jp l0623h		;06c6
l06c9h:
	call sub_0c3bh		;06c9
	ld c,a			;06cc
	call sub_0ecdh		;06cd
	jp l0623h		;06d0
l06d3h:
	call sub_0c3bh		;06d3
	and 00fh		;06d6
	ld hl,(l0ca0h)		;06d8
	call 00c31h		;06db
	jp l0623h		;06de
l06e1h:
	ld b,b			;06e1
	rlca			;06e2
	ld b,b			;06e3
	rlca			;06e4
	ld b,b			;06e5
	rlca			;06e6
	ld b,b			;06e7
l06e8h:
	rlca			;06e8
	ld b,b			;06e9
	rlca			;06ea
	ld bc,l1010h		;06eb
	djnz l0708h		;06ee
	djnz l0732h		;06f0
	rlca			;06f2
	ld b,b			;06f3
	rlca			;06f4
	ld b,b			;06f5
	rlca			;06f6
	ld b,b			;06f7
	rlca			;06f8
	ld b,b			;06f9
	rlca			;06fa
	ld b,b			;06fb
	rlca			;06fc
	ld b,b			;06fd
	rlca			;06fe
	sub (hl)		;06ff
	djnz l06ach		;0700
	djnz $+66		;0702
	rlca			;0704
	ld b,b			;0705
	rlca			;0706
	ld b,b			;0707
l0708h:
	rlca			;0708
	ld h,a			;0709
l070ah:
	djnz l074ch		;070a
	rlca			;070c
	ld b,b			;070d
	rlca			;070e
	inc h			;070f
	ld (de),a		;0710
	sub a			;0711
	ld (de),a		;0712
	scf			;0713
	rrca			;0714
	nop			;0715
	dec b			;0716
	ld b,b			;0717
	rlca			;0718
	ld b,b			;0719
	rlca			;071a
	add hl,hl		;071b
	inc d			;071c
	ld b,b			;071d
	rlca			;071e
	ld b,b			;071f
	rlca			;0720
	push af			;0721
	ex af,af'		;0722
	ld c,b			;0723
	add hl,bc		;0724
	ld (hl),h		;0725
	add hl,bc		;0726
	add hl,sp		;0727
	djnz $+46		;0728
	djnz l072eh		;072a
	inc de			;072c
	nop			;072d
l072eh:
	pop af			;072e
	jp p,0f4f3h		;072f
l0732h:
	or c			;0732
	ret nz			;0733
	pop bc			;0734
	jp nz,0d1d0h		;0735
	jp nc,0e2e1h		;0738
	ex (sp),hl		;073b
	call po,0c3d3h		;073c
	or d			;073f
sub_0740h:
	call sub_0763h		;0740
	ld (l07b1h),hl		;0743
	pop hl			;0746
	push hl			;0747
	ld a,h			;0748
	call sub_0763h		;0749
l074ch:
	ld (007b7h),hl		;074c
	pop hl			;074f
	ld a,l			;0750
	call sub_0763h		;0751
	ld (l07b9h),hl		;0754
	ld hl,l0793h		;0757
	call sub_077bh		;075a
	call sub_15a8h		;075d
	jp l1067h		;0760
sub_0763h:
	push af			;0763
	rra			;0764
	rra			;0765
	rra			;0766
	rra			;0767
	call sub_0772h		;0768
	ld l,a			;076b
	pop af			;076c
	call sub_0772h		;076d
	ld h,a			;0770
	ret			;0771
sub_0772h:
	and 00fh		;0772
	add a,090h		;0774
	daa			;0776
	adc a,040h		;0777
	daa			;0779
	ret			;077a
sub_077bh:
	ld c,(hl)		;077b
	inc hl			;077c
	push hl			;077d
	call sub_0ecdh		;077e
	pop hl			;0781
	ld a,(hl)		;0782
	cp 024h			;0783
	jr nz,sub_077bh		;0785
	ret			;0787
sub_0788h:
	ld c,00dh		;0788
l078ah:
	call sub_0ecdh		;078a
	ld c,00ah		;078d
	call sub_0ecdh		;078f
	ret			;0792
l0793h:
	dec c			;0793
	ld a,(bc)		;0794
	dec c			;0795
	ld a,(bc)		;0796
	ld hl,(l2a2ah)		;0797
	jr nz,$+75		;079a
	ld c,(hl)		;079c
	ld d,(hl)		;079d
	ld b,c			;079e
	ld c,h			;079f
	ld c,c			;07a0
	ld b,h			;07a1
	jr nz,$+58		;07a2
	jr nc,l07deh		;07a4
	jr c,l07c8h		;07a6
	ld d,d			;07a8
	ld b,l			;07a9
	ld d,c			;07aa
	ld d,l			;07ab
	ld b,l			;07ac
	ld d,e			;07ad
	ld d,h			;07ae
	jr nz,$+37		;07af
l07b1h:
	ld e,b			;07b1
	ld e,b			;07b2
	jr nz,l07f6h		;07b3
	ld d,h			;07b5
	jr nz,l0810h		;07b6
	ld e,b			;07b8
l07b9h:
	ld e,b			;07b9
	ld e,b			;07ba
	inc l			;07bb
	jr nz,l080eh		;07bc
	ld d,d			;07be
	ld b,l			;07bf
	ld d,e			;07c0
	ld d,e			;07c1
	jr nz,l0805h		;07c2
	ld c,(hl)		;07c4
	ld e,c			;07c5
	jr nz,$+77		;07c6
l07c8h:
	ld b,l			;07c8
	ld e,c			;07c9
	jr nz,l0820h		;07ca
	ld c,a			;07cc
	jr nz,l0810h		;07cd
	ld b,d			;07cf
l07d0h:
	ld c,a			;07d0
	ld d,d			;07d1
	ld d,h			;07d2
	jr nz,l07ffh		;07d3
	ld hl,(0242ah)		;07d5
sub_07d8h:
	pop hl			;07d8
	push hl			;07d9
	ld a,h			;07da
	call sub_0763h		;07db
l07deh:
	ld (00826h),hl		;07de
	pop hl			;07e1
	ld a,l			;07e2
	call sub_0763h		;07e3
	ld (l0828h),hl		;07e6
	ld de,l07f4h		;07e9
	ld c,009h		;07ec
	call 00005h		;07ee
	jp 00000h		;07f1
l07f4h:
	dec c			;07f4
	ld a,(bc)		;07f5
l07f6h:
	dec c			;07f6
	ld a,(bc)		;07f7
	ld hl,(l2a2ah)		;07f8
	jr nz,$+58		;07fb
	jr nc,$+58		;07fd
l07ffh:
	jr c,l0821h		;07ff
	ld b,h			;0801
	ld c,a			;0802
	ld b,l			;0803
	ld d,e			;0804
l0805h:
	jr nz,l0855h		;0805
	ld c,a			;0807
	ld d,h			;0808
	jr nz,l085dh		;0809
	ld b,l			;080b
	ld d,e			;080c
	ld d,b			;080d
l080eh:
	ld c,a			;080e
	ld c,(hl)		;080f
l0810h:
	ld b,h			;0810
	inc l			;0811
	jr nz,l0864h		;0812
	ld d,d			;0814
	ld c,a			;0815
	ld b,a			;0816
	ld d,d			;0817
	ld b,c			;0818
	ld c,l			;0819
	jr nz,l085dh		;081a
	ld b,d			;081c
	ld c,a			;081d
	ld d,d			;081e
	ld d,h			;081f
l0820h:
	ld b,l			;0820
l0821h:
	ld b,h			;0821
	jr nz,l0865h		;0822
	ld d,h			;0824
	jr nz,l087fh		;0825
	ld e,b			;0827
l0828h:
	ld e,b			;0828
	ld e,b			;0829
	jr nz,$+44		;082a
	ld hl,(00d2ah)		;082c
	ld a,(bc)		;082f
	dec c			;0830
	ld a,(bc)		;0831
	inc h			;0832
sub_0833h:
	ld hl,l084eh		;0833
	call sub_077bh		;0836
	call sub_15a8h		;0839
	cp 052h			;083c
	jr z,l0845h		;083e
	cp 072h			;0840
	jp nz,l1067h		;0842
l0845h:
	call sub_0788h		;0845
	call sub_0788h		;0848
	xor a			;084b
	inc a			;084c
	ret			;084d
l084eh:
	dec c			;084e
	ld a,(bc)		;084f
	dec c			;0850
	ld a,(bc)		;0851
	ld hl,(l2a2ah)		;0852
l0855h:
	jr nz,l088fh		;0855
	jr nc,$+58		;0857
	jr c,l087bh		;0859
	ld d,e			;085b
	ld e,c			;085c
l085dh:
	ld c,(hl)		;085d
	ld b,e			;085e
	jr nz,l08a6h		;085f
	ld d,d			;0861
	ld d,d			;0862
	ld c,a			;0863
l0864h:
	ld d,d			;0864
l0865h:
	inc l			;0865
	jr nz,l08b8h		;0866
	ld d,d			;0868
	ld b,l			;0869
	ld d,e			;086a
	ld d,e			;086b
	jr nz,$+36		;086c
	ld d,d			;086e
	ld (05420h),hl		;086f
	ld c,a			;0872
	jr nz,l08c7h		;0873
	ld b,l			;0875
	ld d,h			;0876
	ld d,d			;0877
	ld e,c			;0878
	jr nz,l08cah		;0879
l087bh:
	ld d,d			;087b
	jr nz,l08c3h		;087c
	ld c,h			;087e
l087fh:
	ld d,e			;087f
	ld b,l			;0880
	jr nz,l08c4h		;0881
	ld b,d			;0883
	ld c,a			;0884
	ld d,d			;0885
	ld d,h			;0886
	jr nz,l08b3h		;0887
	ld hl,(0242ah)		;0889
l088ch:
	ld hl,l0140h		;088c
l088fh:
	ld de,l0141h		;088f
	ld bc,001bfh		;0892
	ld (hl),000h		;0895
	ldir			;0897
	ld hl,l089fh		;0899
	ld (l08d9h),hl		;089c
l089fh:
	ld ix,l1684h		;089f
	call l08c4h		;08a3
l08a6h:
	ld b,(ix+000h)		;08a6
	call l08c4h		;08a9
	inc b			;08ac
	dec b			;08ad
	jr z,l08b5h		;08ae
l08b0h:
	call l08c4h		;08b0
l08b3h:
	djnz l08b0h		;08b3
l08b5h:
	ld a,(l1684h)		;08b5
l08b8h:
	ld d,000h		;08b8
	ld e,a			;08ba
	ld hl,l0240h		;08bb
	add hl,de		;08be
	inc (hl)		;08bf
	ret nz			;08c0
	ld (hl),0ffh		;08c1
l08c3h:
	ret			;08c3
l08c4h:
	ld hl,l08d8h		;08c4
l08c7h:
	ld d,000h		;08c7
	ld e,(hl)		;08c9
l08cah:
	inc (hl)		;08ca
	ld hl,l0140h		;08cb
	add hl,de		;08ce
	ld a,(ix+000h)		;08cf
	inc ix			;08d2
	ld (hl),a		;08d4
	ret			;08d5
sub_08d6h:
	rst 38h			;08d6
	ret			;08d7
l08d8h:
	nop			;08d8
l08d9h:
	jp 00008h		;08d9
l08dch:
	ld d,h			;08dc
	ld a,c			;08dd
	ld (hl),b		;08de
	ld h,l			;08df
	jr nz,l0944h		;08e0
	ld (hl),d		;08e2
	ld h,l			;08e3
	ld h,c			;08e4
	ld l,e			;08e5
	jr nz,l094bh		;08e6
	ld l,b			;08e8
	ld h,c			;08e9
	ld (hl),d		;08ea
	ld h,c			;08eb
	ld h,e			;08ec
	ld (hl),h		;08ed
	ld h,l			;08ee
	ld (hl),d		;08ef
	jr nz,l0920h		;08f0
	ld l,020h		;08f2
	inc h			;08f4
	ld hl,(l08f9h)		;08f5
	jp (hl)			;08f8
l08f9h:
	inc d			;08f9
	add hl,bc		;08fa
l08fbh:
	call sub_0b1ch		;08fb
	jr nz,l090eh		;08fe
	ld a,020h		;0900
	ld (l1684h),a		;0902
	ld a,080h		;0905
	ld (l1685h),a		;0907
	call sub_1195h		;090a
	ret			;090d
l090eh:
	ld hl,l0914h		;090e
	ld (l08f9h),hl		;0911
l0914h:
	ld a,020h		;0914
	ld (l1684h),a		;0916
	xor a			;0919
	ld (l1685h),a		;091a
	call sub_1195h		;091d
l0920h:
	ret			;0920
l0921h:
	ld hl,(l0be9h)		;0921
	ld a,h			;0924
	or l			;0925
	jr z,l090eh		;0926
	dec hl			;0928
	ld (l0be9h),hl		;0929
	ld hl,(l0be7h)		;092c
	ld de,l1686h		;092f
	ld bc,00010h		;0932
	ldir			;0935
	ld (l0be7h),hl		;0937
	ld a,020h		;093a
	ld (l1684h),a		;093c
	ld a,010h		;093f
	ld (l1685h),a		;0941
l0944h:
	call sub_1195h		;0944
	ret			;0947
	ld hl,(l094ch)		;0948
l094bh:
	jp (hl)			;094b
l094ch:
	ld h,a			;094c
	add hl,bc		;094d
l094eh:
	call sub_0b78h		;094e
	jr nz,l0961h		;0951
	ld a,021h		;0953
	ld (l1684h),a		;0955
	ld a,001h		;0958
	ld (l1685h),a		;095a
	call sub_1195h		;095d
	ret			;0960
l0961h:
	ld hl,l0967h		;0961
	ld (l094ch),hl		;0964
l0967h:
	ld a,021h		;0967
	ld (l1684h),a		;0969
	xor a			;096c
	ld (l1685h),a		;096d
	call sub_1195h		;0970
	ret			;0973
	ld hl,l1684h		;0974
	ld (hl),022h		;0977
	inc hl			;0979
	ld b,(hl)		;097a
	inc hl			;097b
	ld a,(hl)		;097c
	inc hl			;097d
	cp 00eh			;097e
	jp z,l0b0ah		;0980
	cp 00fh			;0983
	jp z,l0a0ah		;0985
	cp 010h			;0988
	jp z,l0a34h		;098a
	cp 011h			;098d
	jp z,l09a9h		;098f
	cp 012h			;0992
	jp z,l0a5fh		;0994
	cp 013h			;0997
	jp z,l09a9h		;0999
	cp 016h			;099c
	jp z,l0a1fh		;099e
	xor a			;09a1
	ld (l1685h),a		;09a2
	call sub_1195h		;09a5
	ret			;09a8
l09a9h:
	push af			;09a9
	call sub_0af7h		;09aa
	ld c,020h		;09ad
	ld e,0ffh		;09af
	call 00005h		;09b1
	ld (l0bech),a		;09b4
	ld hl,l0bc3h		;09b7
	ld a,(hl)		;09ba
	rra			;09bb
	rra			;09bc
	rra			;09bd
	rra			;09be
	and 00fh		;09bf
	ld (l0bedh),a		;09c1
	ld e,a			;09c4
	ld a,(hl)		;09c5
	and 00fh		;09c6
	ld (hl),a		;09c8
	ld c,020h		;09c9
	call 00005h		;09cb
	pop af			;09ce
	ld c,a			;09cf
	ld de,l0bc3h		;09d0
	cp 011h			;09d3
	jr nz,l09e0h		;09d5
	call 00005h		;09d7
	push af			;09da
	call sub_1195h		;09db
	pop af			;09de
	ret			;09df
l09e0h:
	call 00005h		;09e0
	cp 0ffh			;09e3
	push af			;09e5
	jr nz,l09ech		;09e6
	xor a			;09e8
	ld (l1685h),a		;09e9
l09ech:
	call sub_1195h		;09ec
	call sub_09f4h		;09ef
	pop af			;09f2
	ret			;09f3
sub_09f4h:
	push af			;09f4
	ld a,(l0bech)		;09f5
	ld e,a			;09f8
	ld c,020h		;09f9
	call 00005h		;09fb
	pop af			;09fe
	ret			;09ff
sub_0a00h:
	ld a,(l0bedh)		;0a00
	ld e,a			;0a03
l0a04h:
	ld c,020h		;0a04
	call 00005h		;0a06
	ret			;0a09
l0a0ah:
	call l09a9h		;0a0a
l0a0dh:
	ret z			;0a0d
	ld hl,l08fbh		;0a0e
	ld (l08f9h),hl		;0a11
	xor a			;0a14
	ld (l0bebh),a		;0a15
	ld hl,00000h		;0a18
	ld (l0be9h),hl		;0a1b
	ret			;0a1e
l0a1fh:
	call l09a9h		;0a1f
	ret z			;0a22
	ld hl,l094eh		;0a23
	ld (l094ch),hl		;0a26
	xor a			;0a29
	ld (l0bf0h),a		;0a2a
	ld hl,l1fafh		;0a2d
	ld (l0beeh),hl		;0a30
	ret			;0a33
l0a34h:
	ld hl,l0967h		;0a34
	ld (l094ch),hl		;0a37
	ld a,(l0bf0h)		;0a3a
	or a			;0a3d
	jr z,l0a45h		;0a3e
	call sub_0b95h		;0a40
	jr nz,l0a57h		;0a43
l0a45h:
	call sub_0a00h		;0a45
	ld de,l0bc3h		;0a48
	ld c,010h		;0a4b
	call 00005h		;0a4d
	call sub_09f4h		;0a50
	cp 0ffh			;0a53
	jr nz,l0a5bh		;0a55
l0a57h:
	xor a			;0a57
	ld (l1685h),a		;0a58
l0a5bh:
	call sub_1195h		;0a5b
	ret			;0a5e
l0a5fh:
	push hl			;0a5f
	ld de,00080h		;0a60
	ld c,01ah		;0a63
	call 00005h		;0a65
	pop hl			;0a68
	ld a,011h		;0a69
	call l09a9h		;0a6b
	ld hl,l0921h		;0a6e
	ld (l08f9h),hl		;0a71
	ld hl,00000h		;0a74
	ld (l0be9h),hl		;0a77
	ld de,l1fafh		;0a7a
	ld (l0be7h),de		;0a7d
	cp 0ffh			;0a81
	jr z,l0ab5h		;0a83
	call sub_0ab9h		;0a85
l0a88h:
	push de			;0a88
	ld c,012h		;0a89
	call 00005h		;0a8b
	pop de			;0a8e
	cp 0ffh			;0a8f
	jr z,l0a98h		;0a91
	call sub_0ab9h		;0a93
	jr l0a88h		;0a96
l0a98h:
	ld ix,l1fafh		;0a98
	ld bc,(l0be9h)		;0a9c
l0aa0h:
	ld a,(ix+00fh)		;0aa0
	and 080h		;0aa3
	or (ix+00ch)		;0aa5
	call nz,sub_0ad2h	;0aa8
	ld de,00010h		;0aab
	add ix,de		;0aae
	dec bc			;0ab0
	ld a,b			;0ab1
	or c			;0ab2
	jr nz,l0aa0h		;0ab3
l0ab5h:
	call sub_09f4h		;0ab5
	ret			;0ab8
sub_0ab9h:
	add a,a			;0ab9
	add a,a			;0aba
	add a,a			;0abb
	add a,a			;0abc
	add a,a			;0abd
	ld b,000h		;0abe
	ld c,a			;0ac0
	ld hl,00080h		;0ac1
	add hl,bc		;0ac4
	ld bc,00010h		;0ac5
	ldir			;0ac8
	ld hl,(l0be9h)		;0aca
	inc hl			;0acd
	ld (l0be9h),hl		;0ace
	ret			;0ad1
sub_0ad2h:
	push ix			;0ad2
	pop hl			;0ad4
	push hl			;0ad5
	push bc			;0ad6
	ld a,(l0bc3h)		;0ad7
	push af			;0ada
	call sub_0af7h		;0adb
	pop af			;0ade
	ld (l0bc3h),a		;0adf
	ld c,023h		;0ae2
	ld de,l0bc3h		;0ae4
	call 00005h		;0ae7
	pop bc			;0aea
	pop ix			;0aeb
	ld hl,(l0be4h)		;0aed
	ld (ix+00eh),h		;0af0
	ld (ix+00fh),l		;0af3
	ret			;0af6
sub_0af7h:
	ld de,l0bc3h		;0af7
	ld bc,0000ch		;0afa
	ldir			;0afd
	ld h,d			;0aff
	ld l,e			;0b00
	inc de			;0b01
	ld (hl),000h		;0b02
	ld bc,00017h		;0b04
	ldir			;0b07
	ret			;0b09
l0b0ah:
	call sub_1195h		;0b0a
	ld c,00dh		;0b0d
	call 00005h		;0b0f
	ld a,(l1687h)		;0b12
	ld e,a			;0b15
	ld c,00eh		;0b16
	call 00005h		;0b18
	ret			;0b1b
sub_0b1ch:
	ld hl,(l0be9h)		;0b1c
	ld a,h			;0b1f
	or l			;0b20
	jr nz,l0b61h		;0b21
	ld a,(l0bebh)		;0b23
	or a			;0b26
	ret nz			;0b27
	ld hl,l1fafh		;0b28
	ld (l0be7h),hl		;0b2b
	ld b,0fah		;0b2e
l0b30h:
	push hl			;0b30
	push bc			;0b31
	ex de,hl		;0b32
	ld c,01ah		;0b33
	call 00005h		;0b35
	call sub_0a00h		;0b38
	ld de,l0bc3h		;0b3b
	ld c,014h		;0b3e
	call 00005h		;0b40
	call sub_09f4h		;0b43
	pop bc			;0b46
	pop de			;0b47
	ld (l0bebh),a		;0b48
	ld hl,(l0be9h)		;0b4b
	or a			;0b4e
	jr z,l0b57h		;0b4f
	ld a,h			;0b51
	or l			;0b52
	jr nz,l0b61h		;0b53
	dec a			;0b55
	ret			;0b56
l0b57h:
	inc hl			;0b57
	ld (l0be9h),hl		;0b58
	ld hl,00080h		;0b5b
	add hl,de		;0b5e
	djnz l0b30h		;0b5f
l0b61h:
	ld hl,(l0be7h)		;0b61
	ld de,l1686h		;0b64
	ld bc,00080h		;0b67
	ldir			;0b6a
	ld (l0be7h),hl		;0b6c
	ld hl,(l0be9h)		;0b6f
	dec hl			;0b72
	ld (l0be9h),hl		;0b73
	xor a			;0b76
	ret			;0b77
sub_0b78h:
	ld hl,l1686h		;0b78
	ld de,(l0beeh)		;0b7b
	ld bc,00080h		;0b7f
	ldir			;0b82
	ld (l0beeh),de		;0b84
	ld a,(l0bf0h)		;0b88
	inc a			;0b8b
	ld (l0bf0h),a		;0b8c
	cp 0fah			;0b8f
	jr nc,sub_0b95h		;0b91
	xor a			;0b93
	ret			;0b94
sub_0b95h:
	ld hl,l0bf0h		;0b95
	ld b,(hl)		;0b98
	ld (hl),000h		;0b99
	ld hl,l1fafh		;0b9b
	ld (l0beeh),hl		;0b9e
l0ba1h:
	push hl			;0ba1
	push bc			;0ba2
	ex de,hl		;0ba3
	ld c,01ah		;0ba4
	call 00005h		;0ba6
	call sub_0a00h		;0ba9
	ld de,l0bc3h		;0bac
	ld c,015h		;0baf
	call 00005h		;0bb1
	call sub_09f4h		;0bb4
	pop bc			;0bb7
	pop hl			;0bb8
	or a			;0bb9
	ret nz			;0bba
	ld de,00080h		;0bbb
	add hl,de		;0bbe
	djnz l0ba1h		;0bbf
	xor a			;0bc1
	ret			;0bc2
l0bc3h:
	nop			;0bc3
	nop			;0bc4
	nop			;0bc5
	nop			;0bc6
	nop			;0bc7
	nop			;0bc8
	nop			;0bc9
	nop			;0bca
	nop			;0bcb
	nop			;0bcc
	nop			;0bcd
	nop			;0bce
	nop			;0bcf
	nop			;0bd0
	nop			;0bd1
	nop			;0bd2
	nop			;0bd3
	nop			;0bd4
	nop			;0bd5
	nop			;0bd6
	nop			;0bd7
	nop			;0bd8
	nop			;0bd9
	nop			;0bda
	nop			;0bdb
	nop			;0bdc
	nop			;0bdd
	nop			;0bde
	nop			;0bdf
	nop			;0be0
	nop			;0be1
	nop			;0be2
	nop			;0be3
l0be4h:
	nop			;0be4
	nop			;0be5
	nop			;0be6
l0be7h:
	nop			;0be7
	nop			;0be8
l0be9h:
	nop			;0be9
	nop			;0bea
l0bebh:
	nop			;0beb
l0bech:
	nop			;0bec
l0bedh:
	nop			;0bed
l0beeh:
	nop			;0bee
	nop			;0bef
l0bf0h:
	nop			;0bf0
l0bf1h:
	ld c,h			;0bf1
	inc c			;0bf2
	and d			;0bf3
	inc c			;0bf4
	and a			;0bf5
	inc c			;0bf6
	xor h			;0bf7
	inc c			;0bf8
	or c			;0bf9
	inc c			;0bfa
	call nz,0dd0ch		;0bfb
	inc c			;0bfe
	call po,0eb0ch		;0bff
	inc c			;0c02
	jp p,0f90ch		;0c03
	inc c			;0c06
	ld c,00dh		;0c07
	jr nc,l0c18h		;0c09
	jr nc,l0c1ah		;0c0b
	nop			;0c0d
	dec c			;0c0e
	rlca			;0c0f
	dec c			;0c10
l0c11h:
	ld c,h			;0c11
	inc c			;0c12
	ld sp,03b0dh		;0c13
	dec c			;0c16
	ld b,e			;0c17
l0c18h:
	dec c			;0c18
	ld c,e			;0c19
l0c1ah:
	dec c			;0c1a
	ld (hl),h		;0c1b
	dec c			;0c1c
	adc a,c			;0c1d
	dec c			;0c1e
	cp d			;0c1f
	dec c			;0c20
	jr nz,$+16		;0c21
	ld b,h			;0c23
	ld c,04ah		;0c24
	ld c,090h		;0c26
	ld c,0ach		;0c28
	ld c,0bbh		;0c2a
	ld c,050h		;0c2c
	ld c,05ch		;0c2e
	ld c,016h		;0c30
	nop			;0c32
	ld e,a			;0c33
	add hl,de		;0c34
	add hl,de		;0c35
	ld e,(hl)		;0c36
	inc hl			;0c37
	ld d,(hl)		;0c38
	ex de,hl		;0c39
sub_0c3ah:
	jp (hl)			;0c3a
sub_0c3bh:
	ld a,(l0103h)		;0c3b
	ld c,a			;0c3e
	in a,(c)		;0c3f
	bit 7,a			;0c41
	jr z,sub_0c3bh		;0c43
	ld a,(l0104h)		;0c45
	ld c,a			;0c48
	in a,(c)		;0c49
	ret			;0c4b
	call sub_0c3bh		;0c4c
	or a			;0c4f
	jr z,l0c79h		;0c50
	dec a			;0c52
	jr z,l0c68h		;0c53
	dec a			;0c55
	ret nz			;0c56
	ld hl,l0ed1h		;0c57
	ld (l0c9eh),hl		;0c5a
	ld hl,l0c11h		;0c5d
	ld (l0ca0h),hl		;0c60
	ld hl,l0f5ah		;0c63
	jr l0c88h		;0c66
l0c68h:
	ld hl,l0f2bh		;0c68
	ld (l0c9eh),hl		;0c6b
	ld hl,l0c11h		;0c6e
	ld (l0ca0h),hl		;0c71
	ld hl,l0f5ah		;0c74
	jr l0c88h		;0c77
l0c79h:
	ld hl,sub_15abh		;0c79
	ld (l0c9eh),hl		;0c7c
	ld hl,l0bf1h		;0c7f
	ld (l0ca0h),hl		;0c82
	ld hl,l0f5ah		;0c85
l0c88h:
	ld (l0f58h),hl		;0c88
	ld a,006h		;0c8b
	ld hl,(l0ca0h)		;0c8d
	call 00c31h		;0c90
	ld bc,0320ah		;0c93
l0c96h:
	push bc			;0c96
	call sub_0ecdh		;0c97
	pop bc			;0c9a
	djnz l0c96h		;0c9b
	ret			;0c9d
l0c9eh:
	xor e			;0c9e
	dec d			;0c9f
l0ca0h:
	pop af			;0ca0
	dec bc			;0ca1
	ld hl,0010bh		;0ca2
	jr l0cb4h		;0ca5
	ld hl,l010fh		;0ca7
	jr l0cb4h		;0caa
	ld hl,l0113h		;0cac
	jr l0cb4h		;0caf
	ld hl,l0117h		;0cb1
l0cb4h:
	push hl			;0cb4
	call sub_0c3bh		;0cb5
	pop hl			;0cb8
	ld b,a			;0cb9
l0cbah:
	push hl			;0cba
	push bc			;0cbb
	call sub_0d1fh		;0cbc
	pop bc			;0cbf
	pop hl			;0cc0
	djnz l0cbah		;0cc1
	ret			;0cc3
	ld hl,l011bh		;0cc4
	call sub_0d1fh		;0cc7
	call sub_0c3bh		;0cca
	add a,020h		;0ccd
	ld c,a			;0ccf
	call sub_0ecdh		;0cd0
	call sub_0c3bh		;0cd3
	add a,020h		;0cd6
	ld c,a			;0cd8
	call sub_0ecdh		;0cd9
	ret			;0cdc
	ld hl,l011fh		;0cdd
	call sub_0d1fh		;0ce0
	ret			;0ce3
	ld hl,l0123h		;0ce4
	call sub_0d1fh		;0ce7
	ret			;0cea
	ld hl,l0127h		;0ceb
	call sub_0d1fh		;0cee
	ret			;0cf1
	ld hl,l012bh		;0cf2
	call sub_0d1fh		;0cf5
	ret			;0cf8
	ld hl,l012fh		;0cf9
	call sub_0d1fh		;0cfc
	ret			;0cff
	ld hl,l0133h		;0d00
	call sub_0d1fh		;0d03
	ret			;0d06
	ld hl,l0137h		;0d07
	call sub_0d1fh		;0d0a
	ret			;0d0d
	ld hl,l011bh		;0d0e
	call sub_0d1fh		;0d11
	ld c,020h		;0d14
	call sub_0ecdh		;0d16
	ld c,020h		;0d19
	call sub_0ecdh		;0d1b
	ret			;0d1e
sub_0d1fh:
	ld b,004h		;0d1f
l0d21h:
	ld a,(hl)		;0d21
	inc hl			;0d22
	or a			;0d23
	ret z			;0d24
	ld c,a			;0d25
	push hl			;0d26
	push bc			;0d27
	call sub_0ecdh		;0d28
	pop bc			;0d2b
	pop hl			;0d2c
	djnz l0d21h		;0d2d
	ret			;0d2f
	ret			;0d30
	call sub_0c3bh		;0d31
	neg			;0d34
	ld b,a			;0d36
	ld c,000h		;0d37
	jr l0d53h		;0d39
	call sub_0c3bh		;0d3b
	ld b,a			;0d3e
	ld c,000h		;0d3f
	jr l0d53h		;0d41
	call sub_0c3bh		;0d43
	ld b,000h		;0d46
	ld c,a			;0d48
	jr l0d53h		;0d49
	call sub_0c3bh		;0d4b
	ld b,000h		;0d4e
	neg			;0d50
	ld c,a			;0d52
l0d53h:
	push bc			;0d53
	ld a,003h		;0d54
	ld (l1687h),a		;0d56
	call l0f5ah		;0d59
	pop bc			;0d5c
	ld a,(l168dh)		;0d5d
	add a,b			;0d60
	ld (l168dh),a		;0d61
	ld a,(l168ch)		;0d64
	add a,c			;0d67
	ld (l168ch),a		;0d68
	ld a,002h		;0d6b
	ld (l1687h),a		;0d6d
	call l0f5ah		;0d70
	ret			;0d73
	call sub_0c3bh		;0d74
	ld (l168dh),a		;0d77
	call sub_0c3bh		;0d7a
	ld (l168ch),a		;0d7d
	ld a,002h		;0d80
	ld (l1687h),a		;0d82
	call l0f5ah		;0d85
	ret			;0d88
	ld hl,l0200h		;0d89
	ld (l1686h),hl		;0d8c
	ld hl,00000h		;0d8f
	ld (l1688h),hl		;0d92
	ld hl,00000h		;0d95
	ld (l168ah),hl		;0d98
	ld hl,00000h		;0d9b
	ld (l168ch),hl		;0d9e
	call l0f5ah		;0da1
	ld hl,l0920h		;0da4
	ld (l1686h),hl		;0da7
	ld hl,00007h		;0daa
	ld (l1688h),hl		;0dad
	ld hl,l07d0h		;0db0
	ld (l168ah),hl		;0db3
	call l0f5ah		;0db6
	ret			;0db9
	ld a,003h		;0dba
	ld (l1687h),a		;0dbc
	call l0f5ah		;0dbf
	ld a,(l168dh)		;0dc2
	ld d,000h		;0dc5
	ld e,a			;0dc7
	ld hl,l168ch		;0dc8
	ld a,050h		;0dcb
	sub (hl)		;0dcd
	ld hl,l0deeh		;0dce
	add hl,de		;0dd1
	add hl,de		;0dd2
	add a,(hl)		;0dd3
	ld (l168ah),a		;0dd4
	inc hl			;0dd7
	ld a,000h		;0dd8
	adc a,(hl)		;0dda
	ld (l168bh),a		;0ddb
	ld hl,l0920h		;0dde
	ld (l1686h),hl		;0de1
	ld hl,00007h		;0de4
	ld (l1688h),hl		;0de7
	call l0f5ah		;0dea
	ret			;0ded
l0deeh:
	add a,b			;0dee
	rlca			;0def
	jr nc,l0df9h		;0df0
	ret po			;0df2
	ld b,090h		;0df3
	ld b,040h		;0df5
	ld b,0f0h		;0df7
l0df9h:
	dec b			;0df9
	and b			;0dfa
	dec b			;0dfb
	ld d,b			;0dfc
	dec b			;0dfd
	nop			;0dfe
	dec b			;0dff
	or b			;0e00
	inc b			;0e01
	ld h,b			;0e02
	inc b			;0e03
	djnz l0e0ah		;0e04
	ret nz			;0e06
	inc bc			;0e07
	ld (hl),b		;0e08
	inc bc			;0e09
l0e0ah:
	jr nz,l0e0fh		;0e0a
	ret nc			;0e0c
l0e0dh:
	ld (bc),a		;0e0d
	add a,b			;0e0e
l0e0fh:
	ld (bc),a		;0e0f
	jr nc,$+4		;0e10
	ret po			;0e12
	ld bc,00190h		;0e13
	ld b,b			;0e16
	ld bc,000f0h		;0e17
	and b			;0e1a
	nop			;0e1b
	ld d,b			;0e1c
	nop			;0e1d
	nop			;0e1e
	nop			;0e1f
	ld a,003h		;0e20
	ld (l1687h),a		;0e22
	call l0f5ah		;0e25
	ld hl,l168ch		;0e28
	ld a,050h		;0e2b
	sub (hl)		;0e2d
	ld h,000h		;0e2e
	ld l,a			;0e30
	ld (l168ah),hl		;0e31
	ld hl,l0920h		;0e34
	ld (l1686h),hl		;0e37
	ld hl,00007h		;0e3a
	ld (l1688h),hl		;0e3d
	call l0f5ah		;0e40
	ret			;0e43
	ld a,070h		;0e44
	ld (l0ecch),a		;0e46
	ret			;0e49
	ld a,007h		;0e4a
	ld (l0ecch),a		;0e4c
	ret			;0e4f
	call sub_0e68h		;0e50
	ld a,007h		;0e53
	ld (l1687h),a		;0e55
	call l0f5ah		;0e58
	ret			;0e5b
	call sub_0e68h		;0e5c
	ld a,006h		;0e5f
	ld (l1687h),a		;0e61
	call l0f5ah		;0e64
	ret			;0e67
sub_0e68h:
	ld a,003h		;0e68
	ld (l1687h),a		;0e6a
	call l0f5ah		;0e6d
	ld a,(l168dh)		;0e70
	ld (l168bh),a		;0e73
	ld a,000h		;0e76
	ld (l168ah),a		;0e78
	ld a,018h		;0e7b
	ld (l168dh),a		;0e7d
	ld a,04fh		;0e80
	ld (l168ch),a		;0e82
	ld a,001h		;0e85
	ld (l1686h),a		;0e87
	ld a,007h		;0e8a
	ld (l1689h),a		;0e8c
	ret			;0e8f
	ld hl,l0200h		;0e90
	ld (l1686h),hl		;0e93
	ld hl,00000h		;0e96
	ld (l1688h),hl		;0e99
	ld hl,00000h		;0e9c
	ld (l168ah),hl		;0e9f
	ld hl,00000h		;0ea2
	ld (l168ch),hl		;0ea5
	call l0f5ah		;0ea8
	ret			;0eab
	ld a,003h		;0eac
	ld (l1687h),a		;0eae
	call l0f5ah		;0eb1
	ld hl,(l168ch)		;0eb4
	ld (l0ecah),hl		;0eb7
	ret			;0eba
	ld hl,(l0ecah)		;0ebb
	ld (l168ch),hl		;0ebe
	ld a,002h		;0ec1
	ld (l1687h),a		;0ec3
	call l0f5ah		;0ec6
	ret			;0ec9
l0ecah:
	nop			;0eca
	nop			;0ecb
l0ecch:
	rlca			;0ecc
sub_0ecdh:
	ld hl,(l0c9eh)		;0ecd
	jp (hl)			;0ed0
l0ed1h:
	ld a,c			;0ed1
	cp 020h			;0ed2
	jr nc,l0ee6h		;0ed4
	cp 007h			;0ed6
	jr z,l0f2bh		;0ed8
	cp 008h			;0eda
	jr z,l0f2bh		;0edc
	cp 00ah			;0ede
	jr z,l0f2bh		;0ee0
	cp 00dh			;0ee2
	jr z,l0f2bh		;0ee4
l0ee6h:
	ld h,009h		;0ee6
	ld l,c			;0ee8
	ld (l1686h),hl		;0ee9
	ld a,(l0ecch)		;0eec
	ld h,000h		;0eef
	ld l,a			;0ef1
	ld (l1688h),hl		;0ef2
	ld l,001h		;0ef5
	ld (l168ah),hl		;0ef7
	call l0f5ah		;0efa
	ld a,003h		;0efd
	ld (l1687h),a		;0eff
	call l0f5ah		;0f02
	ld a,(l168ch)		;0f05
	inc a			;0f08
	cp 050h			;0f09
	jr nc,l0f19h		;0f0b
	ld (l168ch),a		;0f0d
	ld a,002h		;0f10
	ld (l1687h),a		;0f12
	call l0f5ah		;0f15
	ret			;0f18
l0f19h:
	ld hl,l0e0dh		;0f19
	ld (l1686h),hl		;0f1c
	call l0f5ah		;0f1f
	ld a,00ah		;0f22
	ld (l1686h),a		;0f24
	call l0f5ah		;0f27
	ret			;0f2a
l0f2bh:
	ld hl,l1686h		;0f2b
	ld (hl),c		;0f2e
	ld a,00eh		;0f2f
	inc hl			;0f31
	ld (hl),a		;0f32
	call l0f5ah		;0f33
	ret			;0f36
	ld hl,(l0f58h)		;0f37
	ld a,(l1687h)		;0f3a
	cp 003h			;0f3d
	jr z,l0f51h		;0f3f
	cp 008h			;0f41
	jr z,l0f51h		;0f43
	cp 00fh			;0f45
	jr z,l0f51h		;0f47
	cp 018h			;0f49
	jr z,l0f51h		;0f4b
	call sub_0c3ah		;0f4d
	ret			;0f50
l0f51h:
	call sub_0c3ah		;0f51
	call sub_1195h		;0f54
	ret			;0f57
l0f58h:
	ld e,d			;0f58
	rrca			;0f59
l0f5ah:
	ld a,(l1687h)		;0f5a
	cp 009h			;0f5d
	jr z,l0f97h		;0f5f
	cp 00ah			;0f61
	jr z,l0f97h		;0f63
	cp 00eh			;0f65
	jr z,l0f97h		;0f67
	cp 003h			;0f69
	jr z,l0fcah		;0f6b
	cp 002h			;0f6d
	jr nz,l0f85h		;0f6f
	ld de,(l0fd1h)		;0f71
	ld hl,(l168ch)		;0f75
	ld (l0fd1h),hl		;0f78
	ld a,h			;0f7b
	cp d			;0f7c
	jr nz,l0f85h		;0f7d
	ld a,l			;0f7f
	sub e			;0f80
	inc a			;0f81
	cp 003h			;0f82
	ret c			;0f84
l0f85h:
	ld a,(l1687h)		;0f85
	call sub_0763h		;0f88
	ld (00feah),hl		;0f8b
	ld de,l0fd3h		;0f8e
	ld c,009h		;0f91
	call 00005h		;0f93
	ret			;0f96
l0f97h:
	ld hl,l0fd1h		;0f97
	inc (hl)		;0f9a
	ld a,(l1686h)		;0f9b
	bit 7,a			;0f9e
	jr z,l0fa4h		;0fa0
	ld a,007h		;0fa2
l0fa4h:
	ld c,a			;0fa4
	cp 020h			;0fa5
	jp nc,sub_15abh		;0fa7
	cp 007h			;0faa
	jp z,l0fc1h		;0fac
	cp 008h			;0faf
	jr z,l0fc0h		;0fb1
	cp 00ah			;0fb3
	jr z,l0fc1h		;0fb5
	cp 00dh			;0fb7
	jr z,l0fc5h		;0fb9
	ld c,007h		;0fbb
	jp l0fc1h		;0fbd
l0fc0h:
	dec (hl)		;0fc0
l0fc1h:
	dec (hl)		;0fc1
	jp sub_15abh		;0fc2
l0fc5h:
	ld (hl),000h		;0fc5
	jp sub_15abh		;0fc7
l0fcah:
	ld hl,(l0fd1h)		;0fca
	ld (l168ch),hl		;0fcd
	ret			;0fd0
l0fd1h:
	nop			;0fd1
	rla			;0fd2
l0fd3h:
	rlca			;0fd3
	dec c			;0fd4
	ld a,(bc)		;0fd5
	ld hl,(l2a2ah)		;0fd6
	jr nz,$+75		;0fd9
	ld c,(hl)		;0fdb
	ld d,h			;0fdc
	ld sp,l2030h		;0fdd
	ld b,(hl)		;0fe0
	ld d,l			;0fe1
	ld c,(hl)		;0fe2
	ld b,e			;0fe3
	ld d,h			;0fe4
	ld c,c			;0fe5
	ld c,a			;0fe6
	ld c,(hl)		;0fe7
	inc hl			;0fe8
	jr nz,$+90		;0fe9
	ld e,b			;0feb
	jr nz,l103ch		;0fec
	ld c,a			;0fee
	ld d,h			;0fef
	jr nz,$+67		;0ff0
	ld d,(hl)		;0ff2
	ld b,c			;0ff3
	ld c,c			;0ff4
	ld c,h			;0ff5
	ld b,c			;0ff6
	ld b,d			;0ff7
	ld c,h			;0ff8
	ld b,l			;0ff9
	jr nz,$+44		;0ffa
	ld hl,(00d2ah)		;0ffc
	ld a,(bc)		;0fff
	inc h			;1000
	ld a,(l1686h)		;1001
	ld c,a			;1004
	call sub_15aeh		;1005
	xor a			;1008
	ld (l1685h),a		;1009
	call sub_1195h		;100c
	ret			;100f
l1010h:
	ld a,(l1686h)		;1010
	ld c,a			;1013
	call sub_15b1h		;1014
	ret			;1017
	call sub_15b4h		;1018
	ld (l1686h),a		;101b
	ld a,007h		;101e
	ld (l1684h),a		;1020
	ld a,001h		;1023
	ld (l1685h),a		;1025
	call sub_1195h		;1028
	ret			;102b
	ld hl,(l1686h)		;102c
	ld (l1049h),hl		;102f
	ld hl,(l1688h)		;1032
	ld (l104bh),hl		;1035
	ret			;1038
	ld hl,(l1049h)		;1039
l103ch:
	ld (l1686h),hl		;103c
	ld hl,(l104bh)		;103f
	ld (l1688h),hl		;1042
	call sub_1195h		;1045
	ret			;1048
l1049h:
	nop			;1049
	nop			;104a
l104bh:
	nop			;104b
	nop			;104c
l104dh:
	ld bc,l2a00h		;104d
	ld c,l			;1050
	djnz l107eh		;1051
	ld (l104dh),hl		;1053
	ld a,h			;1056
	or l			;1057
	ret nz			;1058
	ld hl,(l0109h)		;1059
	ld (l104dh),hl		;105c
	ld hl,(l104bh)		;105f
	inc hl			;1062
	ld (l104bh),hl		;1063
	ret			;1066
l1067h:
	ld c,009h		;1067
	ld de,l107bh		;1069
	call 00005h		;106c
	ld c,00dh		;106f
	call 00005h		;1071
	xor a			;1074
	ld (00004h),a		;1075
	jp 00000h		;1078
l107bh:
	dec c			;107b
	ld a,(bc)		;107c
	ld a,(bc)		;107d
l107eh:
	ld a,(bc)		;107e
	ld a,(bc)		;107f
	ld a,(bc)		;1080
	ld a,(bc)		;1081
	ld a,(bc)		;1082
	ld a,(bc)		;1083
	ld a,(bc)		;1084
	ld a,(bc)		;1085
	ld a,(bc)		;1086
	ld a,(bc)		;1087
	ld a,(bc)		;1088
	ld a,(bc)		;1089
	ld a,(bc)		;108a
	ld a,(bc)		;108b
	ld a,(bc)		;108c
	ld a,(bc)		;108d
	ld a,(bc)		;108e
	ld a,(bc)		;108f
	ld a,(bc)		;1090
	ld a,(bc)		;1091
	ld a,(bc)		;1092
	ld a,(bc)		;1093
	ld a,(bc)		;1094
	inc h			;1095
	ld a,00fh		;1096
	ld (l1684h),a		;1098
	ld a,(00003h)		;109b
	ld (l1686h),a		;109e
	ld a,001h		;10a1
	ld (l1685h),a		;10a3
	call sub_1195h		;10a6
	ret			;10a9
	ld a,(l1686h)		;10aa
	ld (00003h),a		;10ad
	ret			;10b0
sub_10b1h:
	ld hl,l15fbh		;10b1
	ld de,l1686h		;10b4
	ld bc,00080h		;10b7
	ldir			;10ba
	call sub_1102h		;10bc
	ld de,l1118h		;10bf
	ld c,009h		;10c2
	call 00005h		;10c4
	ld de,l1118h		;10c7
	ld a,001h		;10ca
	ld (de),a		;10cc
	ld c,00ah		;10cd
	call 00005h		;10cf
	ld de,l0140h		;10d2
	ld c,009h		;10d5
	call 00005h		;10d7
	ld b,04ah		;10da
	ld hl,l1fafh		;10dc
l10dfh:
	push bc			;10df
	ld bc,00080h		;10e0
	ld de,l1686h		;10e3
	ldir			;10e6
	push hl			;10e8
	call sub_1102h		;10e9
	pop hl			;10ec
	pop bc			;10ed
	djnz l10dfh		;10ee
	ld hl,l1686h		;10f0
	ld (hl),0e9h		;10f3
	inc hl			;10f5
	ld (hl),0fdh		;10f6
	inc hl			;10f8
	ld (hl),0dah		;10f9
	call sub_1102h		;10fb
	call sub_1106h		;10fe
	ret			;1101
sub_1102h:
	ld b,080h		;1102
	jr l110ch		;1104
sub_1106h:
	ld b,001h		;1106
	jr l110ch		;1108
	ld b,000h		;110a
l110ch:
	ld hl,l1684h		;110c
	ld a,016h		;110f
	ld (hl),a		;1111
	inc hl			;1112
	ld (hl),b		;1113
	call sub_1195h		;1114
	ret			;1117
l1118h:
	dec c			;1118
	ld a,(bc)		;1119
	ld a,(bc)		;111a
	ld l,02eh		;111b
	ld l,020h		;111d
	ld d,d			;111f
	ld h,l			;1120
	ld h,c			;1121
	ld h,h			;1122
	ld a,c			;1123
	jr nz,$+118		;1124
	ld l,a			;1126
	jr nz,sub_1195h		;1127
	ld l,a			;1129
	ld h,c			;112a
	ld h,h			;112b
	jr nz,l1172h		;112c
	ld c,a			;112e
	ld d,e			;112f
	jr nz,l1160h		;1130
	ld l,02eh		;1132
	dec c			;1134
	ld a,(bc)		;1135
	ld a,(bc)		;1136
	ld c,c			;1137
	ld l,(hl)		;1138
	ld (hl),e		;1139
	ld h,l			;113a
	ld (hl),d		;113b
	ld (hl),h		;113c
	jr nz,l11a0h		;113d
	jr nz,l1185h		;113f
	ld c,a			;1141
	ld d,e			;1142
	jr nz,l11b8h		;1143
	ld a,c			;1145
	ld (hl),e		;1146
	ld (hl),h		;1147
	ld h,l			;1148
	ld l,l			;1149
	jr nz,$+102		;114a
	ld l,c			;114c
	ld (hl),e		;114d
	ld l,e			;114e
	jr nz,l11bah		;114f
	ld l,(hl)		;1151
	jr nz,l11c8h		;1152
	ld l,b			;1154
	ld h,l			;1155
	jr nz,l11bah		;1156
	ld l,a			;1158
	ld l,a			;1159
	ld (hl),h		;115a
	jr nz,l11c1h		;115b
	ld (hl),d		;115d
	ld l,c			;115e
	halt			;115f
l1160h:
	ld h,l			;1160
	dec c			;1161
	ld a,(bc)		;1162
	ld h,c			;1163
	ld l,(hl)		;1164
	ld h,h			;1165
	jr nz,$+118		;1166
	ld a,c			;1168
	ld (hl),b		;1169
	ld h,l			;116a
	jr nz,$+99		;116b
	ld l,(hl)		;116d
	ld a,c			;116e
	jr nz,$+109		;116f
	ld h,l			;1171
l1172h:
	ld a,c			;1172
	jr nz,l11ech		;1173
	ld l,b			;1175
	ld h,l			;1176
	ld l,(hl)		;1177
	jr nz,l11ech		;1178
	ld h,l			;117a
	ld h,c			;117b
	ld h,h			;117c
	ld a,c			;117d
	jr nz,l11f4h		;117e
	ld l,a			;1180
	jr nz,$+100		;1181
	ld h,l			;1183
	ld h,a			;1184
l1185h:
	ld l,c			;1185
	ld l,(hl)		;1186
	jr nz,$+110		;1187
	ld l,a			;1189
	ld h,c			;118a
	ld h,h			;118b
	ld l,c			;118c
	ld l,(hl)		;118d
	ld h,a			;118e
	dec c			;118f
	ld a,(bc)		;1190
	ld a,(bc)		;1191
	ccf			;1192
	jr nz,$+38		;1193
sub_1195h:
	push hl			;1195
	push de			;1196
	push bc			;1197
	ld de,(l0103h)		;1198
	ld hl,l1684h		;119c
	ld c,e			;119f
l11a0h:
	in a,(c)		;11a0
	rra			;11a2
	jp c,l11a0h		;11a3
	ld c,d			;11a6
	ld a,005h		;11a7
	out (c),a		;11a9
	ld c,e			;11ab
l11ach:
	in a,(c)		;11ac
	rra			;11ae
	jp c,l11ach		;11af
	ld c,d			;11b2
	ld a,001h		;11b3
	out (c),a		;11b5
	ld c,e			;11b7
l11b8h:
	in a,(c)		;11b8
l11bah:
	rra			;11ba
	jp c,l11b8h		;11bb
	ld c,d			;11be
	outi			;11bf
l11c1h:
	ld c,e			;11c1
l11c2h:
	in a,(c)		;11c2
	rra			;11c4
	jp c,l11c2h		;11c5
l11c8h:
	ld c,d			;11c8
	ld a,(hl)		;11c9
	outi			;11ca
	or a			;11cc
	jr z,l11ddh		;11cd
	ld b,a			;11cf
l11d0h:
	ld c,e			;11d0
l11d1h:
	in a,(c)		;11d1
	rra			;11d3
	jp c,l11d1h		;11d4
	ld c,d			;11d7
	outi			;11d8
	jp nz,l11d0h		;11da
l11ddh:
	pop bc			;11dd
	pop de			;11de
	pop hl			;11df
	ret			;11e0
sub_11e1h:
	push hl			;11e1
	push de			;11e2
	push bc			;11e3
	ld de,(l0103h)		;11e4
	ld hl,l1684h		;11e8
	ld c,e			;11eb
l11ech:
	in a,(c)		;11ec
	jp p,l11ech		;11ee
	ld c,d			;11f1
	in a,(c)		;11f2
l11f4h:
	cp 001h			;11f4
	call nz,sub_0833h	;11f6
l11f9h:
	jp nz,l11f9h		;11f9
	ld c,e			;11fc
l11fdh:
	in a,(c)		;11fd
	jp p,l11fdh		;11ff
	ld c,d			;1202
	ini			;1203
	ld c,e			;1205
l1206h:
	in a,(c)		;1206
	jp p,l1206h		;1208
	ld c,d			;120b
	in a,(c)		;120c
	ld (hl),a		;120e
	inc hl			;120f
	or a			;1210
	jr z,l1220h		;1211
	ld b,a			;1213
l1214h:
	ld c,e			;1214
l1215h:
	in a,(c)		;1215
	jp p,l1215h		;1217
	ld c,d			;121a
	ini			;121b
	jp nz,l1214h		;121d
l1220h:
	pop bc			;1220
	pop de			;1221
	pop hl			;1222
	ret			;1223
	call sub_134bh		;1224
	ld a,001h		;1227
	call sub_1358h		;1229
	ld a,(l1686h)		;122c
	bit 2,a			;122f
	jr nz,l123bh		;1231
	ld (ix+001h),a		;1233
	call sub_13ddh		;1236
	jr l1243h		;1239
l123bh:
	res 2,a			;123b
	ld (ix+001h),a		;123d
	call sub_139ch		;1240
l1243h:
	ld a,(ix+008h)		;1243
	push af			;1246
	call sub_138dh		;1247
	pop af			;124a
	or a			;124b
	ret nz			;124c
	ld hl,l168ch		;124d
	ld de,(l0103h)		;1250
	ld a,(ix+006h)		;1254
	ld b,a			;1257
	ld a,(ix+007h)		;1258
	srl a			;125b
	jr z,l1289h		;125d
	rra			;125f
	jr c,l127ch		;1260
l1262h:
	ld c,e			;1262
l1263h:
	in a,(c)		;1263
	rra			;1265
	jp c,l1263h		;1266
	ld c,d			;1269
	outi			;126a
	jp nz,l1262h		;126c
l126fh:
	ld c,e			;126f
l1270h:
	in a,(c)		;1270
	rra			;1272
	jp c,l1270h		;1273
	ld c,d			;1276
	outi			;1277
	jp nz,l126fh		;1279
l127ch:
	ld c,e			;127c
l127dh:
	in a,(c)		;127d
	rra			;127f
	jp c,l127dh		;1280
	ld c,d			;1283
	outi			;1284
	jp nz,l127ch		;1286
l1289h:
	ld c,e			;1289
l128ah:
	in a,(c)		;128a
	rra			;128c
	jp c,l128ah		;128d
	ld c,d			;1290
	outi			;1291
	jp nz,l1289h		;1293
	ret			;1296
	call sub_134bh		;1297
	ld a,002h		;129a
	call sub_1358h		;129c
	ld hl,l168ch		;129f
	ld de,(l0103h)		;12a2
	ld a,(ix+006h)		;12a6
	ld b,a			;12a9
	ld a,(ix+007h)		;12aa
	srl a			;12ad
	jr z,l12d8h		;12af
	rra			;12b1
	jr c,l12cch		;12b2
l12b4h:
	ld c,e			;12b4
l12b5h:
	in a,(c)		;12b5
	jp p,l12b5h		;12b7
	ld c,d			;12ba
	ini			;12bb
	jp nz,l12b4h		;12bd
l12c0h:
	ld c,e			;12c0
l12c1h:
	in a,(c)		;12c1
	jp p,l12c1h		;12c3
	ld c,d			;12c6
	ini			;12c7
	jp nz,l12c0h		;12c9
l12cch:
	ld c,e			;12cc
l12cdh:
	in a,(c)		;12cd
	jp p,l12cdh		;12cf
	ld c,d			;12d2
	ini			;12d3
	jp nz,l12cch		;12d5
l12d8h:
	ld c,e			;12d8
l12d9h:
	in a,(c)		;12d9
	jp p,l12d9h		;12db
	ld c,d			;12de
	ini			;12df
	jp nz,l12d8h		;12e1
	ld a,(l1686h)		;12e4
	bit 2,a			;12e7
	jr nz,l12f3h		;12e9
	ld (ix+001h),a		;12eb
	call sub_13ddh		;12ee
	jr l12fbh		;12f1
l12f3h:
	res 2,a			;12f3
	ld (ix+001h),a		;12f5
	call sub_139ch		;12f8
l12fbh:
	ld a,(ix+008h)		;12fb
	call sub_138dh		;12fe
	ret			;1301
	call sub_134bh		;1302
	ld a,001h		;1305
	call sub_1358h		;1307
	ld a,(l1686h)		;130a
	bit 2,a			;130d
	jr nz,l133ch		;130f
	ld (ix+001h),a		;1311
	call sub_13ddh		;1314
	ld a,(ix+008h)		;1317
	or a			;131a
	jr nz,l1347h		;131b
	ld (ix+000h),003h	;131d
	call sub_1a8eh		;1321
	ld a,(ix+008h)		;1324
	or a			;1327
	jr nz,l1347h		;1328
	ld a,(l168dh)		;132a
	rlc (ix+001h)		;132d
	xor (ix+001h)		;1331
	and 001h		;1334
	jr z,l1347h		;1336
	ld a,010h		;1338
	jr l1347h		;133a
l133ch:
	res 2,a			;133c
	ld (ix+001h),a		;133e
	call sub_139ch		;1341
	ld a,(ix+008h)		;1344
l1347h:
	call sub_138dh		;1347
	ret			;134a
sub_134bh:
	ld b,a			;134b
	ld a,(l1685h)		;134c
	cp 006h			;134f
	ret z			;1351
	ld a,b			;1352
	call sub_0740h		;1353
l1356h:
	jr l1356h		;1356
sub_1358h:
	ld ix,l167bh		;1358
	ld (ix+000h),a		;135c
	ld hl,l168ch		;135f
	ld (ix+004h),l		;1362
	ld (ix+005h),h		;1365
	ld a,(l168bh)		;1368
	rra			;136b
	rra			;136c
	rra			;136d
	rra			;136e
	and 003h		;136f
	ld e,a			;1371
	ld d,000h		;1372
	ld hl,l1383h		;1374
	add hl,de		;1377
	add hl,de		;1378
	ld a,(hl)		;1379
	ld (ix+006h),a		;137a
	inc hl			;137d
	ld a,(hl)		;137e
	ld (ix+007h),a		;137f
	ret			;1382
l1383h:
	add a,b			;1383
	nop			;1384
	nop			;1385
	ld bc,l0200h		;1386
	nop			;1389
	inc b			;138a
l138bh:
	ld a,080h		;138b
sub_138dh:
	ld (l1686h),a		;138d
	or a			;1390
	jr z,l1395h		;1391
	ld a,001h		;1393
l1395h:
	ld (l1685h),a		;1395
	call sub_1195h		;1398
	ret			;139b
sub_139ch:
	ld a,(l1689h)		;139c
	ld (ix+002h),a		;139f
	ld a,(l168ah)		;13a2
	ld (ix+003h),a		;13a5
	ld a,(ix+001h)		;13a8
	and 07fh		;13ab
	ld b,a			;13ad
	push af			;13ae
	ld a,(l15f9h)		;13af
	or a			;13b2
	jr z,l13c6h		;13b3
	ld a,b			;13b5
	or a			;13b6
	jr z,l13d2h		;13b7
	ld a,(l15fah)		;13b9
	or a			;13bc
	ld a,b			;13bd
	jr nz,l13d2h		;13be
l13c0h:
	pop af			;13c0
	ld (ix+008h),080h	;13c1
	ret			;13c5
l13c6h:
	ld a,(l15fah)		;13c6
	or a			;13c9
	jr z,l13c0h		;13ca
	ld a,b			;13cc
	inc a			;13cd
	cp 002h			;13ce
	jr z,l13c0h		;13d0
l13d2h:
	ld (ix+001h),a		;13d2
	call sub_0740h		;13d5
	pop af			;13d8
	ld (ix+001h),a		;13d9
	ret			;13dc
sub_13ddh:
	ld a,(l168bh)		;13dd
	ld b,a			;13e0
	and 002h		;13e1
	ld (l1fa9h+1),a		;13e3
	ld a,b			;13e6
	rrca			;13e7
	and 080h		;13e8
	or (ix+001h)		;13ea
	ld (ix+001h),a		;13ed
	ld a,(l1687h)		;13f0
	ld (ix+002h),a		;13f3
	ld a,(l1689h)		;13f6
	ld (ix+003h),a		;13f9
	call sub_1a8eh		;13fc
	ld a,(ix+008h)		;13ff
	cp 010h			;1402
	ret nz			;1404
	ld (ix+000h),003h	;1405
	ld b,019h		;1409
l140bh:
	push bc			;140b
	call sub_1a8eh		;140c
	pop bc			;140f
	ld a,(ix+008h)		;1410
	or a			;1413
	ret nz			;1414
	ld a,(l168eh)		;1415
	cp (ix+003h)		;1418
	jr z,l1424h		;141b
	djnz l140bh		;141d
	ld (ix+008h),010h	;141f
	ret			;1423
l1424h:
	ld (ix+008h),002h	;1424
	ret			;1428
	ld b,a			;1429
	ld a,(l1686h)		;142a
	cp 003h			;142d
	jp z,l1442h		;142f
	cp 004h			;1432
	jp z,l147fh		;1434
	cp 045h			;1437
	jp z,l1518h		;1439
	ld a,b			;143c
	call sub_0740h		;143d
l1440h:
	jr l1440h		;1440
l1442h:
	ld ix,l167bh		;1442
	ld (ix+000h),003h	;1446
	ld a,(l1687h)		;144a
	bit 2,a			;144d
	jp nz,l138bh		;144f
	ld (ix+001h),a		;1452
	ld (ix+002h),000h	;1455
	ld (ix+003h),001h	;1459
	ld hl,l1686h		;145d
	ld (ix+004h),l		;1460
	ld (ix+005h),h		;1463
	call sub_1a8eh		;1466
	ld a,(ix+006h)		;1469
	ld (l168ah),a		;146c
	ld a,(ix+008h)		;146f
	or a			;1472
	jp nz,sub_138dh		;1473
	ld a,005h		;1476
	ld (l1685h),a		;1478
	call sub_1195h		;147b
	ret			;147e
l147fh:
	ld ix,l167bh		;147f
	ld (ix+000h),004h	;1483
	ld a,(l1687h)		;1487
	bit 2,a			;148a
	jp nz,l150bh		;148c
	ld (ix+001h),a		;148f
	ld de,l168ah		;1492
	ld (ix+004h),e		;1495
	ld (ix+005h),d		;1498
	ld a,(l1688h)		;149b
	ld hl,l1567h		;149e
	bit 6,a			;14a1
	jr nz,l14c1h		;14a3
	ld hl,l1574h		;14a5
	ld a,(l1689h)		;14a8
	and 003h		;14ab
	jr z,l14c1h		;14ad
	ld hl,l1582h		;14af
	bit 1,a			;14b2
	jr nz,l14c1h		;14b4
	ld hl,l158fh		;14b6
	ld a,(l1688h)		;14b9
	or 010h			;14bc
	ld (l1688h),a		;14be
l14c1h:
	ld a,(hl)		;14c1
	inc hl			;14c2
	push af			;14c3
	ld bc,0001eh		;14c4
	ldir			;14c7
	pop bc			;14c9
	ld (ix+002h),000h	;14ca
	ld a,(l1689h)		;14ce
	bit 1,a			;14d1
	ld hl,l28b0h		;14d3
	jr nz,l14dbh		;14d6
	ld hl,l186ah		;14d8
l14dbh:
	ld (ix+006h),l		;14db
	ld (ix+007h),h		;14de
l14e1h:
	push bc			;14e1
	call sub_1a8eh		;14e2
	pop bc			;14e5
	ld a,(ix+008h)		;14e6
	or a			;14e9
	jr nz,l150ch		;14ea
	ld a,(l1688h)		;14ec
	bit 4,a			;14ef
	jr z,l1506h		;14f1
	set 7,(ix+001h)		;14f3
	push bc			;14f7
	call sub_1a8eh		;14f8
	pop bc			;14fb
	res 7,(ix+001h)		;14fc
	ld a,(ix+008h)		;1500
	or a			;1503
	jr nz,l150ch		;1504
l1506h:
	inc (ix+002h)		;1506
	djnz l14e1h		;1509
l150bh:
	xor a			;150b
l150ch:
	ld (l1686h),a		;150c
	ld a,001h		;150f
	ld (l1685h),a		;1511
	call sub_1195h		;1514
	ret			;1517
l1518h:
	ld ix,l167bh		;1518
	ld (ix+000h),004h	;151c
	ld a,(l1687h)		;1520
	bit 2,a			;1523
	jp nz,l155bh		;1525
	ld (ix+001h),a		;1528
	ld hl,(l1688h)		;152b
	ld (ix+002h),l		;152e
	bit 0,h			;1531
	jr z,l1539h		;1533
	set 7,(ix+001h)		;1535
l1539h:
	ld hl,l1574h+1		;1539
	ld de,l168ah		;153c
	ld bc,0001eh		;153f
	ld (ix+004h),e		;1542
	ld (ix+005h),d		;1545
	ldir			;1548
	ld hl,l186ah		;154a
	ld (ix+006h),l		;154d
	ld (ix+007h),h		;1550
	call sub_1a8eh		;1553
	ld a,(ix+008h)		;1556
	and 0c0h		;1559
l155bh:
	ld (l1686h),a		;155b
	ld a,001h		;155e
	ld (l1685h),a		;1560
	call sub_1195h		;1563
	ret			;1566
l1567h:
	jr z,$+4		;1567
	ex af,af'		;1569
	ld (l01e6h),a		;156a
	inc bc			;156d
	dec b			;156e
	rlca			;156f
	ld (bc),a		;1570
	inc b			;1571
l1572h:
	ld b,008h		;1572
l1574h:
	jr z,$+4		;1574
	add hl,bc		;1576
	ld (l01e6h),a		;1577
	inc bc			;157a
	dec b			;157b
	rlca			;157c
	add hl,bc		;157d
	ld (bc),a		;157e
	inc b			;157f
	ld b,008h		;1580
l1582h:
	ld c,l			;1582
	inc bc			;1583
	ex af,af'		;1584
	ld (hl),h		;1585
	and 001h		;1586
	inc bc			;1588
	dec b			;1589
	rlca			;158a
	ld (bc),a		;158b
	inc b			;158c
	ld b,008h		;158d
l158fh:
	ld d,b			;158f
	ld (bc),a		;1590
	add hl,bc		;1591
	ld (l01e6h),a		;1592
	inc bc			;1595
	dec b			;1596
	rlca			;1597
	add hl,bc		;1598
	ld (bc),a		;1599
	inc b			;159a
	ld b,008h		;159b
l159dh:
	nop			;159d
l159eh:
	nop			;159e
	call sub_0740h		;159f
l15a2h:
	nop			;15a2
	nop			;15a3
	nop			;15a4
sub_15a5h:
	nop			;15a5
	nop			;15a6
	nop			;15a7
sub_15a8h:
	nop			;15a8
	nop			;15a9
	nop			;15aa
sub_15abh:
	nop			;15ab
	nop			;15ac
	nop			;15ad
sub_15aeh:
	nop			;15ae
	nop			;15af
	nop			;15b0
sub_15b1h:
	nop			;15b1
	nop			;15b2
	nop			;15b3
sub_15b4h:
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
	ld c,l			;15d3
	ld d,e			;15d4
	ld b,h			;15d5
	ld c,a			;15d6
	ld d,e			;15d7
	jr nz,l15fah		;15d8
	jr nz,l1620h		;15da
	ld b,c			;15dc
	ld d,h			;15dd
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
l15f9h:
	nop			;15f9
l15fah:
	nop			;15fa
l15fbh:
	ld bc,l0400h		;15fb
	nop			;15fe
	djnz l1601h		;15ff
l1601h:
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
	nop			;1616
	nop			;1617
	nop			;1618
	nop			;1619
	nop			;161a
	nop			;161b
	nop			;161c
	nop			;161d
	nop			;161e
	nop			;161f
l1620h:
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
	nop			;1674
	nop			;1675
	nop			;1676
	nop			;1677
	nop			;1678
	nop			;1679
	nop			;167a
l167bh:
	nop			;167b
	nop			;167c
	nop			;167d
	nop			;167e
	nop			;167f
	nop			;1680
	nop			;1681
	nop			;1682
	nop			;1683
l1684h:
	nop			;1684
l1685h:
	nop			;1685
l1686h:
	nop			;1686
l1687h:
	nop			;1687
l1688h:
	nop			;1688
l1689h:
	nop			;1689
l168ah:
	nop			;168a
l168bh:
	nop			;168b
l168ch:
	nop			;168c
l168dh:
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
	nop			;16b0
	nop			;16b1
	nop			;16b2
	nop			;16b3
	nop			;16b4
	nop			;16b5
	nop			;16b6
	nop			;16b7
	nop			;16b8
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
	nop			;16e8
	nop			;16e9
	nop			;16ea
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
sub_17f6h:
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
	nop			;186e
	nop			;186f
	nop			;1870
	nop			;1871
	nop			;1872
	nop			;1873
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
l1918h:
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
	nop			;1966
	nop			;1967
	nop			;1968
	nop			;1969
	nop			;196a
	nop			;196b
	nop			;196c
	nop			;196d
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
	nop			;197b
	nop			;197c
	nop			;197d
	nop			;197e
	nop			;197f
	nop			;1980
	nop			;1981
	nop			;1982
	nop			;1983
	nop			;1984
	nop			;1985
	nop			;1986
	nop			;1987
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
	nop			;1992
	nop			;1993
	nop			;1994
	nop			;1995
	nop			;1996
	nop			;1997
	nop			;1998
	nop			;1999
	nop			;199a
	nop			;199b
	nop			;199c
	nop			;199d
	nop			;199e
	nop			;199f
	nop			;19a0
	nop			;19a1
	nop			;19a2
	nop			;19a3
	nop			;19a4
	nop			;19a5
	nop			;19a6
	nop			;19a7
	nop			;19a8
	nop			;19a9
	nop			;19aa
	nop			;19ab
	nop			;19ac
	nop			;19ad
	nop			;19ae
	nop			;19af
	nop			;19b0
	nop			;19b1
	nop			;19b2
	nop			;19b3
	nop			;19b4
	nop			;19b5
	nop			;19b6
	nop			;19b7
	nop			;19b8
	nop			;19b9
	nop			;19ba
	nop			;19bb
	nop			;19bc
	nop			;19bd
	nop			;19be
	nop			;19bf
	nop			;19c0
	nop			;19c1
	nop			;19c2
	nop			;19c3
	nop			;19c4
	nop			;19c5
	nop			;19c6
	nop			;19c7
	nop			;19c8
	nop			;19c9
	nop			;19ca
	nop			;19cb
	nop			;19cc
	nop			;19cd
	nop			;19ce
	nop			;19cf
	nop			;19d0
	nop			;19d1
	nop			;19d2
	nop			;19d3
	nop			;19d4
	nop			;19d5
	nop			;19d6
	nop			;19d7
	nop			;19d8
	nop			;19d9
	nop			;19da
	nop			;19db
	nop			;19dc
	nop			;19dd
	nop			;19de
	nop			;19df
	nop			;19e0
	nop			;19e1
	nop			;19e2
	nop			;19e3
	nop			;19e4
	nop			;19e5
	nop			;19e6
	nop			;19e7
	nop			;19e8
	nop			;19e9
	nop			;19ea
	nop			;19eb
	nop			;19ec
	nop			;19ed
	nop			;19ee
	nop			;19ef
	nop			;19f0
	nop			;19f1
	nop			;19f2
	nop			;19f3
	nop			;19f4
	nop			;19f5
	nop			;19f6
	nop			;19f7
	nop			;19f8
	nop			;19f9
	nop			;19fa
	nop			;19fb
	nop			;19fc
	nop			;19fd
	nop			;19fe
	nop			;19ff
	nop			;1a00
	nop			;1a01
	nop			;1a02
	nop			;1a03
	nop			;1a04
	nop			;1a05
	nop			;1a06
	nop			;1a07
	nop			;1a08
	nop			;1a09
	nop			;1a0a
	nop			;1a0b
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
	nop			;1a1c
	nop			;1a1d
	nop			;1a1e
	nop			;1a1f
	nop			;1a20
	nop			;1a21
	nop			;1a22
	nop			;1a23
	nop			;1a24
	nop			;1a25
	nop			;1a26
	nop			;1a27
	nop			;1a28
	nop			;1a29
	nop			;1a2a
	nop			;1a2b
	nop			;1a2c
	nop			;1a2d
	nop			;1a2e
	nop			;1a2f
	nop			;1a30
	nop			;1a31
	nop			;1a32
	nop			;1a33
	nop			;1a34
	nop			;1a35
	nop			;1a36
	nop			;1a37
	nop			;1a38
	nop			;1a39
	nop			;1a3a
	nop			;1a3b
	nop			;1a3c
	nop			;1a3d
	nop			;1a3e
	nop			;1a3f
	nop			;1a40
	nop			;1a41
	nop			;1a42
	nop			;1a43
	nop			;1a44
	nop			;1a45
	nop			;1a46
	nop			;1a47
	nop			;1a48
	nop			;1a49
	nop			;1a4a
	nop			;1a4b
	nop			;1a4c
	nop			;1a4d
	nop			;1a4e
	nop			;1a4f
	nop			;1a50
	nop			;1a51
	nop			;1a52
	nop			;1a53
	nop			;1a54
	nop			;1a55
	nop			;1a56
	nop			;1a57
	nop			;1a58
	nop			;1a59
	nop			;1a5a
	nop			;1a5b
	nop			;1a5c
	nop			;1a5d
	nop			;1a5e
	nop			;1a5f
	nop			;1a60
	nop			;1a61
	nop			;1a62
	nop			;1a63
	nop			;1a64
	nop			;1a65
	nop			;1a66
	nop			;1a67
	nop			;1a68
	nop			;1a69
	nop			;1a6a
	nop			;1a6b
	nop			;1a6c
	nop			;1a6d
	nop			;1a6e
	nop			;1a6f
	nop			;1a70
	nop			;1a71
	nop			;1a72
	nop			;1a73
	nop			;1a74
	nop			;1a75
	nop			;1a76
	nop			;1a77
	nop			;1a78
	nop			;1a79
	nop			;1a7a
	nop			;1a7b
	nop			;1a7c
	nop			;1a7d
	nop			;1a7e
	nop			;1a7f
	nop			;1a80
	nop			;1a81
	nop			;1a82
	nop			;1a83
	nop			;1a84
	nop			;1a85
	nop			;1a86
	nop			;1a87
	nop			;1a88
	nop			;1a89
	nop			;1a8a
	nop			;1a8b
	nop			;1a8c
	nop			;1a8d
sub_1a8eh:
	ld hl,l1adah		;1a8e
	ld (0ff80h),hl		;1a91
	ld a,(ix+000h)		;1a94
	or a			;1a97
	jp z,l1adbh		;1a98
	dec a			;1a9b
	jp z,l1b00h		;1a9c
	dec a			;1a9f
	jp z,l1b09h		;1aa0
	dec a			;1aa3
	jp z,l1ae9h		;1aa4
	dec a			;1aa7
	jp z,l1da3h		;1aa8
	ld (ix+008h),0ffh	;1aab
sub_1aafh:
	xor a			;1aaf
	ld (l1fa9h+1),a		;1ab0
	ld hl,l1abeh		;1ab3
	ld (0ff80h),hl		;1ab6
	ld a,0d4h		;1ab9
	out (040h),a		;1abb
	ret			;1abd
l1abeh:
	push af			;1abe
	in a,(040h)		;1abf
	bit 5,a			;1ac1
	jr nz,l1ad8h		;1ac3
	in a,(050h)		;1ac5
	bit 4,a			;1ac7
	jr nz,l1ad8h		;1ac9
	or 01fh			;1acb
	out (050h),a		;1acd
	ld a,0d0h		;1acf
	out (040h),a		;1ad1
	ld a,00dh		;1ad3
l1ad5h:
	dec a			;1ad5
	jr nz,l1ad5h		;1ad6
l1ad8h:
	pop af			;1ad8
	ei			;1ad9
l1adah:
	ret			;1ada
l1adbh:
	call sub_1b5dh		;1adb
	ld (ix+008h),a		;1ade
	xor a			;1ae1
	ld (ix+006h),a		;1ae2
	call sub_1aafh		;1ae5
	ret			;1ae8
l1ae9h:
	ld (ix+006h),006h	;1ae9
	ld (ix+007h),000h	;1aed
	ld b,0c0h		;1af1
	call sub_1b12h		;1af3
	ld a,(l1fa8h)		;1af6
	ld (ix+006h),a		;1af9
	call sub_1aafh		;1afc
	ret			;1aff
l1b00h:
	ld b,088h		;1b00
	call sub_1b12h		;1b02
	call sub_1aafh		;1b05
	ret			;1b08
l1b09h:
	ld b,0a8h		;1b09
	call sub_1b12h		;1b0b
	call sub_1aafh		;1b0e
	ret			;1b11
sub_1b12h:
	ld a,b			;1b12
	ld (l1fach),a		;1b13
	call sub_1b5dh		;1b16
	bit 7,a			;1b19
	jr nz,l1b59h		;1b1b
	ld a,(l1fa3h)		;1b1d
	cp 0ffh			;1b20
	jr z,l1b29h		;1b22
	cp (ix+002h)		;1b24
	jr z,l1b2eh		;1b27
l1b29h:
	call sub_1bedh		;1b29
	jr nz,l1b59h		;1b2c
l1b2eh:
	ld a,00ah		;1b2e
	ld (l1fadh),a		;1b30
l1b33h:
	di			;1b33
	ld a,(ix+003h)		;1b34
	out (042h),a		;1b37
	ld a,(ix+002h)		;1b39
	out (041h),a		;1b3c
	ld a,(l1fach)		;1b3e
	out (040h),a		;1b41
	call sub_1cbbh		;1b43
	ei			;1b46
	and 0fdh		;1b47
	jr z,l1b59h		;1b49
	push af			;1b4b
	call sub_1d05h		;1b4c
	pop bc			;1b4f
	jr nz,l1b58h		;1b50
	ld hl,l1fadh		;1b52
	dec (hl)		;1b55
	jr nz,l1b33h		;1b56
l1b58h:
	ld a,b			;1b58
l1b59h:
	ld (ix+008h),a		;1b59
	ret			;1b5c
sub_1b5dh:
	ld a,(ix+001h)		;1b5d
	res 7,a			;1b60
	cp 002h			;1b62
	jr nc,l1bbah		;1b64
	ld b,000h		;1b66
	ld c,a			;1b68
	ld hl,l1fa2h		;1b69
	sub (hl)		;1b6c
	push af			;1b6d
	ld d,000h		;1b6e
	ld e,(hl)		;1b70
	ld (hl),c		;1b71
	ld hl,l1fa4h		;1b72
	add hl,de		;1b75
	ld a,(l1fa3h)		;1b76
	ld (hl),a		;1b79
	ld de,00002h		;1b7a
	add hl,de		;1b7d
	ld a,(l1fa8h)		;1b7e
	ld (hl),a		;1b81
	ld hl,l1fa4h		;1b82
	add hl,bc		;1b85
	ld a,(hl)		;1b86
	ld (l1fa3h),a		;1b87
	add hl,de		;1b8a
	ld a,(hl)		;1b8b
	ld (l1fa8h),a		;1b8c
	di			;1b8f
	and 040h		;1b90
	ld b,a			;1b92
	in a,(050h)		;1b93
	and 080h		;1b95
	inc c			;1b97
	or c			;1b98
	or b			;1b99
	bit 7,(ix+001h)		;1b9a
	jr z,l1ba2h		;1b9e
	or 020h			;1ba0
l1ba2h:
	xor 02fh		;1ba2
	out (050h),a		;1ba4
	ei			;1ba6
	pop af			;1ba7
	call nz,sub_1d94h	;1ba8
	call sub_1d8ch		;1bab
	bit 5,a			;1bae
	ret nz			;1bb0
	call sub_1bbeh		;1bb1
	jr c,l1bbah		;1bb4
	call sub_1d8ch		;1bb6
	ret			;1bb9
l1bbah:
	ld a,080h		;1bba
	or a			;1bbc
	ret			;1bbd
sub_1bbeh:
	in a,(041h)		;1bbe
	out (043h),a		;1bc0
	ld a,018h		;1bc2
	out (040h),a		;1bc4
	call sub_1d8ch		;1bc6
	ld c,a			;1bc9
	ld b,00ah		;1bca
	ld hl,0b5b0h		;1bcc
l1bcfh:
	call sub_1bdah		;1bcf
	ret c			;1bd2
	call sub_1bdah		;1bd3
	ret c			;1bd6
	djnz l1bcfh		;1bd7
	ret			;1bd9
sub_1bdah:
	call sub_1d8ch		;1bda
	xor c			;1bdd
	and 002h		;1bde
	jr nz,l1be9h		;1be0
	dec hl			;1be2
	ld a,h			;1be3
	or l			;1be4
	jr nz,sub_1bdah		;1be5
	scf			;1be7
	ret			;1be8
l1be9h:
	ld a,c			;1be9
	cpl			;1bea
	ld c,a			;1beb
	ret			;1bec
sub_1bedh:
	ld a,0ffh		;1bed
	ld (l1faeh),a		;1bef
	ld a,(l1fa3h)		;1bf2
	cp 0ffh			;1bf5
	jr nz,l1bfeh		;1bf7
	call sub_1c1ah		;1bf9
	jr nz,l1c11h		;1bfc
l1bfeh:
	ld b,001h		;1bfe
	call sub_1c3dh		;1c00
	ret z			;1c03
	jr nc,l1c0bh		;1c04
	call sub_1c1ah		;1c06
	jr nz,l1c11h		;1c09
l1c0bh:
	ld b,003h		;1c0b
	call sub_1c3dh		;1c0d
	ret z			;1c10
l1c11h:
	ld a,0ffh		;1c11
	ld (l1fa3h),a		;1c13
	ld a,010h		;1c16
	or a			;1c18
	ret			;1c19
sub_1c1ah:
	call sub_1d8ch		;1c1a
	ld d,068h		;1c1d
	ld e,0ffh		;1c1f
l1c21h:
	in a,(040h)		;1c21
	xor 004h		;1c23
	and 004h		;1c25
	ret z			;1c27
	push de			;1c28
	ld a,d			;1c29
	call sub_1d84h		;1c2a
	ld hl,(l1fa9h)		;1c2d
	ld h,000h		;1c30
	call sub_1d97h		;1c32
	pop de			;1c35
	dec e			;1c36
	jr nz,l1c21h		;1c37
	ld a,004h		;1c39
	or a			;1c3b
	ret			;1c3c
sub_1c3dh:
	push bc			;1c3d
	ld a,(l1fa3h)		;1c3e
	ld b,a			;1c41
	ld c,(ix+002h)		;1c42
	ld a,(l1fa9h+1)		;1c45
	or a			;1c48
	call nz,sub_1c62h	;1c49
	call sub_1c6eh		;1c4c
	call sub_1c92h		;1c4f
	pop bc			;1c52
	scf			;1c53
	ret nz			;1c54
	in a,(042h)		;1c55
	ld (l1fa3h),a		;1c57
	sub (ix+002h)		;1c5a
	ret z			;1c5d
	djnz sub_1c3dh		;1c5e
	or a			;1c60
	ret			;1c61
sub_1c62h:
	ld a,b			;1c62
	sub c			;1c63
	jr c,l1c69h		;1c64
	add a,b			;1c66
	ld b,a			;1c67
	ret			;1c68
l1c69h:
	neg			;1c69
	add a,c			;1c6b
	ld c,a			;1c6c
	ret			;1c6d
sub_1c6eh:
	ld d,068h		;1c6e
	ld a,b			;1c70
	sub c			;1c71
	ret z			;1c72
	jr nc,l1c79h		;1c73
	ld d,048h		;1c75
	ld a,c			;1c77
	sub b			;1c78
l1c79h:
	ld e,a			;1c79
l1c7ah:
	push de			;1c7a
	ld a,d			;1c7b
	call sub_1d84h		;1c7c
	ld hl,(l1fa9h)		;1c7f
	ld h,000h		;1c82
	call sub_1d97h		;1c84
	pop de			;1c87
	dec e			;1c88
	jr nz,l1c7ah		;1c89
	ld hl,0000fh		;1c8b
	call sub_1d97h		;1c8e
	ret			;1c91
sub_1c92h:
	ld a,0c0h		;1c92
	call sub_1d5dh		;1c94
	and 098h		;1c97
	ret z			;1c99
	ld a,(l1fa8h)		;1c9a
	cpl			;1c9d
	ld (l1fa8h),a		;1c9e
	and 040h		;1ca1
	ld b,a			;1ca3
	di			;1ca4
	in a,(050h)		;1ca5
	and 0bfh		;1ca7
	or b			;1ca9
	out (050h),a		;1caa
	ei			;1cac
	ld hl,00032h		;1cad
	call sub_1d97h		;1cb0
	ld a,0c0h		;1cb3
	call sub_1d5dh		;1cb5
	and 098h		;1cb8
l1cbah:
	ret			;1cba
sub_1cbbh:
	ld hl,l1cffh		;1cbb
	and 020h		;1cbe
	jr z,l1cc5h		;1cc0
	ld hl,l1d02h		;1cc2
l1cc5h:
	ld (0ff80h),hl		;1cc5
	ld c,043h		;1cc8
	ld l,(ix+004h)		;1cca
	ld h,(ix+005h)		;1ccd
	ld b,(ix+006h)		;1cd0
	ld a,(ix+007h)		;1cd3
	srl a			;1cd6
	jr z,l1cedh		;1cd8
	srl a			;1cda
	jr z,l1ce8h		;1cdc
l1cdeh:
	ei			;1cde
	halt			;1cdf
	jp nz,l1cdeh		;1ce0
l1ce3h:
	ei			;1ce3
	halt			;1ce4
	jp nz,l1ce3h		;1ce5
l1ce8h:
	ei			;1ce8
	halt			;1ce9
	jp nz,l1ce8h		;1cea
l1cedh:
	ei			;1ced
	halt			;1cee
	jp nz,l1cedh		;1cef
l1cf2h:
	in a,(040h)		;1cf2
	bit 0,a			;1cf4
	jr nz,l1cf2h		;1cf6
	ld hl,l1adah		;1cf8
	ld (0ff80h),hl		;1cfb
	ret			;1cfe
l1cffh:
	ini			;1cff
	ret			;1d01
l1d02h:
	outi			;1d02
	ret			;1d04
sub_1d05h:
	ld b,a			;1d05
	and 0e7h		;1d06
	jr z,l1d12h		;1d08
	push af			;1d0a
	call sub_1d8ch		;1d0b
	pop af			;1d0e
	and 0e1h		;1d0f
	ret			;1d11
l1d12h:
	bit 4,b			;1d12
	jr nz,l1d37h		;1d14
	ld a,(l1fadh)		;1d16
	sub 00ah		;1d19
	ret z			;1d1b
	ld a,(l1fa3h)		;1d1c
	ld b,a			;1d1f
	or a			;1d20
	jr nz,l1d27h		;1d21
	ld c,001h		;1d23
	jr l1d29h		;1d25
l1d27h:
	dec a			;1d27
	ld c,a			;1d28
l1d29h:
	push bc			;1d29
	call sub_1c6eh		;1d2a
	pop de			;1d2d
	ld b,e			;1d2e
	ld c,d			;1d2f
	call sub_1c6eh		;1d30
	call sub_1c92h		;1d33
	ret			;1d36
l1d37h:
	ld a,(l1fa8h)		;1d37
	push af			;1d3a
	call sub_1c92h		;1d3b
	pop bc			;1d3e
	jr nz,l1d54h		;1d3f
	in a,(042h)		;1d41
	cp (ix+002h)		;1d43
	jr nz,l1d56h		;1d46
	ld a,(l1fa8h)		;1d48
	cp b			;1d4b
	jr z,l1d50h		;1d4c
	xor a			;1d4e
	ret			;1d4f
l1d50h:
	ld a,010h		;1d50
	or a			;1d52
	ret			;1d53
l1d54h:
	ld a,0ffh		;1d54
l1d56h:
	ld (l1fa3h),a		;1d56
	call sub_1bedh		;1d59
	ret			;1d5c
sub_1d5dh:
	push bc			;1d5d
	call sub_1d84h		;1d5e
	ld bc,0963eh		;1d61
l1d64h:
	in a,(040h)		;1d64
	bit 0,a			;1d66
	jr z,l1d71h		;1d68
	dec bc			;1d6a
	ld a,b			;1d6b
	or c			;1d6c
	jr nz,l1d64h		;1d6d
	ld a,010h		;1d6f
l1d71h:
	pop bc			;1d71
	push af			;1d72
	call sub_1d8ch		;1d73
	pop af			;1d76
	ret			;1d77
	res 2,a			;1d78
	call sub_1d84h		;1d7a
l1d7dh:
	in a,(040h)		;1d7d
	bit 0,a			;1d7f
	jr nz,l1d7dh		;1d81
	ret			;1d83
sub_1d84h:
	out (040h),a		;1d84
	ld a,00dh		;1d86
l1d88h:
	dec a			;1d88
	jr nz,l1d88h		;1d89
	ret			;1d8b
sub_1d8ch:
	ld a,0d0h		;1d8c
	call sub_1d84h		;1d8e
	in a,(040h)		;1d91
	ret			;1d93
sub_1d94h:
	ld hl,00032h		;1d94
sub_1d97h:
	ld a,0c7h		;1d97
l1d99h:
	nop			;1d99
	dec a			;1d9a
	jr nz,l1d99h		;1d9b
	dec hl			;1d9d
	ld a,h			;1d9e
	or l			;1d9f
	jr nz,sub_1d97h		;1da0
	ret			;1da2
l1da3h:
	call sub_1b5dh		;1da3
	and 0c0h		;1da6
	jp nz,l1eb0h		;1da8
	ld a,(l1faeh)		;1dab
	or a			;1dae
	jr z,l1dbbh		;1daf
	call sub_1c1ah		;1db1
	jp nz,l1eb0h		;1db4
	xor a			;1db7
	ld (l1fa3h),a		;1db8
l1dbbh:
	ld c,(ix+002h)		;1dbb
	ld hl,l1fa3h		;1dbe
	ld b,(hl)		;1dc1
	ld (hl),c		;1dc2
	ld a,(l1fa9h+1)		;1dc3
	or a			;1dc6
	call nz,sub_1c62h	;1dc7
	ld a,b			;1dca
	cp c			;1dcb
	call nz,sub_1c6eh	;1dcc
	di			;1dcf
	in a,(050h)		;1dd0
	and 0bfh		;1dd2
	out (050h),a		;1dd4
	ei			;1dd6
	ld de,l1fafh		;1dd7
	call sub_1ebah		;1dda
	ld a,0ffh		;1ddd
	jp c,l1eb0h		;1ddf
	di			;1de2
	ld hl,l1d02h		;1de3
	ld (0ff80h),hl		;1de6
	ld a,(ix+002h)		;1de9
	out (041h),a		;1dec
	ld hl,l1fafh		;1dee
	ld b,06ah		;1df1
	ld c,043h		;1df3
	ld a,0f4h		;1df5
	call sub_1d84h		;1df7
l1dfah:
	ei			;1dfa
	halt			;1dfb
	jp nz,l1dfah		;1dfc
l1dffh:
	ei			;1dff
	halt			;1e00
	jp nz,l1dffh		;1e01
l1e04h:
	ei			;1e04
	halt			;1e05
	jp nz,l1e04h		;1e06
l1e09h:
	ei			;1e09
	halt			;1e0a
	jp nz,l1e09h		;1e0b
l1e0eh:
	ei			;1e0e
	halt			;1e0f
	jp nz,l1e0eh		;1e10
l1e13h:
	ei			;1e13
	halt			;1e14
	jp nz,l1e13h		;1e15
l1e18h:
	ei			;1e18
	halt			;1e19
	jp nz,l1e18h		;1e1a
l1e1dh:
	ei			;1e1d
	halt			;1e1e
	jp nz,l1e1dh		;1e1f
l1e22h:
	ei			;1e22
	halt			;1e23
	jp nz,l1e22h		;1e24
l1e27h:
	ei			;1e27
	halt			;1e28
	jp nz,l1e27h		;1e29
l1e2ch:
	ei			;1e2c
	halt			;1e2d
	jp nz,l1e2ch		;1e2e
l1e31h:
	ei			;1e31
	halt			;1e32
	jp nz,l1e31h		;1e33
l1e36h:
	ei			;1e36
	halt			;1e37
	jp nz,l1e36h		;1e38
l1e3bh:
	ei			;1e3b
	halt			;1e3c
	jp nz,l1e3bh		;1e3d
l1e40h:
	ei			;1e40
	halt			;1e41
	jp nz,l1e40h		;1e42
l1e45h:
	ei			;1e45
	halt			;1e46
	jp nz,l1e45h		;1e47
l1e4ah:
	ei			;1e4a
	halt			;1e4b
	jp nz,l1e4ah		;1e4c
l1e4fh:
	ei			;1e4f
	halt			;1e50
	jp nz,l1e4fh		;1e51
l1e54h:
	ei			;1e54
	halt			;1e55
	jp nz,l1e54h		;1e56
l1e59h:
	ei			;1e59
	halt			;1e5a
	jp nz,l1e59h		;1e5b
l1e5eh:
	ei			;1e5e
	halt			;1e5f
	jp nz,l1e5eh		;1e60
l1e63h:
	ei			;1e63
	halt			;1e64
	jp nz,l1e63h		;1e65
l1e68h:
	ei			;1e68
	halt			;1e69
	jp nz,l1e68h		;1e6a
l1e6dh:
	ei			;1e6d
	halt			;1e6e
	jp nz,l1e6dh		;1e6f
l1e72h:
	ei			;1e72
	halt			;1e73
	jp nz,l1e72h		;1e74
	ld hl,l1adah		;1e77
	ld (0ff80h),hl		;1e7a
l1e7dh:
	in a,(040h)		;1e7d
	bit 0,a			;1e7f
	jr nz,l1e7dh		;1e81
	ld l,(ix+004h)		;1e83
	ld h,(ix+005h)		;1e86
	inc hl			;1e89
	ld b,(hl)		;1e8a
l1e8bh:
	inc hl			;1e8b
	inc hl			;1e8c
	inc hl			;1e8d
	ld (ix+006h),000h	;1e8e
l1e92h:
	ld a,(hl)		;1e92
	inc hl			;1e93
	out (042h),a		;1e94
	ld (ix+007h),a		;1e96
	ld a,088h		;1e99
	call sub_1d5dh		;1e9b
	and 099h		;1e9e
	jr z,l1eaah		;1ea0
	cp 008h			;1ea2
	jp nz,l1eb0h		;1ea4
	inc (ix+006h)		;1ea7
l1eaah:
	call sub_1d8ch		;1eaa
	djnz l1e92h		;1ead
	xor a			;1eaf
l1eb0h:
	ld (ix+008h),a		;1eb0
	ld (l1faeh),a		;1eb3
	call sub_1aafh		;1eb6
	ret			;1eb9
sub_1ebah:
	ld l,e			;1eba
	ld h,d			;1ebb
	ld bc,l186ah		;1ebc
	add hl,bc		;1ebf
	ld (ix+006h),l		;1ec0
	ld (ix+007h),h		;1ec3
	ld hl,l1f80h		;1ec6
	call sub_1f5fh		;1ec9
	ret c			;1ecc
	ld l,(ix+004h)		;1ecd
	ld h,(ix+005h)		;1ed0
	inc hl			;1ed3
	inc hl			;1ed4
	inc hl			;1ed5
	inc hl			;1ed6
	push hl			;1ed7
	pop iy			;1ed8
	ld a,(iy-002h)		;1eda
	ld (01fa0h),a		;1edd
	ld bc,00000h		;1ee0
l1ee3h:
	ld hl,l1f8bh		;1ee3
	call sub_1f5fh		;1ee6
	ret c			;1ee9
	ld hl,00004h		;1eea
	add hl,de		;1eed
	ld a,(ix+006h)		;1eee
	sub l			;1ef1
	ld a,(ix+007h)		;1ef2
	sbc a,h			;1ef5
	ret c			;1ef6
	ld a,(ix+002h)		;1ef7
	ld (de),a		;1efa
	inc de			;1efb
	ld a,(ix+001h)		;1efc
	rlca			;1eff
	and 001h		;1f00
	ld (de),a		;1f02
	inc de			;1f03
	push iy			;1f04
	pop hl			;1f06
	add hl,bc		;1f07
	ld a,(hl)		;1f08
	ld (de),a		;1f09
	inc de			;1f0a
	ld a,(iy-004h)		;1f0b
	ld (de),a		;1f0e
	inc de			;1f0f
	ld hl,01f92h		;1f10
	call sub_1f5fh		;1f13
	ret c			;1f16
	ld hl,00080h		;1f17
	ld a,(iy-004h)		;1f1a
	and 003h		;1f1d
	jr z,l1f25h		;1f1f
l1f21h:
	add hl,hl		;1f21
	dec a			;1f22
	jr nz,l1f21h		;1f23
l1f25h:
	push hl			;1f25
	add hl,de		;1f26
	ld a,(ix+006h)		;1f27
	sub l			;1f2a
	ld a,(ix+007h)		;1f2b
	sbc a,h			;1f2e
	pop hl			;1f2f
	ret c			;1f30
l1f31h:
	ld a,(iy-001h)		;1f31
	ld (de),a		;1f34
	inc de			;1f35
	dec hl			;1f36
	ld a,h			;1f37
	or l			;1f38
	jr nz,l1f31h		;1f39
	ld hl,01f9dh		;1f3b
	call sub_1f5fh		;1f3e
	ret c			;1f41
	inc bc			;1f42
	ld a,c			;1f43
	cp (iy-003h)		;1f44
	jr c,l1ee3h		;1f47
	ld l,(ix+006h)		;1f49
	ld h,(ix+007h)		;1f4c
	sbc hl,de		;1f4f
	jr z,l1f5dh		;1f51
	ld b,h			;1f53
	ld c,l			;1f54
	dec bc			;1f55
	ld h,d			;1f56
	ld l,e			;1f57
	inc de			;1f58
	ld (hl),04eh		;1f59
	ldir			;1f5b
l1f5dh:
	xor a			;1f5d
	ret			;1f5e
sub_1f5fh:
	push bc			;1f5f
	ld c,(hl)		;1f60
	inc hl			;1f61
l1f62h:
	push hl			;1f62
	ld l,(hl)		;1f63
	ld h,000h		;1f64
	add hl,de		;1f66
	ld a,(ix+006h)		;1f67
	sub l			;1f6a
	ld a,(ix+007h)		;1f6b
	sbc a,h			;1f6e
	pop hl			;1f6f
	jr c,l1f7eh		;1f70
	ld b,(hl)		;1f72
	inc hl			;1f73
	ld a,(hl)		;1f74
	inc hl			;1f75
l1f76h:
	ld (de),a		;1f76
	inc de			;1f77
	djnz l1f76h		;1f78
	dec c			;1f7a
	jr nz,l1f62h		;1f7b
	xor a			;1f7d
l1f7eh:
	pop bc			;1f7e
	ret			;1f7f
l1f80h:
	dec b			;1f80
	ld d,b			;1f81
	ld c,(hl)		;1f82
	inc c			;1f83
	nop			;1f84
	inc bc			;1f85
	or 001h			;1f86
	call m,04e32h		;1f88
l1f8bh:
	inc bc			;1f8b
	inc c			;1f8c
	nop			;1f8d
	inc bc			;1f8e
	push af			;1f8f
	ld bc,005feh		;1f90
	ld bc,l16f7h		;1f93
	ld c,(hl)		;1f96
	inc c			;1f97
	nop			;1f98
	inc bc			;1f99
	push af			;1f9a
	ld bc,l02fbh		;1f9b
	ld bc,032f7h		;1f9e
	ld c,(hl)		;1fa1
l1fa2h:
	nop			;1fa2
l1fa3h:
	rst 38h			;1fa3
l1fa4h:
	rst 38h			;1fa4
	rst 38h			;1fa5
	rst 38h			;1fa6
	rst 38h			;1fa7
l1fa8h:
	rst 38h			;1fa8
l1fa9h:
	ld b,000h		;1fa9
	nop			;1fab
l1fach:
	nop			;1fac
l1fadh:
	nop			;1fad
l1faeh:
	rst 38h			;1fae
l1fafh:
	jp (hl)			;1faf
	pop de			;1fb0
	nop			;1fb1
	nop			;1fb2
	nop			;1fb3
	nop			;1fb4
	nop			;1fb5
	nop			;1fb6
	nop			;1fb7
	nop			;1fb8
	nop			;1fb9
	nop			;1fba
	nop			;1fbb
	nop			;1fbc
	nop			;1fbd
	nop			;1fbe
	ld a,l			;1fbf
l1fc0h:
	ld c,(hl)		;1fc0
	nop			;1fc1
	nop			;1fc2
	ld bc,00000h		;1fc3
	nop			;1fc6
	nop			;1fc7
	nop			;1fc8
	nop			;1fc9
	nop			;1fca
	nop			;1fcb
	nop			;1fcc
	nop			;1fcd
	nop			;1fce
	nop			;1fcf
	nop			;1fd0
	nop			;1fd1
	nop			;1fd2
	nop			;1fd3
	nop			;1fd4
	nop			;1fd5
	nop			;1fd6
	nop			;1fd7
	nop			;1fd8
	nop			;1fd9
	nop			;1fda
	nop			;1fdb
	nop			;1fdc
	nop			;1fdd
	nop			;1fde
	nop			;1fdf
	nop			;1fe0
	nop			;1fe1
	nop			;1fe2
	nop			;1fe3
	nop			;1fe4
	nop			;1fe5
	nop			;1fe6
	nop			;1fe7
	nop			;1fe8
	nop			;1fe9
	nop			;1fea
	nop			;1feb
	nop			;1fec
	nop			;1fed
	nop			;1fee
	nop			;1fef
	nop			;1ff0
	jp nz,l070ah		;1ff1
	dec bc			;1ff4
	nop			;1ff5
	nop			;1ff6
	dec de			;1ff7
	ld (bc),a		;1ff8
	ld d,b			;1ff9
	nop			;1ffa
sub_1ffbh:
	ret nc			;1ffb
	rlca			;1ffc
	nop			;1ffd
	nop			;1ffe
	nop			;1fff
	nop			;2000
	nop			;2001
	nop			;2002
	nop			;2003
	nop			;2004
	nop			;2005
	nop			;2006
	nop			;2007
	nop			;2008
	nop			;2009
	nop			;200a
	nop			;200b
	nop			;200c
	nop			;200d
	nop			;200e
	nop			;200f
	nop			;2010
	nop			;2011
	nop			;2012
	nop			;2013
	nop			;2014
	nop			;2015
	nop			;2016
	nop			;2017
	nop			;2018
	nop			;2019
	nop			;201a
	nop			;201b
	nop			;201c
	nop			;201d
	nop			;201e
	nop			;201f
	nop			;2020
	nop			;2021
l2022h:
	nop			;2022
	nop			;2023
	nop			;2024
	nop			;2025
	nop			;2026
	nop			;2027
	nop			;2028
	nop			;2029
l202ah:
	nop			;202a
	nop			;202b
	nop			;202c
	nop			;202d
	nop			;202e
	nop			;202f
l2030h:
	nop			;2030
	nop			;2031
	nop			;2032
	nop			;2033
	nop			;2034
l2035h:
	nop			;2035
	nop			;2036
	nop			;2037
	nop			;2038
	nop			;2039
	nop			;203a
	nop			;203b
	nop			;203c
	nop			;203d
	nop			;203e
	nop			;203f
	nop			;2040
	nop			;2041
	nop			;2042
	nop			;2043
	nop			;2044
	nop			;2045
	nop			;2046
	nop			;2047
	nop			;2048
	nop			;2049
	nop			;204a
	nop			;204b
	nop			;204c
	nop			;204d
	nop			;204e
	nop			;204f
	nop			;2050
	nop			;2051
	nop			;2052
	nop			;2053
	nop			;2054
	nop			;2055
	nop			;2056
	nop			;2057
	nop			;2058
	nop			;2059
	nop			;205a
	nop			;205b
	nop			;205c
	nop			;205d
	nop			;205e
	nop			;205f
	nop			;2060
	nop			;2061
	nop			;2062
	nop			;2063
	nop			;2064
	nop			;2065
	nop			;2066
	nop			;2067
	nop			;2068
	nop			;2069
	nop			;206a
	nop			;206b
	nop			;206c
	nop			;206d
	nop			;206e
	nop			;206f
	nop			;2070
	nop			;2071
	nop			;2072
	nop			;2073
	nop			;2074
	nop			;2075
	nop			;2076
	nop			;2077
	nop			;2078
	nop			;2079
	nop			;207a
	nop			;207b
	nop			;207c
	nop			;207d
	nop			;207e
	nop			;207f
	nop			;2080
	nop			;2081
	nop			;2082
	jp m,0c033h		;2083
	adc a,(hl)		;2086
	ret nc			;2087
	cp b			;2088
	rst 38h			;2089
	inc b			;208a
	adc a,e			;208b
	ret po			;208c
	cp c			;208d
	and b			;208e
	dec a			;208f
	cp b			;2090
	nop			;2091
	jr l2022h		;2092
	ret c			;2094
	cp b			;2095
	xor d			;2096
	ld d,l			;2097
	cp e			;2098
l2099h:
	nop			;2099
	rst 38h			;209a
	adc a,c			;209b
	rlca			;209c
	dec sp			;209d
	rlca			;209e
	ld (hl),h		;209f
l20a0h:
	ld d,033h		;20a0
	in a,(089h)		;20a2
	rlca			;20a4
	dec sp			;20a5
	rlca			;20a6
	ld (hl),l		;20a7
	rlca			;20a8
	add a,c			;20a9
	jp (hl)			;20aa
	nop			;20ab
	jr nz,l2099h		;20ac
	ld c,e			;20ae
	sub b			;20af
l20b0h:
	add a,c			;20b0
	jp (hl)			;20b1
	nop			;20b2
	jr nc,l20a0h		;20b3
	ld b,h			;20b5
	sub b			;20b6
	cp b			;20b7
	nop			;20b8
	ld c,b			;20b9
	adc a,(hl)		;20ba
	ret c			;20bb
	cp b			;20bc
	xor d			;20bd
	ld d,l			;20be
	inc sp			;20bf
	in a,(089h)		;20c0
	rlca			;20c2
	dec sp			;20c3
	rlca			;20c4
	ld (hl),l		;20c5
	inc sp			;20c6
	cp b			;20c7
	nop			;20c8
	ex af,af'		;20c9
	adc a,(hl)		;20ca
	ret c			;20cb
	cp b			;20cc
	xor d			;20cd
	ld d,l			;20ce
	dec sp			;20cf
	rlca			;20d0
	ld (hl),h		;20d1
	daa			;20d2
	cp d			;20d3
	nop			;20d4
	ld b,b			;20d5
	cp b			;20d6
	nop			;20d7
	adc a,b			;20d8
	adc a,(hl)		;20d9
	ret c			;20da
	cp b			;20db
	xor d			;20dc
	ld d,l			;20dd
	adc a,c			;20de
	rlca			;20df
	dec sp			;20e0
	rlca			;20e1
	ld (hl),l		;20e2
	inc d			;20e3
	cp d			;20e4
	nop			;20e5
	add a,b			;20e6
	cp b			;20e7
	nop			;20e8
	ret z			;20e9
	adc a,(hl)		;20ea
	ret c			;20eb
	cp b			;20ec
	xor d			;20ed
	ld d,l			;20ee
	adc a,c			;20ef
	rlca			;20f0
	dec sp			;20f1
	rlca			;20f2
	ld (hl),l		;20f3
	inc bc			;20f4
	cp d			;20f5
	nop			;20f6
	or b			;20f7
	inc bc			;20f8
	jp z,0c88ch		;20f9
	adc a,(hl)		;20fc
	ret c			;20fd
	adc a,(hl)		;20fe
	pop bc			;20ff
	inc sp			;2100
	or 033h			;2101
	rst 38h			;2103
	ld b,0b8h		;2104
	ld h,b			;2106
	ld bc,0b950h		;2107
	nop			;210a
	ld h,0f3h		;210b
	and h			;210d
	set 5,b			;210e
	defb 0edh ;next byte illegal after ed	;2110
	ld a,(bc)		;2111
	adc a,h			;2112
	ret z			;2113
	adc a,(hl)		;2114
	ret c			;2115
	cp b			;2116
	ld b,b			;2117
	nop			;2118
	adc a,(hl)		;2119
	ret nz			;211a
	cp (hl)			;211b
	nop			;211c
	nop			;211d
	cp a			;211e
	nop			;211f
	nop			;2120
	cp c			;2121
	nop			;2122
	ld bc,0a4f3h		;2123
	cp b			;2126
	ld bc,03302h		;2127
	jp nc,0c28eh		;212a
	cp e			;212d
	nop			;212e
	ld a,h			;212f
	ld b,053h		;2130
	cp c			;2132
	ld bc,0cd00h		;2133
	inc de			;2136
	ld (hl),d		;2137
	ld bc,090cbh		;2138
	ret pe			;213b
	push bc			;213c
	ld bc,l0a0dh		;213d
	dec c			;2140
	ld a,(bc)		;2141
	ld l,02eh		;2142
	ld l,020h		;2144
	ld b,e			;2146
	ld l,a			;2147
	ld (hl),b		;2148
	ld l,a			;2149
	ld (hl),a		;214a
	ld h,l			;214b
	ld (hl),d		;214c
	jr nz,l2187h		;214d
	jr c,l2171h		;214f
	ld c,l			;2151
	ld l,a			;2152
	ld l,(hl)		;2153
	ld l,c			;2154
	ld (hl),h		;2155
	ld l,a			;2156
	ld (hl),d		;2157
	jr nz,l21d0h		;2158
	ld h,l			;215a
	ld (hl),d		;215b
	jr nz,l218fh		;215c
	ld l,030h		;215e
	jr nz,l2190h		;2160
	ld l,02eh		;2162
	dec c			;2164
	ld a,(bc)		;2165
	nop			;2166
	jp m,0c033h		;2167
	adc a,(hl)		;216a
	ret c			;216b
	cp (hl)			;216c
	call m,0c703h		;216d
	inc b			;2170
l2171h:
	ld c,a			;2171
	ld (bc),a		;2172
	cp b			;2173
	ld b,b			;2174
	nop			;2175
	adc a,(hl)		;2176
	ret c			;2177
	ret pe			;2178
	adc a,b			;2179
	ld bc,l0a0dh		;217a
	ld a,020h		;217d
	nop			;217f
	ret pe			;2180
	and a			;2181
	ld bc,0413ch		;2182
	ld (hl),d		;2185
	ret po			;2186
l2187h:
	inc a			;2187
	ld e,e			;2188
	ld (hl),e		;2189
	call c,0e850h		;218a
	adc a,001h		;218d
l218fh:
	cp e			;218f
l2190h:
	nop			;2190
	nop			;2191
	cp c			;2192
	nop			;2193
	nop			;2194
	ret pe			;2195
	add a,c			;2196
	nop			;2197
	ld (hl),d		;2198
	inc c			;2199
	inc bc			;219a
	in a,(003h)		;219b
	in a,(003h)		;219d
	in a,(003h)		;219f
	in a,(00ah)		;21a1
	ret c			;21a3
	ex de,hl		;21a4
	rst 28h			;21a5
	inc a			;21a6
	ld a,(00a75h)		;21a7
	ret pe			;21aa
	or b			;21ab
	ld bc,0cb8bh		;21ac
	cp e			;21af
	nop			;21b0
	nop			;21b1
	ex de,hl		;21b2
	pop hl			;21b3
	inc a			;21b4
	dec c			;21b5
	ld e,b			;21b6
	ld (hl),l		;21b7
	xor (hl)		;21b8
	ld d,b			;21b9
	ld d,e			;21ba
	ld d,c			;21bb
	ret pe			;21bc
	ld h,b			;21bd
	ld bc,05e1fh		;21be
	ld e,b			;21c1
	cp e			;21c2
	ret			;21c3
	ld (bc),a		;21c4
	inc a			;21c5
	ld b,h			;21c6
	ld (hl),h		;21c7
	ld c,e			;21c8
	cp e			;21c9
	sbc a,c			;21ca
	ld (bc),a		;21cb
	inc a			;21cc
	ld c,l			;21cd
	ld (hl),h		;21ce
	ld b,h			;21cf
l21d0h:
	cp e			;21d0
	sub b			;21d1
	ld (bc),a		;21d2
	inc a			;21d3
	ld d,e			;21d4
	ld (hl),h		;21d5
	dec a			;21d6
	cp e			;21d7
	jp 03c03h		;21d8
	ld d,h			;21db
	ld (hl),h		;21dc
	ld (hl),03ch		;21dd
	ld b,a			;21df
	ld (hl),h		;21e0
	rla			;21e1
	adc a,h			;21e2
	res 1,(hl)		;21e3
	in a,(0beh)		;21e5
	dec e			;21e7
	add hl,bc		;21e8
	inc a			;21e9
	ld b,d			;21ea
	ld (hl),h		;21eb
	inc c			;21ec
	ret pe			;21ed
	inc de			;21ee
	ld bc,0473fh		;21ef
	dec l			;21f2
	ld (hl),034h		;21f3
	nop			;21f5
	jp (hl)			;21f6
	ld l,(hl)		;21f7
	rst 38h			;21f8
	ld e,056h		;21f9
	ei			;21fb
	ex de,hl		;21fc
	cp 083h			;21fd
	call nz,03306h		;21ff
	ret nz			;2202
	adc a,(hl)		;2203
	ret c			;2204
	cp (hl)			;2205
	call m,0c703h		;2206
	inc b			;2209
	inc de			;220a
	ld a,(bc)		;220b
	adc a,h			;220c
	ret nc			;220d
	adc a,(hl)		;220e
	ret c			;220f
	adc a,(hl)		;2210
	ret nz			;2211
	ei			;2212
	set 7,a			;2213
	out (0e9h),a		;2215
	ld c,(hl)		;2217
	rst 38h			;2218
	ld d,e			;2219
	ret pe			;221a
	dec c			;221b
	ld bc,08a5bh		;221c
	ret po			;221f
	inc l			;2220
	jr nc,l2295h		;2221
	ld d,03ch		;2223
	ld a,(bc)		;2225
l2226h:
	ld (hl),d		;2226
	dec bc			;2227
	inc l			;2228
	rlca			;2229
	inc a			;222a
	ld a,(bc)		;222b
	ld (hl),d		;222c
	inc c			;222d
	inc a			;222e
	djnz l2226h		;222f
	ld (hl),d		;2231
	rlca			;2232
	ld d,b			;2233
	ret pe			;2234
	ret nz			;2235
	nop			;2236
	ld e,b			;2237
	ld a,(bc)		;2238
	ret nz			;2239
	ld (hl),e		;223a
l223bh:
	ld (bc),a		;223b
	adc a,d			;223c
	call nz,08cc3h		;223d
	ret c			;2240
	adc a,(hl)		;2241
	ret nc			;2242
	adc a,e			;2243
	and 0e9h		;2244
	rra			;2246
	rst 38h			;2247
	ret pe			;2248
	ld a,h			;2249
	nop			;224a
	adc a,d			;224b
	inc b			;224c
	ret pe			;224d
	sbc a,d			;224e
	nop			;224f
	or b			;2250
	jr nz,l223bh		;2251
	ex af,af'		;2253
	ld bc,0c1e8h		;2254
	rst 38h			;2257
	ld (hl),d		;2258
	add hl,de		;2259
	ld (bc),a		;225a
	ret nz			;225b
	ld (bc),a		;225c
	ret nz			;225d
	ld (bc),a		;225e
	ret nz			;225f
	ld (bc),a		;2260
	ret nz			;2261
	ld d,b			;2262
	ret pe			;2263
	or e			;2264
	rst 38h			;2265
	ld e,e			;2266
	ld (hl),d		;2267
	ld a,(bc)		;2268
	ld a,(bc)		;2269
	jp l0488h		;226a
	ld b,(hl)		;226d
	ret pe			;226e
	xor (hl)		;226f
	nop			;2270
	ex de,hl		;2271
	push de			;2272
	inc a			;2273
	dec c			;2274
	ld (hl),h		;2275
	or 0c3h			;2276
	adc a,h			;2278
	ret c			;2279
	dec bc			;227a
	add a,075h		;227b
	ld b,08ch		;227d
	ret nz			;227f
	adc a,(hl)		;2280
	ret c			;2281
	adc a,e			;2282
	rst 30h			;2283
	cp c			;2284
	djnz l2287h		;2285
l2287h:
	ld d,c			;2287
	ret pe			;2288
	ld a,(bc)		;2289
	nop			;228a
	ld e,c			;228b
	jp po,08cf9h		;228c
	ret c			;228f
	adc a,(hl)		;2290
	ret nz			;2291
	adc a,e			;2292
	cp 0c3h			;2293
l2295h:
	ret pe			;2295
l2296h:
	cpl			;2296
	nop			;2297
	cp e			;2298
	nop			;2299
	nop			;229a
	cp c			;229b
	djnz l229eh		;229c
l229eh:
	adc a,d			;229e
	nop			;229f
	ret pe			;22a0
	ld b,a			;22a1
	nop			;22a2
	or b			;22a3
	jr nz,$-22		;22a4
	or l			;22a6
	nop			;22a7
	ld b,e			;22a8
	jp po,0b0f3h		;22a9
	jr nz,l2296h		;22ac
	xor l			;22ae
	nop			;22af
	cp c			;22b0
	djnz l22b3h		;22b1
l22b3h:
	adc a,d			;22b3
	inc b			;22b4
	inc h			;22b5
	ld a,a			;22b6
	inc a			;22b7
	jr nz,l232dh		;22b8
	ld (bc),a		;22ba
	or b			;22bb
	ld l,0e8h		;22bc
	sbc a,l			;22be
	nop			;22bf
	ld b,(hl)		;22c0
	jp po,0e8f0h		;22c1
	ld e,c			;22c4
	nop			;22c5
	jp 0d88ch		;22c6
	add a,(hl)		;22c9
	ret po			;22ca
	ret pe			;22cb
	inc e			;22cc
	nop			;22cd
	add a,(hl)		;22ce
l22cfh:
	ret po			;22cf
	ret pe			;22d0
	rla			;22d1
	nop			;22d2
	or b			;22d3
	ld a,(085e8h)		;22d4
	nop			;22d7
	adc a,e			;22d8
	add a,086h		;22d9
	ret po			;22db
	ret pe			;22dc
	dec bc			;22dd
	nop			;22de
	add a,(hl)		;22df
	ret po			;22e0
	ret pe			;22e1
	ld b,000h		;22e2
	or b			;22e4
	jr nz,l22cfh		;22e5
	ld (hl),h		;22e7
	nop			;22e8
	jp 0d050h		;22e9
	ret z			;22ec
	ret nc			;22ed
	ret z			;22ee
	ret nc			;22ef
	ret z			;22f0
	ret nc			;22f1
	ret z			;22f2
	ret pe			;22f3
	ld bc,05800h		;22f4
	inc h			;22f7
	rrca			;22f8
	inc b			;22f9
	sub b			;22fa
	daa			;22fb
	inc d			;22fc
	ld b,b			;22fd
	daa			;22fe
	ret pe			;22ff
	ld e,e			;2300
	nop			;2301
	jp 0ec87h		;2302
	add a,a			;2305
	ld e,(hl)		;2306
	nop			;2307
	add a,a			;2308
	call pe,08a2eh		;2309
	rlca			;230c
	ld b,e			;230d
	ld a,(bc)		;230e
	ret nz			;230f
	ld (hl),h		;2310
	dec b			;2311
	ret pe			;2312
	ld c,b			;2313
	nop			;2314
	ex de,hl		;2315
	di			;2316
	add a,a			;2317
	call pe,05e87h		;2318
	nop			;231b
	add a,a			;231c
	call pe,0b0c3h		;231d
	dec c			;2320
	ret pe			;2321
l2322h:
	add hl,sp		;2322
	nop			;2323
	or b			;2324
	ld a,(bc)		;2325
	ret pe			;2326
	inc (hl)		;2327
	nop			;2328
	jp l06e8h		;2329
	nop			;232c
l232dh:
	ld (hl),h		;232d
	ei			;232e
	ret pe			;232f
	jr nz,l2332h		;2330
l2332h:
	jp l01e4h		;2332
	ret nc			;2335
	ret nz			;2336
	ld (hl),d		;2337
	jp m,0ffb0h		;2338
	and 000h		;233b
	call po,0d001h		;233d
	ret nz			;2340
	ld (hl),d		;2341
	jp m,0b951h		;2342
	ret pe			;2345
	inc bc			;2346
	call po,0a801h		;2347
	ld bc,l0375h		;234a
	ld c,c			;234d
	ld (hl),l		;234e
	rst 30h			;234f
	ld e,c			;2350
	jp 000e4h		;2351
	call po,0d001h		;2354
	ret z			;2357
	ld (hl),e		;2358
	jp m,000e4h		;2359
	jp 0e450h		;235c
	ld bc,0c0d0h		;235f
	ld (hl),d		;2362
	jp m,084b0h		;2363
	and 000h		;2366
	call po,0d001h		;2368
	ret nz			;236b
	ld (hl),d		;236c
	jp m,0e658h		;236d
	nop			;2370
	jp 0fcfah		;2371
	ld e,056h		;2374
	inc sp			;2376
	ret nz			;2377
	adc a,e			;2378
	ret p			;2379
	adc a,e			;237a
	ret m			;237b
	adc a,(hl)		;237c
	ret c			;237d
	cp b			;237e
	nop			;237f
	ld b,b			;2380
	adc a,(hl)		;2381
	ret nz			;2382
	cp c			;2383
	nop			;2384
	add a,b			;2385
	di			;2386
	and a			;2387
	rra			;2388
	ld e,e			;2389
	cp l			;238a
	nop			;238b
	ld b,b			;238c
	ld (hl),h		;238d
	inc bc			;238e
	cp l			;238f
	nop			;2390
	ret p			;2391
	ld c,e			;2392
	add a,e			;2393
	ei			;2394
	dec b			;2395
	ld (hl),e		;2396
	ld d,053h		;2397
	ret pe			;2399
	ld a,001h		;239a
	ld e,e			;239c
	inc bc			;239d
	in a,(02eh)		;239e
	rst 38h			;23a0
	and a			;23a1
	push af			;23a2
	inc bc			;23a3
	ld (bc),a		;23a4
	inc b			;23a5
	jr z,l23ach		;23a6
	ld e,c			;23a8
	inc b			;23a9
	ld a,h			;23aa
	inc b			;23ab
l23ach:
	ret z			;23ac
	inc b			;23ad
	ret pe			;23ae
	add hl,hl		;23af
	ld bc,031b0h		;23b0
	ret pe			;23b3
	and a			;23b4
	rst 38h			;23b5
	ret pe			;23b6
	ld a,d			;23b7
	rst 38h			;23b8
	ld (hl),h		;23b9
	inc b			;23ba
	ret pe			;23bb
	sub h			;23bc
	rst 38h			;23bd
	jp l01b1h		;23be
	ret pe			;23c1
	ld c,c			;23c2
	ld bc,02eb0h		;23c3
	ret pe			;23c6
	sub h			;23c7
	rst 38h			;23c8
	ret pe			;23c9
	ld h,a			;23ca
	rst 38h			;23cb
	ld (hl),h		;23cc
	inc b			;23cd
	ret pe			;23ce
	add a,c			;23cf
	rst 38h			;23d0
	jp 0feb1h		;23d1
	ret pe			;23d4
	ld (hl),001h		;23d5
	or b			;23d7
	ld (081e8h),a		;23d8
	rst 38h			;23db
	ret pe			;23dc
	ld d,h			;23dd
	rst 38h			;23de
	ld (hl),h		;23df
	inc b			;23e0
	ret pe			;23e1
	ld l,(hl)		;23e2
	rst 38h			;23e3
	jp 000b5h		;23e4
	ret pe			;23e7
	ld d,(hl)		;23e8
	ld bc,0ed0ah		;23e9
	ld (hl),h		;23ec
	ld d,08ah		;23ed
	push bc			;23ef
	cp 0c8h			;23f0
	xor b			;23f2
	rrca			;23f3
	ld (hl),l		;23f4
	ld c,0b0h		;23f5
	ld l,0e8h		;23f7
	ld h,d			;23f9
	rst 38h			;23fa
	ret pe			;23fb
	dec (hl)		;23fc
	rst 38h			;23fd
	ld (hl),h		;23fe
	inc b			;23ff
	ret pe			;2400
	ld c,a			;2401
	rst 38h			;2402
	jp 0cdfeh		;2403
	ld (hl),l		;2406
	rst 18h			;2407
	or b			;2408
	inc sp			;2409
	ret pe			;240a
	ld d,b			;240b
	rst 38h			;240c
	cp c			;240d
	nop			;240e
	nop			;240f
	or h			;2410
	nop			;2411
	ret pe			;2412
	ld c,h			;2413
	ld bc,02eb0h		;2414
	ret pe			;2417
	ld b,e			;2418
	rst 38h			;2419
	ret pe			;241a
	ld d,0ffh		;241b
	ld (hl),h		;241d
	inc b			;241e
	ret pe			;241f
	jr nc,$+1		;2420
	jp 000b9h		;2422
	nop			;2425
	or h			;2426
	rst 38h			;2427
	ret pe			;2428
	ld (hl),001h		;2429
	or b			;242b
	inc (hl)		;242c
	ret pe			;242d
	dec l			;242e
	rst 38h			;242f
	ret pe			;2430
	nop			;2431
	rst 38h			;2432
	ld (hl),h		;2433
	inc b			;2434
	ret pe			;2435
	ld a,(de)		;2436
	rst 38h			;2437
	jp 055b1h		;2438
	ret pe			;243b
	ld d,h			;243c
	ld bc,02eb0h		;243d
	ret pe			;2440
	ld a,(de)		;2441
	rst 38h			;2442
	ret pe			;2443
	defb 0edh ;next byte illegal after ed	;2444
	cp 074h			;2445
	inc b			;2447
	ret pe			;2448
	rlca			;2449
	rst 38h			;244a
	jp 0ffb1h		;244b
	ret pe			;244e
	ld b,c			;244f
	ld bc,02eb0h		;2450
	ret pe			;2453
	rlca			;2454
	rst 38h			;2455
	ret pe			;2456
	jp c,074feh		;2457
	inc b			;245a
	ret pe			;245b
	call p,0c3feh		;245c
	or c			;245f
	xor d			;2460
	ret pe			;2461
	ld l,001h		;2462
	or b			;2464
	ld l,0e8h		;2465
	call p,0e8feh		;2467
	rst 0			;246a
	cp 074h			;246b
	inc b			;246d
	ret pe			;246e
	pop hl			;246f
	cp 0c3h			;2470
	or c			;2472
	nop			;2473
	ret pe			;2474
	dec de			;2475
	ld bc,035b0h		;2476
	ret pe			;2479
	pop hl			;247a
	cp 0e8h			;247b
	or h			;247d
	cp 074h			;247e
	inc b			;2480
	ret pe			;2481
	adc a,0feh		;2482
	jp 000b1h		;2484
	ret pe			;2487
	dec h			;2488
	ld bc,02eb0h		;2489
	ret pe			;248c
	adc a,0feh		;248d
	ret pe			;248f
	and c			;2490
	cp 074h			;2491
	inc b			;2493
	ret pe			;2494
	cp e			;2495
	cp 0c3h			;2496
	or c			;2498
	rst 38h			;2499
	ret pe			;249a
	ld (de),a		;249b
	ld bc,l20b0h		;249c
	ret pe			;249f
	cp e			;24a0
	cp 0e8h			;24a1
	adc a,(hl)		;24a3
	cp 074h			;24a4
	inc b			;24a6
	ret pe			;24a7
	xor b			;24a8
	cp 0c3h			;24a9
	ret pe			;24ab
	ld d,l			;24ac
	cp 020h			;24ad
	jr nz,l24f6h		;24af
	ld d,d			;24b1
	ld d,d			;24b2
	jr nz,$+85		;24b3
	ld d,h			;24b5
	ld b,c			;24b6
	ld d,h			;24b7
	ld d,l			;24b8
	ld d,e			;24b9
	dec a			;24ba
	nop			;24bb
	adc a,e			;24bc
	defb 0ddh,08ah,0c7h ;illegal sequence	;24bd
	ret pe			;24c0
	inc (hl)		;24c1
	cp 08ch			;24c2
	ret c			;24c4
	dec h			;24c5
	nop			;24c6
	ret p			;24c7
	dec b			;24c8
	nop			;24c9
	djnz $-126		;24ca
	rst 20h			;24cc
	ret p			;24cd
	ld a,(072e7h)		;24ce
	inc bc			;24d1
	cp b			;24d2
	ld d,b			;24d3
	nop			;24d4
	adc a,(hl)		;24d5
	ret c			;24d6
	jp (hl)			;24d7
	call nc,0e8feh		;24d8
	ld h,0feh		;24db
	ld a,(bc)		;24dd
	dec c			;24de
	ld d,b			;24df
	ld b,c			;24e0
	ld d,e			;24e1
	ld d,e			;24e2
	dec a			;24e3
	nop			;24e4
	add a,a			;24e5
	ex de,hl		;24e6
	cp 0c3h			;24e7
	adc a,d			;24e9
	jp 0eb87h		;24ea
	ret pe			;24ed
	jp m,0e8fdh		;24ee
l24f1h:
	djnz l24f1h		;24f1
	jr nz,$+85		;24f3
	ld b,l			;24f5
l24f6h:
	ld b,a			;24f6
	dec a			;24f7
	nop			;24f8
	adc a,h			;24f9
	ret c			;24fa
	adc a,d			;24fb
	call nz,0eae8h		;24fc
	defb 0fdh,08ch ;adc a,iyh	;24ff
	ret c			;2501
	ret pe			;2502
	push hl			;2503
	defb 0fdh,0e8h,0fbh ;illegal sequence	;2504
	defb 0fdh,020h,020h ;illegal sequence	;2507
	jr nz,l250ch		;250a
l250ch:
	jp l08b5h		;250c
	cp e			;250f
	nop			;2510
	nop			;2511
	adc a,b			;2512
	rrca			;2513
	ret nc			;2514
	pop bc			;2515
	ld b,e			;2516
	or 0c3h			;2517
	rrca			;2519
	ld (hl),l		;251a
	ld (bc),a		;251b
	ret nc			;251c
	pop bc			;251d
	dec bc			;251e
	in a,(075h)		;251f
	ret p			;2521
	adc a,d			;2522
	rlca			;2523
	ld a,(074c1h)		;2524
	inc bc			;2527
	ret pe			;2528
	or b			;2529
	nop			;252a
	ret nc			;252b
	pop bc			;252c
	ld b,e			;252d
	or 0c3h			;252e
	rrca			;2530
	ld (hl),l		;2531
	ld (bc),a		;2532
	ret nc			;2533
	pop bc			;2534
	dec bc			;2535
	in a,(075h)		;2536
	jp (hl)			;2538
	ret nc			;2539
	pop bc			;253a
	cp 0cdh			;253b
	ld (hl),l		;253d
	out (0c3h),a		;253e
	cp e			;2540
	nop			;2541
	nop			;2542
	adc a,d			;2543
	jp 0c732h		;2544
	ld (088c5h),a		;2547
	rlca			;254a
	ld b,e			;254b
	ld (hl),l		;254c
	push af			;254d
	adc a,d			;254e
	defb 0cbh,032h ;sli d	;254f
	rst 8			;2551
	ld (08acdh),a		;2552
	rlca			;2555
	ld a,(074c1h)		;2556
	inc bc			;2559
	ret pe			;255a
	ld a,(hl)		;255b
	nop			;255c
	ld b,e			;255d
	ld (hl),l		;255e
	xor 0c3h		;255f
	cp e			;2561
	nop			;2562
	nop			;2563
	adc a,b			;2564
	daa			;2565
	ld b,e			;2566
	add a,l			;2567
	exx			;2568
	ld (hl),l		;2569
	ld (bc),a		;256a
	or 0d4h			;256b
	dec bc			;256d
	in a,(075h)		;256e
	di			;2570
	adc a,d			;2571
	rlca			;2572
	ld a,(074c4h)		;2573
	rlca			;2576
	ld d,c			;2577
	adc a,d			;2578
	call z,05ee8h		;2579
	nop			;257c
	ld e,c			;257d
	ld b,e			;257e
	add a,l			;257f
	exx			;2580
	ld (hl),l		;2581
	ld (bc),a		;2582
	or 0d4h			;2583
	dec bc			;2585
	in a,(075h)		;2586
	ret pe			;2588
	ld sp,hl		;2589
	pop de			;258a
	pop de			;258b
	or 0c5h			;258c
	add a,b			;258e
	ld (hl),h		;258f
	ret nc			;2590
	jp 000bbh		;2591
	nop			;2594
	adc a,b			;2595
	rrca			;2596
	ld b,e			;2597
	ld (hl),l		;2598
	ei			;2599
	cp b			;259a
	ld bc,0f600h		;259b
	ret p			;259e
	ld b,e			;259f
	ld (hl),l		;25a0
	ei			;25a1
	adc a,d			;25a2
	rlca			;25a3
	ld a,(074c1h)		;25a4
	inc bc			;25a7
	ret pe			;25a8
	jr nc,l25abh		;25a9
l25abh:
	ld b,e			;25ab
	ld (hl),l		;25ac
	call p,0bbc3h		;25ad
	nop			;25b0
	nop			;25b1
	adc a,b			;25b2
	rrca			;25b3
	ld b,e			;25b4
	ld (hl),l		;25b5
	ei			;25b6
	cp e			;25b7
	ld bc,0f600h		;25b8
	rla			;25bb
	cp (hl)			;25bc
	nop			;25bd
	nop			;25be
	dec sp			;25bf
	di			;25c0
	ld (hl),h		;25c1
	dec c			;25c2
	adc a,d			;25c3
	inc b			;25c4
	ld a,(074c1h)		;25c5
	rlca			;25c8
	add a,a			;25c9
	di			;25ca
	ret pe			;25cb
	dec c			;25cc
	nop			;25cd
	add a,a			;25ce
	di			;25cf
	ld b,(hl)		;25d0
	ld (hl),l		;25d1
	call pe,sub_17f6h	;25d2
	ret m			;25d5
	pop de			;25d6
	ex (sp),hl		;25d7
	ld (hl),l		;25d8
	ret po			;25d9
	jp 08750h		;25da
	jp pe,0ce80h		;25dd
	ld bc,0ea87h		;25e0
	ret pe			;25e3
	dec e			;25e4
	defb 0fdh,00dh,00ah ;illegal sequence	;25e5
	inc a			;25e8
	jr nz,l25ebh		;25e9
l25ebh:
	adc a,e			;25eb
	out (0d1h),a		;25ec
	jp pe,0ead1h		;25ee
	pop de			;25f1
	jp pe,0ead1h		;25f2
	adc a,h			;25f5
	ret c			;25f6
	inc bc			;25f7
	ret nc			;25f8
	adc a,d			;25f9
	add a,0e8h		;25fa
	call pe,08afch		;25fc
	jp nz,0e7e8h		;25ff
	call m,0c38ah		;2602
	ret pe			;2605
	rst 28h			;2606
	call m,03db0h		;2607
	ret pe			;260a
	ld d,b			;260b
	defb 0fdh,058h,050h ;illegal sequence	;260c
	ret pe			;260f
	ret c			;2610
	call m,0eee8h		;2611
	call m,05320h		;2614
	ld c,b			;2617
	ld c,a			;2618
	ld d,l			;2619
	ld c,h			;261a
	ld b,h			;261b
	dec a			;261c
	nop			;261d
	adc a,d			;261e
	pop bc			;261f
	ret pe			;2620
	rst 0			;2621
	call m,0dde8h		;2622
	call m,05820h		;2625
	ld c,a			;2628
	ld d,d			;2629
	dec a			;262a
	nop			;262b
	ld e,b			;262c
	ld (0e8c1h),a		;262d
	add hl,sp		;2630
	nop			;2631
	ret pe			;2632
	ld (hl),000h		;2633
	ret pe			;2635
	inc sp			;2636
	nop			;2637
	ret pe			;2638
	jr nc,l263bh		;2639
l263bh:
	ret pe			;263b
	dec l			;263c
	nop			;263d
	ret pe			;263e
	ld hl,(0e800h)		;263f
	daa			;2642
	nop			;2643
	ret pe			;2644
	inc h			;2645
	nop			;2646
	ret pe			;2647
	cp c			;2648
	call m,03e20h		;2649
	nop			;264c
	ret pe			;264d
	ex (sp),hl		;264e
	call m,l1574h		;264f
	ret pe			;2652
	defb 0fdh,0fch,0e8h ;illegal sequence	;2653
	in a,(0fch)		;2656
	ld (hl),h		;2658
	ei			;2659
	ret pe			;265a
	push af			;265b
	call m,sub_033ch	;265c
	ld (hl),l		;265f
	ld b,083h		;2660
	call nz,0e906h		;2662
	nop			;2665
	ei			;2666
	ret pe			;2667
	or l			;2668
	call m,0d0c3h		;2669
	ret nz			;266c
	ld d,b			;266d
	or b			;266e
	jr nc,$+22		;266f
	nop			;2671
	ret pe			;2672
	ret pe			;2673
	call m,0c358h		;2674
	ld d,b			;2677
	ld d,e			;2678
	ld d,c			;2679
	call po,0d001h		;267a
	ret nz			;267d
	ld (hl),d		;267e
	jp m,l05b0h		;267f
	and 000h		;2682
	call po,0d001h		;2684
	ret nz			;2687
	ld (hl),d		;2688
	jp m,l01b0h		;2689
	and 000h		;268c
	call po,0d001h		;268e
	ret nz			;2691
	ld (hl),d		;2692
	jp m,084bbh		;2693
	nop			;2696
	adc a,d			;2697
	rlca			;2698
	ld b,e			;2699
	and 000h		;269a
	call po,0d001h		;269c
	ret nz			;269f
	ld (hl),d		;26a0
	jp m,l078ah		;26a1
	ld b,e			;26a4
	and 000h		;26a5
	adc a,d			;26a7
	ret z			;26a8
	or l			;26a9
	nop			;26aa
	ex (sp),hl		;26ab
	dec c			;26ac
	call po,0d001h		;26ad
	ret nz			;26b0
	ld (hl),d		;26b1
	jp m,l078ah		;26b2
	ld b,e			;26b5
	and 000h		;26b6
	jp po,059f3h		;26b8
	ld e,e			;26bb
	ld e,b			;26bc
	jp 05350h		;26bd
	ld d,c			;26c0
	call po,0d001h		;26c1
	ret z			;26c4
	ld (hl),e		;26c5
	jp m,000e4h		;26c6
	inc a			;26c9
	dec b			;26ca
	ld (hl),l		;26cb
	call p,l01e4h		;26cc
	ret nc			;26cf
	ret z			;26d0
	ld (hl),e		;26d1
	jp m,000e4h		;26d2
	inc a			;26d5
	ld bc,0f075h		;26d6
	call po,0d001h		;26d9
	ret z			;26dc
	ld (hl),e		;26dd
	jp m,000e4h		;26de
	cp e			;26e1
	add a,h			;26e2
	nop			;26e3
	adc a,b			;26e4
	rlca			;26e5
	ld b,e			;26e6
	call po,0d001h		;26e7
	ret z			;26ea
	ld (hl),e		;26eb
	jp m,000e4h		;26ec
	adc a,b			;26ef
	rlca			;26f0
	ld b,e			;26f1
	adc a,d			;26f2
	ret z			;26f3
	or l			;26f4
	nop			;26f5
	ex (sp),hl		;26f6
	dec c			;26f7
	call po,0d001h		;26f8
	ret z			;26fb
	ld (hl),e		;26fc
	jp m,000e4h		;26fd
	adc a,b			;2700
	rlca			;2701
	ld b,e			;2702
	jp po,059f3h		;2703
	ld e,e			;2706
	ld e,b			;2707
	jp 0fc80h		;2708
	nop			;270b
	ld (hl),h		;270c
	dec bc			;270d
	add a,b			;270e
	call m,07401h		;270f
	ld h,080h		;2712
	call m,07402h		;2714
	ld hl,01ecfh		;2717
	ld d,b			;271a
	cp b			;271b
	ld b,b			;271c
	nop			;271d
	adc a,(hl)		;271e
	ret c			;271f
	ld e,b			;2720
	ld d,b			;2721
	jp m,l06c6h		;2722
	add a,h			;2725
	nop			;2726
	dec b			;2727
	add a,006h		;2728
	add a,l			;272a
	nop			;272b
	ld bc,086a2h		;272c
	nop			;272f
	ret pe			;2730
	ld b,h			;2731
	rst 38h			;2732
	ret pe			;2733
	adc a,b			;2734
	rst 38h			;2735
	ei			;2736
	ld e,b			;2737
	rra			;2738
	or h			;2739
	ret nc			;273a
	rst 8			;273b
	ld e,050h		;273c
	cp b			;273e
	ld b,b			;273f
	nop			;2740
	adc a,(hl)		;2741
	ret c			;2742
	ld e,b			;2743
	and c			;2744
	djnz l2747h		;2745
l2747h:
	rra			;2747
	rst 8			;2748
	adc a,h			;2749
	ret z			;274a
	or c			;274b
	ld b,0d3h		;274c
	ret pe			;274e
	rst 8			;274f
	ld e,050h		;2750
	cp b			;2752
	ld b,b			;2753
	nop			;2754
	adc a,(hl)		;2755
	ret c			;2756
	ld e,b			;2757
	jp m,l06c6h		;2758
	add a,h			;275b
	nop			;275c
	ld a,(de)		;275d
	add a,006h		;275e
	add a,l			;2760
	nop			;2761
	inc b			;2762
	and e			;2763
	add a,(hl)		;2764
	nop			;2765
	adc a,c			;2766
	ld d,088h		;2767
	nop			;2769
	ret pe			;276a
	ld a,(bc)		;276b
	rst 38h			;276c
	ret pe			;276d
	ld c,(hl)		;276e
	rst 38h			;276f
	and c			;2770
	add a,(hl)		;2771
	nop			;2772
	ei			;2773
	rra			;2774
	rst 8			;2775
	ld e,050h		;2776
	cp b			;2778
	ld b,b			;2779
	nop			;277a
	adc a,(hl)		;277b
	ret c			;277c
	ld e,b			;277d
	ld d,e			;277e
	ld d,c			;277f
	ld d,d			;2780
	ld d,(hl)		;2781
	ld d,a			;2782
	ei			;2783
	or 0c2h			;2784
	add a,b			;2786
	ld (hl),h		;2787
	inc b			;2788
	ld sp,hl		;2789
	jp (hl)			;278a
	and c			;278b
	nop			;278c
	add a,b			;278d
	call m,07501h		;278e
	rlca			;2791
	adc a,d			;2792
	ld h,041h		;2793
	nop			;2795
	jp (hl)			;2796
	sub b			;2797
	nop			;2798
	adc a,e			;2799
	ei			;279a
	adc a,d			;279b
	ret c			;279c
	adc a,d			;279d
	ret m			;279e
	adc a,b			;279f
	ld h,041h		;27a0
	nop			;27a2
	ld a,(bc)		;27a3
	call po,07774h		;27a4
	add a,b			;27a7
	call m,07205h		;27a8
	inc l			;27ab
	or b			;27ac
	add a,b			;27ad
	ld (hl),l		;27ae
	ld (hl),b		;27af
	cp (hl)			;27b0
	adc a,b			;27b1
	nop			;27b2
	rst 0			;27b3
	ld b,h			;27b4
	call m,0641dh		;27b5
	add a,044h		;27b8
	cp 045h			;27ba
	adc a,b			;27bc
	ld d,h			;27bd
	rst 38h			;27be
	cp c			;27bf
	ld h,b			;27c0
	nop			;27c1
	ld h,08ah		;27c2
	dec b			;27c4
	adc a,b			;27c5
	inc b			;27c6
	ld b,a			;27c7
	ld b,(hl)		;27c8
	jp po,0faf7h		;27c9
	ret pe			;27cc
	xor b			;27cd
	cp 0e8h			;27ce
	call pe,0fbfeh		;27d0
	and b			;27d3
	add a,(hl)		;27d4
	nop			;27d5
	ex de,hl		;27d6
	ld c,b			;27d7
	adc a,b			;27d8
	ld d,086h		;27d9
	nop			;27db
	adc a,b			;27dc
	ld l,087h		;27dd
	nop			;27df
	add a,006h		;27e0
	adc a,b			;27e2
	nop			;27e3
	nop			;27e4
	adc a,b			;27e5
	ld c,089h		;27e6
	nop			;27e8
	add a,006h		;27e9
	adc a,d			;27eb
	nop			;27ec
	nop			;27ed
	add a,b			;27ee
	and 001h		;27ef
	add a,b			;27f1
	adc a,020h		;27f2
	adc a,b			;27f4
	ld (hl),08bh		;27f5
	nop			;27f7
	cp c			;27f8
	nop			;27f9
	ld (bc),a		;27fa
	ld d,e			;27fb
	call m,03e80h		;27fc
	ld b,c			;27ff
	nop			;2800
	inc bc			;2801
	ld (hl),h		;2802
	rlca			;2803
	ld (hl),d		;2804
	ld a,(bc)		;2805
	ret pe			;2806
	ld a,l			;2807
	nop			;2808
	ex de,hl		;2809
	ex af,af'		;280a
	ret pe			;280b
	ld d,b			;280c
	nop			;280d
	ex de,hl		;280e
	inc bc			;280f
	ret pe			;2810
	inc h			;2811
	nop			;2812
	ld e,e			;2813
	ld (hl),d		;2814
	ld a,(bc)		;2815
	cp 006h			;2816
	adc a,c			;2818
	nop			;2819
	cp 0cbh			;281a
	ld (hl),l		;281c
	jp c,0c032h		;281d
	and d			;2820
	ld b,c			;2821
	nop			;2822
	adc a,d			;2823
	ret po			;2824
	ld hl,(08afbh)		;2825
	rst 0			;2828
	ld a,(bc)		;2829
	call po,00174h		;282a
	ld sp,hl		;282d
	ld e,a			;282e
	ld e,(hl)		;282f
	ld e,d			;2830
	ld e,c			;2831
	ld e,e			;2832
	rra			;2833
	jp z,00002h		;2834
	jp m,l06c6h		;2837
	add a,h			;283a
	nop			;283b
	rla			;283c
	add a,006h		;283d
	add a,l			;283f
	nop			;2840
	ld b,0e8h		;2841
	ld (0e8feh),a		;2843
	halt			;2846
	cp 0a0h			;2847
	add a,l			;2849
	nop			;284a
	ld a,(bc)		;284b
	ret nz			;284c
	ld (hl),l		;284d
	ld d,b			;284e
	call po,0d001h		;284f
	ret z			;2852
	ld (hl),e		;2853
	jp m,000e4h		;2854
	xor d			;2857
	jp po,0fbf5h		;2858
	ld (0c3c0h),a		;285b
	jp m,l06c6h		;285e
	add a,h			;2861
	nop			;2862
	jr $-56			;2863
	ld b,085h		;2865
	nop			;2867
	ld b,0e8h		;2868
	dec bc			;286a
	cp 0e4h			;286b
	ld bc,0c0d0h		;286d
	ld (hl),d		;2870
	jp m,08a26h		;2871
	dec b			;2874
	ld b,a			;2875
	and 000h		;2876
	jp po,0e8f2h		;2878
	ld b,c			;287b
	cp 0fbh			;287c
	and b			;287e
	add a,l			;287f
	nop			;2880
	ld a,(bc)		;2881
	ret nz			;2882
	ld (hl),l		;2883
	ld a,(de)		;2884
	jp 0c6fah		;2885
	ld b,084h		;2888
	nop			;288a
	dec h			;288b
	add a,006h		;288c
	add a,l			;288e
	nop			;288f
	ld b,0e8h		;2890
	ex (sp),hl		;2892
	defb 0fdh,0e8h,027h ;illegal sequence	;2893
	cp 0a0h			;2896
	add a,l			;2898
	nop			;2899
	ld a,(bc)		;289a
	ret nz			;289b
	ld (hl),l		;289c
	ld bc,0fbc3h		;289d
	adc a,d			;28a0
	ld h,086h		;28a1
	nop			;28a3
	or 0c4h			;28a4
	add a,b			;28a6
	or b			;28a7
	add a,b			;28a8
	ld (hl),l		;28a9
	ld e,0f6h		;28aa
	call nz,0b060h		;28ac
	inc bc			;28af
l28b0h:
	ld (hl),l		;28b0
	rla			;28b1
	or 0c4h			;28b2
	djnz $-78		;28b4
	inc b			;28b6
	ld (hl),l		;28b7
	djnz l28b0h		;28b8
	call nz,0b008h		;28ba
	djnz $+119		;28bd
	add hl,bc		;28bf
	or 0c4h			;28c0
	inc b			;28c2
	or b			;28c3
	ex af,af'		;28c4
	ld (hl),l		;28c5
	ld (bc),a		;28c6
	adc a,d			;28c7
	call nz,0c3f9h		;28c8
	rst 8			;28cb
	cp b			;28cc
	ld bc,03302h		;28cd
	jp nc,0c28eh		;28d0
	cp e			;28d3
	nop			;28d4
	ld a,h			;28d5
	ld b,053h		;28d6
	cp c			;28d8
	ld bc,0cd00h		;28d9
	inc de			;28dc
l28ddh:
	ld (hl),d		;28dd
	ld bc,0e8cbh		;28de
	jr nz,l28ddh		;28e1
	dec c			;28e3
	ld a,(bc)		;28e4
	ld h,h			;28e5
	ld l,c			;28e6
	ld (hl),e		;28e7
	ld l,e			;28e8
	jr nz,l2950h		;28e9
	ld (hl),d		;28eb
	ld (hl),d		;28ec
	ld l,a			;28ed
	ld (hl),d		;28ee
	jr nz,l2963h		;28ef
	ld h,l			;28f1
	ld h,c			;28f2
	ld h,h			;28f3
	ld l,c			;28f4
	ld l,(hl)		;28f5
	ld h,a			;28f6
	jr nz,l295bh		;28f7
	ld l,a			;28f9
	ld l,a			;28fa
	ld (hl),h		;28fb
	jr nz,$+117		;28fc
	ld h,l			;28fe
	ld h,e			;28ff
	ld (hl),h		;2900
	ld l,a			;2901
	ld (hl),d		;2902
	dec c			;2903
	ld a,(bc)		;2904
	nop			;2905
	ex de,hl		;2906
	cp 01eh			;2907
	ld d,b			;2909
	cp b			;290a
	ld b,b			;290b
	nop			;290c
	adc a,(hl)		;290d
	ret c			;290e
	ld e,b			;290f
	ld a,(bc)		;2910
	call po,00674h		;2911
	cp 0cch			;2914
	ld (hl),h		;2916
	ld e,01fh		;2917
	rst 8			;2919
	add a,006h		;291a
	add a,h			;291c
	nop			;291d
	inc hl			;291e
	add a,006h		;291f
	add a,l			;2921
	nop			;2922
	inc b			;2923
	ret pe			;2924
	ld d,b			;2925
	defb 0fdh,0e8h,094h ;illegal sequence	;2926
	defb 0fdh,08bh,00eh ;illegal sequence	;2929
	add a,(hl)		;292c
	nop			;292d
	adc a,e			;292e
	ld d,088h		;292f
	nop			;2931
	ld (l1fc0h),a		;2932
	rst 8			;2935
	add a,006h		;2936
	add a,h			;2938
	nop			;2939
	inc h			;293a
	add a,006h		;293b
	add a,l			;293d
	nop			;293e
	inc b			;293f
	adc a,c			;2940
	ld c,086h		;2941
	nop			;2943
	adc a,c			;2944
	ld d,088h		;2945
	nop			;2947
	ret pe			;2948
	inc l			;2949
	defb 0fdh,01fh,0cfh ;illegal sequence	;294a
	ld e,050h		;294d
	cp b			;294f
l2950h:
	ld b,b			;2950
	nop			;2951
	adc a,(hl)		;2952
	ret c			;2953
	ld e,b			;2954
	jp m,l06c6h		;2955
	add a,h			;2958
	nop			;2959
	add hl,de		;295a
l295bh:
	add a,006h		;295b
	add a,l			;295d
	nop			;295e
	ex af,af'		;295f
	and e			;2960
	add a,(hl)		;2961
	nop			;2962
l2963h:
	adc a,c			;2963
	ld e,088h		;2964
	nop			;2966
	adc a,c			;2967
	ld c,08ah		;2968
	nop			;296a
	adc a,c			;296b
	ld d,08ch		;296c
	nop			;296e
	add a,b			;296f
	call m,07403h		;2970
	ld l,080h		;2973
	call m,07404h		;2975
	ld h,080h		;2978
	call m,07405h		;297a
	ld hl,0fc80h		;297d
	ex af,af'		;2980
	ld (hl),h		;2981
	rra			;2982
	add a,b			;2983
	call m,0740bh		;2984
	rla			;2987
	add a,b			;2988
	call m,0740ch		;2989
	ld (de),a		;298c
	add a,b			;298d
	call m,0740dh		;298e
	dec c			;2991
	add a,b			;2992
	call m,0740fh		;2993
	inc hl			;2996
	add a,b			;2997
	call m,07418h		;2998
	ld b,0e8h		;299b
	ret c			;299d
	call m,sub_1ffbh	;299e
	rst 8			;29a1
	ret pe			;29a2
	jp nc,0e8fch		;29a3
	ld d,0fdh		;29a6
	and c			;29a8
	add a,(hl)		;29a9
	nop			;29aa
	adc a,e			;29ab
	ld e,088h		;29ac
	nop			;29ae
	adc a,e			;29af
	ld c,08ah		;29b0
	nop			;29b2
	adc a,e			;29b3
	ld d,08ch		;29b4
	nop			;29b6
	ei			;29b7
	rra			;29b8
	rst 8			;29b9
	cp b			;29ba
	ld (bc),a		;29bb
	ld d,b			;29bc
	or a			;29bd
	nop			;29be
	ei			;29bf
	rra			;29c0
	rst 8			;29c1
	ld e,050h		;29c2
	cp b			;29c4
	ld b,b			;29c5
	nop			;29c6
	adc a,(hl)		;29c7
	ret c			;29c8
	ld e,b			;29c9
	ld d,b			;29ca
	ld d,e			;29cb
	call po,0d001h		;29cc
	ret nz			;29cf
	ld (hl),d		;29d0
	jp m,0ffb0h		;29d1
	and 000h		;29d4
	call po,0d001h		;29d6
	ret z			;29d9
	ld (hl),e		;29da
	jp m,000e4h		;29db
	call po,0d001h		;29de
	ret z			;29e1
	ld (hl),e		;29e2
	jp m,000e4h		;29e3
	inc a			;29e6
	rst 38h			;29e7
	ld (hl),h		;29e8
	scf			;29e9
	adc a,d			;29ea
	ld h,019h		;29eb
	nop			;29ed
	and d			;29ee
	add hl,de		;29ef
	nop			;29f0
	dec a			;29f1
	sub b			;29f2
	sub b			;29f3
	ld (hl),l		;29f4
	rlca			;29f5
	call 0c61bh		;29f6
	ld b,019h		;29f9
	nop			;29fb
	rst 38h			;29fc
	add a,b			;29fd
	ld a,03eh		;29fe
l2a00h:
	nop			;2a00
	jr nz,$+117		;2a01
	add hl,de		;2a03
	adc a,e			;2a04
	ld e,01ah		;2a05
	nop			;2a07
	add a,c			;2a08
	ex (sp),hl		;2a09
	rra			;2a0a
	nop			;2a0b
	adc a,b			;2a0c
	add a,a			;2a0d
	ld e,000h		;2a0e
	ld b,e			;2a10
	add a,c			;2a11
	ex (sp),hl		;2a12
	rra			;2a13
	nop			;2a14
	adc a,c			;2a15
	ld e,01ah		;2a16
	nop			;2a18
	cp 006h			;2a19
	ld a,000h		;2a1b
	ld e,e			;2a1d
	ld e,b			;2a1e
	rra			;2a1f
	rst 8			;2a20
	jp m,0c483h		;2a21
	ld b,05eh		;2a24
	rra			;2a26
	inc sp			;2a27
	ret nz			;2a28
	adc a,(hl)		;2a29
l2a2ah:
	ret nc			;2a2a
	cp h			;2a2b
	rst 38h			;2a2c
	inc b			;2a2d
	ret pe			;2a2e
	jp nc,00df8h		;2a2f
	ld a,(bc)		;2a32
	ld h,d			;2a33
	ld (hl),d		;2a34
	ld h,l			;2a35
	ld h,c			;2a36
	ld l,e			;2a37
	jr nz,l2a7dh		;2a38
	ld d,e			;2a3a
	ld a,(05049h)		;2a3b
	jr nz,l2a7dh		;2a3e
	jr nz,l2a42h		;2a40
l2a42h:
	ret pe			;2a42
	add a,d			;2a43
	ret m			;2a44
	jp (hl)			;2a45
	rra			;2a46
	rst 30h			;2a47
	ld e,050h		;2a48
	cp b			;2a4a
	ld b,b			;2a4b
	nop			;2a4c
	adc a,(hl)		;2a4d
	ret c			;2a4e
	ld e,b			;2a4f
	ld a,(bc)		;2a50
	call po,00e74h		;2a51
	add a,b			;2a54
	call m,07401h		;2a55
	rrca			;2a58
	add a,b			;2a59
	call m,07502h		;2a5a
	ld (bc),a		;2a5d
	or b			;2a5e
	ld b,b			;2a5f
	rra			;2a60
	rst 8			;2a61
	rst 38h			;2a62
	ld d,042h		;2a63
	nop			;2a65
	rra			;2a66
	rst 8			;2a67
	rst 38h			;2a68
	ld d,044h		;2a69
	nop			;2a6b
	rra			;2a6c
	ei			;2a6d
	jp z,00002h		;2a6e
	ret pe			;2a71
	xor b			;2a72
	nop			;2a73
	ld a,(04806h)		;2a74
	nop			;2a77
	ld (hl),l		;2a78
	add hl,de		;2a79
	ret pe			;2a7a
	add a,e			;2a7b
	nop			;2a7c
l2a7dh:
	ld (hl),e		;2a7d
	inc d			;2a7e
	and e			;2a7f
	ld b,(hl)		;2a80
	nop			;2a81
	rst 0			;2a82
	ld b,042h		;2a83
	nop			;2a85
	push hl			;2a86
	ld a,(bc)		;2a87
	rst 0			;2a88
	ld b,044h		;2a89
	nop			;2a8b
	ld b,d			;2a8c
	dec bc			;2a8d
	and b			;2a8e
	ld c,b			;2a8f
	nop			;2a90
	or h			;2a91
	ld bc,0a1c3h		;2a92
	ld b,(hl)		;2a95
	nop			;2a96
	rst 0			;2a97
	ld b,042h		;2a98
	nop			;2a9a
	jp nz,0c70ah		;2a9b
	ld b,044h		;2a9e
	nop			;2aa0
	rlca			;2aa1
	dec bc			;2aa2
	jp 048a0h		;2aa3
	nop			;2aa6
	or h			;2aa7
	ld bc,l06c6h+1		;2aa8
	ld b,d			;2aab
	nop			;2aac
	push hl			;2aad
	ld a,(bc)		;2aae
	rst 0			;2aaf
	ld b,044h		;2ab0
	nop			;2ab2
	ld b,d			;2ab3
	dec bc			;2ab4
	jp 03ea0h		;2ab5
	nop			;2ab8
	ld a,(bc)		;2ab9
	ret nz			;2aba
	ld (hl),h		;2abb
	inc h			;2abc
	ret pe			;2abd
	ld e,h			;2abe
	nop			;2abf
	ld a,(04806h)		;2ac0
	nop			;2ac3
	ld (hl),l		;2ac4
	inc e			;2ac5
	ret pe			;2ac6
	scf			;2ac7
	nop			;2ac8
	ld (hl),e		;2ac9
	rla			;2aca
	and e			;2acb
	ld b,(hl)		;2acc
	nop			;2acd
	rst 0			;2ace
	ld b,042h		;2acf
	nop			;2ad1
	push af			;2ad2
	ld a,(bc)		;2ad3
	rst 0			;2ad4
	ld b,044h		;2ad5
	nop			;2ad7
	ld c,c			;2ad8
	dec bc			;2ad9
	and b			;2ada
	ld c,b			;2adb
	nop			;2adc
	or h			;2add
	ld bc,0e00ah		;2ade
	jp 046a3h		;2ae1
	nop			;2ae4
	rst 0			;2ae5
	ld b,042h		;2ae6
	nop			;2ae8
	push hl			;2ae9
	ld a,(bc)		;2aea
	rst 0			;2aeb
	ld b,044h		;2aec
	nop			;2aee
	ld b,d			;2aef
	dec bc			;2af0
	inc sp			;2af1
	ret nz			;2af2
	ld b,b			;2af3
	and c			;2af4
	ld b,(hl)		;2af5
	nop			;2af6
	jp 048a0h		;2af7
	nop			;2afa
	or h			;2afb
	ld bc,0e00ah		;2afc
	jp 0e853h		;2aff
	ld d,h			;2b02
	nop			;2b03
	ld e,e			;2b04
	inc a			;2b05
	ld a,(072f5h)		;2b06
	rrca			;2b09
	inc a			;2b0a
	jr nc,l2b7fh		;2b0b
	dec bc			;2b0d
	ld (hl),l		;2b0e
	ld (bc),a		;2b0f
	or b			;2b10
	ld a,(l0a04h)		;2b11
	adc a,d			;2b14
	ret po			;2b15
	ld (0c3e4h),a		;2b16
	or h			;2b19
	ld bc,053c3h		;2b1a
	ret pe			;2b1d
	jr c,l2b20h		;2b1e
l2b20h:
	xor b			;2b20
	add a,b			;2b21
	ld (hl),h		;2b22
	jr nc,l2b49h		;2b23
	ld a,a			;2b25
	inc a			;2b26
	ld (de),a		;2b27
	sub b			;2b28
	sub b			;2b29
	ld (hl),e		;2b2a
	ld h,0bbh		;2b2b
	call 03c0bh		;2b2d
	djnz l2ba7h		;2b30
	djnz $-22		;2b32
	ld (0bb00h),hl		;2b34
	rst 18h			;2b37
	dec bc			;2b38
	inc l			;2b39
	ld hl,l1572h		;2b3a
	inc a			;2b3d
	ld (hl),c		;2b3e
	sub b			;2b3f
	sub b			;2b40
	ld (hl),e		;2b41
	rrca			;2b42
	ld (l03e4h),a		;2b43
	ret c			;2b46
	ld l,08ah		;2b47
l2b49h:
	rlca			;2b49
	inc a			;2b4a
	rst 38h			;2b4b
	ld (hl),h		;2b4c
	inc b			;2b4d
	add a,(hl)		;2b4e
	ret po			;2b4f
	ld e,e			;2b50
	jp 03fb0h		;2b51
	or h			;2b54
	ld bc,0c35bh		;2b55
	ei			;2b58
	and b			;2b59
	ld a,000h		;2b5a
	ld a,(bc)		;2b5c
	ret nz			;2b5d
	ld (hl),h		;2b5e
	ret m			;2b5f
	jp m,l1e8bh		;2b60
	inc e			;2b63
	nop			;2b64
	add a,c			;2b65
	ex (sp),hl		;2b66
	rra			;2b67
	nop			;2b68
	adc a,d			;2b69
	add a,a			;2b6a
	ld e,000h		;2b6b
	ld b,e			;2b6d
	add a,c			;2b6e
	ex (sp),hl		;2b6f
	rra			;2b70
	nop			;2b71
	adc a,c			;2b72
	ld e,01ch		;2b73
	nop			;2b75
	cp 00eh			;2b76
	ld a,000h		;2b78
	ei			;2b7a
	jp 05048h		;2b7b
	ld c,e			;2b7e
l2b7fh:
	ld c,l			;2b7f
	ld b,h			;2b80
	dec sp			;2b81
	inc a			;2b82
	dec a			;2b83
	ld a,03fh		;2b84
	ld b,b			;2b86
	ld b,c			;2b87
	ld b,d			;2b88
	ld b,e			;2b89
	ld c,c			;2b8a
	ld d,c			;2b8b
	nop			;2b8c
	ld b,a			;2b8d
	ld e,(hl)		;2b8e
	rst 38h			;2b8f
	ld h,b			;2b90
	ld h,c			;2b91
	ld h,d			;2b92
	ld h,h			;2b93
	rst 38h			;2b94
	ld h,(hl)		;2b95
	ld h,a			;2b96
	ld h,l			;2b97
	rst 38h			;2b98
	rst 38h			;2b99
	add a,d			;2b9a
	ld d,d			;2b9b
	ld d,e			;2b9c
	add a,c			;2b9d
	ld a,b			;2b9e
	ld a,c			;2b9f
	ld a,d			;2ba0
	ld a,e			;2ba1
	ld a,h			;2ba2
	ld a,l			;2ba3
	ld a,(hl)		;2ba4
	ld a,a			;2ba5
	add a,b			;2ba6
l2ba7h:
	rst 38h			;2ba7
	rst 38h			;2ba8
	rst 38h			;2ba9
	add a,e			;2baa
	rst 38h			;2bab
	rst 38h			;2bac
	ld e,a			;2bad
	ld e,030h		;2bae
	ld l,020h		;2bb0
	ld (de),a		;2bb2
	ld hl,l2322h		;2bb3
	rla			;2bb6
	inc h			;2bb7
	dec h			;2bb8
	ld h,032h		;2bb9
	ld sp,l1918h		;2bbb
	djnz l2bd3h		;2bbe
	rra			;2bc0
	inc d			;2bc1
	ld d,02fh		;2bc2
	ld de,0152dh		;2bc4
	inc l			;2bc7
	ld (hl),e		;2bc8
	rst 38h			;2bc9
	ld (hl),h		;2bca
	ld h,e			;2bcb
	rst 38h			;2bcc
	rst 38h			;2bcd
	ld (hl),l		;2bce
	halt			;2bcf
	ld (hl),a		;2bd0
	add a,h			;2bd1
	ld l,d			;2bd2
l2bd3h:
	rst 38h			;2bd3
	rst 38h			;2bd4
	rst 38h			;2bd5
	ld l,a			;2bd6
	rst 38h			;2bd7
	rst 38h			;2bd8
	rst 38h			;2bd9
	rst 38h			;2bda
	rst 38h			;2bdb
	ld (hl),b		;2bdc
	ld (hl),c		;2bdd
	ld l,b			;2bde
	ld l,e			;2bdf
	rst 38h			;2be0
	ld l,h			;2be1
	ld l,(hl)		;2be2
	rst 38h			;2be3
	ld l,c			;2be4
	rst 38h			;2be5
	ld l,l			;2be6
	rst 38h			;2be7
	rst 38h			;2be8
	rst 38h			;2be9
	rst 38h			;2bea
	rst 38h			;2beb
	ld d,e			;2bec
	ld c,b			;2bed
	ld d,b			;2bee
	ld c,e			;2bef
	ld c,l			;2bf0
	ld e,l			;2bf1
	ld d,h			;2bf2
	ld d,l			;2bf3
	ld d,(hl)		;2bf4
	ld d,a			;2bf5
	ld e,b			;2bf6
	ld e,c			;2bf7
	ld e,d			;2bf8
	ld e,e			;2bf9
	ld e,h			;2bfa
	ld c,c			;2bfb
	ld d,c			;2bfc
	nop			;2bfd
	ld c,a			;2bfe
	call m,0c033h		;2bff
	adc a,(hl)		;2c02
	ret c			;2c03
	adc a,(hl)		;2c04
	ret nz			;2c05
	adc a,h			;2c06
	ret z			;2c07
	cp e			;2c08
	nop			;2c09
	nop			;2c0a
	cp c			;2c0b
	nop			;2c0c
	ld bc,l1cbah		;2c0d
	add hl,bc		;2c10
	adc a,c			;2c11
	rla			;2c12
	ld b,e			;2c13
	ld b,e			;2c14
	adc a,c			;2c15
	rlca			;2c16
	ld b,e			;2c17
	ld b,e			;2c18
	jp po,0bbf6h		;2c19
	ld b,b			;2c1c
	nop			;2c1d
	rst 0			;2c1e
	rlca			;2c1f
	sbc a,(hl)		;2c20
	add hl,bc		;2c21
	adc a,c			;2c22
	ld b,a			;2c23
	ld (bc),a		;2c24
	cp e			;2c25
	ld e,b			;2c26
	nop			;2c27
	rst 0			;2c28
	rlca			;2c29
	sbc a,c			;2c2a
	ld a,(bc)		;2c2b
	adc a,c			;2c2c
	ld b,a			;2c2d
	ld (bc),a		;2c2e
	cp e			;2c2f
	ld e,h			;2c30
	nop			;2c31
	rst 0			;2c32
	rlca			;2c33
	ld e,d			;2c34
	rlca			;2c35
	adc a,c			;2c36
	ld b,a			;2c37
	ld (bc),a		;2c38
	cp e			;2c39
	ld b,h			;2c3a
	nop			;2c3b
	rst 0			;2c3c
	rlca			;2c3d
	adc a,l			;2c3e
	rlca			;2c3f
	adc a,c			;2c40
	ld b,a			;2c41
	ld (bc),a		;2c42
	cp e			;2c43
	ld c,b			;2c44
	nop			;2c45
	rst 0			;2c46
	rlca			;2c47
	sbc a,d			;2c48
	rlca			;2c49
	adc a,c			;2c4a
	ld b,a			;2c4b
	ld (bc),a		;2c4c
	cp e			;2c4d
	ld c,h			;2c4e
	nop			;2c4f
	rst 0			;2c50
	rlca			;2c51
	rst 0			;2c52
	rlca			;2c53
	adc a,c			;2c54
	ld b,a			;2c55
	ld (bc),a		;2c56
	cp e			;2c57
	ld d,b			;2c58
	nop			;2c59
	rst 0			;2c5a
	rlca			;2c5b
	and c			;2c5c
	rlca			;2c5d
	adc a,c			;2c5e
	ld b,a			;2c5f
	ld (bc),a		;2c60
	cp e			;2c61
	ld h,b			;2c62
	nop			;2c63
	rst 0			;2c64
	rlca			;2c65
	cp b			;2c66
	ld bc,04789h		;2c67
	ld (bc),a		;2c6a
	cp e			;2c6b
	ld l,b			;2c6c
	nop			;2c6d
	rst 0			;2c6e
	rlca			;2c6f
	ld e,c			;2c70
	add hl,bc		;2c71
	adc a,c			;2c72
	ld b,a			;2c73
	ld (bc),a		;2c74
	cp e			;2c75
	ld h,h			;2c76
	nop			;2c77
	rst 0			;2c78
	rlca			;2c79
	dec e			;2c7a
	add hl,bc		;2c7b
	adc a,c			;2c7c
	ld b,a			;2c7d
	ld (bc),a		;2c7e
	cp e			;2c7f
	call m,0c703h		;2c80
	rlca			;2c83
	inc de			;2c84
	ld a,(bc)		;2c85
	adc a,c			;2c86
	ld b,a			;2c87
	ld (bc),a		;2c88
	jp 00000h		;2c89
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
	jp l030ch		;2cd1
	jp l030ch		;2cd4
	jp l030ch		;2cd7
	jp l030ch		;2cda
	ret			;2cdd
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
