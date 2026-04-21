.class public final Landroidx/media3/container/ObuParser$SequenceHeader;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceHeader"
.end annotation


# instance fields
.field public final chromaSamplePosition:I

.field public final colorPrimaries:B

.field public final decoderModelInfoPresentFlag:Z

.field public final frameIdNumbersPresentFlag:Z

.field public final highBitdepth:Z

.field public final initialDisplayDelayMinus1:I

.field public final initialDisplayDelayPresentFlag:Z

.field public final matrixCoefficients:B

.field public final monochrome:Z

.field public final orderHintBits:I

.field public final reducedStillPictureHeader:Z

.field public final seqForceIntegerMv:Z

.field public final seqForceScreenContentTools:Z

.field public final seqLevelIdx0:I

.field public final seqProfile:I

.field public final seqTier0:I

.field public final subsamplingX:Z

.field public final subsamplingY:Z

.field public final transferCharacteristics:B

.field public final twelveBit:Z


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$Obu;)V
    .locals 16
    .param p1, "obu"    # Landroidx/media3/container/ObuParser$Obu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, "seqLevelIdx0":I
    const/4 v3, 0x0

    .line 219
    .local v3, "seqTier0":I
    const/4 v4, 0x0

    .line 220
    .local v4, "initialDisplayDelayMinus1":I
    iget v5, v1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 221
    iget-object v5, v1, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 223
    .local v5, "data":[B
    iget-object v8, v1, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    new-instance v8, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v8, v5}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 225
    .local v8, "obuData":Landroidx/media3/common/util/ParsableBitArray;
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iput v10, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    .line 226
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 227
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    .line 228
    iget-boolean v10, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eqz v10, :cond_1

    .line 229
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 230
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 231
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayPresentFlag:Z

    goto :goto_5

    .line 233
    :cond_1
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    .line 234
    .local v10, "timingInfoPresentFlag":Z
    if-eqz v10, :cond_2

    .line 235
    invoke-static {v8}, Landroidx/media3/container/ObuParser$SequenceHeader;->skipTimingInfo(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 236
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    iput-boolean v13, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 237
    iget-boolean v13, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    if-eqz v13, :cond_3

    .line 239
    const/16 v13, 0x2f

    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 242
    :cond_2
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 244
    :cond_3
    :goto_1
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    iput-boolean v13, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayPresentFlag:Z

    .line 245
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 246
    .local v13, "operatingPointsCntMinus1":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-gt v14, v13, :cond_9

    .line 247
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 248
    const/4 v15, 0x7

    if-nez v14, :cond_4

    .line 249
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 250
    if-le v2, v15, :cond_5

    .line 251
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v15

    move v3, v15

    .end local v3    # "seqTier0":I
    .local v15, "seqTier0":I
    goto :goto_3

    .line 254
    .end local v15    # "seqTier0":I
    .restart local v3    # "seqTier0":I
    :cond_4
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 255
    .local v7, "seqLevelIdx":I
    if-le v7, v15, :cond_5

    .line 256
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 259
    .end local v7    # "seqLevelIdx":I
    :cond_5
    :goto_3
    iget-boolean v7, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    if-eqz v7, :cond_6

    .line 260
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 262
    :cond_6
    iget-boolean v7, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayPresentFlag:Z

    if-eqz v7, :cond_8

    .line 263
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 264
    .local v7, "initialDisplayDelayPresentForThisOpFlag":Z
    if-eqz v7, :cond_8

    .line 265
    if-nez v14, :cond_7

    .line 266
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    goto :goto_4

    .line 268
    :cond_7
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 246
    .end local v7    # "initialDisplayDelayPresentForThisOpFlag":Z
    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 274
    .end local v10    # "timingInfoPresentFlag":Z
    .end local v13    # "operatingPointsCntMinus1":I
    .end local v14    # "i":I
    :cond_9
    :goto_5
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 275
    .local v7, "frameWidthBitsMinus1":I
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 276
    .local v10, "frameHeightBitsMinus1":I
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 277
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 278
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    if-nez v11, :cond_a

    .line 279
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    goto :goto_6

    .line 281
    :cond_a
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    .line 283
    :goto_6
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    if-eqz v11, :cond_b

    .line 284
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 285
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 288
    :cond_b
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 289
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    const/4 v13, 0x2

    if-eqz v11, :cond_c

    .line 290
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    .line 291
    iput-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    .line 292
    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    goto :goto_a

    .line 296
    :cond_c
    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 297
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    .line 298
    .local v11, "enableOrderHint":Z
    if-eqz v11, :cond_d

    .line 299
    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 301
    :cond_d
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    .line 302
    .local v12, "seqChooseScreenContentTools":Z
    if-eqz v12, :cond_e

    .line 303
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    goto :goto_7

    .line 305
    :cond_e
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    iput-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    .line 307
    :goto_7
    iget-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    if-eqz v14, :cond_10

    .line 308
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v14

    .line 309
    .local v14, "seqChooseIntegerMv":Z
    if-eqz v14, :cond_f

    .line 310
    const/4 v15, 0x1

    iput-boolean v15, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    goto :goto_8

    .line 312
    :cond_f
    const/4 v15, 0x1

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v13

    iput-boolean v13, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    .line 314
    .end local v14    # "seqChooseIntegerMv":Z
    :goto_8
    goto :goto_9

    .line 315
    :cond_10
    const/4 v15, 0x1

    iput-boolean v15, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    .line 317
    :goto_9
    if-eqz v11, :cond_11

    .line 318
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 319
    .local v13, "orderHintBitsMinus1":I
    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    .line 320
    .end local v13    # "orderHintBitsMinus1":I
    goto :goto_a

    .line 321
    :cond_11
    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    .line 324
    .end local v11    # "enableOrderHint":Z
    .end local v12    # "seqChooseScreenContentTools":Z
    :goto_a
    iput v2, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqLevelIdx0:I

    .line 325
    iput v3, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqTier0:I

    .line 326
    iput v4, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->initialDisplayDelayMinus1:I

    .line 328
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 330
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    iput-boolean v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->highBitdepth:Z

    .line 331
    iget v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_12

    iget-boolean v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->highBitdepth:Z

    if-eqz v9, :cond_12

    .line 332
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    iput-boolean v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->twelveBit:Z

    goto :goto_b

    .line 334
    :cond_12
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->twelveBit:Z

    .line 336
    :goto_b
    iget v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    const/4 v14, 0x1

    if-eq v9, v14, :cond_13

    .line 337
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    iput-boolean v9, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->monochrome:Z

    goto :goto_c

    .line 339
    :cond_13
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->monochrome:Z

    .line 341
    :goto_c
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    .line 342
    .local v9, "colorDescriptionPresent":Z
    if-eqz v9, :cond_14

    .line 343
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    int-to-byte v12, v12

    iput-byte v12, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->colorPrimaries:B

    .line 344
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    int-to-byte v12, v12

    iput-byte v12, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->transferCharacteristics:B

    .line 345
    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->matrixCoefficients:B

    goto :goto_d

    .line 347
    :cond_14
    iput-byte v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->colorPrimaries:B

    .line 348
    iput-byte v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->transferCharacteristics:B

    .line 349
    iput-byte v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->matrixCoefficients:B

    .line 351
    :goto_d
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->monochrome:Z

    if-eqz v11, :cond_15

    .line 352
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 353
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 354
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    .line 355
    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->chromaSamplePosition:I

    goto :goto_f

    .line 356
    :cond_15
    iget-byte v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->colorPrimaries:B

    const/4 v14, 0x1

    if-ne v11, v14, :cond_16

    iget-byte v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->transferCharacteristics:B

    const/16 v12, 0xd

    if-ne v11, v12, :cond_16

    iget-byte v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->matrixCoefficients:B

    if-nez v11, :cond_16

    .line 360
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 361
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    .line 362
    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->chromaSamplePosition:I

    goto :goto_f

    .line 364
    :cond_16
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 365
    iget v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    if-nez v11, :cond_17

    .line 366
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 367
    iput-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    goto :goto_e

    .line 368
    :cond_17
    const/4 v14, 0x1

    iget v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->seqProfile:I

    if-ne v11, v14, :cond_18

    .line 369
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 370
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    goto :goto_e

    .line 372
    :cond_18
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->twelveBit:Z

    if-eqz v11, :cond_1a

    .line 373
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 374
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    if-eqz v11, :cond_19

    .line 375
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    goto :goto_e

    .line 377
    :cond_19
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    goto :goto_e

    .line 380
    :cond_1a
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    .line 381
    iput-boolean v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    .line 384
    :goto_e
    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingX:Z

    if-eqz v11, :cond_1b

    iget-boolean v11, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->subsamplingY:Z

    if-eqz v11, :cond_1b

    .line 385
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->chromaSamplePosition:I

    goto :goto_f

    .line 387
    :cond_1b
    iput v6, v0, Landroidx/media3/container/ObuParser$SequenceHeader;->chromaSamplePosition:I

    .line 390
    :goto_f
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 391
    return-void
.end method

.method public static parse(Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$SequenceHeader;
    .locals 2
    .param p0, "obu"    # Landroidx/media3/container/ObuParser$Obu;

    .line 209
    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$SequenceHeader;

    invoke-direct {v0, p0}, Landroidx/media3/container/ObuParser$SequenceHeader;-><init>(Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ignored":Landroidx/media3/container/ObuParser$NotYetImplementedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static skipTimingInfo(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 1
    .param p0, "parsableBitArray"    # Landroidx/media3/common/util/ParsableBitArray;

    .line 395
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 396
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 397
    .local v0, "equalPictureInterval":Z
    if-eqz v0, :cond_0

    .line 398
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->access$100(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 400
    :cond_0
    return-void
.end method
