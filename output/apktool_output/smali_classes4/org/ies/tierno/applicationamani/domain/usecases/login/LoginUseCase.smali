.class public final Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;
.super Ljava/lang/Object;
.source "LoginUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\t\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V",
        "login",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        "request",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
        "login-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPaciente",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
        "registerPaciente-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPacienteAdmin",
        "registerPacienteAdmin-gIAlu-s",
        "registrarAdmin",
        "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;",
        "registrarAdmin-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registrarPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
        "registrarPsicologo-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    return-void
.end method


# virtual methods
.method public final login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$login$1;->label:I

    invoke-virtual {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 25
    return-object v2

    .line 26
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerPaciente-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 36
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPaciente$1;->label:I

    invoke-virtual {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->registerPaciente-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 36
    return-object v2

    .line 37
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerPacienteAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 47
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registerPacienteAdmin$1;->label:I

    invoke-virtual {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->registerPacienteAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 47
    return-object v2

    .line 48
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registrarAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 58
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarAdmin$1;->label:I

    invoke-virtual {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->registerAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 58
    return-object v2

    .line 59
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registrarPsicologo-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 69
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/login/LoginUseCase$registrarPsicologo$1;->label:I

    invoke-virtual {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->registerPsicologo-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 69
    return-object v2

    .line 70
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
