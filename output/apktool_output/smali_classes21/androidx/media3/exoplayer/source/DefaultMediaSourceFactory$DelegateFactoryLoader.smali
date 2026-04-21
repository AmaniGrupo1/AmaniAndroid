.class final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field private codecsToParseWithinGopSampleDependencies:I

.field private dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private loadOnlySelectedTracks:Z

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private parseSubtitlesDuringExtraction:Z

.field private subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1
    .param p1, "extractorsFactory"    # Landroidx/media3/extractor/ExtractorsFactory;
    .param p2, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    .line 722
    iput-object p2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    .line 726
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->codecsToParseWithinGopSampleDependencies:I

    .line 727
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
    .param p1, "x1"    # Z

    .line 704
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setLoadOnlySelectedTracks(Z)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
    .param p1, "x1"    # I

    .line 704
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setHeifExtractorFlags(I)V

    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .locals 1

    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 844
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 845
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 846
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 847
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    .line 848
    return-void
.end method

.method static synthetic lambda$loadSupplier$0(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 878
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->access$300(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadSupplier$1(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 884
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->access$300(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadSupplier$2(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 890
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->access$300(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadSupplier$3(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 896
    invoke-static {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->access$200(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

.method private loadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 5
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 865
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    .line 866
    .local v0, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    if-eqz v0, :cond_0

    .line 867
    return-object v0

    .line 871
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/DataSource$Factory;

    .line 873
    .local v1, "dataSourceFactory":Landroidx/media3/datasource/DataSource$Factory;
    packed-switch p1, :pswitch_data_0

    .line 905
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized contentType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :pswitch_0
    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 903
    .end local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .local v2, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    goto :goto_0

    .line 893
    .end local v2    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    :pswitch_1
    nop

    .line 894
    const-string v2, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 896
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    .line 897
    .end local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .local v3, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    move-object v2, v3

    goto :goto_0

    .line 887
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .end local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    :pswitch_2
    nop

    .line 888
    const-string v2, "androidx.media3.exoplayer.hls.HlsMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 889
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 890
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 891
    .end local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    move-object v2, v3

    goto :goto_0

    .line 881
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .end local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    :pswitch_3
    nop

    .line 882
    const-string v2, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 883
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 884
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 885
    .end local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    move-object v2, v3

    goto :goto_0

    .line 875
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .end local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    :pswitch_4
    nop

    .line 876
    const-string v2, "androidx.media3.exoplayer.dash.DashMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 877
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 878
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 879
    .end local v0    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .restart local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    move-object v2, v3

    .line 908
    .end local v3    # "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    .local v2, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 2
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .line 854
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 855
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private setHeifExtractorFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 830
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    instance-of v0, v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    check-cast v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->setHeifExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 833
    :cond_0
    return-void
.end method

.method private setLoadOnlySelectedTracks(Z)V
    .locals 0
    .param p1, "loadOnlySelectedTracks"    # Z

    .line 826
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadOnlySelectedTracks:Z

    .line 827
    return-void
.end method


# virtual methods
.method public getMediaSourceFactory(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 4
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 738
    .local v0, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    if-eqz v0, :cond_0

    .line 739
    return-object v0

    .line 741
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v1

    .line 743
    .local v1, "mediaSourceFactorySupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/source/MediaSource$Factory;>;"
    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 744
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 747
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    if-eqz v2, :cond_2

    .line 748
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 750
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v2, :cond_3

    .line 751
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 753
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    if-eqz v2, :cond_4

    .line 754
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDownloadExecutor(Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 756
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 757
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 758
    iget v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->codecsToParseWithinGopSampleDependencies:I

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 760
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 730
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    .line 731
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadSupplier$4$androidx-media3-exoplayer-source-DefaultMediaSourceFactory$DelegateFactoryLoader(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 901
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadOnlySelectedTracks:Z

    .line 902
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadOnlySelectedTracks(Z)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object v0

    .line 901
    return-object v0
.end method

.method public setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V
    .locals 2
    .param p1, "cmcdConfigurationFactory"    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 799
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 800
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 801
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 802
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 803
    :cond_0
    return-void
.end method

.method public setCodecsToParseWithinGopSampleDependencies(I)V
    .locals 1
    .param p1, "codecsToParseWithinGopSampleDependencies"    # I

    .line 793
    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->codecsToParseWithinGopSampleDependencies:I

    .line 794
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Landroidx/media3/extractor/ExtractorsFactory;

    .line 796
    return-void
.end method

.method public setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 765
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    if-eq p1, v0, :cond_0

    .line 766
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 769
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 770
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 772
    :cond_0
    return-void
.end method

.method public setDownloadExecutor(Lcom/google/common/base/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 836
    .local p1, "downloadExecutor":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroidx/media3/exoplayer/util/ReleasableExecutor;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    .line 837
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 838
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDownloadExecutor(Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 839
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 840
    :cond_0
    return-void
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)V
    .locals 2
    .param p1, "drmSessionManagerProvider"    # Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 806
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 807
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 808
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 809
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 810
    :cond_0
    return-void
.end method

.method public setJpegExtractorFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 820
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    instance-of v0, v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    check-cast v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->setJpegExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 823
    :cond_0
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V
    .locals 2
    .param p1, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 813
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 814
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 815
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 816
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method public setParseSubtitlesDuringExtraction(Z)V
    .locals 2
    .param p1, "parseSubtitlesDuringExtraction"    # Z

    .line 775
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->parseSubtitlesDuringExtraction:Z

    .line 776
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;

    .line 777
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 778
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 780
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method public setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 2
    .param p1, "subtitleParserFactory"    # Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 784
    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 785
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;

    .line 786
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 787
    .local v1, "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 788
    .end local v1    # "mediaSourceFactory":Landroidx/media3/exoplayer/source/MediaSource$Factory;
    goto :goto_0

    .line 789
    :cond_0
    return-void
.end method
