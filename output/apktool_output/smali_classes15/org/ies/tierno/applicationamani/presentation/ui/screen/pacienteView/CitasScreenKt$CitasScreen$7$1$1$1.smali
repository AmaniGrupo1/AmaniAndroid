.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CitasScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->CitasScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/runtime/Composer;II)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCitasScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CitasScreen.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,556:1\n1#2:557\n*E\n"
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$CitasScreen$7$1$1$1"
    f = "CitasScreen.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x1fb,
        0x205,
        0x218
    }
    m = "invokeSuspend"
    n = {
        "hora",
        "hora",
        "result",
        "hora",
        "result"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lj$/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mostrarDialogoMotivo$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $motivoCita$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $notifPermissionLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pendingRecordatorio$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Pair<",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalTime;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableState<",
            "Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lj$/time/LocalDate;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Pair<",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalTime;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$motivoCita$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$notifPermissionLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$pendingRecordatorio$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$mostrarDialogoMotivo$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$motivoCita$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$notifPermissionLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$pendingRecordatorio$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$mostrarDialogoMotivo$delegate:Landroidx/compose/runtime/MutableState;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 503
    iget v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->label:I

    const-string v3, "Consulta psicol\u00f3gica"

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$1:Ljava/lang/Object;

    .local v1, "result":Ljava/lang/Object;
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lj$/time/LocalTime;

    .local v2, "hora":Lj$/time/LocalTime;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "hora":Lj$/time/LocalTime;
    :pswitch_1
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$1:Ljava/lang/Object;

    .restart local v1    # "result":Ljava/lang/Object;
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lj$/time/LocalTime;

    .restart local v2    # "hora":Lj$/time/LocalTime;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object v6, v2

    goto/16 :goto_1

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "hora":Lj$/time/LocalTime;
    :pswitch_2
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lj$/time/LocalTime;

    .restart local v2    # "hora":Lj$/time/LocalTime;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .end local v2    # "hora":Lj$/time/LocalTime;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 504
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$18(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->getHoraInicio()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;

    move-result-object v6

    .line 507
    .local v6, "hora":Lj$/time/LocalTime;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;

    .line 508
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Lj$/time/LocalDate;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 509
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$motivoCita$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$21(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 557
    const/4 v2, 0x0

    .line 510
    .local v2, "$i$a$-ifBlank-CitasScreenKt$CitasScreen$7$1$1$1$result$1\\1\\510\\0":I
    move-object v2, v3

    .end local v2    # "$i$a$-ifBlank-CitasScreenKt$CitasScreen$7$1$1$1$result$1\\1\\510\\0":I
    :cond_0
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 511
    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    .line 507
    iput-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->label:I

    const/16 v8, 0x3c

    invoke-virtual/range {v4 .. v9}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;->reservarCita-yxL6bBk(Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 503
    return-object v1

    .line 507
    :cond_1
    move-object v2, v6

    .end local v6    # "hora":Lj$/time/LocalTime;
    .local v2, "hora":Lj$/time/LocalTime;
    :goto_0
    nop

    .line 514
    .local v4, "result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 515
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$notifPermissionLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$context:Landroid/content/Context;

    iget-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$pendingRecordatorio$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Lj$/time/LocalDate;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v6, v7, v8, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$programarConPermiso(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    .line 517
    iget-object v9, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    .line 518
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$18(Landroidx/compose/runtime/MutableState;)Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;->getHoraInicio()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2705 Cita agendada a las "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 519
    nop

    .line 517
    nop

    .line 520
    sget-object v13, Landroidx/compose/material3/SnackbarDuration;->Long:Landroidx/compose/material3/SnackbarDuration;

    move-object v14, v0

    check-cast v14, Lkotlin/coroutines/Continuation;

    .line 517
    iput-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->label:I

    const-string v11, "Calendario"

    const/4 v12, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 503
    return-object v1

    .line 517
    :cond_2
    move-object v1, v4

    move-object v6, v2

    .line 503
    .end local v2    # "hora":Lj$/time/LocalTime;
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v6    # "hora":Lj$/time/LocalTime;
    :goto_1
    move-object v2, v5

    check-cast v2, Landroidx/compose/material3/SnackbarResult;

    .line 522
    .local v2, "actionResult":Landroidx/compose/material3/SnackbarResult;
    sget-object v4, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne v2, v4, :cond_4

    .line 524
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$context:Landroid/content/Context;

    .line 525
    iget-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$fechaSeleccionada$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Lj$/time/LocalDate;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 527
    nop

    .line 528
    nop

    .line 529
    iget-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$motivoCita$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$21(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 557
    const/4 v7, 0x0

    .line 529
    .local v7, "$i$a$-ifBlank-CitasScreenKt$CitasScreen$7$1$1$1$1\\2\\529\\0":I
    nop

    .end local v7    # "$i$a$-ifBlank-CitasScreenKt$CitasScreen$7$1$1$1$1\\2\\529\\0":I
    goto :goto_2

    :cond_3
    move-object v3, v7

    :goto_2
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 523
    const/16 v7, 0x3c

    const-string v8, "Cita - Amani"

    invoke-static/range {v4 .. v9}, Lorg/ies/tierno/applicationamani/utils/CalendarUtilsKt;->enviarCitaAlCalendario(Landroid/content/Context;Lj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_4
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$mostrarDialogoMotivo$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$16(Landroidx/compose/runtime/MutableState;Z)V

    .line 534
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$franjaSeleccionadaTemp$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt;->access$CitasScreen$lambda$19(Landroidx/compose/runtime/MutableState;Lorg/ies/tierno/applicationamani/presentation/ui/componente/FranjaHoraria;)V

    .end local v2    # "actionResult":Landroidx/compose/material3/SnackbarResult;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v6

    goto :goto_3

    .line 536
    .end local v1    # "result":Ljava/lang/Object;
    .end local v6    # "hora":Lj$/time/LocalTime;
    .local v2, "hora":Lj$/time/LocalTime;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_5
    iget-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    .line 537
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "\u274c No se pudo reservar la cita"

    :cond_7
    move-object v8, v3

    .line 536
    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/CitasScreenKt$CitasScreen$7$1$1$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    .line 503
    return-object v1

    .line 536
    :cond_8
    move-object v1, v4

    .line 540
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v1    # "result":Ljava/lang/Object;
    :goto_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
