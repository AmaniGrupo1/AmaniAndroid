package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOffloadSupport;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutputProvider;
import androidx.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.MpegAudioUtil;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class DefaultAudioSink implements AudioSink {
    private static final int AUDIO_OUTPUT_RETRY_BUFFER_SIZE_THRESHOLD = 1000000;
    private static final int AUDIO_OUTPUT_VOLUME_RAMP_TIME_MS = 20;
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    private static final boolean DEFAULT_SKIP_SILENCE = false;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    private static final int MINIMUM_REPORT_SKIPPED_SILENCE_DURATION_US = 300000;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    public static final int OUTPUT_MODE_OFFLOAD = 1;
    public static final int OUTPUT_MODE_PASSTHROUGH = 2;
    public static final int OUTPUT_MODE_PCM = 0;
    private static final int REPORT_SKIPPED_SILENCE_DELAY_MS = 100;
    private static final String TAG = "DefaultAudioSink";
    private static final AtomicInteger pendingReleaseCount = new AtomicInteger();
    private long accumulatedSkippedSilenceDurationUs;
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private final ExoPlayer.AudioOffloadListener audioOffloadListener;
    private AudioOutput audioOutput;
    private AudioOutputListener audioOutputListener;
    private AudioOutputProvider audioOutputProvider;
    private AudioOutputProvider.Listener audioOutputProviderListener;
    private AudioProcessingPipeline audioProcessingPipeline;
    private final androidx.media3.common.audio.AudioProcessorChain audioProcessorChain;
    private int audioSessionId;
    private AuxEffectInfo auxEffectInfo;
    private final ImmutableList<AudioProcessor> availableAudioProcessors;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;
    private final Context context;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private boolean handledOffloadOnPresentationEnded;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private int offloadMode;
    private ByteBuffer outputBuffer;
    private boolean pendingAudioSessionIdChangeConfirmation;
    private Configuration pendingConfiguration;
    private PlaybackParameters playbackParameters;
    private PlayerId playerId;
    private boolean playing;
    private final boolean preferAudioOutputPlaybackParameters;
    private AudioDeviceInfo preferredDevice;
    private Handler reportSkippedSilenceHandler;
    private boolean skipSilenceEnabled;
    private long skippedOutputFrameCountAtLastPosition;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioOutput;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final ToFloatPcmAudioProcessor toFloatPcmAudioProcessor;
    private final ToInt16PcmAudioProcessor toInt16PcmAudioProcessor;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private int virtualDeviceId;
    private float volume;
    private final PendingExceptionHolder<AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface AudioOffloadSupportProvider {
        AudioOffloadSupport getAudioOffloadSupport(Format format, AudioAttributes audioAttributes);
    }

    @Deprecated
    public interface AudioProcessorChain extends androidx.media3.common.audio.AudioProcessorChain {
    }

    public interface AudioTrackBufferSizeProvider {
        public static final AudioTrackBufferSizeProvider DEFAULT = new DefaultAudioTrackBufferSizeProvider.Builder().build();

        int getBufferSizeInBytes(int i, int i2, int i3, int i4, int i5, int i6, double d);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputMode {
    }

    @Deprecated
    public interface AudioTrackProvider {
        public static final AudioTrackProvider DEFAULT = new DefaultAudioTrackProvider();

        AudioTrack getAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i, Context context);

        default int getAudioTrackChannelConfig(int channelCount) {
            return Util.getAudioTrackChannelConfig(channelCount);
        }
    }

    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        private final AudioProcessor[] audioProcessors;
        private final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        private final SonicAudioProcessor sonicAudioProcessor;

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessors) {
            this(audioProcessors, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessors, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, SonicAudioProcessor sonicAudioProcessor) {
            this.audioProcessors = new AudioProcessor[audioProcessors.length + 2];
            System.arraycopy(audioProcessors, 0, this.audioProcessors, 0, audioProcessors.length);
            this.silenceSkippingAudioProcessor = silenceSkippingAudioProcessor;
            this.sonicAudioProcessor = sonicAudioProcessor;
            this.audioProcessors[audioProcessors.length] = silenceSkippingAudioProcessor;
            this.audioProcessors[audioProcessors.length + 1] = sonicAudioProcessor;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters) {
            this.sonicAudioProcessor.setSpeed(playbackParameters.speed);
            this.sonicAudioProcessor.setPitch(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean skipSilenceEnabled) {
            this.silenceSkippingAudioProcessor.setEnabled(skipSilenceEnabled);
            return skipSilenceEnabled;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getMediaDuration(long playoutDuration) {
            if (this.sonicAudioProcessor.isActive()) {
                return this.sonicAudioProcessor.getMediaDuration(playoutDuration);
            }
            return playoutDuration;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }
    }

    public static final class Builder {
        private AudioCapabilities audioCapabilities;
        private ExoPlayer.AudioOffloadListener audioOffloadListener;
        private AudioOffloadSupportProvider audioOffloadSupportProvider;
        private AudioOutputProvider audioOutputProvider;
        private androidx.media3.common.audio.AudioProcessorChain audioProcessorChain;
        private AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
        private AudioTrackProvider audioTrackProvider;
        private boolean buildCalled;
        private final Context context;
        private boolean enableAudioOutputPlaybackParameters;
        private boolean enableFloatOutput;

        @Deprecated
        public Builder() {
            this.context = null;
            this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
        }

        public Builder(Context context) {
            this.context = context;
            this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
        }

        @Deprecated
        public Builder setAudioCapabilities(AudioCapabilities audioCapabilities) {
            Preconditions.checkNotNull(audioCapabilities);
            this.audioCapabilities = audioCapabilities;
            return this;
        }

        public Builder setAudioProcessors(AudioProcessor[] audioProcessors) {
            Preconditions.checkNotNull(audioProcessors);
            return setAudioProcessorChain(new DefaultAudioProcessorChain(audioProcessors));
        }

        public Builder setAudioProcessorChain(androidx.media3.common.audio.AudioProcessorChain audioProcessorChain) {
            Preconditions.checkNotNull(audioProcessorChain);
            this.audioProcessorChain = audioProcessorChain;
            return this;
        }

        public Builder setEnableFloatOutput(boolean enableFloatOutput) {
            this.enableFloatOutput = enableFloatOutput;
            return this;
        }

        @Deprecated
        public Builder setEnableAudioTrackPlaybackParams(boolean enableAudioTrackPlaybackParams) {
            return setEnableAudioOutputPlaybackParameters(enableAudioTrackPlaybackParams);
        }

        public Builder setEnableAudioOutputPlaybackParameters(boolean enableAudioOutputPlaybackParameters) {
            this.enableAudioOutputPlaybackParameters = enableAudioOutputPlaybackParameters;
            return this;
        }

        @Deprecated
        public Builder setAudioTrackBufferSizeProvider(AudioTrackBufferSizeProvider audioTrackBufferSizeProvider) {
            this.audioTrackBufferSizeProvider = audioTrackBufferSizeProvider;
            return this;
        }

        @Deprecated
        public Builder setAudioOffloadSupportProvider(AudioOffloadSupportProvider audioOffloadSupportProvider) {
            this.audioOffloadSupportProvider = audioOffloadSupportProvider;
            return this;
        }

        public Builder setExperimentalAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
            this.audioOffloadListener = audioOffloadListener;
            return this;
        }

        @Deprecated
        public Builder setAudioTrackProvider(AudioTrackProvider audioTrackProvider) {
            this.audioTrackProvider = audioTrackProvider;
            return this;
        }

        public Builder setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
            Preconditions.checkState(this.context != null, "Cannot set AudioOutputProvider without a Context");
            this.audioOutputProvider = audioOutputProvider;
            return this;
        }

        public DefaultAudioSink build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            AudioOutputProvider audioOutputProvider = this.audioOutputProvider;
            AudioOffloadSupportProvider audioOffloadSupportProvider = this.audioOffloadSupportProvider;
            if (audioOutputProvider == null) {
                if (audioOffloadSupportProvider == null) {
                    this.audioOffloadSupportProvider = new DefaultAudioOffloadSupportProvider(this.context);
                }
                if (this.audioTrackBufferSizeProvider == null) {
                    this.audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;
                }
                this.audioOutputProvider = new AudioTrackAudioOutputProvider.Builder(this.context).setAudioCapabilities(this.context != null ? null : this.audioCapabilities).setAudioOffloadSupportProvider(this.audioOffloadSupportProvider).setAudioTrackBufferSizeProvider(this.audioTrackBufferSizeProvider).setAudioTrackProvider(this.audioTrackProvider).build();
            } else {
                Preconditions.checkState(audioOffloadSupportProvider == null);
                Preconditions.checkState(this.audioTrackBufferSizeProvider == null);
                Preconditions.checkState(this.audioTrackProvider == null);
            }
            return new DefaultAudioSink(this);
        }
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    private DefaultAudioSink(Builder builder) {
        int deviceIdFromContext;
        this.context = builder.context == null ? null : builder.context.getApplicationContext();
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioProcessorChain = builder.audioProcessorChain;
        this.enableFloatOutput = builder.enableFloatOutput;
        this.preferAudioOutputPlaybackParameters = builder.enableAudioOutputPlaybackParameters;
        this.offloadMode = 0;
        this.audioOutputProvider = builder.audioOutputProvider;
        this.channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.trimmingAudioProcessor = new TrimmingAudioProcessor();
        this.toInt16PcmAudioProcessor = new ToInt16PcmAudioProcessor();
        this.toFloatPcmAudioProcessor = new ToFloatPcmAudioProcessor();
        this.availableAudioProcessors = ImmutableList.of((ChannelMappingAudioProcessor) this.trimmingAudioProcessor, this.channelMappingAudioProcessor);
        this.volume = 1.0f;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, 0.0f);
        this.mediaPositionParameters = new MediaPositionParameters(PlaybackParameters.DEFAULT, 0L, 0L);
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.skipSilenceEnabled = false;
        this.mediaPositionParametersCheckpoints = new ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new PendingExceptionHolder<>();
        this.writeExceptionPendingExceptionHolder = new PendingExceptionHolder<>();
        this.audioOffloadListener = builder.audioOffloadListener;
        if (Build.VERSION.SDK_INT >= 34 && builder.context != null) {
            deviceIdFromContext = getDeviceIdFromContext(builder.context);
        } else {
            deviceIdFromContext = -1;
        }
        this.virtualDeviceId = deviceIdFromContext;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setListener(AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPlayerId(PlayerId playerId) {
        this.playerId = playerId;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setClock(Clock clock) {
        this.audioOutputProvider.setClock(clock);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) != 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int getFormatSupport(Format format) {
        boolean transcodingViaAudioProcessors = false;
        if (Util.isEncodingLinearPcm(format.pcmEncoding)) {
            boolean usesFloatPcm = shouldUseFloatOutput(format.pcmEncoding);
            if (usesFloatPcm && format.pcmEncoding != 4) {
                format = format.buildUpon().setPcmEncoding(4).build();
                transcodingViaAudioProcessors = true;
            }
            if (!usesFloatPcm && format.pcmEncoding != 2) {
                format = format.buildUpon().setPcmEncoding(2).build();
                transcodingViaAudioProcessors = true;
            }
        }
        switch (this.audioOutputProvider.getFormatSupport(getFormatConfig(format)).supportLevel) {
            case 1:
                return 1;
            case 2:
                return transcodingViaAudioProcessors ? 1 : 2;
            default:
                return 0;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioOffloadSupport getFormatOffloadSupport(Format format) {
        if (this.offloadDisabledUntilNextConfiguration) {
            return AudioOffloadSupport.DEFAULT_UNSUPPORTED;
        }
        AudioOutputProvider.FormatSupport formatSupport = this.audioOutputProvider.getFormatSupport(getFormatConfig(format));
        return new AudioOffloadSupport.Builder().setIsFormatSupported(formatSupport.isFormatSupportedForOffload).setIsGaplessSupported(formatSupport.isGaplessSupportedForOffload).setIsSpeedChangeSupported(formatSupport.isSpeedChangeSupportedForOffload).build();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean sourceEnded) {
        if (!isAudioOutputInitialized() || this.startMediaTimeUsNeedsInit) {
            return Long.MIN_VALUE;
        }
        long positionUs = this.audioOutput.getPositionUs();
        return applySkipping(applyMediaPositionParameters(Math.min(positionUs, this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void configure(Format inputFormat, int specifiedBufferSize, int[] outputChannels) throws AudioSink.ConfigurationException {
        AudioProcessingPipeline audioProcessingPipeline;
        Format afterProcessingFormat;
        int outputPcmFrameSize;
        int inputPcmFrameSize;
        AudioProcessingPipeline audioProcessingPipeline2;
        maybeAddAudioOutputProviderListener();
        if (MimeTypes.AUDIO_RAW.equals(inputFormat.sampleMimeType)) {
            Preconditions.checkArgument(Util.isEncodingLinearPcm(inputFormat.pcmEncoding));
            int inputPcmFrameSize2 = Util.getPcmFrameSize(inputFormat.pcmEncoding, inputFormat.channelCount);
            ImmutableList.Builder<AudioProcessor> pipelineProcessors = new ImmutableList.Builder<>();
            pipelineProcessors.addAll(this.availableAudioProcessors);
            if (shouldUseFloatOutput(inputFormat.pcmEncoding)) {
                pipelineProcessors.add(this.toFloatPcmAudioProcessor);
            } else {
                pipelineProcessors.add(this.toInt16PcmAudioProcessor);
                pipelineProcessors.add(this.audioProcessorChain.getAudioProcessors());
            }
            AudioProcessingPipeline audioProcessingPipeline3 = new AudioProcessingPipeline(pipelineProcessors.build());
            if (!audioProcessingPipeline3.equals(this.audioProcessingPipeline)) {
                audioProcessingPipeline2 = audioProcessingPipeline3;
            } else {
                AudioProcessingPipeline audioProcessingPipeline4 = this.audioProcessingPipeline;
                audioProcessingPipeline2 = audioProcessingPipeline4;
            }
            this.trimmingAudioProcessor.setTrimFrameCount(inputFormat.encoderDelay, inputFormat.encoderPadding);
            this.channelMappingAudioProcessor.setChannelMap(outputChannels);
            try {
                AudioProcessor.AudioFormat outputFormat = audioProcessingPipeline2.configure(new AudioProcessor.AudioFormat(inputFormat));
                Format afterProcessingFormat2 = inputFormat.buildUpon().setPcmEncoding(outputFormat.encoding).setSampleRate(outputFormat.sampleRate).setChannelCount(outputFormat.channelCount).build();
                int outputPcmFrameSize2 = Util.getPcmFrameSize(outputFormat.encoding, outputFormat.channelCount);
                audioProcessingPipeline = audioProcessingPipeline2;
                afterProcessingFormat = afterProcessingFormat2;
                outputPcmFrameSize = outputPcmFrameSize2;
                inputPcmFrameSize = inputPcmFrameSize2;
            } catch (AudioProcessor.UnhandledAudioFormatException e) {
                throw new AudioSink.ConfigurationException(e, inputFormat);
            }
        } else {
            AudioProcessingPipeline audioProcessingPipeline5 = new AudioProcessingPipeline(ImmutableList.of());
            audioProcessingPipeline = audioProcessingPipeline5;
            afterProcessingFormat = inputFormat;
            outputPcmFrameSize = -1;
            inputPcmFrameSize = -1;
        }
        int preferredBufferSize = specifiedBufferSize != 0 ? specifiedBufferSize : -1;
        AudioOutputProvider.FormatConfig formatConfig = getFormatConfig(afterProcessingFormat, preferredBufferSize);
        try {
            AudioOutputProvider.OutputConfig outputConfig = this.audioOutputProvider.getOutputConfig(formatConfig);
            if (outputConfig.encoding == 0) {
                throw new AudioSink.ConfigurationException("Invalid output encoding (isOffload=" + outputConfig.isOffload + ")", formatConfig.format);
            }
            if (outputConfig.channelMask == 0) {
                throw new AudioSink.ConfigurationException("Invalid output channel config (isOffload=" + outputConfig.isOffload + ")", formatConfig.format);
            }
            this.offloadDisabledUntilNextConfiguration = false;
            Configuration pendingConfiguration = new Configuration(inputFormat, afterProcessingFormat, inputPcmFrameSize, outputPcmFrameSize, outputConfig, audioProcessingPipeline);
            if (isAudioOutputInitialized()) {
                this.pendingConfiguration = pendingConfiguration;
            } else {
                this.configuration = pendingConfiguration;
            }
        } catch (AudioOutputProvider.ConfigurationException e2) {
            throw new AudioSink.ConfigurationException(e2, inputFormat);
        }
    }

    private void setupAudioProcessors() {
        this.audioProcessingPipeline = this.configuration.audioProcessingPipeline;
        this.audioProcessingPipeline.flush();
    }

    private boolean initializeAudioOutput() throws AudioSink.InitializationException {
        if (this.initializationExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return false;
        }
        this.audioOutput = buildAudioOutputWithRetry();
        this.audioOutputListener = new AudioOutputListener(this.configuration.outputConfig);
        this.audioOutput.addListener(this.audioOutputListener);
        if (this.audioOffloadListener != null) {
            this.audioOffloadListener.onOffloadedPlayback(this.audioOutput.isOffloadedPlayback());
        }
        if (this.audioOutput.isOffloadedPlayback() && this.configuration.outputConfig.useOffloadGapless) {
            this.audioOutput.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
        }
        if (this.playerId != null) {
            this.audioOutput.setPlayerId(this.playerId);
        }
        setVolumeInternal();
        if (this.auxEffectInfo.effectId != 0) {
            this.audioOutput.attachAuxEffect(this.auxEffectInfo.effectId);
            this.audioOutput.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        if (this.preferredDevice != null) {
            this.audioOutput.setPreferredDevice(this.preferredDevice);
        }
        this.startMediaTimeUsNeedsInit = true;
        int newAudioSessionId = this.audioOutput.getAudioSessionId();
        boolean audioSessionIdChanged = newAudioSessionId != this.audioSessionId;
        this.audioSessionId = newAudioSessionId;
        if (this.listener != null) {
            this.listener.onAudioTrackInitialized(this.configuration.buildAudioTrackConfig());
            if (audioSessionIdChanged) {
                this.pendingAudioSessionIdChangeConfirmation = true;
                this.configuration = this.configuration.copyWithOutputConfig(this.configuration.outputConfig.buildUpon().setAudioSessionId(this.audioSessionId).build());
                if (this.pendingConfiguration != null) {
                    this.pendingConfiguration = this.pendingConfiguration.copyWithOutputConfig(this.pendingConfiguration.outputConfig.buildUpon().setAudioSessionId(this.audioSessionId).build());
                }
                this.listener.onAudioSessionIdChanged(this.audioSessionId);
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isAudioOutputInitialized()) {
            this.audioOutput.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean handleBuffer(ByteBuffer buffer, long presentationTimeUs, int encodedAccessUnitCount) throws Exception {
        boolean z;
        Preconditions.checkArgument(this.inputBuffer == null || buffer == this.inputBuffer);
        if (this.pendingConfiguration != null) {
            if (!drainToEndOfStream()) {
                return false;
            }
            if (this.audioOutput == null || this.audioOutput.canReuseAudioOutput(this.configuration.outputConfig, getFormatConfig(this.pendingConfiguration.afterProcessingInputFormat), this.pendingConfiguration.outputConfig)) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                if (this.audioOutput != null && this.audioOutput.isOffloadedPlayback() && this.configuration.outputConfig.useOffloadGapless) {
                    this.audioOutput.setOffloadEndOfStream();
                    this.audioOutput.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            } else {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(presentationTimeUs);
        }
        if (!isAudioOutputInitialized()) {
            try {
                if (!initializeAudioOutput()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e) {
                if (e.isRecoverable) {
                    throw e;
                }
                this.initializationExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(e);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.clear();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = Math.max(0L, presentationTimeUs);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (useAudioOutputPlaybackParams()) {
                setAudioOutputPlaybackParameters();
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(presentationTimeUs);
            if (this.playing) {
                play();
            }
        }
        if (this.inputBuffer != null) {
            z = true;
        } else {
            Preconditions.checkArgument(buffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!buffer.hasRemaining()) {
                return true;
            }
            if (!this.configuration.isPcm() && this.framesPerEncodedSample == 0) {
                this.framesPerEncodedSample = getFramesPerEncodedSample(this.configuration.outputConfig.encoding, buffer);
                if (this.framesPerEncodedSample == 0) {
                    return true;
                }
            }
            if (this.afterDrainParameters != null) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                applyAudioProcessorPlaybackParametersAndSkipSilence(presentationTimeUs);
                this.afterDrainParameters = null;
            }
            long expectedPresentationTimeUs = this.startMediaTimeUs + this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount());
            if (!this.startMediaTimeUsNeedsSync && Math.abs(expectedPresentationTimeUs - presentationTimeUs) > 200000) {
                if (this.listener != null) {
                    this.listener.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(presentationTimeUs, expectedPresentationTimeUs));
                }
                this.startMediaTimeUsNeedsSync = true;
            }
            if (this.startMediaTimeUsNeedsSync) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                long adjustmentUs = presentationTimeUs - expectedPresentationTimeUs;
                this.startMediaTimeUs += adjustmentUs;
                this.startMediaTimeUsNeedsSync = false;
                applyAudioProcessorPlaybackParametersAndSkipSilence(presentationTimeUs);
                if (this.listener != null && adjustmentUs != 0) {
                    this.listener.onPositionDiscontinuity();
                }
            }
            if (this.configuration.isPcm()) {
                this.submittedPcmBytes += (long) buffer.remaining();
                z = true;
            } else {
                z = true;
                this.submittedEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) encodedAccessUnitCount);
            }
            this.inputBuffer = buffer;
            this.inputBufferAccessUnitCount = encodedAccessUnitCount;
        }
        processBuffers(presentationTimeUs);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return z;
        }
        if (this.audioOutput.isStalled()) {
            Log.w(TAG, "Resetting stalled audio output");
            flush();
            return z;
        }
        return false;
    }

    private AudioOutput buildAudioOutputWithRetry() throws AudioSink.InitializationException {
        int frameSize;
        try {
            return buildAudioOutput(this.configuration.outputConfig);
        } catch (AudioSink.InitializationException initialFailure) {
            int bufferSize = this.configuration.outputConfig.bufferSize;
            while (bufferSize > 1000000) {
                bufferSize /= 2;
                if (this.configuration.outputPcmFrameSize == -1) {
                    frameSize = 1;
                } else {
                    frameSize = this.configuration.outputPcmFrameSize;
                }
                int partialFrameSize = bufferSize % frameSize;
                if (partialFrameSize != 0) {
                    bufferSize += frameSize - partialFrameSize;
                }
                AudioOutputProvider.OutputConfig retryConfiguration = this.configuration.outputConfig.buildUpon().setBufferSize(bufferSize).build();
                try {
                    AudioOutput audioOutput = buildAudioOutput(retryConfiguration);
                    this.configuration = this.configuration.copyWithOutputConfig(retryConfiguration);
                    return audioOutput;
                } catch (AudioSink.InitializationException retryFailure) {
                    initialFailure.addSuppressed(retryFailure);
                }
            }
            maybeDisableOffload();
            throw initialFailure;
        }
    }

    private AudioOutput buildAudioOutput(AudioOutputProvider.OutputConfig outputConfig) throws AudioSink.InitializationException {
        try {
            return this.audioOutputProvider.getAudioOutput(outputConfig);
        } catch (AudioOutputProvider.InitializationException e) {
            AudioSink.InitializationException exception = new AudioSink.InitializationException(0, outputConfig.sampleRate, outputConfig.channelMask, outputConfig.encoding, outputConfig.bufferSize, this.configuration.inputFormat, outputConfig.isOffload, e);
            if (this.listener != null) {
                this.listener.onAudioSinkError(exception);
                throw exception;
            }
            throw exception;
        }
    }

    private void processBuffers(long avSyncPresentationTimeUs) throws Exception {
        drainOutputBuffer(avSyncPresentationTimeUs);
        if (this.outputBuffer != null) {
            return;
        }
        if (!this.audioProcessingPipeline.isOperational()) {
            if (this.inputBuffer != null) {
                setOutputBuffer(this.inputBuffer);
                drainOutputBuffer(avSyncPresentationTimeUs);
                return;
            }
            return;
        }
        while (!this.audioProcessingPipeline.isEnded()) {
            do {
                ByteBuffer bufferToWrite = this.audioProcessingPipeline.getOutput();
                if (bufferToWrite.hasRemaining()) {
                    setOutputBuffer(bufferToWrite);
                    drainOutputBuffer(avSyncPresentationTimeUs);
                } else if (this.inputBuffer == null || !this.inputBuffer.hasRemaining()) {
                    return;
                } else {
                    this.audioProcessingPipeline.queueInput(this.inputBuffer);
                }
            } while (this.outputBuffer == null);
            return;
        }
    }

    private boolean drainToEndOfStream() throws Exception {
        if (!this.audioProcessingPipeline.isOperational()) {
            drainOutputBuffer(Long.MIN_VALUE);
            return this.outputBuffer == null;
        }
        this.audioProcessingPipeline.queueEndOfStream();
        processBuffers(Long.MIN_VALUE);
        return this.audioProcessingPipeline.isEnded() && (this.outputBuffer == null || !this.outputBuffer.hasRemaining());
    }

    private void setOutputBuffer(ByteBuffer buffer) {
        Preconditions.checkState(this.outputBuffer == null);
        if (!buffer.hasRemaining()) {
            return;
        }
        this.outputBuffer = maybeRampUpVolume(buffer);
    }

    private void drainOutputBuffer(long avSyncPresentationTimeUs) throws Exception {
        if (this.outputBuffer == null || this.writeExceptionPendingExceptionHolder.shouldWaitBeforeRetry()) {
            return;
        }
        int bytesRemaining = this.outputBuffer.remaining();
        try {
            boolean fullyHandled = this.audioOutput.write(this.outputBuffer, this.inputBufferAccessUnitCount, avSyncPresentationTimeUs);
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            this.writeExceptionPendingExceptionHolder.clear();
            if (this.audioOutput.isOffloadedPlayback()) {
                if (this.writtenEncodedFrames > 0) {
                    this.isWaitingForOffloadEndOfStreamHandled = false;
                }
                if (this.playing && this.listener != null && !fullyHandled && !this.isWaitingForOffloadEndOfStreamHandled) {
                    this.listener.onOffloadBufferFull();
                }
            }
            if (this.configuration.isPcm()) {
                this.writtenPcmBytes += (long) (bytesRemaining - this.outputBuffer.remaining());
            }
            if (!fullyHandled) {
                return;
            }
            if (!this.configuration.isPcm()) {
                Preconditions.checkState(this.outputBuffer == this.inputBuffer);
                this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) this.inputBufferAccessUnitCount);
            }
            this.outputBuffer = null;
        } catch (AudioOutput.WriteException e) {
            boolean shouldRetry = false;
            if (e.isRecoverable) {
                if (getWrittenFrames() > 0) {
                    shouldRetry = true;
                } else if (this.audioOutput.isOffloadedPlayback()) {
                    maybeDisableOffload();
                    shouldRetry = true;
                }
            }
            AudioSink.WriteException error = new AudioSink.WriteException(e.errorCode, this.configuration.inputFormat, shouldRetry);
            if (this.listener != null) {
                this.listener.onAudioSinkError(error);
            }
            if (e.isRecoverable) {
                throw error;
            }
            this.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(error);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.handledEndOfStream && isAudioOutputInitialized() && drainToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    private void maybeDisableOffload() {
        if (!this.configuration.outputConfig.isOffload) {
            return;
        }
        this.offloadDisabledUntilNextConfiguration = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        return !isAudioOutputInitialized() || (this.handledEndOfStream && !hasPendingData());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        return isAudioOutputInitialized() && !(Build.VERSION.SDK_INT >= 29 && this.audioOutput.isOffloadedPlayback() && this.handledOffloadOnPresentationEnded) && hasAudioOutputPendingData(getWrittenFrames());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        if (useAudioOutputPlaybackParams()) {
            this.playbackParameters = playbackParameters;
            setAudioOutputPlaybackParameters();
        } else {
            this.playbackParameters = new PlaybackParameters(Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
            setAudioProcessorPlaybackParameters(this.playbackParameters);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setSkipSilenceEnabled(boolean skipSilenceEnabled) {
        this.skipSilenceEnabled = skipSilenceEnabled;
        setAudioProcessorPlaybackParameters(useAudioOutputPlaybackParams() ? PlaybackParameters.DEFAULT : this.playbackParameters);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean getSkipSilenceEnabled() {
        return this.skipSilenceEnabled;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (this.audioAttributes.equals(audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        if (this.tunneling) {
            return;
        }
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public AudioCapabilities getAudioCapabilities() {
        if (this.audioOutputProvider instanceof AudioTrackAudioOutputProvider) {
            return ((AudioTrackAudioOutputProvider) this.audioOutputProvider).getAudioCapabilities();
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int audioSessionId) {
        if (this.pendingAudioSessionIdChangeConfirmation) {
            if (this.audioSessionId == audioSessionId) {
                this.pendingAudioSessionIdChangeConfirmation = false;
            } else {
                return;
            }
        }
        if (this.audioSessionId != audioSessionId) {
            this.audioSessionId = audioSessionId;
            this.externalAudioSessionIdProvided = audioSessionId != 0;
            reconfigureAndFlush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int effectId = auxEffectInfo.effectId;
        float sendLevel = auxEffectInfo.sendLevel;
        if (this.audioOutput != null) {
            if (this.auxEffectInfo.effectId != effectId) {
                this.audioOutput.attachAuxEffect(effectId);
            }
            if (effectId != 0) {
                this.audioOutput.setAuxEffectSendLevel(sendLevel);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.preferredDevice = audioDeviceInfo;
        if (this.audioOutput != null) {
            this.audioOutput.setPreferredDevice(this.preferredDevice);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVirtualDeviceId(int virtualDeviceId) {
        int virtualDeviceId2 = resolveDefaultVirtualDeviceIds(virtualDeviceId);
        if (this.virtualDeviceId == virtualDeviceId2) {
            return;
        }
        this.virtualDeviceId = virtualDeviceId2;
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getAudioTrackBufferSizeUs() {
        if (!isAudioOutputInitialized()) {
            return C.TIME_UNSET;
        }
        if (!this.configuration.isPcm()) {
            return Util.scaleLargeValue(this.audioOutput.getBufferSizeInFrames(), 1000000L, getNonPcmMaximumEncodedRateBytesPerSecond(this.configuration.outputConfig.encoding), RoundingMode.DOWN);
        }
        return this.configuration.framesToDurationUs(this.audioOutput.getBufferSizeInFrames());
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void enableTunnelingV21() {
        Preconditions.checkState(this.externalAudioSessionIdProvided);
        if (!this.tunneling) {
            this.tunneling = true;
            reconfigureAndFlush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            reconfigureAndFlush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadMode(int offloadMode) {
        Preconditions.checkState(Build.VERSION.SDK_INT >= 29);
        this.offloadMode = offloadMode;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setOffloadDelayPadding(int delayInFrames, int paddingInFrames) {
        if (this.audioOutput != null && this.audioOutput.isOffloadedPlayback() && this.configuration != null && this.configuration.outputConfig.useOffloadGapless) {
            this.audioOutput.setOffloadDelayPadding(delayInFrames, paddingInFrames);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
        if (audioOutputProvider.equals(this.audioOutputProvider)) {
            return;
        }
        this.audioOutputProvider.release();
        this.audioOutputProvider = audioOutputProvider;
        if (this.audioOutputProviderListener != null) {
            audioOutputProvider.addListener(this.audioOutputProviderListener);
        }
        reconfigureAndFlush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float volume) {
        if (this.volume != volume) {
            this.volume = volume;
            setVolumeInternal();
        }
    }

    private void setVolumeInternal() {
        if (isAudioOutputInitialized()) {
            this.audioOutput.setVolume(this.volume);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isAudioOutputInitialized()) {
            this.audioOutput.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        if (isAudioOutputInitialized()) {
            resetSinkStateForFlush();
            this.audioOutputListener = null;
            if (this.pendingConfiguration != null) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
            }
            pendingReleaseCount.incrementAndGet();
            this.audioOutput.release();
            this.audioOutput = null;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        this.skippedOutputFrameCountAtLastPosition = 0L;
        this.accumulatedSkippedSilenceDurationUs = 0L;
        if (this.reportSkippedSilenceHandler != null) {
            ((Handler) Preconditions.checkNotNull(this.reportSkippedSilenceHandler)).removeCallbacksAndMessages(null);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void reset() {
        flush();
        UnmodifiableIterator<AudioProcessor> it = this.availableAudioProcessors.iterator();
        while (it.hasNext()) {
            AudioProcessor audioProcessor = it.next();
            audioProcessor.reset();
        }
        this.toInt16PcmAudioProcessor.reset();
        this.toFloatPcmAudioProcessor.reset();
        if (this.audioProcessingPipeline != null) {
            this.audioProcessingPipeline.reset();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void release() {
        this.audioOutputProvider.release();
    }

    private void reconfigureAndFlush() {
        if (this.configuration != null) {
            if (this.pendingConfiguration != null) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
            }
            try {
                AudioOutputProvider.OutputConfig outputConfig = this.audioOutputProvider.getOutputConfig(getFormatConfig(this.configuration.afterProcessingInputFormat));
                this.configuration = new Configuration(this.configuration.inputFormat, this.configuration.afterProcessingInputFormat, this.configuration.inputPcmFrameSize, this.configuration.outputPcmFrameSize, outputConfig, this.configuration.audioProcessingPipeline);
            } catch (AudioOutputProvider.ConfigurationException e) {
                throw new IllegalStateException(new AudioSink.ConfigurationException(e, this.configuration.inputFormat));
            }
        }
        flush();
    }

    private void resetSinkStateForFlush() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new MediaPositionParameters(this.playbackParameters, 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioOutput = false;
        this.handledEndOfStream = false;
        this.handledOffloadOnPresentationEnded = false;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        setupAudioProcessors();
    }

    private void setAudioOutputPlaybackParameters() {
        if (isAudioOutputInitialized()) {
            this.audioOutput.setPlaybackParameters(this.playbackParameters);
            this.playbackParameters = this.audioOutput.getPlaybackParameters();
        }
    }

    private void setAudioProcessorPlaybackParameters(PlaybackParameters playbackParameters) {
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(playbackParameters, C.TIME_UNSET, C.TIME_UNSET);
        if (isAudioOutputInitialized()) {
            this.afterDrainParameters = mediaPositionParameters;
        } else {
            this.mediaPositionParameters = mediaPositionParameters;
        }
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long presentationTimeUs) {
        PlaybackParameters audioProcessorPlaybackParameters;
        boolean zApplySkipSilenceEnabled;
        PlaybackParameters playbackParametersApplyPlaybackParameters;
        if (!useAudioOutputPlaybackParams()) {
            if (shouldApplyAudioProcessorPlaybackParameters()) {
                playbackParametersApplyPlaybackParameters = this.audioProcessorChain.applyPlaybackParameters(this.playbackParameters);
            } else {
                playbackParametersApplyPlaybackParameters = PlaybackParameters.DEFAULT;
            }
            this.playbackParameters = playbackParametersApplyPlaybackParameters;
            audioProcessorPlaybackParameters = this.playbackParameters;
        } else {
            PlaybackParameters audioProcessorPlaybackParameters2 = PlaybackParameters.DEFAULT;
            audioProcessorPlaybackParameters = audioProcessorPlaybackParameters2;
        }
        if (shouldApplyAudioProcessorPlaybackParameters()) {
            zApplySkipSilenceEnabled = this.audioProcessorChain.applySkipSilenceEnabled(this.skipSilenceEnabled);
        } else {
            zApplySkipSilenceEnabled = false;
        }
        this.skipSilenceEnabled = zApplySkipSilenceEnabled;
        this.mediaPositionParametersCheckpoints.add(new MediaPositionParameters(audioProcessorPlaybackParameters, Math.max(0L, presentationTimeUs), this.configuration.framesToDurationUs(getWrittenFrames())));
        setupAudioProcessors();
        if (this.listener != null) {
            this.listener.onSkipSilenceEnabledChanged(this.skipSilenceEnabled);
        }
    }

    private boolean shouldApplyAudioProcessorPlaybackParameters() {
        return (this.tunneling || !this.configuration.isPcm() || shouldUseFloatOutput(this.configuration.inputFormat.pcmEncoding)) ? false : true;
    }

    private boolean useAudioOutputPlaybackParams() {
        return this.configuration != null && this.configuration.outputConfig.usePlaybackParameters;
    }

    private boolean shouldUseFloatOutput(int pcmEncoding) {
        return this.enableFloatOutput && Util.isEncodingHighResolutionPcm(pcmEncoding);
    }

    private long applyMediaPositionParameters(long positionUs) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && positionUs >= this.mediaPositionParametersCheckpoints.getFirst().audioOutputPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        long playoutDurationSinceLastCheckpointUs = positionUs - this.mediaPositionParameters.audioOutputPositionUs;
        long estimatedMediaDurationSinceLastCheckpointUs = Util.getMediaDurationForPlayoutDuration(playoutDurationSinceLastCheckpointUs, this.mediaPositionParameters.playbackParameters.speed);
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            long actualMediaDurationSinceLastCheckpointUs = this.audioProcessorChain.getMediaDuration(playoutDurationSinceLastCheckpointUs);
            long currentMediaPositionUs = this.mediaPositionParameters.mediaTimeUs + actualMediaDurationSinceLastCheckpointUs;
            this.mediaPositionParameters.mediaPositionDriftUs = actualMediaDurationSinceLastCheckpointUs - estimatedMediaDurationSinceLastCheckpointUs;
            return currentMediaPositionUs;
        }
        return this.mediaPositionParameters.mediaTimeUs + estimatedMediaDurationSinceLastCheckpointUs + this.mediaPositionParameters.mediaPositionDriftUs;
    }

    private long applySkipping(long positionUs) {
        long skippedOutputFrameCountAtCurrentPosition = this.audioProcessorChain.getSkippedOutputFrameCount();
        long adjustedPositionUs = this.configuration.framesToDurationUs(skippedOutputFrameCountAtCurrentPosition) + positionUs;
        if (skippedOutputFrameCountAtCurrentPosition > this.skippedOutputFrameCountAtLastPosition) {
            long silenceDurationUs = this.configuration.framesToDurationUs(skippedOutputFrameCountAtCurrentPosition - this.skippedOutputFrameCountAtLastPosition);
            this.skippedOutputFrameCountAtLastPosition = skippedOutputFrameCountAtCurrentPosition;
            handleSkippedSilence(silenceDurationUs);
        }
        return adjustedPositionUs;
    }

    private void handleSkippedSilence(long silenceDurationUs) {
        this.accumulatedSkippedSilenceDurationUs += silenceDurationUs;
        if (this.reportSkippedSilenceHandler == null) {
            this.reportSkippedSilenceHandler = new Handler(Looper.myLooper());
        }
        this.reportSkippedSilenceHandler.removeCallbacksAndMessages(null);
        this.reportSkippedSilenceHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.maybeReportSkippedSilence();
            }
        }, 100L);
    }

    private boolean isAudioOutputInitialized() {
        return this.audioOutput != null;
    }

    private long getSubmittedFrames() {
        if (!this.configuration.isPcm()) {
            return this.submittedEncodedFrames;
        }
        return this.submittedPcmBytes / ((long) this.configuration.inputPcmFrameSize);
    }

    private long getWrittenFrames() {
        if (!this.configuration.isPcm()) {
            return this.writtenEncodedFrames;
        }
        return Util.ceilDivide(this.writtenPcmBytes, this.configuration.outputPcmFrameSize);
    }

    private void maybeAddAudioOutputProviderListener() {
        if (this.audioOutputProviderListener == null && this.context != null) {
            this.audioOutputProviderListener = new AudioOutputProvider.Listener() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda0
                @Override // androidx.media3.exoplayer.audio.AudioOutputProvider.Listener
                public final void onFormatSupportChanged() {
                    this.f$0.m7920x5f4a2db();
                }
            };
            this.audioOutputProvider.addListener(this.audioOutputProviderListener);
        }
    }

    /* JADX INFO: renamed from: lambda$maybeAddAudioOutputProviderListener$0$androidx-media3-exoplayer-audio-DefaultAudioSink, reason: not valid java name */
    /* synthetic */ void m7920x5f4a2db() {
        if (this.listener != null) {
            this.listener.onAudioCapabilitiesChanged();
        }
    }

    private AudioOutputProvider.FormatConfig getFormatConfig(Format format) {
        return getFormatConfig(format, -1);
    }

    private AudioOutputProvider.FormatConfig getFormatConfig(Format format, int preferredBufferSize) {
        return new AudioOutputProvider.FormatConfig.Builder(format).setAudioAttributes(this.audioAttributes).setEnableHighResolutionPcmOutput(this.enableFloatOutput).setEnablePlaybackParameters(this.preferAudioOutputPlaybackParameters).setEnableOffload(this.offloadMode != 0).setPreferredDevice(this.preferredDevice).setAudioSessionId(this.audioSessionId).setEnableTunneling(this.tunneling).setPreferredBufferSize(preferredBufferSize).setVirtualDeviceId(this.virtualDeviceId).build();
    }

    static int getFramesPerEncodedSample(int encoding, ByteBuffer buffer) {
        switch (encoding) {
            case 5:
            case 6:
            case 18:
                return Ac3Util.parseAc3SyncframeAudioSampleCount(buffer);
            case 7:
            case 8:
            case 30:
                int headerDataInBigEndian = DtsUtil.parseDtsAudioSampleCount(buffer);
                return headerDataInBigEndian;
            case 9:
                int headerDataInBigEndian2 = Util.getBigEndianInt(buffer, buffer.position());
                int frameCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(headerDataInBigEndian2);
                if (frameCount == -1) {
                    throw new IllegalArgumentException();
                }
                return frameCount;
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + encoding);
            case 14:
                int syncframeOffset = Ac3Util.findTrueHdSyncframeOffset(buffer);
                if (syncframeOffset == -1) {
                    return 0;
                }
                return Ac3Util.parseTrueHdSyncframeAudioSampleCount(buffer, syncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return Ac4Util.parseAc4SyncframeAudioSampleCount(buffer);
            case 20:
                return OpusUtil.parseOggPacketAudioSampleCount(buffer);
        }
    }

    private void playPendingData() {
        if (!this.stoppedAudioOutput) {
            this.stoppedAudioOutput = true;
            if (this.audioOutput.isOffloadedPlayback()) {
                this.handledOffloadOnPresentationEnded = false;
            }
            this.audioOutput.stop();
        }
    }

    private ByteBuffer maybeRampUpVolume(ByteBuffer buffer) {
        if (!this.configuration.isPcm()) {
            return buffer;
        }
        long rampDurationUs = Util.msToUs(20L);
        int rampFrameCount = (int) Util.durationUsToSampleCount(rampDurationUs, this.configuration.outputConfig.sampleRate);
        long writtenFrames = getWrittenFrames();
        if (writtenFrames >= rampFrameCount) {
            return buffer;
        }
        return PcmAudioUtil.rampUpVolume(buffer, this.configuration.outputConfig.encoding, this.configuration.outputPcmFrameSize, (int) writtenFrames, rampFrameCount);
    }

    private boolean hasAudioOutputPendingData(long writtenFrames) {
        long currentPositionFrames = Util.durationUsToSampleCount(this.audioOutput.getPositionUs(), ((AudioOutput) Preconditions.checkNotNull(this.audioOutput)).getSampleRate());
        return writtenFrames > currentPositionFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasPendingAudioOutputReleases() {
        return pendingReleaseCount.get() > 0;
    }

    private static int getDeviceIdFromContext(Context context) {
        return resolveDefaultVirtualDeviceIds(context.getDeviceId());
    }

    private static int resolveDefaultVirtualDeviceIds(int deviceId) {
        if (deviceId == 0 || deviceId == -1) {
            return -1;
        }
        return deviceId;
    }

    private final class AudioOutputListener implements AudioOutput.Listener {
        private final AudioOutputProvider.OutputConfig outputConfig;

        private AudioOutputListener(AudioOutputProvider.OutputConfig outputConfig) {
            this.outputConfig = outputConfig;
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onPositionAdvancing(long playoutStartSystemTimeMs) {
            if (equals(DefaultAudioSink.this.audioOutputListener) && DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onPositionAdvancing(playoutStartSystemTimeMs);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onOffloadDataRequest() {
            if (equals(DefaultAudioSink.this.audioOutputListener) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                DefaultAudioSink.this.listener.onOffloadBufferEmptying();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onOffloadPresentationEnded() {
            if (equals(DefaultAudioSink.this.audioOutputListener) && DefaultAudioSink.this.stoppedAudioOutput) {
                DefaultAudioSink.this.handledOffloadOnPresentationEnded = true;
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onUnderrun() {
            long bufferSizeUs;
            if (!equals(DefaultAudioSink.this.audioOutputListener) || DefaultAudioSink.this.listener == null) {
                return;
            }
            if (DefaultAudioSink.this.configuration.outputPcmFrameSize != -1) {
                bufferSizeUs = Util.sampleCountToDurationUs(DefaultAudioSink.this.configuration.outputConfig.bufferSize / DefaultAudioSink.this.configuration.outputPcmFrameSize, ((AudioOutput) Preconditions.checkNotNull(DefaultAudioSink.this.audioOutput)).getSampleRate());
            } else {
                bufferSizeUs = C.TIME_UNSET;
            }
            long elapsedSinceLastFeedMs = SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs;
            DefaultAudioSink.this.listener.onUnderrun(DefaultAudioSink.this.configuration.outputConfig.bufferSize, Util.usToMs(bufferSizeUs), elapsedSinceLastFeedMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public void onReleased() {
            DefaultAudioSink.pendingReleaseCount.getAndDecrement();
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onAudioTrackReleased(new AudioSink.AudioTrackConfig(this.outputConfig.encoding, this.outputConfig.sampleRate, this.outputConfig.channelMask, this.outputConfig.isTunneling, this.outputConfig.isOffload, this.outputConfig.bufferSize));
            }
        }
    }

    private static final class MediaPositionParameters {
        public final long audioOutputPositionUs;
        public long mediaPositionDriftUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;

        private MediaPositionParameters(PlaybackParameters playbackParameters, long mediaTimeUs, long audioOutputPositionUs) {
            this.playbackParameters = playbackParameters;
            this.mediaTimeUs = mediaTimeUs;
            this.audioOutputPositionUs = audioOutputPositionUs;
        }
    }

    private static final class Configuration {
        private final Format afterProcessingInputFormat;
        private final AudioProcessingPipeline audioProcessingPipeline;
        private final Format inputFormat;
        private final int inputPcmFrameSize;
        private final AudioOutputProvider.OutputConfig outputConfig;
        private final int outputPcmFrameSize;

        private Configuration(Format inputFormat, Format afterProcessingInputFormat, int inputPcmFrameSize, int outputPcmFrameSize, AudioOutputProvider.OutputConfig outputConfig, AudioProcessingPipeline audioProcessingPipeline) {
            this.inputFormat = inputFormat;
            this.afterProcessingInputFormat = afterProcessingInputFormat;
            this.inputPcmFrameSize = inputPcmFrameSize;
            this.outputPcmFrameSize = outputPcmFrameSize;
            this.outputConfig = outputConfig;
            this.audioProcessingPipeline = audioProcessingPipeline;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Configuration copyWithOutputConfig(AudioOutputProvider.OutputConfig outputConfig) {
            return new Configuration(this.inputFormat, this.afterProcessingInputFormat, this.inputPcmFrameSize, this.outputPcmFrameSize, outputConfig, this.audioProcessingPipeline);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long inputFramesToDurationUs(long frameCount) {
            return Util.sampleCountToDurationUs(frameCount, this.inputFormat.sampleRate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long framesToDurationUs(long frameCount) {
            return Util.sampleCountToDurationUs(frameCount, this.outputConfig.sampleRate);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AudioSink.AudioTrackConfig buildAudioTrackConfig() {
            return new AudioSink.AudioTrackConfig(this.outputConfig.encoding, this.outputConfig.sampleRate, this.outputConfig.channelMask, this.outputConfig.isTunneling, this.outputConfig.isOffload, this.outputConfig.bufferSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPcm() {
            return Objects.equals(this.inputFormat.sampleMimeType, MimeTypes.AUDIO_RAW);
        }
    }

    private static final class PendingExceptionHolder<T extends Exception> {
        private static final int RETRY_DELAY_MS = 50;
        private static final int RETRY_DURATION_MS = 200;
        private T pendingException;
        private long throwDeadlineMs = C.TIME_UNSET;
        private long earliestNextRetryTimeMs = C.TIME_UNSET;

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public void throwExceptionIfDeadlineIsReached(T exception) throws Exception {
            long nowMs = SystemClock.elapsedRealtime();
            if (this.pendingException == null) {
                this.pendingException = exception;
            }
            if (this.throwDeadlineMs == C.TIME_UNSET && !DefaultAudioSink.hasPendingAudioOutputReleases()) {
                this.throwDeadlineMs = 200 + nowMs;
            }
            if (this.throwDeadlineMs != C.TIME_UNSET && nowMs >= this.throwDeadlineMs) {
                if (this.pendingException != exception) {
                    this.pendingException.addSuppressed(exception);
                }
                T pendingException = this.pendingException;
                clear();
                throw pendingException;
            }
            this.earliestNextRetryTimeMs = 50 + nowMs;
        }

        public boolean shouldWaitBeforeRetry() {
            if (this.pendingException == null) {
                return false;
            }
            return DefaultAudioSink.hasPendingAudioOutputReleases() || SystemClock.elapsedRealtime() < this.earliestNextRetryTimeMs;
        }

        public void clear() {
            this.pendingException = null;
            this.throwDeadlineMs = C.TIME_UNSET;
            this.earliestNextRetryTimeMs = C.TIME_UNSET;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeReportSkippedSilence() {
        if (this.accumulatedSkippedSilenceDurationUs >= 300000) {
            this.listener.onSilenceSkipped();
            this.accumulatedSkippedSilenceDurationUs = 0L;
        }
    }

    private static int getNonPcmMaximumEncodedRateBytesPerSecond(int encoding) {
        int rate = ExtractorUtil.getMaximumEncodedRateBytesPerSecond(encoding);
        Preconditions.checkState(rate != -2147483647);
        return rate;
    }
}
