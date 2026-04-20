.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startProgressUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$startProgressUpdates$1"
    f = "ChatViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x16b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "currentState"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $player:Landroidx/media3/exoplayer/ExoPlayer;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
            "Landroidx/media3/exoplayer/ExoPlayer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-direct {v0, v1, v2, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 354
    iget v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    :pswitch_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .local v2, "currentState":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    goto :goto_1

    .end local v2    # "currentState":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 355
    .end local p0    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    .local v2, "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getExoPlayer$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 356
    iget-object v3, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 357
    .local v4, "currentState":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getActiveMessageId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .line 360
    iget-object v5, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 361
    iget-object v9, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->$player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v9}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 359
    const/16 v12, 0x13

    const/4 v13, 0x0

    move-wide v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v13}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 363
    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v0, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;->label:I

    const-wide/16 v5, 0x12c

    invoke-static {v5, v6, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 354
    return-object v1

    .line 363
    :cond_0
    move-object v3, v2

    move-object v2, v4

    .end local v4    # "currentState":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .local v2, "currentState":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    .local v3, "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    :goto_1
    move-object v2, v3

    goto :goto_0

    .line 365
    .end local v3    # "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    .local v2, "this":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
