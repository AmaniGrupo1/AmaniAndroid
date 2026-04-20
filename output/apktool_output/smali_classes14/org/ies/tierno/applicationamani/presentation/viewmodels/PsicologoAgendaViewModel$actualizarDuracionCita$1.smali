.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PsicologoAgendaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->actualizarDuracionCita(I)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarDuracionCita$1"
    f = "PsicologoAgendaViewModel.kt"
    i = {}
    l = {
        0x113
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $nuevaDuracion:I

.field final synthetic $psychologistId:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$psychologistId:J

    iput p4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$nuevaDuracion:I

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$psychologistId:J

    iget v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$nuevaDuracion:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;JILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 273
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->label:I

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

    .line 274
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v1

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$psychologistId:J

    iget v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$nuevaDuracion:I

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->label:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->actualizarDuracion-0E7RQCE(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 273
    return-object v0

    .line 275
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 276
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->$nuevaDuracion:I

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lkotlin/Unit;

    .local v3, "it\\1":Lkotlin/Unit;
    const/4 v4, 0x0

    .line 277
    .local v4, "$i$a$-onSuccess-PsicologoAgendaViewModel$actualizarDuracionCita$1$1\\1\\276\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_duracionCita$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 278
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_successMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duraci\u00f3n de citas actualizada a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minutos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 281
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_disponibilidadDia$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;->getFecha()Lj$/time/LocalDate;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 282
    .local v5, "fechaActual\\1":Lj$/time/LocalDate;
    :goto_1
    if-eqz v5, :cond_2

    .line 284
    invoke-virtual {v1, v5, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarDisponibilidadDia(Lj$/time/LocalDate;I)V

    .line 286
    :cond_2
    nop

    .line 276
    .end local v3    # "it\\1":Lkotlin/Unit;
    .end local v4    # "$i$a$-onSuccess-PsicologoAgendaViewModel$actualizarDuracionCita$1$1\\1\\276\\0":I
    .end local v5    # "fechaActual\\1":Lj$/time/LocalDate;
    :cond_3
    nop

    .line 287
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "e\\3":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 288
    .local v2, "$i$a$-onFailure-PsicologoAgendaViewModel$actualizarDuracionCita$1$2\\3\\287\\0":I
    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "Error al actualizar la duraci\u00f3n de las citas"

    :cond_4
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 289
    nop

    .line 287
    .end local v0    # "e\\3":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-PsicologoAgendaViewModel$actualizarDuracionCita$1$2\\3\\287\\0":I
    nop

    .line 290
    :cond_5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$actualizarDuracionCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 291
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
