package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable DONE;
    private static final int MAX_BUSY_WAIT_SPINS = 1000;
    private static final Runnable PARKED;

    abstract void afterRanInterruptiblyFailure(Throwable error);

    abstract void afterRanInterruptiblySuccess(@ParametricNullness T result);

    abstract boolean isDone();

    @ParametricNullness
    abstract T runInterruptibly() throws Exception;

    abstract String toPendingString();

    InterruptibleTask() {
    }

    static {
        DONE = new DoNothingRunnable();
        PARKED = new DoNothingRunnable();
    }

    private static final class DoNothingRunnable implements Runnable {
        private DoNothingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Thread currentThread = Thread.currentThread();
        if (!compareAndSet(null, currentThread)) {
            return;
        }
        boolean run = !isDone();
        Object objRunInterruptibly = null;
        Throwable error = null;
        if (run) {
            try {
                objRunInterruptibly = runInterruptibly();
                if (!compareAndSet(currentThread, DONE)) {
                    waitForInterrupt(currentThread);
                }
                if (!run) {
                    if (0 == 0) {
                        afterRanInterruptiblySuccess(NullnessCasts.uncheckedCastNullableTToT(objRunInterruptibly));
                        return;
                    }
                } else {
                    return;
                }
            } catch (Throwable t) {
                try {
                    Platform.restoreInterruptIfIsInterruptedException(t);
                    error = t;
                    if (!compareAndSet(currentThread, DONE)) {
                        waitForInterrupt(currentThread);
                    }
                    if (!run) {
                        return;
                    }
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, DONE)) {
                        waitForInterrupt(currentThread);
                    }
                    if (run) {
                        if (0 == 0) {
                            afterRanInterruptiblySuccess(NullnessCasts.uncheckedCastNullableTToT(null));
                        } else {
                            afterRanInterruptiblyFailure(null);
                        }
                    }
                    throw th;
                }
            }
        } else {
            if (!compareAndSet(currentThread, DONE)) {
            }
            if (!run) {
            }
        }
        afterRanInterruptiblyFailure(error);
    }

    private void waitForInterrupt(Thread currentThread) {
        boolean restoreInterruptedBit = false;
        int spinCount = 0;
        Runnable state = get();
        Blocker blocker = null;
        while (true) {
            if (!(state instanceof Blocker) && state != PARKED) {
                break;
            }
            if (state instanceof Blocker) {
                blocker = (Blocker) state;
            }
            spinCount++;
            if (spinCount > 1000) {
                if (state == PARKED || compareAndSet(state, PARKED)) {
                    boolean restoreInterruptedBit2 = Thread.interrupted() || restoreInterruptedBit;
                    LockSupport.park(blocker);
                    restoreInterruptedBit = restoreInterruptedBit2;
                }
            } else {
                Thread.yield();
            }
            Runnable state2 = get();
            state = state2;
        }
        if (restoreInterruptedBit) {
            currentThread.interrupt();
        }
    }

    final void interruptTask() {
        Runnable currentRunner = get();
        if (currentRunner instanceof Thread) {
            Blocker blocker = new Blocker();
            blocker.setOwner(Thread.currentThread());
            if (compareAndSet(currentRunner, blocker)) {
                try {
                    ((Thread) currentRunner).interrupt();
                } finally {
                    Runnable prev = getAndSet(DONE);
                    if (prev == PARKED) {
                        LockSupport.unpark((Thread) currentRunner);
                    }
                }
            }
        }
    }

    static final class Blocker extends AbstractOwnableSynchronizer implements Runnable {
        private final InterruptibleTask<?> task;

        private Blocker(InterruptibleTask<?> task) {
            this.task = task;
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwner(Thread thread) {
            super.setExclusiveOwnerThread(thread);
        }

        @CheckForNull
        Thread getOwner() {
            return super.getExclusiveOwnerThread();
        }

        public String toString() {
            return this.task.toString();
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String result;
        Runnable state = get();
        if (state == DONE) {
            result = "running=[DONE]";
        } else if (state instanceof Blocker) {
            result = "running=[INTERRUPTED]";
        } else if (state instanceof Thread) {
            result = "running=[RUNNING ON " + ((Thread) state).getName() + "]";
        } else {
            result = "running=[NOT STARTED YET]";
        }
        return result + ", " + toPendingString();
    }
}
