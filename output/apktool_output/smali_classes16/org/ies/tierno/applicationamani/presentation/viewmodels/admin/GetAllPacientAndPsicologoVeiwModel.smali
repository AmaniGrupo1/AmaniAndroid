.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;
.super Landroidx/lifecycle/ViewModel;
.source "GetAllPacientAndPsicologoVeiwModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;",
        "Landroidx/lifecycle/ViewModel;",
        "getAllPacientAndPsicologoUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;)V",
        "_pacientes",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
        "get_pacientes",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "paciente",
        "getPaciente",
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
.field private final _pacientes:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getAllPacientAndPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;

.field private final paciente:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;)V
    .locals 9
    .param p1, "getAllPacientAndPsicologoUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;

    const-string v0, "getAllPacientAndPsicologoUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->getAllPacientAndPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;

    .line 19
    nop

    .line 18
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->getAllPacientAndPsicologoUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;->invoke()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 20
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 21
    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 19
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->_pacientes:Lkotlinx/coroutines/flow/StateFlow;

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->_pacientes:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->paciente:Lkotlinx/coroutines/flow/StateFlow;

    .line 12
    return-void
.end method


# virtual methods
.method public final getPaciente()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->paciente:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final get_pacientes()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;->_pacientes:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
