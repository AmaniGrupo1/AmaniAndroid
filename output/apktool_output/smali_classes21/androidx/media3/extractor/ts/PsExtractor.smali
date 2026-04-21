.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ts/PsExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 81
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 86
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 89
    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    new-instance v1, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .locals 7
    .param p1, "inputLength"    # J
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 301
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 302
    new-instance v1, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 304
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 305
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v3

    move-wide v5, p1

    .end local p1    # "inputLength":J
    .local v5, "inputLength":J
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 307
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_0

    .line 309
    .end local v5    # "inputLength":J
    .restart local p1    # "inputLength":J
    :cond_0
    move-wide v5, p1

    .end local p1    # "inputLength":J
    .restart local v5    # "inputLength":J
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_0

    .line 299
    .end local v5    # "inputLength":J
    .restart local p1    # "inputLength":J
    :cond_1
    move-wide v5, p1

    .line 312
    .end local p1    # "inputLength":J
    .restart local v5    # "inputLength":J
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 137
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 138
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 19
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 181
    .local v3, "inputLength":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    .line 182
    .local v7, "canReadDuration":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v10}, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 183
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v5

    return v5

    .line 185
    :cond_1
    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 186
    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v10}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 187
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v5

    return v5

    .line 190
    :cond_2
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 192
    cmp-long v10, v3, v5

    if-eqz v10, :cond_3

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v10

    sub-long v10, v3, v10

    goto :goto_1

    :cond_3
    move-wide v10, v5

    .line 193
    .local v10, "peekBytesLeft":J
    :goto_1
    cmp-long v5, v10, v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    const-wide/16 v12, 0x4

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    .line 194
    return v6

    .line 197
    :cond_4
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v12, 0x4

    invoke-interface {v1, v5, v9, v12, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_5

    .line 198
    return v6

    .line 201
    :cond_5
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 202
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 203
    .local v5, "nextStartCode":I
    const/16 v12, 0x1b9

    if-ne v5, v12, :cond_6

    .line 204
    return v6

    .line 205
    :cond_6
    const/16 v6, 0x1ba

    if-ne v5, v6, :cond_7

    .line 207
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/16 v8, 0xa

    invoke-interface {v1, v6, v9, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 210
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 213
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 216
    .local v6, "packStuffingLength":I
    add-int/lit8 v8, v6, 0xe

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 217
    return v9

    .line 218
    .end local v6    # "packStuffingLength":I
    :cond_7
    const/16 v6, 0x1bb

    const/4 v12, 0x2

    if-ne v5, v6, :cond_8

    .line 220
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-interface {v1, v6, v9, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 223
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 224
    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 225
    .local v6, "systemHeaderLength":I
    add-int/lit8 v8, v6, 0x6

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 226
    return v9

    .line 227
    .end local v6    # "systemHeaderLength":I
    :cond_8
    and-int/lit16 v6, v5, -0x100

    shr-int/lit8 v6, v6, 0x8

    if-eq v6, v8, :cond_9

    .line 228
    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 229
    return v9

    .line 234
    :cond_9
    and-int/lit16 v6, v5, 0xff

    .line 237
    .local v6, "streamId":I
    iget-object v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 238
    .local v13, "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    iget-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v14, :cond_10

    .line 239
    if-nez v13, :cond_d

    .line 240
    const/4 v14, 0x0

    .line 241
    .local v14, "elementaryStreamReader":Landroidx/media3/extractor/ts/ElementaryStreamReader;
    const/16 v15, 0xbd

    const-string/jumbo v9, "video/mp2p"

    if-ne v6, v15, :cond_a

    .line 245
    new-instance v15, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v15, v9}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    .line 246
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 247
    move-object/from16 v17, v13

    .end local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .local v17, "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    .line 248
    .end local v17    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .restart local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    :cond_a
    move-object/from16 v17, v13

    .end local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .restart local v17    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    and-int/lit16 v12, v6, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_b

    .line 249
    new-instance v12, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v12, v9}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    move-object v14, v12

    .line 250
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 251
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    .line 252
    :cond_b
    and-int/lit16 v12, v6, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_c

    .line 253
    new-instance v12, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {v12, v9}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Ljava/lang/String;)V

    move-object v14, v12

    .line 254
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 255
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    .line 257
    :cond_c
    :goto_2
    if-eqz v14, :cond_e

    .line 258
    new-instance v9, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v12, 0x100

    invoke-direct {v9, v6, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 259
    .local v9, "idGenerator":Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v14, v12, v9}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 260
    new-instance v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v12, v14, v13}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 261
    .end local v17    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .local v12, "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    iget-object v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v13, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v13, v12

    goto :goto_3

    .line 239
    .end local v9    # "idGenerator":Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;
    .end local v12    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .end local v14    # "elementaryStreamReader":Landroidx/media3/extractor/ts/ElementaryStreamReader;
    .restart local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    :cond_d
    move-object/from16 v17, v13

    .line 265
    .end local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .restart local v17    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    :cond_e
    move-object/from16 v13, v17

    .end local v17    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    .restart local v13    # "payloadReader":Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    :goto_3
    iget-boolean v9, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v9, :cond_f

    iget-boolean v9, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v9, :cond_f

    .line 266
    iget-wide v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v17, 0x2000

    add-long v8, v8, v17

    goto :goto_4

    .line 267
    :cond_f
    const-wide/32 v8, 0x100000

    :goto_4
    nop

    .line 268
    .local v8, "maxSearchPosition":J
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v17

    cmp-long v14, v17, v8

    if-lez v14, :cond_11

    .line 269
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 270
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v12}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto :goto_5

    .line 238
    .end local v8    # "maxSearchPosition":J
    :cond_10
    move-object/from16 v17, v13

    .line 275
    :cond_11
    :goto_5
    iget-object v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v15, 0x2

    invoke-interface {v1, v8, v9, v15}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 276
    iget-object v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 277
    iget-object v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 278
    .local v8, "payloadLength":I
    add-int/lit8 v9, v8, 0x6

    .line 280
    .local v9, "pesLength":I
    if-nez v13, :cond_12

    .line 282
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_6

    .line 284
    :cond_12
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 286
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    const/4 v14, 0x0

    invoke-interface {v1, v12, v14, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 287
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v14, 0x6

    invoke-virtual {v12, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 288
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v12}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 289
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 292
    :goto_6
    const/16 v16, 0x0

    return v16
.end method

.method public release()V
    .locals 0

    .line 173
    return-void
.end method

.method public seek(JJ)V
    .locals 7
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 147
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 148
    .local v0, "resetTimestampAdjuster":Z
    :goto_0
    if-nez v0, :cond_2

    .line 149
    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v5}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v5

    .line 153
    .local v5, "adjusterFirstSampleTimestampUs":J
    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    cmp-long v2, v5, p3

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    move v0, v1

    .line 158
    .end local v5    # "adjusterFirstSampleTimestampUs":J
    :cond_2
    if-eqz v0, :cond_3

    .line 159
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 162
    :cond_3
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v1, p3, p4}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 165
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 166
    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {v2}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seek()V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 9
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 96
    .local v1, "scratch":[B
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 99
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    .line 104
    return v2

    .line 107
    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    .line 108
    return v2

    .line 111
    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    .line 112
    return v2

    .line 115
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    .line 116
    return v2

    .line 119
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 120
    return v2

    .line 123
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    .line 124
    return v2

    .line 127
    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 128
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 130
    invoke-interface {p1, v1, v2, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 131
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method
