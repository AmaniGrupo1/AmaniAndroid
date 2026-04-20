.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ListadoPsicologosScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1"
    f = "ListadoPsicologosScreen.kt"
    i = {}
    l = {
        0xae,
        0xb1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $asignarError$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $asignarSuccess$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarSuccess$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarError$delegate:Landroidx/compose/runtime/State;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarSuccess$delegate:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarError$delegate:Landroidx/compose/runtime/State;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 172
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarSuccess$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->access$invoke$lambda$7$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 174
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->label:I

    const-string v4, "Psic\u00f3logo asignado correctamente"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 172
    return-object v0

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->clearAsignarPsicologoResult()V

    goto :goto_2

    .line 176
    :cond_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarError$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->access$invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$asignarError$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1;->access$invoke$lambda$7$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x2

    iput v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 172
    return-object v0

    .line 178
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->clearAsignarPsicologoResult()V

    .line 180
    :cond_3
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
