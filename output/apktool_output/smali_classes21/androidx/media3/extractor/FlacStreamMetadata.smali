.class public final Landroidx/media3/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Landroidx/media3/common/Metadata;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

.field public final totalSamples:J


# direct methods
.method constructor <init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V
    .locals 1
    .param p1, "minBlockSizeSamples"    # I
    .param p2, "maxBlockSizeSamples"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J
    .param p10, "seekTable"    # Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    .param p11, "metadata"    # Landroidx/media3/common/Metadata;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 182
    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 183
    iput p3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 184
    iput p4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 185
    iput p5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 186
    invoke-static {p5}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 187
    iput p6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 188
    iput p7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 189
    invoke-static {p7}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 190
    iput-wide p8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 191
    iput-object p10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 192
    iput-object p11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    .line 193
    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "minBlockSizeSamples"    # I
    .param p2, "maxBlockSizeSamples"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p10, "vorbisComments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, "pictureFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/flac/PictureFrame;>;"
    nop

    .line 166
    invoke-static/range {p10 .. p11}, Landroidx/media3/extractor/FlacStreamMetadata;->concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v11

    .line 156
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    .line 167
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 129
    .local v0, "scratch":Landroidx/media3/common/util/ParsableBitArray;
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 130
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 131
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    .line 132
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 133
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    .line 134
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 135
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    invoke-static {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    .line 136
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 137
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 138
    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    invoke-static {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    .line 139
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 141
    iput-object v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    .line 142
    return-void
.end method

.method private static concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media3/common/Metadata;"
        }
    .end annotation

    .line 331
    .local p0, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "pictureFrames":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/flac/PictureFrame;>;"
    invoke-static {p0}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v0

    .line 332
    .local v0, "parsedVorbisComments":Landroidx/media3/common/Metadata;
    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x0

    return-object v1

    .line 335
    :cond_0
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, p1}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    return-object v1
.end method

.method private static getBitsPerSampleLookupKey(I)I
    .locals 1
    .param p0, "bitsPerSample"    # I

    .line 369
    sparse-switch p0, :sswitch_data_0

    .line 383
    const/4 v0, -0x1

    return v0

    .line 381
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 379
    :sswitch_1
    const/4 v0, 0x6

    return v0

    .line 377
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 375
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 373
    :sswitch_4
    const/4 v0, 0x2

    return v0

    .line 371
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0xc -> :sswitch_4
        0x10 -> :sswitch_3
        0x14 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSampleRateLookupKey(I)I
    .locals 1
    .param p0, "sampleRate"    # I

    .line 339
    sparse-switch p0, :sswitch_data_0

    .line 363
    const/4 v0, -0x1

    return v0

    .line 345
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 343
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 361
    :sswitch_2
    const/16 v0, 0xb

    return v0

    .line 341
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 359
    :sswitch_4
    const/16 v0, 0xa

    return v0

    .line 357
    :sswitch_5
    const/16 v0, 0x9

    return v0

    .line 355
    :sswitch_6
    const/16 v0, 0x8

    return v0

    .line 353
    :sswitch_7
    const/4 v0, 0x7

    return v0

    .line 351
    :sswitch_8
    const/4 v0, 0x6

    return v0

    .line 349
    :sswitch_9
    const/4 v0, 0x5

    return v0

    .line 347
    :sswitch_a
    const/4 v0, 0x4

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 310
    .local p1, "pictureFrames":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/flac/PictureFrame;>;"
    new-instance v0, Landroidx/media3/common/Metadata;

    invoke-direct {v0, p1}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v12

    .line 311
    .local v12, "appendedMetadata":Landroidx/media3/common/Metadata;
    new-instance v1, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v9, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object v1
.end method

.method public copyWithSeekTable(Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 12
    .param p1, "seekTable"    # Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 276
    new-instance v0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    move-object v10, p1

    .end local p1    # "seekTable":Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    .local v10, "seekTable":Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object v0
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 292
    .local p1, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 293
    invoke-static {p1}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v12

    .line 294
    .local v12, "appendedMetadata":Landroidx/media3/common/Metadata;
    new-instance v1, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v9, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object v1
.end method

.method public getApproxBytesPerFrame()J
    .locals 6

    .line 227
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    .line 228
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    int-to-long v0, v0

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .local v0, "approxBytesPerFrame":J
    goto :goto_1

    .line 233
    .end local v0    # "approxBytesPerFrame":J
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    if-lez v0, :cond_1

    .line 234
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    int-to-long v0, v0

    goto :goto_0

    .line 235
    :cond_1
    const-wide/16 v0, 0x1000

    :goto_0
    nop

    .line 236
    .local v0, "blockSizeSamples":J
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x40

    add-long/2addr v2, v4

    move-wide v0, v2

    .line 238
    .local v0, "approxBytesPerFrame":J
    :goto_1
    return-wide v0
.end method

.method public getDecodedBitrate()I
    .locals 2

    .line 202
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    .line 210
    iget-wide v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;
    .locals 4
    .param p1, "streamMarkerAndInfoBlock"    # [B
    .param p2, "id3Metadata"    # Landroidx/media3/common/Metadata;

    .line 254
    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    .line 255
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 256
    .local v0, "maxInputSize":I
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    .line 257
    .local v1, "metadataWithId3":Landroidx/media3/common/Metadata;
    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 258
    const-string v3, "audio/flac"

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 260
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 261
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 262
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 263
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v2

    .line 257
    return-object v2
.end method

.method public getMaxDecodedFrameSize()I
    .locals 2

    .line 197
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;
    .locals 1
    .param p1, "other"    # Landroidx/media3/common/Metadata;

    .line 271
    iget-object v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v0, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSampleNumber(J)J
    .locals 10
    .param p1, "timeUs"    # J

    .line 220
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 221
    .local v4, "sampleNumber":J
    iget-wide v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
