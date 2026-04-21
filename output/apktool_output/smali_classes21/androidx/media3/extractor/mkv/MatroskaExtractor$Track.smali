.class public final Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public bitsPerChannel:I

.field private blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Landroidx/media3/common/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public format:Landroidx/media3/common/Format;

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field public isWebm:Z

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

.field public type:I

.field public waitingForDtsAnalysis:Z

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2244
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2245
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2246
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2247
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2248
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 2249
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 2250
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    .line 2251
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2252
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2253
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 2254
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2255
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2256
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 2257
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2258
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2259
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 2260
    const/16 v2, 0x3e8

    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    .line 2261
    const/16 v2, 0xc8

    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    .line 2262
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 2263
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 2264
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 2265
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 2266
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 2267
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 2268
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 2269
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 2270
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 2271
    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    .line 2275
    const/4 v2, 0x1

    iput v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2276
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 2277
    const/16 v0, 0x1f40

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2278
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 2279
    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 2281
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->waitingForDtsAnalysis:Z

    .line 2287
    iput-boolean v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 2288
    const-string v0, "eng"

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 2217
    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Landroid/util/SparseArray;JJJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # J

    .line 2217
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maybeAddThumbnailMetadata(Landroid/util/SparseArray;JJJ)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 2217
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return v0
.end method

