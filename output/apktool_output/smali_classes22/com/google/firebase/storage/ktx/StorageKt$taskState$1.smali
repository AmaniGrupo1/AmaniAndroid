.class final Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Storage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/storage/ktx/StorageKt;->getTaskState(Lcom/google/firebase/storage/StorageTask;)Lkotlinx/coroutines/flow/Flow;
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
        "Lcom/google/firebase/storage/ktx/TaskState<",
        "TT;>;>;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/google/firebase/storage/ktx/TaskState;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.storage.ktx.StorageKt$taskState$1"
    f = "Storage.kt"
    i = {}
    l = {
        0x160
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_taskState:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "snapshot"    # Lcom/google/firebase/storage/StorageTask$SnapshotBase;

    .line 326
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda4;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCallback(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method static final invokeSuspend$lambda$1$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/storage/StorageTask$SnapshotBase;

    .line 327
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/storage/ktx/TaskState$InProgress;

    invoke-direct {v1, p1}, Lcom/google/firebase/storage/ktx/TaskState$InProgress;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method static final invokeSuspend$lambda$3(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "snapshot"    # Lcom/google/firebase/storage/StorageTask$SnapshotBase;

    .line 332
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCallback(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method static final invokeSuspend$lambda$3$lambda$2(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/storage/StorageTask$SnapshotBase;)V
    .locals 2
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "$snapshot"    # Lcom/google/firebase/storage/StorageTask$SnapshotBase;

    .line 333
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v1, Lcom/google/firebase/storage/ktx/TaskState$Paused;

    invoke-direct {v1, p1}, Lcom/google/firebase/storage/ktx/TaskState$Paused;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-void
.end method

.method static final invokeSuspend$lambda$4(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p0, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 340
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 344
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const-string v2, "Error getting the TaskState"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;

    iget-object v1, p0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;-><init>(Lcom/google/firebase/storage/StorageTask;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/google/firebase/storage/ktx/TaskState<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 323
    iget v1, p0, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 324
    .local v2, "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    new-instance v3, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 330
    .local v3, "progressListener":Lcom/google/firebase/storage/OnProgressListener;
    new-instance v4, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda2;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 338
    .local v4, "pauseListener":Lcom/google/firebase/storage/OnPausedListener;
    new-instance v5, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 348
    .local v5, "completionListener":Lcom/google/android/gms/tasks/OnCompleteListener;
    iget-object v6, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v6, v3}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    .line 349
    iget-object v6, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v6, v4}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    .line 350
    iget-object v6, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v6, v5}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    .line 352
    new-instance v6, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$1;

    iget-object v7, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->$this_taskState:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1$1;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/firebase/storage/OnProgressListener;Lcom/google/firebase/storage/OnPausedListener;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x1

    iput v8, v1, Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;->label:I

    invoke-static {v2, v6, v7}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v3    # "progressListener":Lcom/google/firebase/storage/OnProgressListener;
    .end local v4    # "pauseListener":Lcom/google/firebase/storage/OnPausedListener;
    .end local v5    # "completionListener":Lcom/google/android/gms/tasks/OnCompleteListener;
    if-ne v2, v0, :cond_0

    .line 323
    return-object v0

    .line 352
    :cond_0
    move-object v0, v1

    .line 357
    .end local v1    # "this":Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
    .restart local v0    # "this":Lcom/google/firebase/storage/ktx/StorageKt$taskState$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
