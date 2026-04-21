package com.google.common.util.concurrent;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
final class ListenerCallQueue<L> {
    private static final LazyLogger logger = new LazyLogger(ListenerCallQueue.class);
    private final List<PerListenerQueue<L>> listeners = Collections.synchronizedList(new ArrayList());

    interface Event<L> {
        void call(L listener);
    }

    ListenerCallQueue() {
    }

    public void addListener(L listener, Executor executor) {
        Preconditions.checkNotNull(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        Preconditions.checkNotNull(executor, "executor");
        this.listeners.add(new PerListenerQueue<>(listener, executor));
    }

    public void enqueue(Event<L> event) {
        enqueueHelper(event, event);
    }

    public void enqueue(Event<L> event, String label) {
        enqueueHelper(event, label);
    }

    private void enqueueHelper(Event<L> event, Object label) {
        Preconditions.checkNotNull(event, NotificationCompat.CATEGORY_EVENT);
        Preconditions.checkNotNull(label, "label");
        synchronized (this.listeners) {
            for (PerListenerQueue<L> queue : this.listeners) {
                queue.add(event, label);
            }
        }
    }

    public void dispatch() throws Exception {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).dispatch();
        }
    }

    private static final class PerListenerQueue<L> implements Runnable {
        final Executor executor;
        boolean isThreadScheduled;
        final L listener;
        final Queue<Event<L>> waitQueue = Queues.newArrayDeque();
        final Queue<Object> labelQueue = Queues.newArrayDeque();

        PerListenerQueue(L l, Executor executor) {
            this.listener = (L) Preconditions.checkNotNull(l);
            this.executor = (Executor) Preconditions.checkNotNull(executor);
        }

        synchronized void add(Event<L> event, Object label) {
            this.waitQueue.add(event);
            this.labelQueue.add(label);
        }

        void dispatch() throws Exception {
            boolean scheduleEventRunner = false;
            synchronized (this) {
                if (!this.isThreadScheduled) {
                    this.isThreadScheduled = true;
                    scheduleEventRunner = true;
                }
            }
            if (scheduleEventRunner) {
                try {
                    this.executor.execute(this);
                } catch (Exception e) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                        ListenerCallQueue.logger.get().log(Level.SEVERE, "Exception while running callbacks for " + this.listener + " on " + this.executor, (Throwable) e);
                        throw e;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
        
            r2.call(r9.listener);
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
        
            r4 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
        
            com.google.common.util.concurrent.ListenerCallQueue.logger.get().log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.listener + " " + r3, (java.lang.Throwable) r4);
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0026 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean stillRunning = true;
            while (true) {
                try {
                } catch (Throwable th) {
                    if (stillRunning) {
                    }
                    throw th;
                }
                synchronized (this) {
                    Preconditions.checkState(this.isThreadScheduled);
                    Event<L> nextToRun = this.waitQueue.poll();
                    Object nextLabel = this.labelQueue.poll();
                    if (nextToRun == null) {
                        break;
                    }
                    if (stillRunning) {
                        synchronized (this) {
                            this.isThreadScheduled = false;
                        }
                    }
                    throw th;
                }
                if (0 == 0) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                    }
                    return;
                }
                return;
            }
            this.isThreadScheduled = false;
            stillRunning = false;
            if (0 == 0) {
            }
        }
    }
}
