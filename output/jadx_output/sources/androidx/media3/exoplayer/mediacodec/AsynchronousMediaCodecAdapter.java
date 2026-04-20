package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PersistableBundle;
import android.view.Surface;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import com.google.common.base.Supplier;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class AsynchronousMediaCodecAdapter implements MediaCodecAdapter {
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_SHUT_DOWN = 2;
    private final AsynchronousMediaCodecCallback asynchronousMediaCodecCallback;
    private final MediaCodecBufferEnqueuer bufferEnqueuer;
    private final MediaCodec codec;
    private boolean codecReleased;
    private final LoudnessCodecController loudnessCodecController;
    private int state;

    public static final class Factory implements MediaCodecAdapter.Factory {
        private final Supplier<HandlerThread> callbackThreadSupplier;
        private boolean enableSynchronousBufferQueueingWithAsyncCryptoFlag;
        private final Supplier<HandlerThread> queueingThreadSupplier;

        public Factory(final int trackType) {
            this(new Supplier() { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return AsynchronousMediaCodecAdapter.Factory.lambda$new$0(trackType);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return AsynchronousMediaCodecAdapter.Factory.lambda$new$1(trackType);
                }
            });
        }

        static /* synthetic */ HandlerThread lambda$new$0(int trackType) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.createCallbackThreadLabel(trackType));
        }

        static /* synthetic */ HandlerThread lambda$new$1(int trackType) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.createQueueingThreadLabel(trackType));
        }

        public Factory(Supplier<HandlerThread> callbackThreadSupplier, Supplier<HandlerThread> queueingThreadSupplier) {
            this.callbackThreadSupplier = callbackThreadSupplier;
            this.queueingThreadSupplier = queueingThreadSupplier;
            this.enableSynchronousBufferQueueingWithAsyncCryptoFlag = true;
        }

        public void experimentalSetAsyncCryptoFlagEnabled(boolean enableAsyncCryptoFlag) {
            this.enableSynchronousBufferQueueingWithAsyncCryptoFlag = enableAsyncCryptoFlag;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        public AsynchronousMediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws Exception {
            MediaCodec codec;
            int flags;
            MediaCodecBufferEnqueuer bufferEnqueuer;
            String codecName = configuration.codecInfo.name;
            AsynchronousMediaCodecAdapter codecAdapter = null;
            MediaCodec codec2 = null;
            try {
                TraceUtil.beginSection("createCodec:" + codecName);
                codec = MediaCodec.createByCodecName(codecName);
                flags = 0;
            } catch (Exception e) {
                e = e;
            }
            try {
                if (this.enableSynchronousBufferQueueingWithAsyncCryptoFlag && useSynchronousBufferQueueingWithAsyncCryptoFlag()) {
                    MediaCodecBufferEnqueuer bufferEnqueuer2 = new SynchronousMediaCodecBufferEnqueuer(codec);
                    flags = 0 | 4;
                    bufferEnqueuer = bufferEnqueuer2;
                } else {
                    bufferEnqueuer = new AsynchronousMediaCodecBufferEnqueuer(codec, this.queueingThreadSupplier.get());
                }
                codecAdapter = new AsynchronousMediaCodecAdapter(codec, this.callbackThreadSupplier.get(), bufferEnqueuer, configuration.loudnessCodecController);
                TraceUtil.endSection();
                if (configuration.surface == null && configuration.codecInfo.detachedSurfaceSupported && Build.VERSION.SDK_INT >= 35) {
                    flags |= 8;
                }
                codecAdapter.initialize(configuration.mediaFormat, configuration.surface, configuration.crypto, flags);
                return codecAdapter;
            } catch (Exception e2) {
                e = e2;
                codec2 = codec;
                if (codecAdapter != null) {
                    codecAdapter.release();
                } else if (codec2 != null) {
                    codec2.release();
                }
                throw e;
            }
        }

        private static boolean useSynchronousBufferQueueingWithAsyncCryptoFlag() {
            return Build.VERSION.SDK_INT >= 36;
        }
    }

    private AsynchronousMediaCodecAdapter(MediaCodec codec, HandlerThread callbackThread, MediaCodecBufferEnqueuer bufferEnqueuer, LoudnessCodecController loudnessCodecController) {
        this.codec = codec;
        this.asynchronousMediaCodecCallback = new AsynchronousMediaCodecCallback(callbackThread);
        this.bufferEnqueuer = bufferEnqueuer;
        this.loudnessCodecController = loudnessCodecController;
        this.state = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize(MediaFormat mediaFormat, Surface surface, MediaCrypto crypto, int flags) {
        this.asynchronousMediaCodecCallback.initialize(this.codec);
        TraceUtil.beginSection("configureCodec");
        this.codec.configure(mediaFormat, surface, crypto, flags);
        TraceUtil.endSection();
        this.bufferEnqueuer.start();
        TraceUtil.beginSection("startCodec");
        this.codec.start();
        TraceUtil.endSection();
        if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
            this.loudnessCodecController.addMediaCodec(this.codec);
        }
        this.state = 1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public boolean needsReconfiguration() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void queueInputBuffer(int index, int offset, int size, long presentationTimeUs, int flags) {
        this.bufferEnqueuer.queueInputBuffer(index, offset, size, presentationTimeUs, flags);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void queueSecureInputBuffer(int index, int offset, CryptoInfo info, long presentationTimeUs, int flags) {
        this.bufferEnqueuer.queueSecureInputBuffer(index, offset, info, presentationTimeUs, flags);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int index, boolean render) {
        this.codec.releaseOutputBuffer(index, render);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int index, long renderTimeStampNs) {
        this.codec.releaseOutputBuffer(index, renderTimeStampNs);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int dequeueInputBufferIndex() {
        this.bufferEnqueuer.maybeThrowException();
        return this.asynchronousMediaCodecCallback.dequeueInputBufferIndex();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo) {
        this.bufferEnqueuer.maybeThrowException();
        return this.asynchronousMediaCodecCallback.dequeueOutputBufferIndex(bufferInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public MediaFormat getOutputFormat() {
        return this.asynchronousMediaCodecCallback.getOutputFormat();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public ByteBuffer getInputBuffer(int index) {
        return this.codec.getInputBuffer(index);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void useInputBuffer(final Runnable runnable) {
        this.asynchronousMediaCodecCallback.useInputBuffer(new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7938x33de379c(runnable);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$useInputBuffer$0$androidx-media3-exoplayer-mediacodec-AsynchronousMediaCodecAdapter, reason: not valid java name */
    /* synthetic */ void m7938x33de379c(Runnable runnable) {
        this.bufferEnqueuer.maybeThrowException();
        this.asynchronousMediaCodecCallback.useInputBuffer(runnable);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public ByteBuffer getOutputBuffer(int index) {
        return this.codec.getOutputBuffer(index);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void flush() {
        this.bufferEnqueuer.flush();
        this.codec.flush();
        this.asynchronousMediaCodecCallback.flush();
        this.codec.start();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void release() {
        try {
            if (this.state == 1) {
                this.bufferEnqueuer.shutdown();
                this.asynchronousMediaCodecCallback.shutdown();
            }
            this.state = 2;
            if (this.codecReleased) {
                return;
            }
            try {
                if (Build.VERSION.SDK_INT >= 30 && Build.VERSION.SDK_INT < 33) {
                    this.codec.stop();
                }
                if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
                    this.loudnessCodecController.removeMediaCodec(this.codec);
                }
                this.codec.release();
                this.codecReleased = true;
            } finally {
            }
        } catch (Throwable th) {
            if (!this.codecReleased) {
                try {
                    if (Build.VERSION.SDK_INT >= 30 && Build.VERSION.SDK_INT < 33) {
                        this.codec.stop();
                    }
                } finally {
                    if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
                        this.loudnessCodecController.removeMediaCodec(this.codec);
                    }
                    this.codec.release();
                    this.codecReleased = true;
                }
            }
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setOnFrameRenderedListener(final MediaCodecAdapter.OnFrameRenderedListener listener, Handler handler) {
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.f$0.m7937xe6985aa9(listener, mediaCodec, j, j2);
            }
        }, handler);
    }

    /* JADX INFO: renamed from: lambda$setOnFrameRenderedListener$1$androidx-media3-exoplayer-mediacodec-AsynchronousMediaCodecAdapter, reason: not valid java name */
    /* synthetic */ void m7937xe6985aa9(MediaCodecAdapter.OnFrameRenderedListener listener, MediaCodec codec, long presentationTimeUs, long nanoTime) {
        listener.onFrameRendered(this, presentationTimeUs, nanoTime);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public boolean registerOnBufferAvailableListener(MediaCodecAdapter.OnBufferAvailableListener listener) {
        this.asynchronousMediaCodecCallback.setOnBufferAvailableListener(listener);
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setOutputSurface(Surface surface) {
        this.codec.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void detachOutputSurface() {
        this.codec.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setParameters(Bundle params) {
        this.bufferEnqueuer.setParameters(params);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int scalingMode) {
        this.codec.setVideoScalingMode(scalingMode);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public PersistableBundle getMetrics() {
        return this.codec.getMetrics();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void subscribeToVendorParameters(List<String> names) {
        this.codec.subscribeToVendorParameters(names);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void unsubscribeFromVendorParameters(List<String> names) {
        this.codec.unsubscribeFromVendorParameters(names);
    }

    void onError(MediaCodec.CodecException error) {
        this.asynchronousMediaCodecCallback.onError(this.codec, error);
    }

    void onOutputFormatChanged(MediaFormat format) {
        this.asynchronousMediaCodecCallback.onOutputFormatChanged(this.codec, format);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String createCallbackThreadLabel(int trackType) {
        return createThreadLabel(trackType, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String createQueueingThreadLabel(int trackType) {
        return createThreadLabel(trackType, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String createThreadLabel(int trackType, String prefix) {
        StringBuilder labelBuilder = new StringBuilder(prefix);
        if (trackType == 1) {
            labelBuilder.append("Audio");
        } else if (trackType == 2) {
            labelBuilder.append("Video");
        } else {
            labelBuilder.append("Unknown(").append(trackType).append(")");
        }
        return labelBuilder.toString();
    }
}
