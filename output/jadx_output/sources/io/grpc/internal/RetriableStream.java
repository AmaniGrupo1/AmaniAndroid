package io.grpc.internal;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import io.grpc.Attributes;
import io.grpc.ClientStreamTracer;
import io.grpc.Compressor;
import io.grpc.Deadline;
import io.grpc.DecompressorRegistry;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.SynchronizationContext;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.StreamListener;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.CheckForNull;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes22.dex */
abstract class RetriableStream<ReqT> implements ClientStream {
    private final Executor callExecutor;
    private Status cancellationStatus;
    private final long channelBufferLimit;
    private final ChannelBufferMeter channelBufferUsed;
    private final Metadata headers;

    @Nullable
    private final HedgingPolicy hedgingPolicy;
    private boolean isClosed;
    private final boolean isHedging;
    private ClientStreamListener masterListener;
    private final MethodDescriptor<ReqT, ?> method;
    private long nextBackoffIntervalNanos;
    private final long perRpcBufferLimit;
    private long perRpcBufferUsed;

    @Nullable
    private final RetryPolicy retryPolicy;
    private SavedCloseMasterListenerReason savedCloseMasterListenerReason;
    private final ScheduledExecutorService scheduledExecutorService;
    private FutureCanceller scheduledHedging;
    private FutureCanceller scheduledRetry;

