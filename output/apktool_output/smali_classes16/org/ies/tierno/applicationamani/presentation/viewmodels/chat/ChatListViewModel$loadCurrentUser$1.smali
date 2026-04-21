.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->loadCurrentUser()V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadCurrentUser$1"
    f = "ChatListViewModel.kt"
    i = {}
    l = {
        0x36
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$getUserSessionDataStore$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->label:I

    invoke-virtual {v1, v3}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->getSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 52
    return-object v0

    :cond_0
    :goto_0
    move-object v0, v1

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 55
    .local v0, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    nop

    .line 84
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    .line 55
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 56
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_currentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdUsuario()J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_currentUserRol$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getRol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getRol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$normalizeRole(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    goto :goto_2

    :sswitch_0
    const-string v3, "paciente"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v1

    .line 66
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    .line 61
    if-eqz v1, :cond_2

    .line 63
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_partnerId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$loadPsicologoNombre(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;J)V

    goto :goto_3

    .line 66
    :cond_2
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 59
    :sswitch_1
    const-string v3, "psicologo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :sswitch_2
    const-string v3, "psicologa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    .line 71
    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$resolvePacienteParaChat(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;J)V

    goto :goto_3

    .line 75
    :cond_4
    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$loadFirstAssignedPatient(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)V

    goto :goto_3

    .line 80
    :goto_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadCurrentUser$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 84
    :cond_5
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 86
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x163b3db1 -> :sswitch_2
        -0x163b3da3 -> :sswitch_1
        0x2ca71371 -> :sswitch_0
    .end sparse-switch
.end method
