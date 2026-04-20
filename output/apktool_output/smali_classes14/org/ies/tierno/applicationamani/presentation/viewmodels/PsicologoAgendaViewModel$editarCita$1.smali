.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PsicologoAgendaViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->editarCita(JJLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$editarCita$1"
    f = "PsicologoAgendaViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x178
    }
    m = "invokeSuspend"
    n = {
        "startDatetime",
        "request"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $duracionMinutos:I

.field final synthetic $fecha:Lj$/time/LocalDate;

.field final synthetic $hora:Lj$/time/LocalTime;

.field final synthetic $idCita:J

.field final synthetic $idPaciente:J

.field final synthetic $idTipoTerapia:J

.field final synthetic $metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

.field final synthetic $monto:Ljava/math/BigDecimal;

.field final synthetic $motivo:Ljava/lang/String;

.field final synthetic $psychologistId:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;Lj$/time/LocalTime;Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;JJILjava/math/BigDecimal;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalTime;",
            "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;",
            "JJI",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$fecha:Lj$/time/LocalDate;

    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$hora:Lj$/time/LocalTime;

    move-object/from16 v4, p4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    move-wide/from16 v5, p5

    iput-wide v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idPaciente:J

    move-wide/from16 v7, p7

    iput-wide v7, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$psychologistId:J

    move/from16 v9, p9

    iput v9, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$duracionMinutos:I

    move-object/from16 v10, p10

    iput-object v10, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$monto:Ljava/math/BigDecimal;

    move-object/from16 v11, p11

    iput-object v11, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$motivo:Ljava/lang/String;

    move-wide/from16 v12, p12

    iput-wide v12, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idTipoTerapia:J

    move-wide/from16 v14, p14

    iput-wide v14, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idCita:J

    const/4 v1, 0x2

    move-object/from16 v2, p16

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20
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

    move-object/from16 v0, p0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$fecha:Lj$/time/LocalDate;

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$hora:Lj$/time/LocalTime;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    iget-wide v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idPaciente:J

    iget-wide v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$psychologistId:J

    iget v10, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$duracionMinutos:I

    iget-object v11, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$monto:Ljava/math/BigDecimal;

    iget-object v12, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$motivo:Ljava/lang/String;

    iget-wide v13, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idTipoTerapia:J

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idCita:J

    move-object/from16 v17, p2

    move-wide/from16 v18, v1

    move-object v1, v15

    move-object/from16 v2, v16

    move-wide/from16 v15, v18

    invoke-direct/range {v1 .. v17}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;Lj$/time/LocalTime;Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;JJILjava/math/BigDecimal;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)V

    move-object v15, v1

    move-object v1, v15

    check-cast v1, Lkotlin/coroutines/Continuation;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 358
    iget v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    .local v1, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lj$/time/LocalDateTime;

    .local v2, "startDatetime":Lj$/time/LocalDateTime;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .end local v1    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .end local v2    # "startDatetime":Lj$/time/LocalDateTime;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 359
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 361
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$fecha:Lj$/time/LocalDate;

    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$hora:Lj$/time/LocalTime;

    invoke-static {v2, v4}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 366
    .restart local v2    # "startDatetime":Lj$/time/LocalDateTime;
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v4, "toString(...)"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;->name()Ljava/lang/String;

    move-result-object v11

    .line 371
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$metodoPago:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    sget-object v5, Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;->ONLINE:Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;

    if-ne v4, v5, :cond_0

    const-string v4, "PAGADO"

    goto :goto_0

    :cond_0
    const-string v4, "PENDIENTE"

    :goto_0
    move-object v13, v4

    .line 363
    new-instance v4, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    .line 364
    iget-wide v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idPaciente:J

    .line 365
    iget-wide v7, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$psychologistId:J

    .line 366
    nop

    .line 367
    iget v10, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$duracionMinutos:I

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    .line 368
    nop

    .line 369
    iget-object v12, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$monto:Ljava/math/BigDecimal;

    .line 371
    nop

    .line 372
    nop

    .line 373
    iget-object v15, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$motivo:Ljava/lang/String;

    .line 370
    move-object v14, v4

    iget-wide v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idTipoTerapia:J

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v16

    .line 363
    move-object v4, v14

    const-string v14, "PENDIENTE"

    invoke-direct/range {v4 .. v16}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    .local v4, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-result-object v3

    iget-wide v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$idCita:J

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->label:I

    invoke-virtual {v3, v5, v6, v4, v7}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->editarCita-0E7RQCE(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 358
    return-object v1

    .line 376
    :cond_1
    move-object v1, v4

    .end local v4    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .restart local v1    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    :goto_1
    nop

    .line 377
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->$fecha:Lj$/time/LocalDate;

    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    move-object v6, v3

    check-cast v6, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    .local v6, "it\\1":Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    const/4 v8, 0x0

    .line 378
    .local v8, "$i$a$-onSuccess-PsicologoAgendaViewModel$editarCita$1$1\\1\\377\\0":I
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_mesVisible$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "<get-value>(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lj$/time/YearMonth;

    invoke-virtual {v4, v9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V

    .line 379
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v4, v5, v7, v9, v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarDisponibilidadDia$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;IILjava/lang/Object;)V

    .line 380
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_successMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    const-string v5, "Cita editada correctamente"

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 381
    nop

    .line 377
    .end local v6    # "it\\1":Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;
    .end local v8    # "$i$a$-onSuccess-PsicologoAgendaViewModel$editarCita$1$1\\1\\377\\0":I
    :cond_2
    nop

    .line 382
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .local v3, "e\\3":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 383
    .local v5, "$i$a$-onFailure-PsicologoAgendaViewModel$editarCita$1$2\\3\\382\\0":I
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, "Error al editar la cita"

    :cond_3
    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 384
    nop

    .line 382
    .end local v3    # "e\\3":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-onFailure-PsicologoAgendaViewModel$editarCita$1$2\\3\\382\\0":I
    nop

    .line 386
    :cond_4
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel$editarCita$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 387
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
