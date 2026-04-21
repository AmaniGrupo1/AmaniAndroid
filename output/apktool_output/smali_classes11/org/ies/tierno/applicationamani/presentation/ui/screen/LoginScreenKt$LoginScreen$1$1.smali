.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$1$1"
    f = "LoginScreen.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $loginError$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$loginError$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$loginError$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, v2, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$loginError$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->access$LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 92
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    .line 93
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->$loginError$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->access$LoginScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Error al iniciar sesi\u00f3n"

    :cond_2
    move-object v4, v1

    .line 92
    nop

    .line 94
    sget-object v7, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 92
    iput v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$1$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 90
    return-object v0

    .line 97
    :cond_3
    :goto_2
    nop

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
