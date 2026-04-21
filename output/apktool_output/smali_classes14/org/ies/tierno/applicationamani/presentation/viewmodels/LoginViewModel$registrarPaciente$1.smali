.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registrarPaciente()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,699:1\n1#2:700\n*E\n"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPaciente$1"
    f = "LoginViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1d0
    }
    m = "invokeSuspend"
    n = {
        "tutoresList",
        "direccion",
        "request"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 419
    iget v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    .local v0, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;

    .local v2, "direccion":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;
    iget-object v6, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "tutoresList":Ljava/util/List;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    check-cast v7, Lkotlin/Result;

    invoke-virtual {v7}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .end local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .end local v2    # "direccion":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;
    .end local v6    # "tutoresList":Ljava/util/List;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 420
    nop

    .line 421
    :try_start_1
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getEsMenor()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    new-instance v6, Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;

    .line 424
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTutorNombre()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 425
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTutorTelefono()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 426
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTutorEmail()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 427
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTutorDni()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 428
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTutorTipo()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 423
    invoke-direct/range {v6 .. v11}, Lorg/ies/tierno/applicationamani/dto/tutor/TutorRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 421
    :goto_0
    move-object/from16 v16, v2

    .line 435
    .local v16, "tutoresList":Ljava/util/List;
    nop

    .line 436
    nop

    .line 437
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getCalle()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 438
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getCiudad()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 700
    const/4 v2, 0x0

    .line 438
    .local v2, "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$1\\1\\438\\0":I
    move-object v2, v4

    .end local v2    # "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$1\\1\\438\\0":I
    :cond_1
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 439
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getProvincia()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 700
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$2\\2\\439\\0":I
    move-object v2, v4

    .end local v2    # "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$2\\2\\439\\0":I
    :cond_2
    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 440
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getCodigoPostal()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 700
    const/4 v2, 0x0

    .line 440
    .local v2, "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$3\\3\\440\\0":I
    move-object v2, v4

    .end local v2    # "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$3\\3\\440\\0":I
    :cond_3
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 441
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getPais()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 700
    const/4 v2, 0x0

    .line 441
    .local v2, "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$4\\4\\441\\0":I
    move-object v2, v4

    .end local v2    # "$i$a$-ifBlank-LoginViewModel$registrarPaciente$1$direccion$4\\4\\441\\0":I
    :cond_4
    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 435
    new-instance v6, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v12}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    .line 444
    .local v2, "direccion":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;
    new-instance v6, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    .line 445
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getFechaNacimiento()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 446
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getGenero()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 447
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getTelefono()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 449
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getNombre()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    .line 450
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getApellido()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/String;

    .line 451
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getEmail()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/String;

    .line 452
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v23, v7

    check-cast v23, Ljava/lang/String;

    .line 453
    sget-object v24, Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;->paciente:Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;

    .line 454
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getDni()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/String;

    .line 448
    new-instance v17, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;

    .line 449
    nop

    .line 454
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 448
    const/16 v26, 0x81

    const/16 v27, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v17 .. v27}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/Rol;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 456
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getAceptaTerminos()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 457
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getAceptaVideoconferencia()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/Boolean;

    .line 458
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getAceptaComunicacion()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/Boolean;

    .line 459
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getSituacionesIds()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/util/List;

    .line 460
    nop

    .line 461
    move-object/from16 v11, v17

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 444
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v19}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/dto/requestPaciente/UsuarioRequest;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 464
    .local v6, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    iget-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$getLoginUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    move-result-object v7

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->L$2:Ljava/lang/Object;

    iput v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->label:I

    invoke-virtual {v7, v6, v8}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->registerPaciente-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_5

    .line 419
    return-object v0

    .line 464
    :cond_5
    move-object v0, v6

    move-object/from16 v6, v16

    .end local v16    # "tutoresList":Ljava/util/List;
    .restart local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .local v6, "tutoresList":Ljava/util/List;
    :goto_1
    nop

    .line 466
    .local v7, "result":Ljava/lang/Object;
    iget-object v8, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v7}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v7

    check-cast v9, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v9, "response\\5":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    const/4 v10, 0x0

    .line 467
    .local v10, "$i$a$-onSuccess-LoginViewModel$registrarPaciente$1$1\\5\\466\\0":I
    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v11, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 468
    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 469
    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_successMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const-string v4, "\u00a1Paciente registrado correctamente!"

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 470
    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->limpiarFormulario()V

    .line 471
    nop

    .line 466
    .end local v9    # "response\\5":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v10    # "$i$a$-onSuccess-LoginViewModel$registrarPaciente$1$1\\5\\466\\0":I
    :cond_6
    nop

    .line 471
    iget-object v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v7}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_8

    .local v4, "error\\7":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 472
    .local v8, "$i$a$-onFailure-LoginViewModel$registrarPaciente$1$2\\7\\471\\0":I
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    const-string v10, "Error al registrar paciente"

    :cond_7
    invoke-interface {v9, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 473
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    nop

    .line 471
    .end local v4    # "error\\7":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-onFailure-LoginViewModel$registrarPaciente$1$2\\7\\471\\0":I
    :cond_8
    nop

    .line 479
    .end local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .end local v2    # "direccion":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DireccionRequest;
    .end local v6    # "tutoresList":Ljava/util/List;
    .end local v7    # "result":Ljava/lang/Object;
    :goto_2
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isRegistering$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 480
    goto :goto_3

    .line 479
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v3, "Error inesperado al registrar paciente"

    :cond_9
    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 477
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 481
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 479
    :goto_4
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPaciente$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isRegistering$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
