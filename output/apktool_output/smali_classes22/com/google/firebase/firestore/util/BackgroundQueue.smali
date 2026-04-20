.class public final Lcom/google/firebase/firestore/util/BackgroundQueue;
.super Ljava/lang/Object;
.source "BackgroundQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/BackgroundQueue$Companion;,
        Lcom/google/firebase/firestore/util/BackgroundQueue$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundQueue.kt\ncom/google/firebase/firestore/util/BackgroundQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u000c2\u00020\u0001:\u0002\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/google/firebase/firestore/util/BackgroundQueue;",
        "",
        "<init>",
        "()V",
        "state",
        "Lcom/google/firebase/firestore/util/BackgroundQueue$State;",
        "submit",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "drain",
        "State",
        "Companion",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/util/BackgroundQueue$Companion;

.field private static final executor:Ljava/util/concurrent/Executor;

.field private static final maxParallelism:I


# instance fields
.field private state:Lcom/google/firebase/firestore/util/BackgroundQueue$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/firestore/util/BackgroundQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/util/BackgroundQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/util/BackgroundQueue;->Companion:Lcom/google/firebase/firestore/util/BackgroundQueue$Companion;

    .line 81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    sput v0, Lcom/google/firebase/firestore/util/BackgroundQueue;->maxParallelism:I

    .line 84
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sget v1, Lcom/google/firebase/firestore/util/BackgroundQueue;->maxParallelism:I

    const-string v2, "firestore.BackgroundQueue"

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/util/BackgroundQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;-><init>()V

    check-cast v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    iput-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->state:Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    .line 30
    return-void
.end method

.method public static final synthetic access$getMaxParallelism$cp()I
    .locals 1

    .line 30
    sget v0, Lcom/google/firebase/firestore/util/BackgroundQueue;->maxParallelism:I

    return v0
.end method

.method static final submit$lambda$1(Ljava/lang/Runnable;Lcom/google/firebase/firestore/util/BackgroundQueue$State;)V
    .locals 2
    .param p0, "$runnable"    # Ljava/lang/Runnable;
    .param p1, "$submittingState"    # Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    .line 45
    nop

    .line 46
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->getCompletedTasks()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 49
    nop

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->getCompletedTasks()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method


# virtual methods
.method public final drain()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->state:Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    .line 60
    .local v0, "submittingState":Lcom/google/firebase/firestore/util/BackgroundQueue$State;
    instance-of v1, v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;->INSTANCE:Lcom/google/firebase/firestore/util/BackgroundQueue$State$Draining;

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    iput-object v1, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->state:Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->getCompletedTasks()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->getTaskCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 64
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$a$-check-BackgroundQueue$drain$1":I
    nop

    .end local v1    # "$i$a$-check-BackgroundQueue$drain$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "drain() may not be called more than once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final submit(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/util/BackgroundQueue;->state:Lcom/google/firebase/firestore/util/BackgroundQueue$State;

    .line 41
    .local v0, "submittingState":Lcom/google/firebase/firestore/util/BackgroundQueue$State;
    instance-of v1, v0, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    if-eqz v1, :cond_0

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->getTaskCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/util/BackgroundQueue$State$Submitting;->setTaskCount(I)V

    .line 44
    sget-object v1, Lcom/google/firebase/firestore/util/BackgroundQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/util/BackgroundQueue$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/google/firebase/firestore/util/BackgroundQueue$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/firestore/util/BackgroundQueue$State;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-check-BackgroundQueue$submit$1":I
    nop

    .end local v1    # "$i$a$-check-BackgroundQueue$submit$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "submit() may not be called after drain()"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