.method static synthetic access$402(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # I

    .line 2217
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method static synthetic access$502(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2217
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Z

    .line 2217
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z

    move-result v0

    return v0
.end method

.method private assertOutputInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2893
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2894
    return-void
.end method

.method private static findBestThumbnailPresentationTimeUs(Ljava/util/List;JJJ)J
    .locals 16
    .param p1, "durationUs"    # J
    .param p3, "segmentContentPosition"    # J
    .param p5, "segmentContentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
            ">;JJJ)J"
        }
    .end annotation

    .line 2715
    .local p0, "cuePoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;"
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 2716
    return-wide v2

    .line 2719
    :cond_0
    const-wide/16 v4, 0x0

    .line 2720
    .local v4, "maxBitrate":D
    const/4 v1, -0x1

    .line 2721
    .local v1, "bestCueIndex":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2723
    .local v6, "scanLimit":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 2724
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2726
    .local v8, "cue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v9

    const-wide/32 v11, 0x989680

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 2727
    goto :goto_2

    .line 2733
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_2

    .line 2734
    add-int/lit8 v9, v7, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2735
    .local v9, "nextCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    nop

    .line 2736
    invoke-static {v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v10

    invoke-static {v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1100(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 2737
    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v12

    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1100(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v14

    add-long/2addr v12, v14

    sub-long/2addr v10, v12

    .line 2738
    .local v10, "bytesBetweenCues":J
    invoke-static {v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v12

    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 2739
    .end local v9    # "nextCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    .local v12, "durationBetweenCuesUs":J
    goto :goto_1

    .line 2741
    .end local v10    # "bytesBetweenCues":J
    .end local v12    # "durationBetweenCuesUs":J
    :cond_2
    add-long v9, p3, p5

    .line 2743
    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v11

    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1100(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v13

    add-long/2addr v11, v13

    sub-long v10, v9, v11

    .line 2744
    .restart local v10    # "bytesBetweenCues":J
    invoke-static {v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v12

    sub-long v12, p1, v12

    .line 2747
    .restart local v12    # "durationBetweenCuesUs":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    .line 2749
    long-to-double v14, v10

    long-to-double v2, v12

    div-double/2addr v14, v2

    .line 2750
    .local v14, "bitrate":D
    cmpl-double v2, v14, v4

    if-lez v2, :cond_3

    .line 2751
    move-wide v2, v14

    .line 2752
    .end local v4    # "maxBitrate":D
    .local v2, "maxBitrate":D
    move v1, v7

    move-wide v4, v2

    .line 2723
    .end local v2    # "maxBitrate":D
    .end local v8    # "cue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    .end local v10    # "bytesBetweenCues":J
    .end local v12    # "durationBetweenCuesUs":J
    .end local v14    # "bitrate":D
    .restart local v4    # "maxBitrate":D
    :cond_3
    add-int/lit8 v7, v7, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 2757
    .end local v7    # "i":I
    :cond_4
    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    invoke-static {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v2

    :goto_3
    return-wide v2
.end method

.method private getCodecPrivate(Ljava/lang/String;)[B
    .locals 2
    .param p1, "codecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "codecPrivate"
        }
    .end annotation

    .line 2898
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz v0, :cond_0

    .line 2902
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    return-object v0

    .line 2899
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing CodecPrivate for codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    .line 2639
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2652
    :cond_0
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2653
    .local v0, "hdrStaticInfoData":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2654
    .local v1, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2655
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2656
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2657
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2658
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2659
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2660
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2661
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2662
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2663
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2664
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2665
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2666
    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2667
    return-object v0

    .line 2649
    .end local v0    # "hdrStaticInfoData":[B
    .end local v1    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeAddThumbnailMetadata(Landroid/util/SparseArray;JJJ)V
    .locals 8
    .param p2, "durationUs"    # J
    .param p4, "segmentContentPosition"    # J
    .param p6, "segmentContentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 2679
    .local p1, "perTrackCues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;>;"
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2680
    return-void

    .line 2683
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 2684
    .local v1, "cuePoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    goto :goto_1

    .line 2688
    :cond_1
    nop

    .line 2689
    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .end local p2    # "durationUs":J
    .end local p4    # "segmentContentPosition":J
    .end local p6    # "segmentContentSize":J
    .local v2, "durationUs":J
    .local v4, "segmentContentPosition":J
    .local v6, "segmentContentSize":J
    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->findBestThumbnailPresentationTimeUs(Ljava/util/List;JJJ)J

    move-result-wide p2

    .line 2692
    .local p2, "thumbnailTimestampUs":J
    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, p4

    if-eqz p4, :cond_3

    .line 2693
    iget-object p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->format:Landroidx/media3/common/Format;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/Format;

    iget-object p4, p4, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 2694
    .local p4, "existingMetadata":Landroidx/media3/common/Metadata;
    new-instance p5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    invoke-direct {p5, p2, p3}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    .line 2696
    .local p5, "thumbnailMetadata":Landroidx/media3/extractor/metadata/ThumbnailMetadata;
    const/4 p6, 0x0

    const/4 p7, 0x1

    if-nez p4, :cond_2

    .line 2697
    new-instance v0, Landroidx/media3/common/Metadata;

    new-array p7, p7, [Landroidx/media3/common/Metadata$Entry;

    aput-object p5, p7, p6

    invoke-direct {v0, p7}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_0

    .line 2698
    :cond_2
    new-array p7, p7, [Landroidx/media3/common/Metadata$Entry;

    aput-object p5, p7, p6

    invoke-virtual {p4, p7}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v0

    :goto_0
    nop

    .line 2699
    .local v0, "newMetadata":Landroidx/media3/common/Metadata;
    iget-object p6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->format:Landroidx/media3/common/Format;

    invoke-virtual {p6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p6

    invoke-virtual {p6, v0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p6

    invoke-virtual {p6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->format:Landroidx/media3/common/Format;

    .line 2701
    .end local v0    # "newMetadata":Landroidx/media3/common/Metadata;
    .end local p4    # "existingMetadata":Landroidx/media3/common/Metadata;
    .end local p5    # "thumbnailMetadata":Landroidx/media3/extractor/metadata/ThumbnailMetadata;
    :cond_3
    return-void

    .line 2684
    .end local v2    # "durationUs":J
    .end local v4    # "segmentContentPosition":J
    .end local v6    # "segmentContentSize":J
    .local p2, "durationUs":J
    .local p4, "segmentContentPosition":J
    .restart local p6    # "segmentContentSize":J
    :cond_4
    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 2685
    .end local p2    # "durationUs":J
    .end local p4    # "segmentContentPosition":J
    .end local p6    # "segmentContentSize":J
    .restart local v2    # "durationUs":J
    .restart local v4    # "segmentContentPosition":J
    .restart local v6    # "segmentContentSize":J
    :goto_1
    return-void
.end method

.method private static parseFourCcPrivate(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 10
    .param p0, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2771
    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2772
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 2773
    .local v2, "compression":J
    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2774
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v4, "video/divx"

    invoke-direct {v0, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2775
    :cond_0
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 2776
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v4, "video/3gpp"

    invoke-direct {v0, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2777
    :cond_1
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 2780
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2781
    .local v0, "startOffset":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 2782
    .local v4, "bufferData":[B
    move v5, v0

    .local v5, "offset":I
    :goto_0
    array-length v6, v4

    add-int/lit8 v6, v6, -0x4

    if-ge v5, v6, :cond_3

    .line 2783
    aget-byte v6, v4, v5

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v4, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v5, 0x3

    aget-byte v6, v4, v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    .line 2788
    array-length v6, v4

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 2789
    .local v6, "initializationData":[B
    new-instance v7, Landroid/util/Pair;

    const-string/jumbo v8, "video/wvc1"

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 2782
    .end local v6    # "initializationData":[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2792
    .end local v5    # "offset":I
    :cond_3
    const-string v5, "Failed to find FourCC VC1 initialization data"

    invoke-static {v5, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    .end local p0    # "buffer":Landroidx/media3/common/util/ParsableByteArray;
    throw v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2798
    .end local v0    # "startOffset":I
    .end local v2    # "compression":J
    .end local v4    # "bufferData":[B
    .restart local p0    # "buffer":Landroidx/media3/common/util/ParsableByteArray;
    :cond_4
    nop

    .line 2800
    const-string v0, "MatroskaExtractor"

    const-string v2, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v2, "video/x-unknown"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 2795
    :catch_0
    move-exception v0

    .line 2796
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error parsing FourCC private data"

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static parseMsAcmCodecPrivate(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 8
    .param p0, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2868
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 2869
    .local v0, "formatTag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2870
    return v1

    .line 2871
    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 2872
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2873
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$1200()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 2874
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$1200()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2873
    :goto_0
    return v1

    .line 2876
    :cond_2
    return v3

    .line 2878
    .end local v0    # "formatTag":I
    :catch_0
    move-exception v0

    .line 2879
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error parsing MS/ACM codec private"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 10
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2813
    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-byte v3, p0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2817
    const/4 v3, 0x1

    .line 2818
    .local v3, "offset":I
    const/4 v5, 0x0

    .line 2819
    .local v5, "vorbisInfoLength":I
    :goto_0
    aget-byte v6, p0, v3

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    .line 2820
    add-int/lit16 v5, v5, 0xff

    .line 2821
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2823
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    aget-byte v3, p0, v3

    and-int/2addr v3, v7

    add-int/2addr v5, v3

    .line 2825
    const/4 v3, 0x0

    .line 2826
    .local v3, "vorbisSkipLength":I
    :goto_1
    aget-byte v8, p0, v6

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_1

    .line 2827
    add-int/lit16 v3, v3, 0xff

    .line 2828
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2830
    :cond_1
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    aget-byte v6, p0, v6

    and-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 2832
    aget-byte v6, p0, v8

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 2836
    new-array v6, v5, [B

    .line 2837
    .local v6, "vorbisInfo":[B
    invoke-static {p0, v8, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2838
    add-int/2addr v8, v5

    .line 2839
    aget-byte v7, p0, v8

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    .line 2843
    add-int/2addr v8, v3

    .line 2844
    aget-byte v7, p0, v8

    const/4 v9, 0x5

    if-ne v7, v9, :cond_2

    .line 2848
    array-length v7, p0

    sub-int/2addr v7, v8

    new-array v7, v7, [B

    .line 2849
    .local v7, "vorbisBooks":[B
    array-length v9, p0

    sub-int/2addr v9, v8

    invoke-static {p0, v8, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2851
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2852
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2853
    return-object v1

    .line 2845
    .end local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "vorbisBooks":[B
    :cond_2
    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2840
    .restart local p0    # "codecPrivate":[B
    :cond_3
    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2833
    .end local v6    # "vorbisInfo":[B
    .restart local p0    # "codecPrivate":[B
    :cond_4
    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1

    .line 2814
    .end local v3    # "vorbisSkipLength":I
    .end local v5    # "vorbisInfoLength":I
    .end local v8    # "offset":I
    .restart local p0    # "codecPrivate":[B
    :cond_5
    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    .end local p0    # "codecPrivate":[B
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2854
    .restart local p0    # "codecPrivate":[B
    :catch_0
    move-exception v1

    .line 2855
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private samplesHaveSupplementalData(Z)Z
    .locals 2
    .param p1, "isBlockGroup"    # Z

    .line 2626
    const-string v0, "A_OPUS"

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2630
    return p1

    .line 2632
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public initializeFormat(I)V
    .locals 16
    .param p1, "trackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "codecId"
        }
    .end annotation

    .line 2299
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .line 2300
    .local v1, "maxInputSize":I
    const/4 v2, -0x1

    .line 2301
    .local v2, "pcmEncoding":I
    const/4 v3, 0x0

    .line 2302
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 2303
    .local v4, "codecs":Ljava/lang/String;
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x18

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v12, 0x4

    const/16 v13, 0x20

    const/4 v14, 0x0

    const/16 v15, 0x8

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v6, "A_OPUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "A_FLAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "A_EAC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "V_MPEG2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v15

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "S_TEXT/SSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1c

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "V_THEORA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v13

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "V_VP9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v10

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "V_VP8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v14

    goto/16 :goto_1

    :sswitch_11
    const-string v6, "V_AV1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto/16 :goto_1

    :sswitch_12
    const-string v6, "A_DTS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_1

    :sswitch_13
    const-string v6, "A_AC3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    goto/16 :goto_1

    :sswitch_14
    const-string v6, "A_AAC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v6, "S_VOBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1f

    goto/16 :goto_1

    :sswitch_17
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto/16 :goto_1

    :sswitch_18
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_1

    :sswitch_19
    const-string v6, "S_DVBSUB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x21

    goto :goto_1

    :sswitch_1a
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_1b
    const-string v6, "A_MPEG/L3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    goto :goto_1

    :sswitch_1c
    const-string v6, "A_MPEG/L2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    goto :goto_1

    :sswitch_1d
    const-string v6, "A_VORBIS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto :goto_1

    :sswitch_1e
    const-string v6, "A_TRUEHD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    goto :goto_1

    :sswitch_1f
    const-string v6, "A_MS/ACM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    goto :goto_1

    :sswitch_20
    const-string v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v12

    goto :goto_1

    :sswitch_21
    const-string v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v6, ". Setting mimeType to "

    const-string v8, "MatroskaExtractor"

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2500
    move/from16 v8, p1

    const-string v5, "Unrecognized codec identifier."

    invoke-static {v5, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 2493
    :pswitch_0
    const-string v5, "application/dvbsubs"

    .line 2495
    .local v5, "mimeType":Ljava/lang/String;
    new-array v6, v12, [B

    .line 2496
    .local v6, "initializationDataBytes":[B
    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v14, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2497
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2498
    goto/16 :goto_5

    .line 2490
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "initializationDataBytes":[B
    :pswitch_1
    const-string v5, "application/pgs"

    .line 2491
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2486
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_2
    const-string v5, "application/vobsub"

    .line 2487
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2488
    goto/16 :goto_5

    .line 2483
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v5, "text/vtt"

    .line 2484
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2479
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v5, "text/x-ssa"

    .line 2480
    .restart local v5    # "mimeType":Ljava/lang/String;
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$700()[B

    move-result-object v6

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 2481
    goto/16 :goto_5

    .line 2475
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_5
    const-string v5, "application/x-subrip"

    .line 2476
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2460
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_6
    const-string v5, "audio/raw"

    .line 2461
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v7, v13, :cond_1

    .line 2462
    const/4 v2, 0x4

    goto/16 :goto_5

    .line 2464
    :cond_1
    const/4 v2, -0x1

    .line 2465
    const-string v5, "audio/x-unknown"

    .line 2466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    goto/16 :goto_5

    .line 2439
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_7
    const-string v5, "audio/raw"

    .line 2440
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v10, v15, :cond_2

    .line 2441
    const/4 v2, 0x3

    goto/16 :goto_5

    .line 2442
    :cond_2
    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v10, v9, :cond_3

    .line 2443
    const/high16 v2, 0x10000000

    goto/16 :goto_5

    .line 2444
    :cond_3
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v9, v7, :cond_4

    .line 2445
    const/high16 v2, 0x50000000

    goto/16 :goto_5

    .line 2446
    :cond_4
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v7, v13, :cond_5

    .line 2447
    const/high16 v2, 0x60000000

    goto/16 :goto_5

    .line 2449
    :cond_5
    const/4 v2, -0x1

    .line 2450
    const-string v5, "audio/x-unknown"

    .line 2451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    goto/16 :goto_5

    .line 2425
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_8
    const-string v5, "audio/raw"

    .line 2426
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v7}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 2427
    if-nez v2, :cond_a

    .line 2428
    const/4 v2, -0x1

    .line 2429
    const-string v5, "audio/x-unknown"

    .line 2430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2406
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_9
    const-string v5, "audio/raw"

    .line 2407
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2408
    iget v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v7}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v2

    .line 2409
    if-nez v2, :cond_a

    .line 2410
    const/4 v2, -0x1

    .line 2411
    const-string v5, "audio/x-unknown"

    .line 2412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported PCM bit depth: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2420
    :cond_6
    const-string v5, "audio/x-unknown"

    .line 2421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    goto/16 :goto_5

    .line 2402
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_a
    const-string v5, "audio/flac"

    .line 2403
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2404
    goto/16 :goto_5

    .line 2399
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_b
    const-string v5, "audio/vnd.dts.hd"

    .line 2400
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2395
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_c
    const-string v5, "audio/vnd.dts"

    .line 2396
    .restart local v5    # "mimeType":Ljava/lang/String;
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->waitingForDtsAnalysis:Z

    .line 2397
    goto/16 :goto_5

    .line 2390
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_d
    const-string v5, "audio/true-hd"

    .line 2391
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v6, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v6}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 2392
    goto/16 :goto_5

    .line 2387
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_e
    const-string v5, "audio/eac3"

    .line 2388
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2384
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_f
    const-string v5, "audio/ac3"

    .line 2385
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2380
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_10
    const-string v5, "audio/mpeg"

    .line 2381
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 2382
    goto/16 :goto_5

    .line 2376
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_11
    const-string v5, "audio/mpeg-L2"

    .line 2377
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1000

    .line 2378
    goto/16 :goto_5

    .line 2366
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_12
    const-string v5, "audio/mp4a-latm"

    .line 2367
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2368
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v6}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v6

    .line 2371
    .local v6, "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    iget v7, v6, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2372
    iget v7, v6, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2373
    iget-object v4, v6, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 2374
    goto/16 :goto_5

    .line 2356
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "aacConfig":Landroidx/media3/extractor/AacUtil$Config;
    :pswitch_13
    const-string v5, "audio/opus"

    .line 2357
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x1680

    .line 2358
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 2359
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2360
    nop

    .line 2361
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 2360
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    nop

    .line 2363
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 2362
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    goto/16 :goto_5

    .line 2351
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_14
    const-string v5, "audio/vorbis"

    .line 2352
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/16 v1, 0x2000

    .line 2353
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    .line 2354
    goto/16 :goto_5

    .line 2348
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_15
    const-string/jumbo v5, "video/x-unknown"

    .line 2349
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto/16 :goto_5

    .line 2340
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_16
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2341
    invoke-direct {v0, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v5

    .line 2342
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2343
    .local v6, "mimeType":Ljava/lang/String;
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, Ljava/util/List;

    .line 2344
    move-object v5, v6

    goto/16 :goto_5

    .line 2333
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<[B>;>;"
    .end local v6    # "mimeType":Ljava/lang/String;
    :pswitch_17
    const-string/jumbo v5, "video/hevc"

    .line 2334
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v6}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v6

    .line 2335
    .local v6, "hevcConfig":Landroidx/media3/extractor/HevcConfig;
    iget-object v3, v6, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 2336
    iget v7, v6, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2337
    iget-object v4, v6, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 2338
    goto :goto_5

    .line 2326
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "hevcConfig":Landroidx/media3/extractor/HevcConfig;
    :pswitch_18
    const-string/jumbo v5, "video/avc"

    .line 2327
    .restart local v5    # "mimeType":Ljava/lang/String;
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v6}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v6

    .line 2328
    .local v6, "avcConfig":Landroidx/media3/extractor/AvcConfig;
    iget-object v3, v6, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 2329
    iget v7, v6, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2330
    iget-object v4, v6, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 2331
    goto :goto_5

    .line 2321
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "avcConfig":Landroidx/media3/extractor/AvcConfig;
    :pswitch_19
    const-string/jumbo v5, "video/mp4v-es"

    .line 2323
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v6, :cond_7

    move-object v6, v11

    goto :goto_2

    :cond_7
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :goto_2
    move-object v3, v6

    .line 2324
    goto :goto_5

    .line 2316
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1a
    const-string/jumbo v5, "video/mpeg2"

    .line 2317
    .restart local v5    # "mimeType":Ljava/lang/String;
    goto :goto_5

    .line 2312
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1b
    const-string/jumbo v5, "video/av01"

    .line 2313
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v6, :cond_8

    move-object v6, v11

    goto :goto_3

    :cond_8
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_3
    move-object v3, v6

    .line 2314
    goto :goto_5

    .line 2308
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1c
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    .line 2309
    .restart local v5    # "mimeType":Ljava/lang/String;
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v6, :cond_9

    move-object v6, v11

    goto :goto_4

    :cond_9
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_4
    move-object v3, v6

    .line 2310
    goto :goto_5

    .line 2305
    .end local v5    # "mimeType":Ljava/lang/String;
    :pswitch_1d
    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    .line 2306
    .restart local v5    # "mimeType":Ljava/lang/String;
    nop

    .line 2504
    :cond_a
    :goto_5
    iget-object v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v6, :cond_b

    .line 2506
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2507
    invoke-static {v6}, Landroidx/media3/container/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    move-result-object v6

    .line 2508
    .local v6, "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    if-eqz v6, :cond_b

    .line 2509
    iget-object v4, v6, Landroidx/media3/container/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 2510
    const-string/jumbo v5, "video/dolby-vision"

    .line 2514
    .end local v6    # "dolbyVisionConfig":Landroidx/media3/container/DolbyVisionConfig;
    :cond_b
    const/4 v6, 0x0

    .line 2515
    .local v6, "selectionFlags":I
    iget-boolean v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v6, v7

    .line 2516
    iget-boolean v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v7, :cond_c

    const/4 v8, 0x2

    goto :goto_6

    :cond_c
    move v8, v14

    :goto_6
    or-int/2addr v6, v8

    .line 2518
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 2521
    .local v7, "formatBuilder":Landroidx/media3/common/Format$Builder;
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2522
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2523
    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2524
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 2525
    invoke-virtual {v8, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    goto/16 :goto_b

    .line 2526
    :cond_d
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2527
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v8, :cond_10

    .line 2528
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_e

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_7

    :cond_e
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    :goto_7
    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2529
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v8, v9, :cond_f

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_8

    :cond_f
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    :goto_8
    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 2531
    :cond_10
    const/high16 v8, -0x40800000    # -1.0f

    .line 2532
    .local v8, "pixelWidthHeightRatio":F
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v9, v10, :cond_11

    .line 2533
    iget v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 2535
    :cond_11
    const/4 v9, 0x0

    .line 2536
    .local v9, "colorInfo":Landroidx/media3/common/ColorInfo;
    iget-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v10, :cond_12

    .line 2537
    invoke-direct {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v10

    .line 2538
    .local v10, "hdrStaticInfo":[B
    new-instance v11, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v11}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2540
    invoke-virtual {v11, v12}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 2541
    invoke-virtual {v11, v12}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2542
    invoke-virtual {v11, v12}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    .line 2543
    invoke-virtual {v11, v10}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2544
    invoke-virtual {v11, v12}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2545
    invoke-virtual {v11, v12}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v11

    .line 2546
    invoke-virtual {v11}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v9

    .line 2548
    .end local v10    # "hdrStaticInfo":[B
    :cond_12
    const/4 v10, -0x1

    .line 2550
    .local v10, "rotationDegrees":I
    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v11, :cond_13

    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$800()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2551
    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$800()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2553
    :cond_13
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v11, :cond_18

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2554
    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_18

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2555
    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_18

    .line 2557
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_14

    .line 2558
    const/4 v10, 0x0

    goto :goto_a

    .line 2559
    :cond_14
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_15

    .line 2560
    const/16 v10, 0x5a

    goto :goto_a

    .line 2561
    :cond_15
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v12, -0x3ccc0000    # -180.0f

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_17

    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 2562
    const/high16 v12, 0x43340000    # 180.0f

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_16

    goto :goto_9

    .line 2564
    :cond_16
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v12, -0x3d4c0000    # -90.0f

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_18

    .line 2565
    const/16 v10, 0x10e

    goto :goto_a

    .line 2563
    :cond_17
    :goto_9
    const/16 v10, 0xb4

    .line 2568
    :cond_18
    :goto_a
    iget v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2569
    invoke-virtual {v7, v11}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2570
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 2571
    invoke-virtual {v11, v8}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 2572
    invoke-virtual {v11, v10}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2573
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2574
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v11

    .line 2575
    invoke-virtual {v11, v9}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 2576
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v9    # "colorInfo":Landroidx/media3/common/ColorInfo;
    .end local v10    # "rotationDegrees":I
    goto :goto_b

    :cond_19
    const-string v8, "application/x-subrip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2577
    const-string/jumbo v8, "text/x-ssa"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2578
    const-string/jumbo v8, "text/vtt"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2579
    const-string v8, "application/vobsub"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2580
    const-string v8, "application/pgs"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2581
    const-string v8, "application/dvbsubs"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_b

    .line 2583
    :cond_1a
    const-string v8, "Unexpected MIME type."

    invoke-static {v8, v11}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v8

    throw v8

    .line 2587
    :cond_1b
    :goto_b
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v8, :cond_1c

    invoke-static {}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->access$800()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 2588
    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 2591
    :cond_1c
    nop

    .line 2593
    move/from16 v8, p1

    invoke-virtual {v7, v8}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2594
    iget-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->isWebm:Z

    if-eqz v10, :cond_1d

    const-string/jumbo v10, "video/webm"

    goto :goto_c

    :cond_1d
    const-string/jumbo v10, "video/x-matroska"

    :goto_c
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2595
    invoke-virtual {v9, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2596
    invoke-virtual {v9, v1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2597
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2598
    invoke-virtual {v9, v6}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2599
    invoke-virtual {v9, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2600
    invoke-virtual {v9, v4}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 2601
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    .line 2602
    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    iput-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->format:Landroidx/media3/common/Format;

    .line 2603
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 2608
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 2611
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 2615
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 2616
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v0}, Landroidx/media3/extractor/TrueHdSampleRechunker;->reset()V

    .line 2618
    :cond_0
    return-void
.end method
