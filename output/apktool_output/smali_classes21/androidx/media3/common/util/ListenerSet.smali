.class public final Landroidx/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;,
        Landroidx/media3/common/util/ListenerSet$ListenerHolder;,
        Landroidx/media3/common/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MSG_ITERATION_FINISHED:I = 0x1


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private final flushingEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/common/util/ListenerSet$ListenerHolder<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final queuedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private final releasedLock:Ljava/lang/Object;

.field private final thread:Ljava/lang/Thread;

.field private throwsWhenUsingWrongThread:Z


# direct methods
.method public static synthetic $r8$lambda$rFcF5Pkb99AL585p5-2u78YfNkY(Landroidx/media3/common/util/ListenerSet;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/ListenerSet;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 103
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clock"    # Landroidx/media3/common/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    .line 136
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "clock":Landroidx/media3/common/util/Clock;
    .end local p3    # "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    .local v2, "looper":Landroid/os/Looper;
    .local v4, "clock":Landroidx/media3/common/util/Clock;
    .local v5, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 115
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "thread":Ljava/lang/Thread;
    .local v3, "thread":Ljava/lang/Thread;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "thread"    # Ljava/lang/Thread;
    .param p4, "clock"    # Landroidx/media3/common/util/Clock;
    .param p6, "throwsWhenUsingWrongThread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/common/util/ListenerSet$ListenerHolder<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Ljava/lang/Thread;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p1, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    .local p5, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p4, p0, Landroidx/media3/common/util/ListenerSet;->clock:Landroidx/media3/common/util/Clock;

    .line 153
    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet;->thread:Ljava/lang/Thread;

    .line 154
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 155
    iput-object p5, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 158
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 159
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 162
    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/util/ListenerSet;)V

    invoke-interface {p4, p2, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    .line 163
    .local v0, "handler":Landroidx/media3/common/util/HandlerWrapper;
    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 164
    .end local v0    # "handler":Landroidx/media3/common/util/HandlerWrapper;
    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 167
    :goto_0
    iput-boolean p6, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    .line 168
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 419
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 420
    .local v0, "event":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 421
    .local v2, "holder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->iterationFinished(Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 422
    iget-object v4, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v4, v3}, Landroidx/media3/common/util/HandlerWrapper;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    goto :goto_1

    .line 428
    .end local v2    # "holder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    :cond_0
    goto :goto_0

    .line 429
    :cond_1
    :goto_1
    return v3
.end method

.method static synthetic lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 2
    .param p0, "listenerSnapshot"    # Ljava/util/concurrent/CopyOnWriteArraySet;
    .param p1, "eventFlag"    # I
    .param p2, "event"    # Landroidx/media3/common/util/ListenerSet$Event;

    .line 333
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 334
    .local v1, "holder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->invoke(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 335
    .end local v1    # "holder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method private verifyCurrentThread()V
    .locals 1

    .line 433
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->isRunningOnCorrectThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 437
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    if-eqz v1, :cond_0

    .line 271
    monitor-exit v0

    return-void

    .line 273
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    invoke-direct {v2, p1}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 3

    .line 296
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 297
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 298
    .local v1, "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-static {v1, v2}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->access$000(Landroidx/media3/common/util/ListenerSet$ListenerHolder;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 299
    .end local v1    # "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 301
    return-void
.end method

.method public copy(Landroid/os/Looper;)Landroidx/media3/common/util/ListenerSet;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")",
            "Landroidx/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->clock:Landroidx/media3/common/util/Clock;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clock"    # Landroidx/media3/common/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Landroidx/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 240
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 241
    new-instance v1, Landroidx/media3/common/util/ListenerSet;

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 244
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    iget-boolean v7, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "clock":Landroidx/media3/common/util/Clock;
    .end local p3    # "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    .local v3, "looper":Landroid/os/Looper;
    .local v5, "clock":Landroidx/media3/common/util/Clock;
    .local v6, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    .line 241
    return-object v1
.end method

.method public copy(Landroid/os/Looper;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Landroidx/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "iterationFinishedEvent":Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;, "Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/media3/common/util/Clock;)Landroidx/media3/common/util/ListenerSet;
    .locals 8
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Clock;",
            ")",
            "Landroidx/media3/common/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v1, Landroidx/media3/common/util/ListenerSet;

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, p0, Landroidx/media3/common/util/ListenerSet;->thread:Ljava/lang/Thread;

    const/4 v6, 0x0

    iget-boolean v7, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    const/4 v3, 0x0

    move-object v5, p1

    .end local p1    # "clock":Landroidx/media3/common/util/Clock;
    .local v5, "clock":Landroidx/media3/common/util/Clock;
    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-object v1
.end method

.method public flushEvents()V
    .locals 3

    .line 341
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 342
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 346
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 348
    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    .line 347
    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    .line 350
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 351
    .local v0, "recursiveFlushInProgress":Z
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 352
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 353
    if-eqz v0, :cond_2

    .line 355
    return-void

    .line 357
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 358
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 359
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 361
    :cond_3
    return-void
.end method

.method public isRunningOnCorrectThread()Z
    .locals 2

    .line 255
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 3
    .param p1, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 329
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Landroidx/media3/common/util/ListenerSet$Event;, "Landroidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 330
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v0, "listenerSnapshot":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public queueEvent(Landroidx/media3/common/util/ListenerSet$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p1, "event":Landroidx/media3/common/util/ListenerSet$Event;, "Landroidx/media3/common/util/ListenerSet$Event<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 319
    return-void
.end method

.method public release()V
    .locals 3

    .line 395
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 396
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->releasedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->released:Z

    .line 398
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 400
    .local v1, "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-static {v1, v2}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->access$000(Landroidx/media3/common/util/ListenerSet$ListenerHolder;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 401
    .end local v1    # "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 403
    return-void

    .line 398
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 286
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 287
    .local v1, "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    iget-object v2, v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    invoke-static {v1, v2}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->access$000(Landroidx/media3/common/util/ListenerSet$ListenerHolder;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 289
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 291
    .end local v1    # "listenerHolder":Landroidx/media3/common/util/ListenerSet$ListenerHolder;, "Landroidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    :cond_0
    goto :goto_0

    .line 292
    :cond_1
    return-void
.end method

.method public sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0
    .param p1, "eventFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 385
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Landroidx/media3/common/util/ListenerSet$Event;, "Landroidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 386
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    .line 387
    return-void
.end method

.method public sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    .local p1, "event":Landroidx/media3/common/util/ListenerSet$Event;, "Landroidx/media3/common/util/ListenerSet$Event<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 374
    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .locals 0
    .param p1, "throwsWhenUsingWrongThread"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    iput-boolean p1, p0, Landroidx/media3/common/util/ListenerSet;->throwsWhenUsingWrongThread:Z

    .line 416
    return-void
.end method

.method public size()I
    .locals 1

    .line 305
    .local p0, "this":Landroidx/media3/common/util/ListenerSet;, "Landroidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    .line 306
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    return v0
.end method
