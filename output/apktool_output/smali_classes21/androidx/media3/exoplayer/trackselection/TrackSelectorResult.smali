.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

.field public final selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

.field public final tracks:Landroidx/media3/common/Tracks;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rendererConfigurations"    # [Landroidx/media3/exoplayer/RendererConfiguration;
    .param p2, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p3, "tracks"    # Landroidx/media3/common/Tracks;
    .param p4, "info"    # Ljava/lang/Object;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 91
    invoke-virtual {p2}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 92
    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    .line 93
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 94
    array-length v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    .line 95
    return-void
.end method

.method public constructor <init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Ljava/lang/Object;)V
    .locals 1
    .param p1, "rendererConfigurations"    # [Landroidx/media3/exoplayer/RendererConfiguration;
    .param p2, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p3, "info"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Z
    .locals 3
    .param p1, "other"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 110
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v1, v1

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 114
    invoke-virtual {p0, p1, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    return v0

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_3
    :goto_1
    return v0
.end method

.method public isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z
    .locals 3
    .param p1, "other"    # Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .param p2, "index"    # I

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 134
    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, p2

    .line 137
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 136
    :goto_0
    return v0
.end method

.method public isRendererEnabled(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 99
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
