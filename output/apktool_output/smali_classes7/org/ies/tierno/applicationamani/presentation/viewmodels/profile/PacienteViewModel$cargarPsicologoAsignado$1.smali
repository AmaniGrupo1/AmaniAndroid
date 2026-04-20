.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PacienteViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->cargarPsicologoAsignado(J)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel$cargarPsicologoAsignado$1"
    f = "PacienteViewModel.kt"
    i = {}
    l = {
        0x1c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idPaciente:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->$idPaciente:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->$idPaciente:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$getProfileUseCaseGeneral$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    move-result-object v1

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->$idPaciente:J

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->label:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->obtenerPsicologoAsignado-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 27
    return-object v0

    .line 28
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 29
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .local v2, "psicologo\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    const/4 v4, 0x0

    .line 30
    .local v4, "$i$a$-onSuccess-PacienteViewModel$cargarPsicologoAsignado$1$1\\1\\29\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$get_psicologoAsignado$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 31
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 32
    nop

    .line 29
    .end local v2    # "psicologo\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    .end local v4    # "$i$a$-onSuccess-PacienteViewModel$cargarPsicologoAsignado$1$1\\1\\29\\0":I
    :cond_1
    nop

    .line 32
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .local v2, "error\\3":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 33
    .local v4, "$i$a$-onFailure-PacienteViewModel$cargarPsicologoAsignado$1$2\\3\\32\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "Error al cargar los datos del psic\u00f3logo"

    :cond_2
    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 34
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$get_psicologoAsignado$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    nop

    .line 32
    .end local v2    # "error\\3":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-onFailure-PacienteViewModel$cargarPsicologoAsignado$1$2\\3\\32\\0":I
    nop

    .line 36
    :cond_3
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
