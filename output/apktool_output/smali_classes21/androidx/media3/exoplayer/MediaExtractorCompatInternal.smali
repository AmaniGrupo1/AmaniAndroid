.class public Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
.super Ljava/lang/Object;
.source "MediaExtractorCompatInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;,
        Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "MediaExtractorCompatInt"


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private currentDataSource:Landroidx/media3/datasource/DataSource;

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private hasBeenPrepared:Z

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logSessionId:Landroid/media/metrics/LogSessionId;

.field private offsetInCurrentFile:J

.field private pendingSeek:Landroidx/media3/extractor/SeekPoint;

.field private final positionHolder:Landroidx/media3/extractor/PositionHolder;

.field private final progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

.field private final sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:Landroidx/media3/extractor/SeekMap;

.field private final selectedTrackIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private upstreamFormatsCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 3
    .param p1, "progressiveMediaExtractor"    # Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .param p2, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 149
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 150
    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    .line 151
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-direct {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    .line 155
    new-instance v0, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 156
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 157
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    .line 160
    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    .line 93
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracksEnded:Z

    return v0
.end method

.method static synthetic access$402(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method static synthetic access$602(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/extractor/SeekMap;)Landroidx/media3/extractor/SeekMap;
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
    .param p1, "x1"    # Landroidx/media3/extractor/SeekMap;

    .line 93
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
    .param p1, "x1"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    .param p2, "x2"    # Landroidx/media3/common/Format;

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    return-object v0
.end method

.method private advanceToSampleOrEndOfInput()Z
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sampleMetadataQueue.peekFirst()"
        }
        result = true
    .end annotation

    .line 757
    const-string v0, "Treating exception as the end of input."

    const-string v1, "MediaExtractorCompatInt"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->maybeResolvePendingSeek()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 761
    nop

    .line 763
    const/4 v3, 0x0

    .line 765
    .local v3, "seenEndOfInput":Z
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 767
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    .line 768
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    iget v6, v6, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 767
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 769
    return v5

    .line 772
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->skipOneSample()V

    goto :goto_0

    .line 774
    :cond_1
    if-nez v3, :cond_4

    .line 778
    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {v4, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->read(Landroidx/media3/extractor/PositionHolder;)I

    move-result v4

    .line 779
    .local v4, "result":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 780
    const/4 v3, 0x1

    goto :goto_2

    .line 781
    :cond_2
    if-ne v4, v5, :cond_3

    .line 782
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v5, v5, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v5, v6}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->reopenCurrentDataSource(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 784
    .end local v4    # "result":I
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 785
    .local v4, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v1, v0, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 786
    const/4 v3, 0x1

    .line 787
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    goto :goto_0

    .line 790
    :cond_4
    return v2

    .line 758
    .end local v3    # "seenEndOfInput":Z
    :catch_2
    move-exception v3

    .line 759
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 760
    return v2
.end method

.method private buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # J

    .line 862
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 864
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 865
    invoke-virtual {v0, p2, p3}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 866
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 869
    .local v0, "dataSpec":Landroidx/media3/datasource/DataSpec$Builder;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->httpRequestHeaders:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->httpRequestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 872
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    return-object v1
.end method

.method private maybeResolvePendingSeek()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    if-nez v0, :cond_0

    .line 847
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/SeekPoint;

    .line 850
    .local v0, "pendingSeek":Landroidx/media3/extractor/SeekPoint;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-wide v2, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v4, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->seek(JJ)V

    .line 851
    iget-wide v1, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->reopenCurrentDataSource(J)V

    .line 852
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    .line 853
    return-void
.end method

.method private onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .locals 5
    .param p1, "mediaExtractorSampleQueue"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    .param p2, "newUpstreamFormat"    # Landroidx/media3/common/Format;

    .line 825
    iget v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->upstreamFormatsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->upstreamFormatsCount:I

    .line 826
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->setMainTrackIndex(I)V

    .line 827
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, v4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    nop

    .line 834
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "compatibilityTrackMimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 836
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->setCompatibilityTrackIndex(I)V

    .line 837
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    new-instance v3, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    invoke-direct {v3, p1, v1, v0, v4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_0
    return-void
.end method

.method private peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 6
    .param p1, "decoderInputBuffer"    # Landroidx/media3/decoder/DecoderInputBuffer;

    .line 728
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    .line 729
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    iget v1, v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    .line 730
    .local v0, "trackOfSample":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    .line 732
    .local v1, "sampleQueue":Landroidx/media3/exoplayer/source/SampleQueue;
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 733
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v2

    .line 734
    .local v2, "result":I
    const/4 v5, -0x5

    if-ne v2, v5, :cond_0

    .line 736
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 737
    invoke-virtual {v1, v5, p1, v3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v2

    .line 740
    :cond_0
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    .line 742
    const/4 v5, -0x4

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 743
    return-void
.end method

.method private populatePlatformCryptoInfoParameters(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 578
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    .line 579
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/CryptoInfo;

    invoke-virtual {v0}, Landroidx/media3/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 580
    .local v0, "platformCryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    iget v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 581
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 582
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 583
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 584
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 585
    iget v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iput v1, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 586
    return-void
.end method

.method private prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 11
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->hasBeenPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 325
    iput-boolean v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->hasBeenPrepared:Z

    .line 326
    iget-wide v2, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->offsetInCurrentFile:J

    .line 327
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 329
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p2}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8

    .line 330
    .local v8, "length":J
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 332
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 333
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    new-instance v10, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;)V

    .line 330
    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V

    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "preparing":Z
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    .line 340
    .end local v0    # "preparing":Z
    .local v2, "preparing":Z
    .local v3, "error":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_6

    .line 343
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {v0, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->read(Landroidx/media3/extractor/PositionHolder;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .local v0, "result":I
    goto :goto_2

    .line 344
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v4, -0x1

    .line 347
    .local v4, "result":I
    move-object v3, v0

    move v0, v4

    .line 349
    .end local v4    # "result":I
    .local v0, "result":I
    :goto_2
    iget-boolean v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracksEnded:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->upstreamFormatsCount:I

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    :goto_3
    move v4, v1

    :goto_4
    move v2, v4

    .line 350
    if-nez v3, :cond_4

    if-eqz v2, :cond_2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    goto :goto_5

    .line 358
    :cond_2
    if-ne v0, v1, :cond_3

    .line 359
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v4, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->reopenCurrentDataSource(J)V

    .line 361
    .end local v0    # "result":I
    :cond_3
    goto :goto_0

    .line 352
    .restart local v0    # "result":I
    :cond_4
    :goto_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->release()V

    .line 354
    if-eqz v3, :cond_5

    .line 355
    const-string v1, "Exception encountered while parsing input media."

    goto :goto_6

    .line 356
    :cond_5
    const-string v1, "Reached end of input before preparation completed."

    :goto_6
    nop

    .line 357
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4

    .line 363
    .end local v0    # "result":I
    .end local v1    # "message":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private reopenCurrentDataSource(J)V
    .locals 10
    .param p1, "newPositionInStream"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/datasource/DataSource;

    .line 806
    .local v2, "currentDataSource":Landroidx/media3/datasource/DataSource;
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 807
    .local v3, "currentUri":Landroid/net/Uri;
    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 808
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->offsetInCurrentFile:J

    add-long/2addr v0, p1

    .line 810
    invoke-direct {p0, v3, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 809
    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    .line 811
    .local v0, "length":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 812
    add-long/2addr v0, p1

    move-wide v7, v0

    goto :goto_0

    .line 811
    :cond_0
    move-wide v7, v0

    .line 814
    .end local v0    # "length":J
    .local v7, "length":J
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 817
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    new-instance v9, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;)V

    .line 814
    move-wide v5, p1

    .end local p1    # "newPositionInStream":J
    .local v5, "newPositionInStream":J
    invoke-interface/range {v1 .. v9}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V

    .line 821
    return-void
.end method

.method private skipOneSample()V
    .locals 3

    .line 796
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->removeFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    .line 797
    .local v0, "trackIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    .line 798
    .local v1, "track":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->isCompatibilityTrack:Z

    if-nez v2, :cond_0

    .line 800
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->discardFrontSample()V

    .line 802
    :cond_0
    return-void
.end method


# virtual methods
.method public advance()Z
    .locals 1

    .line 480
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->skipOneSample()V

    .line 485
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    return v0
.end method

.method public getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1

    .line 717
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method public getCachedDuration()J
    .locals 10

    .line 626
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 627
    return-wide v1

    .line 630
    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    .line 631
    .local v3, "largestReadTimestampUs":J
    const-wide/high16 v5, -0x8000000000000000L

    .line 632
    .local v5, "largestQueuedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 633
    iget-object v7, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    .line 635
    .local v7, "mediaExtractorSampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    nop

    .line 636
    invoke-virtual {v7}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 637
    nop

    .line 638
    invoke-virtual {v7}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 632
    .end local v7    # "mediaExtractorSampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :cond_1
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 642
    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 643
    return-wide v1

    .line 646
    :cond_3
    cmp-long v0, v3, v7

    if-nez v0, :cond_4

    .line 647
    const-wide/16 v3, 0x0

    .line 649
    :cond_4
    sub-long v0, v5, v3

    const-wide/16 v7, 0x2710

    add-long/2addr v0, v7

    return-wide v0
.end method

.method public getDrmInitData()Landroidx/media3/common/DrmInitData;
    .locals 4

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    .line 612
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->access$100(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroidx/media3/common/Format;

    move-result-object v1

    .line 613
    .local v1, "format":Landroidx/media3/common/Format;
    iget-object v2, v1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez v2, :cond_0

    .line 614
    nop

    .line 610
    .end local v1    # "format":Landroidx/media3/common/Format;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    .restart local v1    # "format":Landroidx/media3/common/Format;
    :cond_0
    iget-object v2, v1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    return-object v2

    .line 618
    .end local v0    # "i":I
    .end local v1    # "format":Landroidx/media3/common/Format;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 599
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->logSessionId:Landroid/media/metrics/LogSessionId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->logSessionId:Landroid/media/metrics/LogSessionId;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    :goto_0
    return-object v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 5

    .line 670
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 671
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->getUnderlyingImplementationName()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "formatName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 673
    const-string v2, "android.media.mediaextractor.fmt"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 676
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    .line 677
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->access$100(Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroidx/media3/common/Format;

    move-result-object v2

    .line 678
    .local v2, "format":Landroidx/media3/common/Format;
    iget-object v3, v2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 679
    const-string v3, "android.media.mediaextractor.mime"

    iget-object v4, v2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v2    # "format":Landroidx/media3/common/Format;
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "android.media.mediaextractor.ntrk"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 683
    return-object v0
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->getDrmInitData()Landroidx/media3/common/DrmInitData;

    move-result-object v0

    .line 696
    .local v0, "drmInitData":Landroidx/media3/common/DrmInitData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 697
    return-object v1

    .line 700
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v2, "psshDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v3, v4, :cond_3

    .line 702
    invoke-virtual {v0, v3}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v4

    .line 703
    .local v4, "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    iget-object v5, v4, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v5, :cond_1

    .line 704
    goto :goto_1

    .line 707
    :cond_1
    iget-object v5, v4, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v5}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v5

    .line 708
    .local v5, "parsedPsshAtom":Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-eqz v5, :cond_2

    .line 709
    iget-object v6, v5, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    iget-object v7, v5, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .end local v4    # "schemeData":Landroidx/media3/common/DrmInitData$SchemeData;
    .end local v5    # "parsedPsshAtom":Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 564
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 565
    return v1

    .line 567
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    .line 568
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 569
    .local v0, "isEncrypted":Z
    :goto_0
    if-nez v0, :cond_2

    .line 570
    return v1

    .line 572
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 573
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->populatePlatformCryptoInfoParameters(Landroid/media/MediaCodec$CryptoInfo;)V

    .line 574
    return v2
.end method

.method public getSampleFlags()I
    .locals 1

    .line 550
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const/4 v0, -0x1

    return v0

    .line 553
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->flags:I

    return v0
.end method

.method public getSampleSize()J
    .locals 4

    .line 527
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const-wide/16 v0, -0x1

    return-wide v0

    .line 530
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 531
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementEnabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 532
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 533
    .local v1, "sampleSize":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    int-to-long v2, v1

    return-wide v2
.end method

.method public getSampleTime()J
    .locals 2

    .line 542
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-wide/16 v0, -0x1

    return-wide v0

    .line 545
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->timeUs:J

    return-wide v0
.end method

.method public getSampleTrackIndex()I
    .locals 1

    .line 519
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, -0x1

    return v0

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->trackIndex:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 10
    .param p1, "trackIndex"    # I

    .line 389
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    .line 390
    .local v0, "track":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 391
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->createDownstreamMediaFormat(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 392
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->trackDurationUs:J

    .line 393
    .local v2, "trackDurationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const-string v7, "durationUs"

    if-eqz v6, :cond_0

    .line 394
    invoke-virtual {v1, v7, v2, v3}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v6}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v4}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v4

    invoke-virtual {v1, v7, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 398
    :cond_1
    :goto_0
    return-object v1
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 4

    .line 659
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->getCachedDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .line 500
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, -0x1

    return v0

    .line 504
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 505
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 506
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object p1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 507
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 509
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 510
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleHolderWithBufferReplacementDisabled:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 375
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    .line 372
    if-ge v0, v1, :cond_0

    .line 373
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->release()V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 376
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->progressiveMediaExtractor:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->release()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    .line 378
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 379
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 380
    return-void
.end method

.method public seekTo(JI)V
    .locals 5
    .param p1, "timeUs"    # J
    .param p3, "mode"    # I

    .line 429
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v0, v0, Landroidx/media3/extractor/TrackAwareSeekMap;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    check-cast v0, Landroidx/media3/extractor/TrackAwareSeekMap;

    .line 436
    .local v0, "trackAwareSeekMap":Landroidx/media3/extractor/TrackAwareSeekMap;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->tracks:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorTrack;->getIdOfBackingTrack()I

    move-result v1

    .line 437
    .local v1, "trackId":I
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackAwareSeekMap;->isSeekable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/extractor/TrackAwareSeekMap;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    .local v2, "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    goto :goto_0

    .line 440
    .end local v2    # "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/TrackAwareSeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    .line 442
    .end local v0    # "trackAwareSeekMap":Landroidx/media3/extractor/TrackAwareSeekMap;
    .end local v1    # "trackId":I
    .restart local v2    # "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    :goto_0
    goto :goto_1

    .line 443
    .end local v2    # "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    .line 446
    .restart local v2    # "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 449
    :pswitch_0
    iget-object v0, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v0, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v3, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 450
    iget-object v0, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    goto :goto_2

    .line 451
    :cond_3
    iget-object v0, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    :goto_2
    nop

    .line 452
    .local v0, "seekPoint":Landroidx/media3/extractor/SeekPoint;
    goto :goto_3

    .line 454
    .end local v0    # "seekPoint":Landroidx/media3/extractor/SeekPoint;
    :pswitch_1
    iget-object v0, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    .line 455
    .restart local v0    # "seekPoint":Landroidx/media3/extractor/SeekPoint;
    goto :goto_3

    .line 457
    .end local v0    # "seekPoint":Landroidx/media3/extractor/SeekPoint;
    :pswitch_2
    iget-object v0, v2, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    .line 458
    .restart local v0    # "seekPoint":Landroidx/media3/extractor/SeekPoint;
    nop

    .line 463
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleMetadataQueue:Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->clear()V

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 465
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;->reset()V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 467
    .end local v1    # "i":I
    :cond_4
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    .line 468
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectTrack(I)V
    .locals 2
    .param p1, "trackIndex"    # I

    .line 411
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroidx/media3/common/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/lang/String;)V

    .line 256
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .local v1, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_3

    .line 263
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    :cond_1
    return-void

    .line 260
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    throw v2

    .line 266
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    .end local v1    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_4
    goto :goto_1

    .line 266
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 271
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 272
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 200
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 201
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 202
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    .line 199
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 204
    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 4
    .param p1, "mediaDataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Landroidx/media3/datasource/MediaDataSourceAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/datasource/MediaDataSourceAdapter;-><init>(Landroid/media/MediaDataSource;Z)V

    .line 319
    .local v0, "mediaDataSourceAdapter":Landroidx/media3/datasource/MediaDataSourceAdapter;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    .line 320
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 175
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    .line 174
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    .line 176
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 217
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .param p1, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroidx/media3/datasource/FileDescriptorDataSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "length":J
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    .local v2, "offset":J
    .local v4, "length":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 236
    .local v0, "fileDescriptorDataSource":Landroidx/media3/datasource/FileDescriptorDataSource;
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    .line 237
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->httpRequestHeaders:Ljava/util/Map;

    .line 301
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 302
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    .line 301
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->prepareDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    .line 303
    return-void
.end method

.method public setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 591
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->logSessionId:Landroid/media/metrics/LogSessionId;

    .line 594
    :cond_0
    return-void
.end method

.method public unselectTrack(I)V
    .locals 2
    .param p1, "trackIndex"    # I

    .line 421
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method
