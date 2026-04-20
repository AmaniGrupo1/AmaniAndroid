.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CitasViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J:\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010$\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\n\u00a2\u0006\u0004\u0008$\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010%R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\'R\u001c\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001f\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001c\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010+R\u001f\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0,8\u0006\u00a2\u0006\u000c\n\u0004\u00082\u0010.\u001a\u0004\u00083\u00100R \u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u000205040(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010+R#\u00107\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u000205040,8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010.\u001a\u0004\u00088\u00100R\u001c\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010+R\u001f\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090,8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010.\u001a\u0004\u0008<\u00100R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020=0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010+R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020=0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010.\u001a\u0004\u0008?\u00100R\u001c\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010+R\u001f\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010.\u001a\u0004\u0008B\u00100\u00a8\u0006C"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;",
        "citasRepository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;",
        "profileRepository",
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "userSessionDataStore",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V",
        "",
        "idPaciente",
        "",
        "cargarPsicologoAsignado",
        "(J)V",
        "clearError",
        "()V",
        "j$/time/YearMonth",
        "month",
        "cargarAgendaMensual",
        "(Lj$/time/YearMonth;)V",
        "j$/time/LocalDate",
        "fecha",
        "cargarDisponibilidad",
        "(Lj$/time/LocalDate;)V",
        "j$/time/LocalTime",
        "hora",
        "",
        "motivo",
        "",
        "duracionMinutos",
        "Lkotlin/Result;",
        "reservarCita-yxL6bBk",
        "(Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reservarCita",
        "idCita",
        "cancelarCita",
        "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;",
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
        "_userSession",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "userSession",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getUserSession",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_psicologoId",
        "psicologoId",
        "getPsicologoId",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
        "_agendaMensual",
        "agendaMensual",
        "getAgendaMensual",
        "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
        "_disponibilidadDia",
        "disponibilidadDia",
        "getDisponibilidadDia",
        "",
        "_isLoading",
        "isLoading",
        "_errorMessage",
        "errorMessage",
        "getErrorMessage",
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
.field private final _agendaMensual:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _disponibilidadDia:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorMessage:Lkotlinx/coroutines/flow/MutableStateFlow;
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

.field private final _psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final _userSession:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation
.end field

.field private final agendaMensual:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final citasRepository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

.field private final disponibilidadDia:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessage:Lkotlinx/coroutines/flow/StateFlow;
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

.field private final profileRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

.field private final psicologoId:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final userSession:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation
.end field

