.class public final Landroidx/media3/exoplayer/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$UnreleaseableRendererCapabilitiesList;,
        Landroidx/media3/exoplayer/offline/DownloadHelper$LiveContentUnsupportedException;
    }
.end annotation


# static fields
.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MODE_NOT_PREPARE:I = 0x0

.field private static final MODE_PREPARE_NON_PROGRESSIVE_SOURCE_AND_SELECT_TRACKS:I = 0x2

.field private static final MODE_PREPARE_PROGRESSIVE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DownloadHelper"


# instance fields
.field private areTracksSelected:Z

.field private callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

.field private final callbackHandler:Landroid/os/Handler;

.field private final debugLoggingEnabled:Z

.field private immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isPreparedWithMedia:Z

.field private final localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field private mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

.field private final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private final mode:I

.field private final rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

.field private final scratchSet:Landroid/util/SparseIntArray;

.field private trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 264
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 266
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 276
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;)V
    .locals 6
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p4, "rendererCapabilities"    # Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 528
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "mediaItem":Landroidx/media3/common/MediaItem;
    .end local p2    # "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    .end local p3    # "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    .end local p4    # "rendererCapabilities":Landroidx/media3/exoplayer/RendererCapabilitiesList;
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    .local v2, "mediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    .local v3, "trackSelectionParameters":Landroidx/media3/common/TrackSelectionParameters;
    .local v4, "rendererCapabilities":Landroidx/media3/exoplayer/RendererCapabilitiesList;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;Z)V

    .line 534
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RendererCapabilitiesList;Z)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p4, "rendererCapabilities"    # Landroidx/media3/exoplayer/RendererCapabilitiesList;
    .param p5, "debugLoggingEnabled"    # Z

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 555
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 556
    nop

    .line 557
    if-nez p2, :cond_0

    .line 558
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :cond_0
    instance-of v0, p2, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    if-eqz v0, :cond_1

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    .line 562
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    invoke-direct {v0, p3, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 564
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 565
    iput-boolean p5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->debugLoggingEnabled:Z

    .line 566
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 567
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/offline/DownloadHelper$FakeBandwidthMeter;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 568
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    .line 569
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->window:Landroidx/media3/common/Timeline$Window;

    .line 570
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 115
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/MediaItem;
    .param p1, "x1"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "x2"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p3, "x3"    # Lcom/google/common/base/Supplier;

    .line 115
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/offline/DownloadHelper;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->onMediaPrepared()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 115
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V

    return-void
.end method

.method private addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1037
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 1042
    iget-object v0, p2, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    .line 1043
    .local v1, "override":Landroidx/media3/common/TrackSelectionOverride;
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 1044
    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v3

    .line 1043
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1045
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 1046
    .end local v1    # "override":Landroidx/media3/common/TrackSelectionOverride;
    goto :goto_0

    .line 1047
    :cond_0
    return-void
.end method

.method private assertPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 1120
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1121
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1122
    return-void
.end method

.method private assertPreparedWithNonProgressiveSourceAndTracksSelected()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 1135
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1136
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1137
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->areTracksSelected:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1138
    return-void
.end method

.method private assertPreparedWithProgressiveSource()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.seekMap",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 1148
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1149
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1150
    return-void
.end method

.method public static createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1
    .param p0, "downloadRequest"    # Landroidx/media3/exoplayer/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 466
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaSource(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .param p0, "downloadRequest"    # Landroidx/media3/exoplayer/offline/DownloadRequest;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 483
    nop

    .line 484
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadRequest;->toMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 483
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method private static createMediaSourceInternal(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)",
            "Landroidx/media3/exoplayer/source/MediaSource;"
        }
    .end annotation

    .line 1214
    .local p3, "loadExecutorSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/util/ReleasableExecutor;>;"
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    goto :goto_0

    .line 1216
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    sget-object v1, Landroidx/media3/extractor/ExtractorsFactory;->EMPTY:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    :goto_0
    nop

    .line 1217
    .local v0, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    if-eqz p3, :cond_1

    .line 1218
    invoke-interface {v0, p3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDownloadExecutor(Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 1220
    :cond_1
    if-eqz p2, :cond_2

    .line 1221
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/DrmSessionManager;)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 1223
    :cond_2
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    return-object v1
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 329
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Z)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p3, "debugLoggingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 351
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDebugLoggingEnabled(Z)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 366
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method public static forMediaItem(Landroid/content/Context;Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Z)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p4, "debugLoggingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 382
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDebugLoggingEnabled(Z)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 381
    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 398
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 401
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 397
    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p4, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 432
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 433
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 436
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDrmSessionManager(Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 432
    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Z)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p4, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p5, "debugLoggingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 452
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 453
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 455
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDrmSessionManager(Landroidx/media3/exoplayer/drm/DrmSessionManager;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p5}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDebugLoggingEnabled(Z)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 457
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 451
    return-object v0
.end method

.method public static forMediaItem(Landroidx/media3/common/MediaItem;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/datasource/DataSource$Factory;Z)Landroidx/media3/exoplayer/offline/DownloadHelper;
    .locals 1
    .param p0, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;
    .param p2, "renderersFactory"    # Landroidx/media3/exoplayer/RenderersFactory;
    .param p3, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;
    .param p4, "debugLoggingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;-><init>()V

    .line 415
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 417
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setDebugLoggingEnabled(Z)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object v0

    .line 414
    return-object v0
.end method

.method public static getDefaultTrackSelectorParameters(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method private getDownloadRequestBuilder(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 919
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 921
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 923
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v1

    goto :goto_0

    .line 925
    :cond_0
    const/4 v1, 0x0

    .line 922
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setKeySetId([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 926
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 927
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setData([B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    .line 928
    .local v0, "requestBuilder":Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 929
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/StreamKey;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v2, "allSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    array-length v3, v3

    .line 933
    .local v3, "periodCount":I
    const/4 v4, 0x0

    .local v4, "periodIndex":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 934
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 935
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v4

    array-length v5, v5

    .line 936
    .local v5, "rendererCount":I
    const/4 v6, 0x0

    .local v6, "rendererIndex":I
    :goto_2
    if-ge v6, v5, :cond_1

    .line 937
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v7, v7, v4

    aget-object v7, v7, v6

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 936
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 939
    .end local v6    # "rendererIndex":I
    :cond_1
    iget-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v6, v6, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v6, v6, v4

    invoke-interface {v6, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    .end local v5    # "rendererCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 941
    .end local v4    # "periodIndex":I
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    .line 943
    .end local v1    # "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/StreamKey;>;"
    .end local v2    # "allSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    .end local v3    # "periodCount":I
    :cond_3
    return-object v0
.end method

.method private static isProgressive(Landroidx/media3/common/MediaItem$LocalConfiguration;)Z
    .locals 2
    .param p0, "localConfiguration"    # Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 1227
    iget-object v0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$createMediaSourceInternal$4(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0
    .param p0, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p1, "unusedMediaItem"    # Landroidx/media3/common/MediaItem;

    .line 1221
    return-object p0
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    .line 567
    return-void
.end method

.method private static logTrackSelectorResult(ILandroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 9
    .param p0, "periodIndex"    # I
    .param p1, "trackSelectorResult"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track selections changed, period index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tracks ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadHelper"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v0, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1236
    .local v0, "trackGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Tracks$Group;>;"
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1237
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    .line 1238
    .local v3, "trackGroup":Landroidx/media3/common/Tracks$Group;
    const-string v4, "  group ["

    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1
    iget v5, v3, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_1

    .line 1240
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[X]"

    goto :goto_2

    :cond_0
    const-string v5, "[ ]"

    .line 1241
    .local v5, "status":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->getTrackSupport(I)I

    move-result v6

    invoke-static {v6}, Landroidx/media3/common/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v6

    .line 1242
    .local v6, "formatSupport":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Track:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1249
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", supported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1242
    invoke-static {v1, v7}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "formatSupport":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1253
    .end local v4    # "trackIndex":I
    :cond_1
    const-string v4, "  ]"

    invoke-static {v1, v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .end local v3    # "trackGroup":Landroidx/media3/common/Tracks$Group;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    .end local v2    # "groupIndex":I
    :cond_2
    const-string v2, "]"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method private onMediaPreparationFailed(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .line 1090
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1091
    return-void
.end method

.method private onMediaPrepared()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1056
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v0, v0

    .line 1057
    .local v0, "periodCount":I
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->size()I

    move-result v4

    .line 1058
    .local v4, "rendererCount":I
    new-array v5, v3, [I

    aput v4, v5, v2

    aput v0, v5, v1

    const-class v6, Ljava/util/List;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/util/List;

    iput-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 1060
    new-array v3, v3, [I

    aput v4, v3, v2

    aput v0, v3, v1

    const-class v1, Ljava/util/List;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/util/List;

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    .line 1062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1063
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1064
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v3, v3, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v3, v2

    .line 1065
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v3, v3, v1

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    .line 1066
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v3, v2

    .line 1063
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1062
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v1    # "i":I
    :cond_1
    new-array v1, v0, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 1070
    new-array v1, v0, [Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 1071
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 1072
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1073
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 1074
    .local v2, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 1075
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aput-object v5, v3, v1

    .line 1071
    .end local v2    # "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1077
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    .line 1078
    .local v1, "tracksInfoAvailable":Z
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->setPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 1079
    .end local v0    # "periodCount":I
    .end local v4    # "rendererCount":I
    goto :goto_3

    .line 1080
    .end local v1    # "tracksInfoAvailable":Z
    :cond_3
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1081
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const/4 v1, 0x0

    .line 1083
    .restart local v1    # "tracksInfoAvailable":Z
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->setPreparedWithProgressiveSource()V

    .line 1085
    :goto_3
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Z)V

    .line 1086
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1087
    return-void
.end method

.method private populateDownloadRequestBuilderWithByteRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V
    .locals 18
    .param p1, "requestBuilder"    # Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J

    .line 962
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithProgressiveSource()V

    .line 963
    iget-object v1, v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 964
    .local v2, "timeline":Landroidx/media3/common/Timeline;
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 965
    .local v3, "window":Landroidx/media3/common/Timeline$Window;
    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 966
    .local v4, "period":Landroidx/media3/common/Timeline$Period;
    nop

    .line 971
    invoke-static/range {p2 .. p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    .line 967
    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 972
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 974
    .local v5, "periodStartPositionUs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 975
    .local v7, "periodEndPositionUs":J
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v9

    if-eqz v1, :cond_0

    .line 976
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    add-long v7, v5, v11

    .line 977
    iget-wide v11, v4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v1, v11, v9

    if-eqz v1, :cond_0

    .line 978
    iget-wide v11, v4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 983
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 984
    .local v1, "seekMap":Landroidx/media3/extractor/SeekMap;
    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 985
    nop

    .line 986
    invoke-interface {v1, v5, v6}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v11

    iget-object v11, v11, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v11, v11, Landroidx/media3/extractor/SeekPoint;->position:J

    .line 987
    .local v11, "byteRangeStartPositionOffset":J
    const-wide/16 v13, -0x1

    .line 988
    .local v13, "byteRangeLength":J
    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 989
    nop

    .line 990
    invoke-interface {v1, v7, v8}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v9

    iget-object v9, v9, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v9, v9, Landroidx/media3/extractor/SeekPoint;->position:J

    .line 994
    .local v9, "byteRangeEndPositionOffset":J
    cmp-long v15, v5, v7

    if-eqz v15, :cond_1

    cmp-long v15, v11, v9

    if-nez v15, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 998
    .local v15, "areStartAndEndPositionsAfterTheLastSeekPoint":Z
    :goto_0
    if-nez v15, :cond_2

    .line 999
    sub-long v16, v9, v11

    goto :goto_1

    .line 1000
    :cond_2
    const-wide/16 v16, -0x1

    :goto_1
    move-wide/from16 v13, v16

    .line 1002
    .end local v9    # "byteRangeEndPositionOffset":J
    .end local v15    # "areStartAndEndPositionsAfterTheLastSeekPoint":Z
    :cond_3
    move-object/from16 v9, p1

    invoke-virtual {v9, v11, v12, v13, v14}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setByteRange(JJ)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    .line 1003
    .end local v11    # "byteRangeStartPositionOffset":J
    .end local v13    # "byteRangeLength":J
    goto :goto_2

    .line 1004
    :cond_4
    move-object/from16 v9, p1

    const-string v10, "DownloadHelper"

    const-string v11, "Cannot set download byte range for progressive stream that is unseekable"

    invoke-static {v10, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :goto_2
    return-void
.end method

.method private populateDownloadRequestBuilderWithDownloadRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V
    .locals 1
    .param p1, "requestBuilder"    # Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J

    .line 948
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->populateDownloadRequestBuilderWithTimeRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V

    .line 954
    goto :goto_0

    .line 950
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->populateDownloadRequestBuilderWithByteRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V

    .line 951
    nop

    .line 958
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateDownloadRequestBuilderWithTimeRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V
    .locals 10
    .param p1, "requestBuilder"    # Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J

    .line 1010
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 1011
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 1012
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    .line 1015
    .local v1, "window":Landroidx/media3/common/Timeline$Window;
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    .line 1016
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v4

    goto :goto_0

    .line 1017
    :cond_0
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    :goto_0
    nop

    .line 1018
    .local v4, "startPositionUs":J
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->getDurationUs()J

    move-result-wide v6

    .line 1019
    .local v6, "windowDurationUs":J
    cmp-long v8, p4, v2

    if-nez v8, :cond_1

    move-wide v8, v6

    goto :goto_1

    :cond_1
    invoke-static {p4, p5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 1020
    .local v8, "durationUs":J
    :goto_1
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    .line 1021
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1022
    sub-long v2, v6, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1024
    :cond_2
    invoke-virtual {p1, v4, v5, v8, v9}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->setTimeRange(JJ)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    .line 1025
    return-void
.end method

.method private runTrackSelection(I)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 11
    .param p1, "periodIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    .line 1165
    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 1167
    invoke-virtual {v4, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 1164
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1169
    .local v0, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_7

    .line 1170
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    .line 1171
    .local v2, "newSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    if-nez v2, :cond_0

    .line 1172
    goto/16 :goto_6

    .line 1174
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    .line 1176
    .local v3, "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    const/4 v4, 0x0

    .line 1177
    .local v4, "mergedWithExistingSelection":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1178
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 1179
    .local v6, "existingSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v7

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1181
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 1182
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_1

    .line 1183
    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v10

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1185
    .end local v7    # "k":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "k":I
    :goto_3
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v8

    .line 1188
    iget-object v10, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 1185
    if-ge v7, v8, :cond_2

    .line 1186
    invoke-interface {v2, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v8

    invoke-virtual {v10, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1188
    .end local v7    # "k":I
    :cond_2
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 1189
    .local v7, "mergedTracks":[I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    iget-object v9, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1190
    iget-object v9, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 1189
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1192
    .end local v8    # "k":I
    :cond_3
    new-instance v8, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;

    .line 1193
    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 1192
    invoke-interface {v3, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const/4 v4, 0x1

    .line 1195
    goto :goto_5

    .line 1177
    .end local v6    # "existingSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v7    # "mergedTracks":[I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1198
    .end local v5    # "j":I
    :cond_5
    :goto_5
    if-nez v4, :cond_6

    .line 1199
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    .end local v2    # "newSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .end local v3    # "existingSelectionList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    .end local v4    # "mergedWithExistingSelection":Z
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1202
    .end local v1    # "i":I
    :cond_7
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->debugLoggingEnabled:Z

    if-eqz v1, :cond_8

    .line 1203
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->logTrackSelectorResult(ILandroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 1205
    :cond_8
    return-object v0
.end method

.method private setPreparedWithNonProgressiveSourceAndTracksSelected()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    .line 1104
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->areTracksSelected:Z

    .line 1105
    return-void
.end method

.method private setPreparedWithProgressiveSource()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.seekMap",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->isPreparedWithMedia:Z

    .line 1115
    return-void
.end method


# virtual methods
.method public varargs addAudioLanguagesToSelection([Ljava/lang/String;)V
    .locals 9
    .param p1, "languages"    # [Ljava/lang/String;

    .line 746
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 748
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 749
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 751
    .local v0, "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 753
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 754
    .local v6, "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 755
    .local v7, "trackType":I
    if-eq v7, v1, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 753
    nop

    .end local v6    # "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 761
    .local v1, "periodCount":I
    array-length v2, p1

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p1, v4

    .line 762
    .local v3, "language":Ljava/lang/String;
    nop

    .line 763
    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v5

    .line 764
    .local v5, "parameters":Landroidx/media3/common/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_3
    if-ge v6, v1, :cond_2

    .line 765
    invoke-direct {p0, v6, v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 761
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Landroidx/media3/common/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 770
    .end local v0    # "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_3
    nop

    .line 771
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs addTextLanguagesToSelection(Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "selectUndeterminedTextLanguage"    # Z
    .param p2, "languages"    # [Ljava/lang/String;

    .line 787
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 789
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 790
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 791
    .local v0, "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 793
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 795
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->getRendererCapabilities()[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 796
    .local v6, "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v7

    .line 797
    .local v7, "trackType":I
    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 795
    nop

    .end local v6    # "capabilities":Landroidx/media3/exoplayer/RendererCapabilities;
    .end local v7    # "trackType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 803
    .local v1, "periodCount":I
    array-length v2, p2

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p2, v4

    .line 804
    .local v3, "language":Ljava/lang/String;
    nop

    .line 805
    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v5

    .line 806
    .local v5, "parameters":Landroidx/media3/common/TrackSelectionParameters;
    const/4 v6, 0x0

    .local v6, "periodIndex":I
    :goto_3
    if-ge v6, v1, :cond_2

    .line 807
    invoke-direct {p0, v6, v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 803
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "parameters":Landroidx/media3/common/TrackSelectionParameters;
    .end local v6    # "periodIndex":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 812
    .end local v0    # "parametersBuilder":Landroidx/media3/common/TrackSelectionParameters$Builder;
    .end local v1    # "periodCount":I
    :cond_3
    nop

    .line 813
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addTrackSelection(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 2
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 728
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 729
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    nop

    .line 733
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addTrackSelectionForSingleRenderer(IILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .locals 4
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .param p3, "trackSelectorParameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p4, "overrides":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 834
    invoke-virtual {p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 835
    .local v0, "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 836
    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V

    goto :goto_3

    .line 841
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v1, v1, p1

    .line 842
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 843
    .local v1, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 844
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v0, p2, v1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 845
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 850
    .end local v0    # "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .end local v1    # "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v2    # "i":I
    :cond_3
    :goto_3
    nop

    .line 851
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearTrackSelections(I)V
    .locals 2
    .param p1, "periodIndex"    # I

    .line 690
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 692
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getDownloadRequest(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 891
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequestBuilder(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadRequest(Ljava/lang/String;[BJJ)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "startPositionMs"    # J
    .param p5, "durationMs"    # J

    .line 912
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequestBuilder(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;

    move-result-object v1

    .line 913
    .local v1, "builder":Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 914
    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    .end local p3    # "startPositionMs":J
    .end local p5    # "durationMs":J
    .local v2, "startPositionMs":J
    .local v4, "durationMs":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadHelper;->populateDownloadRequestBuilderWithDownloadRange(Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;JJ)V

    .line 915
    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/DownloadRequest$Builder;->build()Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p3

    return-object p3
.end method

.method public getDownloadRequest([B)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 1
    .param p1, "data"    # [B

    .line 860
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadRequest([BJJ)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J

    .line 880
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "data":[B
    .end local p2    # "startPositionMs":J
    .end local p4    # "durationMs":J
    .local v3, "data":[B
    .local v4, "startPositionMs":J
    .local v6, "durationMs":J
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[BJJ)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 3

    .line 603
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 604
    return-object v1

    .line 606
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 607
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 608
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    goto :goto_0

    .line 609
    :cond_1
    nop

    .line 607
    :goto_0
    return-object v1
.end method

.method public getMappedTrackInfo(I)Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 664
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 665
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 617
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    return v0

    .line 620
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 621
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v0, v0

    return v0
.end method

.method public getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 651
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 652
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackGroupArrays:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackSelections(II)Ljava/util/List;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "rendererIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .line 678
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 679
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getTracks(I)Landroidx/media3/common/Tracks;
    .locals 2
    .param p1, "periodIndex"    # I

    .line 634
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 635
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mappedTrackInfos:[Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onMediaPreparationFailed$3$androidx-media3-exoplayer-offline-DownloadHelper(Ljava/io/IOException;)V
    .locals 1
    .param p1, "error"    # Ljava/io/IOException;

    .line 1090
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepareError(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method synthetic lambda$onMediaPrepared$2$androidx-media3-exoplayer-offline-DownloadHelper(Z)V
    .locals 1
    .param p1, "tracksInfoAvailable"    # Z

    .line 1086
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;Z)V

    return-void
.end method

.method synthetic lambda$prepare$1$androidx-media3-exoplayer-offline-DownloadHelper(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 584
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;->onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;Z)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 579
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 580
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callback:Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;

    .line 581
    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mode:I

    if-eqz v0, :cond_1

    .line 582
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/offline/DownloadHelper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    goto :goto_1

    .line 584
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper;Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 590
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->mediaPreparer:Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->release()V

    .line 593
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->release()V

    .line 594
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper;->rendererCapabilities:Landroidx/media3/exoplayer/RendererCapabilitiesList;

    invoke-interface {v0}, Landroidx/media3/exoplayer/RendererCapabilitiesList;->release()V

    .line 595
    return-void
.end method

.method public replaceTrackSelections(ILandroidx/media3/common/TrackSelectionParameters;)V
    .locals 2
    .param p1, "periodIndex"    # I
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 708
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->assertPreparedWithNonProgressiveSourceAndTracksSelected()V

    .line 709
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 710
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadHelper;->addTrackSelectionInternal(ILandroidx/media3/common/TrackSelectionParameters;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    nop

    .line 714
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
