.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatScreen(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
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
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$3$1"
    f = "ChatScreen.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x68
    }
    m = "invokeSuspend"
    n = {
        "error\\1",
        "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0"
    }
    s = {
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $uiState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/material3/SnackbarHostState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
            ">;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$uiState$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/material3/SnackbarHostState;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->I$0:I

    .local v0, "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0":I
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "error\\1":Ljava/lang/String;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0":I
    .end local v1    # "error\\1":Ljava/lang/String;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$uiState$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->access$ChatScreen$lambda$0(Landroidx/compose/runtime/State;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;->getError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->$viewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    move-object v3, v1

    .local v3, "error\\1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 104
    .local v1, "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0":I
    iput-object v10, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->L$1:Ljava/lang/Object;

    iput v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->I$0:I

    const/4 v4, 0x1

    iput v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$ChatScreen$3$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 102
    return-object v0

    .line 104
    :cond_0
    move v0, v1

    move-object v1, v3

    move-object v2, v10

    .line 105
    .end local v3    # "error\\1":Ljava/lang/String;
    .restart local v0    # "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0":I
    .local v1, "error\\1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->clearError()V

    .line 106
    nop

    .line 103
    .end local v0    # "$i$a$-let-ChatScreenKt$ChatScreen$3$1$1\\1\\103\\0":I
    .end local v1    # "error\\1":Ljava/lang/String;
    nop

    .line 107
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
