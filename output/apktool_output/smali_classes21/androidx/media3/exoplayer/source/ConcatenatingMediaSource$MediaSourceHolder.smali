.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public childIndex:I

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "useLazyPreparation"    # Z

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 892
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 893
    return-void
.end method


# virtual methods
.method public reset(II)V
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "firstWindowIndexInChild"    # I

    .line 896
    iput p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 897
    iput p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 899
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 900
    return-void
.end method
