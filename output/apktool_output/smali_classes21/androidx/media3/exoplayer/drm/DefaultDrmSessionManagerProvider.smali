.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;


# instance fields
.field private drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

.field private drmHttpDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private drmLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final lock:Ljava/lang/Object;

.field private manager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private createManager(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 6
    .param p1, "drmConfiguration"    # Landroidx/media3/common/MediaItem$DrmConfiguration;

    .line 106
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    :goto_0
    nop

    .line 109
    .local v0, "dataSourceFactory":Landroidx/media3/datasource/DataSource$Factory;
    new-instance v1, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;

    .line 111
    iget-object v2, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V

    .line 114
    .local v1, "httpDrmCallback":Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;
    iget-object v2, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 115
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 117
    :cond_2
    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;-><init>()V

    iget-object v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    sget-object v4, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;

    .line 119
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v2

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    .line 121
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v2

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 122
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setPlayClearSamplesWithoutKeys(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 124
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setUseDrmSessionsForClearContent([I)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v2

    .line 125
    .local v2, "drmSessionManagerBuilder":Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    .line 128
    :cond_3
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->build(Landroidx/media3/exoplayer/drm/MediaDrmCallback;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object v3

    .line 129
    .local v3, "drmSessionManager":Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 130
    return-object v3
.end method


# virtual methods
.method public get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 88
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    .line 91
    .local v0, "drmConfiguration":Landroidx/media3/common/MediaItem$DrmConfiguration;
    if-nez v0, :cond_0

    .line 92
    sget-object v1, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-object v1

    .line 95
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    .line 98
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->createManager(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 100
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    monitor-exit v1

    return-object v2

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDrmHttpDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0
    .param p1, "drmDataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 61
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 62
    return-void
.end method

.method public setDrmLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V
    .locals 0
    .param p1, "drmLoadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 83
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 84
    return-void
.end method

.method public setDrmUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    .line 72
    return-void
.end method
