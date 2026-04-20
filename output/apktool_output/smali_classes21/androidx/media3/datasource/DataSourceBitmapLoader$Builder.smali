.class public final Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
.super Ljava/lang/Object;
.source "DataSourceBitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DataSourceBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private makeShared:Z

.field private maximumOutputDimension:I

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->context:Landroid/content/Context;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->maximumOutputDimension:I

    .line 73
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->options:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->maximumOutputDimension:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    .line 55
    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->makeShared:Z

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/datasource/DataSourceBitmapLoader;
    .locals 2

    .line 144
    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;Landroidx/media3/datasource/DataSourceBitmapLoader$1;)V

    return-object v0
.end method

.method public setBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    .locals 0
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 112
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->options:Landroid/graphics/BitmapFactory$Options;

    .line 113
    return-object p0
.end method

.method public setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    .locals 0
    .param p1, "dataSourceFactory"    # Landroidx/media3/datasource/DataSource$Factory;

    .line 86
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 87
    return-object p0
.end method

.method public setExecutorService(Lcom/google/common/util/concurrent/ListeningExecutorService;)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    .locals 0
    .param p1, "listeningExecutorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 100
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 101
    return-object p0
.end method

.method public setMakeShared(Z)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    .locals 0
    .param p1, "makeShared"    # Z

    .line 138
    iput-boolean p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->makeShared:Z

    .line 139
    return-object p0
.end method

.method public setMaximumOutputDimension(I)Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    .locals 0
    .param p1, "maximumOutputDimension"    # I

    .line 124
    iput p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->maximumOutputDimension:I

    .line 125
    return-object p0
.end method
