.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final decodedHeight:I

.field public final decodedWidth:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final maxNumReorderPics:I

.field public final maxSubLayers:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final stereoMode:I

.field public final vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    .locals 16
    .param p2, "nalUnitLengthFieldLength"    # I
    .param p3, "maxSubLayers"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "decodedWidth"    # I
    .param p7, "decodedHeight"    # I
    .param p8, "bitdepthLuma"    # I
    .param p9, "bitdepthChroma"    # I
    .param p10, "colorSpace"    # I
    .param p11, "colorRange"    # I
    .param p12, "colorTransfer"    # I
    .param p13, "stereoMode"    # I
    .param p14, "pixelWidthHeightRatio"    # F
    .param p15, "maxNumReorderPics"    # I
    .param p16, "codecs"    # Ljava/lang/String;
    .param p17, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIIIIFI",
            "Ljava/lang/String;",
            "Landroidx/media3/container/NalUnitUtil$H265VpsData;",
            ")V"
        }
    .end annotation

    .line 293
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 294
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 295
    move/from16 v2, p2

    iput v2, v0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 296
    move/from16 v3, p3

    iput v3, v0, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 297
    move/from16 v4, p4

    iput v4, v0, Landroidx/media3/extractor/HevcConfig;->width:I

    .line 298
    move/from16 v5, p5

    iput v5, v0, Landroidx/media3/extractor/HevcConfig;->height:I

    .line 299
    move/from16 v6, p6

    iput v6, v0, Landroidx/media3/extractor/HevcConfig;->decodedWidth:I

    .line 300
    move/from16 v7, p7

    iput v7, v0, Landroidx/media3/extractor/HevcConfig;->decodedHeight:I

    .line 301
    move/from16 v8, p8

    iput v8, v0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 302
    move/from16 v9, p9

    iput v9, v0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 303
    move/from16 v10, p10

    iput v10, v0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 304
    move/from16 v11, p11

    iput v11, v0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 305
    move/from16 v12, p12

    iput v12, v0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 306
    move/from16 v13, p13

    iput v13, v0, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    .line 307
    move/from16 v14, p14

    iput v14, v0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 308
    move/from16 v15, p15

    iput v15, v0, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 309
    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 310
    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 311
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 2
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v0

    return-object v0
.end method

