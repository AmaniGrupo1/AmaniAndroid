.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SEARCH_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67

.field private static final TAG:Ljava/lang/String; = "Mp3Extractor"


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private disableSeeking:Z

.field private endPositionOfLastSampleRead:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

.field private id3Metadata:Landroidx/media3/common/Metadata;

.field private final id3Peeker:Landroidx/media3/extractor/Id3Peeker;

.field private isSeekInProgress:Z

.field private realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekTimeUs:J

.field private seeker:Landroidx/media3/extractor/mp3/Seeker;

.field private final skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field private synchronizedHeaderData:I

.field private xingMetadata:Landroidx/media3/common/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 137
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 194
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 200
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .line 201
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "forcedFirstSampleTimestampUs"    # J

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 210
    or-int/lit8 p1, p1, 0x1

    .line 212
    :cond_0
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    .line 213
    iput-wide p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 214
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 215
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 216
    new-instance v0, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 217
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 218
    new-instance v0, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {v0}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    .line 219
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 220
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 221
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 222
    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-void
.end method

.method private computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 19
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput"
        }
    .end annotation

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v2

    .line 488
    .local v2, "seekFrameSeeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object v3

    .line 490
    .local v3, "metadataSeeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-boolean v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v4, :cond_0

    .line 491
    new-instance v4, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v4}, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object v4

    .line 494
    :cond_0
    const/4 v4, 0x0

    .line 495
    .local v4, "resultSeeker":Landroidx/media3/extractor/mp3/Seeker;
    if-eqz v3, :cond_1

    .line 496
    move-object v4, v3

    goto :goto_0

    .line 497
    :cond_1
    if-eqz v2, :cond_2

    .line 498
    move-object v4, v2

    .line 501
    :cond_2
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 503
    iget v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    .line 504
    :goto_1
    invoke-direct {v0, v1, v7}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v4

    .line 508
    :cond_4
    iget v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v7

    if-nez v7, :cond_5

    .line 509
    new-instance v8, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 511
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v9

    .line 512
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    .line 513
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v13

    invoke-direct/range {v8 .. v14}, Landroidx/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object v4, v8

    .line 516
    :cond_5
    invoke-direct {v0, v4}, Landroidx/media3/extractor/mp3/Mp3Extractor;->shouldFallbackToConstantBitrateSeeking(Landroidx/media3/extractor/mp3/Seeker;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 517
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v7, v9

    if-eqz v7, :cond_9

    .line 518
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    .line 519
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_9

    .line 523
    :cond_6
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataStartPosition()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_7

    .line 524
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataStartPosition()J

    move-result-wide v5

    goto :goto_2

    .line 525
    :cond_7
    const-wide/16 v5, 0x0

    :goto_2
    move-wide v14, v5

    .line 527
    .local v14, "dataStart":J
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_8

    .line 528
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_3

    .line 529
    :cond_8
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    move-wide v12, v5

    :goto_3
    nop

    .line 530
    .local v12, "inputLength":J
    sub-long v5, v12, v14

    .line 531
    .local v5, "audioLength":J
    nop

    .line 536
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v9

    sget-object v11, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 533
    const-wide/32 v7, 0x7a1200

    invoke-static/range {v5 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    .line 532
    invoke-static {v7, v8}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v16

    .line 540
    .local v16, "bitrate":I
    new-instance v11, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    move-object v4, v11

    .end local v5    # "audioLength":J
    .end local v12    # "inputLength":J
    .end local v14    # "dataStart":J
    .end local v16    # "bitrate":I
    goto :goto_5

    .line 547
    :cond_9
    invoke-direct {v0, v4}, Landroidx/media3/extractor/mp3/Mp3Extractor;->shouldFallbackToConstantBitrateSeeking(Landroidx/media3/extractor/mp3/Seeker;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 552
    iget v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    .line 553
    :goto_4
    invoke-direct {v0, v1, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v4

    goto :goto_6

    .line 547
    :cond_b
    :goto_5
    nop

    .line 556
    :goto_6
    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 557
    return-object v4
.end method

.method private computeTimeUs(J)J
    .locals 6
    .param p1, "samplesRead"    # J

    .line 386
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getConstantBitrateSeeker(JLandroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/Seeker;
    .locals 15
    .param p1, "infoFramePosition"    # J
    .param p3, "infoFrame"    # Landroidx/media3/extractor/mp3/XingFrame;
    .param p4, "fallbackStreamLength"    # J

    .line 657
    move-object/from16 v0, p3

    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/XingFrame;->computeDurationUs()J

    move-result-wide v5

    .line 658
    .local v5, "durationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 659
    return-object v2

    .line 666
    :cond_0
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    .line 667
    iget-wide v1, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long v1, p1, v1

    .line 668
    .local v1, "streamLength":J
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    iget-object v7, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    move-wide v8, v1

    move-wide v1, v3

    .local v3, "audioLength":J
    goto :goto_0

    .line 669
    .end local v1    # "streamLength":J
    .end local v3    # "audioLength":J
    :cond_1
    cmp-long v1, p4, v7

    if-eqz v1, :cond_2

    .line 670
    move-wide/from16 v1, p4

    .line 671
    .restart local v1    # "streamLength":J
    sub-long v3, p4, p1

    iget-object v7, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    move-wide v8, v1

    move-wide v1, v3

    .line 680
    .local v1, "audioLength":J
    .local v8, "streamLength":J
    :goto_0
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 682
    const-wide/32 v3, 0x7a1200

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 681
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v12

    .line 687
    .local v12, "averageBitrate":I
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->frameCount:J

    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 688
    invoke-static {v1, v2, v3, v4, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v13

    .line 692
    .local v13, "frameSize":I
    new-instance v7, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-object v3, v0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v3, v3

    add-long v10, p1, v3

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-object v7

    .line 673
    .end local v1    # "audioLength":J
    .end local v8    # "streamLength":J
    .end local v12    # "averageBitrate":I
    .end local v13    # "frameSize":I
    :cond_2
    return-object v2
.end method

.method private getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "allowSeeksIfLengthUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 638
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 639
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 640
    new-instance v2, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 641
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move v8, p2

    .end local p2    # "allowSeeksIfLengthUnknown":Z
    .local v8, "allowSeeksIfLengthUnknown":Z
    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V

    .line 640
    return-object v2
.end method

.method private static getId3TlenUs(Landroidx/media3/common/Metadata;)J
    .locals 4
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;

    .line 764
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p0, :cond_0

    .line 765
    return-wide v0

    .line 767
    :cond_0
    const-class v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    new-instance v3, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda2;-><init>()V

    .line 768
    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;Lcom/google/common/base/Predicate;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 769
    .local v2, "tlenFrame":Landroidx/media3/extractor/metadata/id3/TextInformationFrame;
    if-nez v2, :cond_1

    .line 770
    return-wide v0

    .line 772
    :cond_1
    iget-object v0, v2, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 2
    .param p0, "frame"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "xingBase"    # I

    .line 734
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 735
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 736
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 737
    .local v0, "headerData":I
    const v1, 0x58696e67

    if-eq v0, v1, :cond_0

    const v1, 0x496e666f

    if-ne v0, v1, :cond_1

    .line 738
    :cond_0
    return v0

    .line 741
    .end local v0    # "headerData":I
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_2

    .line 742
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 743
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x56425249

    if-ne v0, v1, :cond_2

    .line 744
    return v1

    .line 747
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static headersMatch(IJ)Z
    .locals 4
    .param p0, "headerA"    # I
    .param p1, "headerB"    # J

    .line 725
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/32 v2, -0x1f400

    and-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getId3TlenUs$2(Landroidx/media3/extractor/metadata/id3/TextInformationFrame;)Z
    .locals 2
    .param p0, "tif"    # Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 768
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    const-string v1, "TLEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1(IIIII)Z
    .locals 3
    .param p0, "majorVersion"    # I
    .param p1, "id0"    # I
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .param p4, "id3"    # I

    .line 139
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 v0, 0x4c

    if-ne p2, v0, :cond_2

    if-ne p3, v0, :cond_2

    const/16 v0, 0x54

    if-eq p4, v0, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;
    .locals 4
    .param p0, "metadata"    # Landroidx/media3/common/Metadata;
    .param p1, "firstFramePosition"    # J

    .line 753
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 754
    return-object v0

    .line 756
    :cond_0
    const-class v1, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->getFirstEntryOfType(Ljava/lang/Class;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    .line 757
    .local v1, "mlltFrame":Landroidx/media3/extractor/metadata/id3/MlltFrame;
    if-nez v1, :cond_1

    .line 758
    return-object v0

    .line 760
    :cond_1
    invoke-static {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v2

    invoke-static {p1, p2, v1, v2, v3}, Landroidx/media3/extractor/mp3/MlltSeeker;->create(JLandroidx/media3/extractor/metadata/id3/MlltFrame;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object v0

    return-object v0
.end method

.method private maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 14
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    move-object v7, v0

    .line 579
    .local v7, "frame":Landroidx/media3/common/util/ParsableByteArray;
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 581
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 583
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 581
    const/16 v3, 0x15

    if-eqz v0, :cond_0

    .line 582
    iget v0, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_2

    const/16 v3, 0x24

    goto :goto_0

    .line 583
    :cond_0
    iget v0, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    :cond_2
    :goto_0
    move v0, v3

    .line 584
    .local v0, "xingBase":I
    invoke-static {v7, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v1

    .line 586
    .local v1, "seekHeader":I
    sparse-switch v1, :sswitch_data_0

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "seeker":Landroidx/media3/extractor/mp3/Seeker;
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto/16 :goto_1

    .line 621
    .end local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    :sswitch_0
    nop

    .line 622
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-static/range {v2 .. v7}, Landroidx/media3/extractor/mp3/VbriSeeker;->create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;

    move-result-object v2

    .line 623
    .restart local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 624
    goto/16 :goto_1

    .line 589
    .end local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    :sswitch_1
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-static {v2, v7}, Landroidx/media3/extractor/mp3/XingFrame;->parse(Landroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/XingFrame;

    move-result-object v11

    .line 590
    .local v11, "xingFrame":Landroidx/media3/extractor/mp3/XingFrame;
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v2}, Landroidx/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v11, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, v11, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    if-eq v2, v3, :cond_3

    .line 593
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v3, v11, Landroidx/media3/extractor/mp3/XingFrame;->encoderDelay:I

    iput v3, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 594
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v3, v11, Landroidx/media3/extractor/mp3/XingFrame;->encoderPadding:I

    iput v3, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 596
    :cond_3
    invoke-virtual {v11}, Landroidx/media3/extractor/mp3/XingFrame;->getMetadata()Landroidx/media3/common/Metadata;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->xingMetadata:Landroidx/media3/common/Metadata;

    .line 597
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    .line 598
    .local v9, "startPosition":J
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, v11, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 600
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    iget-wide v4, v11, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v4, v9

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data size mismatch between stream ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 604
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and Xing frame ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v11, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), using Xing value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    const-string v3, "Mp3Extractor"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_4
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 614
    const v2, 0x58696e67

    if-ne v1, v2, :cond_5

    .line 615
    invoke-static {v11, v9, v10}, Landroidx/media3/extractor/mp3/XingSeeker;->create(Landroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/XingSeeker;

    move-result-object v2

    .restart local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    goto :goto_1

    .line 617
    .end local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    :cond_5
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(JLandroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v2

    .line 619
    .restart local v2    # "seeker":Landroidx/media3/extractor/mp3/Seeker;
    nop

    .line 631
    .end local v9    # "startPosition":J
    .end local v11    # "xingFrame":Landroidx/media3/extractor/mp3/XingFrame;
    :goto_1
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x496e666f -> :sswitch_1
        0x56425249 -> :sswitch_0
        0x58696e67 -> :sswitch_1
    .end sparse-switch
.end method

.method private maybeUpdateCbrDurationToLastSample()V
    .locals 4

    .line 706
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v0, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 707
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 709
    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 711
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->copyWithNewDataEndPosition(J)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 712
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 713
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 715
    :cond_0
    return-void
.end method

.method private peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    .line 470
    .local v2, "dataEndPosition":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 472
    return v1

    .line 476
    .end local v2    # "dataEndPosition":J
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 477
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 476
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/EOFException;
    return v1
.end method

.method private readInternal(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 4
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 287
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1

    .line 294
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    if-nez v0, :cond_4

    .line 295
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 296
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 298
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 300
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->xingMetadata:Landroidx/media3/common/Metadata;

    .line 302
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    .line 300
    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->xingMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_1

    .line 302
    :cond_1
    nop

    :goto_1
    nop

    .local v1, "metadata":Landroidx/media3/common/Metadata;
    goto :goto_2

    .line 304
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->xingMetadata:Landroidx/media3/common/Metadata;

    .line 306
    .restart local v1    # "metadata":Landroidx/media3/common/Metadata;
    :goto_2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 308
    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 310
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 311
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 312
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v2, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 313
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v2, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 314
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 316
    .local v0, "format":Landroidx/media3/common/Format$Builder;
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v2

    const v3, -0x7fffffff

    if-eq v2, v3, :cond_3

    .line 317
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 319
    :cond_3
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 320
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    .end local v0    # "format":Landroidx/media3/common/Format$Builder;
    .end local v1    # "metadata":Landroidx/media3/common/Metadata;
    goto :goto_3

    .line 321
    :cond_4
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 322
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 323
    .local v0, "inputPosition":J
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 325
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_4

    .line 321
    .end local v0    # "inputPosition":J
    :cond_5
    :goto_3
    nop

    .line 328
    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    return v0
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 11
    .param p1, "extractorInput"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 333
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 334
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 335
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    return v2

    .line 338
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 339
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 340
    .local v0, "sampleHeaderData":I
    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    invoke-static {v0}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 348
    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 349
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    invoke-interface {v4, v8, v9}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 350
    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 352
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 355
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 356
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v6, v6, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 357
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v4, v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v4, :cond_4

    .line 358
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 361
    .local v4, "indexSeeker":Landroidx/media3/extractor/mp3/IndexSeeker;
    iget-wide v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 362
    invoke-direct {p0, v5, v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 361
    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/media3/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    .line 364
    iget-boolean v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v5, :cond_4

    iget-wide v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v4, v5, v6}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 365
    iput-boolean v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 366
    iget-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v5, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_1

    .line 343
    .end local v4    # "indexSeeker":Landroidx/media3/extractor/mp3/IndexSeeker;
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 344
    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 345
    return v3

    .line 370
    .end local v0    # "sampleHeaderData":I
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    .line 371
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_5

    .line 372
    return v2

    .line 374
    :cond_5
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 375
    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_6

    .line 376
    return v3

    .line 378
    :cond_6
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 379
    invoke-direct {p0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v8, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 378
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 380
    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v4, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 381
    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 382
    return v3
.end method

.method private shouldFallbackToConstantBitrateSeeking(Landroidx/media3/extractor/mp3/Seeker;)Z
    .locals 2
    .param p1, "seeker"    # Landroidx/media3/extractor/mp3/Seeker;

    .line 561
    invoke-interface {p1}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 11
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "validFrameCount":I
    const/4 v1, 0x0

    .line 392
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v2, 0x0

    .line 393
    .local v2, "peekedId3Bytes":I
    const/4 v3, 0x0

    .line 394
    .local v3, "searchedBytes":I
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 395
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/high16 v5, 0x20000

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 398
    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    .line 400
    .local v4, "parseAllId3Frames":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    sget-object v8, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 401
    .local v8, "id3FramePredicate":Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    :goto_1
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    invoke-virtual {v9, p1, v8, v5}, Landroidx/media3/extractor/Id3Peeker;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object v9

    iput-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    .line 402
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    if-eqz v9, :cond_2

    .line 403
    iget-object v9, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget-object v10, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v9, v10}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    .line 405
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v9

    long-to-int v2, v9

    .line 406
    if-nez p2, :cond_3

    .line 407
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 411
    .end local v4    # "parseAllId3Frames":Z
    .end local v8    # "id3FramePredicate":Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    if-lez v0, :cond_4

    .line 414
    goto :goto_4

    .line 416
    :cond_4
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 417
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 419
    :cond_5
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 420
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 422
    .local v4, "headerData":I
    if-eqz v1, :cond_6

    int-to-long v8, v1

    .line 423
    invoke-static {v4, v8, v9}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 424
    :cond_6
    invoke-static {v4}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v8

    move v9, v8

    .local v9, "frameSize":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_b

    .line 426
    .end local v9    # "frameSize":I
    :cond_7
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "searchedBytes":I
    .local v8, "searchedBytes":I
    if-ne v3, v5, :cond_9

    .line 427
    if-eqz p2, :cond_8

    .line 431
    return v6

    .line 428
    :cond_8
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 429
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 433
    :cond_9
    const/4 v0, 0x0

    .line 434
    const/4 v1, 0x0

    .line 435
    if-eqz p2, :cond_a

    .line 436
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 437
    add-int v3, v2, v8

    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_3

    .line 439
    :cond_a
    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 452
    .end local v4    # "headerData":I
    :goto_3
    move v3, v8

    goto :goto_7

    .line 443
    .end local v8    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v4    # "headerData":I
    .restart local v9    # "frameSize":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 444
    if-ne v0, v7, :cond_c

    .line 445
    iget-object v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v8, v4}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 446
    move v1, v4

    goto :goto_6

    .line 447
    :cond_c
    const/4 v8, 0x4

    if-ne v0, v8, :cond_e

    .line 448
    nop

    .line 454
    .end local v4    # "headerData":I
    .end local v9    # "frameSize":I
    :goto_4
    if-eqz p2, :cond_d

    .line 455
    add-int v4, v2, v3

    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_5

    .line 457
    :cond_d
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 459
    :goto_5
    iput v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 460
    return v7

    .line 450
    .restart local v4    # "headerData":I
    .restart local v9    # "frameSize":I
    :cond_e
    :goto_6
    add-int/lit8 v8, v9, -0x4

    invoke-interface {p1, v8}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 452
    .end local v4    # "headerData":I
    .end local v9    # "frameSize":I
    :goto_7
    goto :goto_2
.end method


# virtual methods
.method public disableSeeking()V
    .locals 1

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    .line 281
    return-void
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 233
    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 234
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 235
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 236
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 237
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 261
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readInternal(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    .line 262
    .local v0, "readResult":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v1, v1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_0

    .line 264
    iget-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-direct {p0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v1

    .line 265
    .local v1, "durationUs":J
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v3, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    .line 267
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    .line 268
    iget-object v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/media3/extractor/TrackOutput;->durationUs(J)V

    .line 271
    .end local v1    # "durationUs":J
    :cond_0
    return v0
.end method

.method public release()V
    .locals 0

    .line 256
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 242
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 243
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 244
    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 245
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 246
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 247
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v0, v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {v0, p3, p4}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 249
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 251
    :cond_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
