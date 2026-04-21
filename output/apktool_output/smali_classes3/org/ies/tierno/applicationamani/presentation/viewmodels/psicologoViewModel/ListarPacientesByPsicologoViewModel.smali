.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ListarPacientesByPsicologoViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "listarPacientesByPsicologo",
        "Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;)V",
        "getListarPacientesByPsicologo",
        "()Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;",
        "_pacientes",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
        "pacientes",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPacientes",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_pacientesConInfo",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;",
        "pacientesConInfo",
        "getPacientesConInfo",
        "esMenorDeEdad",
        "",
        "fechaNacimientoStr",
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
.field private final _pacientes:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _pacientesConInfo:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listarPacientesByPsicologo:Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;

.field private final pacientes:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pacientesConInfo:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;)V
    .locals 7
    .param p1, "listarPacientesByPsicologo"    # Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;

    const-string v0, "listarPacientesByPsicologo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->listarPacientesByPsicologo:Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientes:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientes:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->pacientes:Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientesConInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientesConInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->pacientesConInfo:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    nop

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 42
    nop

    .line 16
    return-void
.end method

.method public static final synthetic access$esMenorDeEdad(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Ljava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;
    .param p1, "fechaNacimientoStr"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->esMenorDeEdad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$get_pacientes$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientes:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_pacientesConInfo$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->_pacientesConInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final esMenorDeEdad(Ljava/lang/String;)Z
    .locals 6
    .param p1, "fechaNacimientoStr"    # Ljava/lang/String;

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 47
    :cond_2
    nop

    .line 48
    :try_start_0
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    .line 49
    .local v0, "formatter":Lj$/time/format/DateTimeFormatter;
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    move-result-object v3

    .line 50
    .local v3, "fechaNacimiento":Lj$/time/LocalDate;
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    move-result-object v4

    invoke-static {v3, v4}, Lj$/time/Period;->between(Lj$/time/LocalDate;Lj$/time/LocalDate;)Lj$/time/Period;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Period;->getYears()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v4, "edad":I
    const/16 v5, 0x12

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .end local v0    # "formatter":Lj$/time/format/DateTimeFormatter;
    .end local v3    # "fechaNacimiento":Lj$/time/LocalDate;
    .end local v4    # "edad":I
    :goto_2
    move v2, v1

    goto :goto_3

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v2
.end method


# virtual methods
.method public final getListarPacientesByPsicologo()Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->listarPacientesByPsicologo:Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;

    return-object v0
.end method

.method public final getPacientes()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->pacientes:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPacientesConInfo()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->pacientesConInfo:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
