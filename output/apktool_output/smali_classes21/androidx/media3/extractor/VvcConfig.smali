.class public final Landroidx/media3/extractor/VvcConfig;
.super Ljava/lang/Object;
.source "VvcConfig.java"


# instance fields
.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I


# direct methods
.method private constructor <init>(Ljava/util/List;ILjava/lang/String;I)V
    .locals 0
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "codecs"    # Ljava/lang/String;
    .param p4, "bitdepthLuma"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 164
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroidx/media3/extractor/VvcConfig;->initializationData:Ljava/util/List;

    .line 166
    iput p2, p0, Landroidx/media3/extractor/VvcConfig;->nalUnitLengthFieldLength:I

    .line 167
    iput-object p3, p0, Landroidx/media3/extractor/VvcConfig;->codecs:Ljava/lang/String;

    .line 168
    iput p4, p0, Landroidx/media3/extractor/VvcConfig;->bitdepthLuma:I

    .line 169
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VvcConfig;
    .locals 25
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 42
    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    if-nez v0, :cond_d

    .line 48
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, "firstByte":I
    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v2, v2, 0x3

    .line 50
    .local v2, "lengthSizeMinusOne":I
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 51
    .local v3, "ptlPresentFlag":Z
    :goto_0
    add-int/lit8 v6, v2, 0x1

    .line 53
    .local v6, "nalUnitLengthFieldLength":I
    const/4 v7, 0x0

    .line 54
    .local v7, "profileIdc":I
    const/4 v8, 0x0

    .line 55
    .local v8, "levelIdc":I
    const-string v9, "L"

    move-object v10, v9

    .line 56
    .local v10, "tierString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 58
    .local v11, "bitDepthMinus8":I
    if-eqz v3, :cond_5

    .line 60
    :try_start_1
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 63
    .local v12, "olsAndSublayersByte":I
    shr-int/lit8 v13, v12, 0x4

    and-int/lit8 v13, v13, 0x7

    .line 65
    .local v13, "numSublayers":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 67
    .local v14, "bitDepthByte":I
    shr-int/lit8 v15, v14, 0x5

    and-int/lit8 v11, v15, 0x7

    .line 69
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 71
    .local v15, "constraintInfoByte":I
    and-int/lit8 v4, v15, 0x3f

    .line 73
    .local v4, "numBytesConstraintInfo":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    .line 75
    .local v16, "profileAndTierByte":I
    shr-int/lit8 v17, v16, 0x1

    and-int/lit8 v7, v17, 0x7f

    .line 76
    and-int/lit8 v17, v16, 0x1

    if-eqz v17, :cond_1

    const-string v9, "H"

    :cond_1
    move-object v10, v9

    .line 78
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    move v8, v9

    .line 80
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    if-le v13, v5, :cond_4

    .line 83
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 84
    .local v9, "sublayerFlags":I
    const/16 v17, 0x0

    move/from16 v18, v5

    move/from16 v5, v17

    .local v5, "i":I
    :goto_1
    move/from16 v17, v0

    .end local v0    # "firstByte":I
    .local v17, "firstByte":I
    add-int/lit8 v0, v13, -0x1

    if-ge v5, v0, :cond_3

    .line 86
    rsub-int/lit8 v0, v5, 0x7

    shr-int v0, v9, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 87
    move/from16 v0, v18

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 86
    :cond_2
    move/from16 v0, v18

    .line 84
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v18, v0

    move/from16 v0, v17

    goto :goto_1

    :cond_3
    move/from16 v0, v18

    goto :goto_3

    .line 81
    .end local v5    # "i":I
    .end local v9    # "sublayerFlags":I
    .end local v17    # "firstByte":I
    .restart local v0    # "firstByte":I
    :cond_4
    move/from16 v17, v0

    move v0, v5

    .line 92
    .end local v0    # "firstByte":I
    .restart local v17    # "firstByte":I
    :goto_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 93
    .local v5, "numSubProfiles":I
    mul-int/lit8 v9, v5, 0x4

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_4

    .line 58
    .end local v4    # "numBytesConstraintInfo":I
    .end local v5    # "numSubProfiles":I
    .end local v12    # "olsAndSublayersByte":I
    .end local v13    # "numSublayers":I
    .end local v14    # "bitDepthByte":I
    .end local v15    # "constraintInfoByte":I
    .end local v16    # "profileAndTierByte":I
    .end local v17    # "firstByte":I
    .restart local v0    # "firstByte":I
    :cond_5
    move/from16 v17, v0

    move v0, v5

    .line 99
    .end local v0    # "firstByte":I
    .restart local v17    # "firstByte":I
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 100
    .local v4, "numArrays":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 101
    .local v5, "csdStartPosition":I
    const/4 v9, 0x0

    .line 103
    .local v9, "csdLength":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    const/16 v13, 0xc

    const/16 v14, 0xd

    if-ge v12, v4, :cond_8

    .line 104
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 105
    .local v15, "arrayHeader":I
    and-int/lit8 v0, v15, 0x1f

    .line 107
    .local v0, "nalType":I
    if-eq v0, v14, :cond_6

    if-eq v0, v13, :cond_6

    .line 109
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    goto :goto_6

    .line 110
    :cond_6
    const/4 v13, 0x1

    :goto_6
    nop

    .line 111
    .local v13, "numNalus":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_7
    if-ge v14, v13, :cond_7

    .line 112
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v16

    move/from16 v19, v16

    .line 113
    .local v19, "nalUnitLength":I
    add-int/lit8 v16, v19, 0x4

    add-int v9, v9, v16

    .line 114
    move/from16 v16, v0

    move/from16 v0, v19

    .end local v19    # "nalUnitLength":I
    .local v0, "nalUnitLength":I
    .local v16, "nalType":I
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 111
    .end local v0    # "nalUnitLength":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    goto :goto_7

    .end local v16    # "nalType":I
    .local v0, "nalType":I
    :cond_7
    move/from16 v16, v0

    .line 103
    .end local v0    # "nalType":I
    .end local v13    # "numNalus":I
    .end local v14    # "j":I
    .end local v15    # "arrayHeader":I
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x1

    goto :goto_5

    .line 118
    .end local v12    # "i":I
    :cond_8
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 119
    new-array v0, v9, [B

    .line 120
    .local v0, "buffer":[B
    const/4 v12, 0x0

    .line 122
    .local v12, "bufferPosition":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    if-ge v15, v4, :cond_c

    .line 123
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    .line 124
    .local v16, "arrayHeader":I
    and-int/lit8 v13, v16, 0x1f

    .line 126
    .local v13, "nalType":I
    if-eq v13, v14, :cond_9

    const/16 v14, 0xc

    if-eq v13, v14, :cond_a

    .line 128
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    goto :goto_9

    .line 126
    :cond_9
    const/16 v14, 0xc

    .line 129
    :cond_a
    const/16 v19, 0x1

    :goto_9
    move/from16 v20, v19

    .line 130
    .local v20, "numNalus":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .restart local v14    # "j":I
    :goto_a
    move/from16 v21, v2

    move/from16 v2, v20

    .end local v20    # "numNalus":I
    .local v2, "numNalus":I
    .local v21, "lengthSizeMinusOne":I
    if-ge v14, v2, :cond_b

    .line 131
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v20

    move/from16 v22, v20

    .line 132
    .local v22, "nalUnitLength":I
    move/from16 v20, v2

    .end local v2    # "numNalus":I
    .restart local v20    # "numNalus":I
    sget-object v2, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    move/from16 v23, v3

    .end local v3    # "ptlPresentFlag":Z
    .local v23, "ptlPresentFlag":Z
    const/4 v3, 0x4

    move/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "numArrays":I
    .local v24, "numArrays":I
    invoke-static {v2, v4, v0, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v12, v12, 0x4

    .line 134
    move/from16 v2, v22

    .end local v22    # "nalUnitLength":I
    .local v2, "nalUnitLength":I
    invoke-virtual {v1, v0, v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 135
    add-int/2addr v12, v2

    .line 130
    .end local v2    # "nalUnitLength":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    goto :goto_a

    .end local v20    # "numNalus":I
    .end local v23    # "ptlPresentFlag":Z
    .end local v24    # "numArrays":I
    .local v2, "numNalus":I
    .restart local v3    # "ptlPresentFlag":Z
    .restart local v4    # "numArrays":I
    :cond_b
    move/from16 v20, v2

    move/from16 v23, v3

    move/from16 v24, v4

    const/4 v4, 0x0

    .line 122
    .end local v2    # "numNalus":I
    .end local v3    # "ptlPresentFlag":Z
    .end local v4    # "numArrays":I
    .end local v13    # "nalType":I
    .end local v14    # "j":I
    .end local v16    # "arrayHeader":I
    .restart local v23    # "ptlPresentFlag":Z
    .restart local v24    # "numArrays":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v21

    move/from16 v4, v24

    const/16 v13, 0xc

    const/16 v14, 0xd

    goto :goto_8

    .end local v21    # "lengthSizeMinusOne":I
    .end local v23    # "ptlPresentFlag":Z
    .end local v24    # "numArrays":I
    .local v2, "lengthSizeMinusOne":I
    .restart local v3    # "ptlPresentFlag":Z
    .restart local v4    # "numArrays":I
    :cond_c
    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v24, v4

    .line 140
    .end local v2    # "lengthSizeMinusOne":I
    .end local v3    # "ptlPresentFlag":Z
    .end local v4    # "numArrays":I
    .end local v15    # "i":I
    .restart local v21    # "lengthSizeMinusOne":I
    .restart local v23    # "ptlPresentFlag":Z
    .restart local v24    # "numArrays":I
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "vvc1.%d.%s%d"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v4, v10, v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "codecs":Ljava/lang/String;
    new-instance v3, Landroidx/media3/extractor/VvcConfig;

    .line 142
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    add-int/lit8 v13, v11, 0x8

    invoke-direct {v3, v4, v6, v2, v13}, Landroidx/media3/extractor/VvcConfig;-><init>(Ljava/util/List;ILjava/lang/String;I)V

    .line 141
    return-object v3

    .line 43
    .end local v0    # "buffer":[B
    .end local v2    # "codecs":Ljava/lang/String;
    .end local v5    # "csdStartPosition":I
    .end local v6    # "nalUnitLengthFieldLength":I
    .end local v7    # "profileIdc":I
    .end local v8    # "levelIdc":I
    .end local v9    # "csdLength":I
    .end local v10    # "tierString":Ljava/lang/String;
    .end local v11    # "bitDepthMinus8":I
    .end local v12    # "bufferPosition":I
    .end local v17    # "firstByte":I
    .end local v21    # "lengthSizeMinusOne":I
    .end local v23    # "ptlPresentFlag":Z
    .end local v24    # "numArrays":I
    :cond_d
    const-string v0, "Unsupported VVC version"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    .end local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .restart local p0    # "data":Landroidx/media3/common/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error parsing VVC configuration"

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method
