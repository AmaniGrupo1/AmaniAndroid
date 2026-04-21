.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->asignarPaciente(JJ)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$asignarPaciente$1"
    f = "LoginViewModel.kt"
    i = {}
    l = {
        0x217
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idPaciente:J

.field final synthetic $idPsicologo:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JJLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPaciente:J

    iput-wide p4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPsicologo:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPaciente:J

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPsicologo:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;JJLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 533
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 545
    :catch_0
    move-exception v0

    goto :goto_2

    .line 533
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 534
    nop

    .line 535
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$getAsignarPacienteAlPsicologoUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;

    move-result-object v4

    iget-wide v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPaciente:J

    iget-wide v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->$idPsicologo:J

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->label:I

    invoke-virtual/range {v4 .. v9}, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/AsignarPacienteAlPsicologoUseCase;->invoke-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 533
    return-object v0

    .line 535
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 537
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .local v4, "it\\1":Z
    const/4 v5, 0x0

    .line 538
    .local v5, "$i$a$-onSuccess-LoginViewModel$asignarPaciente$1$1\\1\\537\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 539
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 540
    nop

    .line 537
    .end local v4    # "it\\1":Z
    .end local v5    # "$i$a$-onSuccess-LoginViewModel$asignarPaciente$1$1\\1\\537\\0":I
    :cond_1
    nop

    .line 540
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .local v2, "error\\3":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 541
    .local v4, "$i$a$-onFailure-LoginViewModel$asignarPaciente$1$2\\3\\540\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "Error al asignar paciente"

    :cond_2
    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 542
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    nop

    .line 540
    .end local v2    # "error\\3":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-onFailure-LoginViewModel$asignarPaciente$1$2\\3\\540\\0":I
    :cond_3
    nop

    .line 549
    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isAsignandoPaciente$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 550
    goto :goto_3

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Error inesperado al asignar paciente"

    :cond_4
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 547
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_asignarPacienteSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 551
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 549
    :goto_4
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$asignarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isAsignandoPaciente$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
