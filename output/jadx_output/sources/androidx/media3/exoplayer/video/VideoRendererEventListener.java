package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public interface VideoRendererEventListener {
    default void onVideoEnabled(DecoderCounters counters) {
    }

    default void onVideoDecoderInitialized(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
    }

    default void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void onDroppedFrames(int count, long elapsedMs) {
    }

    default void onVideoFrameProcessingOffset(long totalProcessingOffsetUs, int frameCount) {
    }

    default void onVideoSizeChanged(VideoSize videoSize) {
    }

    default void onRenderedFirstFrame(Object output, long renderTimeMs) {
    }

    default void onVideoDecoderReleased(String decoderName) {
    }

    default void onVideoDisabled(DecoderCounters counters) {
    }

    default void onVideoCodecError(Exception videoCodecError) {
    }

    default void onVideoCodecParametersChanged(CodecParameters codecParameters) {
    }

    public static final class EventDispatcher {
        private final Handler handler;
        private final VideoRendererEventListener listener;

        public EventDispatcher(Handler handler, VideoRendererEventListener listener) {
            this.handler = listener != null ? (Handler) Preconditions.checkNotNull(handler) : null;
            this.listener = listener;
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8016x7180d5d(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$enabled$0$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8016x7180d5d(DecoderCounters decoderCounters) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoEnabled(decoderCounters);
        }

        public void decoderInitialized(final String decoderName, final long initializedTimestampMs, final long initializationDurationMs) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8012xffa420d3(decoderName, initializedTimestampMs, initializationDurationMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$decoderInitialized$1$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8012xffa420d3(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderInitialized(decoderName, initializedTimestampMs, initializationDurationMs);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8017xd00d27ef(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$inputFormatChanged$2$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8017xd00d27ef(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void droppedFrames(final int droppedFrameCount, final long elapsedMs) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8015x9a4cf695(droppedFrameCount, elapsedMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$droppedFrames$3$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8015x9a4cf695(int droppedFrameCount, long elapsedMs) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onDroppedFrames(droppedFrameCount, elapsedMs);
        }

        public void reportVideoFrameProcessingOffset(final long totalProcessingOffsetUs, final int frameCount) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8019xc5ffb974(totalProcessingOffsetUs, frameCount);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$reportVideoFrameProcessingOffset$4$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8019xc5ffb974(long totalProcessingOffsetUs, int frameCount) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoFrameProcessingOffset(totalProcessingOffsetUs, frameCount);
        }

        public void videoSizeChanged(final VideoSize videoSize) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8022xad971007(videoSize);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$videoSizeChanged$5$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8022xad971007(VideoSize videoSize) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoSizeChanged(videoSize);
        }

        public void renderedFirstFrame(final Object output) {
            if (this.handler != null) {
                final long renderTimeMs = SystemClock.elapsedRealtime();
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8018xb1e96bac(output, renderTimeMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$renderedFirstFrame$6$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8018xb1e96bac(Object output, long renderTimeMs) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onRenderedFirstFrame(output, renderTimeMs);
        }

        public void decoderReleased(final String decoderName) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8013x45853f96(decoderName);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$decoderReleased$7$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8013x45853f96(String decoderName) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderReleased(decoderName);
        }

        public void disabled(final DecoderCounters counters) {
            counters.ensureUpdated();
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8014x166f1720(counters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$disabled$8$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8014x166f1720(DecoderCounters counters) {
            counters.ensureUpdated();
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDisabled(counters);
        }

        public void videoCodecError(final Exception videoCodecError) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8020x90ab4908(videoCodecError);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$videoCodecError$9$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8020x90ab4908(Exception videoCodecError) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoCodecError(videoCodecError);
        }

        public void videoCodecParametersChanged(final CodecParameters codecParameters) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8021xca5b249c(codecParameters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$videoCodecParametersChanged$10$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m8021xca5b249c(CodecParameters codecParameters) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoCodecParametersChanged(codecParameters);
        }
    }
}
