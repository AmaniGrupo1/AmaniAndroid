package com.google.common.util.concurrent;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
abstract class WrappingScheduledExecutorService extends WrappingExecutorService implements ScheduledExecutorService, AutoCloseable {
    final ScheduledExecutorService delegate;

    @Override // com.google.common.util.concurrent.WrappingExecutorService, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1.m(this);
    }

    protected WrappingScheduledExecutorService(ScheduledExecutorService delegate) {
        super(delegate);
        this.delegate = delegate;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> schedule(Runnable command, long delay, TimeUnit unit) {
        return this.delegate.schedule(wrapTask(command), delay, unit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final <V> ScheduledFuture<V> schedule(Callable<V> task, long delay, TimeUnit unit) {
        return this.delegate.schedule(wrapTask(task), delay, unit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleAtFixedRate(Runnable command, long initialDelay, long period, TimeUnit unit) {
        return this.delegate.scheduleAtFixedRate(wrapTask(command), initialDelay, period, unit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable command, long initialDelay, long delay, TimeUnit unit) {
        return this.delegate.scheduleWithFixedDelay(wrapTask(command), initialDelay, delay, unit);
    }
}
