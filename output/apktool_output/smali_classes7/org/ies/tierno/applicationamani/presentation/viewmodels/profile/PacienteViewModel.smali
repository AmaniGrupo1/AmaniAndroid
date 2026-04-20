.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PacienteViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "profileUseCaseGeneral",
        "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V",
        "_psicologoAsignado",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
        "psicologoAsignado",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPsicologoAsignado",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_isLoading",
        "",
        "isLoading",
        "_error",
        "",
        "error",
        "getError",
        "cargarPsicologoAsignado",
        "",
        "idPaciente",
        "",
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
.field private final _error:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _psicologoAsignado:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isLoading:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

.field private final psicologoAsignado:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V
    .locals 2
    .param p1, "profileUseCaseGeneral"    # Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    const-string v0, "profileUseCaseGeneral"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_psicologoAsignado:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 17
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_psicologoAsignado:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->psicologoAsignado:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->error:Lkotlinx/coroutines/flow/StateFlow;

    .line 12
    return-void
.end method

.method public static final synthetic access$getProfileUseCaseGeneral$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    return-object v0
.end method

.method public static final synthetic access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_psicologoAsignado$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_psicologoAsignado:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final cargarPsicologoAsignado(J)V
    .locals 7
    .param p1, "idPaciente"    # J

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel$cargarPsicologoAsignado$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 38
    return-void
.end method

.method public final getError()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->error:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPsicologoAsignado()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->psicologoAsignado:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isLoading()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
