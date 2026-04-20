package io.grpc.internal;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.base.Preconditions;
import io.grpc.Decompressor;
import io.grpc.internal.ApplicationThreadDeframerListener;
import io.grpc.internal.MessageDeframer;
import io.grpc.internal.StreamListener;
import io.perfmark.Link;
import io.perfmark.PerfMark;
import io.perfmark.TaskCloseable;
import java.io.Closeable;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes22.dex */
final class MigratingThreadDeframer implements ThreadOptimizedDeframer {
    private final ApplicationThreadDeframerListener appListener;
    private final MessageDeframer deframer;
    private boolean deframerOnTransportThread;
    private boolean messageProducerEnqueued;
    private final MigratingDeframerListener migratingListener;
    private final ApplicationThreadDeframerListener.TransportExecutor transportExecutor;
    private final MessageDeframer.Listener transportListener;
    private final DeframeMessageProducer messageProducer = new DeframeMessageProducer();
    private final Object lock = new Object();
    private final Queue<Op> opQueue = new ArrayDeque();

    private interface Op {
        void run(boolean z);
    }

    public MigratingThreadDeframer(MessageDeframer.Listener listener, ApplicationThreadDeframerListener.TransportExecutor transportExecutor, MessageDeframer deframer) {
        this.transportListener = new SquelchLateMessagesAvailableDeframerListener((MessageDeframer.Listener) Preconditions.checkNotNull(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER));
        this.transportExecutor = (ApplicationThreadDeframerListener.TransportExecutor) Preconditions.checkNotNull(transportExecutor, "transportExecutor");
        this.appListener = new ApplicationThreadDeframerListener(this.transportListener, transportExecutor);
        this.migratingListener = new MigratingDeframerListener(this.appListener);
        deframer.setListener(this.migratingListener);
        this.deframer = deframer;
    }

    @Override // io.grpc.internal.Deframer
    public void setMaxInboundMessageSize(int messageSize) {
        this.deframer.setMaxInboundMessageSize(messageSize);
    }

    @Override // io.grpc.internal.Deframer
    public void setDecompressor(Decompressor decompressor) {
        this.deframer.setDecompressor(decompressor);
    }

    @Override // io.grpc.internal.Deframer
    public void setFullStreamDecompressor(GzipInflatingBuffer fullStreamDecompressor) {
        this.deframer.setFullStreamDecompressor(fullStreamDecompressor);
    }

    private boolean runWhereAppropriate(Op op) {
        return runWhereAppropriate(op, true);
    }

