.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ProfilePsicologoViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000cR\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "profileUseCaseGeneral",
        "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V",
        "_perfil",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
        "perfil",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPerfil",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_pacientesProfile",
        "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfeleResponseDTO;",
        "pacientesProfile",
        "getPacientesProfile",
        "_isLoading",
        "",
        "isLoading",
        "_error",
        "",
        "error",
        "getError",
        "fetchProfile",
        "",
        "id",
        "",
        "uploadFotoPerfil",
        "imageUri",
        "Landroid/net/Uri;",
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

.field private final _pacientesProfile:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfeleResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final _perfil:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V
    .locals 2
    .param p1, "profileUseCaseGeneral"    # Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    const-string v0, "profileUseCaseGeneral"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_perfil:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_pacientesProfile:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 17
    return-void
.end method

.method public static final synthetic access$getProfileUseCaseGeneral$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->profileUseCaseGeneral:Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    return-object v0
.end method

.method public static final synthetic access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_perfil$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_perfil:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final fetchProfile(J)V
    .locals 7
    .param p1, "id"    # J

    .line 34
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$fetchProfile$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$fetchProfile$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 45
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

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPacientesProfile()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PacienteProfeleResponseDTO;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_pacientesProfile:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPerfil()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_perfil:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

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

    .line 28
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final uploadFotoPerfil(JLandroid/net/Uri;)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "imageUri"    # Landroid/net/Uri;

    const-string v0, "imageUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 49
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;

    const/4 v7, 0x0

    move-object v4, p0

    move-wide v5, p1

    move-object v3, p3

    .end local p1    # "id":J
    .end local p3    # "imageUri":Landroid/net/Uri;
    .local v3, "imageUri":Landroid/net/Uri;
    .local v5, "id":J
    invoke-direct/range {v2 .. v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;-><init>(Landroid/net/Uri;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLkotlin/coroutines/Continuation;)V

    .end local v3    # "imageUri":Landroid/net/Uri;
    .end local v5    # "id":J
    .restart local p1    # "id":J
    .restart local p3    # "imageUri":Landroid/net/Uri;
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 71
    return-void
.end method