.field private final userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V
    .locals 8
    .param p1, "citasRepository"    # Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .param p2, "profileRepository"    # Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;
    .param p3, "userSessionDataStore"    # Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    const-string v0, "citasRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSessionDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->citasRepository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .line 24
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->profileRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    .line 25
    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->userSession:Lkotlinx/coroutines/flow/StateFlow;

    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->psicologoId:Lkotlinx/coroutines/flow/StateFlow;

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_agendaMensual:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 35
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_agendaMensual:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->agendaMensual:Lkotlinx/coroutines/flow/StateFlow;

    .line 37
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_disponibilidadDia:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 38
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_disponibilidadDia:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->disponibilidadDia:Lkotlinx/coroutines/flow/StateFlow;

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 41
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    .line 43
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_errorMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_errorMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->errorMessage:Lkotlinx/coroutines/flow/StateFlow;

    .line 46
    nop

    .line 47
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1;

    invoke-direct {v1, p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 59
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2;

    invoke-direct {v1, p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$2;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 66
    nop

    .line 22
    return-void
.end method

.method public static final synthetic access$cargarPsicologoAsignado(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;J)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;
    .param p1, "idPaciente"    # J

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cargarPsicologoAsignado(J)V

    return-void
.end method

.method public static final synthetic access$getCitasRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->citasRepository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    return-object v0
.end method

.method public static final synthetic access$getProfileRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->profileRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;

    return-object v0
.end method

.method public static final synthetic access$getUserSessionDataStore$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    return-object v0
.end method

.method public static final synthetic access$get_agendaMensual$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_agendaMensual:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_disponibilidadDia$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_disponibilidadDia:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_errorMessage$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_errorMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_psicologoId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_userSession$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final cargarPsicologoAsignado(J)V
    .locals 7
    .param p1, "idPaciente"    # J

    .line 69
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarPsicologoAsignado$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarPsicologoAsignado$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 78
    return-void
.end method

.method public static synthetic reservarCita-yxL6bBk$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 122
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 125
    const-string p3, "Cita psicol\u00f3gica"

    move-object v3, p3

    goto :goto_0

    .line 122
    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 126
    const/16 p4, 0x3c

    move v4, p4

    goto :goto_1

    .line 122
    :cond_1
    move v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->reservarCita-yxL6bBk(Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancelarCita(J)V
    .locals 7
    .param p1, "idCita"    # J

    .line 154
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cancelarCita$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 165
    return-void
.end method

.method public final cargarAgendaMensual(Lj$/time/YearMonth;)V
    .locals 13
    .param p1, "month"    # Lj$/time/YearMonth;

    const-string v0, "month"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    if-nez v0, :cond_0

    return-void

    .line 87
    .local v0, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    :cond_0
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdUsuario()J

    move-result-wide v1

    :goto_0
    move-wide v5, v1

    .line 89
    .local v5, "idPaciente":J
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v7, p1

    .end local p1    # "month":Lj$/time/YearMonth;
    .local v7, "month":Lj$/time/YearMonth;
    invoke-direct/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarAgendaMensual$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLj$/time/YearMonth;Lkotlin/coroutines/Continuation;)V

    .end local v7    # "month":Lj$/time/YearMonth;
    .restart local p1    # "month":Lj$/time/YearMonth;
    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 103
    return-void
.end method

.method public final cargarDisponibilidad(Lj$/time/LocalDate;)V
    .locals 12
    .param p1, "fecha"    # Lj$/time/LocalDate;

    const-string v0, "fecha"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_0

    :goto_2
    move-wide v4, v0

    .line 108
    .local v4, "idPsicologo":J
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarDisponibilidad$1;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v6, p1

    .end local p1    # "fecha":Lj$/time/LocalDate;
    .local v6, "fecha":Lj$/time/LocalDate;
    invoke-direct/range {v2 .. v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$cargarDisponibilidad$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;JLj$/time/LocalDate;Lkotlin/coroutines/Continuation;)V

    .end local v6    # "fecha":Lj$/time/LocalDate;
    .restart local p1    # "fecha":Lj$/time/LocalDate;
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 120
    return-void

    .line 106
    .end local v4    # "idPsicologo":J
    :cond_2
    return-void
.end method

.method public final clearError()V
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_errorMessage:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final getAgendaMensual()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->agendaMensual:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDisponibilidadDia()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->disponibilidadDia:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getErrorMessage()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->errorMessage:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPsicologoId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->psicologoId:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getUserSession()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->userSession:Lkotlinx/coroutines/flow/StateFlow;

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

    .line 41
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final reservarCita-yxL6bBk(Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .param p1, "fecha"    # Lj$/time/LocalDate;
    .param p2, "hora"    # Lj$/time/LocalTime;
    .param p3, "motivo"    # Ljava/lang/String;
    .param p4, "duracionMinutos"    # I
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalTime;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;

    iget v4, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v4, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->label:I

    sub-int/2addr v4, v5

    iput v4, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;

    invoke-direct {v3, v0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Lkotlin/coroutines/Continuation;)V

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v4, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 122
    iget v6, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->label:I

    packed-switch v6, :pswitch_data_0

    move-object/from16 v16, v3

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v5, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->J$1:J

    .local v5, "idPaciente":J
    iget-wide v7, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->J$0:J

    .local v7, "idPsicologo":J
    iget v9, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->I$0:I

    .end local p4    # "duracionMinutos":I
    .local v9, "duracionMinutos":I
    iget-object v10, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    .local v10, "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    iget-object v11, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .local v11, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .end local p3    # "motivo":Ljava/lang/String;
    .local v12, "motivo":Ljava/lang/String;
    iget-object v13, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lj$/time/LocalTime;

    .end local p2    # "hora":Lj$/time/LocalTime;
    .local v13, "hora":Lj$/time/LocalTime;
    iget-object v14, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$0:Ljava/lang/Object;

    move-object v1, v14

    check-cast v1, Lj$/time/LocalDate;

    .end local p1    # "fecha":Lj$/time/LocalDate;
    .local v1, "fecha":Lj$/time/LocalDate;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v4

    check-cast v14, Lkotlin/Result;

    invoke-virtual {v14}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_4

    .end local v1    # "fecha":Lj$/time/LocalDate;
    .end local v5    # "idPaciente":J
    .end local v7    # "idPsicologo":J
    .end local v9    # "duracionMinutos":I
    .end local v10    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .end local v11    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .end local v12    # "motivo":Ljava/lang/String;
    .end local v13    # "hora":Lj$/time/LocalTime;
    .restart local p1    # "fecha":Lj$/time/LocalDate;
    .restart local p2    # "hora":Lj$/time/LocalTime;
    .restart local p3    # "motivo":Ljava/lang/String;
    .restart local p4    # "duracionMinutos":I
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_userSession:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    if-nez v6, :cond_1

    .line 130
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "No hay sesi\u00f3n"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 129
    :cond_1
    move-object v11, v6

    .line 132
    .restart local v11    # "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->_psicologoId:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_1

    :goto_2
    move-wide v15, v6

    .line 135
    .local v15, "idPsicologo":J
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPaciente()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdUsuario()J

    move-result-wide v6

    :goto_3
    move-wide v13, v6

    .line 137
    .local v13, "idPaciente":J
    new-instance v12, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    .line 138
    nop

    .line 139
    nop

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "T"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 141
    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v18

    .line 137
    nop

    .line 142
    nop

    .line 143
    nop

    .line 137
    const/16 v25, 0x270

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "pendiente"

    const/16 v24, 0x0

    move-object/from16 v23, p3

    invoke-direct/range {v12 .. v26}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v8, v15

    .end local v15    # "idPsicologo":J
    .local v8, "idPsicologo":J
    move-object v10, v12

    .line 146
    .restart local v10    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->citasRepository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    iput-object v1, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->L$4:Ljava/lang/Object;

    move/from16 v12, p4

    iput v12, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->I$0:I

    iput-wide v8, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->J$0:J

    iput-wide v13, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->J$1:J

    const/4 v15, 0x1

    iput v15, v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel$reservarCita$1;->label:I

    invoke-virtual {v6, v10, v3}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->crearCita-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_4

    .line 122
    return-object v5

    .line 146
    :cond_4
    move-wide/from16 v27, v13

    move-object v14, v6

    move-wide/from16 v5, v27

    move-object v13, v7

    move-wide v7, v8

    move v9, v12

    move-object/from16 v12, p3

    .end local v8    # "idPsicologo":J
    .end local p1    # "fecha":Lj$/time/LocalDate;
    .end local p2    # "hora":Lj$/time/LocalTime;
    .end local p3    # "motivo":Ljava/lang/String;
    .end local p4    # "duracionMinutos":I
    .restart local v1    # "fecha":Lj$/time/LocalDate;
    .restart local v5    # "idPaciente":J
    .restart local v7    # "idPsicologo":J
    .restart local v9    # "duracionMinutos":I
    .restart local v12    # "motivo":Ljava/lang/String;
    .local v13, "hora":Lj$/time/LocalTime;
    :goto_4
    nop

    .line 147
    invoke-static {v14}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v14, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    .local v14, "it\\1":Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;
    const/4 v15, 0x0

    .line 148
    .local v15, "$i$a$-map-CitasViewModel$reservarCita$2\\1\\147\\0":I
    move-object/from16 v16, v1

    check-cast v16, Lj$/time/temporal/TemporalAccessor;

    invoke-static/range {v16 .. v16}, Lj$/time/YearMonth;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/YearMonth;

    move-result-object v2

    move-object/from16 v16, v3

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v16, "$continuation":Lkotlin/coroutines/Continuation;
    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V

    .line 149
    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->cargarDisponibilidad(Lj$/time/LocalDate;)V

    .line 150
    nop

    .end local v14    # "it\\1":Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;
    .end local v15    # "$i$a$-map-CitasViewModel$reservarCita$2\\1\\147\\0":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .end local v16    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v16    # "$continuation":Lkotlin/coroutines/Continuation;
    invoke-static {v14}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    :goto_5
    return-object v2

    .line 133
    .end local v1    # "fecha":Lj$/time/LocalDate;
    .end local v5    # "idPaciente":J
    .end local v7    # "idPsicologo":J
    .end local v9    # "duracionMinutos":I
    .end local v10    # "request":Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .end local v12    # "motivo":Ljava/lang/String;
    .end local v13    # "hora":Lj$/time/LocalTime;
    .end local v16    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "fecha":Lj$/time/LocalDate;
    .restart local p2    # "hora":Lj$/time/LocalTime;
    .restart local p3    # "motivo":Ljava/lang/String;
    .restart local p4    # "duracionMinutos":I
    :cond_6
    move-object/from16 v16, v3

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v16    # "$continuation":Lkotlin/coroutines/Continuation;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No hay psic\u00f3logo asignado"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
