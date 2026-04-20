package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.FlagSet;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes21.dex */
public final class ListenerSet<T> {
    private static final int MSG_ITERATION_FINISHED = 1;
    private final Clock clock;
    private final ArrayDeque<Runnable> flushingEvents;
    private final IterationFinishedEvent<T> iterationFinishedEvent;
    private final HandlerWrapper iterationFinishedHandler;
    private final CopyOnWriteArraySet<ListenerHolder<T>> listeners;
    private final ArrayDeque<Runnable> queuedEvents;
    private boolean released;
    private final Object releasedLock;
    private final Thread thread;
    private boolean throwsWhenUsingWrongThread;

    public interface Event<T> {
        void invoke(T t);
    }

    public interface IterationFinishedEvent<T> {
        void invoke(T t, FlagSet flagSet);
    }

    public ListenerSet(Looper looper) {
        this(looper.getThread());
    }

    public ListenerSet(Thread thread) {
        this(new CopyOnWriteArraySet(), null, thread, null, null, true);
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, looper.getThread(), clock, iterationFinishedEvent, true);
    }

    private ListenerSet(CopyOnWriteArraySet<ListenerHolder<T>> listeners, Looper looper, Thread thread, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent, boolean throwsWhenUsingWrongThread) {
        this.clock = clock;
        this.thread = thread;
        this.listeners = listeners;
        this.iterationFinishedEvent = iterationFinishedEvent;
        this.releasedLock = new Object();
        this.flushingEvents = new ArrayDeque<>();
        this.queuedEvents = new ArrayDeque<>();
        if (looper != null && clock != null && iterationFinishedEvent != null) {
            HandlerWrapper handler = clock.createHandler(looper, new Handler.Callback() { // from class: androidx.media3.common.util.ListenerSet$$ExternalSyntheticLambda0
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f$0.handleMessage(message);
                }
            });
            this.iterationFinishedHandler = handler;
        } else {
            this.iterationFinishedHandler = null;
        }
        this.throwsWhenUsingWrongThread = throwsWhenUsingWrongThread;
    }

    public ListenerSet<T> copy(Looper looper, IterationFinishedEvent<T> iterationFinishedEvent) {
        return copy(looper, this.clock, iterationFinishedEvent);
    }

    public ListenerSet<T> copy(Looper looper) {
        return copy(looper, this.clock, this.iterationFinishedEvent);
    }

    public ListenerSet<T> copy(Clock clock) {
        if (this.iterationFinishedHandler != null) {
            return copy(this.iterationFinishedHandler.getLooper(), clock, this.iterationFinishedEvent);
        }
        return new ListenerSet<>(this.listeners, null, this.thread, clock, null, this.throwsWhenUsingWrongThread);
    }

    public ListenerSet<T> copy(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        Preconditions.checkState(clock != null || iterationFinishedEvent == null);
        return new ListenerSet<>(this.listeners, looper, looper.getThread(), clock, iterationFinishedEvent, this.throwsWhenUsingWrongThread);
    }

    public boolean isRunningOnCorrectThread() {
        return Thread.currentThread() == this.thread;
    }

    public void add(T listener) {
        Preconditions.checkNotNull(listener);
        synchronized (this.releasedLock) {
            if (this.released) {
                return;
            }
            this.listeners.add(new ListenerHolder<>(listener));
        }
    }

    public void remove(T listener) {
        verifyCurrentThread();
        for (ListenerHolder<T> listenerHolder : this.listeners) {
            if (listenerHolder.listener.equals(listener)) {
                listenerHolder.release(this.iterationFinishedEvent);
                this.listeners.remove(listenerHolder);
            }
        }
    }

    public void clear() {
        verifyCurrentThread();
        for (ListenerHolder<T> listenerHolder : this.listeners) {
            listenerHolder.release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    public int size() {
        verifyCurrentThread();
        return this.listeners.size();
    }

    public void queueEvent(Event<T> event) {
        queueEvent(-1, event);
    }

    public void queueEvent(final int eventFlag, final Event<T> event) {
        verifyCurrentThread();
        final CopyOnWriteArraySet<ListenerHolder<T>> listenerSnapshot = new CopyOnWriteArraySet<>(this.listeners);
        this.queuedEvents.add(new Runnable() { // from class: androidx.media3.common.util.ListenerSet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ListenerSet.lambda$queueEvent$0(listenerSnapshot, eventFlag, event);
            }
        });
    }

    static /* synthetic */ void lambda$queueEvent$0(CopyOnWriteArraySet listenerSnapshot, int eventFlag, Event event) {
        Iterator it = listenerSnapshot.iterator();
        while (it.hasNext()) {
            ListenerHolder<T> holder = (ListenerHolder) it.next();
            holder.invoke(eventFlag, event);
        }
    }

    public void flushEvents() {
        verifyCurrentThread();
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (this.iterationFinishedEvent != null && !((HandlerWrapper) Preconditions.checkNotNull(this.iterationFinishedHandler)).hasMessages(1)) {
            this.iterationFinishedHandler.sendMessageAtFrontOfQueue(this.iterationFinishedHandler.obtainMessage(1));
        }
        boolean recursiveFlushInProgress = !this.flushingEvents.isEmpty();
        this.flushingEvents.addAll(this.queuedEvents);
        this.queuedEvents.clear();
        if (recursiveFlushInProgress) {
            return;
        }
        while (!this.flushingEvents.isEmpty()) {
            this.flushingEvents.peekFirst().run();
            this.flushingEvents.removeFirst();
        }
    }

    public void sendEvent(Event<T> event) {
        sendEvent(-1, event);
    }

    public void sendEvent(int eventFlag, Event<T> event) {
        queueEvent(eventFlag, event);
        flushEvents();
    }

    public void release() {
        verifyCurrentThread();
        synchronized (this.releasedLock) {
            this.released = true;
        }
        for (ListenerHolder<T> listenerHolder : this.listeners) {
            listenerHolder.release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    @Deprecated
    public void setThrowsWhenUsingWrongThread(boolean throwsWhenUsingWrongThread) {
        this.throwsWhenUsingWrongThread = throwsWhenUsingWrongThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        IterationFinishedEvent<T> event = (IterationFinishedEvent) Preconditions.checkNotNull(this.iterationFinishedEvent);
        for (ListenerHolder<T> holder : this.listeners) {
            holder.iterationFinished(event);
            if (((HandlerWrapper) Preconditions.checkNotNull(this.iterationFinishedHandler)).hasMessages(1)) {
                break;
            }
        }
        return true;
    }

    private void verifyCurrentThread() {
        if (!this.throwsWhenUsingWrongThread) {
            return;
        }
        Preconditions.checkState(isRunningOnCorrectThread());
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ListenerHolder<T> {
        private FlagSet.Builder flagsBuilder = new FlagSet.Builder();
        public final T listener;
        private boolean needsIterationFinishedEvent;
        private boolean released;

        public ListenerHolder(T listener) {
            this.listener = listener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release(IterationFinishedEvent<T> event) {
            this.released = true;
            if (event != null && this.needsIterationFinishedEvent) {
                this.needsIterationFinishedEvent = false;
                event.invoke(this.listener, this.flagsBuilder.build());
            }
        }

        public void invoke(int eventFlag, Event<T> event) {
            if (!this.released) {
                if (eventFlag != -1) {
                    this.flagsBuilder.add(eventFlag);
                }
                this.needsIterationFinishedEvent = true;
                event.invoke(this.listener);
            }
        }

        public void iterationFinished(IterationFinishedEvent<T> event) {
            if (!this.released && this.needsIterationFinishedEvent) {
                FlagSet flagsToNotify = this.flagsBuilder.build();
                this.flagsBuilder = new FlagSet.Builder();
                this.needsIterationFinishedEvent = false;
                event.invoke(this.listener, flagsToNotify);
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || getClass() != other.getClass()) {
                return false;
            }
            return this.listener.equals(((ListenerHolder) other).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }
    }
}
