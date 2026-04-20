.class public final Lorg/ies/tierno/applicationamani/data/AuthRepository;
.super Ljava/lang/Object;
.source "AuthRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u001e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0004\u0008 \u0010!J\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u000b2\u0006\u0010\r\u001a\u00020$H\u0086@\u00a2\u0006\u0004\u0008%\u0010&J\u0012\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0)0(J\u0012\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0)0(J\u0012\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0)0(J\u0012\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0)0(J\u001e\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u000b2\u0006\u00102\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u00083\u00104J\u000e\u00105\u001a\u000206H\u0086@\u00a2\u0006\u0002\u00107R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "",
        "api",
        "Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;",
        "tokenDataStore",
        "Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;",
        "userSessionDataStore",
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V",
        "login",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        "request",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
        "login-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "asignarPsicologo",
        "",
        "idPaciente",
        "",
        "idPsicologo",
        "asignarPsicologo-0E7RQCE",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPaciente",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
        "registerPaciente-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPacienteAdmin",
        "registerPacienteAdmin-gIAlu-s",
        "registerAdmin",
        "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;",
        "registerAdmin-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
        "registerPsicologo-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPacientesConPsicologo",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
        "getPaciente",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
        "getPsicologos",
        "getPacientesByPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
        "darBajaPaciente",
        "",
        "id",
        "darBajaPaciente-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logout",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final api:Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;

.field private final tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

.field private final userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V
    .locals 1
    .param p1, "api"    # Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;
    .param p2, "tokenDataStore"    # Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;
    .param p3, "userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenDataStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSessionDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;

    .line 26
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    .line 27
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    .line 24
    return-void
.end method

.method public static final synthetic access$getApi$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;

    return-object v0
.end method

.method public static final synthetic access$getTokenDataStore$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    return-object v0
.end method

.method public static final synthetic access$getUserSessionDataStore$p(Lorg/ies/tierno/applicationamani/data/AuthRepository;)Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    return-object v0
.end method


# virtual methods
.method public final asignarPsicologo-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "idPaciente"    # J
    .param p3, "idPsicologo"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;

    iget v2, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;

    invoke-direct {v1, p0, v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v2, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 83
    iget v4, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->label:I

    packed-switch v4, :pswitch_data_0

    move-wide v8, p3

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v3, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->J$1:J

    .end local p3    # "idPsicologo":J
    .local v3, "idPsicologo":J
    iget-wide v5, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->J$0:J

    .end local p1    # "idPaciente":J
    .local v5, "idPaciente":J
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v2

    goto :goto_1

    .end local v3    # "idPsicologo":J
    .end local v5    # "idPaciente":J
    .restart local p1    # "idPaciente":J
    .restart local p3    # "idPsicologo":J
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;

    const/4 v11, 0x0

    move-object v10, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v5 .. v11}, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$2;-><init>(JJLorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-wide p1, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->J$0:J

    iput-wide v8, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->J$1:J

    const/4 v10, 0x1

    iput v10, v1, Lorg/ies/tierno/applicationamani/data/AuthRepository$asignarPsicologo$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 83
    return-object v3

    .line 84
    :cond_1
    move-wide v5, p1

    move-object v7, v4

    move-wide v3, v8

    .end local p1    # "idPaciente":J
    .end local p3    # "idPsicologo":J
    .restart local v3    # "idPsicologo":J
    .restart local v5    # "idPaciente":J
    :goto_1
    check-cast v7, Lkotlin/Result;

    invoke-virtual {v7}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v7

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final darBajaPaciente-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 274
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;JLkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$darBajaPaciente$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 274
    return-object v2

    .line 275
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPaciente()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPaciente$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method public final getPacientesByPsicologo()Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;>;"
        }
    .end annotation

    .line 262
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesByPsicologo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesByPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 269
    new-instance v2, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesByPsicologo$2;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesByPsicologo$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 271
    return-object v0
.end method

.method public final getPacientesConPsicologo()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesConPsicologo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPacientesConPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public final getPsicologos()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPsicologos$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$getPsicologos$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public final login-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 30
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->label:I

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
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$login$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 30
    return-object v2

    .line 31
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final logout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;

    invoke-direct {v0, p0, p1}, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 297
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

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
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

    invoke-virtual {v3, v0}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->clearToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 297
    return-object v2

    .line 299
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/AuthRepository;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    const/4 v4, 0x2

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$logout$1;->label:I

    invoke-virtual {v3, v0}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->clearSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 297
    return-object v2

    .line 300
    :cond_2
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 154
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->label:I

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
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerAdmin$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 154
    return-object v2

    .line 155
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerPaciente-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 109
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->label:I

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
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPaciente$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 109
    return-object v2

    .line 110
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerPacienteAdmin-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 132
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->label:I

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
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPacienteAdmin$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 132
    return-object v2

    .line 133
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerPsicologo-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 176
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->label:I

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
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$2;-><init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/AuthRepository$registerPsicologo$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 176
    return-object v2

    .line 177
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
