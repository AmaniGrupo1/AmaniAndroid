.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->registrarPsicologo()V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$registrarPsicologo$1"
    f = "LoginViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x2a4
    }
    m = "invokeSuspend"
    n = {
        "psicologoRequest"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 663
    iget v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    .local v0, "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v0    # "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 664
    nop

    .line 665
    :try_start_1
    new-instance v5, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    .line 666
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getNombre()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 667
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getApellido()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 668
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getEmail()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 669
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 670
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegistroEspecialidad()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 671
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegistroExperiencia()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/Integer;

    .line 672
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegistroDescripcion()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 673
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->getRegistroLicencia()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 665
    const/16 v16, 0x300

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v17}, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 676
    .local v5, "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$getLoginUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    move-result-object v2

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->label:I

    invoke-virtual {v2, v5, v6}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->registrarPsicologo-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 663
    return-object v0

    .line 676
    :cond_0
    move-object v0, v5

    .end local v5    # "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    .restart local v0    # "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    :goto_0
    nop

    .line 678
    .local v2, "result":Ljava/lang/Object;
    iget-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    check-cast v6, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;

    .local v6, "response\\1":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    const/4 v7, 0x0

    .line 679
    .local v7, "$i$a$-onSuccess-LoginViewModel$registrarPsicologo$1$1\\1\\678\\0":I
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 680
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 683
    nop

    .line 678
    .end local v6    # "response\\1":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;
    .end local v7    # "$i$a$-onSuccess-LoginViewModel$registrarPsicologo$1$1\\1\\678\\0":I
    :cond_1
    nop

    .line 683
    iget-object v5, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_5

    .local v6, "error\\3":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 685
    .local v7, "$i$a$-onFailure-LoginViewModel$registrarPsicologo$1$2\\3\\683\\0":I
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "email"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-ne v8, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 686
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_emailError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const-string v8, "Este correo electr\u00f3nico ya est\u00e1 registrado"

    invoke-interface {v3, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 688
    :cond_3
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, "Error al registrar psic\u00f3logo"

    :cond_4
    invoke-interface {v3, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 689
    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    nop

    .line 683
    .end local v6    # "error\\3":Ljava/lang/Throwable;
    .end local v7    # "$i$a$-onFailure-LoginViewModel$registrarPsicologo$1$2\\3\\683\\0":I
    :cond_5
    nop

    .line 695
    .end local v0    # "psicologoRequest":Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    .end local v2    # "result":Ljava/lang/Object;
    :goto_2
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isRegistering$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 696
    goto :goto_3

    .line 695
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "Error inesperado al registrar psic\u00f3logo"

    :cond_6
    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 693
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_registerSuccess$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 697
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 695
    :goto_4
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$registrarPsicologo$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isRegistering$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
