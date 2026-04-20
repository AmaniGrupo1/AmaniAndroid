package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public interface ExoPlayer extends Player {

    @Deprecated
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;

    @Deprecated
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @Deprecated
    public static final int DEFAULT_STUCK_BUFFERING_DETECTION_TIMEOUT_MS = 600000;

    @Deprecated
    public static final int DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS = 60000;

    @Deprecated
    public static final int DEFAULT_STUCK_SUPPRESSED_DETECTION_TIMEOUT_MS = 600000;

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    void addAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void addMediaSource(int i, MediaSource mediaSource);

    void addMediaSource(MediaSource mediaSource);

    void addMediaSources(int i, List<MediaSource> list);

    void addMediaSources(List<MediaSource> list);

    void addVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener, List<String> list);

    void clearAuxEffectInfo();

    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    PlayerMessage createMessage(PlayerMessage.Target target);

    AnalyticsCollector getAnalyticsCollector();

    DecoderCounters getAudioDecoderCounters();

    Format getAudioFormat();

    Clock getClock();

    @Deprecated
    TrackGroupArray getCurrentTrackGroups();

    @Deprecated
    TrackSelectionArray getCurrentTrackSelections();

    boolean getPauseAtEndOfMediaItems();

    Looper getPlaybackLooper();

    @Override // androidx.media3.common.Player
    ExoPlaybackException getPlayerError();

    PreloadConfiguration getPreloadConfiguration();

    Renderer getRenderer(int i);

    int getRendererCount();

    int getRendererType(int i);

    ScrubbingModeParameters getScrubbingModeParameters();

    Renderer getSecondaryRenderer(int i);

    SeekParameters getSeekParameters();

    ShuffleOrder getShuffleOrder();

    boolean getSkipSilenceEnabled();

    TrackSelector getTrackSelector();

    int getVideoChangeFrameRateStrategy();

    DecoderCounters getVideoDecoderCounters();

    Format getVideoFormat();

    int getVideoScalingMode();

    boolean isReleased();

    boolean isScrubbingModeEnabled();

    boolean isSleepingForOffload();

    boolean isTunnelingEnabled();

    @Deprecated
    void prepare(MediaSource mediaSource);

    @Deprecated
    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    @Override // androidx.media3.common.Player
    void release();

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    void removeAudioCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    void removeVideoCodecParametersChangeListener(CodecParametersChangeListener codecParametersChangeListener);

    @Override // androidx.media3.common.Player
    void replaceMediaItem(int i, MediaItem mediaItem);

    @Override // androidx.media3.common.Player
    void replaceMediaItems(int i, int i2, List<MediaItem> list);

    void setAudioCodecParameters(CodecParameters codecParameters);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    void setImageOutput(ImageOutput imageOutput);

    void setMaxSeekToPreviousPositionMs(long j);

    void setMediaSource(MediaSource mediaSource);

    void setMediaSource(MediaSource mediaSource, long j);

    void setMediaSource(MediaSource mediaSource, boolean z);

    void setMediaSources(List<MediaSource> list);

    void setMediaSources(List<MediaSource> list, int i, long j);

    void setMediaSources(List<MediaSource> list, boolean z);

    void setPauseAtEndOfMediaItems(boolean z);

    void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo);

    void setPreloadConfiguration(PreloadConfiguration preloadConfiguration);

    void setPriority(int i);

    void setPriorityTaskManager(PriorityTaskManager priorityTaskManager);

    void setScrubbingModeEnabled(boolean z);

    void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters);

    void setSeekBackIncrementMs(long j);

    void setSeekForwardIncrementMs(long j);

    void setSeekParameters(SeekParameters seekParameters);

    void setShuffleOrder(ShuffleOrder shuffleOrder);

    void setSkipSilenceEnabled(boolean z);

    void setVideoChangeFrameRateStrategy(int i);

    void setVideoCodecParameters(CodecParameters codecParameters);

    void setVideoEffects(List<Effect> list);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setVideoScalingMode(int i);

    void setVirtualDeviceId(int i);

    void setWakeMode(int i);

    public interface AudioOffloadListener {
        default void onSleepingForOffloadChanged(boolean isSleepingForOffload) {
        }

        default void onOffloadedPlayback(boolean isOffloadedPlayback) {
        }
    }

    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(C.TIME_UNSET);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long targetPreloadDurationUs) {
            this.targetPreloadDurationUs = targetPreloadDurationUs;
        }
    }

    public static final class Builder {
        public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
        public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;
        public static final int DEFAULT_STUCK_BUFFERING_DETECTION_TIMEOUT_MS = 600000;
        public static final int DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS;
        public static final int DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS = 60000;
        public static final int DEFAULT_STUCK_SUPPRESSED_DETECTION_TIMEOUT_MS = 600000;
        public static boolean experimentalEnableStuckPlayingDetection;
        Function<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        AudioOutputProvider audioOutputProvider;
        boolean avoidLoadingWhileEnded;
        Supplier<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        boolean dynamicSchedulingEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        Supplier<LoadControl> loadControlSupplier;
        Looper looper;
        long maxSeekToPreviousPositionMs;
        Supplier<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        PlaybackLooperProvider playbackLooperProvider;
        String playerName;
        int priority;
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        Supplier<RenderersFactory> renderersFactorySupplier;
        ScrubbingModeParameters scrubbingModeParameters;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        int stuckBufferingDetectionTimeoutMs;
        int stuckPlayingDetectionTimeoutMs;
        int stuckPlayingNotEndingTimeoutMs;
        int stuckSuppressedDetectionTimeoutMs;
        SuitableOutputChecker suitableOutputChecker;
        boolean suppressPlaybackOnUnsuitableOutput;
        Supplier<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;
        boolean wakeModeSet;

        static {
            DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS = Util.isRunningOnEmulator() ? 30000 : 10000;
            experimentalEnableStuckPlayingDetection = true;
        }

        public Builder(final Context context) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda11
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$0(context);
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda12
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$1(context);
                }
            });
        }

        static /* synthetic */ RenderersFactory lambda$new$0(Context context) {
            return new DefaultRenderersFactory(context);
        }

        static /* synthetic */ MediaSource.Factory lambda$new$1(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda16
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$2(renderersFactory);
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda17
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$3(context);
                }
            });
            Preconditions.checkNotNull(renderersFactory);
        }

        static /* synthetic */ RenderersFactory lambda$new$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        static /* synthetic */ MediaSource.Factory lambda$new$3(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public Builder(final Context context, final MediaSource.Factory mediaSourceFactory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$4(context);
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda7
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$5(mediaSourceFactory);
                }
            });
            Preconditions.checkNotNull(mediaSourceFactory);
        }

        static /* synthetic */ RenderersFactory lambda$new$4(Context context) {
            return new DefaultRenderersFactory(context);
        }

        static /* synthetic */ MediaSource.Factory lambda$new$5(MediaSource.Factory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory mediaSourceFactory) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda14
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$6(renderersFactory);
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda15
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$7(mediaSourceFactory);
                }
            });
            Preconditions.checkNotNull(renderersFactory);
            Preconditions.checkNotNull(mediaSourceFactory);
        }

        static /* synthetic */ RenderersFactory lambda$new$6(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        static /* synthetic */ MediaSource.Factory lambda$new$7(MediaSource.Factory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory mediaSourceFactory, final TrackSelector trackSelector, final LoadControl loadControl, final BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, (Supplier<RenderersFactory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda18
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$8(renderersFactory);
                }
            }, (Supplier<MediaSource.Factory>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda19
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$9(mediaSourceFactory);
                }
            }, (Supplier<TrackSelector>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda20
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$10(trackSelector);
                }
            }, (Supplier<LoadControl>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda21
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$11(loadControl);
                }
            }, (Supplier<BandwidthMeter>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda22
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$12(bandwidthMeter);
                }
            }, (Function<Clock, AnalyticsCollector>) new Function() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda23
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.lambda$new$13(analyticsCollector, (Clock) obj);
                }
            });
            Preconditions.checkNotNull(renderersFactory);
            Preconditions.checkNotNull(mediaSourceFactory);
            Preconditions.checkNotNull(trackSelector);
            Preconditions.checkNotNull(bandwidthMeter);
            Preconditions.checkNotNull(analyticsCollector);
        }

        static /* synthetic */ RenderersFactory lambda$new$8(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        static /* synthetic */ MediaSource.Factory lambda$new$9(MediaSource.Factory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        static /* synthetic */ TrackSelector lambda$new$10(TrackSelector trackSelector) {
            return trackSelector;
        }

        static /* synthetic */ LoadControl lambda$new$11(LoadControl loadControl) {
            return loadControl;
        }

        static /* synthetic */ BandwidthMeter lambda$new$12(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        static /* synthetic */ AnalyticsCollector lambda$new$13(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        private Builder(final Context context, Supplier<RenderersFactory> renderersFactorySupplier, Supplier<MediaSource.Factory> mediaSourceFactorySupplier) {
            this(context, renderersFactorySupplier, mediaSourceFactorySupplier, (Supplier<TrackSelector>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$new$14(context);
                }
            }, (Supplier<LoadControl>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, (Supplier<BandwidthMeter>) new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, (Function<Clock, AnalyticsCollector>) new Function() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        static /* synthetic */ TrackSelector lambda$new$14(Context context) {
            return new DefaultTrackSelector(context);
        }

        private Builder(Context context, Supplier<RenderersFactory> renderersFactorySupplier, Supplier<MediaSource.Factory> mediaSourceFactorySupplier, Supplier<TrackSelector> trackSelectorSupplier, Supplier<LoadControl> loadControlSupplier, Supplier<BandwidthMeter> bandwidthMeterSupplier, Function<Clock, AnalyticsCollector> analyticsCollectorFunction) {
            int i;
            this.context = (Context) Preconditions.checkNotNull(context);
            this.renderersFactorySupplier = renderersFactorySupplier;
            this.mediaSourceFactorySupplier = mediaSourceFactorySupplier;
            this.trackSelectorSupplier = trackSelectorSupplier;
            this.loadControlSupplier = loadControlSupplier;
            this.bandwidthMeterSupplier = bandwidthMeterSupplier;
            this.analyticsCollectorFunction = analyticsCollectorFunction;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            this.scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.stuckBufferingDetectionTimeoutMs = 600000;
            if (experimentalEnableStuckPlayingDetection) {
                i = DEFAULT_STUCK_PLAYING_DETECTION_TIMEOUT_MS;
            } else {
                i = Integer.MAX_VALUE;
            }
            this.stuckPlayingDetectionTimeoutMs = i;
            this.stuckPlayingNotEndingTimeoutMs = experimentalEnableStuckPlayingDetection ? 60000 : Integer.MAX_VALUE;
            this.stuckSuppressedDetectionTimeoutMs = 600000;
            this.usePlatformDiagnostics = true;
            this.playerName = "";
            this.priority = -1000;
            this.suitableOutputChecker = new DefaultSuitableOutputChecker();
            this.avoidLoadingWhileEnded = true;
        }

        public Builder experimentalSetForegroundModeTimeoutMs(long timeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            this.foregroundModeTimeoutMs = timeoutMs;
            return this;
        }

        public Builder experimentalSetDynamicSchedulingEnabled(boolean dynamicSchedulingEnabled) {
            Preconditions.checkState(!this.buildCalled);
            this.dynamicSchedulingEnabled = dynamicSchedulingEnabled;
            return this;
        }

        public Builder experimentalAvoidLoadingWhileEnded(boolean avoidLoadingWhileEnded) {
            Preconditions.checkState(!this.buildCalled);
            this.avoidLoadingWhileEnded = avoidLoadingWhileEnded;
            return this;
        }

        public Builder setSuppressPlaybackOnUnsuitableOutput(boolean suppressPlaybackOnUnsuitableOutput) {
            Preconditions.checkState(!this.buildCalled);
            this.suppressPlaybackOnUnsuitableOutput = suppressPlaybackOnUnsuitableOutput;
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda13
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$setRenderersFactory$16(renderersFactory);
                }
            };
            return this;
        }

        static /* synthetic */ RenderersFactory lambda$setRenderersFactory$16(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public Builder setMediaSourceFactory(final MediaSource.Factory mediaSourceFactory) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(mediaSourceFactory);
            this.mediaSourceFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda9
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$setMediaSourceFactory$17(mediaSourceFactory);
                }
            };
            return this;
        }

        static /* synthetic */ MediaSource.Factory lambda$setMediaSourceFactory$17(MediaSource.Factory mediaSourceFactory) {
            return mediaSourceFactory;
        }

        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda8
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$setTrackSelector$18(trackSelector);
                }
            };
            return this;
        }

        static /* synthetic */ TrackSelector lambda$setTrackSelector$18(TrackSelector trackSelector) {
            return trackSelector;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(loadControl);
            this.loadControlSupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$setLoadControl$19(loadControl);
                }
            };
            return this;
        }

        static /* synthetic */ LoadControl lambda$setLoadControl$19(LoadControl loadControl) {
            return loadControl;
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(bandwidthMeter);
            this.bandwidthMeterSupplier = new Supplier() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.lambda$setBandwidthMeter$20(bandwidthMeter);
                }
            };
            return this;
        }

        static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$20(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public Builder setLooper(Looper looper) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        public Builder setAnalyticsCollector(final AnalyticsCollector analyticsCollector) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkNotNull(analyticsCollector);
            this.analyticsCollectorFunction = new Function() { // from class: androidx.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda10
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.lambda$setAnalyticsCollector$21(analyticsCollector, (Clock) obj);
                }
            };
            return this;
        }

        static /* synthetic */ AnalyticsCollector lambda$setAnalyticsCollector$21(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        public Builder setAudioOutputProvider(AudioOutputProvider audioOutputProvider) {
            Preconditions.checkState(!this.buildCalled);
            this.audioOutputProvider = (AudioOutputProvider) Preconditions.checkNotNull(audioOutputProvider);
            return this;
        }

        public Builder setPriority(int priority) {
            Preconditions.checkState(!this.buildCalled);
            this.priority = priority;
            return this;
        }

        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            Preconditions.checkState(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean handleAudioFocus) {
            Preconditions.checkState(!this.buildCalled);
            this.audioAttributes = (AudioAttributes) Preconditions.checkNotNull(audioAttributes);
            this.handleAudioFocus = handleAudioFocus;
            return this;
        }

        public Builder setWakeMode(int wakeMode) {
            Preconditions.checkState(!this.buildCalled);
            this.wakeMode = wakeMode;
            this.wakeModeSet = true;
            return this;
        }

        public Builder setHandleAudioBecomingNoisy(boolean handleAudioBecomingNoisy) {
            Preconditions.checkState(!this.buildCalled);
            this.handleAudioBecomingNoisy = handleAudioBecomingNoisy;
            return this;
        }

        public Builder setSkipSilenceEnabled(boolean skipSilenceEnabled) {
            Preconditions.checkState(!this.buildCalled);
            this.skipSilenceEnabled = skipSilenceEnabled;
            return this;
        }

        public Builder setDeviceVolumeControlEnabled(boolean deviceVolumeControlEnabled) {
            Preconditions.checkState(!this.buildCalled);
            this.deviceVolumeControlEnabled = deviceVolumeControlEnabled;
            return this;
        }

        public Builder setVideoScalingMode(int videoScalingMode) {
            Preconditions.checkState(!this.buildCalled);
            this.videoScalingMode = videoScalingMode;
            return this;
        }

        public Builder setVideoChangeFrameRateStrategy(int videoChangeFrameRateStrategy) {
            Preconditions.checkState(!this.buildCalled);
            this.videoChangeFrameRateStrategy = videoChangeFrameRateStrategy;
            return this;
        }

        public Builder setUseLazyPreparation(boolean useLazyPreparation) {
            Preconditions.checkState(!this.buildCalled);
            this.useLazyPreparation = useLazyPreparation;
            return this;
        }

        public Builder setSeekParameters(SeekParameters seekParameters) {
            Preconditions.checkState(!this.buildCalled);
            this.seekParameters = (SeekParameters) Preconditions.checkNotNull(seekParameters);
            return this;
        }

        public Builder setSeekBackIncrementMs(long seekBackIncrementMs) {
            Preconditions.checkArgument(seekBackIncrementMs > 0);
            Preconditions.checkState(!this.buildCalled);
            this.seekBackIncrementMs = seekBackIncrementMs;
            return this;
        }

        public Builder setSeekForwardIncrementMs(long seekForwardIncrementMs) {
            Preconditions.checkArgument(seekForwardIncrementMs > 0);
            Preconditions.checkState(!this.buildCalled);
            this.seekForwardIncrementMs = seekForwardIncrementMs;
            return this;
        }

        public Builder setMaxSeekToPreviousPositionMs(long maxSeekToPreviousPositionMs) {
            Preconditions.checkArgument(maxSeekToPreviousPositionMs >= 0);
            Preconditions.checkState(!this.buildCalled);
            this.maxSeekToPreviousPositionMs = maxSeekToPreviousPositionMs;
            return this;
        }

        public Builder setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
            Preconditions.checkState(!this.buildCalled);
            this.scrubbingModeParameters = (ScrubbingModeParameters) Preconditions.checkNotNull(scrubbingModeParameters);
            return this;
        }

        public Builder setReleaseTimeoutMs(long releaseTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            this.releaseTimeoutMs = releaseTimeoutMs;
            return this;
        }

        public Builder setDetachSurfaceTimeoutMs(long detachSurfaceTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            this.detachSurfaceTimeoutMs = detachSurfaceTimeoutMs;
            return this;
        }

        public Builder setStuckBufferingDetectionTimeoutMs(int stuckBufferingDetectionTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkArgument(stuckBufferingDetectionTimeoutMs > 0);
            this.stuckBufferingDetectionTimeoutMs = stuckBufferingDetectionTimeoutMs;
            return this;
        }

        public Builder setStuckPlayingDetectionTimeoutMs(int stuckPlayingDetectionTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkArgument(stuckPlayingDetectionTimeoutMs > 0);
            this.stuckPlayingDetectionTimeoutMs = stuckPlayingDetectionTimeoutMs;
            return this;
        }

        public Builder setStuckPlayingNotEndingTimeoutMs(int stuckPlayingNotEndingTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkArgument(stuckPlayingNotEndingTimeoutMs > 0);
            this.stuckPlayingNotEndingTimeoutMs = stuckPlayingNotEndingTimeoutMs;
            return this;
        }

        public Builder setStuckSuppressedDetectionTimeoutMs(int stuckSuppressedDetectionTimeoutMs) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkArgument(stuckSuppressedDetectionTimeoutMs > 0);
            this.stuckSuppressedDetectionTimeoutMs = stuckSuppressedDetectionTimeoutMs;
            return this;
        }

        public Builder setPauseAtEndOfMediaItems(boolean pauseAtEndOfMediaItems) {
            Preconditions.checkState(!this.buildCalled);
            this.pauseAtEndOfMediaItems = pauseAtEndOfMediaItems;
            return this;
        }

        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            Preconditions.checkState(!this.buildCalled);
            this.livePlaybackSpeedControl = (LivePlaybackSpeedControl) Preconditions.checkNotNull(livePlaybackSpeedControl);
            return this;
        }

        public Builder setUsePlatformDiagnostics(boolean usePlatformDiagnostics) {
            Preconditions.checkState(!this.buildCalled);
            this.usePlatformDiagnostics = usePlatformDiagnostics;
            return this;
        }

        public Builder setClock(Clock clock) {
            Preconditions.checkState(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        public Builder setSuitableOutputChecker(SuitableOutputChecker suitableOutputChecker) {
            Preconditions.checkState(!this.buildCalled);
            this.suitableOutputChecker = suitableOutputChecker;
            return this;
        }

        public Builder setPlaybackLooper(Looper playbackLooper) {
            Preconditions.checkState((this.buildCalled || playbackLooper == Looper.getMainLooper()) ? false : true);
            this.playbackLooperProvider = new PlaybackLooperProvider(playbackLooper);
            return this;
        }

        public Builder setPlaybackLooperProvider(PlaybackLooperProvider playbackLooperProvider) {
            Preconditions.checkState(!this.buildCalled);
            this.playbackLooperProvider = playbackLooperProvider;
            return this;
        }

        public Builder setName(String playerName) {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkArgument(!playerName.equals(PlayerId.PRELOAD.name));
            this.playerName = playerName;
            return this;
        }

        public ExoPlayer build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        SimpleExoPlayer buildSimpleExoPlayer() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }
    }
}
