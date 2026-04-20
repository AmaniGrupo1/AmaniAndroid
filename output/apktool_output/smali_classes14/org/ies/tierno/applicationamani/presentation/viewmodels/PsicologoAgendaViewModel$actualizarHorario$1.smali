.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PsicologoAgendaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->actualizarHorario(Ljava/util/List;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarHorario$1"
    f = "PsicologoAgendaViewModel.kt"
    i = {}
    l = {
        0x93
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $franjas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/FranjaHorarioDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $psychologistId:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "J",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/FranjaHorarioDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$psychologistId:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$franjas:Ljava/util/List;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$psychologistId:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$franjas:Ljava/util/List;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JLjava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 144
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->label:I

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

    .line 145
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v1

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$psychologistId:J

    new-instance v5, Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->$franjas:Ljava/util/List;

    invoke-direct {v5, v6}, Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;-><init>(Ljava/util/List;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->label:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->actualizarHorario-0E7RQCE(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 144
    return-object v0

    .line 147
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 148
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .local v2, "it\\1":Lkotlin/Unit;
    const/4 v4, 0x0

    .line 150
    .local v4, "$i$a$-onSuccess-PsicologoAgendaViewModel$actualizarHorario$1$1\\1\\148\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_mesVisible$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "<get-value>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lj$/time/YearMonth;

    invoke-virtual {v1, v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V

    .line 151
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_disponibilidadDia$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;->getFecha()Lj$/time/LocalDate;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 152
    .local v5, "fechaActual\\1":Lj$/time/LocalDate;
    :goto_1
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_disponibilidadDia$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 153
    if-eqz v5, :cond_2

    .line 154
    const/4 v7, 0x2

    invoke-static {v1, v5, v3, v7, v6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarDisponibilidadDia$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;IILjava/lang/Object;)V

    .line 157
    :cond_2
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_successMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    const-string v8, "Horario actualizado correctamente"

    invoke-interface {v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 158
    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1$1$1;

    invoke-direct {v1, v6}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 159
    nop

    .line 148
    .end local v2    # "it\\1":Lkotlin/Unit;
    .end local v4    # "$i$a$-onSuccess-PsicologoAgendaViewModel$actualizarHorario$1$1\\1\\148\\0":I
    .end local v5    # "fechaActual\\1":Lj$/time/LocalDate;
    :cond_3
    nop

    .line 160
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "it\\3":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$a$-onFailure-PsicologoAgendaViewModel$actualizarHorario$1$2\\3\\160\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Error al actualizar el horario"

    :cond_4
    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 162
    nop

    .line 160
    .end local v0    # "it\\3":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-PsicologoAgendaViewModel$actualizarHorario$1$2\\3\\160\\0":I
    nop

    .line 164
    :cond_5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarHorario$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
