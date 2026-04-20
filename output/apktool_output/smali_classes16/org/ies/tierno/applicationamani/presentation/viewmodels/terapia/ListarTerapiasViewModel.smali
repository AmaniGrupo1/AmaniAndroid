.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ListarTerapiasViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;)V",
        "terapias",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "getTerapias",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "cargarTerapias",
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
.field private final repository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

.field private final terapias:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;)V
    .locals 1
    .param p1, "repository"    # Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->terapias:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    nop

    .line 24
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->cargarTerapias()V

    .line 25
    nop

    .line 10
    return-void
.end method

.method public static final synthetic access$getRepository$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;)Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;

    .line 10
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->repository:Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    return-object v0
.end method


# virtual methods
.method public final cargarTerapias()V
    .locals 7

    .line 16
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel$cargarTerapias$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel$cargarTerapias$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 21
    return-void
.end method

.method public final getTerapias()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
            ">;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;->terapias:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method
