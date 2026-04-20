.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ListadoPacientesScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->ListadoPacientesScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1"
    f = "ListadoPacientesScreen.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xcb,
        0xce,
        0xd0
    }
    m = "invokeSuspend"
    n = {
        "paciente\\1",
        "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0",
        "paciente\\1",
        "result\\1",
        "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0",
        "paciente\\1",
        "result\\1",
        "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0"
    }
    s = {
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pacienteSeleccionado$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$pacienteSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$pacienteSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 201
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-object v8, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    .local v0, "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    .local v1, "result\\1":Ljava/lang/Object;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    .local v2, "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object v3, p1

    goto/16 :goto_2

    .end local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .end local v1    # "result\\1":Ljava/lang/Object;
    .end local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    :pswitch_1
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    .restart local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    .restart local v1    # "result\\1":Ljava/lang/Object;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    .restart local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object v3, p1

    goto/16 :goto_1

    .end local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .end local v1    # "result\\1":Ljava/lang/Object;
    .end local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    :pswitch_2
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    .local v1, "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    .restart local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .end local v1    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .end local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$pacienteSeleccionado$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->access$ListadoPacientesScreen$lambda$3(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    .local v1, "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    const/4 v2, 0x0

    .line 203
    .local v2, "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->getIdPaciente()J

    move-result-wide v5

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    const/4 v7, 0x1

    iput v7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->label:I

    invoke-virtual {v4, v5, v6, p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->darBajaPaciente-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 201
    return-object v0

    .line 203
    :cond_0
    move v12, v2

    move-object v2, v1

    move v1, v12

    .local v1, "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .local v2, "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    :goto_0
    move-object v11, v5

    .line 204
    .local v11, "result\\1":Ljava/lang/Object;
    invoke-static {v11}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;->getIdPaciente()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;->actualizarPacienteBaja(J)V

    .line 206
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$2:Ljava/lang/Object;

    iput v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    const/4 v4, 0x2

    iput v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->label:I

    const-string v4, "Paciente dado de baja correctamente"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 201
    return-object v0

    .line 206
    :cond_1
    move v0, v1

    move-object v1, v11

    .end local v11    # "result\\1":Ljava/lang/Object;
    .restart local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .local v1, "result\\1":Ljava/lang/Object;
    :goto_1
    check-cast v3, Landroidx/compose/material3/SnackbarResult;

    goto :goto_3

    .line 208
    .end local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .local v1, "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .restart local v11    # "result\\1":Ljava/lang/Object;
    :cond_2
    move-object v8, p0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->L$2:Ljava/lang/Object;

    iput v1, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->I$0:I

    const/4 v4, 0x3

    iput v4, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->label:I

    const-string v4, "Error al dar de baja al paciente"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 201
    return-object v0

    .line 208
    :cond_3
    move v0, v1

    move-object v1, v11

    .line 201
    .end local v11    # "result\\1":Ljava/lang/Object;
    .restart local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .local v1, "result\\1":Ljava/lang/Object;
    :goto_2
    check-cast v3, Landroidx/compose/material3/SnackbarResult;

    .line 209
    :goto_3
    nop

    .end local v0    # "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0":I
    .end local v1    # "result\\1":Ljava/lang/Object;
    .end local v2    # "paciente\\1":Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;
    goto :goto_4

    .line 202
    :cond_4
    move-object v8, p0

    :goto_4
    nop

    .line 211
    iget-object v0, v8, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;->$mostrarDialogoBaja$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->access$ListadoPacientesScreen$lambda$7(Landroidx/compose/runtime/MutableState;Z)V

    .line 212
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
