.class final Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/AuthRepository;->asignarPsicologo-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
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
    c = "org.ies.tierno.applicationamani.data.AuthRepository$asignarPsicologo$2"
    f = "AuthRepository.kt"
    i = {
        0x0
    }
    l = {
        0x5b
    }
    m = "invokeSuspend"
    n = {
        "request"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $idPaciente:J

.field final synthetic $idPsicologo:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;


# direct methods
.method constructor <init>(JJLorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPaciente:J

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPsicologo:J

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPaciente:J

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPsicologo:J

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;-><init>(JJLorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    .local v0, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    .end local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    nop

    .line 86
    :try_start_1
    new-instance v1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;

    .line 87
    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPaciente:J

    .line 88
    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->$idPsicologo:J

    .line 86
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;-><init>(JJ)V

    .line 91
    .local v1, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->this$0:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->access$getApi$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;->label:I

    invoke-interface {v2, v1, v3}, Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;->asignarPsicologo(Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 84
    return-object v0

    .line 91
    :cond_0
    move-object v0, v1

    .line 84
    .end local v1    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    .restart local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    :goto_0
    check-cast v2, Lretrofit2/Response;

    .line 93
    .local v2, "response":Lretrofit2/Response;
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 95
    .local v1, "body":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 96
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 98
    :cond_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Response body is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v1    # "body":Ljava/lang/Boolean;
    goto :goto_1

    .line 101
    :cond_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lretrofit2/HttpException;

    invoke-direct {v1, v2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
    .end local v2    # "response":Lretrofit2/Response;
    :goto_1
    goto :goto_2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 106
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
