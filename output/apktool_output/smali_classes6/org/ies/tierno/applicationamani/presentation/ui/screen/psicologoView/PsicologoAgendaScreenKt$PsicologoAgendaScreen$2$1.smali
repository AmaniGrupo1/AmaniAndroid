.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1"
    f = "PsicologoAgendaScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $mesVisible$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lj$/time/YearMonth;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userSession$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

.field label:I


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;",
            "Landroidx/compose/runtime/State<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lj$/time/YearMonth;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$userSession$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$mesVisible$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$userSession$delegate:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$mesVisible$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 102
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$userSession$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->access$PsicologoAgendaScreen$lambda$34(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/data/local/UserSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1;->$mesVisible$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/psicologoView/PsicologoAgendaScreenKt;->access$PsicologoAgendaScreen$lambda$10(Landroidx/compose/runtime/MutableState;)Lj$/time/YearMonth;

    move-result-object v1

    const-string v2, "access$PsicologoAgendaScreen$lambda$10(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;->cargarAgendaMensual(Lj$/time/YearMonth;)V

    .line 106
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
