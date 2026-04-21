.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PsicologoAgendaScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->PsicologoAgendaScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/terapia/ListarTerapiasViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1"
    f = "PsicologoAgendaScreen.kt"
    i = {
        0x0
    }
    l = {
        0x166
    }
    m = "invokeSuspend"
    n = {
        "msg"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $fecha:Lj$/time/LocalDate;

.field final synthetic $mostrarDialogoNoDisponible$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

.field final synthetic $yaNoDisponible:Z

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;ZLandroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "Lj$/time/LocalDate;",
            "Z",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$fecha:Lj$/time/LocalDate;

    iput-boolean p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$yaNoDisponible:Z

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$mostrarDialogoNoDisponible$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$fecha:Lj$/time/LocalDate;

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$yaNoDisponible:Z

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$mostrarDialogoNoDisponible$delegate:Landroidx/compose/runtime/MutableState;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;ZLandroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 353
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$fecha:Lj$/time/LocalDate;

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$yaNoDisponible:Z

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->alternarDiaNoDisponible$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Lj$/time/LocalDate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$mostrarDialogoNoDisponible$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->access$PsicologoAgendaScreen$lambda$18(Landroidx/compose/runtime/MutableState;Z)V

    .line 356
    iget-boolean v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$yaNoDisponible:Z

    .line 357
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$fecha:Lj$/time/LocalDate;

    .line 356
    const-string v3, "D\u00eda "

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " marcado como no disponible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vuelve a estar disponible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    move-object v3, v1

    .line 358
    .local v3, "msg":Ljava/lang/String;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 353
    return-object v0

    .line 358
    :cond_1
    move-object v0, v3

    .line 359
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
