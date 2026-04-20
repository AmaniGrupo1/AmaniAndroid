package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.decoder.CryptoInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public interface MediaCodecAdapter {

    public interface OnFrameRenderedListener {
        void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j, long j2);
    }

    int dequeueInputBufferIndex();

    int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo);

    void detachOutputSurface();

    void flush();

    ByteBuffer getInputBuffer(int i);

    PersistableBundle getMetrics();

    ByteBuffer getOutputBuffer(int i);

    MediaFormat getOutputFormat();

    boolean needsReconfiguration();

    void queueInputBuffer(int i, int i2, int i3, long j, int i4);

    void queueSecureInputBuffer(int i, int i2, CryptoInfo cryptoInfo, long j, int i3);

    void release();

    void releaseOutputBuffer(int i, long j);

    void releaseOutputBuffer(int i, boolean z);

    void setOnFrameRenderedListener(OnFrameRenderedListener onFrameRenderedListener, Handler handler);

    void setOutputSurface(Surface surface);

    void setParameters(Bundle bundle);

    void setVideoScalingMode(int i);

    void subscribeToVendorParameters(List<String> list);

    void unsubscribeFromVendorParameters(List<String> list);

    public static final class Configuration {
        public final MediaCodecInfo codecInfo;
        public final MediaCrypto crypto;
        public final Format format;
        public final LoudnessCodecController loudnessCodecController;
        public final MediaFormat mediaFormat;
        public final Surface surface;

        public static Configuration createForAudioDecoding(MediaCodecInfo codecInfo, MediaFormat mediaFormat, Format format, MediaCrypto crypto, LoudnessCodecController loudnessCodecController) {
            return new Configuration(codecInfo, mediaFormat, format, null, crypto, loudnessCodecController);
        }

        public static Configuration createForVideoDecoding(MediaCodecInfo codecInfo, MediaFormat mediaFormat, Format format, Surface surface, MediaCrypto crypto) {
            return new Configuration(codecInfo, mediaFormat, format, surface, crypto, null);
        }

        private Configuration(MediaCodecInfo codecInfo, MediaFormat mediaFormat, Format format, Surface surface, MediaCrypto crypto, LoudnessCodecController loudnessCodecController) {
            this.codecInfo = codecInfo;
            this.mediaFormat = mediaFormat;
            this.format = format;
            this.surface = surface;
            this.crypto = crypto;
            this.loudnessCodecController = loudnessCodecController;
        }
    }

    public interface Factory {

        @Deprecated
        public static final Factory DEFAULT = new DefaultMediaCodecAdapterFactory();

        MediaCodecAdapter createAdapter(Configuration configuration) throws IOException;

        static Factory getDefault(Context context) {
            return new DefaultMediaCodecAdapterFactory(context);
        }
    }

    public interface OnBufferAvailableListener {
        default void onInputBufferAvailable() {
        }

        default void onOutputBufferAvailable() {
        }
    }

    default void useInputBuffer(Runnable runnable) {
        runnable.run();
    }

    default boolean registerOnBufferAvailableListener(OnBufferAvailableListener listener) {
        return false;
    }
}
