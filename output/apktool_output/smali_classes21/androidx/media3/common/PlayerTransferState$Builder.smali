.class public final Landroidx/media3/common/PlayerTransferState$Builder;
.super Ljava/lang/Object;
.source "PlayerTransferState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/PlayerTransferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currentMediaItemIndex:I

.field private currentPosition:J

.field private mediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private playWhenReady:Z

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 59
    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 60
    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 61
    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 63
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 64
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 65
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 66
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/PlayerTransferState;)V
    .locals 2
    .param p1, "state"    # Landroidx/media3/common/PlayerTransferState;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$000(Landroidx/media3/common/PlayerTransferState;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 70
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$100(Landroidx/media3/common/PlayerTransferState;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 71
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$200(Landroidx/media3/common/PlayerTransferState;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 72
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$300(Landroidx/media3/common/PlayerTransferState;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 73
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$400(Landroidx/media3/common/PlayerTransferState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 74
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$500(Landroidx/media3/common/PlayerTransferState;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 75
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$600(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 76
    invoke-static {p1}, Landroidx/media3/common/PlayerTransferState;->access$700(Landroidx/media3/common/PlayerTransferState;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/PlayerTransferState;Landroidx/media3/common/PlayerTransferState$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/PlayerTransferState;
    .param p2, "x1"    # Landroidx/media3/common/PlayerTransferState$1;

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/common/PlayerTransferState$Builder;-><init>(Landroidx/media3/common/PlayerTransferState;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/common/PlayerTransferState$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    return v0
.end method

.method static synthetic access$1100(Landroidx/media3/common/PlayerTransferState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Landroidx/media3/common/PlayerTransferState$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/common/PlayerTransferState$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-wide v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    return-wide v0
.end method

.method static synthetic access$1400(Landroidx/media3/common/PlayerTransferState$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/PlaybackParameters;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/media3/common/PlayerTransferState$Builder;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/common/PlayerTransferState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/PlayerTransferState$Builder;

    .line 41
    iget-boolean v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/PlayerTransferState;
    .locals 2

    .line 171
    new-instance v0, Landroidx/media3/common/PlayerTransferState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/PlayerTransferState;-><init>(Landroidx/media3/common/PlayerTransferState$Builder;Landroidx/media3/common/PlayerTransferState$1;)V

    return-object v0
.end method

.method public setCurrentMediaItemIndex(I)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .param p1, "currentMediaItemIndex"    # I

    .line 119
    iput p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentMediaItemIndex:I

    .line 120
    return-object p0
.end method

.method public setCurrentPosition(J)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .param p1, "currentPosition"    # J

    .line 130
    iput-wide p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->currentPosition:J

    .line 131
    return-object p0
.end method

.method public setMediaItems(Ljava/util/List;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Landroidx/media3/common/PlayerTransferState$Builder;"
        }
    .end annotation

    .line 141
    .local p1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/MediaItem;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->mediaItems:Lcom/google/common/collect/ImmutableList;

    .line 142
    return-object p0
.end method

.method public setPlayWhenReady(Z)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .param p1, "playWhenReady"    # Z

    .line 86
    iput-boolean p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playWhenReady:Z

    .line 87
    return-object p0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 1
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 154
    return-object p0
.end method

.method public setRepeatMode(I)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .param p1, "repeatMode"    # I

    .line 97
    iput p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->repeatMode:I

    .line 98
    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 108
    iput-boolean p1, p0, Landroidx/media3/common/PlayerTransferState$Builder;->shuffleModeEnabled:Z

    .line 109
    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/PlayerTransferState$Builder;
    .locals 1
    .param p1, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/PlayerTransferState$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 166
    return-object p0
.end method
