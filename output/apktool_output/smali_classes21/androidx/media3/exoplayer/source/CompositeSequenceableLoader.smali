.class public final Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    }
.end annotation


# instance fields
.field private lastAudioVideoBufferedPositionUs:J

.field private final loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/SequenceableLoader;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    .local p1, "loaders":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/SequenceableLoader;>;"
    .local p2, "loaderTrackTypes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 51
    .local v0, "loaderAndTrackTypes":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 53
    new-instance v2, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;-><init>(Landroidx/media3/exoplayer/source/SequenceableLoader;Ljava/util/List;)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 57
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    .line 58
    return-void
.end method

.method public constructor <init>([Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 3
    .param p1, "loaders"    # [Landroidx/media3/exoplayer/source/SequenceableLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    nop

    .line 42
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    array-length v1, p1

    .line 43
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 11
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "madeProgress":Z
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, "madeProgressThisIteration":Z
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v2

    .line 122
    .local v2, "nextLoadPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 123
    goto :goto_2

    .line 125
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 126
    iget-object v7, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getNextLoadPositionUs()J

    move-result-wide v7

    .line 127
    .local v7, "loaderNextLoadPositionUs":J
    cmp-long v9, v7, v4

    if-eqz v9, :cond_2

    iget-wide v9, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    cmp-long v9, v7, v9

    if-gtz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 130
    .local v9, "isLoaderBehind":Z
    :goto_1
    cmp-long v10, v7, v2

    if-eqz v10, :cond_3

    if-eqz v9, :cond_4

    .line 131
    :cond_3
    iget-object v10, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v10, p1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result v10

    or-int/2addr v1, v10

    .line 125
    .end local v7    # "loaderNextLoadPositionUs":J
    .end local v9    # "isLoaderBehind":Z
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 134
    .end local v6    # "i":I
    :cond_5
    or-int/2addr v0, v1

    .line 135
    .end local v2    # "nextLoadPositionUs":J
    if-nez v1, :cond_0

    .line 136
    :goto_2
    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 12

    .line 62
    const-wide v0, 0x7fffffffffffffffL

    .line 63
    .local v0, "bufferedPositionUs":J
    const-wide v2, 0x7fffffffffffffffL

    .line 64
    .local v2, "bufferedPositionAudioVideoUs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    const-wide/high16 v6, -0x8000000000000000L

    if-ge v4, v5, :cond_3

    .line 65
    iget-object v5, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 66
    .local v5, "loader":Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getBufferedPositionUs()J

    move-result-wide v8

    .line 68
    .local v8, "loaderBufferedPositionUs":J
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 70
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    :cond_0
    cmp-long v10, v8, v6

    if-eqz v10, :cond_1

    .line 72
    nop

    .line 73
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    :cond_1
    cmp-long v6, v8, v6

    if-eqz v6, :cond_2

    .line 77
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 64
    .end local v5    # "loader":Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    .end local v8    # "loaderBufferedPositionUs":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "i":I
    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    .line 81
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    .line 82
    return-wide v2

    .line 83
    :cond_4
    cmp-long v4, v0, v4

    if-eqz v4, :cond_6

    .line 87
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 88
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->lastAudioVideoBufferedPositionUs:J

    goto :goto_1

    .line 89
    :cond_5
    move-wide v4, v0

    .line 87
    :goto_1
    return-wide v4

    .line 91
    :cond_6
    return-wide v6
.end method

.method public getNextLoadPositionUs()J
    .locals 8

    .line 97
    const-wide v0, 0x7fffffffffffffffL

    .line 98
    .local v0, "nextLoadPositionUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const-wide/high16 v4, -0x8000000000000000L

    if-ge v2, v3, :cond_1

    .line 99
    iget-object v3, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    .line 100
    .local v3, "loader":Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->getNextLoadPositionUs()J

    move-result-wide v6

    .line 101
    .local v6, "loaderNextLoadPositionUs":J
    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    .line 102
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 98
    .end local v3    # "loader":Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;
    .end local v6    # "loaderNextLoadPositionUs":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v0

    :goto_1
    return-wide v4
.end method

.method public isLoading()Z
    .locals 2

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    return v1

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 2
    .param p1, "positionUs"    # J

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;->loadersWithTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoader$SequenceableLoaderWithTrackTypes;->reevaluateBuffer(J)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
