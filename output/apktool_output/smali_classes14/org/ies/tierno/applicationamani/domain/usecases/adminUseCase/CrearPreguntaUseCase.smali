.class public final Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;
.super Ljava/lang/Object;
.source "CrearPreguntaUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086B\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V",
        "getRepository",
        "()Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;",
        "invoke",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
        "pregunta",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;",
        "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    return-void
.end method


# virtual methods
.method public final getRepository()Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    return-object v0
.end method

.method public final invoke(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "pregunta"    # Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    invoke-virtual {v0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->createPregunta(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
