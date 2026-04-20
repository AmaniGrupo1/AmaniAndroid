.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->login()V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$login$1"
    f = "LoginViewModel.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x5e,
        0x62
    }
    m = "invokeSuspend"
    n = {
        "request",
        "request",
        "result",
        "loginResponse\\1",
        "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$4",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $passwordValue:Ljava/lang/String;

.field final synthetic $usernameValue:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$usernameValue:Ljava/lang/String;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$passwordValue:Ljava/lang/String;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$usernameValue:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$passwordValue:Ljava/lang/String;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->I$0:I

    .local v0, "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0":I
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v1, "loginResponse\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$2:Ljava/lang/Object;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$1:Ljava/lang/Object;

    .local v5, "result":Ljava/lang/Object;
    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    .local v6, "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0":I
    .end local v1    # "loginResponse\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :pswitch_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    .local v1, "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v1

    goto :goto_0

    .end local v1    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    nop

    .line 89
    :try_start_2
    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    .line 90
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$usernameValue:Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->$passwordValue:Ljava/lang/String;

    .line 89
    invoke-direct {v1, v3, v4}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .restart local v1    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$getLoginUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->label:I

    invoke-virtual {v3, v1, v4}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 87
    return-object v0

    .line 94
    :cond_0
    move-object v6, v1

    .end local v1    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    .restart local v6    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :goto_0
    move-object v4, v3

    .line 96
    .local v4, "result":Ljava/lang/Object;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v4}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v4

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v1, "loginResponse\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    const/4 v5, 0x0

    .line 98
    .local v5, "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0":I
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$2:Ljava/lang/Object;

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->L$4:Ljava/lang/Object;

    iput v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->I$0:I

    const/4 v7, 0x2

    iput v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->label:I

    invoke-static {v3, v1, p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$saveUserSession(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1

    .line 87
    return-object v0

    .line 98
    :cond_1
    move v0, v5

    move-object v5, v4

    .line 99
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v0    # "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0":I
    .local v5, "result":Ljava/lang/Object;
    :goto_1
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginResult$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 100
    invoke-static {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 101
    goto :goto_2

    .line 96
    .end local v0    # "$i$a$-onSuccess-LoginViewModel$login$1$1\\1\\96\\0":I
    .end local v1    # "loginResponse\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_2
    move-object v5, v4

    .end local v4    # "result":Ljava/lang/Object;
    .restart local v5    # "result":Ljava/lang/Object;
    :goto_2
    nop

    .line 101
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .local v1, "error\\3":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 102
    .local v3, "$i$a$-onFailure-LoginViewModel$login$1$2\\3\\101\\0":I
    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginResult$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v7

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 103
    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 104
    instance-of v4, v1, Lretrofit2/HttpException;

    if-eqz v4, :cond_3

    .line 105
    move-object v4, v1

    check-cast v4, Lretrofit2/HttpException;

    invoke-virtual {v4}, Lretrofit2/HttpException;->code()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 108
    move-object v4, v1

    check-cast v4, Lretrofit2/HttpException;

    goto :goto_3

    .line 107
    :sswitch_0
    const-string v4, "Usuario no encontrado"

    goto :goto_4

    .line 106
    :sswitch_1
    const-string v4, "Credenciales incorrectas"

    goto :goto_4

    .line 108
    :goto_3
    invoke-virtual {v4}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error de conexi\u00f3n: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 111
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Error al iniciar sesi\u00f3n"

    .line 103
    :cond_4
    :goto_4
    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    nop

    .line 101
    .end local v1    # "error\\3":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-onFailure-LoginViewModel$login$1$2\\3\\101\\0":I
    :cond_5
    nop

    .line 118
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "request":Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    :goto_5
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isLoggingIn$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 119
    goto :goto_6

    .line 118
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginError$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "Error inesperado al iniciar sesi\u00f3n"

    :cond_6
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_loginResult$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 120
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 118
    :goto_7
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$login$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->access$get_isLoggingIn$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x194 -> :sswitch_0
    .end sparse-switch
.end method
