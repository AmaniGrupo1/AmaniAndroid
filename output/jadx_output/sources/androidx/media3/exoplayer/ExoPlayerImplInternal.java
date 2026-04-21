package androidx.media3.exoplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.audio.AudioFocusManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.DefaultMediaClock;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.MediaPeriodHolder;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.DoubleMath;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender, AudioFocusManager.PlayerControl, VideoFrameMetadataListener {
    private static final long BUFFERING_MAXIMUM_INTERVAL_MS = Util.usToMs(10000);
    private static final long DURATION_TO_ADVANCE_READING_THRESHOLD_US = 10000000;
    private static final int MSG_ADD_MEDIA_SOURCES = 18;
    private static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    private static final int MSG_AUDIO_FOCUS_PLAYER_COMMAND = 33;
    private static final int MSG_AUDIO_FOCUS_VOLUME_MULTIPLIER = 34;
    private static final int MSG_DO_SOME_WORK = 2;
    private static final int MSG_MOVE_MEDIA_SOURCES = 19;
    private static final int MSG_PERIOD_PREPARED = 8;
    private static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    private static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    private static final int MSG_PREPARE = 29;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    private static final int MSG_RENDERER_CAPABILITIES_CHANGED = 26;
    private static final int MSG_SEEK_COMPLETED_IN_SCRUBBING_MODE = 37;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_AUDIO_ATTRIBUTES = 31;
    private static final int MSG_SET_FOREGROUND_MODE = 13;
    private static final int MSG_SET_MEDIA_SOURCES = 17;
    private static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_PRELOAD_CONFIGURATION = 28;
    private static final int MSG_SET_REPEAT_MODE = 11;
    private static final int MSG_SET_SCRUBBING_MODE_ENABLED = 36;
    private static final int MSG_SET_SCRUBBING_MODE_PARAMETERS = 38;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 12;
    private static final int MSG_SET_SHUFFLE_ORDER = 21;
    private static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 35;
    private static final int MSG_SET_VIDEO_OUTPUT = 30;
    private static final int MSG_SET_VOLUME = 32;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    private static final int MSG_UPDATE_MEDIA_SOURCES_WITH_MEDIA_ITEMS = 27;
    private static final long PLAYBACK_BUFFER_EMPTY_THRESHOLD_US = 500000;
    private static final int PLAYBACK_STUCK_AFTER_MS = 4000;
    private static final long READY_MAXIMUM_INTERVAL_MS = 1000;
    private static final String TAG = "ExoPlayerImplInternal";
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper applicationLooperHandler;
    private final AudioFocusManager audioFocusManager;
    private final boolean avoidLoadingWhileEnded;
    private final long backBufferDurationUs;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private int droppedSeeksWhileScrubbing;
    private final boolean dynamicSchedulingEnabled;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final HandlerWrapper handler;
    private final boolean hasSecondaryRenderers;
    private boolean isPrewarmingDisabledUntilNextTransition;
    private boolean isRebuffering;
    private final LivePlaybackSpeedControl livePlaybackSpeedControl;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private final MediaSourceList mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;
    private ExoPlaybackException pendingRecoverableRendererError;
    private final Timeline.Period period;
    private PlaybackInfo playbackInfo;
    private PlaybackInfoUpdate playbackInfoUpdate;
    private final PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private final PlaybackLooperProvider playbackLooperProvider;
    private final PlayerId playerId;
    private ExoPlayer.PreloadConfiguration preloadConfiguration;
    private final MediaPeriodQueue queue;
    private SeekPosition queuedSeekWhileScrubbing;
    private final long releaseTimeoutMs;
    private boolean releasedOnApplicationThread;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionElapsedRealtimeUs;
    private long rendererPositionUs;
    private final boolean[] rendererReportedReady;
    private final RendererHolder[] renderers;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private boolean scrubbingModeEnabled;
    private SeekParameters scrubbingModeSeekParameters;
    private boolean seekIsPendingWhileScrubbing;
    private SeekParameters seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;
    private long prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
    private float volume = 1.0f;
    private ScrubbingModeParameters scrubbingModeParameters = ScrubbingModeParameters.DEFAULT;
    private long playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
    private long lastRebufferRealtimeMs = C.TIME_UNSET;
    private Timeline lastPreloadPoolInvalidationTimeline = Timeline.EMPTY;

    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(PlaybackInfoUpdate playbackInfoUpdate);
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public int operationAcks;
        public PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.playbackInfo = playbackInfo;
        }

        public void incrementPendingOperationAcks(int operationAcks) {
            this.hasPendingChange |= operationAcks > 0;
            this.operationAcks += operationAcks;
        }

        public void setPlaybackInfo(PlaybackInfo playbackInfo) {
            this.hasPendingChange |= this.playbackInfo != playbackInfo;
            this.playbackInfo = playbackInfo;
        }

        public void setPositionDiscontinuity(int discontinuityReason) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                Preconditions.checkArgument(discontinuityReason == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = discontinuityReason;
        }
    }

    public ExoPlayerImplInternal(Context context, Renderer[] renderers, Renderer[] secondaryRenderers, TrackSelector trackSelector, TrackSelectorResult emptyTrackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int repeatMode, boolean shuffleModeEnabled, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long releaseTimeoutMs, boolean pauseAtEndOfWindow, boolean dynamicSchedulingEnabled, Looper applicationLooper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId, PlaybackLooperProvider playbackLooperProvider, ExoPlayer.PreloadConfiguration preloadConfiguration, final VideoFrameMetadataListener videoFrameMetadataListener, boolean avoidLoadingWhileEnded) {
        Renderer[] rendererArr = renderers;
        this.playbackInfoUpdateListener = playbackInfoUpdateListener;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = emptyTrackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.repeatMode = repeatMode;
        this.shuffleModeEnabled = shuffleModeEnabled;
        this.seekParameters = seekParameters;
        this.livePlaybackSpeedControl = livePlaybackSpeedControl;
        this.releaseTimeoutMs = releaseTimeoutMs;
        this.setForegroundModeTimeoutMs = releaseTimeoutMs;
        this.pauseAtEndOfWindow = pauseAtEndOfWindow;
        this.dynamicSchedulingEnabled = dynamicSchedulingEnabled;
        this.clock = clock;
        this.playerId = playerId;
        this.preloadConfiguration = preloadConfiguration;
        this.analyticsCollector = analyticsCollector;
        this.avoidLoadingWhileEnded = avoidLoadingWhileEnded;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs(playerId);
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe(playerId);
        this.playbackInfo = PlaybackInfo.createDummy(emptyTrackSelectorResult);
        this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        this.rendererReportedReady = new boolean[rendererArr.length];
        RendererCapabilities.Listener rendererCapabilitiesListener = trackSelector.getRendererCapabilitiesListener();
        boolean hasSecondaryRenderers = false;
        this.renderers = new RendererHolder[rendererArr.length];
        int i = 0;
        while (i < rendererArr.length) {
            rendererArr[i].init(i, playerId, clock);
            this.rendererCapabilities[i] = rendererArr[i].getCapabilities();
            if (rendererCapabilitiesListener != null) {
                this.rendererCapabilities[i].setListener(rendererCapabilitiesListener);
            }
            if (secondaryRenderers[i] != null) {
                secondaryRenderers[i].init(i, playerId, clock);
                hasSecondaryRenderers = true;
            }
            this.renderers[i] = new RendererHolder(renderers[i], secondaryRenderers[i], i);
            i++;
            rendererArr = renderers;
            rendererCapabilitiesListener = rendererCapabilitiesListener;
            hasSecondaryRenderers = hasSecondaryRenderers;
        }
        this.hasSecondaryRenderers = hasSecondaryRenderers;
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.deliverPendingMessageAtStartPositionRequired = true;
        this.applicationLooperHandler = clock.createHandler(applicationLooper, null);
        this.queue = new MediaPeriodQueue(analyticsCollector, this.applicationLooperHandler, new MediaPeriodHolder.Factory() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda2
            @Override // androidx.media3.exoplayer.MediaPeriodHolder.Factory
            public final MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j) {
                return this.f$0.createMediaPeriodHolder(mediaPeriodInfo, j);
            }
        }, preloadConfiguration);
        this.mediaSourceList = new MediaSourceList(this, analyticsCollector, this.applicationLooperHandler, playerId);
        this.playbackLooperProvider = playbackLooperProvider == null ? new PlaybackLooperProvider() : playbackLooperProvider;
        this.playbackLooper = this.playbackLooperProvider.obtainLooper();
        this.handler = clock.createHandler(this.playbackLooper, this);
        this.audioFocusManager = new AudioFocusManager(context, this.playbackLooper, this);
        VideoFrameMetadataListener internalVideoFrameMetadataListener = new VideoFrameMetadataListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda3
            @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
            public final void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
                this.f$0.m7867lambda$new$0$androidxmedia3exoplayerExoPlayerImplInternal(videoFrameMetadataListener, j, j2, format, mediaFormat);
            }
        };
        this.handler.obtainMessage(35, internalVideoFrameMetadataListener).sendToTarget();
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-exoplayer-ExoPlayerImplInternal, reason: not valid java name */
    /* synthetic */ void m7867lambda$new$0$androidxmedia3exoplayerExoPlayerImplInternal(VideoFrameMetadataListener videoFrameMetadataListener, long presentationTimeUs, long releaseTimeNs, Format format, MediaFormat mediaFormat) {
        videoFrameMetadataListener.onVideoFrameAboutToBeRendered(presentationTimeUs, releaseTimeNs, format, mediaFormat);
        onVideoFrameAboutToBeRendered(presentationTimeUs, releaseTimeNs, format, mediaFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaPeriodHolder createMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, long rendererPositionOffsetUs) {
        return new MediaPeriodHolder(this.rendererCapabilities, rendererPositionOffsetUs, this.trackSelector, this.loadControl.getAllocator(this.playerId), this.mediaSourceList, mediaPeriodInfo, this.emptyTrackSelectorResult, this.preloadConfiguration.targetPreloadDurationUs);
    }

    public void experimentalSetForegroundModeTimeoutMs(long setForegroundModeTimeoutMs) {
        this.setForegroundModeTimeoutMs = setForegroundModeTimeoutMs;
    }

    public void prepare() {
        this.handler.obtainMessage(29).sendToTarget();
    }

    public void setPlayWhenReady(boolean z, int i, int i2) {
        this.handler.obtainMessage(1, z ? 1 : 0, (i2 << 4) | i).sendToTarget();
    }

    public void setPauseAtEndOfWindow(boolean z) {
        this.handler.obtainMessage(23, z ? 1 : 0, 0).sendToTarget();
    }

    public void setRepeatMode(int repeatMode) {
        this.handler.obtainMessage(11, repeatMode, 0).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z) {
        this.handler.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    public void setPreloadConfiguration(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.handler.obtainMessage(28, preloadConfiguration).sendToTarget();
    }

    public void seekTo(Timeline timeline, int windowIndex, long positionUs) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, windowIndex, positionUs)).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setSeekParameters(SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setScrubbingModeEnabled(boolean scrubbingModeEnabled) {
        this.handler.obtainMessage(36, Boolean.valueOf(scrubbingModeEnabled)).sendToTarget();
    }

    public void setScrubbingModeParameters(ScrubbingModeParameters scrubbingModeParameters) {
        this.handler.obtainMessage(38, scrubbingModeParameters).sendToTarget();
    }

    public void stop() {
        this.handler.obtainMessage(6).sendToTarget();
    }

    public void setMediaSources(List<MediaSourceList.MediaSourceHolder> mediaSources, int windowIndex, long positionUs, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(17, new MediaSourceListUpdateMessage(mediaSources, shuffleOrder, windowIndex, positionUs)).sendToTarget();
    }

    public void addMediaSources(int index, List<MediaSourceList.MediaSourceHolder> mediaSources, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(18, index, 0, new MediaSourceListUpdateMessage(mediaSources, shuffleOrder, -1, C.TIME_UNSET)).sendToTarget();
    }

    public void removeMediaSources(int fromIndex, int toIndex, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(20, fromIndex, toIndex, shuffleOrder).sendToTarget();
    }

    public void moveMediaSources(int fromIndex, int toIndex, int newFromIndex, ShuffleOrder shuffleOrder) {
        MoveMediaItemsMessage moveMediaItemsMessage = new MoveMediaItemsMessage(fromIndex, toIndex, newFromIndex, shuffleOrder);
        this.handler.obtainMessage(19, moveMediaItemsMessage).sendToTarget();
    }

    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(21, shuffleOrder).sendToTarget();
    }

    public void updateMediaSourcesWithMediaItems(int fromIndex, int toIndex, List<MediaItem> mediaItems) {
        this.handler.obtainMessage(27, fromIndex, toIndex, mediaItems).sendToTarget();
    }

    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        this.handler.obtainMessage(31, z ? 1 : 0, 0, audioAttributes).sendToTarget();
    }

    public void setVolume(float volume) {
        this.handler.obtainMessage(32, Float.valueOf(volume)).sendToTarget();
    }

    private void handleAudioFocusPlayerCommandInternal(int playerCommand) throws ExoPlaybackException {
        updatePlayWhenReadyWithAudioFocus(this.playbackInfo.playWhenReady, playerCommand, this.playbackInfo.playbackSuppressionReason, this.playbackInfo.playWhenReadyChangeReason);
    }

    private void handleAudioFocusVolumeMultiplierChange() throws ExoPlaybackException {
        setVolumeInternal(this.volume);
    }

    private void setVideoFrameMetadataListenerInternal(VideoFrameMetadataListener videoFrameMetadataListener) throws ExoPlaybackException {
        for (RendererHolder renderer : this.renderers) {
            renderer.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Sender
    public void sendMessage(PlayerMessage message) {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            Log.w(TAG, "Ignoring messages sent after release.");
            message.markAsProcessed(false);
        } else {
            this.handler.obtainMessage(14, message).sendToTarget();
        }
    }

    public boolean setForegroundMode(boolean foregroundMode) {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            return true;
        }
        if (foregroundMode) {
            this.handler.obtainMessage(13, 1, 0).sendToTarget();
            return true;
        }
        ConditionVariable processedCondition = new ConditionVariable(this.clock);
        this.handler.obtainMessage(13, 0, 0, processedCondition).sendToTarget();
        return processedCondition.blockUninterruptible(this.setForegroundModeTimeoutMs);
    }

    public boolean setVideoOutput(Object videoOutput, long timeoutMs) {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            return true;
        }
        ConditionVariable processedCondition = new ConditionVariable(this.clock);
        this.handler.obtainMessage(30, new Pair(videoOutput, processedCondition)).sendToTarget();
        if (timeoutMs != C.TIME_UNSET) {
            return processedCondition.blockUninterruptible(timeoutMs);
        }
        return true;
    }

    public boolean release() {
        if (this.releasedOnApplicationThread || !this.playbackLooper.getThread().isAlive()) {
            return true;
        }
        this.releasedOnApplicationThread = true;
        ConditionVariable processedCondition = new ConditionVariable(this.clock);
        this.handler.obtainMessage(7, processedCondition).sendToTarget();
        return processedCondition.blockUninterruptible(this.releaseTimeoutMs);
    }

    public Looper getPlaybackLooper() {
        return this.playbackLooper;
    }

    @Override // androidx.media3.exoplayer.MediaSourceList.MediaSourceListInfoRefreshListener
    public void onPlaylistUpdateRequested() {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessage(22);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod source) {
        this.handler.obtainMessage(8, source).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod source) {
        this.handler.obtainMessage(9, source).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onRendererCapabilitiesChanged(Renderer renderer) {
        this.handler.sendEmptyMessage(26);
    }

    @Override // androidx.media3.exoplayer.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(PlaybackParameters newPlaybackParameters) {
        this.handler.obtainMessage(16, newPlaybackParameters).sendToTarget();
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public void setVolumeMultiplier(float volumeMultiplier) {
        this.handler.sendEmptyMessage(34);
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public void executePlayerCommand(int playerCommand) {
        this.handler.obtainMessage(33, playerCommand, 0).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public void onVideoFrameAboutToBeRendered(long presentationTimeUs, long releaseTimeNs, Format format, MediaFormat mediaFormat) {
        if (this.seekIsPendingWhileScrubbing) {
            this.handler.obtainMessage(37).sendToTarget();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) throws Exception {
        int errorCode;
        MediaPeriodQueue mediaPeriodQueue;
        MediaPeriodHolder readingPeriod;
        int errorCode2;
        try {
            switch (msg.what) {
                case 1:
                    setPlayWhenReadyInternal(msg.arg1 != 0, msg.arg2 >> 4, true, msg.arg2 & 15);
                    break;
                case 2:
                    doSomeWork();
                    break;
                case 3:
                    seekToInternal((SeekPosition) msg.obj);
                    break;
                case 4:
                    setPlaybackParametersInternal((PlaybackParameters) msg.obj);
                    break;
                case 5:
                    setSeekParametersInternal((SeekParameters) msg.obj);
                    break;
                case 6:
                    stopInternal(false, true);
                    break;
                case 7:
                    releaseInternal((ConditionVariable) msg.obj);
                    return true;
                case 8:
                    handlePeriodPrepared((MediaPeriod) msg.obj);
                    break;
                case 9:
                    handleContinueLoadingRequested((MediaPeriod) msg.obj);
                    break;
                case 10:
                    reselectTracksInternal();
                    break;
                case 11:
                    setRepeatModeInternal(msg.arg1);
                    break;
                case 12:
                    setShuffleModeEnabledInternal(msg.arg1 != 0);
                    break;
                case 13:
                    setForegroundModeInternal(msg.arg1 != 0, (ConditionVariable) msg.obj);
                    break;
                case 14:
                    sendMessageInternal((PlayerMessage) msg.obj);
                    break;
                case 15:
                    sendMessageToTargetThread((PlayerMessage) msg.obj);
                    break;
                case 16:
                    handlePlaybackParameters((PlaybackParameters) msg.obj, false);
                    break;
                case 17:
                    setMediaItemsInternal((MediaSourceListUpdateMessage) msg.obj);
                    break;
                case 18:
                    addMediaItemsInternal((MediaSourceListUpdateMessage) msg.obj, msg.arg1);
                    break;
                case 19:
                    moveMediaItemsInternal((MoveMediaItemsMessage) msg.obj);
                    break;
                case 20:
                    removeMediaItemsInternal(msg.arg1, msg.arg2, (ShuffleOrder) msg.obj);
                    break;
                case 21:
                    setShuffleOrderInternal((ShuffleOrder) msg.obj);
                    break;
                case 22:
                    mediaSourceListUpdateRequestedInternal();
                    break;
                case 23:
                    setPauseAtEndOfWindowInternal(msg.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    attemptRendererErrorRecovery();
                    break;
                case 26:
                    reselectTracksInternalAndSeek();
                    break;
                case 27:
                    updateMediaSourcesWithMediaItemsInternal(msg.arg1, msg.arg2, (List) msg.obj);
                    break;
                case 28:
                    setPreloadConfigurationInternal((ExoPlayer.PreloadConfiguration) msg.obj);
                    break;
                case 29:
                    prepareInternal();
                    break;
                case 30:
                    Pair<Object, ConditionVariable> setVideoOutputPayload = (Pair) msg.obj;
                    setVideoOutputInternal(setVideoOutputPayload.first, (ConditionVariable) setVideoOutputPayload.second);
                    break;
                case 31:
                    setAudioAttributesInternal((AudioAttributes) msg.obj, msg.arg1 != 0);
                    break;
                case 32:
                    setVolumeInternal(((Float) msg.obj).floatValue());
                    break;
                case 33:
                    handleAudioFocusPlayerCommandInternal(msg.arg1);
                    break;
                case 34:
                    handleAudioFocusVolumeMultiplierChange();
                    break;
                case 35:
                    setVideoFrameMetadataListenerInternal((VideoFrameMetadataListener) msg.obj);
                    break;
                case 36:
                    setScrubbingModeEnabledInternal(((Boolean) msg.obj).booleanValue());
                    break;
                case 37:
                    this.seekIsPendingWhileScrubbing = false;
                    if (this.queuedSeekWhileScrubbing != null) {
                        seekToInternal(this.queuedSeekWhileScrubbing);
                        this.queuedSeekWhileScrubbing = null;
                    }
                    break;
                case 38:
                    setScrubbingModeParametersInternal((ScrubbingModeParameters) msg.obj);
                    break;
            }
        } catch (ParserException e) {
            if (e.dataType == 1) {
                if (e.contentIsMalformed) {
                    errorCode2 = PlaybackException.ERROR_CODE_PARSING_CONTAINER_MALFORMED;
                } else {
                    errorCode2 = PlaybackException.ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED;
                }
            } else if (e.dataType == 4) {
                if (e.contentIsMalformed) {
                    errorCode2 = PlaybackException.ERROR_CODE_PARSING_MANIFEST_MALFORMED;
                } else {
                    errorCode2 = PlaybackException.ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED;
                }
            } else {
                errorCode2 = 1000;
            }
            handleIoException(e, errorCode2);
        } catch (DataSourceException e2) {
            handleIoException(e2, e2.reason);
        } catch (ExoPlaybackException e3) {
            e = e3;
            if (e.type == 1 && (readingPeriod = this.queue.getReadingPeriod()) != null && e.mediaPeriodId == null) {
                e = e.copyWithMediaPeriodId(readingPeriod.info.id);
            }
            if (e.type == 1 && e.mediaPeriodId != null && isRendererPrewarmingMediaPeriod(e.rendererIndex, e.mediaPeriodId)) {
                this.isPrewarmingDisabledUntilNextTransition = true;
                disableAndResetPrewarmingRenderers();
                MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
                MediaPeriodHolder periodToRemoveAfter = this.queue.getPlayingPeriod();
                if (this.queue.getPlayingPeriod() != prewarmingPeriod) {
                    while (periodToRemoveAfter != null && periodToRemoveAfter.getNext() != prewarmingPeriod) {
                        periodToRemoveAfter = periodToRemoveAfter.getNext();
                    }
                }
                this.queue.removeAfter(periodToRemoveAfter);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    this.handler.sendEmptyMessage(2);
                }
            } else {
                if (this.pendingRecoverableRendererError != null) {
                    this.pendingRecoverableRendererError.addSuppressed(e);
                    e = this.pendingRecoverableRendererError;
                }
                if (e.type == 1 && this.queue.getPlayingPeriod() != this.queue.getReadingPeriod()) {
                    while (true) {
                        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                        MediaPeriodHolder readingPeriod2 = this.queue.getReadingPeriod();
                        mediaPeriodQueue = this.queue;
                        if (playingPeriod == readingPeriod2) {
                            break;
                        }
                        mediaPeriodQueue.advancePlayingPeriod();
                    }
                    MediaPeriodHolder newPlayingPeriodHolder = (MediaPeriodHolder) Preconditions.checkNotNull(mediaPeriodQueue.getPlayingPeriod());
                    maybeNotifyPlaybackInfoChanged();
                    this.playbackInfo = handlePositionDiscontinuity(newPlayingPeriodHolder.info.id, newPlayingPeriodHolder.info.startPositionUs, newPlayingPeriodHolder.info.requestedContentPositionUs, newPlayingPeriodHolder.info.startPositionUs, true, 0);
                }
                if (e.isRecoverable && (this.pendingRecoverableRendererError == null || e.errorCode == 5004 || e.errorCode == 5003)) {
                    Log.w(TAG, "Recoverable renderer error", e);
                    if (this.pendingRecoverableRendererError == null) {
                        this.pendingRecoverableRendererError = e;
                    }
                    this.handler.sendMessageAtFrontOfQueue(this.handler.obtainMessage(25, e));
                } else {
                    Log.e(TAG, "Playback error", e);
                    stopInternal(true, false);
                    this.playbackInfo = this.playbackInfo.copyWithPlaybackError(e);
                }
            }
        } catch (DrmSession.DrmSessionException e4) {
            handleIoException(e4, e4.errorCode);
        } catch (BehindLiveWindowException e5) {
            handleIoException(e5, 1002);
        } catch (IOException e6) {
            handleIoException(e6, 2000);
        } catch (RuntimeException e7) {
            if ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) {
                errorCode = 1004;
            } else {
                errorCode = 1000;
            }
            ExoPlaybackException error = ExoPlaybackException.createForUnexpected(e7, errorCode);
            Log.e(TAG, "Playback error", error);
            stopInternal(true, false);
            this.playbackInfo = this.playbackInfo.copyWithPlaybackError(error);
        }
        maybeNotifyPlaybackInfoChanged();
        return true;
    }

    private void handleIoException(IOException e, int errorCode) {
        ExoPlaybackException error = ExoPlaybackException.createForSource(e, errorCode);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod != null) {
            error = error.copyWithMediaPeriodId(playingPeriod.info.id);
        }
        Log.e(TAG, "Playback error", error);
        stopInternal(false, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(error);
    }

    private void setState(int state) {
        if (this.playbackInfo.playbackState != state) {
            if (state != 2) {
                this.playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
            }
            if (state != 3 && this.playbackInfo.sleepingForOffload) {
                this.playbackInfo = this.playbackInfo.copyWithSleepingForOffload(false);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackState(state);
        }
    }

    private void maybeNotifyPlaybackInfoChanged() {
        this.playbackInfoUpdate.setPlaybackInfo(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        }
    }

    private void prepareInternal() throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        resetInternal(false, false, false, true);
        this.loadControl.onPrepared(this.playerId);
        setState(this.playbackInfo.timeline.isEmpty() ? 4 : 2);
        updatePlayWhenReadyWithAudioFocus();
        this.mediaSourceList.prepare(this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
    }

    private void setMediaItemsInternal(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        if (mediaSourceListUpdateMessage.windowIndex != -1) {
            this.pendingInitialSeekPosition = new SeekPosition(new PlaylistTimeline(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), mediaSourceListUpdateMessage.windowIndex, mediaSourceListUpdateMessage.positionUs);
        }
        Timeline timeline = this.mediaSourceList.setMediaSources(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void addMediaItemsInternal(MediaSourceListUpdateMessage addMessage, int insertionIndex) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Timeline timeline = this.mediaSourceList.addMediaSources(insertionIndex == -1 ? this.mediaSourceList.getSize() : insertionIndex, addMessage.mediaSourceHolders, addMessage.shuffleOrder);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void moveMediaItemsInternal(MoveMediaItemsMessage moveMediaItemsMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Timeline timeline = this.mediaSourceList.moveMediaSourceRange(moveMediaItemsMessage.fromIndex, moveMediaItemsMessage.toIndex, moveMediaItemsMessage.newFromIndex, moveMediaItemsMessage.shuffleOrder);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void removeMediaItemsInternal(int fromIndex, int toIndex, ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Timeline timeline = this.mediaSourceList.removeMediaSourceRange(fromIndex, toIndex, shuffleOrder);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void mediaSourceListUpdateRequestedInternal() throws Throwable {
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.createTimeline(), true);
    }

    private void setShuffleOrderInternal(ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Timeline timeline = this.mediaSourceList.setShuffleOrder(shuffleOrder);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void updateMediaSourcesWithMediaItemsInternal(int fromIndex, int toIndex, List<MediaItem> mediaItems) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Timeline timeline = this.mediaSourceList.updateMediaSourcesWithMediaItems(fromIndex, toIndex, mediaItems);
        handleMediaSourceListInfoRefreshed(timeline, false);
    }

    private void setAudioAttributesInternal(AudioAttributes audioAttributes, boolean handleAudioFocus) throws ExoPlaybackException {
        this.trackSelector.setAudioAttributes(audioAttributes);
        this.audioFocusManager.setAudioAttributes(handleAudioFocus ? audioAttributes : null);
        updatePlayWhenReadyWithAudioFocus();
    }

    private void setVolumeInternal(float volume) throws ExoPlaybackException {
        this.volume = volume;
        float scaledVolume = this.audioFocusManager.getVolumeMultiplier() * volume;
        for (RendererHolder renderer : this.renderers) {
            renderer.setVolume(scaledVolume);
        }
    }

    private void notifyTrackSelectionPlayWhenReadyChanged(boolean playWhenReady) {
        for (MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod(); periodHolder != null; periodHolder = periodHolder.getNext()) {
            for (ExoTrackSelection trackSelection : periodHolder.getTrackSelectorResult().selections) {
                if (trackSelection != null) {
                    trackSelection.onPlayWhenReadyChanged(playWhenReady);
                }
            }
        }
    }

    private void setPlayWhenReadyInternal(boolean z, int i, boolean z2, int i2) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        updatePlayWhenReadyWithAudioFocus(z, i, i2);
    }

    private void updatePlayWhenReadyWithAudioFocus() throws ExoPlaybackException {
        updatePlayWhenReadyWithAudioFocus(this.playbackInfo.playWhenReady, this.playbackInfo.playbackSuppressionReason, this.playbackInfo.playWhenReadyChangeReason);
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean playWhenReady, int playbackSuppressionReason, int playWhenReadyChangeReason) throws ExoPlaybackException {
        int playerCommand = this.audioFocusManager.updateAudioFocus(playWhenReady, this.playbackInfo.playbackState);
        updatePlayWhenReadyWithAudioFocus(playWhenReady, playerCommand, playbackSuppressionReason, playWhenReadyChangeReason);
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean playWhenReady, int playerCommand, int playbackSuppressionReason, int playWhenReadyChangeReason) throws ExoPlaybackException {
        boolean playWhenReady2 = playWhenReady && playerCommand != -1;
        int playWhenReadyChangeReason2 = updatePlayWhenReadyChangeReason(playerCommand, playWhenReadyChangeReason);
        int playbackSuppressionReason2 = updatePlaybackSuppressionReason(playerCommand, playbackSuppressionReason, this.scrubbingModeEnabled);
        if (this.playbackInfo.playWhenReady == playWhenReady2 && this.playbackInfo.playbackSuppressionReason == playbackSuppressionReason2 && this.playbackInfo.playWhenReadyChangeReason == playWhenReadyChangeReason2) {
            return;
        }
        this.playbackInfo = this.playbackInfo.copyWithPlayWhenReady(playWhenReady2, playWhenReadyChangeReason2, playbackSuppressionReason2);
        updateRebufferingState(false, false);
        notifyTrackSelectionPlayWhenReadyChanged(playWhenReady2);
        if (!shouldPlayWhenReady()) {
            stopRenderers();
            updatePlaybackPositions();
            if (this.playbackInfo.sleepingForOffload) {
                this.playbackInfo = this.playbackInfo.copyWithSleepingForOffload(false);
            }
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            return;
        }
        if (this.playbackInfo.playbackState == 3) {
            this.mediaClock.start();
            startRenderers();
            this.handler.sendEmptyMessage(2);
        } else if (this.playbackInfo.playbackState == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setPauseAtEndOfWindowInternal(boolean pauseAtEndOfWindow) throws ExoPlaybackException {
        this.pauseAtEndOfWindow = pauseAtEndOfWindow;
        resetPendingPauseAtEndOfPeriod();
        if (this.pendingPauseAtEndOfPeriod && this.queue.getReadingPeriod() != this.queue.getPlayingPeriod()) {
            seekToCurrentPosition(true);
            handleLoadingMediaPeriodChanged(false);
        }
    }

    private void setOffloadSchedulingEnabled(boolean offloadSchedulingEnabled) {
        if (offloadSchedulingEnabled == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = offloadSchedulingEnabled;
        if (!offloadSchedulingEnabled && this.playbackInfo.sleepingForOffload) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setRepeatModeInternal(int repeatMode) throws ExoPlaybackException {
        this.repeatMode = repeatMode;
        int result = this.queue.updateRepeatMode(this.playbackInfo.timeline, repeatMode);
        if ((result & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((result & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setShuffleModeEnabledInternal(boolean shuffleModeEnabled) throws ExoPlaybackException {
        this.shuffleModeEnabled = shuffleModeEnabled;
        int result = this.queue.updateShuffleModeEnabled(this.playbackInfo.timeline, shuffleModeEnabled);
        if ((result & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((result & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setPreloadConfigurationInternal(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.preloadConfiguration = preloadConfiguration;
        this.queue.updatePreloadConfiguration(this.playbackInfo.timeline, preloadConfiguration);
    }

    private void seekToCurrentPosition(boolean sendDiscontinuity) throws ExoPlaybackException {
        MediaSource.MediaPeriodId periodId = this.queue.getPlayingPeriod().info.id;
        long newPositionUs = seekToPeriodPosition(periodId, this.playbackInfo.positionUs, true, false);
        if (newPositionUs != this.playbackInfo.positionUs) {
            this.playbackInfo = handlePositionDiscontinuity(periodId, newPositionUs, this.playbackInfo.requestedContentPositionUs, this.playbackInfo.discontinuityStartPositionUs, sendDiscontinuity, 5);
        }
    }

    private void startRenderers() throws ExoPlaybackException {
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        if (playingPeriodHolder == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = playingPeriodHolder.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].start();
            }
        }
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.stop();
        }
    }

    private void attemptRendererErrorRecovery() throws ExoPlaybackException {
        reselectTracksInternalAndSeek();
    }

    private void updatePlaybackPositions() throws ExoPlaybackException {
        long discontinuityPositionUs;
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        if (playingPeriodHolder == null) {
            return;
        }
        if (playingPeriodHolder.prepared) {
            discontinuityPositionUs = playingPeriodHolder.mediaPeriod.readDiscontinuity();
        } else {
            discontinuityPositionUs = -9223372036854775807L;
        }
        if (discontinuityPositionUs == C.TIME_UNSET) {
            this.rendererPositionUs = this.mediaClock.syncAndGetPositionUs(playingPeriodHolder != this.queue.getReadingPeriod());
            long periodPositionUs = playingPeriodHolder.toPeriodTime(this.rendererPositionUs);
            maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodPositionUs);
            if (this.mediaClock.hasSkippedSilenceSinceLastCall()) {
                boolean reportSilenceSkip = !this.playbackInfoUpdate.positionDiscontinuity;
                this.playbackInfo = handlePositionDiscontinuity(this.playbackInfo.periodId, periodPositionUs, this.playbackInfo.requestedContentPositionUs, periodPositionUs, reportSilenceSkip, 6);
            } else {
                this.playbackInfo.updatePositionUs(periodPositionUs);
            }
        } else {
            if (!playingPeriodHolder.isFullyBuffered()) {
                this.queue.removeAfter(playingPeriodHolder);
                handleLoadingMediaPeriodChanged(false);
                maybeContinueLoading();
            }
            resetRendererPosition(discontinuityPositionUs, true);
            if (discontinuityPositionUs != this.playbackInfo.positionUs) {
                MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
                long discontinuityPositionUs2 = this.playbackInfo.requestedContentPositionUs;
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, discontinuityPositionUs, discontinuityPositionUs2, discontinuityPositionUs, true, 5);
            }
        }
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        this.playbackInfo.bufferedPositionUs = loadingPeriod.getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if (this.playbackInfo.playWhenReady && this.playbackInfo.playbackState == 3 && shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, this.playbackInfo.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float adjustedSpeed = this.livePlaybackSpeedControl.getAdjustedPlaybackSpeed(getCurrentLiveOffsetUs(), this.playbackInfo.totalBufferedDurationUs);
            if (this.mediaClock.getPlaybackParameters().speed != adjustedSpeed) {
                setMediaClockPlaybackParameters(this.playbackInfo.playbackParameters.withSpeed(adjustedSpeed));
                handlePlaybackParameters(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    private void setMediaClockPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.removeMessages(16);
        this.mediaClock.setPlaybackParameters(playbackParameters);
    }

    private void notifyTrackSelectionRebuffer() {
        for (MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod(); periodHolder != null; periodHolder = periodHolder.getNext()) {
            for (ExoTrackSelection trackSelection : periodHolder.getTrackSelectorResult().selections) {
                if (trackSelection != null) {
                    trackSelection.onRebuffer();
                }
            }
        }
    }

    private void doSomeWork() throws Exception {
        long operationStartTimeMs = this.clock.uptimeMillis();
        this.handler.removeMessages(2);
        if (!this.avoidLoadingWhileEnded) {
            updatePeriods();
        }
        if (this.playbackInfo.playbackState == 1 || this.playbackInfo.playbackState == 4) {
            return;
        }
        if (this.avoidLoadingWhileEnded) {
            updatePeriods();
        }
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        if (playingPeriodHolder == null) {
            scheduleNextWork(operationStartTimeMs);
            return;
        }
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        boolean renderersEnded = true;
        boolean renderersAllowPlayback = true;
        if (playingPeriodHolder.prepared) {
            this.rendererPositionElapsedRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
            playingPeriodHolder.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            for (int i = 0; i < this.renderers.length; i++) {
                RendererHolder renderer = this.renderers[i];
                if (renderer.getEnabledRendererCount() != 0) {
                    renderer.render(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs);
                    renderersEnded = renderersEnded && renderer.isEnded();
                    boolean allowsPlayback = renderer.allowsPlayback(playingPeriodHolder);
                    maybeTriggerOnRendererReadyChanged(i, allowsPlayback);
                    boolean renderersAllowPlayback2 = renderersAllowPlayback && allowsPlayback;
                    if (!allowsPlayback) {
                        maybeThrowRendererStreamError(i);
                    }
                    renderersAllowPlayback = renderersAllowPlayback2;
                } else {
                    maybeTriggerOnRendererReadyChanged(i, false);
                }
            }
        } else {
            playingPeriodHolder.mediaPeriod.maybeThrowPrepareError();
        }
        long playingPeriodDurationUs = playingPeriodHolder.info.durationUs;
        boolean finishedRendering = renderersEnded && playingPeriodHolder.prepared && (playingPeriodDurationUs == C.TIME_UNSET || playingPeriodDurationUs <= this.playbackInfo.positionUs);
        if (finishedRendering && this.pendingPauseAtEndOfPeriod) {
            this.pendingPauseAtEndOfPeriod = false;
            setPlayWhenReadyInternal(false, this.playbackInfo.playbackSuppressionReason, false, 5);
        }
        if (finishedRendering && playingPeriodHolder.info.isFinal) {
            setState(4);
            stopRenderers();
        } else if (this.playbackInfo.playbackState != 2 || !shouldTransitionToReadyState(renderersAllowPlayback)) {
            if (this.playbackInfo.playbackState == 3 && (this.enabledRendererCount != 0 ? !renderersAllowPlayback : !isTimelineReady())) {
                updateRebufferingState(shouldPlayWhenReady(), false);
                setState(2);
                if (this.isRebuffering) {
                    notifyTrackSelectionRebuffer();
                    this.livePlaybackSpeedControl.notifyRebuffer();
                }
                stopRenderers();
            }
        } else {
            setState(3);
            this.pendingRecoverableRendererError = null;
            if (shouldPlayWhenReady()) {
                updateRebufferingState(false, false);
                this.mediaClock.start();
                startRenderers();
            }
        }
        boolean playbackMaybeStuck = false;
        if (this.playbackInfo.playbackState == 2) {
            for (int i2 = 0; i2 < this.renderers.length; i2++) {
                if (this.renderers[i2].isReadingFromPeriod(playingPeriodHolder)) {
                    maybeThrowRendererStreamError(i2);
                }
            }
            if (!this.playbackInfo.isLoading && this.playbackInfo.totalBufferedDurationUs < PLAYBACK_BUFFER_EMPTY_THRESHOLD_US && isLoadingPossible(this.queue.getLoadingPeriod()) && shouldPlayWhenReady()) {
                playbackMaybeStuck = true;
            }
        }
        if (!playbackMaybeStuck) {
            this.playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
        } else {
            long j = this.playbackMaybeBecameStuckAtMs;
            Clock clock = this.clock;
            if (j == C.TIME_UNSET) {
                this.playbackMaybeBecameStuckAtMs = clock.elapsedRealtime();
            } else if (clock.elapsedRealtime() - this.playbackMaybeBecameStuckAtMs >= 4000) {
                throw new StuckPlayerException(0, PLAYBACK_STUCK_AFTER_MS);
            }
        }
        boolean isPlaying = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean sleepingForOffload = this.offloadSchedulingEnabled && this.requestForRendererSleep && isPlaying;
        if (this.playbackInfo.sleepingForOffload != sleepingForOffload) {
            this.playbackInfo = this.playbackInfo.copyWithSleepingForOffload(sleepingForOffload);
        }
        this.requestForRendererSleep = false;
        if (!sleepingForOffload && this.playbackInfo.playbackState != 4 && (isPlaying || this.playbackInfo.playbackState == 2 || (this.playbackInfo.playbackState == 3 && this.enabledRendererCount != 0))) {
            scheduleNextWork(operationStartTimeMs);
        }
        TraceUtil.endSection();
    }

    private void maybeTriggerOnRendererReadyChanged(final int rendererIndex, final boolean allowsPlayback) {
        if (this.rendererReportedReady[rendererIndex] != allowsPlayback) {
            this.rendererReportedReady[rendererIndex] = allowsPlayback;
            this.applicationLooperHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7866x6a39ddd9(rendererIndex, allowsPlayback);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$maybeTriggerOnRendererReadyChanged$1$androidx-media3-exoplayer-ExoPlayerImplInternal, reason: not valid java name */
    /* synthetic */ void m7866x6a39ddd9(int rendererIndex, boolean allowsPlayback) {
        this.analyticsCollector.onRendererReadyChanged(rendererIndex, this.renderers[rendererIndex].getTrackType(), allowsPlayback);
    }

    private long getCurrentLiveOffsetUs() {
        return getLiveOffsetUs(this.playbackInfo.timeline, this.playbackInfo.periodId.periodUid, this.playbackInfo.positionUs);
    }

    private long getLiveOffsetUs(Timeline timeline, Object periodUid, long periodPositionUs) {
        int windowIndex = timeline.getPeriodByUid(periodUid, this.period).windowIndex;
        timeline.getWindow(windowIndex, this.window);
        return (this.window.windowStartTimeMs != C.TIME_UNSET && this.window.isLive() && this.window.isDynamic) ? Util.msToUs(this.window.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - (this.period.getPositionInWindowUs() + periodPositionUs) : C.TIME_UNSET;
    }

    private boolean shouldUseLivePlaybackSpeedControl(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.isAd() || timeline.isEmpty()) {
            return false;
        }
        int windowIndex = timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex;
        timeline.getWindow(windowIndex, this.window);
        return this.window.isLive() && this.window.isDynamic && this.window.windowStartTimeMs != C.TIME_UNSET;
    }

    private void scheduleNextWork(long thisOperationStartTimeMs) {
        long wakeUpTimeIntervalMs;
        if (isDynamicSchedulingEnabled()) {
            wakeUpTimeIntervalMs = getDynamicSchedulingWakeUpIntervalMs();
        } else {
            wakeUpTimeIntervalMs = getStaticSchedulingWakeUpIntervalMs();
        }
        this.handler.sendEmptyMessageAtTime(2, thisOperationStartTimeMs + wakeUpTimeIntervalMs);
    }

    private long getDynamicSchedulingWakeUpIntervalMs() {
        long wakeUpTimeIntervalMs;
        if (this.playbackInfo.playbackState == 3) {
            wakeUpTimeIntervalMs = 1000;
        } else {
            wakeUpTimeIntervalMs = BUFFERING_MAXIMUM_INTERVAL_MS;
        }
        for (RendererHolder rendererHolder : this.renderers) {
            wakeUpTimeIntervalMs = Math.min(wakeUpTimeIntervalMs, Util.usToMs(rendererHolder.getMinDurationToProgressUs(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs)));
        }
        if (this.playbackInfo.isPlaying()) {
            MediaPeriodHolder nextPlayingPeriodHolder = this.queue.getPlayingPeriod() != null ? this.queue.getPlayingPeriod().getNext() : null;
            if (nextPlayingPeriodHolder != null && this.rendererPositionUs + (Util.msToUs(wakeUpTimeIntervalMs) * this.playbackInfo.playbackParameters.speed) >= nextPlayingPeriodHolder.getStartPositionRendererTime()) {
                return Math.min(wakeUpTimeIntervalMs, BUFFERING_MAXIMUM_INTERVAL_MS);
            }
            return wakeUpTimeIntervalMs;
        }
        return wakeUpTimeIntervalMs;
    }

    private long getStaticSchedulingWakeUpIntervalMs() {
        if (this.playbackInfo.playbackState == 3 && !shouldPlayWhenReady()) {
            return 1000L;
        }
        return BUFFERING_MAXIMUM_INTERVAL_MS;
    }

    private void seekToInternal(SeekPosition seekPosition) throws Throwable {
        long j;
        boolean seekPositionAdjusted;
        long requestedContentPositionUs;
        long periodPositionUs;
        MediaSource.MediaPeriodId periodId;
        long requestedContentPositionUs2;
        long periodPositionUs2;
        long periodPositionUs3;
        long newPeriodPositionUs;
        long newPeriodPositionUs2;
        boolean z;
        long requestedContentPositionUs3;
        long periodPositionUs4;
        if (this.seekIsPendingWhileScrubbing) {
            if (this.queuedSeekWhileScrubbing != null) {
                this.droppedSeeksWhileScrubbing++;
                this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            }
            this.queuedSeekWhileScrubbing = seekPosition;
            return;
        }
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Pair<Object, Long> resolvedSeekPosition = resolveSeekPositionUs(this.playbackInfo.timeline, seekPosition, true, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        if (resolvedSeekPosition == null) {
            Pair<MediaSource.MediaPeriodId, Long> firstPeriodAndPositionUs = getPlaceholderFirstMediaPeriodPositionUs(this.playbackInfo.timeline);
            MediaSource.MediaPeriodId periodId2 = (MediaSource.MediaPeriodId) firstPeriodAndPositionUs.first;
            periodPositionUs = ((Long) firstPeriodAndPositionUs.second).longValue();
            requestedContentPositionUs = C.TIME_UNSET;
            boolean seekPositionAdjusted2 = !this.playbackInfo.timeline.isEmpty();
            periodId = periodId2;
            seekPositionAdjusted = seekPositionAdjusted2;
            j = 0;
        } else {
            Object periodUid = resolvedSeekPosition.first;
            long resolvedContentPositionUs = ((Long) resolvedSeekPosition.second).longValue();
            long requestedContentPositionUs4 = seekPosition.windowPositionUs == C.TIME_UNSET ? -9223372036854775807L : resolvedContentPositionUs;
            MediaSource.MediaPeriodId periodId3 = this.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(this.playbackInfo.timeline, periodUid, resolvedContentPositionUs);
            if (periodId3.isAd()) {
                this.playbackInfo.timeline.getPeriodByUid(periodId3.periodUid, this.period);
                long periodPositionUs5 = this.period.getFirstAdIndexToPlay(periodId3.adGroupIndex) == periodId3.adIndexInAdGroup ? this.period.getAdResumePositionUs() : 0L;
                j = 0;
                AdPlaybackState.AdGroup adGroup = this.period.adPlaybackState.getAdGroup(periodId3.adGroupIndex);
                periodPositionUs = periodPositionUs5;
                seekPositionAdjusted = true;
                requestedContentPositionUs = Math.max(requestedContentPositionUs4, adGroup.timeUs + adGroup.contentResumeOffsetUs);
                periodId = periodId3;
            } else {
                j = 0;
                seekPositionAdjusted = seekPosition.windowPositionUs == C.TIME_UNSET;
                requestedContentPositionUs = requestedContentPositionUs4;
                periodPositionUs = resolvedContentPositionUs;
                periodId = periodId3;
            }
        }
        try {
            try {
            } catch (Throwable th) {
                th = th;
                periodPositionUs2 = periodPositionUs;
                requestedContentPositionUs2 = requestedContentPositionUs;
            }
        } catch (Throwable th2) {
            th = th2;
            requestedContentPositionUs2 = requestedContentPositionUs;
            periodPositionUs2 = periodPositionUs;
        }
        if (!this.playbackInfo.timeline.isEmpty()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            if (resolvedSeekPosition == null) {
                if (playbackInfo.playbackState != 1) {
                    setState(4);
                }
                resetInternal(false, true, false, true);
            } else {
                long newPeriodPositionUs3 = periodPositionUs;
                if (periodId.equals(playbackInfo.periodId)) {
                    try {
                        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
                        if (playingPeriodHolder == null || !playingPeriodHolder.prepared || newPeriodPositionUs3 == j) {
                            periodPositionUs3 = periodPositionUs;
                            newPeriodPositionUs = newPeriodPositionUs3;
                        } else {
                            periodPositionUs3 = periodPositionUs;
                            try {
                                newPeriodPositionUs = playingPeriodHolder.mediaPeriod.getAdjustedSeekPositionUs(newPeriodPositionUs3, getSeekParameters(this.window.durationUs));
                            } catch (Throwable th3) {
                                th = th3;
                                requestedContentPositionUs2 = requestedContentPositionUs;
                                periodPositionUs2 = periodPositionUs3;
                            }
                        }
                        if (Util.usToMs(newPeriodPositionUs) == Util.usToMs(this.playbackInfo.positionUs) && (this.playbackInfo.playbackState == 2 || this.playbackInfo.playbackState == 3)) {
                            long periodPositionUs6 = this.playbackInfo.positionUs;
                            this.playbackInfo = handlePositionDiscontinuity(periodId, periodPositionUs6, requestedContentPositionUs, periodPositionUs6, seekPositionAdjusted, 2);
                            return;
                        }
                        newPeriodPositionUs2 = newPeriodPositionUs;
                    } catch (Throwable th4) {
                        th = th4;
                        requestedContentPositionUs2 = requestedContentPositionUs;
                        periodPositionUs2 = periodPositionUs;
                    }
                } else {
                    periodPositionUs3 = periodPositionUs;
                    newPeriodPositionUs2 = newPeriodPositionUs3;
                }
                try {
                    if (this.scrubbingModeEnabled) {
                        RendererHolder[] rendererHolderArr = this.renderers;
                        int length = rendererHolderArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = true;
                                break;
                            }
                            RendererHolder renderer = rendererHolderArr[i];
                            if (renderer.isRendererEnabled() && renderer.getTrackType() == 2) {
                                z = true;
                                this.seekIsPendingWhileScrubbing = true;
                                break;
                            }
                            i++;
                        }
                    } else {
                        z = true;
                    }
                    long newPeriodPositionUs4 = seekToPeriodPosition(periodId, newPeriodPositionUs2, this.playbackInfo.playbackState == 4 ? z : false);
                    seekPositionAdjusted |= periodPositionUs3 != newPeriodPositionUs4 ? z : false;
                    try {
                        MediaSource.MediaPeriodId periodId4 = periodId;
                        long requestedContentPositionUs5 = requestedContentPositionUs;
                        try {
                            updatePlaybackSpeedSettingsForNewPeriod(this.playbackInfo.timeline, periodId4, this.playbackInfo.timeline, this.playbackInfo.periodId, requestedContentPositionUs5, true);
                            periodId = periodId4;
                            requestedContentPositionUs3 = requestedContentPositionUs5;
                            periodPositionUs4 = newPeriodPositionUs4;
                            this.playbackInfo = handlePositionDiscontinuity(periodId, periodPositionUs4, requestedContentPositionUs3, periodPositionUs4, seekPositionAdjusted, 2);
                        } catch (Throwable th5) {
                            th = th5;
                            periodId = periodId4;
                            requestedContentPositionUs2 = requestedContentPositionUs5;
                            periodPositionUs2 = newPeriodPositionUs4;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        requestedContentPositionUs2 = requestedContentPositionUs;
                        periodPositionUs2 = newPeriodPositionUs4;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    requestedContentPositionUs2 = requestedContentPositionUs;
                    periodPositionUs2 = periodPositionUs3;
                }
            }
            this.playbackInfo = handlePositionDiscontinuity(periodId, periodPositionUs2, requestedContentPositionUs2, periodPositionUs2, seekPositionAdjusted, 2);
            throw th;
        }
        this.pendingInitialSeekPosition = seekPosition;
        periodPositionUs4 = periodPositionUs;
        requestedContentPositionUs3 = requestedContentPositionUs;
        this.playbackInfo = handlePositionDiscontinuity(periodId, periodPositionUs4, requestedContentPositionUs3, periodPositionUs4, seekPositionAdjusted, 2);
    }

    private SeekParameters getSeekParameters(long durationUs) {
        if (!this.scrubbingModeEnabled || durationUs == C.TIME_UNSET || this.scrubbingModeParameters.fractionalSeekToleranceBefore == null || this.scrubbingModeParameters.fractionalSeekToleranceAfter == null) {
            return this.seekParameters;
        }
        long toleranceBeforeUs = DoubleMath.roundToLong(this.scrubbingModeParameters.fractionalSeekToleranceBefore.doubleValue() * durationUs, RoundingMode.FLOOR);
        long toleranceAfterUs = DoubleMath.roundToLong(this.scrubbingModeParameters.fractionalSeekToleranceAfter.doubleValue() * durationUs, RoundingMode.FLOOR);
        if (this.scrubbingModeSeekParameters == null || this.scrubbingModeSeekParameters.toleranceBeforeUs != toleranceBeforeUs || this.scrubbingModeSeekParameters.toleranceAfterUs != toleranceAfterUs) {
            this.scrubbingModeSeekParameters = new SeekParameters(toleranceBeforeUs, toleranceAfterUs);
        }
        return this.scrubbingModeSeekParameters;
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId periodId, long periodPositionUs, boolean forceBufferingState) throws ExoPlaybackException {
        return seekToPeriodPosition(periodId, periodPositionUs, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod(), forceBufferingState);
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId periodId, long periodPositionUs, boolean forceDisableRenderers, boolean forceBufferingState) throws ExoPlaybackException {
        MediaPeriodQueue mediaPeriodQueue;
        stopRenderers();
        updateRebufferingState(false, true);
        if (forceBufferingState || this.playbackInfo.playbackState == 3) {
            setState(2);
        }
        MediaPeriodHolder oldPlayingPeriodHolder = this.queue.getPlayingPeriod();
        MediaPeriodHolder newPlayingPeriodHolder = oldPlayingPeriodHolder;
        while (newPlayingPeriodHolder != null && !periodId.equals(newPlayingPeriodHolder.info.id)) {
            newPlayingPeriodHolder = newPlayingPeriodHolder.getNext();
        }
        if (forceDisableRenderers || oldPlayingPeriodHolder != newPlayingPeriodHolder || (newPlayingPeriodHolder != null && newPlayingPeriodHolder.toRendererTime(periodPositionUs) < 0)) {
            disableRenderers();
            if (newPlayingPeriodHolder != null) {
                while (true) {
                    MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                    mediaPeriodQueue = this.queue;
                    if (playingPeriod == newPlayingPeriodHolder) {
                        break;
                    }
                    mediaPeriodQueue.advancePlayingPeriod();
                }
                mediaPeriodQueue.removeAfter(newPlayingPeriodHolder);
                newPlayingPeriodHolder.setRendererOffset(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                enableRenderers();
                newPlayingPeriodHolder.allRenderersInCorrectState = true;
            }
        }
        disableAndResetPrewarmingRenderers();
        MediaPeriodQueue mediaPeriodQueue2 = this.queue;
        if (newPlayingPeriodHolder != null) {
            mediaPeriodQueue2.removeAfter(newPlayingPeriodHolder);
            boolean hasResetToKeyFrame = true;
            if (!newPlayingPeriodHolder.prepared) {
                newPlayingPeriodHolder.info = newPlayingPeriodHolder.info.copyWithStartPositionUs(periodPositionUs, C.TIME_UNSET);
            } else if (newPlayingPeriodHolder.hasEnabledTracks) {
                if (this.scrubbingModeEnabled && this.scrubbingModeParameters.allowSkippingKeyFrameReset && shouldSkipKeyFrameReset(newPlayingPeriodHolder, periodPositionUs)) {
                    hasResetToKeyFrame = false;
                } else {
                    periodPositionUs = newPlayingPeriodHolder.mediaPeriod.seekToUs(periodPositionUs);
                    newPlayingPeriodHolder.mediaPeriod.discardBuffer(periodPositionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
                }
            }
            resetRendererPosition(periodPositionUs, hasResetToKeyFrame);
            maybeContinueLoading();
        } else {
            mediaPeriodQueue2.clear();
            resetRendererPosition(periodPositionUs, true);
        }
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return periodPositionUs;
    }

    private boolean shouldSkipKeyFrameReset(MediaPeriodHolder playingPeriod, long periodPositionUs) {
        if (this.playbackInfo.timeline.isEmpty() || !playingPeriod.info.id.equals(this.playbackInfo.periodId)) {
            return false;
        }
        long rendererPositionUs = playingPeriod.toRendererTime(periodPositionUs);
        boolean renderersSupportSkipKeyFrameReset = true;
        for (RendererHolder renderer : this.renderers) {
            if (renderer.isRendererEnabled()) {
                renderersSupportSkipKeyFrameReset &= renderer.supportsResetPositionWithoutKeyFrameReset(playingPeriod, rendererPositionUs);
            }
        }
        if (!renderersSupportSkipKeyFrameReset) {
            return false;
        }
        long adjustedCurrentPositionSyncUs = playingPeriod.mediaPeriod.getAdjustedSeekPositionUs(this.playbackInfo.positionUs, SeekParameters.PREVIOUS_SYNC);
        long adjustedSeekPositionSyncUs = playingPeriod.mediaPeriod.getAdjustedSeekPositionUs(periodPositionUs, SeekParameters.PREVIOUS_SYNC);
        return adjustedCurrentPositionSyncUs == adjustedSeekPositionSyncUs;
    }

    private void resetRendererPosition(long periodPositionUs, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        long rendererTime;
        MediaPeriodHolder playingMediaPeriod = this.queue.getPlayingPeriod();
        if (playingMediaPeriod == null) {
            rendererTime = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US + periodPositionUs;
        } else {
            rendererTime = playingMediaPeriod.toRendererTime(periodPositionUs);
        }
        this.rendererPositionUs = rendererTime;
        this.mediaClock.resetPosition(this.rendererPositionUs);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.resetPosition(playingMediaPeriod, this.rendererPositionUs, sampleStreamIsResetToKeyFrame);
        }
        notifyTrackSelectionDiscontinuity();
    }

    private void setPlaybackParametersInternal(PlaybackParameters playbackParameters) throws ExoPlaybackException {
        setMediaClockPlaybackParameters(playbackParameters);
        handlePlaybackParameters(this.mediaClock.getPlaybackParameters(), true);
    }

    private void setSeekParametersInternal(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setScrubbingModeEnabledInternal(boolean scrubbingModeEnabled) throws Throwable {
        if (!scrubbingModeEnabled) {
            if (this.queuedSeekWhileScrubbing != null && this.seekIsPendingWhileScrubbing && !this.handler.hasMessages(37)) {
                this.droppedSeeksWhileScrubbing++;
            }
            if (this.droppedSeeksWhileScrubbing > 0) {
                final int localDroppedSeeksCount = this.droppedSeeksWhileScrubbing;
                this.applicationLooperHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7869x963b190b(localDroppedSeeksCount);
                    }
                });
            }
            this.droppedSeeksWhileScrubbing = 0;
            this.seekIsPendingWhileScrubbing = false;
            this.handler.removeMessages(37);
            if (this.queuedSeekWhileScrubbing != null) {
                seekToInternal(this.queuedSeekWhileScrubbing);
                this.queuedSeekWhileScrubbing = null;
                this.seekIsPendingWhileScrubbing = false;
            }
        }
        this.scrubbingModeEnabled = scrubbingModeEnabled;
        applyScrubbingModeParameters();
    }

    /* JADX INFO: renamed from: lambda$setScrubbingModeEnabledInternal$2$androidx-media3-exoplayer-ExoPlayerImplInternal, reason: not valid java name */
    /* synthetic */ void m7869x963b190b(int localDroppedSeeksCount) {
        this.analyticsCollector.onDroppedSeeksWhileScrubbing(localDroppedSeeksCount);
    }

    private void setScrubbingModeParametersInternal(ScrubbingModeParameters scrubbingModeParameters) throws ExoPlaybackException {
        this.scrubbingModeParameters = scrubbingModeParameters;
        applyScrubbingModeParameters();
    }

    private void applyScrubbingModeParameters() throws ExoPlaybackException {
        for (RendererHolder renderer : this.renderers) {
            renderer.setScrubbingMode(this.scrubbingModeEnabled ? this.scrubbingModeParameters : null);
        }
    }

    private void setForegroundModeInternal(boolean foregroundMode, ConditionVariable processedCondition) {
        if (this.foregroundMode != foregroundMode) {
            this.foregroundMode = foregroundMode;
            if (!foregroundMode) {
                for (RendererHolder rendererHolder : this.renderers) {
                    rendererHolder.reset();
                }
            }
        }
        if (processedCondition != null) {
            processedCondition.open();
        }
    }

    private void setVideoOutputInternal(Object videoOutput, ConditionVariable processedCondition) throws ExoPlaybackException {
        for (RendererHolder renderer : this.renderers) {
            renderer.setVideoOutput(videoOutput);
        }
        if (this.playbackInfo.playbackState == 3 || this.playbackInfo.playbackState == 2) {
            this.handler.sendEmptyMessage(2);
        }
        if (processedCondition != null) {
            processedCondition.open();
        }
    }

    private void stopInternal(boolean z, boolean z2) {
        resetInternal(z || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.loadControl.onStopped(this.playerId);
        this.audioFocusManager.updateAudioFocus(this.playbackInfo.playWhenReady, 1);
        setState(1);
    }

    private void releaseInternal(ConditionVariable processedCondition) {
        try {
            resetInternal(true, false, true, false);
            releaseRenderers();
            this.loadControl.onReleased(this.playerId);
            this.audioFocusManager.release();
            this.trackSelector.release();
            setState(1);
        } finally {
            this.handler.removeCallbacksAndMessages(null);
            this.playbackLooperProvider.releaseLooper();
            processedCondition.open();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00f3 A[PHI: r3
      0x00f3: PHI (r3v4 'timeline' androidx.media3.common.Timeline) = 
      (r3v3 'timeline' androidx.media3.common.Timeline)
      (r3v3 'timeline' androidx.media3.common.Timeline)
      (r3v7 'timeline' androidx.media3.common.Timeline)
      (r3v7 'timeline' androidx.media3.common.Timeline)
     binds: [B:36:0x00b4, B:38:0x00b8, B:40:0x00cd, B:42:0x00e4] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void resetInternal(boolean resetRenderers, boolean resetPosition, boolean releaseMediaSourceList, boolean resetError) {
        long requestedContentPositionUs;
        long startPositionUs;
        long requestedContentPositionUs2;
        MediaSource.MediaPeriodId mediaPeriodId;
        Timeline timeline;
        this.handler.removeMessages(2);
        this.seekIsPendingWhileScrubbing = false;
        if (this.queuedSeekWhileScrubbing != null) {
            this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            this.queuedSeekWhileScrubbing = null;
        }
        this.pendingRecoverableRendererError = null;
        updateRebufferingState(false, true);
        this.mediaClock.stop();
        this.rendererPositionUs = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        try {
            disableRenderers();
        } catch (ExoPlaybackException | RuntimeException e) {
            Log.e(TAG, "Disable failed.", e);
        }
        if (resetRenderers) {
            for (RendererHolder rendererHolder : this.renderers) {
                try {
                    rendererHolder.reset();
                } catch (RuntimeException e2) {
                    Log.e(TAG, "Reset failed.", e2);
                }
            }
        }
        this.enabledRendererCount = 0;
        MediaSource.MediaPeriodId mediaPeriodId2 = this.playbackInfo.periodId;
        long startPositionUs2 = this.playbackInfo.positionUs;
        if (this.playbackInfo.periodId.isAd() || isUsingPlaceholderPeriod(this.playbackInfo, this.period)) {
            requestedContentPositionUs = this.playbackInfo.requestedContentPositionUs;
        } else {
            requestedContentPositionUs = this.playbackInfo.positionUs;
        }
        boolean resetTrackInfo = false;
        if (!resetPosition) {
            startPositionUs = startPositionUs2;
            requestedContentPositionUs2 = requestedContentPositionUs;
        } else {
            this.pendingInitialSeekPosition = null;
            Pair<MediaSource.MediaPeriodId, Long> firstPeriodAndPositionUs = getPlaceholderFirstMediaPeriodPositionUs(this.playbackInfo.timeline);
            mediaPeriodId2 = (MediaSource.MediaPeriodId) firstPeriodAndPositionUs.first;
            long startPositionUs3 = ((Long) firstPeriodAndPositionUs.second).longValue();
            if (mediaPeriodId2.equals(this.playbackInfo.periodId)) {
                startPositionUs = startPositionUs3;
                requestedContentPositionUs2 = -9223372036854775807L;
            } else {
                resetTrackInfo = true;
                startPositionUs = startPositionUs3;
                requestedContentPositionUs2 = -9223372036854775807L;
            }
        }
        this.queue.clear();
        this.shouldContinueLoading = false;
        Timeline timeline2 = this.playbackInfo.timeline;
        if (releaseMediaSourceList && (timeline2 instanceof PlaylistTimeline)) {
            timeline2 = ((PlaylistTimeline) this.playbackInfo.timeline).copyWithPlaceholderTimeline(this.mediaSourceList.getShuffleOrder());
            if (mediaPeriodId2.adGroupIndex != -1) {
                timeline2.getPeriodByUid(mediaPeriodId2.periodUid, this.period);
                if (timeline2.getWindow(this.period.windowIndex, this.window).isLive()) {
                    mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber);
                    timeline = timeline2;
                }
            }
        } else {
            mediaPeriodId = mediaPeriodId2;
            timeline = timeline2;
        }
        this.playbackInfo = new PlaybackInfo(timeline, mediaPeriodId, requestedContentPositionUs2, startPositionUs, this.playbackInfo.playbackState, resetError ? null : this.playbackInfo.playbackError, false, resetTrackInfo ? TrackGroupArray.EMPTY : this.playbackInfo.trackGroups, resetTrackInfo ? this.emptyTrackSelectorResult : this.playbackInfo.trackSelectorResult, resetTrackInfo ? ImmutableList.of() : this.playbackInfo.staticMetadata, mediaPeriodId, this.playbackInfo.playWhenReady, this.playbackInfo.playWhenReadyChangeReason, this.playbackInfo.playbackSuppressionReason, this.playbackInfo.playbackParameters, startPositionUs, 0L, startPositionUs, 0L, false);
        if (releaseMediaSourceList) {
            this.queue.releasePreloadPool();
            this.mediaSourceList.release();
        }
    }

    private Pair<MediaSource.MediaPeriodId, Long> getPlaceholderFirstMediaPeriodPositionUs(Timeline timeline) {
        if (timeline.isEmpty()) {
            return Pair.create(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L);
        }
        int firstWindowIndex = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
        Pair<Object, Long> firstPeriodAndPositionUs = timeline.getPeriodPositionUs(this.window, this.period, firstWindowIndex, C.TIME_UNSET);
        MediaSource.MediaPeriodId firstPeriodId = this.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline, firstPeriodAndPositionUs.first, 0L);
        long positionUs = ((Long) firstPeriodAndPositionUs.second).longValue();
        if (firstPeriodId.isAd()) {
            timeline.getPeriodByUid(firstPeriodId.periodUid, this.period);
            positionUs = firstPeriodId.adIndexInAdGroup == this.period.getFirstAdIndexToPlay(firstPeriodId.adGroupIndex) ? this.period.getAdResumePositionUs() : 0L;
        }
        return Pair.create(firstPeriodId, Long.valueOf(positionUs));
    }

    private void sendMessageInternal(PlayerMessage message) throws ExoPlaybackException {
        if (message.getPositionMs() == C.TIME_UNSET) {
            sendMessageToTarget(message);
            return;
        }
        if (this.playbackInfo.timeline.isEmpty()) {
            this.pendingMessages.add(new PendingMessageInfo(message));
            return;
        }
        PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(message);
        if (resolvePendingMessagePosition(pendingMessageInfo, this.playbackInfo.timeline, this.playbackInfo.timeline, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            this.pendingMessages.add(pendingMessageInfo);
            Collections.sort(this.pendingMessages);
        } else {
            message.markAsProcessed(false);
        }
    }

    private void sendMessageToTarget(PlayerMessage message) throws ExoPlaybackException {
        if (message.getLooper() == this.playbackLooper) {
            deliverMessage(message);
            if (this.playbackInfo.playbackState == 3 || this.playbackInfo.playbackState == 2) {
                this.handler.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.handler.obtainMessage(15, message).sendToTarget();
    }

    private void sendMessageToTargetThread(final PlayerMessage message) {
        Looper looper = message.getLooper();
        if (!looper.getThread().isAlive()) {
            Log.w("TAG", "Trying to send message on a dead thread.");
            message.markAsProcessed(false);
        } else {
            this.clock.createHandler(looper, null).post(new Runnable() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7868x7d6630d3(message);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$sendMessageToTargetThread$3$androidx-media3-exoplayer-ExoPlayerImplInternal, reason: not valid java name */
    /* synthetic */ void m7868x7d6630d3(PlayerMessage message) {
        try {
            deliverMessage(message);
        } catch (ExoPlaybackException e) {
            Log.e(TAG, "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private void deliverMessage(PlayerMessage message) throws ExoPlaybackException {
        if (message.isCanceled()) {
            return;
        }
        try {
            message.getTarget().handleMessage(message.getType(), message.getPayload());
        } finally {
            message.markAsProcessed(true);
        }
    }

    private void resolvePendingMessagePositions(Timeline newTimeline, Timeline previousTimeline) {
        if (newTimeline.isEmpty() && previousTimeline.isEmpty()) {
            return;
        }
        int i = this.pendingMessages.size() - 1;
        while (true) {
            ArrayList<PendingMessageInfo> arrayList = this.pendingMessages;
            if (i >= 0) {
                Timeline newTimeline2 = newTimeline;
                Timeline previousTimeline2 = previousTimeline;
                if (!resolvePendingMessagePosition(arrayList.get(i), newTimeline2, previousTimeline2, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                    this.pendingMessages.get(i).message.markAsProcessed(false);
                    this.pendingMessages.remove(i);
                }
                i--;
                newTimeline = newTimeline2;
                previousTimeline = previousTimeline2;
            } else {
                Collections.sort(arrayList);
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void maybeTriggerPendingMessages(long oldPeriodPositionUs, long newPeriodPositionUs) throws ExoPlaybackException {
        PendingMessageInfo nextInfo;
        PendingMessageInfo pendingMessageInfo;
        PendingMessageInfo pendingMessageInfo2;
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.isAd()) {
            return;
        }
        if (this.deliverPendingMessageAtStartPositionRequired) {
            oldPeriodPositionUs--;
            this.deliverPendingMessageAtStartPositionRequired = false;
        }
        int currentPeriodIndex = this.playbackInfo.timeline.getIndexOfPeriod(this.playbackInfo.periodId.periodUid);
        int nextPendingMessageIndex = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        PendingMessageInfo previousInfo = nextPendingMessageIndex > 0 ? this.pendingMessages.get(nextPendingMessageIndex - 1) : null;
        while (previousInfo != null && (previousInfo.resolvedPeriodIndex > currentPeriodIndex || (previousInfo.resolvedPeriodIndex == currentPeriodIndex && previousInfo.resolvedPeriodTimeUs > oldPeriodPositionUs))) {
            nextPendingMessageIndex--;
            previousInfo = nextPendingMessageIndex > 0 ? this.pendingMessages.get(nextPendingMessageIndex - 1) : null;
        }
        if (nextPendingMessageIndex < this.pendingMessages.size()) {
            nextInfo = this.pendingMessages.get(nextPendingMessageIndex);
        } else {
            nextInfo = null;
        }
        while (nextInfo != null && nextInfo.resolvedPeriodUid != null && (nextInfo.resolvedPeriodIndex < currentPeriodIndex || (nextInfo.resolvedPeriodIndex == currentPeriodIndex && nextInfo.resolvedPeriodTimeUs <= oldPeriodPositionUs))) {
            nextPendingMessageIndex++;
            if (nextPendingMessageIndex < this.pendingMessages.size()) {
                pendingMessageInfo2 = this.pendingMessages.get(nextPendingMessageIndex);
            } else {
                pendingMessageInfo2 = null;
            }
            nextInfo = pendingMessageInfo2;
        }
        while (nextInfo != null && nextInfo.resolvedPeriodUid != null && nextInfo.resolvedPeriodIndex == currentPeriodIndex && nextInfo.resolvedPeriodTimeUs > oldPeriodPositionUs && nextInfo.resolvedPeriodTimeUs <= newPeriodPositionUs) {
            try {
                sendMessageToTarget(nextInfo.message);
                if (nextPendingMessageIndex < this.pendingMessages.size()) {
                    pendingMessageInfo = this.pendingMessages.get(nextPendingMessageIndex);
                } else {
                    pendingMessageInfo = null;
                }
                nextInfo = pendingMessageInfo;
            } finally {
                if (nextInfo.message.getDeleteAfterDelivery() || nextInfo.message.isCanceled()) {
                    this.pendingMessages.remove(nextPendingMessageIndex);
                } else {
                    int nextPendingMessageIndex2 = nextPendingMessageIndex + 1;
                }
            }
        }
        this.nextPendingMessageIndexHint = nextPendingMessageIndex;
    }

    private void disableRenderers() throws ExoPlaybackException {
        for (int i = 0; i < this.renderers.length; i++) {
            disableRenderer(i);
        }
        this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
    }

    private void disableRenderer(int rendererIndex) throws ExoPlaybackException {
        int enabledRendererCountBeforeDisabling = this.renderers[rendererIndex].getEnabledRendererCount();
        this.renderers[rendererIndex].disable(this.mediaClock);
        maybeTriggerOnRendererReadyChanged(rendererIndex, false);
        this.enabledRendererCount -= enabledRendererCountBeforeDisabling;
    }

    private void disableAndResetPrewarmingRenderers() {
        if (!this.hasSecondaryRenderers || !areRenderersPrewarming()) {
            return;
        }
        for (RendererHolder renderer : this.renderers) {
            int enabledRendererCountBeforeDisabling = renderer.getEnabledRendererCount();
            renderer.disablePrewarming(this.mediaClock);
            this.enabledRendererCount -= enabledRendererCountBeforeDisabling - renderer.getEnabledRendererCount();
        }
        this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
    }

    private boolean isRendererPrewarmingMediaPeriod(int rendererIndex, MediaSource.MediaPeriodId mediaPeriodId) {
        if (this.queue.getPrewarmingPeriod() == null || !this.queue.getPrewarmingPeriod().info.id.equals(mediaPeriodId)) {
            return false;
        }
        return this.renderers[rendererIndex].isPrewarmingPeriod(this.queue.getPrewarmingPeriod());
    }

    private void reselectTracksInternalAndSeek() throws ExoPlaybackException {
        reselectTracksInternal();
        seekToCurrentPosition(true);
    }

    private void reselectTracksInternal() throws ExoPlaybackException {
        TrackSelectorResult newPlayingPeriodTrackSelectorResult;
        float playbackSpeed = this.mediaClock.getPlaybackParameters().speed;
        MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod();
        MediaPeriodHolder readingPeriodHolder = this.queue.getReadingPeriod();
        TrackSelectorResult newPlayingPeriodTrackSelectorResult2 = null;
        MediaPeriodHolder periodHolder2 = periodHolder;
        boolean selectionsChangedForReadPeriod = true;
        while (periodHolder2 != null && periodHolder2.prepared) {
            TrackSelectorResult newTrackSelectorResult = periodHolder2.selectTracks(playbackSpeed, this.playbackInfo.timeline, this.playbackInfo.playWhenReady);
            if (periodHolder2 != this.queue.getPlayingPeriod()) {
                newPlayingPeriodTrackSelectorResult = newPlayingPeriodTrackSelectorResult2;
            } else {
                newPlayingPeriodTrackSelectorResult = newTrackSelectorResult;
            }
            if (newTrackSelectorResult.isEquivalent(periodHolder2.getTrackSelectorResult())) {
                float playbackSpeed2 = playbackSpeed;
                boolean selectionsChangedForReadPeriod2 = selectionsChangedForReadPeriod;
                if (periodHolder2 != readingPeriodHolder) {
                    selectionsChangedForReadPeriod = selectionsChangedForReadPeriod2;
                } else {
                    selectionsChangedForReadPeriod = false;
                }
                periodHolder2 = periodHolder2.getNext();
                newPlayingPeriodTrackSelectorResult2 = newPlayingPeriodTrackSelectorResult;
                playbackSpeed = playbackSpeed2;
            } else {
                MediaPeriodQueue mediaPeriodQueue = this.queue;
                if (selectionsChangedForReadPeriod) {
                    MediaPeriodHolder playingPeriodHolder = mediaPeriodQueue.getPlayingPeriod();
                    int removeAfterResult = this.queue.removeAfter(playingPeriodHolder);
                    boolean recreateStreams = (removeAfterResult & 1) != 0;
                    boolean[] streamResetFlags = new boolean[this.renderers.length];
                    long periodPositionUs = playingPeriodHolder.applyTrackSelection((TrackSelectorResult) Preconditions.checkNotNull(newPlayingPeriodTrackSelectorResult), this.playbackInfo.positionUs, recreateStreams, streamResetFlags);
                    boolean hasDiscontinuity = (this.playbackInfo.playbackState == 4 || periodPositionUs == this.playbackInfo.positionUs) ? false : true;
                    this.playbackInfo = handlePositionDiscontinuity(this.playbackInfo.periodId, periodPositionUs, this.playbackInfo.requestedContentPositionUs, this.playbackInfo.discontinuityStartPositionUs, hasDiscontinuity, 5);
                    if (hasDiscontinuity) {
                        resetRendererPosition(periodPositionUs, true);
                    }
                    disableAndResetPrewarmingRenderers();
                    boolean[] rendererWasEnabledFlags = new boolean[this.renderers.length];
                    int i = 0;
                    while (i < this.renderers.length) {
                        int enabledRendererCountBeforeDisabling = this.renderers[i].getEnabledRendererCount();
                        rendererWasEnabledFlags[i] = this.renderers[i].isRendererEnabled();
                        TrackSelectorResult newTrackSelectorResult2 = newTrackSelectorResult;
                        this.renderers[i].maybeDisableOrResetPosition(playingPeriodHolder.sampleStreams[i], this.mediaClock, this.rendererPositionUs, streamResetFlags[i]);
                        if (enabledRendererCountBeforeDisabling - this.renderers[i].getEnabledRendererCount() > 0) {
                            maybeTriggerOnRendererReadyChanged(i, false);
                        }
                        this.enabledRendererCount -= enabledRendererCountBeforeDisabling - this.renderers[i].getEnabledRendererCount();
                        i++;
                        newTrackSelectorResult = newTrackSelectorResult2;
                    }
                    enableRenderers(rendererWasEnabledFlags, this.rendererPositionUs);
                    playingPeriodHolder.allRenderersInCorrectState = true;
                } else {
                    mediaPeriodQueue.removeAfter(periodHolder2);
                    if (periodHolder2.prepared) {
                        long loadingPeriodPositionUs = Math.max(periodHolder2.info.startPositionUs, periodHolder2.toPeriodTime(this.rendererPositionUs));
                        if (this.hasSecondaryRenderers && areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == periodHolder2) {
                            disableAndResetPrewarmingRenderers();
                        }
                        periodHolder2.applyTrackSelection(newTrackSelectorResult, loadingPeriodPositionUs, false);
                    }
                }
                handleLoadingMediaPeriodChanged(true);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    updatePlaybackPositions();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
        }
    }

    private void updateTrackSelectionPlaybackSpeed(float playbackSpeed) {
        for (MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod(); periodHolder != null; periodHolder = periodHolder.getNext()) {
            for (ExoTrackSelection trackSelection : periodHolder.getTrackSelectorResult().selections) {
                if (trackSelection != null) {
                    trackSelection.onPlaybackSpeed(playbackSpeed);
                }
            }
        }
    }

    private void notifyTrackSelectionDiscontinuity() {
        for (MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod(); periodHolder != null; periodHolder = periodHolder.getNext()) {
            for (ExoTrackSelection trackSelection : periodHolder.getTrackSelectorResult().selections) {
                if (trackSelection != null) {
                    trackSelection.onDiscontinuity();
                }
            }
        }
    }

    private boolean shouldTransitionToReadyState(boolean renderersReadyOrEnded) {
        long targetLiveOffsetUs;
        if (this.enabledRendererCount == 0) {
            return isTimelineReady();
        }
        boolean isAdPendingPreparation = false;
        if (!renderersReadyOrEnded) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        if (shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, playingPeriodHolder.info.id)) {
            targetLiveOffsetUs = this.livePlaybackSpeedControl.getTargetLiveOffsetUs();
        } else {
            targetLiveOffsetUs = C.TIME_UNSET;
        }
        long targetLiveOffsetUs2 = targetLiveOffsetUs;
        MediaPeriodHolder loadingHolder = this.queue.getLoadingPeriod();
        boolean isBufferedToEnd = loadingHolder.isFullyBuffered() && loadingHolder.info.isFinal;
        if (loadingHolder.info.id.isAd() && !loadingHolder.prepared) {
            isAdPendingPreparation = true;
        }
        if (isBufferedToEnd || isAdPendingPreparation) {
            return true;
        }
        long bufferedDurationUs = getTotalBufferedDurationUs(loadingHolder.getBufferedPositionUs());
        return this.loadControl.shouldStartPlayback(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, playingPeriodHolder.info.id, playingPeriodHolder.toPeriodTime(this.rendererPositionUs), bufferedDurationUs, this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, targetLiveOffsetUs2, this.lastRebufferRealtimeMs));
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        long playingPeriodDurationUs = playingPeriodHolder.info.durationUs;
        return playingPeriodHolder.prepared && (playingPeriodDurationUs == C.TIME_UNSET || this.playbackInfo.positionUs < playingPeriodDurationUs || !shouldPlayWhenReady());
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleMediaSourceListInfoRefreshed(Timeline timeline, boolean isSourceRefresh) throws Throwable {
        boolean z;
        MediaSource.MediaPeriodId newPeriodId;
        MediaSource.MediaPeriodId newPeriodId2;
        Timeline timeline2;
        Timeline timeline3;
        Timeline timeline4 = timeline;
        PositionUpdateForPlaylistChange positionUpdate = resolvePositionForPlaylistChange(timeline4, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, isSourceRefresh, this.window, this.period);
        MediaSource.MediaPeriodId newPeriodId3 = positionUpdate.periodId;
        long newPositionUs = positionUpdate.periodPositionUs;
        try {
            if (positionUpdate.endPlayback) {
                try {
                    if (this.playbackInfo.playbackState != 1) {
                        setState(4);
                    }
                    resetInternal(false, false, false, true);
                } catch (Throwable th) {
                    th = th;
                    z = false;
                    newPeriodId = newPeriodId3;
                    newPeriodId2 = newPeriodId;
                    updatePlaybackSpeedSettingsForNewPeriod(timeline, newPeriodId2, this.playbackInfo.timeline, this.playbackInfo.periodId, !positionUpdate.setTargetLiveOffset ? newPositionUs : C.TIME_UNSET, false);
                    if (positionUpdate.periodPositionChanged) {
                        long j = positionUpdate.requestedContentPositionUs;
                        if (!positionUpdate.reportDiscontinuity) {
                        }
                        timeline2 = timeline;
                        this.playbackInfo = handlePositionDiscontinuity(newPeriodId2, newPositionUs, j, j, positionUpdate.reportDiscontinuity, positionUpdate.discontinuityReason);
                    }
                    resetPendingPauseAtEndOfPeriod();
                    resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                    this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                    if (!timeline2.isEmpty()) {
                    }
                    handleLoadingMediaPeriodChanged(z);
                    this.handler.sendEmptyMessage(2);
                    throw th;
                }
            }
            for (RendererHolder rendererHolder : this.renderers) {
                rendererHolder.setTimeline(timeline4);
            }
            try {
                if (positionUpdate.periodPositionChanged) {
                    z = false;
                    try {
                        if (!timeline4.isEmpty()) {
                            for (MediaPeriodHolder periodHolder = this.queue.getPlayingPeriod(); periodHolder != null; periodHolder = periodHolder.getNext()) {
                                if (periodHolder.info.id.equals(newPeriodId3)) {
                                    periodHolder.info = this.queue.getUpdatedMediaPeriodInfo(timeline4, periodHolder.info);
                                    periodHolder.updateClipping();
                                }
                            }
                            newPositionUs = seekToPeriodPosition(newPeriodId3, newPositionUs, positionUpdate.forceBufferingState);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        newPeriodId = newPeriodId3;
                        newPeriodId2 = newPeriodId;
                        updatePlaybackSpeedSettingsForNewPeriod(timeline, newPeriodId2, this.playbackInfo.timeline, this.playbackInfo.periodId, !positionUpdate.setTargetLiveOffset ? newPositionUs : C.TIME_UNSET, false);
                        if (positionUpdate.periodPositionChanged) {
                        }
                        resetPendingPauseAtEndOfPeriod();
                        resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                        if (!timeline2.isEmpty()) {
                        }
                        handleLoadingMediaPeriodChanged(z);
                        this.handler.sendEmptyMessage(2);
                        throw th;
                    }
                } else {
                    long maxRendererPrewarmingPositionUs = 0;
                    long maxRendererReadPositionUs = this.queue.getReadingPeriod() == null ? 0L : getMaxRendererReadPositionUs(this.queue.getReadingPeriod());
                    if (areRenderersPrewarming() && this.queue.getPrewarmingPeriod() != null) {
                        maxRendererPrewarmingPositionUs = getMaxRendererReadPositionUs(this.queue.getPrewarmingPeriod());
                    }
                    try {
                        try {
                            z = false;
                            try {
                                int updateQueuedPeriodsResult = this.queue.updateQueuedPeriods(timeline, this.rendererPositionUs, maxRendererReadPositionUs, maxRendererPrewarmingPositionUs);
                                timeline4 = timeline;
                                if ((updateQueuedPeriodsResult & 1) != 0) {
                                    seekToCurrentPosition(false);
                                } else if ((updateQueuedPeriodsResult & 2) != 0) {
                                    disableAndResetPrewarmingRenderers();
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                newPeriodId = newPeriodId3;
                                newPeriodId2 = newPeriodId;
                                updatePlaybackSpeedSettingsForNewPeriod(timeline, newPeriodId2, this.playbackInfo.timeline, this.playbackInfo.periodId, !positionUpdate.setTargetLiveOffset ? newPositionUs : C.TIME_UNSET, false);
                                if (positionUpdate.periodPositionChanged && positionUpdate.requestedContentPositionUs == this.playbackInfo.requestedContentPositionUs) {
                                    timeline2 = timeline;
                                } else {
                                    long j2 = positionUpdate.requestedContentPositionUs;
                                    long j3 = !positionUpdate.reportDiscontinuity ? newPositionUs : this.playbackInfo.discontinuityStartPositionUs;
                                    timeline2 = timeline;
                                    this.playbackInfo = handlePositionDiscontinuity(newPeriodId2, newPositionUs, j2, j3, positionUpdate.reportDiscontinuity, positionUpdate.discontinuityReason);
                                }
                                resetPendingPauseAtEndOfPeriod();
                                resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                                this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                                if (!timeline2.isEmpty()) {
                                    this.pendingInitialSeekPosition = null;
                                }
                                handleLoadingMediaPeriodChanged(z);
                                this.handler.sendEmptyMessage(2);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            z = false;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        z = false;
                        newPeriodId = newPeriodId3;
                        newPeriodId2 = newPeriodId;
                        updatePlaybackSpeedSettingsForNewPeriod(timeline, newPeriodId2, this.playbackInfo.timeline, this.playbackInfo.periodId, !positionUpdate.setTargetLiveOffset ? newPositionUs : C.TIME_UNSET, false);
                        if (positionUpdate.periodPositionChanged) {
                        }
                        resetPendingPauseAtEndOfPeriod();
                        resolvePendingMessagePositions(timeline2, this.playbackInfo.timeline);
                        this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2);
                        if (!timeline2.isEmpty()) {
                        }
                        handleLoadingMediaPeriodChanged(z);
                        this.handler.sendEmptyMessage(2);
                        throw th;
                    }
                }
                updatePlaybackSpeedSettingsForNewPeriod(timeline4, newPeriodId3, this.playbackInfo.timeline, this.playbackInfo.periodId, positionUpdate.setTargetLiveOffset ? newPositionUs : C.TIME_UNSET, false);
                if (positionUpdate.periodPositionChanged || positionUpdate.requestedContentPositionUs != this.playbackInfo.requestedContentPositionUs) {
                    long j4 = positionUpdate.requestedContentPositionUs;
                    long j5 = positionUpdate.reportDiscontinuity ? newPositionUs : this.playbackInfo.discontinuityStartPositionUs;
                    long newPositionUs2 = newPositionUs;
                    timeline3 = timeline;
                    this.playbackInfo = handlePositionDiscontinuity(newPeriodId3, newPositionUs2, j4, j5, positionUpdate.reportDiscontinuity, positionUpdate.discontinuityReason);
                } else {
                    timeline3 = timeline;
                }
                resetPendingPauseAtEndOfPeriod();
                resolvePendingMessagePositions(timeline3, this.playbackInfo.timeline);
                this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline3);
                if (!timeline3.isEmpty()) {
                    this.pendingInitialSeekPosition = null;
                }
                handleLoadingMediaPeriodChanged(z);
                this.handler.sendEmptyMessage(2);
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            z = false;
        }
    }

    private void updatePlaybackSpeedSettingsForNewPeriod(Timeline newTimeline, MediaSource.MediaPeriodId newPeriodId, Timeline oldTimeline, MediaSource.MediaPeriodId oldPeriodId, long positionForTargetOffsetOverrideUs, boolean forceSetTargetOffsetOverride) throws ExoPlaybackException {
        if (!shouldUseLivePlaybackSpeedControl(newTimeline, newPeriodId)) {
            PlaybackParameters targetPlaybackParameters = newPeriodId.isAd() ? PlaybackParameters.DEFAULT : this.playbackInfo.playbackParameters;
            if (!this.mediaClock.getPlaybackParameters().equals(targetPlaybackParameters)) {
                setMediaClockPlaybackParameters(targetPlaybackParameters);
                handlePlaybackParameters(this.playbackInfo.playbackParameters, targetPlaybackParameters.speed, false, false);
                return;
            }
            return;
        }
        int windowIndex = newTimeline.getPeriodByUid(newPeriodId.periodUid, this.period).windowIndex;
        newTimeline.getWindow(windowIndex, this.window);
        this.livePlaybackSpeedControl.setLiveConfiguration((MediaItem.LiveConfiguration) Util.castNonNull(this.window.liveConfiguration));
        if (positionForTargetOffsetOverrideUs != C.TIME_UNSET) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(getLiveOffsetUs(newTimeline, newPeriodId.periodUid, positionForTargetOffsetOverrideUs));
            return;
        }
        Object windowUid = this.window.uid;
        Object oldWindowUid = null;
        if (!oldTimeline.isEmpty()) {
            int oldWindowIndex = oldTimeline.getPeriodByUid(oldPeriodId.periodUid, this.period).windowIndex;
            oldWindowUid = oldTimeline.getWindow(oldWindowIndex, this.window).uid;
        }
        if (!Objects.equals(oldWindowUid, windowUid) || forceSetTargetOffsetOverride) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(C.TIME_UNSET);
        }
    }

    private long getMaxRendererReadPositionUs(MediaPeriodHolder periodHolder) {
        if (periodHolder == null) {
            return 0L;
        }
        long maxReadPositionUs = periodHolder.getRendererOffset();
        if (!periodHolder.prepared) {
            return maxReadPositionUs;
        }
        for (int i = 0; i < this.renderers.length; i++) {
            if (this.renderers[i].isReadingFromPeriod(periodHolder)) {
                long readingPositionUs = this.renderers[i].getReadingPositionUs(periodHolder);
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                maxReadPositionUs = Math.max(readingPositionUs, maxReadPositionUs);
            }
        }
        return maxReadPositionUs;
    }

    private void updatePeriods() throws ExoPlaybackException {
        if (this.playbackInfo.timeline.isEmpty() || !this.mediaSourceList.isPrepared()) {
            return;
        }
        boolean loadingPeriodChanged = maybeUpdateLoadingPeriod();
        maybeUpdatePrewarmingPeriod();
        maybeUpdateReadingPeriod();
        maybeUpdateReadingRenderers();
        maybeUpdatePlayingPeriod();
        maybeUpdatePreloadPeriods(loadingPeriodChanged);
    }

    private boolean maybeUpdateLoadingPeriod() throws ExoPlaybackException {
        MediaPeriodInfo info;
        boolean loadingPeriodChanged = false;
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        if (this.queue.shouldLoadNextMediaPeriod() && (info = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo)) != null) {
            MediaPeriodHolder mediaPeriodHolder = this.queue.enqueueNextMediaPeriodHolder(info);
            if (!mediaPeriodHolder.prepareCalled) {
                mediaPeriodHolder.prepare(this, info.startPositionUs);
            } else if (mediaPeriodHolder.prepared) {
                this.handler.obtainMessage(8, mediaPeriodHolder.mediaPeriod).sendToTarget();
            }
            if (this.queue.getPlayingPeriod() == mediaPeriodHolder) {
                resetRendererPosition(info.startPositionUs, true);
            }
            handleLoadingMediaPeriodChanged(false);
            loadingPeriodChanged = true;
        }
        if (this.shouldContinueLoading) {
            this.shouldContinueLoading = isLoadingPossible(this.queue.getLoadingPeriod());
            updateIsLoading();
        } else {
            maybeContinueLoading();
        }
        return loadingPeriodChanged;
    }

    private void maybeUpdatePrewarmingPeriod() throws ExoPlaybackException {
        MediaPeriodHolder prewarmingPeriodHolder;
        if (this.pendingPauseAtEndOfPeriod || !this.hasSecondaryRenderers || this.isPrewarmingDisabledUntilNextTransition || areRenderersPrewarming() || (prewarmingPeriodHolder = this.queue.getPrewarmingPeriod()) == null || prewarmingPeriodHolder != this.queue.getReadingPeriod() || prewarmingPeriodHolder.getNext() == null || !prewarmingPeriodHolder.getNext().prepared) {
            return;
        }
        long durationToNextMediaPeriodUs = getDurationToMediaPeriodUs(prewarmingPeriodHolder.getNext());
        if (durationToNextMediaPeriodUs > DURATION_TO_ADVANCE_READING_THRESHOLD_US) {
            return;
        }
        this.queue.advancePrewarmingPeriod();
        maybePrewarmRenderers();
    }

    private void maybePrewarmRenderers() throws ExoPlaybackException {
        MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
        if (prewarmingPeriod == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = prewarmingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i) && this.renderers[i].hasSecondary() && !this.renderers[i].isPrewarming()) {
                this.renderers[i].startPrewarming();
                enableRenderer(prewarmingPeriod, i, false, prewarmingPeriod.getStartPositionRendererTime());
            }
        }
        if (areRenderersPrewarming()) {
            this.prewarmingMediaPeriodDiscontinuity = prewarmingPeriod.mediaPeriod.readDiscontinuity();
            if (!prewarmingPeriod.isFullyBuffered()) {
                this.queue.removeAfter(prewarmingPeriod);
                handleLoadingMediaPeriodChanged(false);
                maybeContinueLoading();
            }
        }
    }

    private void maybeUpdateReadingPeriod() throws ExoPlaybackException {
        long streamEndPositionUs;
        MediaPeriodHolder readingPeriodHolder = this.queue.getReadingPeriod();
        if (readingPeriodHolder == null) {
            return;
        }
        int i = 0;
        if (readingPeriodHolder.getNext() == null || this.pendingPauseAtEndOfPeriod) {
            if (readingPeriodHolder.info.isFinal || this.pendingPauseAtEndOfPeriod) {
                RendererHolder[] rendererHolderArr = this.renderers;
                int length = rendererHolderArr.length;
                while (i < length) {
                    RendererHolder renderer = rendererHolderArr[i];
                    if (renderer.isReadingFromPeriod(readingPeriodHolder) && renderer.hasReadPeriodToEnd(readingPeriodHolder)) {
                        if (readingPeriodHolder.info.durationUs != C.TIME_UNSET && readingPeriodHolder.info.durationUs != Long.MIN_VALUE) {
                            streamEndPositionUs = readingPeriodHolder.getRendererOffset() + readingPeriodHolder.info.durationUs;
                        } else {
                            streamEndPositionUs = -9223372036854775807L;
                        }
                        renderer.setCurrentStreamFinal(readingPeriodHolder, streamEndPositionUs);
                    }
                    i++;
                }
                return;
            }
            return;
        }
        if (!hasReadingPeriodFinishedReading()) {
            return;
        }
        if (areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == this.queue.getReadingPeriod()) {
            return;
        }
        if (!readingPeriodHolder.getNext().prepared && this.rendererPositionUs < readingPeriodHolder.getNext().getStartPositionRendererTime()) {
            return;
        }
        if (readingPeriodHolder.getNext().prepared && getDurationToMediaPeriodUs(readingPeriodHolder.getNext()) > DURATION_TO_ADVANCE_READING_THRESHOLD_US) {
            return;
        }
        TrackSelectorResult oldTrackSelectorResult = readingPeriodHolder.getTrackSelectorResult();
        MediaPeriodHolder readingPeriodHolder2 = this.queue.advanceReadingPeriod();
        TrackSelectorResult newTrackSelectorResult = readingPeriodHolder2.getTrackSelectorResult();
        updatePlaybackSpeedSettingsForNewPeriod(this.playbackInfo.timeline, readingPeriodHolder2.info.id, this.playbackInfo.timeline, readingPeriodHolder.info.id, C.TIME_UNSET, false);
        if (readingPeriodHolder2.prepared && ((this.hasSecondaryRenderers && this.prewarmingMediaPeriodDiscontinuity != C.TIME_UNSET) || readingPeriodHolder2.mediaPeriod.readDiscontinuity() != C.TIME_UNSET)) {
            this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
            boolean arePrewarmingRenderersHandlingDiscontinuity = this.hasSecondaryRenderers && !this.isPrewarmingDisabledUntilNextTransition;
            if (arePrewarmingRenderersHandlingDiscontinuity) {
                int i2 = 0;
                while (true) {
                    if (i2 < this.renderers.length) {
                        if (!newTrackSelectorResult.isRendererEnabled(i2) || this.renderers[i2].getTrackType() == -2 || MimeTypes.allSamplesAreSyncSamples(newTrackSelectorResult.selections[i2].getSelectedFormat().sampleMimeType, newTrackSelectorResult.selections[i2].getSelectedFormat().codecs) || this.renderers[i2].isPrewarming()) {
                            i2++;
                        } else {
                            arePrewarmingRenderersHandlingDiscontinuity = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (!arePrewarmingRenderersHandlingDiscontinuity) {
                setAllNonPrewarmingRendererStreamsFinal(readingPeriodHolder2.getStartPositionRendererTime());
                if (!readingPeriodHolder2.isFullyBuffered()) {
                    this.queue.removeAfter(readingPeriodHolder2);
                    handleLoadingMediaPeriodChanged(false);
                    maybeContinueLoading();
                    return;
                }
                return;
            }
        }
        RendererHolder[] rendererHolderArr2 = this.renderers;
        int length2 = rendererHolderArr2.length;
        while (i < length2) {
            rendererHolderArr2[i].maybeSetOldStreamToFinal(oldTrackSelectorResult, newTrackSelectorResult, readingPeriodHolder2.getStartPositionRendererTime());
            i++;
        }
    }

    private void maybeUpdateReadingRenderers() throws ExoPlaybackException {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null || this.queue.getPlayingPeriod() == readingPeriod || readingPeriod.allRenderersInCorrectState) {
            return;
        }
        boolean allUpdated = updateRenderersForTransition();
        if (allUpdated) {
            this.queue.getReadingPeriod().allRenderersInCorrectState = true;
        }
    }

    private boolean updateRenderersForTransition() throws ExoPlaybackException {
        MediaPeriodHolder readingMediaPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult newTrackSelectorResult = readingMediaPeriod.getTrackSelectorResult();
        boolean allUpdated = true;
        for (int i = 0; i < this.renderers.length; i++) {
            int enabledRendererCountPreTransition = this.renderers[i].getEnabledRendererCount();
            int result = this.renderers[i].replaceStreamsOrDisableRendererForTransition(readingMediaPeriod, newTrackSelectorResult, this.mediaClock);
            boolean completedUpdate = false;
            if ((result & 2) != 0 && this.offloadSchedulingEnabled) {
                setOffloadSchedulingEnabled(false);
            }
            this.enabledRendererCount -= enabledRendererCountPreTransition - this.renderers[i].getEnabledRendererCount();
            if ((result & 1) != 0) {
                completedUpdate = true;
            }
            allUpdated &= completedUpdate;
        }
        if (allUpdated) {
            for (int i2 = 0; i2 < this.renderers.length; i2++) {
                if (newTrackSelectorResult.isRendererEnabled(i2) && !this.renderers[i2].isReadingFromPeriod(readingMediaPeriod)) {
                    enableRenderer(readingMediaPeriod, i2, false, readingMediaPeriod.getStartPositionRendererTime());
                }
            }
        }
        return allUpdated;
    }

    private void maybeUpdatePreloadPeriods(boolean loadingPeriodChanged) {
        if (this.preloadConfiguration.targetPreloadDurationUs == C.TIME_UNSET) {
            return;
        }
        if (loadingPeriodChanged || !this.playbackInfo.timeline.equals(this.lastPreloadPoolInvalidationTimeline)) {
            this.lastPreloadPoolInvalidationTimeline = this.playbackInfo.timeline;
            this.queue.invalidatePreloadPool(this.playbackInfo.timeline);
        }
        maybeContinuePreloading();
    }

    private void maybeContinuePreloading() {
        this.queue.maybeUpdatePreloadMediaPeriodHolder();
        MediaPeriodHolder preloading = this.queue.getPreloadingPeriod();
        if (preloading != null) {
            if ((!preloading.prepareCalled || preloading.prepared) && !preloading.mediaPeriod.isLoading()) {
                if (!this.loadControl.shouldContinuePreloading(this.playerId, this.playbackInfo.timeline, preloading.info.id, preloading.prepared ? preloading.mediaPeriod.getBufferedPositionUs() : 0L)) {
                    return;
                }
                if (!preloading.prepareCalled) {
                    preloading.prepare(this, preloading.info.startPositionUs);
                } else {
                    preloading.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(preloading.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
                }
            }
        }
    }

    private void maybeUpdatePlayingPeriod() throws ExoPlaybackException {
        boolean advancedPlayingPeriod = false;
        while (shouldAdvancePlayingPeriod()) {
            if (advancedPlayingPeriod) {
                maybeNotifyPlaybackInfoChanged();
            }
            this.isPrewarmingDisabledUntilNextTransition = false;
            MediaPeriodHolder newPlayingPeriodHolder = (MediaPeriodHolder) Preconditions.checkNotNull(this.queue.advancePlayingPeriod());
            boolean isCancelledSSAIAdTransition = this.playbackInfo.periodId.periodUid.equals(newPlayingPeriodHolder.info.id.periodUid) && this.playbackInfo.periodId.adGroupIndex == -1 && newPlayingPeriodHolder.info.id.adGroupIndex == -1 && this.playbackInfo.periodId.nextAdGroupIndex != newPlayingPeriodHolder.info.id.nextAdGroupIndex;
            this.playbackInfo = handlePositionDiscontinuity(newPlayingPeriodHolder.info.id, newPlayingPeriodHolder.info.startPositionUs, newPlayingPeriodHolder.info.requestedContentPositionUs, newPlayingPeriodHolder.info.startPositionUs, isCancelledSSAIAdTransition ? false : true, 0);
            resetPendingPauseAtEndOfPeriod();
            updatePlaybackPositions();
            if (areRenderersPrewarming() && newPlayingPeriodHolder == this.queue.getPrewarmingPeriod()) {
                maybeHandlePrewarmingTransition();
            }
            if (this.playbackInfo.playbackState == 3) {
                startRenderers();
            }
            allowRenderersToRenderStartOfStreams();
            advancedPlayingPeriod = true;
        }
    }

    private void maybeHandlePrewarmingTransition() throws ExoPlaybackException {
        for (RendererHolder renderer : this.renderers) {
            renderer.maybeHandlePrewarmingTransition();
        }
    }

    private void maybeUpdateOffloadScheduling() {
        MediaPeriodHolder playingPeriodHolder;
        if (this.queue.getPlayingPeriod() == this.queue.getReadingPeriod() && (playingPeriodHolder = this.queue.getPlayingPeriod()) != null) {
            TrackSelectorResult trackSelectorResult = playingPeriodHolder.getTrackSelectorResult();
            boolean isAudioRendererEnabledAndOffloadPreferred = false;
            boolean isAudioOnly = true;
            int i = 0;
            while (true) {
                if (i >= this.renderers.length) {
                    break;
                }
                if (trackSelectorResult.isRendererEnabled(i)) {
                    if (this.renderers[i].getTrackType() != 1) {
                        isAudioOnly = false;
                        break;
                    } else if (trackSelectorResult.rendererConfigurations[i].offloadModePreferred != 0) {
                        isAudioRendererEnabledAndOffloadPreferred = true;
                    }
                }
                i++;
            }
            setOffloadSchedulingEnabled(isAudioRendererEnabledAndOffloadPreferred && isAudioOnly);
        }
    }

    private void allowRenderersToRenderStartOfStreams() {
        TrackSelectorResult playingTracks = this.queue.getPlayingPeriod().getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (playingTracks.isRendererEnabled(i)) {
                this.renderers[i].enableMayRenderStartOfStream();
            }
        }
    }

    private void resetPendingPauseAtEndOfPeriod() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        this.pendingPauseAtEndOfPeriod = playingPeriod != null && playingPeriod.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private boolean shouldAdvancePlayingPeriod() {
        MediaPeriodHolder playingPeriodHolder;
        MediaPeriodHolder nextPlayingPeriodHolder;
        return shouldPlayWhenReady() && !this.pendingPauseAtEndOfPeriod && (playingPeriodHolder = this.queue.getPlayingPeriod()) != null && (nextPlayingPeriodHolder = playingPeriodHolder.getNext()) != null && this.rendererPositionUs >= nextPlayingPeriodHolder.getStartPositionRendererTime() && nextPlayingPeriodHolder.allRenderersInCorrectState;
    }

    private boolean hasReadingPeriodFinishedReading() {
        MediaPeriodHolder readingPeriodHolder = this.queue.getReadingPeriod();
        if (!readingPeriodHolder.prepared) {
            return false;
        }
        for (int i = 0; i < this.renderers.length; i++) {
            if (!this.renderers[i].hasFinishedReadingFromPeriod(readingPeriodHolder)) {
                return false;
            }
        }
        return true;
    }

    private void setAllNonPrewarmingRendererStreamsFinal(long streamEndPositionUs) {
        for (RendererHolder renderer : this.renderers) {
            renderer.setAllNonPrewarmingRendererStreamsFinal(streamEndPositionUs);
        }
    }

    private void handlePeriodPrepared(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        boolean zIsLoading = this.queue.isLoading(mediaPeriod);
        MediaPeriodQueue mediaPeriodQueue = this.queue;
        if (zIsLoading) {
            handleLoadingPeriodPrepared((MediaPeriodHolder) Preconditions.checkNotNull(mediaPeriodQueue.getLoadingPeriod()));
            return;
        }
        MediaPeriodHolder preloadHolder = mediaPeriodQueue.getPreloadHolderByMediaPeriod(mediaPeriod);
        if (preloadHolder != null) {
            Preconditions.checkState(!preloadHolder.prepared);
            preloadHolder.handlePrepared(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline, this.playbackInfo.playWhenReady);
            if (this.queue.isPreloading(mediaPeriod)) {
                maybeContinuePreloading();
            }
        }
    }

    private void handleLoadingPeriodPrepared(MediaPeriodHolder loadingPeriodHolder) throws ExoPlaybackException {
        if (!loadingPeriodHolder.prepared) {
            loadingPeriodHolder.handlePrepared(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline, this.playbackInfo.playWhenReady);
        }
        updateLoadControlTrackSelection(loadingPeriodHolder.info.id, loadingPeriodHolder.getTrackGroups(), loadingPeriodHolder.getTrackSelectorResult());
        if (loadingPeriodHolder == this.queue.getPlayingPeriod()) {
            resetRendererPosition(loadingPeriodHolder.info.startPositionUs, true);
            enableRenderers();
            loadingPeriodHolder.allRenderersInCorrectState = true;
            this.playbackInfo = handlePositionDiscontinuity(this.playbackInfo.periodId, loadingPeriodHolder.info.startPositionUs, this.playbackInfo.requestedContentPositionUs, loadingPeriodHolder.info.startPositionUs, false, 5);
        }
        maybeContinueLoading();
    }

    private void handleContinueLoadingRequested(MediaPeriod mediaPeriod) {
        boolean zIsLoading = this.queue.isLoading(mediaPeriod);
        MediaPeriodQueue mediaPeriodQueue = this.queue;
        if (zIsLoading) {
            mediaPeriodQueue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        } else if (mediaPeriodQueue.isPreloading(mediaPeriod)) {
            maybeContinuePreloading();
        }
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, boolean acknowledgeCommand) throws ExoPlaybackException {
        handlePlaybackParameters(playbackParameters, playbackParameters.speed, true, acknowledgeCommand);
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, float currentPlaybackSpeed, boolean updatePlaybackInfo, boolean acknowledgeCommand) throws ExoPlaybackException {
        if (updatePlaybackInfo) {
            if (acknowledgeCommand) {
                this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        }
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setPlaybackSpeed(currentPlaybackSpeed, playbackParameters.speed);
        }
    }

    private void maybeContinueLoading() {
        this.shouldContinueLoading = shouldContinueLoading();
        if (this.shouldContinueLoading) {
            MediaPeriodHolder loadingPeriod = (MediaPeriodHolder) Preconditions.checkNotNull(this.queue.getLoadingPeriod());
            loadingPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(loadingPeriod.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
        }
        updateIsLoading();
    }

    private boolean shouldContinueLoading() {
        long playbackPositionUs;
        long targetLiveOffsetUs;
        if (!isLoadingPossible(this.queue.getLoadingPeriod())) {
            return false;
        }
        MediaPeriodHolder loadingPeriodHolder = this.queue.getLoadingPeriod();
        long bufferedDurationUs = getTotalBufferedDurationUs(loadingPeriodHolder.getNextLoadPositionUs());
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = this.rendererPositionUs;
        if (loadingPeriodHolder == playingPeriod) {
            playbackPositionUs = loadingPeriodHolder.toPeriodTime(j);
        } else {
            playbackPositionUs = loadingPeriodHolder.toPeriodTime(j) - loadingPeriodHolder.info.startPositionUs;
        }
        if (shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, loadingPeriodHolder.info.id)) {
            targetLiveOffsetUs = this.livePlaybackSpeedControl.getTargetLiveOffsetUs();
        } else {
            targetLiveOffsetUs = -9223372036854775807L;
        }
        LoadControl.Parameters loadParameters = new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, loadingPeriodHolder.info.id, playbackPositionUs, bufferedDurationUs, this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, targetLiveOffsetUs, this.lastRebufferRealtimeMs);
        boolean shouldContinueLoading = this.loadControl.shouldContinueLoading(loadParameters);
        MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
        if (!shouldContinueLoading && playingPeriodHolder.prepared && bufferedDurationUs < PLAYBACK_BUFFER_EMPTY_THRESHOLD_US) {
            if (this.backBufferDurationUs > 0 || this.retainBackBufferFromKeyframe) {
                playingPeriodHolder.mediaPeriod.discardBuffer(this.playbackInfo.positionUs, false);
                return this.loadControl.shouldContinueLoading(loadParameters);
            }
            return shouldContinueLoading;
        }
        return shouldContinueLoading;
    }

    private boolean isLoadingPossible(MediaPeriodHolder mediaPeriodHolder) {
        return (mediaPeriodHolder == null || mediaPeriodHolder.hasLoadingError() || mediaPeriodHolder.getNextLoadPositionUs() == Long.MIN_VALUE) ? false : true;
    }

    private void updateIsLoading() {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean isLoading = this.shouldContinueLoading || (loadingPeriod != null && loadingPeriod.mediaPeriod.isLoading());
        if (isLoading != this.playbackInfo.isLoading) {
            this.playbackInfo = this.playbackInfo.copyWithIsLoading(isLoading);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private PlaybackInfo handlePositionDiscontinuity(MediaSource.MediaPeriodId mediaPeriodId, long positionUs, long requestedContentPositionUs, long discontinuityStartPositionUs, boolean reportDiscontinuity, int discontinuityReason) {
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        List<Metadata> staticMetadata;
        TrackGroupArray trackGroups;
        TrackSelectorResult trackSelectorResult2;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && positionUs == this.playbackInfo.positionUs && mediaPeriodId.equals(this.playbackInfo.periodId)) ? false : true;
        resetPendingPauseAtEndOfPeriod();
        TrackGroupArray trackGroupArray2 = this.playbackInfo.trackGroups;
        TrackSelectorResult trackSelectorResult3 = this.playbackInfo.trackSelectorResult;
        List<Metadata> staticMetadata2 = this.playbackInfo.staticMetadata;
        if (this.mediaSourceList.isPrepared()) {
            MediaPeriodHolder playingPeriodHolder = this.queue.getPlayingPeriod();
            if (playingPeriodHolder == null) {
                trackGroups = TrackGroupArray.EMPTY;
            } else {
                trackGroups = playingPeriodHolder.getTrackGroups();
            }
            trackGroupArray2 = trackGroups;
            if (playingPeriodHolder == null) {
                trackSelectorResult2 = this.emptyTrackSelectorResult;
            } else {
                trackSelectorResult2 = playingPeriodHolder.getTrackSelectorResult();
            }
            trackSelectorResult3 = trackSelectorResult2;
            staticMetadata2 = extractMetadataFromTrackSelectionArray(trackSelectorResult3.selections);
            if (playingPeriodHolder != null && playingPeriodHolder.info.requestedContentPositionUs != requestedContentPositionUs) {
                playingPeriodHolder.info = playingPeriodHolder.info.copyWithRequestedContentPositionUs(requestedContentPositionUs);
            }
            maybeUpdateOffloadScheduling();
        } else {
            if (!mediaPeriodId.equals(this.playbackInfo.periodId)) {
                TrackGroupArray trackGroupArray3 = TrackGroupArray.EMPTY;
                TrackSelectorResult trackSelectorResult4 = this.emptyTrackSelectorResult;
                List<Metadata> staticMetadata3 = ImmutableList.of();
                trackGroupArray = trackGroupArray3;
                trackSelectorResult = trackSelectorResult4;
                staticMetadata = staticMetadata3;
            }
            if (!reportDiscontinuity) {
                this.playbackInfoUpdate.setPositionDiscontinuity(discontinuityReason);
            }
            return this.playbackInfo.copyWithNewPosition(mediaPeriodId, positionUs, requestedContentPositionUs, discontinuityStartPositionUs, getTotalBufferedDurationUs(), trackGroupArray, trackSelectorResult, staticMetadata);
        }
        trackGroupArray = trackGroupArray2;
        trackSelectorResult = trackSelectorResult3;
        staticMetadata = staticMetadata2;
        if (!reportDiscontinuity) {
        }
        return this.playbackInfo.copyWithNewPosition(mediaPeriodId, positionUs, requestedContentPositionUs, discontinuityStartPositionUs, getTotalBufferedDurationUs(), trackGroupArray, trackSelectorResult, staticMetadata);
    }

    private ImmutableList<Metadata> extractMetadataFromTrackSelectionArray(ExoTrackSelection[] trackSelections) {
        ImmutableList.Builder<Metadata> result = new ImmutableList.Builder<>();
        boolean seenNonEmptyMetadata = false;
        for (ExoTrackSelection trackSelection : trackSelections) {
            if (trackSelection != null) {
                Format format = trackSelection.getFormat(0);
                if (format.metadata == null) {
                    result.add(new Metadata(new Metadata.Entry[0]));
                } else {
                    result.add(format.metadata);
                    seenNonEmptyMetadata = true;
                }
            }
        }
        return seenNonEmptyMetadata ? result.build() : ImmutableList.of();
    }

    private void enableRenderers() throws ExoPlaybackException {
        enableRenderers(new boolean[this.renderers.length], this.queue.getReadingPeriod().getStartPositionRendererTime());
    }

    private void enableRenderers(boolean[] rendererWasEnabledFlags, long startPositionUs) throws ExoPlaybackException {
        long startPositionUs2;
        MediaPeriodHolder readingMediaPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = readingMediaPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (!trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].reset();
            }
        }
        int i2 = 0;
        while (i2 < this.renderers.length) {
            if (!trackSelectorResult.isRendererEnabled(i2)) {
                startPositionUs2 = startPositionUs;
            } else if (this.renderers[i2].isReadingFromPeriod(readingMediaPeriod)) {
                startPositionUs2 = startPositionUs;
            } else {
                startPositionUs2 = startPositionUs;
                enableRenderer(readingMediaPeriod, i2, rendererWasEnabledFlags[i2], startPositionUs2);
            }
            i2++;
            startPositionUs = startPositionUs2;
        }
    }

    private void enableRenderer(MediaPeriodHolder periodHolder, int rendererIndex, boolean wasRendererEnabled, long startPositionUs) throws ExoPlaybackException {
        RendererHolder renderer = this.renderers[rendererIndex];
        if (renderer.isRendererEnabled()) {
            return;
        }
        boolean arePlayingAndReadingTheSamePeriod = periodHolder == this.queue.getPlayingPeriod();
        TrackSelectorResult trackSelectorResult = periodHolder.getTrackSelectorResult();
        RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[rendererIndex];
        ExoTrackSelection newSelection = trackSelectorResult.selections[rendererIndex];
        boolean playing = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean joining = !wasRendererEnabled && playing;
        this.enabledRendererCount++;
        renderer.enable(rendererConfiguration, newSelection, periodHolder.sampleStreams[rendererIndex], this.rendererPositionUs, joining, arePlayingAndReadingTheSamePeriod, startPositionUs, periodHolder.getRendererOffset(), periodHolder.info.id, this.mediaClock);
        renderer.handleMessage(11, new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void onSleep() {
                ExoPlayerImplInternal.this.requestForRendererSleep = true;
            }

            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public void onWakeup() {
                if (ExoPlayerImplInternal.this.isDynamicSchedulingEnabled() || ExoPlayerImplInternal.this.offloadSchedulingEnabled) {
                    ExoPlayerImplInternal.this.handler.sendEmptyMessage(2);
                }
            }
        }, periodHolder);
        if (playing && arePlayingAndReadingTheSamePeriod) {
            renderer.start();
        }
    }

    private void releaseRenderers() {
        for (int i = 0; i < this.renderers.length; i++) {
            this.rendererCapabilities[i].clearListener();
            this.renderers[i].release();
        }
    }

    private void handleLoadingMediaPeriodChanged(boolean loadingTrackSelectionChanged) {
        long bufferedPositionUs;
        MediaPeriodHolder loadingMediaPeriodHolder = this.queue.getLoadingPeriod();
        MediaSource.MediaPeriodId loadingMediaPeriodId = loadingMediaPeriodHolder == null ? this.playbackInfo.periodId : loadingMediaPeriodHolder.info.id;
        boolean loadingMediaPeriodChanged = !this.playbackInfo.loadingMediaPeriodId.equals(loadingMediaPeriodId);
        if (loadingMediaPeriodChanged) {
            this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(loadingMediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (loadingMediaPeriodHolder == null) {
            bufferedPositionUs = this.playbackInfo.positionUs;
        } else {
            bufferedPositionUs = loadingMediaPeriodHolder.getBufferedPositionUs();
        }
        playbackInfo.bufferedPositionUs = bufferedPositionUs;
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if ((loadingMediaPeriodChanged || loadingTrackSelectionChanged) && loadingMediaPeriodHolder != null && loadingMediaPeriodHolder.prepared) {
            updateLoadControlTrackSelection(loadingMediaPeriodHolder.info.id, loadingMediaPeriodHolder.getTrackGroups(), loadingMediaPeriodHolder.getTrackSelectorResult());
        }
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private long getTotalBufferedDurationUs(long bufferedPositionInLoadingPeriodUs) {
        MediaPeriodHolder loadingPeriodHolder = this.queue.getLoadingPeriod();
        if (loadingPeriodHolder == null) {
            return 0L;
        }
        long totalBufferedDurationUs = bufferedPositionInLoadingPeriodUs - loadingPeriodHolder.toPeriodTime(this.rendererPositionUs);
        return Math.max(0L, totalBufferedDurationUs);
    }

    private long getDurationToMediaPeriodUs(MediaPeriodHolder mediaPeriodHolder) {
        Preconditions.checkState(mediaPeriodHolder.prepared);
        return (long) ((mediaPeriodHolder.getStartPositionRendererTime() - this.rendererPositionUs) / this.mediaClock.getPlaybackParameters().speed);
    }

    private void updateLoadControlTrackSelection(MediaSource.MediaPeriodId mediaPeriodId, TrackGroupArray trackGroups, TrackSelectorResult trackSelectorResult) {
        long periodTime;
        long targetLiveOffsetUs;
        MediaPeriodHolder loadingPeriodHolder = (MediaPeriodHolder) Preconditions.checkNotNull(this.queue.getLoadingPeriod());
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = this.rendererPositionUs;
        if (loadingPeriodHolder == playingPeriod) {
            periodTime = loadingPeriodHolder.toPeriodTime(j);
        } else {
            periodTime = loadingPeriodHolder.toPeriodTime(j) - loadingPeriodHolder.info.startPositionUs;
        }
        long playbackPositionUs = periodTime;
        long bufferedDurationUs = getTotalBufferedDurationUs(loadingPeriodHolder.getBufferedPositionUs());
        if (shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, loadingPeriodHolder.info.id)) {
            targetLiveOffsetUs = this.livePlaybackSpeedControl.getTargetLiveOffsetUs();
        } else {
            targetLiveOffsetUs = -9223372036854775807L;
        }
        this.loadControl.onTracksSelected(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, mediaPeriodId, playbackPositionUs, bufferedDurationUs, this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, targetLiveOffsetUs, this.lastRebufferRealtimeMs), trackGroups, trackSelectorResult.selections);
    }

    private boolean shouldPlayWhenReady() {
        return this.playbackInfo.playWhenReady && this.playbackInfo.playbackSuppressionReason == 0;
    }

    private void maybeThrowRendererStreamError(int rendererIndex) throws Exception {
        RendererHolder renderer = this.renderers[rendererIndex];
        try {
            renderer.maybeThrowStreamError((MediaPeriodHolder) Preconditions.checkNotNull(this.queue.getPlayingPeriod()));
        } catch (IOException | RuntimeException e) {
            switch (renderer.getTrackType()) {
                case 3:
                case 5:
                    TrackSelectorResult currentTrackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
                    Log.e(TAG, "Disabling track due to error: " + Format.toLogString(currentTrackSelectorResult.selections[rendererIndex].getSelectedFormat()), e);
                    TrackSelectorResult newTrackSelectorResult = new TrackSelectorResult((RendererConfiguration[]) currentTrackSelectorResult.rendererConfigurations.clone(), (ExoTrackSelection[]) currentTrackSelectorResult.selections.clone(), currentTrackSelectorResult.tracks, currentTrackSelectorResult.info);
                    newTrackSelectorResult.rendererConfigurations[rendererIndex] = null;
                    newTrackSelectorResult.selections[rendererIndex] = null;
                    disableRenderer(rendererIndex);
                    this.queue.getPlayingPeriod().applyTrackSelection(newTrackSelectorResult, this.playbackInfo.positionUs, false);
                    return;
                case 4:
                default:
                    throw e;
            }
        }
    }

    private boolean areRenderersPrewarming() {
        if (!this.hasSecondaryRenderers) {
            return false;
        }
        for (RendererHolder renderer : this.renderers) {
            if (renderer.isPrewarming()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDynamicSchedulingEnabled() {
        return this.dynamicSchedulingEnabled || (this.scrubbingModeEnabled && this.scrubbingModeParameters.shouldEnableDynamicScheduling);
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x0342  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static PositionUpdateForPlaylistChange resolvePositionForPlaylistChange(Timeline timeline, PlaybackInfo playbackInfo, SeekPosition pendingInitialSeekPosition, MediaPeriodQueue queue, int repeatMode, boolean shuffleModeEnabled, boolean isSourceRefresh, Timeline.Window window, Timeline.Period period) {
        long oldContentPositionUs;
        int i;
        int startAtDefaultPositionWindowIndex;
        boolean forceBufferingState;
        boolean endPlayback;
        boolean setTargetLiveOffset;
        int startAtDefaultPositionWindowIndex2;
        Timeline timeline2;
        Timeline.Period period2;
        long newContentPositionUs;
        long contentPositionForAdResolutionUs;
        MediaSource.MediaPeriodId newPeriodId;
        long periodPositionUs;
        long newContentPositionUs2;
        int discontinuityReason;
        int discontinuityReason2;
        long periodPositionUs2;
        if (timeline.isEmpty()) {
            MediaSource.MediaPeriodId newPeriodId2 = PlaybackInfo.getDummyPeriodForEmptyTimeline();
            boolean periodPositionChanged = (newPeriodId2.equals(playbackInfo.periodId) && playbackInfo.positionUs == 0) ? false : true;
            boolean reportDiscontinuity = periodPositionChanged && isSourceRefresh && !playbackInfo.timeline.isEmpty() && !playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period).isPlaceholder;
            return new PositionUpdateForPlaylistChange(newPeriodId2, 0L, C.TIME_UNSET, false, true, false, periodPositionChanged, reportDiscontinuity, 4);
        }
        MediaSource.MediaPeriodId oldPeriodId = playbackInfo.periodId;
        Object newPeriodUid = oldPeriodId.periodUid;
        boolean isUsingPlaceholderPeriod = isUsingPlaceholderPeriod(playbackInfo, period);
        if (playbackInfo.periodId.isAd() || isUsingPlaceholderPeriod) {
            oldContentPositionUs = playbackInfo.requestedContentPositionUs;
        } else {
            oldContentPositionUs = playbackInfo.positionUs;
        }
        long newContentPositionUs3 = oldContentPositionUs;
        int startAtDefaultPositionWindowIndex3 = -1;
        boolean forceBufferingState2 = false;
        boolean endPlayback2 = false;
        boolean setTargetLiveOffset2 = false;
        if (pendingInitialSeekPosition == null) {
            i = -1;
            if (playbackInfo.timeline.isEmpty()) {
                int startAtDefaultPositionWindowIndex4 = timeline.getFirstWindowIndex(shuffleModeEnabled);
                startAtDefaultPositionWindowIndex = startAtDefaultPositionWindowIndex4;
                forceBufferingState = false;
                endPlayback = false;
                setTargetLiveOffset = false;
            } else if (timeline.getIndexOfPeriod(newPeriodUid) == -1) {
                int newWindowIndex = resolveSubsequentPeriod(window, period, repeatMode, shuffleModeEnabled, newPeriodUid, playbackInfo.timeline, timeline);
                if (newWindowIndex == -1) {
                    endPlayback2 = true;
                    startAtDefaultPositionWindowIndex2 = timeline.getFirstWindowIndex(shuffleModeEnabled);
                } else {
                    startAtDefaultPositionWindowIndex2 = newWindowIndex;
                }
                startAtDefaultPositionWindowIndex = startAtDefaultPositionWindowIndex2;
                forceBufferingState = false;
                endPlayback = endPlayback2;
                setTargetLiveOffset = false;
            } else if (oldContentPositionUs == C.TIME_UNSET) {
                startAtDefaultPositionWindowIndex = timeline.getPeriodByUid(newPeriodUid, period).windowIndex;
                forceBufferingState = false;
                endPlayback = false;
                setTargetLiveOffset = false;
            } else if (!isUsingPlaceholderPeriod) {
                startAtDefaultPositionWindowIndex = -1;
                forceBufferingState = false;
                endPlayback = false;
                setTargetLiveOffset = false;
            } else {
                playbackInfo.timeline.getPeriodByUid(oldPeriodId.periodUid, period);
                if (playbackInfo.timeline.getWindow(period.windowIndex, window).firstPeriodIndex == playbackInfo.timeline.getIndexOfPeriod(oldPeriodId.periodUid)) {
                    long windowPositionUs = oldContentPositionUs + period.getPositionInWindowUs();
                    int windowIndex = timeline.getPeriodByUid(newPeriodUid, period).windowIndex;
                    Pair<Object, Long> periodPositionUs3 = timeline.getPeriodPositionUs(window, period, windowIndex, windowPositionUs);
                    newPeriodUid = periodPositionUs3.first;
                    newContentPositionUs3 = ((Long) periodPositionUs3.second).longValue();
                } else {
                    long newPeriodDurationUs = timeline.getPeriodByUid(newPeriodUid, period).durationUs;
                    if (newPeriodDurationUs != C.TIME_UNSET) {
                        newContentPositionUs3 = Util.constrainValue(newContentPositionUs3, 0L, period.durationUs - 1);
                    }
                }
                startAtDefaultPositionWindowIndex = -1;
                forceBufferingState = false;
                endPlayback = false;
                setTargetLiveOffset = true;
            }
        } else {
            i = -1;
            Pair<Object, Long> periodPosition = resolveSeekPositionUs(timeline, pendingInitialSeekPosition, true, repeatMode, shuffleModeEnabled, window, period);
            if (periodPosition == null) {
                endPlayback2 = true;
                startAtDefaultPositionWindowIndex3 = timeline.getFirstWindowIndex(shuffleModeEnabled);
            } else {
                if (pendingInitialSeekPosition.windowPositionUs == C.TIME_UNSET) {
                    startAtDefaultPositionWindowIndex3 = timeline.getPeriodByUid(periodPosition.first, period).windowIndex;
                } else {
                    newPeriodUid = periodPosition.first;
                    newContentPositionUs3 = ((Long) periodPosition.second).longValue();
                    setTargetLiveOffset2 = true;
                }
                forceBufferingState2 = playbackInfo.playbackState == 4;
            }
            startAtDefaultPositionWindowIndex = startAtDefaultPositionWindowIndex3;
            forceBufferingState = forceBufferingState2;
            endPlayback = endPlayback2;
            setTargetLiveOffset = setTargetLiveOffset2;
        }
        long contentPositionForAdResolutionUs2 = newContentPositionUs3;
        if (startAtDefaultPositionWindowIndex == i) {
            timeline2 = timeline;
            period2 = period;
            newContentPositionUs = newContentPositionUs3;
            contentPositionForAdResolutionUs = contentPositionForAdResolutionUs2;
        } else {
            timeline2 = timeline;
            period2 = period;
            Pair<Object, Long> defaultPositionUs = timeline2.getPeriodPositionUs(window, period2, startAtDefaultPositionWindowIndex, C.TIME_UNSET);
            newPeriodUid = defaultPositionUs.first;
            long contentPositionForAdResolutionUs3 = ((Long) defaultPositionUs.second).longValue();
            newContentPositionUs = -9223372036854775807L;
            contentPositionForAdResolutionUs = contentPositionForAdResolutionUs3;
        }
        MediaSource.MediaPeriodId periodIdWithAds = queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline2, newPeriodUid, contentPositionForAdResolutionUs);
        boolean earliestCuePointIsUnchangedOrLater = periodIdWithAds.nextAdGroupIndex == i || (oldPeriodId.nextAdGroupIndex != i && periodIdWithAds.nextAdGroupIndex >= oldPeriodId.nextAdGroupIndex);
        boolean sameOldAndNewPeriodUid = oldPeriodId.periodUid.equals(newPeriodUid);
        boolean onlyNextAdGroupIndexIncreased = sameOldAndNewPeriodUid && !oldPeriodId.isAd() && !periodIdWithAds.isAd() && earliestCuePointIsUnchangedOrLater;
        boolean isInStreamAdChange = isIgnorableServerSideAdInsertionPeriodChange(isUsingPlaceholderPeriod, oldPeriodId, oldContentPositionUs, periodIdWithAds, timeline2.getPeriodByUid(newPeriodUid, period2), newContentPositionUs);
        MediaSource.MediaPeriodId newPeriodId3 = (onlyNextAdGroupIndexIncreased || isInStreamAdChange) ? oldPeriodId : periodIdWithAds;
        long periodPositionUs4 = contentPositionForAdResolutionUs;
        if (newPeriodId3.isAd()) {
            newPeriodId = newPeriodId3;
            if (newPeriodId.equals(oldPeriodId)) {
                periodPositionUs = playbackInfo.positionUs;
                newContentPositionUs2 = newContentPositionUs;
            } else {
                timeline2.getPeriodByUid(newPeriodId.periodUid, period2);
                if (newPeriodId.adIndexInAdGroup == period2.getFirstAdIndexToPlay(newPeriodId.adGroupIndex)) {
                    periodPositionUs2 = period2.getAdResumePositionUs();
                } else {
                    periodPositionUs2 = 0;
                }
                periodPositionUs = periodPositionUs2;
                newContentPositionUs2 = newContentPositionUs;
            }
        } else {
            newPeriodId = newPeriodId3;
            if (sameOldAndNewPeriodUid && oldPeriodId.isAd()) {
                AdPlaybackState adPlaybackState = timeline2.getPeriodByUid(newPeriodUid, period2).adPlaybackState;
                AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(oldPeriodId.adGroupIndex);
                long contentResumeOffsetUs = adGroup.contentResumeOffsetUs;
                boolean useRequestedContentPosition = (playbackInfo.requestedContentPositionUs == C.TIME_UNSET || adGroup.timeUs == Long.MIN_VALUE || adGroup.timeUs + contentResumeOffsetUs > playbackInfo.requestedContentPositionUs) ? false : true;
                if (!useRequestedContentPosition && adGroup.count > oldPeriodId.adIndexInAdGroup && adGroup.states[oldPeriodId.adIndexInAdGroup] == 2) {
                    long durationUs = timeline2.getPeriodByUid(newPeriodUid, period2).durationUs;
                    long periodPositionUs5 = durationUs != C.TIME_UNSET ? Math.min(durationUs - 1, periodPositionUs4 + contentResumeOffsetUs) : periodPositionUs4 + contentResumeOffsetUs;
                    periodPositionUs = periodPositionUs5;
                    newContentPositionUs2 = periodPositionUs5;
                }
            }
            periodPositionUs = periodPositionUs4;
            newContentPositionUs2 = newContentPositionUs;
        }
        boolean periodPositionChanged2 = (newPeriodId.equals(playbackInfo.periodId) && periodPositionUs == playbackInfo.positionUs) ? false : true;
        if (timeline2.getIndexOfPeriod(playbackInfo.periodId.periodUid) == -1) {
            discontinuityReason = 4;
        } else {
            discontinuityReason = 3;
        }
        if (newPeriodId.periodUid.equals(playbackInfo.periodId.periodUid) && newPeriodId.adGroupIndex != -1) {
            AdPlaybackState adPlaybackState2 = timeline2.getPeriodByUid(newPeriodId.periodUid, period2).adPlaybackState;
            AdPlaybackState.AdGroup adGroup2 = adPlaybackState2.getAdGroup(newPeriodId.adGroupIndex);
            if (newPeriodId.adIndexInAdGroup >= adGroup2.states.length || adGroup2.states[newPeriodId.adIndexInAdGroup] != 2) {
                discontinuityReason2 = 0;
            }
        } else {
            discontinuityReason2 = discontinuityReason;
        }
        boolean reportDiscontinuity2 = periodPositionChanged2 && isSourceRefresh && !playbackInfo.timeline.isEmpty() && !playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period2).isPlaceholder;
        return new PositionUpdateForPlaylistChange(newPeriodId, periodPositionUs, newContentPositionUs2, forceBufferingState, endPlayback, setTargetLiveOffset, periodPositionChanged2, reportDiscontinuity2, discontinuityReason2);
    }

    private static boolean isIgnorableServerSideAdInsertionPeriodChange(boolean isUsingPlaceholderPeriod, MediaSource.MediaPeriodId oldPeriodId, long oldContentPositionUs, MediaSource.MediaPeriodId newPeriodId, Timeline.Period newPeriod, long newContentPositionUs) {
        if (!isUsingPlaceholderPeriod && oldContentPositionUs == newContentPositionUs && oldPeriodId.periodUid.equals(newPeriodId.periodUid)) {
            return (oldPeriodId.isAd() && newPeriod.isServerSideInsertedAdGroup(oldPeriodId.adGroupIndex)) ? (newPeriod.getAdState(oldPeriodId.adGroupIndex, oldPeriodId.adIndexInAdGroup) == 4 || newPeriod.getAdState(oldPeriodId.adGroupIndex, oldPeriodId.adIndexInAdGroup) == 2) ? false : true : newPeriodId.isAd() && newPeriod.isServerSideInsertedAdGroup(newPeriodId.adGroupIndex);
        }
        return false;
    }

    private static boolean isUsingPlaceholderPeriod(PlaybackInfo playbackInfo, Timeline.Period period) {
        MediaSource.MediaPeriodId periodId = playbackInfo.periodId;
        Timeline timeline = playbackInfo.timeline;
        return timeline.isEmpty() || timeline.getPeriodByUid(periodId.periodUid, period).isPlaceholder;
    }

    private void updateRebufferingState(boolean isRebuffering, boolean resetLastRebufferRealtimeMs) {
        this.isRebuffering = isRebuffering;
        this.lastRebufferRealtimeMs = (!isRebuffering || resetLastRebufferRealtimeMs) ? C.TIME_UNSET : this.clock.elapsedRealtime();
    }

    private static boolean resolvePendingMessagePosition(PendingMessageInfo pendingMessageInfo, Timeline newTimeline, Timeline previousTimeline, int repeatMode, boolean shuffleModeEnabled, Timeline.Window window, Timeline.Period period) {
        long jMsToUs;
        if (pendingMessageInfo.resolvedPeriodUid == null) {
            if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
                jMsToUs = C.TIME_UNSET;
            } else {
                jMsToUs = Util.msToUs(pendingMessageInfo.message.getPositionMs());
            }
            long requestPositionUs = jMsToUs;
            Pair<Object, Long> periodPosition = resolveSeekPositionUs(newTimeline, new SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getMediaItemIndex(), requestPositionUs), false, repeatMode, shuffleModeEnabled, window, period);
            if (periodPosition == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(newTimeline.getIndexOfPeriod(periodPosition.first), ((Long) periodPosition.second).longValue(), periodPosition.first);
            if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
                resolvePendingMessageEndOfStreamPosition(newTimeline, pendingMessageInfo, window, period);
            }
            return true;
        }
        int index = newTimeline.getIndexOfPeriod(pendingMessageInfo.resolvedPeriodUid);
        if (index == -1) {
            return false;
        }
        if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
            resolvePendingMessageEndOfStreamPosition(newTimeline, pendingMessageInfo, window, period);
            return true;
        }
        pendingMessageInfo.resolvedPeriodIndex = index;
        previousTimeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period);
        if (period.isPlaceholder && previousTimeline.getWindow(period.windowIndex, window).firstPeriodIndex == previousTimeline.getIndexOfPeriod(pendingMessageInfo.resolvedPeriodUid)) {
            long windowPositionUs = pendingMessageInfo.resolvedPeriodTimeUs + period.getPositionInWindowUs();
            int windowIndex = newTimeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex;
            Pair<Object, Long> periodPositionUs = newTimeline.getPeriodPositionUs(window, period, windowIndex, windowPositionUs);
            pendingMessageInfo.setResolvedPosition(newTimeline.getIndexOfPeriod(periodPositionUs.first), ((Long) periodPositionUs.second).longValue(), periodPositionUs.first);
        }
        return true;
    }

    private static void resolvePendingMessageEndOfStreamPosition(Timeline timeline, PendingMessageInfo messageInfo, Timeline.Window window, Timeline.Period period) {
        int windowIndex = timeline.getPeriodByUid(messageInfo.resolvedPeriodUid, period).windowIndex;
        int lastPeriodIndex = timeline.getWindow(windowIndex, window).lastPeriodIndex;
        Object lastPeriodUid = timeline.getPeriod(lastPeriodIndex, period, true).uid;
        long positionUs = period.durationUs != C.TIME_UNSET ? period.durationUs - 1 : Long.MAX_VALUE;
        messageInfo.setResolvedPosition(lastPeriodIndex, positionUs, lastPeriodUid);
    }

    private static Pair<Object, Long> resolveSeekPositionUs(Timeline timeline, SeekPosition seekPosition, boolean trySubsequentPeriods, int repeatMode, boolean shuffleModeEnabled, Timeline.Window window, Timeline.Period period) {
        Timeline timeline2;
        int newWindowIndex;
        Timeline seekTimeline = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        if (!seekTimeline.isEmpty()) {
            timeline2 = seekTimeline;
        } else {
            timeline2 = timeline;
        }
        try {
            Pair<Object, Long> periodPositionUs = timeline2.getPeriodPositionUs(window, period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            Timeline timeline3 = timeline2;
            if (timeline.equals(timeline3)) {
                return periodPositionUs;
            }
            int periodIndex = timeline.getIndexOfPeriod(periodPositionUs.first);
            if (periodIndex != -1) {
                if (timeline3.getPeriodByUid(periodPositionUs.first, period).isPlaceholder && timeline3.getWindow(period.windowIndex, window).firstPeriodIndex == timeline3.getIndexOfPeriod(periodPositionUs.first)) {
                    return timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(periodPositionUs.first, period).windowIndex, seekPosition.windowPositionUs);
                }
                return periodPositionUs;
            }
            if (trySubsequentPeriods && (newWindowIndex = resolveSubsequentPeriod(window, period, repeatMode, shuffleModeEnabled, periodPositionUs.first, timeline3, timeline)) != -1) {
                return timeline.getPeriodPositionUs(window, period, newWindowIndex, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    static int resolveSubsequentPeriod(Timeline.Window window, Timeline.Period period, int repeatMode, boolean shuffleModeEnabled, Object oldPeriodUid, Timeline oldTimeline, Timeline newTimeline) {
        int oldWindowIndex = oldTimeline.getPeriodByUid(oldPeriodUid, period).windowIndex;
        Object oldWindowUid = oldTimeline.getWindow(oldWindowIndex, window).uid;
        for (int i = 0; i < newTimeline.getWindowCount(); i++) {
            if (newTimeline.getWindow(i, window).uid.equals(oldWindowUid)) {
                return i;
            }
        }
        int oldPeriodIndex = oldTimeline.getIndexOfPeriod(oldPeriodUid);
        int maxIterations = oldTimeline.getPeriodCount();
        int newPeriodIndex = -1;
        for (int i2 = 0; i2 < maxIterations && newPeriodIndex == -1 && (oldPeriodIndex = oldTimeline.getNextPeriodIndex(oldPeriodIndex, period, window, repeatMode, shuffleModeEnabled)) != -1; i2++) {
            newPeriodIndex = newTimeline.getIndexOfPeriod(oldTimeline.getUidOfPeriod(oldPeriodIndex));
        }
        if (newPeriodIndex == -1) {
            return -1;
        }
        return newTimeline.getPeriod(newPeriodIndex, period).windowIndex;
    }

    private static int updatePlayWhenReadyChangeReason(int playerCommand, int playWhenReadyChangeReason) {
        if (playerCommand == -1) {
            return 2;
        }
        if (playWhenReadyChangeReason == 2) {
            return 1;
        }
        return playWhenReadyChangeReason;
    }

    private static int updatePlaybackSuppressionReason(int playerCommand, int playbackSuppressionReason, boolean isScrubbingModeEnabled) {
        if (playerCommand == 0) {
            return 1;
        }
        if (playbackSuppressionReason == 1) {
            if (isScrubbingModeEnabled) {
                return 4;
            }
            return 0;
        }
        return playbackSuppressionReason;
    }

    private static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int windowIndex, long windowPositionUs) {
            this.timeline = timeline;
            this.windowIndex = windowIndex;
            this.windowPositionUs = windowPositionUs;
        }
    }

    private static final class PositionUpdateForPlaylistChange {
        private final int discontinuityReason;
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final MediaSource.MediaPeriodId periodId;
        private final boolean periodPositionChanged;
        public final long periodPositionUs;
        private final boolean reportDiscontinuity;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId periodId, long periodPositionUs, long requestedContentPositionUs, boolean forceBufferingState, boolean endPlayback, boolean setTargetLiveOffset, boolean periodPositionChanged, boolean reportDiscontinuity, int discontinuityReason) {
            this.periodId = periodId;
            this.periodPositionUs = periodPositionUs;
            this.requestedContentPositionUs = requestedContentPositionUs;
            this.forceBufferingState = forceBufferingState;
            this.endPlayback = endPlayback;
            this.setTargetLiveOffset = setTargetLiveOffset;
            this.periodPositionChanged = periodPositionChanged;
            this.reportDiscontinuity = reportDiscontinuity;
            this.discontinuityReason = discontinuityReason;
        }
    }

    private static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage message) {
            this.message = message;
        }

        public void setResolvedPosition(int periodIndex, long periodTimeUs, Object periodUid) {
            this.resolvedPeriodIndex = periodIndex;
            this.resolvedPeriodTimeUs = periodTimeUs;
            this.resolvedPeriodUid = periodUid;
        }

        @Override // java.lang.Comparable
        public int compareTo(PendingMessageInfo other) {
            boolean z = this.resolvedPeriodUid == null;
            boolean z2 = other.resolvedPeriodUid == null;
            Object obj = this.resolvedPeriodUid;
            if (z != z2) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int comparePeriodIndex = this.resolvedPeriodIndex - other.resolvedPeriodIndex;
            if (comparePeriodIndex != 0) {
                return comparePeriodIndex;
            }
            return Long.compare(this.resolvedPeriodTimeUs, other.resolvedPeriodTimeUs);
        }
    }

    private static final class MediaSourceListUpdateMessage {
        private final List<MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        private final long positionUs;
        private final ShuffleOrder shuffleOrder;
        private final int windowIndex;

        private MediaSourceListUpdateMessage(List<MediaSourceList.MediaSourceHolder> mediaSourceHolders, ShuffleOrder shuffleOrder, int windowIndex, long positionUs) {
            this.mediaSourceHolders = mediaSourceHolders;
            this.shuffleOrder = shuffleOrder;
            this.windowIndex = windowIndex;
            this.positionUs = positionUs;
        }
    }

    private static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int fromIndex, int toIndex, int newFromIndex, ShuffleOrder shuffleOrder) {
            this.fromIndex = fromIndex;
            this.toIndex = toIndex;
            this.newFromIndex = newFromIndex;
            this.shuffleOrder = shuffleOrder;
        }
    }
}
