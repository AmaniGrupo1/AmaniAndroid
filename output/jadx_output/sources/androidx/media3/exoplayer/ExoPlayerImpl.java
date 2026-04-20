package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioDeviceInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.StuckPlayerDetector;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.WifiLockManager;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.SuitableOutputChecker;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TimelineWithUpdatedMediaItem;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoDecoderOutputBufferRenderer;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes21.dex */
final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final AnalyticsCollector analyticsCollector;
    private final Context applicationContext;
    private final Looper applicationLooper;
    private AudioAttributes audioAttributes;
    private final AudioBecomingNoisyManager audioBecomingNoisyManager;
    private DecoderCounters audioDecoderCounters;
    private Format audioFormat;
    private final CodecParameterListenerManager audioListenerManager;
    private final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    private final BackgroundThreadStateHandler<Integer> audioSessionIdState;
    private Player.Commands availableCommands;
    private final BandwidthMeter bandwidthMeter;
    private CameraMotionListener cameraMotionListener;
    private final Clock clock;
    private final ComponentListener componentListener;
    private final ConditionVariable constructorFinished = new ConditionVariable();
    private CueGroup currentCueGroup;
    private final long detachSurfaceTimeoutMs;
    private DeviceInfo deviceInfo;
    private ImmutableSet<Integer> disabledTrackTypesWithoutScrubbingMode;
    final TrackSelectorResult emptyTrackSelectorResult;
    private boolean foregroundMode;
    private final FrameMetadataListener frameMetadataListener;
    private boolean hasNotifiedFullWrongThreadWarning;
    private final ExoPlayerImplInternal internalPlayer;
    private boolean isPriorityTaskManagerRegistered;
    private final ListenerSet<Player.Listener> listeners;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private long maxSeekToPreviousPositionMs;
    private MediaMetadata mediaMetadata;
    private final MediaSource.Factory mediaSourceFactory;
    private final List<MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;
    private Surface ownedSurface;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private final Timeline.Period period;
    final Player.Commands permanentAvailableCommands;
    private PlaybackInfo playbackInfo;
    private final HandlerWrapper playbackInfoUpdateHandler;
    private final ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private boolean playerReleased;
    private MediaMetadata playlistMetadata;
    private ExoPlayer.PreloadConfiguration preloadConfiguration;
    private int priority;
    private PriorityTaskManager priorityTaskManager;
    private final Renderer[] renderers;
    private int repeatMode;
    private boolean scrubbingModeEnabled;
    private ScrubbingModeParameters scrubbingModeParameters;
    private final Renderer[] secondaryRenderers;
    private long seekBackIncrementMs;
    private long seekForwardIncrementMs;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private ShuffleOrder shuffleOrder;
    private boolean skipSilenceEnabled;
    private SphericalGLSurfaceView sphericalGLSurfaceView;
    private MediaMetadata staticAndDynamicMediaMetadata;
    private final StreamVolumeManager streamVolumeManager;
    private final StuckPlayerDetector stuckPlayerDetector;
    private final SuitableOutputChecker suitableOutputChecker;
    private SurfaceHolder surfaceHolder;
    private boolean surfaceHolderSurfaceIsVideoOutput;
    private Size surfaceSize;
    private TextureView textureView;
    private boolean throwsWhenUsingWrongThread;
    private final TrackSelector trackSelector;
    private float unmuteVolume;
    private final boolean useLazyPreparation;
    private int videoChangeFrameRateStrategy;
    private DecoderCounters videoDecoderCounters;
    private Format videoFormat;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final CodecParameterListenerManager videoListenerManager;
    private Object videoOutput;
    private int videoScalingMode;
    private VideoSize videoSize;
    private final VirtualDeviceIdChangeListener virtualDeviceIdChangeListener;
    private float volume;
    private final WakeLockManager wakeLockManager;
    private final WifiLockManager wifiLockManager;
    private final Player wrappingPlayer;

    static {
        MediaLibraryInfo.registerModule("media3.exoplayer");
    }

    public ExoPlayerImpl(ExoPlayer.Builder builder, Player wrappingPlayer) {
        Looper playbackLooper;
        int wakeMode;
        int i;
        try {
            Log.i(TAG, "Init " + Integer.toHexString(System.identityHashCode(this)) + " [" + MediaLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "]");
            this.applicationContext = builder.context.getApplicationContext();
            this.analyticsCollector = builder.analyticsCollectorFunction.apply(builder.clock);
            this.priority = builder.priority;
            this.priorityTaskManager = builder.priorityTaskManager;
            this.audioAttributes = builder.audioAttributes;
            this.videoScalingMode = builder.videoScalingMode;
            this.videoChangeFrameRateStrategy = builder.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = builder.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = builder.detachSurfaceTimeoutMs;
            this.componentListener = new ComponentListener();
            this.frameMetadataListener = new FrameMetadataListener();
            Handler eventHandler = new Handler(builder.looper);
            RenderersFactory renderersFactory = builder.renderersFactorySupplier.get();
            this.renderers = renderersFactory.createRenderers(eventHandler, this.componentListener, this.componentListener, this.componentListener, this.componentListener);
            Preconditions.checkState(this.renderers.length > 0);
            this.secondaryRenderers = new Renderer[this.renderers.length];
            for (int i2 = 0; i2 < this.secondaryRenderers.length; i2++) {
                Handler eventHandler2 = eventHandler;
                eventHandler = eventHandler2;
                this.secondaryRenderers[i2] = renderersFactory.createSecondaryRenderer(this.renderers[i2], eventHandler2, this.componentListener, this.componentListener, this.componentListener, this.componentListener);
            }
            this.trackSelector = builder.trackSelectorSupplier.get();
            this.mediaSourceFactory = builder.mediaSourceFactorySupplier.get();
            this.bandwidthMeter = builder.bandwidthMeterSupplier.get();
            this.useLazyPreparation = builder.useLazyPreparation;
            this.seekParameters = builder.seekParameters;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.maxSeekToPreviousPositionMs = builder.maxSeekToPreviousPositionMs;
            this.scrubbingModeParameters = builder.scrubbingModeParameters;
            this.pauseAtEndOfMediaItems = builder.pauseAtEndOfMediaItems;
            this.applicationLooper = builder.looper;
            this.clock = builder.clock;
            this.wrappingPlayer = wrappingPlayer == null ? this : wrappingPlayer;
            this.listeners = new ListenerSet<>(this.applicationLooper, this.clock, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda26
                @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
                public final void invoke(Object obj, FlagSet flagSet) {
                    this.f$0.m7857lambda$new$0$androidxmedia3exoplayerExoPlayerImpl((Player.Listener) obj, flagSet);
                }
            });
            this.audioOffloadListeners = new CopyOnWriteArraySet<>();
            this.mediaSourceHolderSnapshots = new ArrayList();
            this.shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
            this.preloadConfiguration = ExoPlayer.PreloadConfiguration.DEFAULT;
            this.emptyTrackSelectorResult = new TrackSelectorResult(new RendererConfiguration[this.renderers.length], new ExoTrackSelection[this.renderers.length], Tracks.EMPTY, null);
            this.period = new Timeline.Period();
            this.permanentAvailableCommands = new Player.Commands.Builder().addAll(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32).addIf(29, this.trackSelector.isSetParametersSupported()).addIf(23, builder.deviceVolumeControlEnabled).addIf(25, builder.deviceVolumeControlEnabled).addIf(33, builder.deviceVolumeControlEnabled).addIf(26, builder.deviceVolumeControlEnabled).addIf(34, builder.deviceVolumeControlEnabled).build();
            this.availableCommands = new Player.Commands.Builder().addAll(this.permanentAvailableCommands).add(4).add(10).build();
            this.playbackInfoUpdateHandler = this.clock.createHandler(this.applicationLooper, null);
            this.playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda27
                @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
                public final void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                    this.f$0.m7859lambda$new$2$androidxmedia3exoplayerExoPlayerImpl(playbackInfoUpdate);
                }
            };
            this.playbackInfo = PlaybackInfo.createDummy(this.emptyTrackSelectorResult);
            this.analyticsCollector.setPlayer(this.wrappingPlayer, this.applicationLooper);
            PlayerId playerId = new PlayerId(builder.playerName);
            this.internalPlayer = new ExoPlayerImplInternal(this.applicationContext, this.renderers, this.secondaryRenderers, this.trackSelector, this.emptyTrackSelectorResult, builder.loadControlSupplier.get(), this.bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, this.analyticsCollector, this.seekParameters, builder.livePlaybackSpeedControl, builder.releaseTimeoutMs, this.pauseAtEndOfMediaItems, builder.dynamicSchedulingEnabled, this.applicationLooper, this.clock, this.playbackInfoUpdateListener, playerId, builder.playbackLooperProvider, this.preloadConfiguration, this.frameMetadataListener, builder.avoidLoadingWhileEnded);
            Looper playbackLooper2 = this.internalPlayer.getPlaybackLooper();
            this.volume = 1.0f;
            this.repeatMode = 0;
            this.mediaMetadata = MediaMetadata.EMPTY;
            this.playlistMetadata = MediaMetadata.EMPTY;
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
            this.maskingWindowIndex = -1;
            this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
            this.throwsWhenUsingWrongThread = true;
            addListener(this.analyticsCollector);
            this.bandwidthMeter.addEventListener(new Handler(this.applicationLooper), this.analyticsCollector);
            addAudioOffloadListener(this.componentListener);
            if (builder.foregroundModeTimeoutMs > 0) {
                this.internalPlayer.experimentalSetForegroundModeTimeoutMs(builder.foregroundModeTimeoutMs);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                Api31.registerMediaMetricsListener(this.applicationContext, this, builder.usePlatformDiagnostics, playerId);
            }
            this.audioSessionIdState = new BackgroundThreadStateHandler<>(0, playbackLooper2, this.applicationLooper, this.clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda28
                @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    this.f$0.onAudioSessionIdChanged(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                }
            });
            this.audioSessionIdState.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7860lambda$new$3$androidxmedia3exoplayerExoPlayerImpl();
                }
            });
            this.audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.context, playbackLooper2, builder.looper, this.componentListener, this.clock);
            this.audioBecomingNoisyManager.setEnabled(builder.handleAudioBecomingNoisy);
            if (builder.suppressPlaybackOnUnsuitableOutput) {
                this.suitableOutputChecker = builder.suitableOutputChecker;
                this.suitableOutputChecker.enable(new SuitableOutputChecker.Callback() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda30
                    @Override // androidx.media3.exoplayer.SuitableOutputChecker.Callback
                    public final void onSelectedOutputSuitabilityChanged(boolean z) {
                        this.f$0.onSelectedOutputSuitabilityChanged(z);
                    }
                }, this.applicationContext, this.applicationLooper, playbackLooper2, this.clock);
                playbackLooper2 = playbackLooper2;
            } else {
                this.suitableOutputChecker = null;
            }
            if (builder.deviceVolumeControlEnabled) {
                Looper playbackLooper3 = playbackLooper2;
                playbackLooper = playbackLooper3;
                this.streamVolumeManager = new StreamVolumeManager(builder.context, this.componentListener, this.audioAttributes.getVolumeControlStream(), playbackLooper3, this.applicationLooper, this.clock);
            } else {
                playbackLooper = playbackLooper2;
                this.streamVolumeManager = null;
            }
            int wakeMode2 = builder.wakeMode;
            if (builder.wakeModeSet) {
                wakeMode = wakeMode2;
            } else {
                if (builder.stuckBufferingDetectionTimeoutMs == Integer.MAX_VALUE || builder.stuckPlayingDetectionTimeoutMs == Integer.MAX_VALUE || builder.stuckPlayingNotEndingTimeoutMs == Integer.MAX_VALUE || builder.stuckSuppressedDetectionTimeoutMs == Integer.MAX_VALUE) {
                    i = 0;
                } else {
                    i = 1;
                }
                int wakeMode3 = i;
                wakeMode = wakeMode3;
            }
            this.wakeLockManager = new WakeLockManager(builder.context, playbackLooper, this.clock);
            this.wakeLockManager.setEnabled(wakeMode != 0);
            this.wifiLockManager = new WifiLockManager(builder.context, playbackLooper, this.clock);
            int i3 = 2;
            this.wifiLockManager.setEnabled(wakeMode == 2);
            this.deviceInfo = DeviceInfo.UNKNOWN;
            this.videoSize = VideoSize.UNKNOWN;
            this.surfaceSize = Size.UNKNOWN;
            this.virtualDeviceIdChangeListener = Build.VERSION.SDK_INT >= 34 ? new VirtualDeviceIdChangeListener(builder.context) : null;
            this.audioListenerManager = new CodecParameterListenerManager(1);
            this.videoListenerManager = new CodecParameterListenerManager(i3);
            this.stuckPlayerDetector = new StuckPlayerDetector(this, this.componentListener, this.clock, builder.stuckBufferingDetectionTimeoutMs, builder.stuckPlayingDetectionTimeoutMs, builder.stuckPlayingNotEndingTimeoutMs, builder.stuckSuppressedDetectionTimeoutMs);
            this.internalPlayer.setScrubbingModeParameters(this.scrubbingModeParameters);
            this.internalPlayer.setAudioAttributes(this.audioAttributes, builder.handleAudioFocus);
            sendRendererMessage(1, 3, this.audioAttributes);
            sendRendererMessage(2, 4, Integer.valueOf(this.videoScalingMode));
            sendRendererMessage(2, 5, Integer.valueOf(this.videoChangeFrameRateStrategy));
            sendRendererMessage(1, 9, Boolean.valueOf(this.skipSilenceEnabled));
            sendRendererMessage(6, 8, this.frameMetadataListener);
            sendRendererMessage(16, Integer.valueOf(this.priority));
            if (builder.audioOutputProvider != null) {
                sendRendererMessage(1, 20, builder.audioOutputProvider);
            }
        } finally {
            this.constructorFinished.open();
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ void m7857lambda$new$0$androidxmedia3exoplayerExoPlayerImpl(Player.Listener listener, FlagSet flags) {
        listener.onEvents(this.wrappingPlayer, new Player.Events(flags));
    }

    /* JADX INFO: renamed from: lambda$new$2$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ void m7859lambda$new$2$androidxmedia3exoplayerExoPlayerImpl(final ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7858lambda$new$1$androidxmedia3exoplayerExoPlayerImpl(playbackInfoUpdate);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$3$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ void m7860lambda$new$3$androidxmedia3exoplayerExoPlayerImpl() {
        this.audioSessionIdState.setStateInBackground(Integer.valueOf(Util.generateAudioSessionIdV21(this.applicationContext)));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean isSleepingForOffload() {
        verifyApplicationThread();
        return this.playbackInfo.sleepingForOffload;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // androidx.media3.common.Player
    public Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Clock getClock() {
        return this.clock;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener listener) {
        this.audioOffloadListeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener listener) {
        verifyApplicationThread();
        this.audioOffloadListeners.remove(listener);
    }

    @Override // androidx.media3.common.Player
    public Player.Commands getAvailableCommands() {
        verifyApplicationThread();
        return this.availableCommands;
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.playbackInfo.playbackState;
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackSuppressionReason() {
        verifyApplicationThread();
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // androidx.media3.common.Player
    public ExoPlaybackException getPlayerError() {
        verifyApplicationThread();
        return this.playbackInfo.playbackError;
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        verifyApplicationThread();
        if (this.playbackInfo.playbackState != 1) {
            return;
        }
        PlaybackInfo playbackInfo = this.playbackInfo.copyWithPlaybackError(null);
        PlaybackInfo playbackInfo2 = maskPlaybackState(playbackInfo, playbackInfo.timeline.isEmpty() ? 4 : 2);
        this.pendingOperationAcks++;
        this.internalPlayer.prepare();
        updatePlaybackInfo(playbackInfo2, 1, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        verifyApplicationThread();
        setMediaSource(mediaSource);
        prepare();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean resetPosition, boolean resetState) {
        verifyApplicationThread();
        setMediaSource(mediaSource, resetPosition);
        prepare();
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> mediaItems, boolean resetPosition) {
        verifyApplicationThread();
        setMediaSources(createMediaSources(mediaItems), resetPosition);
    }

    @Override // androidx.media3.common.Player
    public void setMediaItems(List<MediaItem> mediaItems, int startIndex, long startPositionMs) {
        verifyApplicationThread();
        setMediaSources(createMediaSources(mediaItems), startIndex, startPositionMs);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, long startPositionMs) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource), 0, startPositionMs);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSource(MediaSource mediaSource, boolean resetPosition) {
        verifyApplicationThread();
        setMediaSources(Collections.singletonList(mediaSource), resetPosition);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> mediaSources) {
        verifyApplicationThread();
        setMediaSources(mediaSources, true);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> mediaSources, boolean resetPosition) {
        verifyApplicationThread();
        setMediaSourcesInternal(mediaSources, -1, C.TIME_UNSET, resetPosition);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMediaSources(List<MediaSource> mediaSources, int startWindowIndex, long startPositionMs) {
        verifyApplicationThread();
        setMediaSourcesInternal(mediaSources, startWindowIndex, startPositionMs, false);
    }

    @Override // androidx.media3.common.Player
    public void addMediaItems(int index, List<MediaItem> mediaItems) {
        verifyApplicationThread();
        addMediaSources(index, createMediaSources(mediaItems));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSource(MediaSource mediaSource) {
        verifyApplicationThread();
        addMediaSources(Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSource(int index, MediaSource mediaSource) {
        verifyApplicationThread();
        addMediaSources(index, Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSources(List<MediaSource> mediaSources) {
        verifyApplicationThread();
        addMediaSources(this.mediaSourceHolderSnapshots.size(), mediaSources);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addMediaSources(int index, List<MediaSource> mediaSources) {
        verifyApplicationThread();
        Preconditions.checkArgument(index >= 0);
        int index2 = Math.min(index, this.mediaSourceHolderSnapshots.size());
        if (this.playbackInfo.timeline.isEmpty()) {
            setMediaSources(mediaSources, this.maskingWindowIndex == -1);
        } else {
            PlaybackInfo newPlaybackInfo = addMediaSourcesInternal(this.playbackInfo, index2, mediaSources);
            updatePlaybackInfo(newPlaybackInfo, 0, false, 5, C.TIME_UNSET, -1, false);
        }
    }

    @Override // androidx.media3.common.Player
    public void removeMediaItems(int fromIndex, int toIndex) {
        verifyApplicationThread();
        Preconditions.checkArgument(fromIndex >= 0 && toIndex >= fromIndex);
        int playlistSize = this.mediaSourceHolderSnapshots.size();
        int toIndex2 = Math.min(toIndex, playlistSize);
        if (fromIndex >= playlistSize || fromIndex == toIndex2) {
            return;
        }
        PlaybackInfo newPlaybackInfo = removeMediaItemsInternal(this.playbackInfo, fromIndex, toIndex2);
        boolean positionDiscontinuity = !newPlaybackInfo.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid);
        updatePlaybackInfo(newPlaybackInfo, 0, positionDiscontinuity, 4, getCurrentPositionUsInternal(newPlaybackInfo), -1, false);
    }

    @Override // androidx.media3.common.Player
    public void moveMediaItems(int fromIndex, int toIndex, int newFromIndex) {
        verifyApplicationThread();
        Preconditions.checkArgument(fromIndex >= 0 && fromIndex <= toIndex && newFromIndex >= 0);
        int playlistSize = this.mediaSourceHolderSnapshots.size();
        int toIndex2 = Math.min(toIndex, playlistSize);
        int newFromIndex2 = Math.min(newFromIndex, playlistSize - (toIndex2 - fromIndex));
        if (fromIndex >= playlistSize || fromIndex == toIndex2 || fromIndex == newFromIndex2) {
            return;
        }
        Timeline oldTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        Util.moveItems(this.mediaSourceHolderSnapshots, fromIndex, toIndex2, newFromIndex2);
        this.shuffleOrder = this.shuffleOrder.cloneAndMove(fromIndex, toIndex2, newFromIndex2);
        Timeline newTimeline = createMaskingTimeline();
        PlaybackInfo newPlaybackInfo = maskTimelineAndPosition(this.playbackInfo, newTimeline, getPeriodPositionUsAfterTimelineChanged(oldTimeline, newTimeline, getCurrentWindowIndexInternal(this.playbackInfo), getContentPositionInternal(this.playbackInfo)));
        this.internalPlayer.moveMediaSources(fromIndex, toIndex2, newFromIndex2, this.shuffleOrder);
        updatePlaybackInfo(newPlaybackInfo, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // androidx.media3.common.Player
    public void replaceMediaItems(int fromIndex, int toIndex, List<MediaItem> mediaItems) {
        verifyApplicationThread();
        Preconditions.checkArgument(fromIndex >= 0 && toIndex >= fromIndex);
        int playlistSize = this.mediaSourceHolderSnapshots.size();
        if (fromIndex > playlistSize) {
            return;
        }
        int toIndex2 = Math.min(toIndex, playlistSize);
        if (canUpdateMediaSourcesWithMediaItems(fromIndex, toIndex2, mediaItems)) {
            updateMediaSourcesWithMediaItems(fromIndex, toIndex2, mediaItems);
            return;
        }
        List<MediaSource> mediaSources = createMediaSources(mediaItems);
        if (this.playbackInfo.timeline.isEmpty()) {
            setMediaSources(mediaSources, this.maskingWindowIndex == -1);
            return;
        }
        PlaybackInfo newPlaybackInfo = removeMediaItemsInternal(addMediaSourcesInternal(this.playbackInfo, toIndex2, mediaSources), fromIndex, toIndex2);
        boolean positionDiscontinuity = true ^ newPlaybackInfo.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid);
        updatePlaybackInfo(newPlaybackInfo, 0, positionDiscontinuity, 4, getCurrentPositionUsInternal(newPlaybackInfo), -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        verifyApplicationThread();
        Preconditions.checkArgument(shuffleOrder.getLength() == this.mediaSourceHolderSnapshots.size());
        this.shuffleOrder = shuffleOrder;
        Timeline timeline = createMaskingTimeline();
        PlaybackInfo newPlaybackInfo = maskTimelineAndPosition(this.playbackInfo, timeline, maskWindowPositionMsOrGetPeriodPositionUs(timeline, getCurrentMediaItemIndex(), getCurrentPosition()));
        this.pendingOperationAcks++;
        this.internalPlayer.setShuffleOrder(shuffleOrder);
        updatePlaybackInfo(newPlaybackInfo, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public ShuffleOrder getShuffleOrder() {
        verifyApplicationThread();
        return this.shuffleOrder;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPauseAtEndOfMediaItems(boolean pauseAtEndOfMediaItems) {
        verifyApplicationThread();
        if (this.pauseAtEndOfMediaItems == pauseAtEndOfMediaItems) {
            return;
        }
        this.pauseAtEndOfMediaItems = pauseAtEndOfMediaItems;
        this.internalPlayer.setPauseAtEndOfWindow(pauseAtEndOfMediaItems);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean getPauseAtEndOfMediaItems() {
        verifyApplicationThread();
        return this.pauseAtEndOfMediaItems;
    }

    @Override // androidx.media3.common.Player
    public void setPlayWhenReady(boolean playWhenReady) {
        verifyApplicationThread();
        updatePlayWhenReady(playWhenReady, 1);
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.playbackInfo.playWhenReady;
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(final int repeatMode) {
        verifyApplicationThread();
        if (this.repeatMode != repeatMode) {
            this.repeatMode = repeatMode;
            this.internalPlayer.setRepeatMode(repeatMode);
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda22
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(repeatMode);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.repeatMode;
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(final boolean shuffleModeEnabled) {
        verifyApplicationThread();
        if (this.shuffleModeEnabled != shuffleModeEnabled) {
            this.shuffleModeEnabled = shuffleModeEnabled;
            this.internalPlayer.setShuffleModeEnabled(shuffleModeEnabled);
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda24
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(shuffleModeEnabled);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.shuffleModeEnabled;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPreloadConfiguration(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        verifyApplicationThread();
        if (this.preloadConfiguration.equals(preloadConfiguration)) {
            return;
        }
        this.preloadConfiguration = preloadConfiguration;
        this.internalPlayer.setPreloadConfiguration(preloadConfiguration);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public ExoPlayer.PreloadConfiguration getPreloadConfiguration() {
        return this.preloadConfiguration;
    }

    @Override // androidx.media3.common.Player
    public boolean isLoading() {
        verifyApplicationThread();
        return this.playbackInfo.isLoading;
    }

    @Override // androidx.media3.common.BasePlayer
    protected void seekTo(int mediaItemIndex, long positionMs, int seekCommand, boolean isRepeatingCurrentItem) {
        verifyApplicationThread();
        if (mediaItemIndex == -1) {
            return;
        }
        Preconditions.checkArgument(mediaItemIndex >= 0);
        Timeline timeline = this.playbackInfo.timeline;
        if (!timeline.isEmpty() && mediaItemIndex >= timeline.getWindowCount()) {
            return;
        }
        this.analyticsCollector.notifySeekStarted();
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            Log.w(TAG, "seekTo ignored because an ad is playing");
            ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
            playbackInfoUpdate.incrementPendingOperationAcks(1);
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(playbackInfoUpdate);
            return;
        }
        PlaybackInfo newPlaybackInfo = this.playbackInfo;
        if (this.playbackInfo.playbackState == 3 || (this.playbackInfo.playbackState == 4 && !timeline.isEmpty())) {
            newPlaybackInfo = maskPlaybackState(this.playbackInfo, 2);
        }
        int oldMaskingMediaItemIndex = getCurrentMediaItemIndex();
        PlaybackInfo newPlaybackInfo2 = maskTimelineAndPosition(newPlaybackInfo, timeline, maskWindowPositionMsOrGetPeriodPositionUs(timeline, mediaItemIndex, positionMs));
        this.internalPlayer.seekTo(timeline, mediaItemIndex, Util.msToUs(positionMs));
        updatePlaybackInfo(newPlaybackInfo2, 0, true, 1, getCurrentPositionUsInternal(newPlaybackInfo2), oldMaskingMediaItemIndex, isRepeatingCurrentItem);
    }

    @Override // androidx.media3.common.Player
    public long getSeekBackIncrement() {
        verifyApplicationThread();
        return this.seekBackIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public long getSeekForwardIncrement() {
        verifyApplicationThread();
        return this.seekForwardIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public long getMaxSeekToPreviousPosition() {
        verifyApplicationThread();
        return this.maxSeekToPreviousPositionMs;
    }

    @Override // androidx.media3.common.Player
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo newPlaybackInfo = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        this.pendingOperationAcks++;
        this.internalPlayer.setPlaybackParameters(playbackParameters);
        updatePlaybackInfo(newPlaybackInfo, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return this.playbackInfo.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setSeekParameters(SeekParameters seekParameters) {
        verifyApplicationThread();
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        if (!this.seekParameters.equals(seekParameters)) {
            this.seekParameters = seekParameters;
            this.internalPlayer.setSeekParameters(seekParameters);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public SeekParameters getSeekParameters() {
        verifyApplicationThread();
        return this.seekParameters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setMaxSeekToPreviousPositionMs(final long maxSeekToPreviousPositionMs) {
        verifyApplicationThread();
        Preconditions.checkArgument(maxSeekToPreviousPositionMs >= 0);
        if (this.maxSeekToPreviousPositionMs == maxSeekToPreviousPositionMs) {
            return;
        }
        this.maxSeekToPreviousPositionMs = maxSeekToPreviousPositionMs;
        this.listeners.sendEvent(18, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda25
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onMaxSeekToPreviousPositionChanged(maxSeekToPreviousPositionMs);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setSeekBackIncrementMs(final long seekBackIncrementMs) {
        verifyApplicationThread();
        Preconditions.checkArgument(seekBackIncrementMs > 0);
        if (this.seekBackIncrementMs == seekBackIncrementMs) {
            return;
        }
        this.seekBackIncrementMs = seekBackIncrementMs;
        this.listeners.sendEvent(16, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda20
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSeekBackIncrementChanged(seekBackIncrementMs);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setSeekForwardIncrementMs(final long seekForwardIncrementMs) {
        verifyApplicationThread();
        Preconditions.checkArgument(seekForwardIncrementMs > 0);
        if (this.seekForwardIncrementMs == seekForwardIncrementMs) {
            return;
        }
        this.seekForwardIncrementMs = seekForwardIncrementMs;
        this.listeners.sendEvent(17, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda31
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSeekForwardIncrementChanged(seekForwardIncrementMs);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setForegroundMode(boolean foregroundMode) {
        verifyApplicationThread();
        if (this.foregroundMode != foregroundMode) {
            this.foregroundMode = foregroundMode;
            if (!this.internalPlayer.setForegroundMode(foregroundMode)) {
                stopInternal(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(2), 1003));
            }
        }
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        verifyApplicationThread();
        stopInternal(null);
        this.currentCueGroup = new CueGroup(ImmutableList.of(), this.playbackInfo.positionUs);
    }

    @Override // androidx.media3.common.Player
    public void release() {
        Log.i(TAG, "Release " + Integer.toHexString(System.identityHashCode(this)) + " [" + MediaLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "] [" + MediaLibraryInfo.registeredModules() + "]");
        verifyApplicationThread();
        this.audioBecomingNoisyManager.setEnabled(false);
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.release();
        }
        this.wakeLockManager.setStayAwake(false);
        this.wifiLockManager.setStayAwake(false);
        if (this.suitableOutputChecker != null) {
            this.suitableOutputChecker.disable();
        }
        if (this.virtualDeviceIdChangeListener != null && Build.VERSION.SDK_INT >= 34) {
            this.virtualDeviceIdChangeListener.release();
        }
        this.stuckPlayerDetector.release();
        if (!this.internalPlayer.release()) {
            this.listeners.sendEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda19
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerError(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(1), 1003));
                }
            });
        }
        this.listeners.release();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        this.bandwidthMeter.removeEventListener(this.analyticsCollector);
        if (this.playbackInfo.sleepingForOffload) {
            this.playbackInfo = this.playbackInfo.copyWithEstimatedPosition();
        }
        this.playbackInfo = maskPlaybackState(this.playbackInfo, 1);
        this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(this.playbackInfo.periodId);
        this.playbackInfo.bufferedPositionUs = this.playbackInfo.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
        this.analyticsCollector.release();
        removeSurfaceCallbacks();
        if (this.ownedSurface != null) {
            this.ownedSurface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Preconditions.checkNotNull(this.priorityTaskManager)).remove(this.priority);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
        this.playerReleased = true;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean isReleased() {
        verifyApplicationThread();
        return this.playerReleased;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        verifyApplicationThread();
        return createMessageInternal(target);
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        if (this.playbackInfo.timeline.isEmpty()) {
            if (this.maskingWindowIndex == -1) {
                return 0;
            }
            return this.maskingWindowIndex;
        }
        return this.playbackInfo.timeline.getIndexOfPeriod(this.playbackInfo.periodId.periodUid);
    }

    @Override // androidx.media3.common.Player
    public int getCurrentMediaItemIndex() {
        verifyApplicationThread();
        int currentWindowIndex = getCurrentWindowIndexInternal(this.playbackInfo);
        if (currentWindowIndex == -1) {
            return 0;
        }
        return currentWindowIndex;
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            MediaSource.MediaPeriodId periodId = this.playbackInfo.periodId;
            this.playbackInfo.timeline.getPeriodByUid(periodId.periodUid, this.period);
            long adDurationUs = this.period.getAdDurationUs(periodId.adGroupIndex, periodId.adIndexInAdGroup);
            return Util.usToMs(adDurationUs);
        }
        return getContentDuration();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return Util.usToMs(getCurrentPositionUsInternal(this.playbackInfo));
    }

    @Override // androidx.media3.common.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            if (this.playbackInfo.loadingMediaPeriodId.equals(this.playbackInfo.periodId)) {
                return Util.usToMs(this.playbackInfo.bufferedPositionUs);
            }
            return getDuration();
        }
        return getContentBufferedPosition();
    }

    @Override // androidx.media3.common.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return Util.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.playbackInfo.periodId.isAd();
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        verifyApplicationThread();
        return getContentPositionInternal(this.playbackInfo);
    }

    @Override // androidx.media3.common.Player
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowPositionMs;
        }
        long j = this.playbackInfo.loadingMediaPeriodId.windowSequenceNumber;
        long j2 = this.playbackInfo.periodId.windowSequenceNumber;
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (j != j2) {
            return playbackInfo.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
        }
        long contentBufferedPositionUs = playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            Timeline.Period loadingPeriod = this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.loadingMediaPeriodId.periodUid, this.period);
            contentBufferedPositionUs = loadingPeriod.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            if (contentBufferedPositionUs == Long.MIN_VALUE) {
                contentBufferedPositionUs = loadingPeriod.durationUs;
            }
        }
        return Util.usToMs(periodPositionUsToWindowPositionUs(this.playbackInfo.timeline, this.playbackInfo.loadingMediaPeriodId, contentBufferedPositionUs));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getRendererCount() {
        verifyApplicationThread();
        return this.renderers.length;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getRendererType(int index) {
        verifyApplicationThread();
        return this.renderers[index].getTrackType();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Renderer getRenderer(int index) {
        verifyApplicationThread();
        return this.renderers[index];
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Renderer getSecondaryRenderer(int index) {
        verifyApplicationThread();
        return this.secondaryRenderers[index];
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackSelector getTrackSelector() {
        verifyApplicationThread();
        return this.trackSelector;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackGroupArray getCurrentTrackGroups() {
        verifyApplicationThread();
        return this.playbackInfo.trackGroups;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public TrackSelectionArray getCurrentTrackSelections() {
        verifyApplicationThread();
        return new TrackSelectionArray(this.playbackInfo.trackSelectorResult.selections);
    }

    @Override // androidx.media3.common.Player
    public Tracks getCurrentTracks() {
        verifyApplicationThread();
        return this.playbackInfo.trackSelectorResult.tracks;
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThread();
        TrackSelectionParameters parameters = this.trackSelector.getParameters();
        if (this.scrubbingModeEnabled) {
            return parameters.buildUpon().setDisabledTrackTypes(this.disabledTrackTypesWithoutScrubbingMode).build();
        }
        return parameters;
    }

    @Override // androidx.media3.common.Player
    public void setTrackSelectionParameters(final TrackSelectionParameters parameters) {
        TrackSelectionParameters internalParameters;
        verifyApplicationThread();
        if (!this.trackSelector.isSetParametersSupported()) {
            return;
        }
        TrackSelectionParameters publicParametersBeforeUpdate = getTrackSelectionParameters();
        if (this.scrubbingModeEnabled) {
            this.disabledTrackTypesWithoutScrubbingMode = parameters.disabledTrackTypes;
            internalParameters = addDisabledTrackTypes(parameters, this.scrubbingModeParameters.disabledTrackTypes);
        } else {
            internalParameters = parameters;
        }
        if (!internalParameters.equals(this.trackSelector.getParameters())) {
            this.trackSelector.setParameters(internalParameters);
        }
        if (!publicParametersBeforeUpdate.equals(parameters)) {
            this.listeners.sendEvent(19, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda34
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTrackSelectionParametersChanged(parameters);
                }
            });
        }
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getMediaMetadata() {
        verifyApplicationThread();
        return this.mediaMetadata;
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata getPlaylistMetadata() {
        verifyApplicationThread();
        return this.playlistMetadata;
    }

    @Override // androidx.media3.common.Player
    public void setPlaylistMetadata(MediaMetadata playlistMetadata) {
        verifyApplicationThread();
        Preconditions.checkNotNull(playlistMetadata);
        if (playlistMetadata.equals(this.playlistMetadata)) {
            return;
        }
        this.playlistMetadata = playlistMetadata;
        this.listeners.sendEvent(15, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda23
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                this.f$0.m7862xaa6f66ed((Player.Listener) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setPlaylistMetadata$11$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ void m7862xaa6f66ed(Player.Listener listener) {
        listener.onPlaylistMetadataChanged(this.playlistMetadata);
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return this.playbackInfo.timeline;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoEffects(List<Effect> videoEffects) {
        verifyApplicationThread();
        try {
            Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class);
            sendRendererMessage(2, 13, videoEffects);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            throw new IllegalStateException("Could not find required lib-effect dependencies.", e);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoScalingMode(int videoScalingMode) {
        verifyApplicationThread();
        this.videoScalingMode = videoScalingMode;
        sendRendererMessage(2, 4, Integer.valueOf(videoScalingMode));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getVideoScalingMode() {
        verifyApplicationThread();
        return this.videoScalingMode;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoChangeFrameRateStrategy(int videoChangeFrameRateStrategy) {
        verifyApplicationThread();
        if (this.videoChangeFrameRateStrategy == videoChangeFrameRateStrategy) {
            return;
        }
        this.videoChangeFrameRateStrategy = videoChangeFrameRateStrategy;
        sendRendererMessage(2, 5, Integer.valueOf(videoChangeFrameRateStrategy));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public int getVideoChangeFrameRateStrategy() {
        verifyApplicationThread();
        return this.videoChangeFrameRateStrategy;
    }

    @Override // androidx.media3.common.Player
    public VideoSize getVideoSize() {
        verifyApplicationThread();
        return this.videoSize;
    }

    @Override // androidx.media3.common.Player
    public Size getSurfaceSize() {
        verifyApplicationThread();
        return this.surfaceSize;
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface() {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(null);
        maybeNotifySurfaceSizeChanged(0, 0);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface(Surface surface) {
        verifyApplicationThread();
        if (surface != null && surface == this.videoOutput) {
            clearVideoSurface();
        }
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurface(Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        setVideoOutputInternal(surface);
        int newSurfaceSize = surface == null ? 0 : -1;
        maybeNotifySurfaceSizeChanged(newSurfaceSize, newSurfaceSize);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            setVideoOutputInternal(surface);
            Rect surfaceSize = surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceSize.width(), surfaceSize.height());
        } else {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder != null && surfaceHolder == this.surfaceHolder) {
            clearVideoSurface();
        }
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThread();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            removeSurfaceCallbacks();
            setVideoOutputInternal(surfaceView);
            setNonVideoOutputSurfaceHolderInternal(surfaceView.getHolder());
        } else {
            if (surfaceView instanceof SphericalGLSurfaceView) {
                removeSurfaceCallbacks();
                this.sphericalGLSurfaceView = (SphericalGLSurfaceView) surfaceView;
                createMessageInternal(this.frameMetadataListener).setType(10000).setPayload(this.sphericalGLSurfaceView).send();
                this.sphericalGLSurfaceView.addVideoSurfaceListener(this.componentListener);
                setVideoOutputInternal(this.sphericalGLSurfaceView.getVideoSurface());
                setNonVideoOutputSurfaceHolderInternal(surfaceView.getHolder());
                return;
            }
            setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThread();
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoOutputInternal(null);
            maybeNotifySurfaceSizeChanged(0, 0);
        } else {
            setSurfaceTextureInternal(surfaceTexture);
            maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView != null && textureView == this.textureView) {
            clearVideoSurface();
        }
    }

    @Override // androidx.media3.common.Player
    public void setAudioAttributes(final AudioAttributes newAudioAttributes, boolean handleAudioFocus) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        if (!Objects.equals(this.audioAttributes, newAudioAttributes)) {
            this.audioAttributes = newAudioAttributes;
            sendRendererMessage(1, 3, newAudioAttributes);
            if (this.streamVolumeManager != null) {
                this.streamVolumeManager.setStreamType(newAudioAttributes.getVolumeControlStream());
            }
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda33
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onAudioAttributesChanged(newAudioAttributes);
                }
            });
        }
        this.internalPlayer.setAudioAttributes(this.audioAttributes, handleAudioFocus);
        this.listeners.flushEvents();
    }

    @Override // androidx.media3.common.Player
    public AudioAttributes getAudioAttributes() {
        verifyApplicationThread();
        return this.audioAttributes;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setAudioSessionId(final int audioSessionId) {
        verifyApplicationThread();
        if (this.audioSessionIdState.get().intValue() == audioSessionId) {
            return;
        }
        this.audioSessionIdState.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda17
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                int i = audioSessionId;
                return Integer.valueOf(i != 0 ? i : ((Integer) obj).intValue());
            }
        }, new Function() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda18
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.m7861x12b41e76(audioSessionId, (Integer) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setAudioSessionId$14$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ Integer m7861x12b41e76(int audioSessionId, Integer previousId) {
        int iGenerateAudioSessionIdV21;
        if (audioSessionId != 0) {
            iGenerateAudioSessionIdV21 = audioSessionId;
        } else {
            iGenerateAudioSessionIdV21 = Util.generateAudioSessionIdV21(this.applicationContext);
        }
        return Integer.valueOf(iGenerateAudioSessionIdV21);
    }

    @Override // androidx.media3.common.Player
    public int getAudioSessionId() {
        verifyApplicationThread();
        return this.audioSessionIdState.get().intValue();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        verifyApplicationThread();
        sendRendererMessage(1, 6, auxEffectInfo);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void clearAuxEffectInfo() {
        verifyApplicationThread();
        setAuxEffectInfo(new AuxEffectInfo(0, 0.0f));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPreferredAudioDevice(AudioDeviceInfo audioDeviceInfo) {
        verifyApplicationThread();
        sendRendererMessage(1, 12, audioDeviceInfo);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVirtualDeviceId(int virtualDeviceId) {
        verifyApplicationThread();
        sendRendererMessage(1, 19, Integer.valueOf(virtualDeviceId));
    }

    @Override // androidx.media3.common.Player
    public void setVolume(float volume) {
        verifyApplicationThread();
        final float volume2 = Util.constrainValue(volume, 0.0f, 1.0f);
        if (this.volume == volume2) {
            return;
        }
        this.unmuteVolume = volume2 != 0.0f ? volume2 : this.volume;
        this.volume = volume2;
        this.internalPlayer.setVolume(volume2);
        this.listeners.sendEvent(22, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda15
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onVolumeChanged(volume2);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public float getVolume() {
        verifyApplicationThread();
        return this.volume;
    }

    @Override // androidx.media3.common.Player
    public void mute() {
        verifyApplicationThread();
        if (this.volume != 0.0f) {
            setVolume(0.0f);
        }
    }

    @Override // androidx.media3.common.Player
    public void unmute() {
        verifyApplicationThread();
        if (this.volume == 0.0f && this.unmuteVolume != 0.0f) {
            setVolume(this.unmuteVolume);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean getSkipSilenceEnabled() {
        verifyApplicationThread();
        return this.skipSilenceEnabled;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setSkipSilenceEnabled(final boolean newSkipSilenceEnabled) {
        verifyApplicationThread();
        if (this.skipSilenceEnabled == newSkipSilenceEnabled) {
            return;
        }
        this.skipSilenceEnabled = newSkipSilenceEnabled;
        sendRendererMessage(1, 9, Boolean.valueOf(newSkipSilenceEnabled));
        this.listeners.sendEvent(23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda14
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(newSkipSilenceEnabled);
            }
        });
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setScrubbingModeEnabled(boolean scrubbingModeEnabled) {
        TrackSelectionParameters newTrackSelectionParameters;
        verifyApplicationThread();
        if (scrubbingModeEnabled == this.scrubbingModeEnabled) {
            return;
        }
        this.scrubbingModeEnabled = scrubbingModeEnabled;
        if (!this.scrubbingModeParameters.disabledTrackTypes.isEmpty() && this.trackSelector.isSetParametersSupported()) {
            TrackSelectionParameters previousTrackSelectionParameters = this.trackSelector.getParameters();
            if (scrubbingModeEnabled) {
                this.disabledTrackTypesWithoutScrubbingMode = previousTrackSelectionParameters.disabledTrackTypes;
                newTrackSelectionParameters = addDisabledTrackTypes(previousTrackSelectionParameters, this.scrubbingModeParameters.disabledTrackTypes);
            } else {
                newTrackSelectionParameters = previousTrackSelectionParameters.buildUpon().setDisabledTrackTypes(this.disabledTrackTypesWithoutScrubbingMode).build();
                this.disabledTrackTypesWithoutScrubbingMode = null;
            }
            if (!newTrackSelectionParameters.equals(previousTrackSelectionParameters)) {
                this.trackSelector.setParameters(newTrackSelectionParameters);
            }
        }
        this.internalPlayer.setScrubbingModeEnabled(scrubbingModeEnabled);
        maybeUpdatePlaybackSuppressionReason();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean isScrubbingModeEnabled() {
        verifyApplicationThread();
        return this.scrubbingModeEnabled;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
        verifyApplicationThread();
        if (this.scrubbingModeParameters.equals(scrubbingModeParameters)) {
            return;
        }
        ScrubbingModeParameters previousParameters = this.scrubbingModeParameters;
        this.scrubbingModeParameters = scrubbingModeParameters;
        this.internalPlayer.setScrubbingModeParameters(scrubbingModeParameters);
        if (this.scrubbingModeEnabled && this.trackSelector.isSetParametersSupported() && !previousParameters.disabledTrackTypes.equals(scrubbingModeParameters.disabledTrackTypes)) {
            TrackSelectionParameters trackSelectionParameters = addDisabledTrackTypes(getTrackSelectionParameters(), scrubbingModeParameters.disabledTrackTypes);
            if (!trackSelectionParameters.equals(this.trackSelector.getParameters())) {
                this.trackSelector.setParameters(trackSelectionParameters);
            }
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public ScrubbingModeParameters getScrubbingModeParameters() {
        verifyApplicationThread();
        return this.scrubbingModeParameters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public AnalyticsCollector getAnalyticsCollector() {
        verifyApplicationThread();
        return this.analyticsCollector;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addAnalyticsListener(AnalyticsListener listener) {
        this.analyticsCollector.addListener((AnalyticsListener) Preconditions.checkNotNull(listener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeAnalyticsListener(AnalyticsListener listener) {
        verifyApplicationThread();
        this.analyticsCollector.removeListener((AnalyticsListener) Preconditions.checkNotNull(listener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setHandleAudioBecomingNoisy(boolean handleAudioBecomingNoisy) {
        verifyApplicationThread();
        if (this.playerReleased) {
            return;
        }
        this.audioBecomingNoisyManager.setEnabled(handleAudioBecomingNoisy);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPriority(int priority) {
        verifyApplicationThread();
        if (this.priority == priority) {
            return;
        }
        if (this.isPriorityTaskManagerRegistered) {
            PriorityTaskManager priorityTaskManager = (PriorityTaskManager) Preconditions.checkNotNull(this.priorityTaskManager);
            priorityTaskManager.add(priority);
            priorityTaskManager.remove(this.priority);
        }
        this.priority = priority;
        sendRendererMessage(16, Integer.valueOf(priority));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
        verifyApplicationThread();
        if (Objects.equals(this.priorityTaskManager, priorityTaskManager)) {
            return;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Preconditions.checkNotNull(this.priorityTaskManager)).remove(this.priority);
        }
        if (priorityTaskManager != null && isLoading()) {
            priorityTaskManager.add(this.priority);
            this.isPriorityTaskManagerRegistered = true;
        } else {
            this.isPriorityTaskManagerRegistered = false;
        }
        this.priorityTaskManager = priorityTaskManager;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Format getVideoFormat() {
        verifyApplicationThread();
        return this.videoFormat;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public Format getAudioFormat() {
        verifyApplicationThread();
        return this.audioFormat;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public DecoderCounters getVideoDecoderCounters() {
        verifyApplicationThread();
        return this.videoDecoderCounters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public DecoderCounters getAudioDecoderCounters() {
        verifyApplicationThread();
        return this.audioDecoderCounters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener listener) {
        verifyApplicationThread();
        this.videoFrameMetadataListener = listener;
        createMessageInternal(this.frameMetadataListener).setType(7).setPayload(listener).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener listener) {
        verifyApplicationThread();
        if (this.videoFrameMetadataListener != listener) {
            return;
        }
        createMessageInternal(this.frameMetadataListener).setType(7).setPayload(null).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setCameraMotionListener(CameraMotionListener listener) {
        verifyApplicationThread();
        this.cameraMotionListener = listener;
        createMessageInternal(this.frameMetadataListener).setType(8).setPayload(listener).send();
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void clearCameraMotionListener(CameraMotionListener listener) {
        verifyApplicationThread();
        if (this.cameraMotionListener != listener) {
            return;
        }
        createMessageInternal(this.frameMetadataListener).setType(8).setPayload(null).send();
    }

    @Override // androidx.media3.common.Player
    public CueGroup getCurrentCues() {
        verifyApplicationThread();
        return this.currentCueGroup;
    }

    @Override // androidx.media3.common.Player
    public void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) Preconditions.checkNotNull(listener));
    }

    @Override // androidx.media3.common.Player
    public void removeListener(Player.Listener listener) {
        verifyApplicationThread();
        this.listeners.remove((Player.Listener) Preconditions.checkNotNull(listener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setWakeMode(int wakeMode) {
        verifyApplicationThread();
        switch (wakeMode) {
            case 0:
                this.wakeLockManager.setEnabled(false);
                this.wifiLockManager.setEnabled(false);
                break;
            case 1:
                this.wakeLockManager.setEnabled(true);
                this.wifiLockManager.setEnabled(false);
                break;
            case 2:
                this.wakeLockManager.setEnabled(true);
                this.wifiLockManager.setEnabled(true);
                break;
        }
    }

    @Override // androidx.media3.common.Player
    public DeviceInfo getDeviceInfo() {
        verifyApplicationThread();
        return this.deviceInfo;
    }

    @Override // androidx.media3.common.Player
    public int getDeviceVolume() {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            return this.streamVolumeManager.getVolume();
        }
        return 0;
    }

    @Override // androidx.media3.common.Player
    public boolean isDeviceMuted() {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            return this.streamVolumeManager.isMuted();
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceVolume(int volume) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.setVolume(volume, 1);
        }
    }

    @Override // androidx.media3.common.Player
    public void setDeviceVolume(int volume, int flags) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.setVolume(volume, flags);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void increaseDeviceVolume() {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.increaseVolume(1);
        }
    }

    @Override // androidx.media3.common.Player
    public void increaseDeviceVolume(int flags) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.increaseVolume(flags);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void decreaseDeviceVolume() {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.decreaseVolume(1);
        }
    }

    @Override // androidx.media3.common.Player
    public void decreaseDeviceVolume(int flags) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.decreaseVolume(flags);
        }
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public void setDeviceMuted(boolean muted) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.setMuted(muted, 1);
        }
    }

    @Override // androidx.media3.common.Player
    public void setDeviceMuted(boolean muted, int flags) {
        verifyApplicationThread();
        if (this.streamVolumeManager != null) {
            this.streamVolumeManager.setMuted(muted, flags);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public boolean isTunnelingEnabled() {
        verifyApplicationThread();
        for (RendererConfiguration config : this.playbackInfo.trackSelectorResult.rendererConfigurations) {
            if (config != null && config.tunneling) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setImageOutput(ImageOutput imageOutput) {
        verifyApplicationThread();
        sendRendererMessage(4, 15, imageOutput);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setAudioCodecParameters(CodecParameters codecParameters) {
        verifyApplicationThread();
        Preconditions.checkNotNull(codecParameters);
        sendRendererMessage(1, 21, codecParameters);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addAudioCodecParametersChangeListener(CodecParametersChangeListener listener, List<String> keys) {
        verifyApplicationThread();
        Preconditions.checkNotNull(listener);
        Preconditions.checkNotNull(keys);
        this.audioListenerManager.addListener(listener, keys);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeAudioCodecParametersChangeListener(CodecParametersChangeListener listener) {
        verifyApplicationThread();
        Preconditions.checkNotNull(listener);
        this.audioListenerManager.removeListener(listener);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void setVideoCodecParameters(CodecParameters codecParameters) {
        verifyApplicationThread();
        Preconditions.checkNotNull(codecParameters);
        sendRendererMessage(2, 21, codecParameters);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void addVideoCodecParametersChangeListener(CodecParametersChangeListener listener, List<String> keys) {
        verifyApplicationThread();
        Preconditions.checkNotNull(listener);
        Preconditions.checkNotNull(keys);
        this.videoListenerManager.addListener(listener, keys);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void removeVideoCodecParametersChangeListener(CodecParametersChangeListener listener) {
        verifyApplicationThread();
        Preconditions.checkNotNull(listener);
        this.videoListenerManager.removeListener(listener);
    }

    void setThrowsWhenUsingWrongThread(boolean throwsWhenUsingWrongThread) {
        this.throwsWhenUsingWrongThread = throwsWhenUsingWrongThread;
        this.listeners.setThrowsWhenUsingWrongThread(throwsWhenUsingWrongThread);
        if (this.analyticsCollector instanceof DefaultAnalyticsCollector) {
            ((DefaultAnalyticsCollector) this.analyticsCollector).setThrowsWhenUsingWrongThread(throwsWhenUsingWrongThread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal(ExoPlaybackException error) {
        PlaybackInfo playbackInfo;
        PlaybackInfo playbackInfo2 = this.playbackInfo.copyWithLoadingMediaPeriodId(this.playbackInfo.periodId);
        playbackInfo2.bufferedPositionUs = playbackInfo2.positionUs;
        playbackInfo2.totalBufferedDurationUs = 0L;
        PlaybackInfo playbackInfo3 = maskPlaybackState(playbackInfo2, 1);
        if (error == null) {
            playbackInfo = playbackInfo3;
        } else {
            playbackInfo = playbackInfo3.copyWithPlaybackError(error);
        }
        this.pendingOperationAcks++;
        this.internalPlayer.stop();
        updatePlaybackInfo(playbackInfo, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private int getCurrentWindowIndexInternal(PlaybackInfo playbackInfo) {
        if (playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowIndex;
        }
        return playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private long getContentPositionInternal(PlaybackInfo playbackInfo) {
        if (playbackInfo.periodId.isAd()) {
            playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period);
            if (playbackInfo.requestedContentPositionUs == C.TIME_UNSET) {
                return playbackInfo.timeline.getWindow(getCurrentWindowIndexInternal(playbackInfo), this.window).getDefaultPositionMs();
            }
            return this.period.getPositionInWindowMs() + Util.usToMs(playbackInfo.requestedContentPositionUs);
        }
        return Util.usToMs(getCurrentPositionUsInternal(playbackInfo));
    }

    private long getCurrentPositionUsInternal(PlaybackInfo playbackInfo) {
        long positionUs;
        if (playbackInfo.timeline.isEmpty()) {
            return Util.msToUs(this.maskingWindowPositionMs);
        }
        if (playbackInfo.sleepingForOffload) {
            positionUs = playbackInfo.getEstimatedPositionUs();
        } else {
            positionUs = playbackInfo.positionUs;
        }
        if (playbackInfo.periodId.isAd()) {
            return positionUs;
        }
        return periodPositionUsToWindowPositionUs(playbackInfo.timeline, playbackInfo.periodId, positionUs);
    }

    private List<MediaSource> createMediaSources(List<MediaItem> mediaItems) {
        List<MediaSource> mediaSources = new ArrayList<>();
        for (int i = 0; i < mediaItems.size(); i++) {
            mediaSources.add(this.mediaSourceFactory.createMediaSource(mediaItems.get(i)));
        }
        return mediaSources;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: handlePlaybackInfo, reason: merged with bridge method [inline-methods] */
    public void m7858lambda$new$1$androidxmedia3exoplayerExoPlayerImpl(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        int oldMaskingMediaItemIndex;
        long discontinuityWindowStartPositionUs;
        long jPeriodPositionUsToWindowPositionUs;
        this.pendingOperationAcks -= playbackInfoUpdate.operationAcks;
        boolean z = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (this.pendingOperationAcks == 0) {
            Timeline newTimeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.isEmpty() && newTimeline.isEmpty()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
            }
            if (!newTimeline.isEmpty()) {
                List<Timeline> timelines = ((PlaylistTimeline) newTimeline).getChildTimelines();
                Preconditions.checkState(timelines.size() == this.mediaSourceHolderSnapshots.size());
                for (int i = 0; i < timelines.size(); i++) {
                    this.mediaSourceHolderSnapshots.get(i).updateTimeline(timelines.get(i));
                }
            }
            boolean positionDiscontinuity = false;
            if (!this.pendingDiscontinuity) {
                oldMaskingMediaItemIndex = -1;
                discontinuityWindowStartPositionUs = -9223372036854775807L;
            } else {
                boolean oldAndNewTimelineEmpty = playbackInfoUpdate.playbackInfo.timeline.isEmpty() && this.playbackInfo.timeline.isEmpty();
                boolean sameMediaPeriodId = playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId);
                boolean samePositon = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs;
                if (oldAndNewTimelineEmpty || (sameMediaPeriodId && samePositon)) {
                    z = false;
                }
                positionDiscontinuity = z;
                if (!positionDiscontinuity) {
                    oldMaskingMediaItemIndex = -1;
                    discontinuityWindowStartPositionUs = -9223372036854775807L;
                } else {
                    int oldMaskingMediaItemIndex2 = getCurrentMediaItemIndex();
                    if (!newTimeline.isEmpty() && !playbackInfoUpdate.playbackInfo.periodId.isAd()) {
                        jPeriodPositionUsToWindowPositionUs = periodPositionUsToWindowPositionUs(newTimeline, playbackInfoUpdate.playbackInfo.periodId, playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs);
                    } else {
                        jPeriodPositionUsToWindowPositionUs = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    }
                    long discontinuityWindowStartPositionUs2 = jPeriodPositionUsToWindowPositionUs;
                    oldMaskingMediaItemIndex = oldMaskingMediaItemIndex2;
                    discontinuityWindowStartPositionUs = discontinuityWindowStartPositionUs2;
                }
            }
            this.pendingDiscontinuity = false;
            updatePlaybackInfo(playbackInfoUpdate.playbackInfo, 1, positionDiscontinuity, this.pendingDiscontinuityReason, discontinuityWindowStartPositionUs, oldMaskingMediaItemIndex, false);
        }
    }

    private void updatePlaybackInfo(final PlaybackInfo playbackInfo, final int timelineChangeReason, boolean positionDiscontinuity, final int positionDiscontinuityReason, long discontinuityWindowStartPositionUs, int oldMaskingMediaItemIndex, boolean repeatCurrentMediaItem) {
        boolean mediaItemTransitioned;
        boolean playbackStateChanged;
        PlaybackInfo previousPlaybackInfo = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        boolean timelineChanged = !previousPlaybackInfo.timeline.equals(playbackInfo.timeline);
        Pair<Boolean, Integer> mediaItemTransitionInfo = evaluateMediaItemTransitionReason(playbackInfo, previousPlaybackInfo, positionDiscontinuity, positionDiscontinuityReason, timelineChanged, repeatCurrentMediaItem);
        boolean mediaItemTransitioned2 = ((Boolean) mediaItemTransitionInfo.first).booleanValue();
        final int mediaItemTransitionReason = ((Integer) mediaItemTransitionInfo.second).intValue();
        MediaItem mediaItem = null;
        if (mediaItemTransitioned2) {
            if (!playbackInfo.timeline.isEmpty()) {
                int windowIndex = playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
                mediaItem = playbackInfo.timeline.getWindow(windowIndex, this.window).mediaItem;
            }
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
        }
        if (mediaItemTransitioned2 || !previousPlaybackInfo.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(playbackInfo.staticMetadata).build();
        }
        MediaMetadata newMediaMetadata = buildUpdatedMediaMetadata();
        boolean metadataChanged = !newMediaMetadata.equals(this.mediaMetadata);
        this.mediaMetadata = newMediaMetadata;
        boolean playWhenReadyChanged = previousPlaybackInfo.playWhenReady != playbackInfo.playWhenReady;
        boolean playbackStateChanged2 = previousPlaybackInfo.playbackState != playbackInfo.playbackState;
        if (playbackStateChanged2 || playWhenReadyChanged) {
            updateWakeAndWifiLock();
        }
        boolean isLoadingChanged = previousPlaybackInfo.isLoading != playbackInfo.isLoading;
        if (isLoadingChanged) {
            updatePriorityTaskManagerForIsLoadingChange(playbackInfo.isLoading);
        }
        if (timelineChanged) {
            mediaItemTransitioned = mediaItemTransitioned2;
            this.listeners.queueEvent(0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    Player.Listener listener = (Player.Listener) obj;
                    listener.onTimelineChanged(playbackInfo.timeline, timelineChangeReason);
                }
            });
        } else {
            mediaItemTransitioned = mediaItemTransitioned2;
        }
        if (positionDiscontinuity) {
            final Player.PositionInfo previousPositionInfo = getPreviousPositionInfo(positionDiscontinuityReason, previousPlaybackInfo, oldMaskingMediaItemIndex);
            playbackStateChanged = playbackStateChanged2;
            final Player.PositionInfo positionInfo = getPositionInfo(discontinuityWindowStartPositionUs);
            this.listeners.queueEvent(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$18(positionDiscontinuityReason, previousPositionInfo, positionInfo, (Player.Listener) obj);
                }
            });
        } else {
            playbackStateChanged = playbackStateChanged2;
        }
        if (mediaItemTransitioned) {
            final MediaItem finalMediaItem = mediaItem;
            this.listeners.queueEvent(1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda6
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(finalMediaItem, mediaItemTransitionReason);
                }
            });
        }
        if (previousPlaybackInfo.playbackError != playbackInfo.playbackError) {
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda7
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlayerErrorChanged(playbackInfo.playbackError);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda8
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onPlayerError(playbackInfo.playbackError);
                    }
                });
            }
        }
        if (previousPlaybackInfo.trackSelectorResult != playbackInfo.trackSelectorResult) {
            this.trackSelector.onSelectionActivated(playbackInfo.trackSelectorResult.info);
            this.listeners.queueEvent(2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda9
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTracksChanged(playbackInfo.trackSelectorResult.tracks);
                }
            });
        }
        if (metadataChanged) {
            final MediaMetadata finalMediaMetadata = this.mediaMetadata;
            this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda10
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(finalMediaMetadata);
                }
            });
        }
        if (isLoadingChanged) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda11
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.lambda$updatePlaybackInfo$24(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (playbackStateChanged || playWhenReadyChanged) {
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda12
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    PlaybackInfo playbackInfo2 = playbackInfo;
                    ((Player.Listener) obj).onPlayerStateChanged(playbackInfo2.playWhenReady, playbackInfo2.playbackState);
                }
            });
        }
        if (playbackStateChanged) {
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda13
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackStateChanged(playbackInfo.playbackState);
                }
            });
        }
        if (playWhenReadyChanged || previousPlaybackInfo.playWhenReadyChangeReason != playbackInfo.playWhenReadyChangeReason) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    PlaybackInfo playbackInfo2 = playbackInfo;
                    ((Player.Listener) obj).onPlayWhenReadyChanged(playbackInfo2.playWhenReady, playbackInfo2.playWhenReadyChangeReason);
                }
            });
        }
        if (previousPlaybackInfo.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda2
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackSuppressionReasonChanged(playbackInfo.playbackSuppressionReason);
                }
            });
        }
        if (previousPlaybackInfo.isPlaying() != playbackInfo.isPlaying()) {
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda3
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onIsPlayingChanged(playbackInfo.isPlaying());
                }
            });
        }
        if (!previousPlaybackInfo.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onPlaybackParametersChanged(playbackInfo.playbackParameters);
                }
            });
        }
        updateAvailableCommands();
        this.listeners.flushEvents();
        if (previousPlaybackInfo.sleepingForOffload != playbackInfo.sleepingForOffload) {
            for (ExoPlayer.AudioOffloadListener listener : this.audioOffloadListeners) {
                listener.onSleepingForOffloadChanged(playbackInfo.sleepingForOffload);
            }
        }
    }

    static /* synthetic */ void lambda$updatePlaybackInfo$18(int positionDiscontinuityReason, Player.PositionInfo previousPositionInfo, Player.PositionInfo positionInfo, Player.Listener listener) {
        listener.onPositionDiscontinuity(positionDiscontinuityReason);
        listener.onPositionDiscontinuity(previousPositionInfo, positionInfo, positionDiscontinuityReason);
    }

    static /* synthetic */ void lambda$updatePlaybackInfo$24(PlaybackInfo newPlaybackInfo, Player.Listener listener) {
        listener.onLoadingChanged(newPlaybackInfo.isLoading);
        listener.onIsLoadingChanged(newPlaybackInfo.isLoading);
    }

    private Player.PositionInfo getPreviousPositionInfo(int positionDiscontinuityReason, PlaybackInfo oldPlaybackInfo, int oldMaskingMediaItemIndex) {
        Object oldWindowUid;
        Object oldPeriodUid;
        int oldMediaItemIndex;
        int oldPeriodIndex;
        MediaItem oldMediaItem;
        long oldPositionUs;
        long oldContentPositionUs;
        Timeline.Period oldPeriod = new Timeline.Period();
        if (oldPlaybackInfo.timeline.isEmpty()) {
            oldWindowUid = null;
            oldPeriodUid = null;
            oldMediaItemIndex = oldMaskingMediaItemIndex;
            oldPeriodIndex = oldMaskingMediaItemIndex;
            oldMediaItem = null;
        } else {
            Object oldPeriodUid2 = oldPlaybackInfo.periodId.periodUid;
            oldPlaybackInfo.timeline.getPeriodByUid(oldPeriodUid2, oldPeriod);
            int oldMediaItemIndex2 = oldPeriod.windowIndex;
            int oldPeriodIndex2 = oldPlaybackInfo.timeline.getIndexOfPeriod(oldPeriodUid2);
            Object oldWindowUid2 = oldPlaybackInfo.timeline.getWindow(oldMediaItemIndex2, this.window).uid;
            MediaItem oldMediaItem2 = this.window.mediaItem;
            oldWindowUid = oldWindowUid2;
            oldPeriodUid = oldPeriodUid2;
            oldMediaItemIndex = oldMediaItemIndex2;
            oldPeriodIndex = oldPeriodIndex2;
            oldMediaItem = oldMediaItem2;
        }
        if (positionDiscontinuityReason == 0) {
            if (oldPlaybackInfo.periodId.isAd()) {
                oldPositionUs = oldPeriod.getAdDurationUs(oldPlaybackInfo.periodId.adGroupIndex, oldPlaybackInfo.periodId.adIndexInAdGroup);
                oldContentPositionUs = getRequestedContentPositionUs(oldPlaybackInfo);
            } else if (oldPlaybackInfo.periodId.nextAdGroupIndex != -1) {
                oldPositionUs = getRequestedContentPositionUs(this.playbackInfo);
                oldContentPositionUs = oldPositionUs;
            } else {
                oldPositionUs = oldPeriod.positionInWindowUs + oldPeriod.durationUs;
                oldContentPositionUs = oldPositionUs;
            }
        } else if (oldPlaybackInfo.periodId.isAd()) {
            oldPositionUs = oldPlaybackInfo.positionUs;
            oldContentPositionUs = getRequestedContentPositionUs(oldPlaybackInfo);
        } else {
            oldPositionUs = oldPeriod.positionInWindowUs + oldPlaybackInfo.positionUs;
            oldContentPositionUs = oldPositionUs;
        }
        return new Player.PositionInfo(oldWindowUid, oldMediaItemIndex, oldMediaItem, oldPeriodUid, oldPeriodIndex, Util.usToMs(oldPositionUs), Util.usToMs(oldContentPositionUs), oldPlaybackInfo.periodId.adGroupIndex, oldPlaybackInfo.periodId.adIndexInAdGroup);
    }

    private Player.PositionInfo getPositionInfo(long discontinuityWindowStartPositionUs) {
        Object newPeriodUid;
        int newPeriodIndex;
        MediaItem newMediaItem;
        Object newWindowUid;
        long jUsToMs;
        int newMediaItemIndex = getCurrentMediaItemIndex();
        int newPeriodIndex2 = getCurrentPeriodIndex();
        if (this.playbackInfo.timeline.isEmpty()) {
            newPeriodUid = null;
            newPeriodIndex = newPeriodIndex2;
            newMediaItem = null;
            newWindowUid = null;
        } else {
            Object newPeriodUid2 = this.playbackInfo.periodId.periodUid;
            this.playbackInfo.timeline.getPeriodByUid(newPeriodUid2, this.period);
            int newPeriodIndex3 = this.playbackInfo.timeline.getIndexOfPeriod(newPeriodUid2);
            Object newWindowUid2 = this.playbackInfo.timeline.getWindow(newMediaItemIndex, this.window).uid;
            MediaItem newMediaItem2 = this.window.mediaItem;
            newPeriodUid = newPeriodUid2;
            newPeriodIndex = newPeriodIndex3;
            newMediaItem = newMediaItem2;
            newWindowUid = newWindowUid2;
        }
        long positionMs = Util.usToMs(discontinuityWindowStartPositionUs);
        if (this.playbackInfo.periodId.isAd()) {
            jUsToMs = Util.usToMs(getRequestedContentPositionUs(this.playbackInfo));
        } else {
            jUsToMs = positionMs;
        }
        return new Player.PositionInfo(newWindowUid, newMediaItemIndex, newMediaItem, newPeriodUid, newPeriodIndex, positionMs, jUsToMs, this.playbackInfo.periodId.adGroupIndex, this.playbackInfo.periodId.adIndexInAdGroup);
    }

    private static long getRequestedContentPositionUs(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period);
        if (playbackInfo.requestedContentPositionUs == C.TIME_UNSET) {
            return playbackInfo.timeline.getWindow(period.windowIndex, window).getDefaultPositionUs();
        }
        return period.getPositionInWindowUs() + playbackInfo.requestedContentPositionUs;
    }

    private Pair<Boolean, Integer> evaluateMediaItemTransitionReason(PlaybackInfo playbackInfo, PlaybackInfo oldPlaybackInfo, boolean positionDiscontinuity, int positionDiscontinuityReason, boolean timelineChanged, boolean repeatCurrentMediaItem) {
        boolean z;
        boolean z2;
        int transitionReason;
        Timeline oldTimeline = oldPlaybackInfo.timeline;
        Timeline newTimeline = playbackInfo.timeline;
        if (newTimeline.isEmpty() && oldTimeline.isEmpty()) {
            return new Pair<>(false, -1);
        }
        if (newTimeline.isEmpty() != oldTimeline.isEmpty()) {
            return new Pair<>(true, 3);
        }
        int oldWindowIndex = oldTimeline.getPeriodByUid(oldPlaybackInfo.periodId.periodUid, this.period).windowIndex;
        Object oldWindowUid = oldTimeline.getWindow(oldWindowIndex, this.window).uid;
        int newWindowIndex = newTimeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
        Object newWindowUid = newTimeline.getWindow(newWindowIndex, this.window).uid;
        if (!oldWindowUid.equals(newWindowUid)) {
            if (positionDiscontinuity && positionDiscontinuityReason == 0) {
                transitionReason = 1;
            } else if (positionDiscontinuity && positionDiscontinuityReason == 1) {
                transitionReason = 2;
            } else if (timelineChanged) {
                transitionReason = 3;
            } else {
                throw new IllegalStateException();
            }
            return new Pair<>(true, Integer.valueOf(transitionReason));
        }
        if (positionDiscontinuity && positionDiscontinuityReason == 0) {
            z = true;
            if (oldPlaybackInfo.periodId.windowSequenceNumber < playbackInfo.periodId.windowSequenceNumber) {
                return new Pair<>(true, 0);
            }
        } else {
            z = true;
        }
        if (positionDiscontinuity && positionDiscontinuityReason == (z2 = z) && repeatCurrentMediaItem) {
            return new Pair<>(Boolean.valueOf(z2), 2);
        }
        return new Pair<>(false, -1);
    }

    private void updateAvailableCommands() {
        Player.Commands previousAvailableCommands = this.availableCommands;
        this.availableCommands = Util.getAvailableCommands(this.wrappingPlayer, this.permanentAvailableCommands);
        if (!this.availableCommands.equals(previousAvailableCommands)) {
            this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda35
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    this.f$0.m7863xe2cbb286((Player.Listener) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$updateAvailableCommands$31$androidx-media3-exoplayer-ExoPlayerImpl, reason: not valid java name */
    /* synthetic */ void m7863xe2cbb286(Player.Listener listener) {
        listener.onAvailableCommandsChanged(this.availableCommands);
    }

    private void setMediaSourcesInternal(List<MediaSource> mediaSources, int startWindowIndex, long startPositionMs, boolean resetToDefaultPosition) {
        int startWindowIndex2;
        int maskingPlaybackState;
        int currentWindowIndex = getCurrentWindowIndexInternal(this.playbackInfo);
        long currentPositionMs = getCurrentPosition();
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> holders = setMediaSourceHolders(mediaSources, startWindowIndex);
        Timeline timeline = createMaskingTimeline();
        if (!timeline.isEmpty() && startWindowIndex >= timeline.getWindowCount()) {
            throw new IllegalSeekPositionException(timeline, startWindowIndex, startPositionMs);
        }
        long startPositionMs2 = startPositionMs;
        if (resetToDefaultPosition) {
            int startWindowIndex3 = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            startPositionMs2 = C.TIME_UNSET;
            startWindowIndex2 = startWindowIndex3;
        } else if (startWindowIndex != -1) {
            startWindowIndex2 = startWindowIndex;
        } else {
            startPositionMs2 = currentPositionMs;
            startWindowIndex2 = currentWindowIndex;
        }
        PlaybackInfo newPlaybackInfo = maskTimelineAndPosition(this.playbackInfo, timeline, maskWindowPositionMsOrGetPeriodPositionUs(timeline, startWindowIndex2, startPositionMs2));
        if (newPlaybackInfo.playbackState == 1) {
            maskingPlaybackState = 1;
        } else if (timeline.isEmpty()) {
            maskingPlaybackState = 4;
        } else if (startWindowIndex2 == -1) {
            maskingPlaybackState = newPlaybackInfo.playbackState;
        } else {
            int maskingPlaybackState2 = timeline.getWindowCount();
            if (startWindowIndex2 >= maskingPlaybackState2) {
                maskingPlaybackState = 4;
            } else {
                maskingPlaybackState = 2;
            }
        }
        PlaybackInfo newPlaybackInfo2 = maskPlaybackState(newPlaybackInfo, maskingPlaybackState);
        this.internalPlayer.setMediaSources(holders, startWindowIndex2, Util.msToUs(startPositionMs2), this.shuffleOrder);
        boolean positionDiscontinuity = (this.playbackInfo.periodId.periodUid.equals(newPlaybackInfo2.periodId.periodUid) || this.playbackInfo.timeline.isEmpty()) ? false : true;
        updatePlaybackInfo(newPlaybackInfo2, 0, positionDiscontinuity, 4, getCurrentPositionUsInternal(newPlaybackInfo2), -1, false);
    }

    private List<MediaSourceList.MediaSourceHolder> setMediaSourceHolders(List<MediaSource> mediaSources, int startIndex) {
        this.mediaSourceHolderSnapshots.clear();
        List<MediaSourceList.MediaSourceHolder> holders = new ArrayList<>();
        for (int i = 0; i < mediaSources.size(); i++) {
            MediaSourceList.MediaSourceHolder holder = new MediaSourceList.MediaSourceHolder(mediaSources.get(i), this.useLazyPreparation);
            holders.add(holder);
            this.mediaSourceHolderSnapshots.add(i, new MediaSourceHolderSnapshot(holder.uid, holder.mediaSource));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndSet(holders.size(), startIndex);
        return holders;
    }

    private List<MediaSourceList.MediaSourceHolder> addMediaSourceHolders(int index, List<MediaSource> mediaSources) {
        List<MediaSourceList.MediaSourceHolder> holders = new ArrayList<>();
        for (int i = 0; i < mediaSources.size(); i++) {
            MediaSourceList.MediaSourceHolder holder = new MediaSourceList.MediaSourceHolder(mediaSources.get(i), this.useLazyPreparation);
            holders.add(holder);
            this.mediaSourceHolderSnapshots.add(i + index, new MediaSourceHolderSnapshot(holder.uid, holder.mediaSource));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(index, holders.size());
        return holders;
    }

    private PlaybackInfo addMediaSourcesInternal(PlaybackInfo playbackInfo, int index, List<MediaSource> mediaSources) {
        Timeline oldTimeline = playbackInfo.timeline;
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> holders = addMediaSourceHolders(index, mediaSources);
        Timeline newTimeline = createMaskingTimeline();
        PlaybackInfo newPlaybackInfo = maskTimelineAndPosition(playbackInfo, newTimeline, getPeriodPositionUsAfterTimelineChanged(oldTimeline, newTimeline, getCurrentWindowIndexInternal(playbackInfo), getContentPositionInternal(playbackInfo)));
        this.internalPlayer.addMediaSources(index, holders, this.shuffleOrder);
        return newPlaybackInfo;
    }

    private PlaybackInfo removeMediaItemsInternal(PlaybackInfo playbackInfo, int fromIndex, int toIndex) {
        int currentIndex = getCurrentWindowIndexInternal(playbackInfo);
        long contentPositionMs = getContentPositionInternal(playbackInfo);
        Timeline oldTimeline = playbackInfo.timeline;
        this.pendingOperationAcks++;
        removeMediaSourceHolders(fromIndex, toIndex);
        Timeline newTimeline = createMaskingTimeline();
        PlaybackInfo newPlaybackInfo = maskTimelineAndPosition(playbackInfo, newTimeline, getPeriodPositionUsAfterTimelineChanged(oldTimeline, newTimeline, currentIndex, contentPositionMs));
        if (newPlaybackInfo.playbackState != 1 && newPlaybackInfo.playbackState != 4 && currentIndex >= fromIndex && currentIndex < toIndex) {
            Object periodUid = playbackInfo.periodId.periodUid;
            int resolvedWindowIndex = ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, periodUid, oldTimeline, newTimeline);
            if (resolvedWindowIndex == -1) {
                newPlaybackInfo = maskPlaybackState(newPlaybackInfo, 4);
            }
        }
        this.internalPlayer.removeMediaSources(fromIndex, toIndex, this.shuffleOrder);
        return newPlaybackInfo;
    }

    private void removeMediaSourceHolders(int fromIndex, int toIndexExclusive) {
        for (int i = toIndexExclusive - 1; i >= fromIndex; i--) {
            this.mediaSourceHolderSnapshots.remove(i);
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndRemove(fromIndex, toIndexExclusive);
    }

    private Timeline createMaskingTimeline() {
        return new PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private PlaybackInfo maskTimelineAndPosition(PlaybackInfo playbackInfo, Timeline timeline, Pair<Object, Long> periodPositionUs) {
        long oldContentPositionUs;
        long maskedBufferedPositionUs;
        Preconditions.checkArgument(timeline.isEmpty() || periodPositionUs != null);
        Timeline oldTimeline = playbackInfo.timeline;
        long oldContentPositionMs = getContentPositionInternal(playbackInfo);
        PlaybackInfo playbackInfo2 = playbackInfo.copyWithTimeline(timeline);
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId dummyMediaPeriodId = PlaybackInfo.getDummyPeriodForEmptyTimeline();
            long positionUs = Util.msToUs(this.maskingWindowPositionMs);
            PlaybackInfo playbackInfo3 = playbackInfo2.copyWithNewPosition(dummyMediaPeriodId, positionUs, positionUs, positionUs, 0L, TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, ImmutableList.of()).copyWithLoadingMediaPeriodId(dummyMediaPeriodId);
            playbackInfo3.bufferedPositionUs = playbackInfo3.positionUs;
            return playbackInfo3;
        }
        Object oldPeriodUid = playbackInfo2.periodId.periodUid;
        boolean playingPeriodChanged = !oldPeriodUid.equals(((Pair) Util.castNonNull(periodPositionUs)).first);
        MediaSource.MediaPeriodId newPeriodId = playingPeriodChanged ? new MediaSource.MediaPeriodId(periodPositionUs.first) : playbackInfo2.periodId;
        long newContentPositionUs = ((Long) periodPositionUs.second).longValue();
        long oldContentPositionUs2 = Util.msToUs(oldContentPositionMs);
        if (oldTimeline.isEmpty()) {
            oldContentPositionUs = oldContentPositionUs2;
        } else {
            long oldContentPositionUs3 = oldContentPositionUs2 - oldTimeline.getPeriodByUid(oldPeriodUid, this.period).getPositionInWindowUs();
            if (!playingPeriodChanged && oldContentPositionUs3 - newContentPositionUs == 1) {
                long oldDurationUs = oldTimeline.getPeriodByUid(oldPeriodUid, this.period).durationUs;
                boolean endOfSameStream = oldContentPositionUs3 == oldDurationUs;
                if (endOfSameStream) {
                    oldContentPositionUs = oldContentPositionUs3 - 1;
                }
            } else {
                oldContentPositionUs = oldContentPositionUs3;
            }
        }
        if (playingPeriodChanged || newContentPositionUs < oldContentPositionUs) {
            long newContentPositionUs2 = newContentPositionUs;
            Preconditions.checkState(!newPeriodId.isAd());
            PlaybackInfo playbackInfo4 = playbackInfo2.copyWithNewPosition(newPeriodId, newContentPositionUs2, newContentPositionUs2, newContentPositionUs2, 0L, playingPeriodChanged ? TrackGroupArray.EMPTY : playbackInfo2.trackGroups, playingPeriodChanged ? this.emptyTrackSelectorResult : playbackInfo2.trackSelectorResult, playingPeriodChanged ? ImmutableList.of() : playbackInfo2.staticMetadata).copyWithLoadingMediaPeriodId(newPeriodId);
            playbackInfo4.bufferedPositionUs = newContentPositionUs2;
            return playbackInfo4;
        }
        if (newContentPositionUs == oldContentPositionUs) {
            int loadingPeriodIndex = timeline.getIndexOfPeriod(playbackInfo2.loadingMediaPeriodId.periodUid);
            if (loadingPeriodIndex == -1 || timeline.getPeriod(loadingPeriodIndex, this.period).windowIndex != timeline.getPeriodByUid(newPeriodId.periodUid, this.period).windowIndex) {
                timeline.getPeriodByUid(newPeriodId.periodUid, this.period);
                boolean zIsAd = newPeriodId.isAd();
                Timeline.Period period = this.period;
                if (zIsAd) {
                    maskedBufferedPositionUs = period.getAdDurationUs(newPeriodId.adGroupIndex, newPeriodId.adIndexInAdGroup);
                } else {
                    maskedBufferedPositionUs = period.durationUs;
                }
                long maskedBufferedPositionUs2 = maskedBufferedPositionUs;
                long maskedBufferedPositionUs3 = playbackInfo2.positionUs;
                long maskedBufferedPositionUs4 = playbackInfo2.positionUs;
                long maskedBufferedPositionUs5 = playbackInfo2.discontinuityStartPositionUs;
                playbackInfo2 = playbackInfo2.copyWithNewPosition(newPeriodId, maskedBufferedPositionUs3, maskedBufferedPositionUs4, maskedBufferedPositionUs5, maskedBufferedPositionUs2 - playbackInfo2.positionUs, playbackInfo2.trackGroups, playbackInfo2.trackSelectorResult, playbackInfo2.staticMetadata).copyWithLoadingMediaPeriodId(newPeriodId);
                playbackInfo2.bufferedPositionUs = maskedBufferedPositionUs2;
            }
            return playbackInfo2;
        }
        Preconditions.checkState(!newPeriodId.isAd());
        long maskedTotalBufferedDurationUs = Math.max(0L, playbackInfo2.totalBufferedDurationUs - (newContentPositionUs - oldContentPositionUs));
        long maskedBufferedPositionUs6 = playbackInfo2.bufferedPositionUs;
        if (playbackInfo2.loadingMediaPeriodId.equals(playbackInfo2.periodId)) {
            maskedBufferedPositionUs6 = newContentPositionUs + maskedTotalBufferedDurationUs;
        }
        PlaybackInfo playbackInfo5 = playbackInfo2.copyWithNewPosition(newPeriodId, newContentPositionUs, newContentPositionUs, newContentPositionUs, maskedTotalBufferedDurationUs, playbackInfo2.trackGroups, playbackInfo2.trackSelectorResult, playbackInfo2.staticMetadata);
        playbackInfo5.bufferedPositionUs = maskedBufferedPositionUs6;
        return playbackInfo5;
    }

    private static PlaybackInfo maskPlaybackState(PlaybackInfo playbackInfo, int playbackState) {
        PlaybackInfo playbackInfo2 = playbackInfo.copyWithPlaybackState(playbackState);
        if (playbackState == 1 || playbackState == 4) {
            return playbackInfo2.copyWithIsLoading(false);
        }
        return playbackInfo2;
    }

    private Pair<Object, Long> getPeriodPositionUsAfterTimelineChanged(Timeline oldTimeline, Timeline newTimeline, int currentWindowIndexInternal, long contentPositionMs) {
        boolean zIsEmpty = oldTimeline.isEmpty();
        long j = C.TIME_UNSET;
        if (zIsEmpty || newTimeline.isEmpty()) {
            boolean isCleared = !oldTimeline.isEmpty() && newTimeline.isEmpty();
            int i = isCleared ? -1 : currentWindowIndexInternal;
            if (!isCleared) {
                j = contentPositionMs;
            }
            return maskWindowPositionMsOrGetPeriodPositionUs(newTimeline, i, j);
        }
        Pair<Object, Long> oldPeriodPositionUs = oldTimeline.getPeriodPositionUs(this.window, this.period, currentWindowIndexInternal, Util.msToUs(contentPositionMs));
        Object periodUid = ((Pair) Util.castNonNull(oldPeriodPositionUs)).first;
        if (newTimeline.getIndexOfPeriod(periodUid) != -1) {
            return oldPeriodPositionUs;
        }
        int newWindowIndex = ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, periodUid, oldTimeline, newTimeline);
        if (newWindowIndex != -1) {
            return maskWindowPositionMsOrGetPeriodPositionUs(newTimeline, newWindowIndex, newTimeline.getWindow(newWindowIndex, this.window).getDefaultPositionMs());
        }
        return maskWindowPositionMsOrGetPeriodPositionUs(newTimeline, -1, C.TIME_UNSET);
    }

    private Pair<Object, Long> maskWindowPositionMsOrGetPeriodPositionUs(Timeline timeline, int windowIndex, long windowPositionMs) {
        int windowIndex2;
        if (timeline.isEmpty()) {
            this.maskingWindowIndex = windowIndex;
            this.maskingWindowPositionMs = windowPositionMs == C.TIME_UNSET ? 0L : windowPositionMs;
            return null;
        }
        if (windowIndex == -1 || windowIndex >= timeline.getWindowCount()) {
            int windowIndex3 = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            windowPositionMs = timeline.getWindow(windowIndex3, this.window).getDefaultPositionMs();
            windowIndex2 = windowIndex3;
        } else {
            windowIndex2 = windowIndex;
        }
        return timeline.getPeriodPositionUs(this.window, this.period, windowIndex2, Util.msToUs(windowPositionMs));
    }

    private long periodPositionUsToWindowPositionUs(Timeline timeline, MediaSource.MediaPeriodId periodId, long positionUs) {
        timeline.getPeriodByUid(periodId.periodUid, this.period);
        return positionUs + this.period.getPositionInWindowUs();
    }

    private PlayerMessage createMessageInternal(PlayerMessage.Target target) {
        int currentWindowIndex = getCurrentWindowIndexInternal(this.playbackInfo);
        return new PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, currentWindowIndex == -1 ? 0 : currentWindowIndex, this.clock, this.internalPlayer.getPlaybackLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaMetadata buildUpdatedMediaMetadata() {
        Timeline timeline = getCurrentTimeline();
        if (timeline.isEmpty()) {
            return this.staticAndDynamicMediaMetadata;
        }
        MediaItem mediaItem = timeline.getWindow(getCurrentMediaItemIndex(), this.window).mediaItem;
        return this.staticAndDynamicMediaMetadata.buildUpon().populate(mediaItem.mediaMetadata).build();
    }

    private void removeSurfaceCallbacks() {
        if (this.sphericalGLSurfaceView != null) {
            createMessageInternal(this.frameMetadataListener).setType(10000).setPayload(null).send();
            this.sphericalGLSurfaceView.removeVideoSurfaceListener(this.componentListener);
            this.sphericalGLSurfaceView = null;
        }
        if (this.textureView != null) {
            if (this.textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.w(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        if (this.surfaceHolder != null) {
            this.surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSurfaceTextureInternal(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        setVideoOutputInternal(surface);
        this.ownedSurface = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoOutputInternal(Object videoOutput) {
        boolean isReplacingVideoOutput = (this.videoOutput == null || this.videoOutput == videoOutput) ? false : true;
        long timeoutMs = isReplacingVideoOutput ? this.detachSurfaceTimeoutMs : C.TIME_UNSET;
        boolean isSuccess = this.internalPlayer.setVideoOutput(videoOutput, timeoutMs);
        if (isReplacingVideoOutput && this.videoOutput == this.ownedSurface) {
            this.ownedSurface.release();
            this.ownedSurface = null;
        }
        this.videoOutput = videoOutput;
        if (!isSuccess) {
            stopInternal(ExoPlaybackException.createForUnexpected(new ExoTimeoutException(3), 1003));
        }
    }

    private void setNonVideoOutputSurfaceHolderInternal(SurfaceHolder nonVideoOutputSurfaceHolder) {
        this.surfaceHolderSurfaceIsVideoOutput = false;
        this.surfaceHolder = nonVideoOutputSurfaceHolder;
        this.surfaceHolder.addCallback(this.componentListener);
        Surface surface = this.surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceSize = this.surfaceHolder.getSurfaceFrame();
            maybeNotifySurfaceSizeChanged(surfaceSize.width(), surfaceSize.height());
        } else {
            maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifySurfaceSizeChanged(final int width, final int height) {
        if (width != this.surfaceSize.getWidth() || height != this.surfaceSize.getHeight()) {
            this.surfaceSize = new Size(width, height);
            this.listeners.sendEvent(24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda16
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSurfaceSizeChanged(width, height);
                }
            });
            sendRendererMessage(2, 14, new Size(width, height));
        }
    }

    private void maybeUpdatePlaybackSuppressionReason() {
        updatePlayWhenReady(this.playbackInfo.playWhenReady, this.playbackInfo.playWhenReadyChangeReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayWhenReady(boolean playWhenReady, int playWhenReadyChangeReason) {
        int playbackSuppressionReason = computePlaybackSuppressionReason(playWhenReady);
        if (this.playbackInfo.playWhenReady == playWhenReady && this.playbackInfo.playbackSuppressionReason == playbackSuppressionReason && this.playbackInfo.playWhenReadyChangeReason == playWhenReadyChangeReason) {
            return;
        }
        this.pendingOperationAcks++;
        boolean z = this.playbackInfo.sleepingForOffload;
        PlaybackInfo newPlaybackInfo = this.playbackInfo;
        if (z) {
            newPlaybackInfo = newPlaybackInfo.copyWithEstimatedPosition();
        }
        PlaybackInfo newPlaybackInfo2 = newPlaybackInfo.copyWithPlayWhenReady(playWhenReady, playWhenReadyChangeReason, playbackSuppressionReason);
        this.internalPlayer.setPlayWhenReady(playWhenReady, playWhenReadyChangeReason, playbackSuppressionReason);
        updatePlaybackInfo(newPlaybackInfo2, 0, false, 5, C.TIME_UNSET, -1, false);
    }

    private int computePlaybackSuppressionReason(boolean playWhenReady) {
        if (this.scrubbingModeEnabled) {
            return 4;
        }
        if (this.suitableOutputChecker == null || this.suitableOutputChecker.isSelectedOutputSuitableForPlayback()) {
            return (this.playbackInfo.playbackSuppressionReason != 1 || playWhenReady) ? 0 : 1;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWakeAndWifiLock() {
        int playbackState = getPlaybackState();
        boolean z = false;
        switch (playbackState) {
            case 1:
            case 4:
                this.wakeLockManager.setStayAwake(false);
                this.wifiLockManager.setStayAwake(false);
                return;
            case 2:
            case 3:
                boolean isSleeping = isSleepingForOffload();
                WakeLockManager wakeLockManager = this.wakeLockManager;
                if (getPlayWhenReady() && !isSleeping) {
                    z = true;
                }
                wakeLockManager.setStayAwake(z);
                this.wifiLockManager.setStayAwake(getPlayWhenReady());
                return;
            default:
                throw new IllegalStateException();
        }
    }

    private void verifyApplicationThread() {
        this.constructorFinished.blockUninterruptible();
        if (Thread.currentThread() != getApplicationLooper().getThread()) {
            String message = Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), getApplicationLooper().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                throw new IllegalStateException(message);
            }
            Log.w(TAG, message, this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    private void sendRendererMessage(int messageType, Object payload) {
        sendRendererMessage(-1, messageType, payload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRendererMessage(int trackType, int messageType, Object payload) {
        for (Renderer renderer : this.renderers) {
            if (trackType == -1 || renderer.getTrackType() == trackType) {
                createMessageInternal(renderer).setType(messageType).setPayload(payload).send();
            }
        }
        for (Renderer renderer2 : this.secondaryRenderers) {
            if (renderer2 != null && (trackType == -1 || renderer2.getTrackType() == trackType)) {
                createMessageInternal(renderer2).setType(messageType).setPayload(payload).send();
            }
        }
    }

    private void updatePriorityTaskManagerForIsLoadingChange(boolean isLoading) {
        if (this.priorityTaskManager != null) {
            if (isLoading && !this.isPriorityTaskManagerRegistered) {
                this.priorityTaskManager.add(this.priority);
                this.isPriorityTaskManagerRegistered = true;
            } else if (!isLoading && this.isPriorityTaskManagerRegistered) {
                this.priorityTaskManager.remove(this.priority);
                this.isPriorityTaskManagerRegistered = false;
            }
        }
    }

    private boolean canUpdateMediaSourcesWithMediaItems(int fromIndex, int toIndex, List<MediaItem> mediaItems) {
        if (toIndex - fromIndex != mediaItems.size()) {
            return false;
        }
        for (int i = fromIndex; i < toIndex; i++) {
            MediaSource mediaSource = this.mediaSourceHolderSnapshots.get(i).mediaSource;
            if (!mediaSource.canUpdateMediaItem(mediaItems.get(i - fromIndex))) {
                return false;
            }
        }
        return true;
    }

    private void updateMediaSourcesWithMediaItems(int fromIndex, int toIndex, List<MediaItem> mediaItems) {
        this.pendingOperationAcks++;
        this.internalPlayer.updateMediaSourcesWithMediaItems(fromIndex, toIndex, mediaItems);
        for (int i = fromIndex; i < toIndex; i++) {
            MediaSourceHolderSnapshot snapshot = this.mediaSourceHolderSnapshots.get(i);
            snapshot.updateTimeline(TimelineWithUpdatedMediaItem.create(snapshot.getTimeline(), mediaItems.get(i - fromIndex)));
        }
        Timeline newTimeline = createMaskingTimeline();
        PlaybackInfo newPlaybackInfo = this.playbackInfo.copyWithTimeline(newTimeline);
        updatePlaybackInfo(newPlaybackInfo, 0, false, 4, C.TIME_UNSET, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSelectedOutputSuitabilityChanged(boolean isSelectedOutputSuitableForPlayback) {
        if (this.playerReleased) {
            return;
        }
        if (isSelectedOutputSuitableForPlayback) {
            if (this.playbackInfo.playbackSuppressionReason == 3) {
                maybeUpdatePlaybackSuppressionReason();
                return;
            }
            return;
        }
        maybeUpdatePlaybackSuppressionReason();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAudioSessionIdChanged(int oldAudioSessionId, final int newAudioSessionId) {
        verifyApplicationThread();
        sendRendererMessage(1, 10, Integer.valueOf(newAudioSessionId));
        sendRendererMessage(2, 10, Integer.valueOf(newAudioSessionId));
        this.listeners.sendEvent(21, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda32
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onAudioSessionIdChanged(newAudioSessionId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeviceInfo createDeviceInfo(StreamVolumeManager streamVolumeManager) {
        return new DeviceInfo.Builder(0).setMinVolume(streamVolumeManager != null ? streamVolumeManager.getMinVolume() : 0).setMaxVolume(streamVolumeManager != null ? streamVolumeManager.getMaxVolume() : 0).build();
    }

    private static TrackSelectionParameters addDisabledTrackTypes(TrackSelectionParameters parameters, ImmutableSet<Integer> trackTypesToDisable) {
        TrackSelectionParameters.Builder parametersBuilder = parameters.buildUpon();
        UnmodifiableIterator<Integer> it = trackTypesToDisable.iterator();
        while (it.hasNext()) {
            Integer trackType = it.next();
            parametersBuilder.setTrackTypeDisabled(trackType.intValue(), true);
        }
        return parametersBuilder.build();
    }

    private final class CodecParameterListenerManager {
        private CodecParameters lastNotifiedParameters;
        private final Map<CodecParametersChangeListener, List<String>> listeners;
        private final int trackType;

        private CodecParameterListenerManager(int trackType) {
            this.trackType = trackType;
            this.listeners = new HashMap();
            this.lastNotifiedParameters = CodecParameters.EMPTY;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addListener(CodecParametersChangeListener listener, List<String> keys) {
            this.listeners.put(listener, keys);
            updateAndSendSubscribedKeysToRenderer();
            CodecParameters listenerInitialState = createFilteredCodecParameters(this.lastNotifiedParameters, keys);
            listener.onCodecParametersChanged(listenerInitialState);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeListener(CodecParametersChangeListener listener) {
            if (this.listeners.remove(listener) != null) {
                updateAndSendSubscribedKeysToRenderer();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onParametersChanged(CodecParameters newParameters) {
            for (Map.Entry<CodecParametersChangeListener, List<String>> entry : new HashMap(this.listeners).entrySet()) {
                CodecParametersChangeListener listener = entry.getKey();
                List<String> listenerKeys = entry.getValue();
                CodecParameters listenerCurrentState = createFilteredCodecParameters(newParameters, listenerKeys);
                CodecParameters listenerPreviousState = createFilteredCodecParameters(this.lastNotifiedParameters, listenerKeys);
                if (!listenerCurrentState.equals(listenerPreviousState)) {
                    listener.onCodecParametersChanged(listenerCurrentState);
                }
            }
            this.lastNotifiedParameters = newParameters;
        }

        private void updateAndSendSubscribedKeysToRenderer() {
            ImmutableSet.Builder<String> newKeysBuilder = ImmutableSet.builder();
            for (List<String> keys : this.listeners.values()) {
                newKeysBuilder.addAll((Iterable<? extends String>) keys);
            }
            ExoPlayerImpl.this.sendRendererMessage(this.trackType, 22, newKeysBuilder.build());
        }

        private CodecParameters createFilteredCodecParameters(CodecParameters source, List<String> keys) {
            CodecParameters.Builder builder = source.buildUpon();
            Set<String> keysToKeep = new HashSet<>(keys);
            for (String key : source.keySet()) {
                if (!keysToKeep.contains(key)) {
                    builder.remove(key);
                }
            }
            return builder.build();
        }
    }

    private static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        private final MediaSource mediaSource;
        private Timeline timeline;
        private final Object uid;

        public MediaSourceHolderSnapshot(Object uid, MaskingMediaSource mediaSource) {
            this.uid = uid;
            this.mediaSource = mediaSource;
            this.timeline = mediaSource.getTimeline();
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Object getUid() {
            return this.uid;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Timeline getTimeline() {
            return this.timeline;
        }

        public void updateTimeline(Timeline timeline) {
            this.timeline = timeline;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioBecomingNoisyManager.Listener, StreamVolumeManager.Listener, ExoPlayer.AudioOffloadListener, StuckPlayerDetector.Callback {
        private ComponentListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters counters) {
            ExoPlayerImpl.this.videoDecoderCounters = counters;
            ExoPlayerImpl.this.analyticsCollector.onVideoEnabled(counters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderInitialized(decoderName, initializedTimestampMs, initializationDurationMs);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.videoFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onDroppedFrames(int count, long elapsed) {
            ExoPlayerImpl.this.analyticsCollector.onDroppedFrames(count, elapsed);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoSizeChanged(final VideoSize newVideoSize) {
            ExoPlayerImpl.this.videoSize = newVideoSize;
            ExoPlayerImpl.this.listeners.sendEvent(25, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(newVideoSize);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Object output, long renderTimeMs) {
            ExoPlayerImpl.this.analyticsCollector.onRenderedFirstFrame(output, renderTimeMs);
            if (ExoPlayerImpl.this.videoOutput == output) {
                ExoPlayerImpl.this.listeners.sendEvent(26, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda10
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDecoderReleased(String decoderName) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderReleased(decoderName);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters counters) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDisabled(counters);
            ExoPlayerImpl.this.videoFormat = null;
            ExoPlayerImpl.this.videoDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoFrameProcessingOffset(long totalProcessingOffsetUs, int frameCount) {
            ExoPlayerImpl.this.analyticsCollector.onVideoFrameProcessingOffset(totalProcessingOffsetUs, frameCount);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoCodecError(Exception videoCodecError) {
            ExoPlayerImpl.this.analyticsCollector.onVideoCodecError(videoCodecError);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioEnabled(DecoderCounters counters) {
            ExoPlayerImpl.this.audioDecoderCounters = counters;
            ExoPlayerImpl.this.analyticsCollector.onAudioEnabled(counters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String decoderName, long initializedTimestampMs, long initializationDurationMs) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderInitialized(decoderName, initializedTimestampMs, initializationDurationMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.audioFormat = format;
            ExoPlayerImpl.this.analyticsCollector.onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioPositionAdvancing(long playoutStartSystemTimeMs) {
            ExoPlayerImpl.this.analyticsCollector.onAudioPositionAdvancing(playoutStartSystemTimeMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioUnderrun(int bufferSize, long bufferSizeMs, long elapsedSinceLastFeedMs) {
            ExoPlayerImpl.this.analyticsCollector.onAudioUnderrun(bufferSize, bufferSizeMs, elapsedSinceLastFeedMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDecoderReleased(String decoderName) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderReleased(decoderName);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDisabled(DecoderCounters counters) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDisabled(counters);
            ExoPlayerImpl.this.audioFormat = null;
            ExoPlayerImpl.this.audioDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(final boolean newSkipSilenceEnabled) {
            if (ExoPlayerImpl.this.skipSilenceEnabled != newSkipSilenceEnabled) {
                ExoPlayerImpl.this.skipSilenceEnabled = newSkipSilenceEnabled;
                ExoPlayerImpl.this.listeners.sendEvent(23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onSkipSilenceEnabledChanged(newSkipSilenceEnabled);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioSinkError(Exception audioSinkError) {
            ExoPlayerImpl.this.analyticsCollector.onAudioSinkError(audioSinkError);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioCodecError(Exception audioCodecError) {
            ExoPlayerImpl.this.analyticsCollector.onAudioCodecError(audioCodecError);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig) {
            ExoPlayerImpl.this.analyticsCollector.onAudioTrackInitialized(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig) {
            ExoPlayerImpl.this.analyticsCollector.onAudioTrackReleased(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioSessionIdChanged(final int audioSessionId) {
            ExoPlayerImpl.this.audioSessionIdState.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(audioSessionId);
                }
            }, new Function() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(audioSessionId);
                }
            });
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioCodecParametersChanged(CodecParameters newParameters) {
            ExoPlayerImpl.this.audioListenerManager.onParametersChanged(newParameters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoCodecParametersChanged(CodecParameters newParameters) {
            ExoPlayerImpl.this.videoListenerManager.onParametersChanged(newParameters);
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final List<Cue> cues) {
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues((List<Cue>) cues);
                }
            });
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final CueGroup cueGroup) {
            ExoPlayerImpl.this.currentCueGroup = cueGroup;
            ExoPlayerImpl.this.listeners.sendEvent(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues(cueGroup);
                }
            });
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataOutput
        public void onMetadata(final Metadata metadata) {
            ExoPlayerImpl.this.staticAndDynamicMediaMetadata = ExoPlayerImpl.this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(metadata).build();
            MediaMetadata newMediaMetadata = ExoPlayerImpl.this.buildUpdatedMediaMetadata();
            if (!newMediaMetadata.equals(ExoPlayerImpl.this.mediaMetadata)) {
                ExoPlayerImpl.this.mediaMetadata = newMediaMetadata;
                ExoPlayerImpl.this.listeners.queueEvent(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        this.f$0.m7864x2c83eab9((Player.Listener) obj);
                    }
                });
            }
            ExoPlayerImpl.this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(metadata);
                }
            });
            ExoPlayerImpl.this.listeners.flushEvents();
        }

        /* JADX INFO: renamed from: lambda$onMetadata$6$androidx-media3-exoplayer-ExoPlayerImpl$ComponentListener, reason: not valid java name */
        /* synthetic */ void m7864x2c83eab9(Player.Listener listener) {
            listener.onMediaMetadataChanged(ExoPlayerImpl.this.mediaMetadata);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder holder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(holder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(width, height);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder holder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.setVideoOutputInternal(null);
            }
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
            ExoPlayerImpl.this.setSurfaceTextureInternal(surfaceTexture);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(width, height);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(width, height);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ExoPlayerImpl.this.setVideoOutputInternal(null);
            ExoPlayerImpl.this.maybeNotifySurfaceSizeChanged(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceCreated(Surface surface) {
            ExoPlayerImpl.this.setVideoOutputInternal(surface);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void onVideoSurfaceDestroyed(Surface surface) {
            ExoPlayerImpl.this.setVideoOutputInternal(null);
        }

        @Override // androidx.media3.common.audio.AudioBecomingNoisyManager.Listener
        public void onAudioBecomingNoisy() {
            ExoPlayerImpl.this.updatePlayWhenReady(false, 3);
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void onStreamTypeChanged(int streamType) {
            final DeviceInfo newDeviceInfo = ExoPlayerImpl.createDeviceInfo(ExoPlayerImpl.this.streamVolumeManager);
            if (!newDeviceInfo.equals(ExoPlayerImpl.this.deviceInfo)) {
                ExoPlayerImpl.this.deviceInfo = newDeviceInfo;
                ExoPlayerImpl.this.listeners.sendEvent(29, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((Player.Listener) obj).onDeviceInfoChanged(newDeviceInfo);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void onStreamVolumeChanged(final int streamVolume, final boolean streamMuted) {
            ExoPlayerImpl.this.listeners.sendEvent(30, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda9
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(streamVolume, streamMuted);
                }
            });
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.AudioOffloadListener
        public void onSleepingForOffloadChanged(boolean sleepingForOffload) {
            ExoPlayerImpl.this.updateWakeAndWifiLock();
        }

        @Override // androidx.media3.common.util.StuckPlayerDetector.Callback
        public void onStuckPlayerDetected(StuckPlayerException exception) {
            ExoPlayerImpl.this.stopInternal(ExoPlaybackException.createForUnexpected(exception, 1003));
        }
    }

    private static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {
        public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
        public static final int MSG_SET_SPHERICAL_SURFACE_VIEW = 10000;
        public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;
        private CameraMotionListener cameraMotionListener;
        private CameraMotionListener internalCameraMotionListener;
        private VideoFrameMetadataListener internalVideoFrameMetadataListener;
        private VideoFrameMetadataListener videoFrameMetadataListener;

        private FrameMetadataListener() {
        }

        @Override // androidx.media3.exoplayer.PlayerMessage.Target
        public void handleMessage(int messageType, Object message) {
            switch (messageType) {
                case 7:
                    this.videoFrameMetadataListener = (VideoFrameMetadataListener) message;
                    break;
                case 8:
                    this.cameraMotionListener = (CameraMotionListener) message;
                    break;
                case 10000:
                    SphericalGLSurfaceView surfaceView = (SphericalGLSurfaceView) message;
                    if (surfaceView == null) {
                        this.internalVideoFrameMetadataListener = null;
                        this.internalCameraMotionListener = null;
                    } else {
                        this.internalVideoFrameMetadataListener = surfaceView.getVideoFrameMetadataListener();
                        this.internalCameraMotionListener = surfaceView.getCameraMotionListener();
                    }
                    break;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
        public void onVideoFrameAboutToBeRendered(long presentationTimeUs, long releaseTimeNs, Format format, MediaFormat mediaFormat) {
            long presentationTimeUs2;
            long releaseTimeNs2;
            Format format2;
            MediaFormat mediaFormat2;
            if (this.internalVideoFrameMetadataListener == null) {
                presentationTimeUs2 = presentationTimeUs;
                releaseTimeNs2 = releaseTimeNs;
                format2 = format;
                mediaFormat2 = mediaFormat;
            } else {
                presentationTimeUs2 = presentationTimeUs;
                releaseTimeNs2 = releaseTimeNs;
                format2 = format;
                mediaFormat2 = mediaFormat;
                this.internalVideoFrameMetadataListener.onVideoFrameAboutToBeRendered(presentationTimeUs2, releaseTimeNs2, format2, mediaFormat2);
            }
            if (this.videoFrameMetadataListener != null) {
                long releaseTimeNs3 = releaseTimeNs2;
                long presentationTimeUs3 = presentationTimeUs2;
                VideoFrameMetadataListener videoFrameMetadataListener = this.videoFrameMetadataListener;
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(presentationTimeUs3, releaseTimeNs3, format2, mediaFormat2);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void onCameraMotion(long timeUs, float[] rotation) {
            if (this.internalCameraMotionListener != null) {
                this.internalCameraMotionListener.onCameraMotion(timeUs, rotation);
            }
            if (this.cameraMotionListener != null) {
                this.cameraMotionListener.onCameraMotion(timeUs, rotation);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void onCameraMotionReset() {
            if (this.internalCameraMotionListener != null) {
                this.internalCameraMotionListener.onCameraMotionReset();
            }
            if (this.cameraMotionListener != null) {
                this.cameraMotionListener.onCameraMotionReset();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api31 {
        private Api31() {
        }

        public static void registerMediaMetricsListener(final Context context, final ExoPlayerImpl player, final boolean usePlatformDiagnostics, final PlayerId playerId) {
            HandlerWrapper playbackThreadHandler = player.getClock().createHandler(player.getPlaybackLooper(), null);
            playbackThreadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$Api31$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImpl.Api31.lambda$registerMediaMetricsListener$0(context, usePlatformDiagnostics, player, playerId);
                }
            });
        }

        static /* synthetic */ void lambda$registerMediaMetricsListener$0(Context context, boolean usePlatformDiagnostics, ExoPlayerImpl player, PlayerId playerId) {
            MediaMetricsListener listener = MediaMetricsListener.create(context);
            if (listener == null) {
                Log.w(ExoPlayerImpl.TAG, "MediaMetricsService unavailable.");
                return;
            }
            if (usePlatformDiagnostics) {
                player.addAnalyticsListener(listener);
            }
            playerId.setLogSessionId(listener.getLogSessionId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class VirtualDeviceIdChangeListener {
        private final WeakReference<Context> contextReference;
        private final IntConsumer listener;

        private VirtualDeviceIdChangeListener(Context context) {
            this.contextReference = new WeakReference<>(context);
            this.listener = new IntConsumer() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda0
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    this.f$0.onVirtualDeviceIdChanged(i);
                }
            };
            final HandlerWrapper handler = ExoPlayerImpl.this.clock.createHandler(ExoPlayerImpl.this.applicationLooper, null);
            Objects.requireNonNull(handler);
            context.registerDeviceIdChangeListener(new Executor() { // from class: androidx.media3.exoplayer.ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.listener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            Context context = this.contextReference.get();
            if (context == null) {
                return;
            }
            context.unregisterDeviceIdChangeListener(this.listener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onVirtualDeviceIdChanged(int virtualDeviceId) {
            if (!ExoPlayerImpl.this.playerReleased) {
                ExoPlayerImpl.this.sendRendererMessage(1, 19, Integer.valueOf(virtualDeviceId));
            }
        }
    }
}