.method private static parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 43
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "layered"    # Z
    .param p2, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 74
    move-object/from16 v1, p0

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 77
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 79
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    .line 82
    .local v2, "lengthSizeMinusOne":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 83
    .local v3, "numberOfArrays":I
    const/4 v4, 0x0

    .line 84
    .local v4, "csdLength":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 85
    .local v5, "csdStartPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x1

    if-ge v6, v3, :cond_2

    .line 86
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 88
    .local v7, "numberOfNalUnits":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_1

    .line 89
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 90
    .local v9, "nalUnitLength":I
    add-int/lit8 v10, v9, 0x4

    add-int/2addr v4, v10

    .line 91
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 88
    .end local v9    # "nalUnitLength":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 85
    .end local v7    # "numberOfNalUnits":I
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 96
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 97
    new-array v6, v4, [B

    .line 98
    .local v6, "buffer":[B
    const/4 v8, -0x1

    .line 99
    .local v8, "maxSubLayers":I
    const/4 v9, 0x0

    .line 100
    .local v9, "bufferPosition":I
    const/4 v10, -0x1

    .line 101
    .local v10, "width":I
    const/4 v11, -0x1

    .line 102
    .local v11, "height":I
    const/4 v12, -0x1

    .line 103
    .local v12, "decodedWidth":I
    const/4 v13, -0x1

    .line 104
    .local v13, "decodedHeight":I
    const/4 v14, -0x1

    .line 105
    .local v14, "bitdepthLuma":I
    const/4 v15, -0x1

    .line 106
    .local v15, "bitdepthChroma":I
    const/16 v16, -0x1

    .line 107
    .local v16, "colorSpace":I
    const/16 v17, -0x1

    .line 108
    .local v17, "colorRange":I
    const/16 v18, -0x1

    .line 109
    .local v18, "colorTransfer":I
    const/16 v19, -0x1

    .line 110
    .local v19, "stereoMode":I
    const/high16 v20, 0x3f800000    # 1.0f

    .line 111
    .local v20, "pixelWidthHeightRatio":F
    const/16 v21, -0x1

    .line 112
    .local v21, "maxNumReorderPics":I
    const/16 v22, 0x0

    .line 113
    .local v22, "codecs":Ljava/lang/String;
    move-object/from16 v23, p2

    .line 114
    .local v23, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    const/16 v24, 0x0

    move/from16 v28, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v21

    move-object/from16 v41, v22

    move-object/from16 v42, v23

    move/from16 v8, v24

    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "decodedWidth":I
    .end local v13    # "decodedHeight":I
    .end local v14    # "bitdepthLuma":I
    .end local v15    # "bitdepthChroma":I
    .end local v16    # "colorSpace":I
    .end local v17    # "colorRange":I
    .end local v18    # "colorTransfer":I
    .end local v19    # "stereoMode":I
    .end local v20    # "pixelWidthHeightRatio":F
    .end local v21    # "maxNumReorderPics":I
    .end local v22    # "codecs":Ljava/lang/String;
    .end local v23    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v8, "i":I
    .local v28, "maxSubLayers":I
    .local v29, "width":I
    .local v30, "height":I
    .local v31, "decodedWidth":I
    .local v32, "decodedHeight":I
    .local v33, "bitdepthLuma":I
    .local v34, "bitdepthChroma":I
    .local v35, "colorSpace":I
    .local v36, "colorRange":I
    .local v37, "colorTransfer":I
    .local v38, "stereoMode":I
    .local v39, "pixelWidthHeightRatio":F
    .local v40, "maxNumReorderPics":I
    .local v41, "codecs":Ljava/lang/String;
    .local v42, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :goto_3
    if-ge v8, v3, :cond_a

    .line 115
    nop

    .line 116
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v10, v10, 0x3f

    .line 117
    .local v10, "nalUnitType":I
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 118
    .local v11, "numberOfNalUnits":I
    const/4 v12, 0x0

    move-object/from16 v13, v42

    .end local v42    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .local v12, "j":I
    .local v13, "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :goto_4
    if-ge v12, v11, :cond_9

    .line 119
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 120
    .local v14, "nalUnitLength":I
    sget-object v15, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    move/from16 v17, v7

    const/4 v7, 0x0

    invoke-static {v15, v7, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v0, v0

    add-int/2addr v9, v0

    .line 127
    nop

    .line 128
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 127
    invoke-static {v0, v15, v6, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    const/16 v0, 0x20

    if-ne v10, v0, :cond_3

    if-nez v12, :cond_3

    .line 130
    add-int v0, v9, v14

    .line 131
    invoke-static {v6, v9, v0}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move-result-object v0

    move-object v13, v0

    move/from16 v24, v2

    goto/16 :goto_7

    .line 133
    :cond_3
    const/16 v0, 0x21

    if-ne v10, v0, :cond_6

    if-nez v12, :cond_6

    .line 134
    add-int v0, v9, v14

    .line 135
    invoke-static {v6, v9, v0, v13}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v0

    .line 137
    .local v0, "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    add-int/lit8 v28, v7, 0x1

    .line 138
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    move/from16 v29, v7

    .line 139
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    move/from16 v30, v7

    .line 140
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->decodedWidth:I

    move/from16 v31, v7

    .line 141
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->decodedHeight:I

    move/from16 v32, v7

    .line 142
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    add-int/lit8 v33, v7, 0x8

    .line 143
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    add-int/lit8 v34, v7, 0x8

    .line 144
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    move/from16 v35, v7

    .line 145
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    move/from16 v36, v7

    .line 146
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v37, v7

    .line 147
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v39, v7

    .line 148
    iget v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    move/from16 v40, v7

    .line 150
    iget-object v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v7, :cond_4

    .line 151
    iget-object v7, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v7, v7, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    iget-object v15, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-boolean v15, v15, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    move/from16 v24, v2

    .end local v2    # "lengthSizeMinusOne":I
    .local v24, "lengthSizeMinusOne":I
    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    move/from16 v20, v2

    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    move/from16 v21, v2

    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget-object v2, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    move-object/from16 v22, v2

    iget-object v2, v0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 152
    move/from16 v23, v2

    move/from16 v18, v7

    move/from16 v19, v15

    invoke-static/range {v18 .. v23}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v41, v2

    .end local v41    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    goto :goto_5

    .line 150
    .end local v24    # "lengthSizeMinusOne":I
    .local v2, "lengthSizeMinusOne":I
    .restart local v41    # "codecs":Ljava/lang/String;
    :cond_4
    move/from16 v24, v2

    .line 160
    .end local v0    # "spsData":Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .end local v2    # "lengthSizeMinusOne":I
    .restart local v24    # "lengthSizeMinusOne":I
    :cond_5
    :goto_5
    goto :goto_7

    .line 133
    .end local v24    # "lengthSizeMinusOne":I
    .restart local v2    # "lengthSizeMinusOne":I
    :cond_6
    move/from16 v24, v2

    .line 160
    .end local v2    # "lengthSizeMinusOne":I
    .restart local v24    # "lengthSizeMinusOne":I
    const/16 v0, 0x27

    if-ne v10, v0, :cond_5

    if-nez v12, :cond_5

    .line 161
    add-int v0, v9, v14

    .line 162
    invoke-static {v6, v9, v0}, Landroidx/media3/container/NalUnitUtil;->parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    move-result-object v0

    .line 164
    .local v0, "seiData":Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    if-eqz v0, :cond_8

    if-eqz v13, :cond_8

    .line 166
    iget v2, v0, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    iget-object v15, v13, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v15, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v7, v7, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    if-ne v2, v7, :cond_7

    .line 167
    const/4 v2, 0x4

    goto :goto_6

    .line 168
    :cond_7
    const/4 v2, 0x5

    :goto_6
    move/from16 v38, v2

    .line 171
    .end local v0    # "seiData":Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    :cond_8
    :goto_7
    add-int/2addr v9, v14

    .line 172
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 118
    .end local v14    # "nalUnitLength":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v17

    move/from16 v2, v24

    const/4 v0, 0x4

    goto/16 :goto_4

    .end local v24    # "lengthSizeMinusOne":I
    .restart local v2    # "lengthSizeMinusOne":I
    :cond_9
    move/from16 v24, v2

    move/from16 v17, v7

    .line 114
    .end local v2    # "lengthSizeMinusOne":I
    .end local v10    # "nalUnitType":I
    .end local v11    # "numberOfNalUnits":I
    .end local v12    # "j":I
    .restart local v24    # "lengthSizeMinusOne":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v42, v13

    const/4 v0, 0x4

    goto/16 :goto_3

    .end local v13    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .end local v24    # "lengthSizeMinusOne":I
    .restart local v2    # "lengthSizeMinusOne":I
    .restart local v42    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :cond_a
    move/from16 v24, v2

    .line 177
    .end local v2    # "lengthSizeMinusOne":I
    .end local v8    # "i":I
    .restart local v24    # "lengthSizeMinusOne":I
    if-nez v4, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_8
    move-object/from16 v26, v0

    .line 178
    .local v26, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v25, Landroidx/media3/extractor/HevcConfig;

    add-int/lit8 v27, v24, 0x1

    invoke-direct/range {v25 .. v42}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v25

    .line 196
    .end local v3    # "numberOfArrays":I
    .end local v4    # "csdLength":I
    .end local v5    # "csdStartPosition":I
    .end local v6    # "buffer":[B
    .end local v9    # "bufferPosition":I
    .end local v24    # "lengthSizeMinusOne":I
    .end local v26    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v28    # "maxSubLayers":I
    .end local v29    # "width":I
    .end local v30    # "height":I
    .end local v31    # "decodedWidth":I
    .end local v32    # "decodedHeight":I
    .end local v33    # "bitdepthLuma":I
    .end local v34    # "bitdepthChroma":I
    .end local v35    # "colorSpace":I
    .end local v36    # "colorRange":I
    .end local v37    # "colorTransfer":I
    .end local v38    # "stereoMode":I
    .end local v39    # "pixelWidthHeightRatio":F
    .end local v40    # "maxNumReorderPics":I
    .end local v41    # "codecs":Ljava/lang/String;
    .end local v42    # "currentVpsData":Landroidx/media3/container/NalUnitUtil$H265VpsData;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    if-eqz p1, :cond_c

    const-string v3, "L-HEVC config"

    goto :goto_9

    :cond_c
    const-string v3, "HEVC config"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
.end method

.method public static parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 1
    .param p0, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "vpsData"    # Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v0

    return-object v0
.end method
