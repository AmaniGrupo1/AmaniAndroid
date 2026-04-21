.class public final Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;
.super Ljava/lang/Object;
.source "ProfileUseCaseGeneral.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0015\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\t2\u0006\u0010\u0015\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00180\t2\u0006\u0010\u0015\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u001e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001d\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0004\u0008\u001e\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;)V",
        "getRepository",
        "()Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;",
        "getProfile",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
        "id",
        "",
        "getProfile-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadPerfil",
        "file",
        "Lokhttp3/MultipartBody$Part;",
        "uploadPerfil-0E7RQCE",
        "(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "obtenerPsicologoAsignado",
        "idPaciente",
        "obtenerPsicologoAsignado-gIAlu-s",
        "getPacienteById",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;",
        "getPacienteById-gIAlu-s",
        "getPacienteByIdFirebase",
        "getPacienteByIdFirebase-gIAlu-s",
        "getPsicologoById",
        "idPsicologo",
        "getPsicologoById-gIAlu-s",
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
.field private final repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    return-void
.end method


# virtual methods
.method public final getPacienteById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "idPaciente"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteById$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->getPacienteById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 25
    return-object v2

    .line 26
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPacienteByIdFirebase-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "idPaciente"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPacienteByIdFirebase$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->getPacienteByIdFirebase-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 29
    return-object v2

    .line 30
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getProfile-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 10
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getProfile$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->getProfile-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 10
    return-object v2

    .line 11
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPsicologoById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "idPsicologo"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 33
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$getPsicologoById$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->getPsicologoById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 33
    return-object v2

    .line 34
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRepository()Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    return-object v0
.end method

.method public final obtenerPsicologoAsignado-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "idPaciente"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 21
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$obtenerPsicologoAsignado$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->obtenerPsicologoAsignado-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 21
    return-object v2

    .line 22
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final uploadPerfil-0E7RQCE(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J
    .param p3, "file"    # Lokhttp3/MultipartBody$Part;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokhttp3/MultipartBody$Part;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 14
    iget v3, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->J$0:J

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->L$0:Ljava/lang/Object;

    move-object p3, v2

    check-cast p3, Lokhttp3/MultipartBody$Part;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral$uploadPerfil$1;->label:I

    invoke-virtual {v3, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->uploadFoto-0E7RQCE(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 14
    return-object v2

    .line 18
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