    private boolean runWhereAppropriate(Op op, boolean currentThreadIsTransportThread) {
        boolean deframerOnTransportThreadCopy;
        boolean alreadyEnqueued;
        synchronized (this.lock) {
            deframerOnTransportThreadCopy = this.deframerOnTransportThread;
            alreadyEnqueued = this.messageProducerEnqueued;
            if (!deframerOnTransportThreadCopy) {
                this.opQueue.offer(op);
                this.messageProducerEnqueued = true;
            }
        }
        if (deframerOnTransportThreadCopy) {
            op.run(true);
            return true;
        }
        if (!alreadyEnqueued) {
            if (currentThreadIsTransportThread) {
                TaskCloseable ignore = PerfMark.traceTask("MigratingThreadDeframer.messageAvailable");
                try {
                    this.transportListener.messagesAvailable(this.messageProducer);
                    if (ignore != null) {
                        ignore.close();
                        return false;
                    }
                    return false;
                } catch (Throwable th) {
                    if (ignore != null) {
                        try {
                            ignore.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            final Link link = PerfMark.linkOut();
            this.transportExecutor.runOnTransportThread(new Runnable() { // from class: io.grpc.internal.MigratingThreadDeframer.1
                @Override // java.lang.Runnable
                public void run() {
                    TaskCloseable ignore2 = PerfMark.traceTask("MigratingThreadDeframer.messageAvailable");
                    try {
                        PerfMark.linkIn(link);
                        MigratingThreadDeframer.this.transportListener.messagesAvailable(MigratingThreadDeframer.this.messageProducer);
                        if (ignore2 != null) {
                            ignore2.close();
                        }
                    } catch (Throwable th3) {
                        if (ignore2 != null) {
                            try {
                                ignore2.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                }
            });
            return false;
        }
        return false;
    }

    @Override // io.grpc.internal.ThreadOptimizedDeframer, io.grpc.internal.Deframer
    public void request(final int numMessages) {
        runWhereAppropriate(new Op() { // from class: io.grpc.internal.MigratingThreadDeframer.1RequestOp
            @Override // io.grpc.internal.MigratingThreadDeframer.Op
            public void run(boolean isDeframerOnTransportThread) {
                if (isDeframerOnTransportThread) {
                    final Link link = PerfMark.linkOut();
                    MigratingThreadDeframer.this.transportExecutor.runOnTransportThread(new Runnable() { // from class: io.grpc.internal.MigratingThreadDeframer.1RequestOp.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TaskCloseable ignore = PerfMark.traceTask("MigratingThreadDeframer.request");
                            try {
                                PerfMark.linkIn(link);
                                MigratingThreadDeframer.this.requestFromTransportThread(numMessages);
                                if (ignore != null) {
                                    ignore.close();
                                }
                            } catch (Throwable th) {
                                if (ignore != null) {
                                    try {
                                        ignore.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        }
                    });
                    return;
                }
                try {
                    TaskCloseable ignore = PerfMark.traceTask("MigratingThreadDeframer.request");
                    try {
                        MigratingThreadDeframer.this.deframer.request(numMessages);
                        if (ignore != null) {
                            ignore.close();
                        }
                    } finally {
                    }
                } catch (Throwable t) {
                    MigratingThreadDeframer.this.appListener.deframeFailed(t);
                    MigratingThreadDeframer.this.deframer.close();
                }
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestFromTransportThread(final int numMessages) {
        runWhereAppropriate(new Op() { // from class: io.grpc.internal.MigratingThreadDeframer.1RequestAgainOp
            @Override // io.grpc.internal.MigratingThreadDeframer.Op
            public void run(boolean isDeframerOnTransportThread) {
                MigratingThreadDeframer migratingThreadDeframer = MigratingThreadDeframer.this;
                if (isDeframerOnTransportThread) {
                    try {
                        migratingThreadDeframer.deframer.request(numMessages);
                    } catch (Throwable t) {
                        MigratingThreadDeframer.this.appListener.deframeFailed(t);
                        MigratingThreadDeframer.this.deframer.close();
                    }
                    if (!MigratingThreadDeframer.this.deframer.hasPendingDeliveries()) {
                        synchronized (MigratingThreadDeframer.this.lock) {
                            PerfMark.event("MigratingThreadDeframer.deframerOnApplicationThread");
                            MigratingThreadDeframer.this.migratingListener.setDelegate(MigratingThreadDeframer.this.appListener);
                            MigratingThreadDeframer.this.deframerOnTransportThread = false;
                        }
                        return;
                    }
                    return;
                }
                migratingThreadDeframer.request(numMessages);
            }
        });
    }

    /* JADX INFO: renamed from: io.grpc.internal.MigratingThreadDeframer$1DeframeOp, reason: invalid class name */
    class C1DeframeOp implements Op, Closeable {
        final /* synthetic */ ReadableBuffer val$data;

        C1DeframeOp(ReadableBuffer readableBuffer) {
            this.val$data = readableBuffer;
        }

        @Override // io.grpc.internal.MigratingThreadDeframer.Op
        public void run(boolean isDeframerOnTransportThread) {
            TaskCloseable ignore = PerfMark.traceTask("MigratingThreadDeframer.deframe");
            MigratingThreadDeframer migratingThreadDeframer = MigratingThreadDeframer.this;
            try {
                if (isDeframerOnTransportThread) {
                    migratingThreadDeframer.deframer.deframe(this.val$data);
                    if (ignore != null) {
                        ignore.close();
                        return;
                    }
                    return;
                }
                try {
                    migratingThreadDeframer.deframer.deframe(this.val$data);
                } catch (Throwable t) {
                    MigratingThreadDeframer.this.appListener.deframeFailed(t);
                    MigratingThreadDeframer.this.deframer.close();
                }
                if (ignore != null) {
                    ignore.close();
                }
            } catch (Throwable th) {
                if (ignore != null) {
                    try {
                        ignore.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.val$data.close();
        }
    }

    @Override // io.grpc.internal.Deframer
    public void deframe(ReadableBuffer data) {
        runWhereAppropriate(new C1DeframeOp(data));
    }

    @Override // io.grpc.internal.Deframer
    public void closeWhenComplete() {
        runWhereAppropriate(new Op() { // from class: io.grpc.internal.MigratingThreadDeframer.1CloseWhenCompleteOp
            @Override // io.grpc.internal.MigratingThreadDeframer.Op
            public void run(boolean isDeframerOnTransportThread) {
                MigratingThreadDeframer.this.deframer.closeWhenComplete();
            }
        });
    }

    @Override // io.grpc.internal.Deframer
    public void close() {
        if (!runWhereAppropriate(new Op() { // from class: io.grpc.internal.MigratingThreadDeframer.1CloseOp
            @Override // io.grpc.internal.MigratingThreadDeframer.Op
            public void run(boolean isDeframerOnTransportThread) {
                MigratingThreadDeframer.this.deframer.close();
            }
        })) {
            this.deframer.stopDelivery();
        }
    }

    class DeframeMessageProducer implements StreamListener.MessageProducer, Closeable {
        DeframeMessageProducer() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
        
            if (r6.this$0.deframer.hasPendingDeliveries() == false) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
        
            io.perfmark.PerfMark.event("MigratingThreadDeframer.deframerOnTransportThread");
            r6.this$0.migratingListener.setDelegate(r6.this$0.transportListener);
            r6.this$0.deframerOnTransportThread = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
        
            r6.this$0.messageProducerEnqueued = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        
            return null;
         */
        @Override // io.grpc.internal.StreamListener.MessageProducer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public InputStream next() {
            Op op;
            while (true) {
                InputStream is = MigratingThreadDeframer.this.appListener.messageReadQueuePoll();
                if (is == null) {
                    synchronized (MigratingThreadDeframer.this.lock) {
                        op = (Op) MigratingThreadDeframer.this.opQueue.poll();
                        if (op == null) {
                            break;
                        }
                    }
                    op.run(false);
                } else {
                    return is;
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Op op;
            while (true) {
                synchronized (MigratingThreadDeframer.this.lock) {
                    do {
                        op = (Op) MigratingThreadDeframer.this.opQueue.poll();
                        if (op == null) {
                            break;
                        }
                    } while (!(op instanceof Closeable));
                    if (op == null) {
                        MigratingThreadDeframer.this.messageProducerEnqueued = false;
                        return;
                    }
                }
                GrpcUtil.closeQuietly((Closeable) op);
            }
        }
    }

    static class MigratingDeframerListener extends ForwardingDeframerListener {
        private MessageDeframer.Listener delegate;

        public MigratingDeframerListener(MessageDeframer.Listener delegate) {
            setDelegate(delegate);
        }

        @Override // io.grpc.internal.ForwardingDeframerListener
        protected MessageDeframer.Listener delegate() {
            return this.delegate;
        }

        public void setDelegate(MessageDeframer.Listener delegate) {
            this.delegate = (MessageDeframer.Listener) Preconditions.checkNotNull(delegate, "delegate");
        }
    }
}
