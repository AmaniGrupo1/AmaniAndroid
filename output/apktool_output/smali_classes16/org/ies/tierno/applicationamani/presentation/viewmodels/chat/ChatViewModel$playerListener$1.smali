.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;
.super Ljava/lang/Object;
.source "ChatViewModel.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;-><init>(JJLorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "onPlaybackStateChanged",
        "",
        "playbackState",
        "",
        "onIsPlayingChanged",
        "isPlaying",
        "",
        "onPlayerError",
        "error",
        "Landroidx/media3/common/PlaybackException;",
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


# instance fields
.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V
    .locals 0
    .param p1, "$receiver"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 14
    .param p1, "isPlaying"    # Z

    .line 164
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getExoPlayer$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    .local v0, "player":Landroidx/media3/exoplayer/ExoPlayer;
    :cond_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 166
    .local v2, "current":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getActiveMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 168
    :cond_1
    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2

    .line 169
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 170
    move-wide v4, v3

    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->PLAYING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 169
    nop

    .line 171
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 169
    const/16 v10, 0x16

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$startProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    goto :goto_0

    .line 174
    :cond_2
    move-wide v4, v3

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    .line 175
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$stopProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    .line 176
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 177
    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->PAUSED:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 176
    nop

    .line 178
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 179
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 176
    const/16 v10, 0x12

    const/4 v11, 0x0

    move-wide v12, v6

    move-wide v7, v4

    move-wide v5, v12

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 182
    :cond_3
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 13
    .param p1, "playbackState"    # I

    .line 138
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getExoPlayer$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    .local v0, "player":Landroidx/media3/exoplayer/ExoPlayer;
    :cond_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 141
    .local v2, "current":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$stopProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    .line 158
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    const/16 v11, 0x1f

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 149
    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->PLAYING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 148
    nop

    .line 150
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 148
    const/16 v10, 0x16

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$startProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->LOADING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 161
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 12
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error de reproducci\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "VoiceNote"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$stopProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    .line 187
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 188
    sget-object v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->ERROR:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 187
    nop

    .line 189
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "No se pudo reproducir el audio"

    :cond_0
    move-object v9, v1

    .line 187
    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 191
    return-void
.end method
