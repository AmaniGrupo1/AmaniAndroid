.class public final Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;
.super Ljava/lang/Object;
.source "ListarSituacionUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/SituacionRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
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
.field private final repository:Lorg/ies/tierno/applicationamani/data/SituacionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;->repository:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;->repository:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->getSituaciones()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
