.class final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/RankingDataComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleRankingDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/preload/RankingDataComparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private currentPlayingIndex:I

.field private invalidationListener:Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->currentPlayingIndex:I

    .line 720
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;

    .line 724
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->currentPlayingIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->currentPlayingIndex:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 713
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public setCurrentPlayingIndex(I)V
    .locals 1
    .param p1, "currentPlayingIndex"    # I

    .line 733
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->currentPlayingIndex:I

    if-eq p1, v0, :cond_0

    .line 734
    iput p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->currentPlayingIndex:I

    .line 735
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->invalidationListener:Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->invalidationListener:Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;->onRankingDataComparatorInvalidated()V

    .line 739
    :cond_0
    return-void
.end method

.method public setInvalidationListener(Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;)V
    .locals 0
    .param p1, "invalidationListener"    # Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;

    .line 729
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SimpleRankingDataComparator;->invalidationListener:Landroidx/media3/exoplayer/source/preload/RankingDataComparator$InvalidationListener;

    .line 730
    return-void
.end method
