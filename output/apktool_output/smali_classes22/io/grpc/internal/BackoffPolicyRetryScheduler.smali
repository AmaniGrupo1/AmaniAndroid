.class final Lio/grpc/internal/BackoffPolicyRetryScheduler;
.super Ljava/lang/Object;
.source "BackoffPolicyRetryScheduler.java"

# interfaces
.implements Lio/grpc/internal/RetryScheduler;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private policy:Lio/grpc/internal/BackoffPolicy;

.field private final policyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

.field private final syncContext:Lio/grpc/SynchronizationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 39
    const-class v0, Lio/grpc/internal/BackoffPolicyRetryScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/BackoffPolicy$Provider;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/SynchronizationContext;)V
    .locals 0
    .param p1, "policyProvider"    # Lio/grpc/internal/BackoffPolicy$Provider;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "syncContext"    # Lio/grpc/SynchronizationContext;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    .line 45
    iput-object p2, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    iput-object p3, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->syncContext:Lio/grpc/SynchronizationContext;

    .line 47
    return-void
.end method


# virtual methods
.method synthetic lambda$reset$0$io-grpc-internal-BackoffPolicyRetryScheduler()V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policy:Lio/grpc/internal/BackoffPolicy;

    .line 82
    return-void
.end method

.method public reset()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 77
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/grpc/internal/BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0;-><init>(Lio/grpc/internal/BackoffPolicyRetryScheduler;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "retryOperation"    # Ljava/lang/Runnable;

    .line 54
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 56
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policy:Lio/grpc/internal/BackoffPolicy;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy$Provider;->get()Lio/grpc/internal/BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policy:Lio/grpc/internal/BackoffPolicy;

    .line 60
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->policy:Lio/grpc/internal/BackoffPolicy;

    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy;->nextBackoffNanos()J

    move-result-wide v3

    .line 64
    .local v3, "delayNanos":J
    iget-object v1, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->syncContext:Lio/grpc/SynchronizationContext;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, p1

    .end local p1    # "retryOperation":Ljava/lang/Runnable;
    .local v2, "retryOperation":Ljava/lang/Runnable;
    invoke-virtual/range {v1 .. v6}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/BackoffPolicyRetryScheduler;->scheduledHandle:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 66
    sget-object p1, Lio/grpc/internal/BackoffPolicyRetryScheduler;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Scheduling DNS resolution backoff for {0}ns"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v0, v1, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
