.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CuestionarioViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001f\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "obtenerPreguntasUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;)V",
        "getObtenerPreguntasUseCase",
        "()Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;",
        "preguntas",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
        "getPreguntas",
        "()Lkotlinx/coroutines/flow/StateFlow;",
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
.field private final obtenerPreguntasUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;

.field private final preguntas:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;)V
    .locals 9
    .param p1, "obtenerPreguntasUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;

    const-string v0, "obtenerPreguntasUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->obtenerPreguntasUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;

    .line 27
    nop

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->obtenerPreguntasUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;->invoke()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 28
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 29
    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 27
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->preguntas:Lkotlinx/coroutines/flow/StateFlow;

    .line 21
    return-void
.end method


# virtual methods
.method public final getObtenerPreguntasUseCase()Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->obtenerPreguntasUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;

    return-object v0
.end method

.method public final getPreguntas()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;->preguntas:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
