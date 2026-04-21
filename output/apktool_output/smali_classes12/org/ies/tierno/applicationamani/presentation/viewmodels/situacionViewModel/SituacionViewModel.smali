.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SituacionViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "listUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;)V",
        "_situaciones",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        "situaciones",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSituaciones",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "cargarSituaciones",
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
.field private final _situaciones:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;

.field private final situaciones:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;)V
    .locals 1
    .param p1, "listUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;

    const-string v0, "listUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->listUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->_situaciones:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->_situaciones:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->situaciones:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    nop

    .line 20
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->cargarSituaciones()V

    .line 21
    nop

    .line 12
    return-void
.end method

.method public static final synthetic access$getListUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->listUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ListarSituacionUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_situaciones$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->_situaciones:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final cargarSituaciones()V
    .locals 7

    .line 24
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel$cargarSituaciones$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel$cargarSituaciones$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    return-void
.end method


# virtual methods
.method public final getSituaciones()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/situacionViewModel/SituacionViewModel;->situaciones:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
