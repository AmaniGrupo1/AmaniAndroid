.class final Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V
    .locals 0
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "caller"    # Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;
    .param p3, "eventListener"    # Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 548
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    .line 549
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 550
    return-void
.end method
