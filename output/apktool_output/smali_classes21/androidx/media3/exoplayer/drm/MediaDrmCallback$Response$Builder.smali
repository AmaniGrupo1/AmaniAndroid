.class public final Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final data:[B

.field private loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->data:[B

    .line 43
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;

    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->data:[B

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)Landroidx/media3/exoplayer/source/LoadEventInfo;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;

    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 2

    .line 54
    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;-><init>(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;Landroidx/media3/exoplayer/drm/MediaDrmCallback$1;)V

    return-object v0
.end method

.method public setLoadEventInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;
    .locals 0
    .param p1, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 48
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->loadEventInfo:Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 49
    return-object p0
.end method
