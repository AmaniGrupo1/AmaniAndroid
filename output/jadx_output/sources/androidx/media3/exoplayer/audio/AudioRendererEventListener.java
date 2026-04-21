package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioSink;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public interface AudioRendererEventListener {
    default void onAudioEnabled(DecoderCounters counters) {
    }

    default void onAudioDecoderInitialized(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
    }

    default void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void onAudioPositionAdvancing(long playoutStartSystemTimeMs) {
    }

    default void onAudioUnderrun(int bufferSize, long bufferSizeMs, long elapsedSinceLastFeedMs) {
    }

    default void onAudioDecoderReleased(String decoderName) {
    }

    default void onAudioDisabled(DecoderCounters counters) {
    }

    default void onSkipSilenceEnabledChanged(boolean skipSilenceEnabled) {
    }

    default void onAudioCodecError(Exception audioCodecError) {
    }

    default void onAudioSinkError(Exception audioSinkError) {
    }

    default void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig) {
    }

    default void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig) {
    }

    default void onAudioSessionIdChanged(int audioSessionId) {
    }

    default void onAudioCodecParametersChanged(CodecParameters codecParameters) {
    }

    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler, AudioRendererEventListener listener) {
            this.handler = listener != null ? (Handler) Preconditions.checkNotNull(handler) : null;
            this.listener = listener;
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7912x55ee20a7(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$enabled$0$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7912x55ee20a7(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        public void decoderInitialized(final String decoderName, final long initializedTimestampMs, final long initializationDurationMs) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7909x4e7a341d(decoderName, initializedTimestampMs, initializationDurationMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$decoderInitialized$1$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7909x4e7a341d(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderInitialized(decoderName, initializedTimestampMs, initializationDurationMs);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7913x1ee33b39(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$inputFormatChanged$2$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7913x1ee33b39(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void positionAdvancing(final long playoutStartSystemTimeMs) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7914xa4e1944f(playoutStartSystemTimeMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$positionAdvancing$3$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7914xa4e1944f(long playoutStartSystemTimeMs) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioPositionAdvancing(playoutStartSystemTimeMs);
        }

        public void underrun(final int bufferSize, final long bufferSizeMs, final long elapsedSinceLastFeedMs) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7916x8e019017(bufferSize, bufferSizeMs, elapsedSinceLastFeedMs);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$underrun$4$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7916x8e019017(int bufferSize, long bufferSizeMs, long elapsedSinceLastFeedMs) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioUnderrun(bufferSize, bufferSizeMs, elapsedSinceLastFeedMs);
        }

        public void decoderReleased(final String decoderName) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7910x102cf822(decoderName);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$decoderReleased$5$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7910x102cf822(String decoderName) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderReleased(decoderName);
        }

        public void disabled(final DecoderCounters counters) {
            counters.ensureUpdated();
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7911xe116cfac(counters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$disabled$6$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7911xe116cfac(DecoderCounters counters) {
            counters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDisabled(counters);
        }

        public void skipSilenceEnabledChanged(final boolean skipSilenceEnabled) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7915x60b531cc(skipSilenceEnabled);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$skipSilenceEnabledChanged$7$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7915x60b531cc(boolean skipSilenceEnabled) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(skipSilenceEnabled);
        }

        public void audioSinkError(final Exception audioSinkError) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7906xc89a3787(audioSinkError);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioSinkError$8$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7906xc89a3787(Exception audioSinkError) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSinkError(audioSinkError);
        }

        public void audioCodecError(final Exception audioCodecError) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7903xdf751697(audioCodecError);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioCodecError$9$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7903xdf751697(Exception audioCodecError) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecError(audioCodecError);
        }

        public void audioTrackInitialized(final AudioSink.AudioTrackConfig audioTrackConfig) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7907xee74b056(audioTrackConfig);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioTrackInitialized$10$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7907xee74b056(AudioSink.AudioTrackConfig audioTrackConfig) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioTrackInitialized(audioTrackConfig);
        }

        public void audioTrackReleased(final AudioSink.AudioTrackConfig audioTrackConfig) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7908x12b02702(audioTrackConfig);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioTrackReleased$11$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7908x12b02702(AudioSink.AudioTrackConfig audioTrackConfig) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioTrackReleased(audioTrackConfig);
        }

        public void audioSessionIdChanged(final int audioSessionId) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7905x1e3a42e(audioSessionId);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioSessionIdChanged$12$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7905x1e3a42e(int audioSessionId) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSessionIdChanged(audioSessionId);
        }

        public void audioCodecParametersChanged(final CodecParameters codecParameters) {
            if (this.handler != null) {
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7904xa7a89dde(codecParameters);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$audioCodecParametersChanged$13$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        /* synthetic */ void m7904xa7a89dde(CodecParameters codecParameters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecParametersChanged(codecParameters);
        }
    }
}
