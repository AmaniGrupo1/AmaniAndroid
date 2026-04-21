.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CitasViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarAgendaMensual$1"
    f = "CitasViewModel.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idPaciente:J

.field final synthetic $month:Lj$/time/YearMonth;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLj$/time/YearMonth;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;",
            "J",
            "Lj$/time/YearMonth;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$idPaciente:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$month:Lj$/time/YearMonth;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$idPaciente:J

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$month:Lj$/time/YearMonth;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLj$/time/YearMonth;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->label:I

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

    .line 90
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v1

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$idPaciente:J

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->$month:Lj$/time/YearMonth;

    invoke-virtual {v5}, Lj$/time/YearMonth;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->label:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->getAgendaPaciente-0E7RQCE(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 89
    return-object v0

    .line 92
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 93
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .local v2, "agenda\\1":Ljava/util/List;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$a$-onSuccess-CitasViewModel$cargarAgendaMensual$1$1\\1\\93\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_agendaMensual$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-interface {v4, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 95
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 96
    nop

    .line 93
    .end local v2    # "agenda\\1":Ljava/util/List;
    .end local v3    # "$i$a$-onSuccess-CitasViewModel$cargarAgendaMensual$1$1\\1\\93\\0":I
    :cond_1
    nop

    .line 97
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .local v0, "error\\3":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-onFailure-CitasViewModel$cargarAgendaMensual$1$2\\3\\97\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "Error cargando agenda"

    :cond_2
    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 99
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_agendaMensual$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 100
    nop

    .line 97
    .end local v0    # "error\\3":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-CitasViewModel$cargarAgendaMensual$1$2\\3\\97\\0":I
    nop

    .line 101
    :cond_3
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 102
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
