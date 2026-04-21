.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->loadFirstAssignedPatient()V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadFirstAssignedPatient$1"
    f = "ChatListViewModel.kt"
    i = {}
    l = {
        0x80
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
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 125
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_2

    .line 125
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 127
    nop

    .line 128
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$getListarPacientesByPsicologo$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;->invoke()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->label:I

    invoke-static {v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 125
    return-object v0

    :cond_0
    :goto_0
    check-cast v1, Ljava/util/List;

    .line 129
    .local v1, "pacientes":Ljava/util/List;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;

    .line 132
    .local v0, "first":Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;->getIdUsuario()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;->getIdPaciente()Ljava/lang/Long;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 133
    .local v3, "pacienteId":Ljava/lang/Long;
    :cond_3
    :goto_1
    nop

    .line 136
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    .line 133
    if-eqz v3, :cond_4

    .line 134
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$resolvePacienteParaChat(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;J)V

    goto :goto_3

    .line 136
    :cond_4
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "first":Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;
    .end local v1    # "pacientes":Ljava/util/List;
    .end local v3    # "pacienteId":Ljava/lang/Long;
    goto :goto_3

    .line 139
    .local v0, "<unused var>":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel$loadFirstAssignedPatient$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 141
    .end local v0    # "<unused var>":Ljava/lang/Exception;
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
