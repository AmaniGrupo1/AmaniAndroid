.class final Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ViewPsicologoPrincipal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->ViewPsicologoPrincipal(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1"
    f = "ViewPsicologoPrincipal.kt"
    i = {}
    l = {
        0x84
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $idPsicologo$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isLoadingSession$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $profilePsicologoViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

.field final synthetic $userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

.field label:I


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$profilePsicologoViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$isLoadingSession$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$profilePsicologoViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$isLoadingSession$delegate:Landroidx/compose/runtime/MutableState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;-><init>(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 131
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$userSessionDataStore:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->label:I

    invoke-virtual {v1, v2}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->getSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 131
    return-object v0

    :cond_0
    :goto_0
    move-object v0, v1

    check-cast v0, Lorg/ies/tierno/applicationamani/data/local/UserSession;

    .line 133
    .local v0, "session":Lorg/ies/tierno/applicationamani/data/local/UserSession;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSession;->getIdPsicologo()Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->access$ViewPsicologoPrincipal$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/Long;)V

    .line 134
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$isLoadingSession$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->access$ViewPsicologoPrincipal$lambda$9(Landroidx/compose/runtime/MutableState;Z)V

    .line 136
    const-string v1, "=== SESI\u00d3N OBTENIDA EN ViewPsicologoPrincipal ==="

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->access$ViewPsicologoPrincipal$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID Psic\u00f3logo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->access$ViewPsicologoPrincipal$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$profilePsicologoViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1;->$idPsicologo$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->access$ViewPsicologoPrincipal$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->fetchProfile(J)V

    .line 144
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
