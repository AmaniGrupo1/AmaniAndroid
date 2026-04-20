package com.google.firebase.appcheck.internal;

import com.google.firebase.appcheck.internal.util.Clock;

/* JADX INFO: loaded from: classes22.dex */
public class RetryManager {
    static final int BAD_REQUEST_ERROR_CODE = 400;
    private static final int EXPONENTIAL = 0;
    static final int FORBIDDEN_ERROR_CODE = 403;
    static final long MAX_EXP_BACKOFF_MILLIS = 14400000;
    private static final double MAX_JITTER_MULTIPLIER = 0.5d;
    static final int NOT_FOUND_ERROR_CODE = 404;
    private static final int ONE_DAY = 1;
    static final long ONE_DAY_MILLIS = 86400000;
    static final long ONE_SECOND_MILLIS = 1000;
    static final long UNSET_RETRY_TIME = -1;
    private final Clock clock;
    private long currentRetryCount;
    private long nextRetryTimeMillis;

    public RetryManager() {
        this.currentRetryCount = 0L;
        this.nextRetryTimeMillis = -1L;
        this.clock = new Clock.DefaultClock();
    }

    RetryManager(Clock clock) {
        this.currentRetryCount = 0L;
        this.nextRetryTimeMillis = -1L;
        this.clock = clock;
    }

    public boolean canRetry() {
        return this.nextRetryTimeMillis <= this.clock.currentTimeMillis();
    }

    long getNextRetryTimeMillis() {
        return this.nextRetryTimeMillis;
    }

    public void resetBackoffOnSuccess() {
        this.currentRetryCount = 0L;
        this.nextRetryTimeMillis = -1L;
    }

    public void updateBackoffOnFailure(int errorCode) {
        this.currentRetryCount++;
        if (getBackoffStrategyByErrorCode(errorCode) == 1) {
            this.nextRetryTimeMillis = this.clock.currentTimeMillis() + 86400000;
            return;
        }
        double jitterCoefficient = (Math.random() * 0.5d) + 1.0d;
        long exponentialBackoffMillis = (long) (Math.pow(2.0d, this.currentRetryCount * jitterCoefficient) * 1000.0d);
        this.nextRetryTimeMillis = this.clock.currentTimeMillis() + Math.min(exponentialBackoffMillis, MAX_EXP_BACKOFF_MILLIS);
    }

    private static int getBackoffStrategyByErrorCode(int errorCode) {
        if (errorCode == 400 || errorCode == FORBIDDEN_ERROR_CODE || errorCode == NOT_FOUND_ERROR_CODE) {
            return 1;
        }
        return 0;
    }
}
