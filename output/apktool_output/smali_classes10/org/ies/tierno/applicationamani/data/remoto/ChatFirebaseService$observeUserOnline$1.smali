.class final Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatFirebaseService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        ""
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
    c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1"
    f = "ChatFirebaseService.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xfc
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow",
        "userRef",
        "listener"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $userId:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->$userId:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/google/firebase/database/DatabaseReference;Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;)Lkotlin/Unit;
    .locals 1
    .param p0, "$userRef"    # Lcom/google/firebase/database/DatabaseReference;
    .param p1, "$listener"    # Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;

    .line 252
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->$userId:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .local v0, "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 237
    iget v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;

    .local v1, "listener":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/database/DatabaseReference;

    .local v2, "userRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "listener":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;
    .end local v2    # "userRef":Lcom/google/firebase/database/DatabaseReference;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 238
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->access$getUsersRef$p(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->$userId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "isOnline"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "child(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .restart local v2    # "userRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v3, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;

    invoke-direct {v3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 251
    .local v3, "listener":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;
    move-object v4, v3

    check-cast v4, Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 252
    new-instance v4, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/database/DatabaseReference;Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;)V

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;->label:I

    invoke-static {v0, v4, v5}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 237
    return-object v1

    .line 252
    :cond_0
    move-object v1, v3

    .line 253
    .end local v3    # "listener":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;
    .restart local v1    # "listener":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1$listener$1;
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