    @Nullable
    private final Throttle throttle;
    static final Metadata.Key<String> GRPC_PREVIOUS_RPC_ATTEMPTS = Metadata.Key.of("grpc-previous-rpc-attempts", Metadata.ASCII_STRING_MARSHALLER);
    static final Metadata.Key<String> GRPC_RETRY_PUSHBACK_MS = Metadata.Key.of("grpc-retry-pushback-ms", Metadata.ASCII_STRING_MARSHALLER);
    private static final Status CANCELLED_BECAUSE_COMMITTED = Status.CANCELLED.withDescription("Stream thrown away because RetriableStream committed");
    private static Random random = new Random();
    private final Executor listenerSerializeExecutor = new SynchronizationContext(new Thread.UncaughtExceptionHandler() { // from class: io.grpc.internal.RetriableStream.1
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread t, Throwable e) {
            throw Status.fromThrowable(e).withDescription("Uncaught exception in the SynchronizationContext. Re-thrown.").asRuntimeException();
        }
    });
    private final Object lock = new Object();
    private final InsightBuilder closedSubstreamsInsight = new InsightBuilder();
    private volatile State state = new State(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);
    private final AtomicBoolean noMoreTransparentRetry = new AtomicBoolean();
    private final AtomicInteger localOnlyTransparentRetries = new AtomicInteger();
    private final AtomicInteger inFlightSubStreams = new AtomicInteger();

    private interface BufferEntry {
        void runWith(Substream substream);
    }

    abstract ClientStream newSubstream(Metadata metadata, ClientStreamTracer.Factory factory, int i, boolean z);

    abstract void postCommit();

    @CheckReturnValue
    @Nullable
    abstract Status prestart();

    RetriableStream(MethodDescriptor<ReqT, ?> method, Metadata headers, ChannelBufferMeter channelBufferUsed, long perRpcBufferLimit, long channelBufferLimit, Executor callExecutor, ScheduledExecutorService scheduledExecutorService, @Nullable RetryPolicy retryPolicy, @Nullable HedgingPolicy hedgingPolicy, @Nullable Throttle throttle) {
        this.method = method;
        this.channelBufferUsed = channelBufferUsed;
        this.perRpcBufferLimit = perRpcBufferLimit;
        this.channelBufferLimit = channelBufferLimit;
        this.callExecutor = callExecutor;
        this.scheduledExecutorService = scheduledExecutorService;
        this.headers = headers;
        this.retryPolicy = retryPolicy;
        if (retryPolicy != null) {
            this.nextBackoffIntervalNanos = retryPolicy.initialBackoffNanos;
        }
        this.hedgingPolicy = hedgingPolicy;
        Preconditions.checkArgument(retryPolicy == null || hedgingPolicy == null, "Should not provide both retryPolicy and hedgingPolicy");
        this.isHedging = hedgingPolicy != null;
        this.throttle = throttle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CheckReturnValue
    @Nullable
    public Runnable commit(final Substream winningSubstream) throws Throwable {
        final Future<?> retryFuture;
        final Future<?> hedgingFuture;
        synchronized (this.lock) {
            try {
                try {
                    try {
                        if (this.state.winningSubstream != null) {
                            return null;
                        }
                        final Collection<Substream> savedDrainedSubstreams = this.state.drainedSubstreams;
                        this.state = this.state.committed(winningSubstream);
                        this.channelBufferUsed.addAndGet(-this.perRpcBufferUsed);
                        if (this.scheduledRetry != null) {
                            Future<?> retryFuture2 = this.scheduledRetry.markCancelled();
                            this.scheduledRetry = null;
                            retryFuture = retryFuture2;
                        } else {
                            retryFuture = null;
                        }
                        if (this.scheduledHedging != null) {
                            Future<?> hedgingFuture2 = this.scheduledHedging.markCancelled();
                            this.scheduledHedging = null;
                            hedgingFuture = hedgingFuture2;
                        } else {
                            hedgingFuture = null;
                        }
                        return new Runnable() { // from class: io.grpc.internal.RetriableStream.1CommitTask
                            @Override // java.lang.Runnable
                            public void run() {
                                for (Substream substream : savedDrainedSubstreams) {
                                    if (substream != winningSubstream) {
                                        substream.stream.cancel(RetriableStream.CANCELLED_BECAUSE_COMMITTED);
                                    }
                                }
                                if (retryFuture != null) {
                                    retryFuture.cancel(false);
                                }
                                if (hedgingFuture != null) {
                                    hedgingFuture.cancel(false);
                                }
                                RetriableStream.this.postCommit();
                            }
                        };
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void commitAndRun(Substream winningSubstream) throws Throwable {
        Runnable postCommitTask = commit(winningSubstream);
        if (postCommitTask != null) {
            this.callExecutor.execute(postCommitTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Substream createSubstream(int previousAttemptCount, boolean isTransparentRetry) {
        int inFlight;
        do {
            inFlight = this.inFlightSubStreams.get();
            if (inFlight < 0) {
                return null;
            }
        } while (!this.inFlightSubStreams.compareAndSet(inFlight, inFlight + 1));
        Substream sub = new Substream(previousAttemptCount);
        final ClientStreamTracer bufferSizeTracer = new BufferSizeTracer(sub);
        ClientStreamTracer.Factory tracerFactory = new ClientStreamTracer.Factory() { // from class: io.grpc.internal.RetriableStream.2
            @Override // io.grpc.ClientStreamTracer.Factory
            public ClientStreamTracer newClientStreamTracer(ClientStreamTracer.StreamInfo info, Metadata headers) {
                return bufferSizeTracer;
            }
        };
        Metadata newHeaders = updateHeaders(this.headers, previousAttemptCount);
        sub.stream = newSubstream(newHeaders, tracerFactory, previousAttemptCount, isTransparentRetry);
        return sub;
    }

    final Metadata updateHeaders(Metadata originalHeaders, int previousAttemptCount) {
        Metadata newHeaders = new Metadata();
        newHeaders.merge(originalHeaders);
        if (previousAttemptCount > 0) {
            newHeaders.put(GRPC_PREVIOUS_RPC_ATTEMPTS, String.valueOf(previousAttemptCount));
        }
        return newHeaders;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0038, code lost:
    
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
    
        r10.listenerSerializeExecutor.execute(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0040, code lost:
    
        if (r3 != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0042, code lost:
    
        r11.stream.start(new io.grpc.internal.RetriableStream.Sublistener(r10, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
    
        r5 = r11.stream;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0052, code lost:
    
        if (r10.state.winningSubstream != r11) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0054, code lost:
    
        r6 = r10.cancellationStatus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0057, code lost:
    
        r6 = io.grpc.internal.RetriableStream.CANCELLED_BECAUSE_COMMITTED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
    
        r5.cancel(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        r5 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0094, code lost:
    
        if (r5.hasNext() == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0096, code lost:
    
        r7 = r5.next();
        r7.runWith(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a1, code lost:
    
        if ((r7 instanceof io.grpc.internal.RetriableStream.StartEntry) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        r6 = r10.state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a8, code lost:
    
        if (r6.winningSubstream == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ac, code lost:
    
        if (r6.winningSubstream == r11) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b1, code lost:
    
        if (r6.cancelled == false) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drain(Substream substream) {
        int index = 0;
        List<BufferEntry> list = null;
        boolean streamStarted = false;
        Runnable onReadyRunnable = null;
        while (true) {
            synchronized (this.lock) {
                State savedState = this.state;
                if (savedState.winningSubstream == null || savedState.winningSubstream == substream) {
                    if (!savedState.cancelled) {
                        if (index == savedState.buffer.size()) {
                            this.state = savedState.substreamDrained(substream);
                            if (!isReady()) {
                                return;
                            } else {
                                onReadyRunnable = new Runnable() { // from class: io.grpc.internal.RetriableStream.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (!RetriableStream.this.isClosed) {
                                            RetriableStream.this.masterListener.onReady();
                                        }
                                    }
                                };
                            }
                        } else {
                            if (substream.closed) {
                                return;
                            }
                            int stop = Math.min(index + 128, savedState.buffer.size());
                            if (list == null) {
                                list = new ArrayList<>(savedState.buffer.subList(index, stop));
                            } else {
                                list.clear();
                                list.addAll(savedState.buffer.subList(index, stop));
                            }
                            index = stop;
                        }
                    }
                }
            }
        }
    }

    class StartEntry implements BufferEntry {
        StartEntry() {
        }

        @Override // io.grpc.internal.RetriableStream.BufferEntry
        public void runWith(Substream substream) {
            substream.stream.start(new Sublistener(substream));
        }
    }

    @Override // io.grpc.internal.ClientStream
    public final void start(ClientStreamListener listener) throws Throwable {
        this.masterListener = listener;
        Status shutdownStatus = prestart();
        if (shutdownStatus != null) {
            cancel(shutdownStatus);
            return;
        }
        synchronized (this.lock) {
            this.state.buffer.add(new StartEntry());
        }
        Substream substream = createSubstream(0, false);
        if (substream == null) {
            return;
        }
        if (this.isHedging) {
            FutureCanceller scheduledHedgingRef = null;
            synchronized (this.lock) {
                this.state = this.state.addActiveHedge(substream);
                if (hasPotentialHedging(this.state) && (this.throttle == null || this.throttle.isAboveThreshold())) {
                    FutureCanceller futureCanceller = new FutureCanceller(this.lock);
                    scheduledHedgingRef = futureCanceller;
                    this.scheduledHedging = futureCanceller;
                }
            }
            if (scheduledHedgingRef != null) {
                scheduledHedgingRef.setFuture(this.scheduledExecutorService.schedule(new HedgingRunnable(scheduledHedgingRef), this.hedgingPolicy.hedgingDelayNanos, TimeUnit.NANOSECONDS));
            }
        }
        drain(substream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushbackHedging(@Nullable Integer delayMillis) {
        if (delayMillis == null) {
            return;
        }
        if (delayMillis.intValue() < 0) {
            freezeHedging();
            return;
        }
        synchronized (this.lock) {
            if (this.scheduledHedging == null) {
                return;
            }
            Future<?> futureToBeCancelled = this.scheduledHedging.markCancelled();
            FutureCanceller future = new FutureCanceller(this.lock);
            this.scheduledHedging = future;
            if (futureToBeCancelled != null) {
                futureToBeCancelled.cancel(false);
            }
            future.setFuture(this.scheduledExecutorService.schedule(new HedgingRunnable(future), delayMillis.intValue(), TimeUnit.MILLISECONDS));
        }
    }

    private final class HedgingRunnable implements Runnable {
        final FutureCanceller scheduledHedgingRef;

        HedgingRunnable(FutureCanceller scheduledHedging) {
            this.scheduledHedgingRef = scheduledHedging;
        }

        @Override // java.lang.Runnable
        public void run() {
            final Substream newSubstream = RetriableStream.this.createSubstream(RetriableStream.this.state.hedgingAttemptCount, false);
            if (newSubstream != null) {
                RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.HedgingRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean cancelled = false;
                        FutureCanceller future = null;
                        synchronized (RetriableStream.this.lock) {
                            if (HedgingRunnable.this.scheduledHedgingRef.isCancelled()) {
                                cancelled = true;
                            } else {
                                RetriableStream.this.state = RetriableStream.this.state.addActiveHedge(newSubstream);
                                if (RetriableStream.this.hasPotentialHedging(RetriableStream.this.state) && (RetriableStream.this.throttle == null || RetriableStream.this.throttle.isAboveThreshold())) {
                                    RetriableStream retriableStream = RetriableStream.this;
                                    FutureCanceller futureCanceller = new FutureCanceller(RetriableStream.this.lock);
                                    future = futureCanceller;
                                    retriableStream.scheduledHedging = futureCanceller;
                                } else {
                                    RetriableStream.this.state = RetriableStream.this.state.freezeHedging();
                                    RetriableStream.this.scheduledHedging = null;
                                }
                            }
                        }
                        if (cancelled) {
                            newSubstream.stream.start(new Sublistener(newSubstream));
                            newSubstream.stream.cancel(Status.CANCELLED.withDescription("Unneeded hedging"));
                        } else {
                            if (future != null) {
                                future.setFuture(RetriableStream.this.scheduledExecutorService.schedule(new HedgingRunnable(future), RetriableStream.this.hedgingPolicy.hedgingDelayNanos, TimeUnit.NANOSECONDS));
                            }
                            RetriableStream.this.drain(newSubstream);
                        }
                    }
                });
            }
        }
    }

    @Override // io.grpc.internal.ClientStream
    public final void cancel(Status reason) throws Throwable {
        Substream noopSubstream = new Substream(0);
        noopSubstream.stream = new NoopClientStream();
        Runnable runnable = commit(noopSubstream);
        Object obj = this.lock;
        if (runnable != null) {
            synchronized (obj) {
                this.state = this.state.substreamDrained(noopSubstream);
            }
            runnable.run();
            safeCloseMasterListener(reason, ClientStreamListener.RpcProgress.PROCESSED, new Metadata());
            return;
        }
        Substream winningSubstreamToCancel = null;
        synchronized (obj) {
            if (this.state.drainedSubstreams.contains(this.state.winningSubstream)) {
                winningSubstreamToCancel = this.state.winningSubstream;
            } else {
                this.cancellationStatus = reason;
            }
            this.state = this.state.cancelled();
        }
        if (winningSubstreamToCancel != null) {
            winningSubstreamToCancel.stream.cancel(reason);
        }
    }

    private void delayOrExecute(BufferEntry bufferEntry) {
        Collection<Substream> savedDrainedSubstreams;
        synchronized (this.lock) {
            if (!this.state.passThrough) {
                this.state.buffer.add(bufferEntry);
            }
            savedDrainedSubstreams = this.state.drainedSubstreams;
        }
        for (Substream substream : savedDrainedSubstreams) {
            bufferEntry.runWith(substream);
        }
    }

    @Override // io.grpc.internal.Stream
    public final void writeMessage(InputStream message) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    final void sendMessage(final ReqT message) {
        State savedState = this.state;
        if (savedState.passThrough) {
            savedState.winningSubstream.stream.writeMessage(this.method.streamRequest(message));
        } else {
            delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1SendMessageEntry
                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.writeMessage(RetriableStream.this.method.streamRequest(message));
                    substream.stream.flush();
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final void request(final int numMessages) {
        State savedState = this.state;
        if (savedState.passThrough) {
            savedState.winningSubstream.stream.request(numMessages);
        } else {
            delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1RequestEntry
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.request(numMessages);
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final void flush() {
        State savedState = this.state;
        if (savedState.passThrough) {
            savedState.winningSubstream.stream.flush();
        } else {
            delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1FlushEntry
                @Override // io.grpc.internal.RetriableStream.BufferEntry
                public void runWith(Substream substream) {
                    substream.stream.flush();
                }
            });
        }
    }

    @Override // io.grpc.internal.Stream
    public final boolean isReady() {
        for (Substream substream : this.state.drainedSubstreams) {
            if (substream.stream.isReady()) {
                return true;
            }
        }
        return false;
    }

    @Override // io.grpc.internal.Stream
    public void optimizeForDirectExecutor() {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1OptimizeDirectEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.optimizeForDirectExecutor();
            }
        });
    }

    @Override // io.grpc.internal.Stream
    public final void setCompressor(final Compressor compressor) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1CompressorEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setCompressor(compressor);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setFullStreamDecompression(final boolean fullStreamDecompression) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1FullStreamDecompressionEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setFullStreamDecompression(fullStreamDecompression);
            }
        });
    }

    @Override // io.grpc.internal.Stream
    public final void setMessageCompression(final boolean enable) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1MessageCompressionEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setMessageCompression(enable);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void halfClose() {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1HalfCloseEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.halfClose();
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setAuthority(final String authority) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1AuthorityEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setAuthority(authority);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setDecompressorRegistry(final DecompressorRegistry decompressorRegistry) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1DecompressorRegistryEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setDecompressorRegistry(decompressorRegistry);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setMaxInboundMessageSize(final int maxSize) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1MaxInboundMessageSizeEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setMaxInboundMessageSize(maxSize);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setMaxOutboundMessageSize(final int maxSize) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1MaxOutboundMessageSizeEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setMaxOutboundMessageSize(maxSize);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final void setDeadline(final Deadline deadline) {
        delayOrExecute(new BufferEntry() { // from class: io.grpc.internal.RetriableStream.1DeadlineEntry
            @Override // io.grpc.internal.RetriableStream.BufferEntry
            public void runWith(Substream substream) {
                substream.stream.setDeadline(deadline);
            }
        });
    }

    @Override // io.grpc.internal.ClientStream
    public final Attributes getAttributes() {
        if (this.state.winningSubstream != null) {
            return this.state.winningSubstream.stream.getAttributes();
        }
        return Attributes.EMPTY;
    }

    @Override // io.grpc.internal.ClientStream
    public void appendTimeoutInsight(InsightBuilder insightBuilder) {
        State currentState;
        synchronized (this.lock) {
            insightBuilder.appendKeyValue("closed", this.closedSubstreamsInsight);
            currentState = this.state;
        }
        if (currentState.winningSubstream != null) {
            InsightBuilder substreamInsight = new InsightBuilder();
            currentState.winningSubstream.stream.appendTimeoutInsight(substreamInsight);
            insightBuilder.appendKeyValue("committed", substreamInsight);
            return;
        }
        InsightBuilder openSubstreamsInsight = new InsightBuilder();
        for (Substream sub : currentState.drainedSubstreams) {
            InsightBuilder substreamInsight2 = new InsightBuilder();
            sub.stream.appendTimeoutInsight(substreamInsight2);
            openSubstreamsInsight.append(substreamInsight2);
        }
        insightBuilder.appendKeyValue(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, openSubstreamsInsight);
    }

    static void setRandom(Random random2) {
        random = random2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasPotentialHedging(State state) {
        return state.winningSubstream == null && state.hedgingAttemptCount < this.hedgingPolicy.maxAttempts && !state.hedgingFrozen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void freezeHedging() {
        Future<?> futureToBeCancelled = null;
        synchronized (this.lock) {
            if (this.scheduledHedging != null) {
                futureToBeCancelled = this.scheduledHedging.markCancelled();
                this.scheduledHedging = null;
            }
            this.state = this.state.freezeHedging();
        }
        if (futureToBeCancelled != null) {
            futureToBeCancelled.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCloseMasterListener(final Status status, final ClientStreamListener.RpcProgress progress, final Metadata metadata) {
        this.savedCloseMasterListenerReason = new SavedCloseMasterListenerReason(status, progress, metadata);
        if (this.inFlightSubStreams.addAndGet(Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.listenerSerializeExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.4
                @Override // java.lang.Runnable
                public void run() {
                    RetriableStream.this.isClosed = true;
                    RetriableStream.this.masterListener.closed(status, progress, metadata);
                }
            });
        }
    }

    private static final class SavedCloseMasterListenerReason {
        private final Metadata metadata;
        private final ClientStreamListener.RpcProgress progress;
        private final Status status;

        SavedCloseMasterListenerReason(Status status, ClientStreamListener.RpcProgress progress, Metadata metadata) {
            this.status = status;
            this.progress = progress;
            this.metadata = metadata;
        }
    }

    private final class Sublistener implements ClientStreamListener {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final Substream substream;

        Sublistener(Substream substream) {
            this.substream = substream;
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void headersRead(final Metadata headers) throws Throwable {
            if (this.substream.previousAttemptCount > 0) {
                headers.discardAll(RetriableStream.GRPC_PREVIOUS_RPC_ATTEMPTS);
                headers.put(RetriableStream.GRPC_PREVIOUS_RPC_ATTEMPTS, String.valueOf(this.substream.previousAttemptCount));
            }
            RetriableStream.this.commitAndRun(this.substream);
            if (RetriableStream.this.state.winningSubstream == this.substream) {
                if (RetriableStream.this.throttle != null) {
                    RetriableStream.this.throttle.onSuccess();
                }
                RetriableStream.this.listenerSerializeExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RetriableStream.this.masterListener.headersRead(headers);
                    }
                });
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void closed(Status status, ClientStreamListener.RpcProgress rpcProgress, Metadata trailers) throws Throwable {
            FutureCanceller scheduledRetryCopy;
            synchronized (RetriableStream.this.lock) {
                RetriableStream.this.state = RetriableStream.this.state.substreamClosed(this.substream);
                RetriableStream.this.closedSubstreamsInsight.append(status.getCode());
            }
            if (RetriableStream.this.inFlightSubStreams.decrementAndGet() == Integer.MIN_VALUE) {
                if (RetriableStream.this.savedCloseMasterListenerReason != null) {
                    RetriableStream.this.listenerSerializeExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.2
                        @Override // java.lang.Runnable
                        public void run() {
                            RetriableStream.this.isClosed = true;
                            RetriableStream.this.masterListener.closed(RetriableStream.this.savedCloseMasterListenerReason.status, RetriableStream.this.savedCloseMasterListenerReason.progress, RetriableStream.this.savedCloseMasterListenerReason.metadata);
                        }
                    });
                    return;
                }
                throw new AssertionError();
            }
            if (this.substream.bufferLimitExceeded) {
                RetriableStream.this.commitAndRun(this.substream);
                if (RetriableStream.this.state.winningSubstream == this.substream) {
                    RetriableStream.this.safeCloseMasterListener(status, rpcProgress, trailers);
                    return;
                }
                return;
            }
            if (rpcProgress != ClientStreamListener.RpcProgress.MISCARRIED || RetriableStream.this.localOnlyTransparentRetries.incrementAndGet() <= 1000) {
                if (RetriableStream.this.state.winningSubstream == null) {
                    if (rpcProgress == ClientStreamListener.RpcProgress.MISCARRIED || (rpcProgress == ClientStreamListener.RpcProgress.REFUSED && RetriableStream.this.noMoreTransparentRetry.compareAndSet(false, true))) {
                        final Substream newSubstream = RetriableStream.this.createSubstream(this.substream.previousAttemptCount, true);
                        if (newSubstream != null) {
                            if (RetriableStream.this.isHedging) {
                                synchronized (RetriableStream.this.lock) {
                                    RetriableStream.this.state = RetriableStream.this.state.replaceActiveHedge(this.substream, newSubstream);
                                }
                            }
                            RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    RetriableStream.this.drain(newSubstream);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    ClientStreamListener.RpcProgress rpcProgress2 = ClientStreamListener.RpcProgress.DROPPED;
                    RetriableStream retriableStream = RetriableStream.this;
                    if (rpcProgress == rpcProgress2) {
                        if (retriableStream.isHedging) {
                            RetriableStream.this.freezeHedging();
                        }
                    } else {
                        retriableStream.noMoreTransparentRetry.set(true);
                        if (RetriableStream.this.isHedging) {
                            HedgingPlan hedgingPlan = makeHedgingDecision(status, trailers);
                            if (hedgingPlan.isHedgeable) {
                                RetriableStream.this.pushbackHedging(hedgingPlan.hedgingPushbackMillis);
                            }
                            synchronized (RetriableStream.this.lock) {
                                RetriableStream.this.state = RetriableStream.this.state.removeActiveHedge(this.substream);
                                if (hedgingPlan.isHedgeable && (RetriableStream.this.hasPotentialHedging(RetriableStream.this.state) || !RetriableStream.this.state.activeHedges.isEmpty())) {
                                    return;
                                }
                            }
                        } else {
                            RetryPlan retryPlan = makeRetryDecision(status, trailers);
                            if (retryPlan.shouldRetry) {
                                final Substream newSubstream2 = RetriableStream.this.createSubstream(this.substream.previousAttemptCount + 1, false);
                                if (newSubstream2 != null) {
                                    synchronized (RetriableStream.this.lock) {
                                        RetriableStream retriableStream2 = RetriableStream.this;
                                        scheduledRetryCopy = new FutureCanceller(RetriableStream.this.lock);
                                        retriableStream2.scheduledRetry = scheduledRetryCopy;
                                    }
                                    scheduledRetryCopy.setFuture(RetriableStream.this.scheduledExecutorService.schedule(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.1RetryBackoffRunnable
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            RetriableStream.this.callExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.1RetryBackoffRunnable.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    RetriableStream.this.drain(newSubstream2);
                                                }
                                            });
                                        }
                                    }, retryPlan.backoffNanos, TimeUnit.NANOSECONDS));
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
                RetriableStream.this.commitAndRun(this.substream);
                if (RetriableStream.this.state.winningSubstream == this.substream) {
                    RetriableStream.this.safeCloseMasterListener(status, rpcProgress, trailers);
                    return;
                }
                return;
            }
            RetriableStream.this.commitAndRun(this.substream);
            if (RetriableStream.this.state.winningSubstream == this.substream) {
                Status tooManyTransparentRetries = Status.INTERNAL.withDescription("Too many transparent retries. Might be a bug in gRPC").withCause(status.asRuntimeException());
                RetriableStream.this.safeCloseMasterListener(tooManyTransparentRetries, rpcProgress, trailers);
            }
        }

        private RetryPlan makeRetryDecision(Status status, Metadata trailer) {
            if (RetriableStream.this.retryPolicy == null) {
                return new RetryPlan(false, 0L);
            }
            boolean shouldRetry = false;
            long backoffNanos = 0;
            boolean isRetryableStatusCode = RetriableStream.this.retryPolicy.retryableStatusCodes.contains(status.getCode());
            Integer pushbackMillis = getPushbackMills(trailer);
            boolean isThrottled = false;
            if (RetriableStream.this.throttle != null && (isRetryableStatusCode || (pushbackMillis != null && pushbackMillis.intValue() < 0))) {
                isThrottled = !RetriableStream.this.throttle.onQualifiedFailureThenCheckIsAboveThreshold();
            }
            if (RetriableStream.this.retryPolicy.maxAttempts > this.substream.previousAttemptCount + 1 && !isThrottled) {
                if (pushbackMillis == null) {
                    if (isRetryableStatusCode) {
                        shouldRetry = true;
                        backoffNanos = (long) (RetriableStream.this.nextBackoffIntervalNanos * RetriableStream.random.nextDouble());
                        RetriableStream.this.nextBackoffIntervalNanos = Math.min((long) (RetriableStream.this.nextBackoffIntervalNanos * RetriableStream.this.retryPolicy.backoffMultiplier), RetriableStream.this.retryPolicy.maxBackoffNanos);
                    }
                } else if (pushbackMillis.intValue() >= 0) {
                    shouldRetry = true;
                    backoffNanos = TimeUnit.MILLISECONDS.toNanos(pushbackMillis.intValue());
                    RetriableStream.this.nextBackoffIntervalNanos = RetriableStream.this.retryPolicy.initialBackoffNanos;
                }
            }
            return new RetryPlan(shouldRetry, backoffNanos);
        }

        private HedgingPlan makeHedgingDecision(Status status, Metadata trailer) {
            Integer pushbackMillis = getPushbackMills(trailer);
            boolean isFatal = !RetriableStream.this.hedgingPolicy.nonFatalStatusCodes.contains(status.getCode());
            boolean isThrottled = false;
            if (RetriableStream.this.throttle != null && (!isFatal || (pushbackMillis != null && pushbackMillis.intValue() < 0))) {
                isThrottled = !RetriableStream.this.throttle.onQualifiedFailureThenCheckIsAboveThreshold();
            }
            if (!isFatal && !isThrottled && !status.isOk() && pushbackMillis != null && pushbackMillis.intValue() > 0) {
                pushbackMillis = 0;
            }
            return new HedgingPlan((isFatal || isThrottled) ? false : true, pushbackMillis);
        }

        @Nullable
        private Integer getPushbackMills(Metadata trailer) {
            String pushbackStr = (String) trailer.get(RetriableStream.GRPC_RETRY_PUSHBACK_MS);
            if (pushbackStr == null) {
                return null;
            }
            try {
                Integer pushbackMillis = Integer.valueOf(pushbackStr);
                return pushbackMillis;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        @Override // io.grpc.internal.StreamListener
        public void messagesAvailable(final StreamListener.MessageProducer producer) {
            State savedState = RetriableStream.this.state;
            Preconditions.checkState(savedState.winningSubstream != null, "Headers should be received prior to messages.");
            if (savedState.winningSubstream == this.substream) {
                RetriableStream.this.listenerSerializeExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.4
                    @Override // java.lang.Runnable
                    public void run() {
                        RetriableStream.this.masterListener.messagesAvailable(producer);
                    }
                });
            } else {
                GrpcUtil.closeQuietly(producer);
            }
        }

        @Override // io.grpc.internal.StreamListener
        public void onReady() {
            if (RetriableStream.this.isReady()) {
                RetriableStream.this.listenerSerializeExecutor.execute(new Runnable() { // from class: io.grpc.internal.RetriableStream.Sublistener.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!RetriableStream.this.isClosed) {
                            RetriableStream.this.masterListener.onReady();
                        }
                    }
                });
            }
        }
    }

    private static final class State {
        final Collection<Substream> activeHedges;

        @Nullable
        final List<BufferEntry> buffer;
        final boolean cancelled;
        final Collection<Substream> drainedSubstreams;
        final int hedgingAttemptCount;
        final boolean hedgingFrozen;
        final boolean passThrough;

        @Nullable
        final Substream winningSubstream;

        State(@Nullable List<BufferEntry> buffer, Collection<Substream> drainedSubstreams, Collection<Substream> activeHedges, @Nullable Substream winningSubstream, boolean cancelled, boolean passThrough, boolean hedgingFrozen, int hedgingAttemptCount) {
            this.buffer = buffer;
            this.drainedSubstreams = (Collection) Preconditions.checkNotNull(drainedSubstreams, "drainedSubstreams");
            this.winningSubstream = winningSubstream;
            this.activeHedges = activeHedges;
            this.cancelled = cancelled;
            this.passThrough = passThrough;
            this.hedgingFrozen = hedgingFrozen;
            this.hedgingAttemptCount = hedgingAttemptCount;
            Preconditions.checkState(!passThrough || buffer == null, "passThrough should imply buffer is null");
            Preconditions.checkState((passThrough && winningSubstream == null) ? false : true, "passThrough should imply winningSubstream != null");
            Preconditions.checkState(!passThrough || (drainedSubstreams.size() == 1 && drainedSubstreams.contains(winningSubstream)) || (drainedSubstreams.size() == 0 && winningSubstream.closed), "passThrough should imply winningSubstream is drained");
            Preconditions.checkState((cancelled && winningSubstream == null) ? false : true, "cancelled should imply committed");
        }

        @CheckReturnValue
        State cancelled() {
            return new State(this.buffer, this.drainedSubstreams, this.activeHedges, this.winningSubstream, true, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        @CheckReturnValue
        State substreamDrained(Substream substream) {
            Collection<Substream> drainedSubstreams;
            List<BufferEntry> buffer;
            Preconditions.checkState(!this.passThrough, "Already passThrough");
            if (substream.closed) {
                drainedSubstreams = this.drainedSubstreams;
            } else if (this.drainedSubstreams.isEmpty()) {
                drainedSubstreams = Collections.singletonList(substream);
            } else {
                Collection<Substream> drainedSubstreams2 = new ArrayList<>(this.drainedSubstreams);
                drainedSubstreams2.add(substream);
                drainedSubstreams = Collections.unmodifiableCollection(drainedSubstreams2);
            }
            boolean passThrough = this.winningSubstream != null;
            List<BufferEntry> buffer2 = this.buffer;
            if (!passThrough) {
                buffer = buffer2;
            } else {
                Preconditions.checkState(this.winningSubstream == substream, "Another RPC attempt has already committed");
                buffer = null;
            }
            return new State(buffer, drainedSubstreams, this.activeHedges, this.winningSubstream, this.cancelled, passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        @CheckReturnValue
        State substreamClosed(Substream substream) {
            substream.closed = true;
            if (this.drainedSubstreams.contains(substream)) {
                Collection<Substream> drainedSubstreams = new ArrayList<>(this.drainedSubstreams);
                drainedSubstreams.remove(substream);
                return new State(this.buffer, Collections.unmodifiableCollection(drainedSubstreams), this.activeHedges, this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
            }
            return this;
        }

        @CheckReturnValue
        State committed(Substream winningSubstream) {
            boolean passThrough;
            List<BufferEntry> buffer;
            Collection<Substream> drainedSubstreams;
            Preconditions.checkState(this.winningSubstream == null, "Already committed");
            List<BufferEntry> buffer2 = this.buffer;
            if (this.drainedSubstreams.contains(winningSubstream)) {
                passThrough = true;
                buffer = null;
                drainedSubstreams = Collections.singleton(winningSubstream);
            } else {
                Collection<Substream> drainedSubstreams2 = Collections.emptyList();
                passThrough = false;
                buffer = buffer2;
                drainedSubstreams = drainedSubstreams2;
            }
            return new State(buffer, drainedSubstreams, this.activeHedges, winningSubstream, this.cancelled, passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        @CheckReturnValue
        State freezeHedging() {
            if (this.hedgingFrozen) {
                return this;
            }
            return new State(this.buffer, this.drainedSubstreams, this.activeHedges, this.winningSubstream, this.cancelled, this.passThrough, true, this.hedgingAttemptCount);
        }

        @CheckReturnValue
        State addActiveHedge(Substream substream) {
            Collection<Substream> activeHedges;
            Preconditions.checkState(!this.hedgingFrozen, "hedging frozen");
            Preconditions.checkState(this.winningSubstream == null, "already committed");
            if (this.activeHedges == null) {
                activeHedges = Collections.singleton(substream);
            } else {
                Collection<Substream> activeHedges2 = new ArrayList<>(this.activeHedges);
                activeHedges2.add(substream);
                activeHedges = Collections.unmodifiableCollection(activeHedges2);
            }
            int hedgingAttemptCount = this.hedgingAttemptCount + 1;
            return new State(this.buffer, this.drainedSubstreams, activeHedges, this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, hedgingAttemptCount);
        }

        @CheckReturnValue
        State removeActiveHedge(Substream substream) {
            Collection<Substream> activeHedges = new ArrayList<>(this.activeHedges);
            activeHedges.remove(substream);
            return new State(this.buffer, this.drainedSubstreams, Collections.unmodifiableCollection(activeHedges), this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }

        @CheckReturnValue
        State replaceActiveHedge(Substream oldOne, Substream newOne) {
            Collection<Substream> activeHedges = new ArrayList<>(this.activeHedges);
            activeHedges.remove(oldOne);
            activeHedges.add(newOne);
            return new State(this.buffer, this.drainedSubstreams, Collections.unmodifiableCollection(activeHedges), this.winningSubstream, this.cancelled, this.passThrough, this.hedgingFrozen, this.hedgingAttemptCount);
        }
    }

    private static final class Substream {
        boolean bufferLimitExceeded;
        boolean closed;
        final int previousAttemptCount;
        ClientStream stream;

        Substream(int previousAttemptCount) {
            this.previousAttemptCount = previousAttemptCount;
        }
    }

    class BufferSizeTracer extends ClientStreamTracer {
        long bufferNeeded;
        private final Substream substream;

        BufferSizeTracer(Substream substream) {
            this.substream = substream;
        }

        @Override // io.grpc.StreamTracer
        public void outboundWireSize(long bytes) {
            if (RetriableStream.this.state.winningSubstream != null) {
                return;
            }
            Runnable postCommitTask = null;
            synchronized (RetriableStream.this.lock) {
                if (RetriableStream.this.state.winningSubstream == null && !this.substream.closed) {
                    this.bufferNeeded += bytes;
                    if (this.bufferNeeded <= RetriableStream.this.perRpcBufferUsed) {
                        return;
                    }
                    if (this.bufferNeeded <= RetriableStream.this.perRpcBufferLimit) {
                        long savedChannelBufferUsed = RetriableStream.this.channelBufferUsed.addAndGet(this.bufferNeeded - RetriableStream.this.perRpcBufferUsed);
                        RetriableStream.this.perRpcBufferUsed = this.bufferNeeded;
                        if (savedChannelBufferUsed > RetriableStream.this.channelBufferLimit) {
                            this.substream.bufferLimitExceeded = true;
                        }
                    } else {
                        this.substream.bufferLimitExceeded = true;
                    }
                    if (this.substream.bufferLimitExceeded) {
                        postCommitTask = RetriableStream.this.commit(this.substream);
                    }
                    if (postCommitTask != null) {
                        postCommitTask.run();
                    }
                }
            }
        }
    }

    static final class ChannelBufferMeter {
        private final AtomicLong bufferUsed = new AtomicLong();

        ChannelBufferMeter() {
        }

        long addAndGet(long newBytesUsed) {
            return this.bufferUsed.addAndGet(newBytesUsed);
        }
    }

    static final class Throttle {
        private static final int THREE_DECIMAL_PLACES_SCALE_UP = 1000;
        final int maxTokens;
        final int threshold;
        final AtomicInteger tokenCount = new AtomicInteger();
        final int tokenRatio;

        Throttle(float maxTokens, float tokenRatio) {
            this.tokenRatio = (int) (tokenRatio * 1000.0f);
            this.maxTokens = (int) (1000.0f * maxTokens);
            this.threshold = this.maxTokens / 2;
            this.tokenCount.set(this.maxTokens);
        }

        boolean isAboveThreshold() {
            return this.tokenCount.get() > this.threshold;
        }

        boolean onQualifiedFailureThenCheckIsAboveThreshold() {
            int decremented;
            boolean updated;
            do {
                int currentCount = this.tokenCount.get();
                if (currentCount == 0) {
                    return false;
                }
                decremented = currentCount - 1000;
                updated = this.tokenCount.compareAndSet(currentCount, Math.max(decremented, 0));
            } while (!updated);
            return decremented > this.threshold;
        }

        void onSuccess() {
            boolean updated;
            do {
                int currentCount = this.tokenCount.get();
                if (currentCount != this.maxTokens) {
                    int incremented = this.tokenRatio + currentCount;
                    updated = this.tokenCount.compareAndSet(currentCount, Math.min(incremented, this.maxTokens));
                } else {
                    return;
                }
            } while (!updated);
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof Throttle)) {
                return false;
            }
            Throttle that = (Throttle) o;
            return this.maxTokens == that.maxTokens && this.tokenRatio == that.tokenRatio;
        }

        public int hashCode() {
            return Objects.hashCode(Integer.valueOf(this.maxTokens), Integer.valueOf(this.tokenRatio));
        }
    }

    private static final class RetryPlan {
        final long backoffNanos;
        final boolean shouldRetry;

        RetryPlan(boolean shouldRetry, long backoffNanos) {
            this.shouldRetry = shouldRetry;
            this.backoffNanos = backoffNanos;
        }
    }

    private static final class HedgingPlan {

        @Nullable
        final Integer hedgingPushbackMillis;
        final boolean isHedgeable;

        public HedgingPlan(boolean isHedgeable, @Nullable Integer hedgingPushbackMillis) {
            this.isHedgeable = isHedgeable;
            this.hedgingPushbackMillis = hedgingPushbackMillis;
        }
    }

    private static final class FutureCanceller {
        boolean cancelled;
        Future<?> future;
        final Object lock;

        FutureCanceller(Object lock) {
            this.lock = lock;
        }

        void setFuture(Future<?> future) {
            synchronized (this.lock) {
                if (!this.cancelled) {
                    this.future = future;
                }
            }
        }

        @CheckForNull
        Future<?> markCancelled() {
            this.cancelled = true;
            return this.future;
        }

        boolean isCancelled() {
            return this.cancelled;
        }
    }
}
