.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
.super Ljava/lang/Object;
.source "ChatViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J?\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
        "",
        "status",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;",
        "activeMessageId",
        "",
        "positionMs",
        "",
        "durationMs",
        "errorMessage",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)V",
        "getStatus",
        "()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;",
        "getActiveMessageId",
        "()Ljava/lang/String;",
        "getPositionMs",
        "()J",
        "getDurationMs",
        "getErrorMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final activeMessageId:Ljava/lang/String;

.field private final durationMs:J

.field private final errorMessage:Ljava/lang/String;

.field private final positionMs:J

.field private final status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;
    .param p2, "activeMessageId"    # Ljava/lang/String;
    .param p3, "positionMs"    # J
    .param p5, "durationMs"    # J
    .param p7, "errorMessage"    # Ljava/lang/String;

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 51
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    .line 53
    iput-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    .line 54
    iput-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 49
    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 50
    sget-object p1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->IDLE:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 49
    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    .line 51
    move-object p2, v0

    .line 49
    :cond_1
    and-int/lit8 p9, p8, 0x4

    const-wide/16 v1, 0x0

    if-eqz p9, :cond_2

    .line 52
    move-wide p3, v1

    .line 49
    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 53
    move-wide p5, v1

    .line 49
    :cond_3
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_4

    .line 54
    move-object p9, v0

    goto :goto_0

    .line 49
    :cond_4
    move-object p9, p7

    :goto_0
    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)V

    .line 55
    return-void
.end method

.method public static synthetic copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    :cond_3
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_4

    iget-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    :cond_4
    move-object p9, p7

    move-wide p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .locals 9

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    iget-object v4, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    iget-object v1, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getActiveMessageId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    return-wide v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositionMs()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    return-wide v0
.end method

.method public final getStatus()Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->status:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->activeMessageId:Ljava/lang/String;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->positionMs:J

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->durationMs:J

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->errorMessage:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioPlaybackUiState(status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", activeMessageId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
