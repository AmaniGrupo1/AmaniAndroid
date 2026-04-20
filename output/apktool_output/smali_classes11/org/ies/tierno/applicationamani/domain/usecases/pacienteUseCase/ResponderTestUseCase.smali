.class public final Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;
.super Ljava/lang/Object;
.source "ResponderTestUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086B\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V",
        "invoke",
        "",
        "idPaciente",
        "",
        "respuestas",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
        "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "idPaciente"    # J
    .param p3, "respuestas"    # Ljava/util/List;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ResponderTestUseCase;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    .line 16
    nop

    .line 17
    nop

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->responderTest(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
