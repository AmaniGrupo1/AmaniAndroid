.class public final Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;
.super Ljava/lang/Object;
.source "ProfileRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ&\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u001e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00072\u0006\u0010\u0013\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u0019\u0010\u000cJ\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u001b\u001a\u00020\nH\u0086@\u00a2\u0006\u0004\u0008\u001c\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;",
        "",
        "api",
        "Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;)V",
        "getProfile",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
        "id",
        "",
        "getProfile-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "uploadFoto",
        "file",
        "Lokhttp3/MultipartBody$Part;",
        "uploadFoto-0E7RQCE",
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
.field private final api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;)V
    .locals 1
    .param p1, "api"    # Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

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

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 37
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    nop

    .line 39
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteById$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->getPacienteById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 37
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;

    .line 40
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;
    goto :goto_2

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 38
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
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

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 46
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    nop

    .line 48
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPacienteByIdFirebase$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->getPacienteByIdFirebase(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 46
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;

    .line 49
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfileResponseDTO;
    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
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

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 10
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    nop

    .line 12
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getProfile$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->getProfilePsicologo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 10
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .line 13
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    goto :goto_2

    .line 14
    :catch_0
    move-exception v2

    .line 15
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 11
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
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

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 55
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    nop

    .line 57
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$getPsicologoById$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->getPsicologoById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 55
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .line 58
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    goto :goto_2

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 28
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    nop

    .line 30
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$obtenerPsicologoAsignado$1;->label:I

    invoke-interface {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->obtenerPsicologoAsignado(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 28
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .line 31
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    goto :goto_2

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 29
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final uploadFoto-0E7RQCE(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 19
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->J$0:J

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->L$0:Ljava/lang/Object;

    move-object p3, v2

    check-cast p3, Lokhttp3/MultipartBody$Part;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    nop

    .line 21
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository$uploadFoto$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ProfileApi;->uploadFoto(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 19
    return-object v2

    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .line 22
    .local v3, "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "response":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    goto :goto_2

    .line 23
    :catch_0
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 20
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
