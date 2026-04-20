.class final Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/AuthRepository;->login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
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
    c = "org.ies.tierno.applicationamani.data.AuthRepository$login$2"
    f = "AuthRepository.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x21,
        0x29,
        0x2c
    }
    m = "invokeSuspend"
    n = {
        "response",
        "body",
        "response",
        "body"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $request:Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->$request:Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->$request:Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    invoke-direct {v0, v1, v2, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v0, "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lretrofit2/Response;

    .local v1, "response":Lretrofit2/Response;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v0    # "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v1    # "response":Lretrofit2/Response;
    :pswitch_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v1, "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lretrofit2/Response;

    .local v3, "response":Lretrofit2/Response;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v3    # "response":Lretrofit2/Response;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 31
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    nop

    .line 33
    :try_start_2
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->access$getApi$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;

    move-result-object v1

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->$request:Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->label:I

    invoke-interface {v1, v3, v4}, Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;->login(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 31
    return-object v0

    :cond_0
    :goto_0
    check-cast v1, Lretrofit2/Response;

    .line 35
    .local v1, "response":Lretrofit2/Response;
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .line 38
    .local v3, "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    if-eqz v3, :cond_3

    .line 41
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {v4}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->access$getTokenDataStore$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    move-result-object v4

    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getToken()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->label:I

    invoke-virtual {v4, v5, v6}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->saveToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 31
    return-object v0

    .line 41
    :cond_1
    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    .line 44
    .local v1, "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .local v3, "response":Lretrofit2/Response;
    :goto_1
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {v4}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->access$getUserSessionDataStore$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    move-result-object v4

    .line 45
    new-instance v5, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 46
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdUsuario()J

    move-result-wide v6

    .line 47
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getNombre()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getRol()Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v10

    .line 50
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdPaciente()Ljava/lang/Long;

    move-result-object v11

    .line 45
    invoke-direct/range {v5 .. v11}, Lorg/ies/tierno/applicationamani/data/local/UserSession;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 44
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;->label:I

    invoke-virtual {v4, v5, v6}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->saveSession(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 31
    return-object v0

    .line 44
    :cond_2
    move-object v0, v1

    move-object v1, v3

    .line 54
    .end local v3    # "response":Lretrofit2/Response;
    .restart local v0    # "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .local v1, "response":Lretrofit2/Response;
    :goto_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    .line 56
    .end local v0    # "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .local v3, "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    :cond_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Response body is null"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "body":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    goto :goto_6

    .line 59
    :cond_4
    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 60
    .local v0, "errorBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 65
    if-nez v0, :cond_6

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v3

    goto :goto_4

    .line 64
    :sswitch_0
    const-string v3, "Error del servidor"

    goto :goto_5

    .line 63
    :sswitch_1
    const-string v3, "Usuario no encontrado"

    goto :goto_5

    .line 62
    :sswitch_2
    const-string v3, "Acceso denegado"

    goto :goto_5

    .line 61
    :sswitch_3
    const-string v3, "Credenciales incorrectas"

    goto :goto_5

    .line 65
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error HTTP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v0

    .line 60
    :goto_5
    nop

    .line 67
    .local v3, "errorMessage":Ljava/lang/String;
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "errorBody":Ljava/lang/String;
    .end local v1    # "response":Lretrofit2/Response;
    .end local v3    # "errorMessage":Ljava/lang/String;
    :goto_6
    goto :goto_b

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    nop

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/CharSequence;

    const-string v4, "Connection"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    goto :goto_8

    :cond_7
    move v1, v3

    :goto_8
    if-eqz v1, :cond_8

    .line 73
    const-string v1, "No se puede conectar al servidor. Verifica que el backend este ejecutandose en http://10.0.2.2:8080"

    goto :goto_a

    .line 74
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/CharSequence;

    const-string v4, "timeout"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v2, :cond_9

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    if-eqz v2, :cond_a

    .line 75
    const-string v1, "Tiempo de espera agotado. Intenta de nuevo."

    goto :goto_a

    .line 76
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, "Error de conexion"

    .line 71
    :cond_b
    :goto_a
    nop

    .line 78
    .local v1, "errorMsg":Ljava/lang/String;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :goto_b
    invoke-static {v2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 79
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_3
        0x193 -> :sswitch_2
        0x194 -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method
