.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;-><init>(JJLorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Ljava/util/List<",
        "+",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        ">;",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\nH\n"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
        "messages",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "psychologist",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
        "loading",
        "",
        "error",
        "",
        "input"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$uiState$1"
    f = "ChatViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    move-object v2, p2

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v6, p6

    check-cast v6, Lkotlin/coroutines/Continuation;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->invoke(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final invoke(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;ZLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-direct {v0, v1, p6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$1:Ljava/lang/Object;

    iput-boolean p3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->Z$0:Z

    iput-object p4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$3:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .local v2, "messages":Ljava/util/List;
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    .local v3, "psychologist":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    iget-boolean v6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->Z$0:Z

    .local v6, "loading":Z
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .local v7, "error":Ljava/lang/String;
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->L$3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .local v5, "input":Ljava/lang/String;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 107
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;

    .line 109
    nop

    .line 110
    nop

    .line 111
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 108
    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;-><init>(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
