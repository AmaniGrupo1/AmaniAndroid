.class final Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodAndId"
.end annotation


# instance fields
.field private final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 419
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MergingMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/MediaPeriod;
    .param p3, "x2"    # Landroidx/media3/exoplayer/source/MergingMediaSource$1;

    .line 413
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    .line 413
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    .line 413
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method
