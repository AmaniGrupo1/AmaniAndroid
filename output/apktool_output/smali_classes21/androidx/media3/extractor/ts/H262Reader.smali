.class public final Landroidx/media3/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3

.field private static final START_USER_DATA:I = 0xb2


# instance fields
.field private final containerMimeType:Ljava/lang/String;

.field private final csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field private final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V
    .locals 3
    .param p1, "userDataReader"    # Landroidx/media3/extractor/ts/UserDataReader;
    .param p2, "containerMimeType"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    .line 83
    iput-object p2, p0, Landroidx/media3/extractor/ts/H262Reader;->containerMimeType:Ljava/lang/String;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 85
    new-instance v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v2, 0xb2

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 88
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 91
    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    .line 93
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 94
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "containerMimeType"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 24
    .param p0, "csdBuffer"    # Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
    .param p1, "formatId"    # Ljava/lang/String;
    .param p2, "containerMimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 246
    .local v1, "csdData":[B
    const/4 v2, 0x4

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    .line 247
    .local v3, "firstByte":I
    const/4 v4, 0x5

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 248
    .local v5, "secondByte":I
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    .line 249
    .local v6, "thirdByte":I
    shl-int/lit8 v7, v3, 0x4

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 250
    .local v7, "width":I
    and-int/lit8 v8, v5, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v6

    .line 252
    .local v8, "height":I
    const/high16 v9, 0x3f800000    # 1.0f

    .line 253
    .local v9, "pixelWidthHeightRatio":F
    const/4 v10, 0x7

    aget-byte v11, v1, v10

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v2, v11, 0x4

    .line 254
    .local v2, "aspectRatioCode":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 262
    :pswitch_0
    mul-int/lit8 v11, v8, 0x79

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x64

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 263
    goto :goto_0

    .line 259
    :pswitch_1
    mul-int/lit8 v11, v8, 0x10

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x9

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 260
    goto :goto_0

    .line 256
    :pswitch_2
    mul-int/lit8 v11, v8, 0x4

    int-to-float v11, v11

    mul-int/lit8 v12, v7, 0x3

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 257
    nop

    .line 269
    :goto_0
    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 271
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 272
    move-object/from16 v13, p2

    invoke-virtual {v11, v13}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 273
    const-string/jumbo v14, "video/mpeg2"

    invoke-virtual {v11, v14}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 274
    invoke-virtual {v11, v7}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 275
    invoke-virtual {v11, v8}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 276
    invoke-virtual {v11, v9}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 277
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 278
    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v11

    .line 280
    .local v11, "format":Landroidx/media3/common/Format;
    const-wide/16 v14, 0x0

    .line 281
    .local v14, "frameDurationUs":J
    aget-byte v10, v1, v10

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    .line 282
    .local v10, "frameRateCodeMinusOne":I
    if-ltz v10, :cond_1

    move/from16 v16, v4

    sget-object v4, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v4, v4

    if-ge v10, v4, :cond_1

    .line 283
    sget-object v4, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v17, v4, v10

    .line 284
    .local v17, "frameRate":D
    iget v4, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    .line 285
    .local v4, "sequenceExtensionPosition":I
    add-int/lit8 v19, v4, 0x9

    aget-byte v19, v1, v19

    and-int/lit8 v19, v19, 0x60

    shr-int/lit8 v0, v19, 0x5

    .line 286
    .local v0, "frameRateExtensionN":I
    add-int/lit8 v16, v4, 0x9

    aget-byte v16, v1, v16

    move-object/from16 v19, v1

    .end local v1    # "csdData":[B
    .local v19, "csdData":[B
    and-int/lit8 v1, v16, 0x1f

    .line 287
    .local v1, "frameRateExtensionD":I
    if-eq v0, v1, :cond_0

    .line 288
    move/from16 v20, v1

    move/from16 v16, v2

    .end local v1    # "frameRateExtensionD":I
    .end local v2    # "aspectRatioCode":I
    .local v16, "aspectRatioCode":I
    .local v20, "frameRateExtensionD":I
    int-to-double v1, v0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v1, v1, v21

    move/from16 v21, v0

    .end local v0    # "frameRateExtensionN":I
    .local v21, "frameRateExtensionN":I
    add-int/lit8 v0, v20, 0x1

    move-wide/from16 v22, v1

    int-to-double v0, v0

    div-double v1, v22, v0

    mul-double v17, v17, v1

    goto :goto_1

    .line 287
    .end local v16    # "aspectRatioCode":I
    .end local v20    # "frameRateExtensionD":I
    .end local v21    # "frameRateExtensionN":I
    .restart local v0    # "frameRateExtensionN":I
    .restart local v1    # "frameRateExtensionD":I
    .restart local v2    # "aspectRatioCode":I
    :cond_0
    move/from16 v21, v0

    move/from16 v20, v1

    move/from16 v16, v2

    .line 290
    .end local v0    # "frameRateExtensionN":I
    .end local v1    # "frameRateExtensionD":I
    .end local v2    # "aspectRatioCode":I
    .restart local v16    # "aspectRatioCode":I
    .restart local v20    # "frameRateExtensionD":I
    .restart local v21    # "frameRateExtensionN":I
    :goto_1
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double v0, v0, v17

    double-to-long v14, v0

    goto :goto_2

    .line 282
    .end local v4    # "sequenceExtensionPosition":I
    .end local v16    # "aspectRatioCode":I
    .end local v17    # "frameRate":D
    .end local v19    # "csdData":[B
    .end local v20    # "frameRateExtensionD":I
    .end local v21    # "frameRateExtensionN":I
    .local v1, "csdData":[B
    .restart local v2    # "aspectRatioCode":I
    :cond_1
    move-object/from16 v19, v1

    move/from16 v16, v2

    .line 293
    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .restart local v16    # "aspectRatioCode":I
    .restart local v19    # "csdData":[B
    :goto_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 21
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 131
    .local v1, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 132
    .local v2, "limit":I
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 135
    .local v3, "dataArray":[B
    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 136
    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 139
    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v3, v1, v2, v4}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    .line 141
    .local v4, "startCodeOffset":I
    if-ne v4, v2, :cond_2

    .line 143
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v5, :cond_0

    .line 144
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v5, v3, v1, v2}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 146
    :cond_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v3, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 149
    :cond_1
    return-void

    .line 153
    :cond_2
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    .line 156
    .local v5, "startCodeValue":I
    sub-int v7, v4, v1

    .line 158
    .local v7, "lengthToStartCode":I
    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x1

    if-nez v8, :cond_5

    .line 159
    if-lez v7, :cond_3

    .line 160
    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v8, v3, v1, v4}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 164
    :cond_3
    if-gez v7, :cond_4

    neg-int v8, v7

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 165
    .local v8, "bytesAlreadyPassed":I
    :goto_1
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v11, v5, v8}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 167
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 168
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Landroidx/media3/extractor/ts/H262Reader;->containerMimeType:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Landroidx/media3/extractor/ts/H262Reader;->parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v11

    .line 169
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/common/Format;Ljava/lang/Long;>;"
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/common/Format;

    invoke-interface {v12, v13}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 170
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    .line 171
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 174
    .end local v8    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/media3/common/Format;Ljava/lang/Long;>;"
    :cond_5
    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v8, :cond_8

    .line 175
    const/4 v8, 0x0

    .line 176
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v7, :cond_6

    .line 177
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v3, v1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_2

    .line 179
    :cond_6
    neg-int v8, v7

    .line 182
    :goto_2
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v8}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 183
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v11, v11, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v12, v12, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v11, v12}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v11

    .line 184
    .local v11, "unescapedLength":I
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v12}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v13, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v13, v13, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v12, v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 185
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-static {v12}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/ts/UserDataReader;

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v15, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v13, v14, v15}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 188
    .end local v11    # "unescapedLength":I
    :cond_7
    const/16 v11, 0xb2

    if-ne v5, v11, :cond_8

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v11

    add-int/lit8 v12, v4, 0x2

    aget-byte v11, v11, v12

    if-ne v11, v10, :cond_8

    .line 189
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v11, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 192
    .end local v8    # "bytesAlreadyPassed":I
    :cond_8
    if-eqz v5, :cond_b

    const/16 v8, 0xb3

    if-ne v5, v8, :cond_9

    goto :goto_4

    .line 214
    :cond_9
    const/16 v8, 0xb8

    if-ne v5, v8, :cond_a

    .line 215
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto/16 :goto_a

    .line 214
    :cond_a
    :goto_3
    goto/16 :goto_a

    .line 193
    :cond_b
    :goto_4
    sub-int v16, v2, v4

    .line 194
    .local v16, "bytesWrittenPastStartCode":I
    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_c

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v8, :cond_c

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v8, v13, v11

    if-eqz v8, :cond_c

    .line 196
    iget-boolean v14, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 197
    .local v14, "flags":I
    iget-wide v11, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    move-wide/from16 v19, v11

    iget-wide v10, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long v11, v19, v10

    long-to-int v10, v11

    sub-int v15, v10, v16

    .line 198
    .local v15, "size":I
    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-wide/from16 v8, v18

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move/from16 v11, v16

    .end local v16    # "bytesWrittenPastStartCode":I
    .local v11, "bytesWrittenPastStartCode":I
    goto :goto_5

    .line 194
    .end local v11    # "bytesWrittenPastStartCode":I
    .end local v14    # "flags":I
    .end local v15    # "size":I
    .restart local v16    # "bytesWrittenPastStartCode":I
    :cond_c
    move-wide v8, v11

    move/from16 v11, v16

    .line 200
    .end local v16    # "bytesWrittenPastStartCode":I
    .restart local v11    # "bytesWrittenPastStartCode":I
    :goto_5
    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v12, :cond_e

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v12, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_8

    .line 202
    :cond_e
    :goto_6
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v14, v11

    sub-long/2addr v12, v14

    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    .line 203
    nop

    .line 204
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_f

    .line 205
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    goto :goto_7

    .line 206
    :cond_f
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_10

    .line 207
    iget-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-wide v14, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v12, v14

    goto :goto_7

    .line 208
    :cond_10
    move-wide v12, v8

    :goto_7
    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 209
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    .line 210
    iput-wide v8, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 211
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 213
    :goto_8
    if-nez v5, :cond_11

    move v9, v8

    goto :goto_9

    :cond_11
    move v9, v10

    :goto_9
    iput-boolean v9, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    .end local v11    # "bytesWrittenPastStartCode":I
    goto :goto_3

    .line 218
    :goto_a
    add-int/lit8 v1, v4, 0x3

    .line 219
    .end local v4    # "startCodeOffset":I
    .end local v5    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    goto/16 :goto_0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2
    .param p1, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 112
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 113
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 115
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 118
    :cond_0
    return-void
.end method

.method public packetFinished(Z)V
    .locals 8
    .param p1, "isEndOfInput"    # Z

    .line 225
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    move v4, v0

    .line 228
    .local v4, "flags":I
    iget-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 229
    .local v5, "size":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 231
    .end local v4    # "flags":I
    .end local v5    # "size":I
    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0
    .param p1, "pesTimeUs"    # J
    .param p3, "flags"    # I

    .line 123
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 124
    return-void
.end method

.method public seek()V
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 100
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 101
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 104
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    .line 106
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    .line 107
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    .line 108
    return-void
.end method
