.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ListarPacientesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListarPacientesViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListarPacientesViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1586#2:76\n1661#2,3:77\n*S KotlinDebug\n*F\n+ 1 ListarPacientesViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel\n*L\n70#1:76\n70#1:77,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "listarPacientesUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;",
        "darBajaPacienteUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;)V",
        "getListarPacientesUseCase",
        "()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;",
        "getDarBajaPacienteUseCase",
        "()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;",
        "_paciente",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
        "paciente",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getPaciente",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "darBajaPaciente",
        "Lkotlin/Result;",
        "",
        "id",
        "",
        "darBajaPaciente-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actualizarPacienteBaja",
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
.field private final _paciente:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final darBajaPacienteUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;

.field private final listarPacientesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;

.field private final paciente:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;)V
    .locals 7
    .param p1, "listarPacientesUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;
    .param p2, "darBajaPacienteUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;

    const-string v0, "listarPacientesUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "darBajaPacienteUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->listarPacientesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;

    .line 26
    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->darBajaPacienteUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->_paciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->_paciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->paciente:Lkotlinx/coroutines/flow/StateFlow;

    .line 33
    nop

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 40
    nop

    .line 24
    return-void
.end method

.method public static final synthetic access$get_paciente$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->_paciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final actualizarPacienteBaja(J)V
    .locals 29
    .param p1, "id"    # J

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->_paciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->_paciente:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 76
    .local v3, "$i$f$map\\1\\70":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination\\2":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$f$mapTo\\2\\76":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 78
    .local v8, "item\\2":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    .local v9, "it\\3":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    const/16 v28, 0x0

    .line 71
    .local v28, "$i$a$-map-ListarPacientesViewModel$actualizarPacienteBaja$1\\3\\78\\0":I
    invoke-virtual {v9}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->getIdPaciente()J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_0

    const/16 v26, 0x7dff

    const/16 v27, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v9 .. v27}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->copy$default(Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    move-result-object v10

    move-object v9, v10

    .line 78
    .end local v9    # "it\\3":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    .end local v28    # "$i$a$-map-ListarPacientesViewModel$actualizarPacienteBaja$1\\3\\78\\0":I
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v8    # "item\\2":Ljava/lang/Object;
    :cond_1
    nop

    .end local v4    # "destination\\2":Ljava/util/Collection;
    .end local v5    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo\\2\\76":I
    check-cast v4, Ljava/util/List;

    .line 76
    nop

    .line 70
    .end local v2    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map\\1\\70":I
    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public final darBajaPaciente-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51
    iget v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    nop

    .line 53
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->darBajaPacienteUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->J$0:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel$darBajaPaciente$1;->label:I

    invoke-virtual {v3, p1, p2, v0}, Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;->invoke-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 51
    return-object v2

    .line 53
    :cond_1
    move-object v2, v3

    :goto_1
    nop

    .line 54
    .local v2, "result":Ljava/lang/Object;
    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->actualizarPacienteBaja(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :cond_2
    nop

    .end local v2    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDarBajaPacienteUseCase()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->darBajaPacienteUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;

    return-object v0
.end method

.method public final getListarPacientesUseCase()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->listarPacientesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;

    return-object v0
.end method

.method public final getPaciente()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->paciente:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
