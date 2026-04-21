.class public final Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;
.super Ljava/lang/Object;
.source "TodosLosPacientesUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0086\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;",
        "",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V",
        "getRepository",
        "()Lorg/ies/tierno/applicationamani/data/AuthRepository;",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
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

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/AuthRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/AuthRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    return-void
.end method


# virtual methods
.method public final getRepository()Lorg/ies/tierno/applicationamani/data/AuthRepository;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;->repository:Lorg/ies/tierno/applicationamani/data/AuthRepository;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/AuthRepository;->getPaciente()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
