.class final Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DataStoreImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl;->handleUpdate(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$handleUpdate$2$1"
    f = "DataStoreImpl.kt"
    i = {}
    l = {
        0x100,
        0x106,
        0x109
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $this_runCatching:Landroidx/datastore/core/DataStoreImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStoreImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $update:Landroidx/datastore/core/Message$Update;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Message$Update<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStoreImpl<",
            "TT;>;",
            "Landroidx/datastore/core/Message$Update<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

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

    new-instance v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;

    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-direct {v0, v1, v2, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 251
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 253
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    invoke-static {v1}, Landroidx/datastore/core/DataStoreImpl;->access$getInMemoryCache$p(Landroidx/datastore/core/DataStoreImpl;)Landroidx/datastore/core/DataStoreInMemoryCache;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/datastore/core/DataStoreInMemoryCache;->getCurrentState()Landroidx/datastore/core/State;

    move-result-object v1

    .line 254
    .local v1, "currentState":Landroidx/datastore/core/State;
    instance-of v2, v1, Landroidx/datastore/core/Data;

    if-eqz v2, :cond_1

    .line 256
    .end local v1    # "currentState":Landroidx/datastore/core/State;
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-virtual {v2}, Landroidx/datastore/core/Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-virtual {v3}, Landroidx/datastore/core/Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->label:I

    invoke-static {v1, v2, v3, v4}, Landroidx/datastore/core/DataStoreImpl;->access$transformAndWrite(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 251
    return-object v0

    .line 256
    :cond_0
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    nop

    .local p1, "result":Ljava/lang/Object;
    goto :goto_4

    .line 258
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "currentState":Landroidx/datastore/core/State;
    .local p1, "$result":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroidx/datastore/core/ReadException;

    if-nez v2, :cond_5

    .line 259
    instance-of v2, v1, Landroidx/datastore/core/UnInitialized;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 274
    :cond_2
    instance-of v0, v1, Landroidx/datastore/core/Final;

    if-nez v0, :cond_4

    .line 275
    instance-of v0, v1, Landroidx/datastore/core/NoValueDataState;

    .end local v1    # "currentState":Landroidx/datastore/core/State;
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 274
    .restart local v1    # "currentState":Landroidx/datastore/core/State;
    :cond_4
    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/Final;

    invoke-virtual {v0}, Landroidx/datastore/core/Final;->getFinalException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 260
    :cond_5
    :goto_1
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-virtual {v2}, Landroidx/datastore/core/Message$Update;->getLastState()Landroidx/datastore/core/State;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 262
    .end local v1    # "currentState":Landroidx/datastore/core/State;
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->label:I

    invoke-static {v1, v2}, Landroidx/datastore/core/DataStoreImpl;->access$readAndInitOrPropagateAndThrowFailure(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    .line 251
    return-object v0

    .line 265
    :cond_6
    :goto_2
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$this_runCatching:Landroidx/datastore/core/DataStoreImpl;

    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-virtual {v2}, Landroidx/datastore/core/Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->$update:Landroidx/datastore/core/Message$Update;

    invoke-virtual {v3}, Landroidx/datastore/core/Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x3

    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$2$1;->label:I

    invoke-static {v1, v2, v3, v4}, Landroidx/datastore/core/DataStoreImpl;->access$transformAndWrite(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    .line 251
    return-object v0

    .line 265
    :cond_7
    move-object v0, p1

    move-object p1, v1

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :goto_3
    nop

    .line 277
    .local p1, "result":Ljava/lang/Object;
    :goto_4
    return-object p1

    .line 271
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "currentState":Landroidx/datastore/core/State;
    .local p1, "$result":Ljava/lang/Object;
    :cond_8
    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/ReadException;

    invoke-virtual {v0}, Landroidx/datastore/core/ReadException;->getReadException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
