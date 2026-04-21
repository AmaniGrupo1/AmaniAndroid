.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ViewPacientePrincipalScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt;->ViewPacientePrincipalScreen(Landroidx/navigation/NavController;JLorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1"
    f = "ViewPacientePrincipalScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idPaciente:J

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

.field label:I


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$idPaciente:J

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$idPaciente:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/pacienteView/ViewPacientePrincipalScreenKt$ViewPacientePrincipalScreen$1$1;->$idPaciente:J

    invoke-virtual {v0, v1, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;->cargarPsicologoAsignado(J)V

    .line 71
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
