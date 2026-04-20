.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;
.super Ljava/lang/Object;
.source "ListarPacientesByPsicologoViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListarPacientesByPsicologoViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListarPacientesByPsicologoViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1586#2:64\n1661#2,3:65\n*S KotlinDebug\n*F\n+ 1 ListarPacientesByPsicologoViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1\n*L\n31#1:64\n31#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;)V
    .locals 0

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;->emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final emit(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "lista"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->access$get_pacientes$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 31
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->access$get_pacientesConInfo$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map\\1":Ljava/lang/Iterable;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel$1$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;

    const/4 v5, 0x0

    .line 64
    .local v5, "$i$f$map\\1\\31":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination\\2":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 65
    .local v8, "$i$f$mapTo\\2\\64":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 66
    .local v10, "item\\2":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;

    .local v11, "paciente\\3":Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;
    const/4 v12, 0x0

    .line 32
    .local v12, "$i$a$-map-ListarPacientesByPsicologoViewModel$1$1$1\\3\\66\\0":I
    new-instance v13, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;

    .line 33
    nop

    .line 34
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;->getFechaNacimiento()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->access$esMenorDeEdad(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Ljava/lang/String;)Z

    move-result v14

    .line 35
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;->getFechaNacimiento()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;->access$esMenorDeEdad(Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 36
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;->getTutor()Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 32
    :cond_1
    :goto_1
    invoke-direct {v13, v11, v14, v15}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;-><init>(Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;ZLjava/util/List;)V

    .line 38
    nop

    .line 66
    .end local v11    # "paciente\\3":Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;
    .end local v12    # "$i$a$-map-ListarPacientesByPsicologoViewModel$1$1$1\\3\\66\\0":I
    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v10    # "item\\2":Ljava/lang/Object;
    :cond_2
    nop

    .end local v6    # "destination\\2":Ljava/util/Collection;
    .end local v7    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo\\2\\64":I
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    .line 64
    nop

    .line 31
    .end local v3    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map\\1\\31":I
    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 40
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method
