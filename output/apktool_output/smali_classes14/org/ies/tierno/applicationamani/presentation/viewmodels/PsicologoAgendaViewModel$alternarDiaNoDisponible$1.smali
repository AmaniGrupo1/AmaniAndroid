.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PsicologoAgendaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->alternarDiaNoDisponible(Lj$/time/LocalDate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$alternarDiaNoDisponible$1"
    f = "PsicologoAgendaViewModel.kt"
    i = {}
    l = {
        0xbb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fecha:Lj$/time/LocalDate;

.field final synthetic $horaFin:Ljava/lang/String;

.field final synthetic $horaInicio:Ljava/lang/String;

.field final synthetic $motivo:Ljava/lang/String;

.field final synthetic $psychologistId:J

.field final synthetic $yaNoDisponible:Z

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JLj$/time/LocalDate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "J",
            "Lj$/time/LocalDate;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$psychologistId:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$fecha:Lj$/time/LocalDate;

    iput-boolean p5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$yaNoDisponible:Z

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaInicio:Ljava/lang/String;

    iput-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaFin:Ljava/lang/String;

    iput-object p8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$motivo:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$psychologistId:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$fecha:Lj$/time/LocalDate;

    iget-boolean v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$yaNoDisponible:Z

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaInicio:Ljava/lang/String;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaFin:Ljava/lang/String;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$motivo:Ljava/lang/String;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JLj$/time/LocalDate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 185
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->label:I

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

    .line 186
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v3

    .line 188
    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$psychologistId:J

    .line 189
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$fecha:Lj$/time/LocalDate;

    invoke-virtual {v1}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v1, "toString(...)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-boolean v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$yaNoDisponible:Z

    .line 191
    iget-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaInicio:Ljava/lang/String;

    .line 192
    iget-object v9, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$horaFin:Ljava/lang/String;

    .line 193
    iget-object v10, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->$motivo:Ljava/lang/String;

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    .line 187
    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->label:I

    invoke-virtual/range {v3 .. v11}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->alternarDiaNoDisponible-bMdYcbs(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 185
    return-object v0

    .line 187
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 195
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .local v2, "it\\1":Lkotlin/Unit;
    const/4 v3, 0x0

    .line 196
    .local v3, "$i$a$-onSuccess-PsicologoAgendaViewModel$alternarDiaNoDisponible$1$1\\1\\195\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_mesVisible$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "<get-value>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lj$/time/YearMonth;

    invoke-virtual {v1, v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V

    .line 197
    nop

    .line 195
    .end local v2    # "it\\1":Lkotlin/Unit;
    .end local v3    # "$i$a$-onSuccess-PsicologoAgendaViewModel$alternarDiaNoDisponible$1$1\\1\\195\\0":I
    :cond_1
    nop

    .line 198
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "e\\3":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 199
    .local v2, "$i$a$-onFailure-PsicologoAgendaViewModel$alternarDiaNoDisponible$1$2\\3\\198\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "Error al alternar d\u00eda no disponible"

    :cond_2
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 200
    nop

    .line 198
    .end local v0    # "e\\3":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-PsicologoAgendaViewModel$alternarDiaNoDisponible$1$2\\3\\198\\0":I
    nop

    .line 201
    :cond_3
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$alternarDiaNoDisponible$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 202
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
