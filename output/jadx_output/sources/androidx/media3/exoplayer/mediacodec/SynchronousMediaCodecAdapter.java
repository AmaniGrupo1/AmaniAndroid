package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.view.Surface;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class SynchronousMediaCodecAdapter implements MediaCodecAdapter {
    private final MediaCodec codec;
    private final LoudnessCodecController loudnessCodecController;

    public static class Factory implements MediaCodecAdapter.Factory {
        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws Exception {
            MediaCodec codec = null;
            try {
                codec = createCodec(configuration);
                TraceUtil.beginSection("configureCodec");
                int flags = 0;
                if (configuration.surface == null && configuration.codecInfo.detachedSurfaceSupported && Build.VERSION.SDK_INT >= 35) {
                    flags = 0 | 8;
                }
                codec.configure(configuration.mediaFormat, configuration.surface, configuration.crypto, flags);
                TraceUtil.endSection();
                TraceUtil.beginSection("startCodec");
                codec.start();
                TraceUtil.endSection();
                return new SynchronousMediaCodecAdapter(codec, configuration.loudnessCodecController);
            } catch (IOException | RuntimeException e) {
                if (codec != null) {
                    codec.release();
                }
                throw e;
            }
        }

        protected MediaCodec createCodec(MediaCodecAdapter.Configuration configuration) throws IOException {
            Preconditions.checkNotNull(configuration.codecInfo);
            String codecName = configuration.codecInfo.name;
            TraceUtil.beginSection("createCodec:" + codecName);
            MediaCodec mediaCodec = MediaCodec.createByCodecName(codecName);
            TraceUtil.endSection();
            return mediaCodec;
        }
    }

    private SynchronousMediaCodecAdapter(MediaCodec mediaCodec, LoudnessCodecController loudnessCodecController) {
        this.codec = mediaCodec;
        this.loudnessCodecController = loudnessCodecController;
        if (Build.VERSION.SDK_INT >= 35 && loudnessCodecController != null) {
            loudnessCodecController.addMediaCodec(this.codec);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public boolean needsReconfiguration() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int dequeueInputBufferIndex() {
        return this.codec.dequeueInputBuffer(0L);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo) {
        int index;
        do {
            index = this.codec.dequeueOutputBuffer(bufferInfo, 0L);
        } while (index == -3);
        return index;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public MediaFormat getOutputFormat() {
        return this.codec.getOutputFormat();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public ByteBuffer getInputBuffer(int index) {
        return this.codec.getInputBuffer(index);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public ByteBuffer getOutputBuffer(int index) {
        return this.codec.getOutputBuffer(index);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void queueInputBuffer(int index, int offset, int size, long presentationTimeUs, int flags) {
        this.codec.queueInputBuffer(index, offset, size, presentationTimeUs, flags);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void queueSecureInputBuffer(int index, int offset, CryptoInfo info, long presentationTimeUs, int flags) {
        this.codec.queueSecureInputBuffer(index, offset, info.getFrameworkCryptoInfo(), presentationTimeUs, flags);
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
    public void flush() {
        this.codec.flush();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void release() {
        try {
            if (Build.VERSION.SDK_INT >= 30 && Build.VERSION.SDK_INT < 33) {
                this.codec.stop();
            }
        } finally {
            if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
                this.loudnessCodecController.removeMediaCodec(this.codec);
            }
            this.codec.release();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setOnFrameRenderedListener(final MediaCodecAdapter.OnFrameRenderedListener listener, Handler handler) {
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.f$0.m7941xe3d0a01f(listener, mediaCodec, j, j2);
            }
        }, handler);
    }

    /* JADX INFO: renamed from: lambda$setOnFrameRenderedListener$0$androidx-media3-exoplayer-mediacodec-SynchronousMediaCodecAdapter, reason: not valid java name */
    /* synthetic */ void m7941xe3d0a01f(MediaCodecAdapter.OnFrameRenderedListener listener, MediaCodec codec, long presentationTimeUs, long nanoTime) {
        listener.onFrameRendered(this, presentationTimeUs, nanoTime);
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
        this.codec.setParameters(params);
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
}
