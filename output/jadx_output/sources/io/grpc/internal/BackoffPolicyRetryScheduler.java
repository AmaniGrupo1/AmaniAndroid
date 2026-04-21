package io.grpc.internal;

import io.grpc.SynchronizationContext;
import io.grpc.internal.BackoffPolicy;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes22.dex */
final class BackoffPolicyRetryScheduler implements RetryScheduler {
    private static final Logger logger = Logger.getLogger(BackoffPolicyRetryScheduler.class.getName());
    private BackoffPolicy policy;
    private final BackoffPolicy.Provider policyProvider;
    private final ScheduledExecutorService scheduledExecutorService;
    private SynchronizationContext.ScheduledHandle scheduledHandle;
    private final SynchronizationContext syncContext;

    BackoffPolicyRetryScheduler(BackoffPolicy.Provider policyProvider, ScheduledExecutorService scheduledExecutorService, SynchronizationContext syncContext) {
        this.policyProvider = policyProvider;
        this.scheduledExecutorService = scheduledExecutorService;
        this.syncContext = syncContext;
    }

    @Override // io.grpc.internal.RetryScheduler
    public void schedule(Runnable retryOperation) {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        if (this.policy == null) {
            this.policy = this.policyProvider.get();
        }
        if (this.scheduledHandle != null && this.scheduledHandle.isPending()) {
            return;
        }
        long delayNanos = this.policy.nextBackoffNanos();
        this.scheduledHandle = this.syncContext.schedule(retryOperation, delayNanos, TimeUnit.NANOSECONDS, this.scheduledExecutorService);
        logger.log(Level.FINE, "Scheduling DNS resolution backoff for {0}ns", Long.valueOf(delayNanos));
    }

    @Override // io.grpc.internal.RetryScheduler
    public void reset() {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.BackoffPolicyRetryScheduler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8488lambda$reset$0$iogrpcinternalBackoffPolicyRetryScheduler();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$reset$0$io-grpc-internal-BackoffPolicyRetryScheduler, reason: not valid java name */
    /* synthetic */ void m8488lambda$reset$0$iogrpcinternalBackoffPolicyRetryScheduler() {
        if (this.scheduledHandle != null && this.scheduledHandle.isPending()) {
            this.scheduledHandle.cancel();
        }
        this.policy = null;
    }
}
