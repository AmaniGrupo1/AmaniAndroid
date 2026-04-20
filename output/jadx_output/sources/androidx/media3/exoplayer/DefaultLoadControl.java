package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes21.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 2000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 1000;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 26214400;
    public static final int DEFAULT_MAX_BUFFER_FOR_LOCAL_PLAYBACK_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MAX_BUFFER_SIZE = 210239488;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_FOR_LOCAL_PLAYBACK_MS = 1000;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS_FOR_LOCAL_PLAYBACK = true;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD = 144179200;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK = 19660800;
    public static final ImmutableList<String> LOCAL_PLAYBACK_SCHEMES = ImmutableList.of("file", "content", "data", "android.resource", RawResourceDataSource.RAW_RESOURCE_SCHEME, "asset");
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferForLocalPlaybackUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackForLocalPlaybackUs;
    private final long bufferForPlaybackUs;
    private final ConcurrentHashMap<PlayerId, PlayerLoadingState> loadingStates;
    private final long maxBufferForLocalPlaybackUs;
    private final long maxBufferUs;
    private final long minBufferForLocalPlaybackUs;
    private final long minBufferUs;
    private final Timeline.Period period;
    private final ImmutableMap<String, Integer> playerTargetBufferBytesOverwrites;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
    private final boolean retainBackBufferFromKeyframe;
    private final int targetBufferBytesOverwrite;
    private long threadId;
    private final Timeline.Window window;

    public static final class Builder {
        private DefaultAllocator allocator;
        private int backBufferDurationMs;
        private int bufferForPlaybackAfterRebufferForLocalPlaybackMs;
        private int bufferForPlaybackAfterRebufferMs;
        private int bufferForPlaybackForLocalPlaybackMs;
        private int bufferForPlaybackMs;
        private boolean buildCalled;
        private int maxBufferForLocalPlaybackMs;
        private int maxBufferMs;
        private int minBufferForLocalPlaybackMs;
        private int minBufferMs;
        private Boolean onlyGenericConfigurationMethodsCalled;
        private final HashMap<String, Integer> playerTargetBufferBytes = new HashMap<>();
        private boolean prioritizeTimeOverSizeThresholds;
        private boolean prioritizeTimeOverSizeThresholdsForLocalPlayback;
        private boolean retainBackBufferFromKeyframe;
        private int targetBufferBytes;

        public Builder() {
            this.playerTargetBufferBytes.put(PlayerId.PRELOAD.name, Integer.valueOf(DefaultLoadControl.DEFAULT_TARGET_BUFFER_BYTES_FOR_PRELOAD));
            this.minBufferMs = 50000;
            this.minBufferForLocalPlaybackMs = 1000;
            this.maxBufferMs = 50000;
            this.maxBufferForLocalPlaybackMs = 50000;
            this.bufferForPlaybackMs = 1000;
            this.bufferForPlaybackForLocalPlaybackMs = 1000;
            this.bufferForPlaybackAfterRebufferMs = 2000;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = 1000;
            this.targetBufferBytes = -1;
            this.prioritizeTimeOverSizeThresholds = false;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = true;
            this.backBufferDurationMs = 0;
            this.retainBackBufferFromKeyframe = false;
        }

        public Builder setAllocator(DefaultAllocator allocator) {
            Preconditions.checkState(!this.buildCalled);
            this.allocator = allocator;
            return this;
        }

        public Builder setBufferDurationsMs(int minBufferMs, int maxBufferMs, int bufferForPlaybackMs, int bufferForPlaybackAfterRebufferMs) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackMs, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackAfterRebufferMs, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackMs, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackAfterRebufferMs, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(maxBufferMs, minBufferMs, "maxBufferMs", "minBufferMs");
            this.minBufferMs = minBufferMs;
            this.maxBufferMs = maxBufferMs;
            this.bufferForPlaybackMs = bufferForPlaybackMs;
            this.bufferForPlaybackAfterRebufferMs = bufferForPlaybackAfterRebufferMs;
            this.minBufferForLocalPlaybackMs = minBufferMs;
            this.maxBufferForLocalPlaybackMs = maxBufferMs;
            this.bufferForPlaybackForLocalPlaybackMs = bufferForPlaybackMs;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = bufferForPlaybackAfterRebufferMs;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = true;
            }
            return this;
        }

        public Builder setBufferDurationsMsForStreaming(int minBufferMs, int maxBufferMs, int bufferForPlaybackMs, int bufferForPlaybackAfterRebufferMs) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackMs, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackAfterRebufferMs, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackMs, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackAfterRebufferMs, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(maxBufferMs, minBufferMs, "maxBufferMs", "minBufferMs");
            this.minBufferMs = minBufferMs;
            this.maxBufferMs = maxBufferMs;
            this.bufferForPlaybackMs = bufferForPlaybackMs;
            this.bufferForPlaybackAfterRebufferMs = bufferForPlaybackAfterRebufferMs;
            this.onlyGenericConfigurationMethodsCalled = false;
            return this;
        }

        public Builder setBufferDurationsMsForLocalPlayback(int minBufferMs, int maxBufferMs, int bufferForPlaybackMs, int bufferForPlaybackAfterRebufferMs) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackMs, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(bufferForPlaybackAfterRebufferMs, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackMs, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(minBufferMs, bufferForPlaybackAfterRebufferMs, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(maxBufferMs, minBufferMs, "maxBufferMs", "minBufferMs");
            this.minBufferForLocalPlaybackMs = minBufferMs;
            this.maxBufferForLocalPlaybackMs = maxBufferMs;
            this.bufferForPlaybackForLocalPlaybackMs = bufferForPlaybackMs;
            this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = bufferForPlaybackAfterRebufferMs;
            this.onlyGenericConfigurationMethodsCalled = false;
            return this;
        }

        public Builder setTargetBufferBytes(int targetBufferBytes) {
            Preconditions.checkState(!this.buildCalled);
            this.targetBufferBytes = targetBufferBytes;
            return this;
        }

        public Builder setPlayerTargetBufferBytes(String playerName, int playerTargetBufferBytes) {
            Preconditions.checkState(!this.buildCalled);
            this.playerTargetBufferBytes.put(playerName, Integer.valueOf(playerTargetBufferBytes));
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean prioritizeTimeOverSizeThresholds) {
            Preconditions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = prioritizeTimeOverSizeThresholds;
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = prioritizeTimeOverSizeThresholds;
            if (this.onlyGenericConfigurationMethodsCalled == null) {
                this.onlyGenericConfigurationMethodsCalled = true;
            }
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForStreaming(boolean prioritizeTimeOverSizeThresholds) {
            Preconditions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = prioritizeTimeOverSizeThresholds;
            this.onlyGenericConfigurationMethodsCalled = false;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholdsForLocalPlayback(boolean prioritizeTimeOverSizeThresholds) {
            Preconditions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholdsForLocalPlayback = prioritizeTimeOverSizeThresholds;
            this.onlyGenericConfigurationMethodsCalled = false;
            return this;
        }

        public Builder setBackBuffer(int backBufferDurationMs, boolean retainBackBufferFromKeyframe) {
            Preconditions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(backBufferDurationMs, 0, "backBufferDurationMs", "0");
            this.backBufferDurationMs = backBufferDurationMs;
            this.retainBackBufferFromKeyframe = retainBackBufferFromKeyframe;
            return this;
        }

        public DefaultLoadControl build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            if (this.onlyGenericConfigurationMethodsCalled != null && this.onlyGenericConfigurationMethodsCalled.booleanValue()) {
                this.minBufferForLocalPlaybackMs = this.minBufferMs;
                this.maxBufferForLocalPlaybackMs = this.maxBufferMs;
                this.bufferForPlaybackForLocalPlaybackMs = this.bufferForPlaybackMs;
                this.bufferForPlaybackAfterRebufferForLocalPlaybackMs = this.bufferForPlaybackAfterRebufferMs;
                this.prioritizeTimeOverSizeThresholdsForLocalPlayback = this.prioritizeTimeOverSizeThresholds;
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.minBufferForLocalPlaybackMs, this.maxBufferMs, this.maxBufferForLocalPlaybackMs, this.bufferForPlaybackMs, this.bufferForPlaybackForLocalPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.bufferForPlaybackAfterRebufferForLocalPlaybackMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.prioritizeTimeOverSizeThresholdsForLocalPlayback, this.backBufferDurationMs, this.retainBackBufferFromKeyframe, this.playerTargetBufferBytes);
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 1000, 50000, 50000, 1000, 1000, 2000, 1000, -1, false, true, 0, false);
    }

    protected DefaultLoadControl(DefaultAllocator allocator, int minBufferMs, int minBufferForLocalPlaybackMs, int maxBufferMs, int maxBufferForLocalPlaybackMs, int bufferForPlaybackMs, int bufferForPlaybackForLocalPlaybackMs, int bufferForPlaybackAfterRebufferMs, int bufferForPlaybackAfterRebufferForLocalPlaybackMs, int targetBufferBytes, boolean prioritizeTimeOverSizeThresholds, boolean prioritizeTimeOverSizeThresholdsForLocalPlayback, int backBufferDurationMs, boolean retainBackBufferFromKeyframe, Map<String, Integer> playerTargetBufferBytes) {
        assertGreaterOrEqual(bufferForPlaybackMs, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(bufferForPlaybackForLocalPlaybackMs, 0, "bufferForPlaybackForLocalPlaybackMs", "0");
        assertGreaterOrEqual(bufferForPlaybackAfterRebufferMs, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(bufferForPlaybackAfterRebufferForLocalPlaybackMs, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", "0");
        assertGreaterOrEqual(minBufferMs, bufferForPlaybackMs, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(minBufferForLocalPlaybackMs, bufferForPlaybackForLocalPlaybackMs, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        assertGreaterOrEqual(minBufferMs, bufferForPlaybackAfterRebufferMs, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(minBufferForLocalPlaybackMs, bufferForPlaybackAfterRebufferForLocalPlaybackMs, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        assertGreaterOrEqual(maxBufferMs, minBufferMs, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(maxBufferForLocalPlaybackMs, minBufferForLocalPlaybackMs, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        assertGreaterOrEqual(backBufferDurationMs, 0, "backBufferDurationMs", "0");
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.allocator = allocator;
        this.minBufferUs = Util.msToUs(minBufferMs);
        this.minBufferForLocalPlaybackUs = Util.msToUs(minBufferForLocalPlaybackMs);
        this.maxBufferUs = Util.msToUs(maxBufferMs);
        this.maxBufferForLocalPlaybackUs = Util.msToUs(maxBufferForLocalPlaybackMs);
        this.bufferForPlaybackUs = Util.msToUs(bufferForPlaybackMs);
        this.bufferForPlaybackForLocalPlaybackUs = Util.msToUs(bufferForPlaybackForLocalPlaybackMs);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(bufferForPlaybackAfterRebufferMs);
        this.bufferForPlaybackAfterRebufferForLocalPlaybackUs = Util.msToUs(bufferForPlaybackAfterRebufferForLocalPlaybackMs);
        this.targetBufferBytesOverwrite = targetBufferBytes;
        this.prioritizeTimeOverSizeThresholds = prioritizeTimeOverSizeThresholds;
        this.prioritizeTimeOverSizeThresholdsForLocalPlayback = prioritizeTimeOverSizeThresholdsForLocalPlayback;
        this.backBufferDurationUs = Util.msToUs(backBufferDurationMs);
        this.retainBackBufferFromKeyframe = retainBackBufferFromKeyframe;
        this.loadingStates = new ConcurrentHashMap<>();
        this.playerTargetBufferBytesOverwrites = ImmutableMap.copyOf((Map) playerTargetBufferBytes);
        this.threadId = -1L;
    }

    protected DefaultLoadControl(DefaultAllocator allocator, int minBufferMs, int minBufferForLocalPlaybackMs, int maxBufferMs, int maxBufferForLocalPlaybackMs, int bufferForPlaybackMs, int bufferForPlaybackForLocalPlaybackMs, int bufferForPlaybackAfterRebufferMs, int bufferForPlaybackAfterRebufferForLocalPlaybackMs, int targetBufferBytes, boolean prioritizeTimeOverSizeThresholds, boolean prioritizeTimeOverSizeThresholdsForLocalPlayback, int backBufferDurationMs, boolean retainBackBufferFromKeyframe) {
        this(allocator, minBufferMs, minBufferForLocalPlaybackMs, maxBufferMs, maxBufferForLocalPlaybackMs, bufferForPlaybackMs, bufferForPlaybackForLocalPlaybackMs, bufferForPlaybackAfterRebufferMs, bufferForPlaybackAfterRebufferForLocalPlaybackMs, targetBufferBytes, prioritizeTimeOverSizeThresholds, prioritizeTimeOverSizeThresholdsForLocalPlayback, backBufferDurationMs, retainBackBufferFromKeyframe, ImmutableMap.of());
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared(PlayerId playerId) {
        long currentThreadId = Thread.currentThread().getId();
        Preconditions.checkState(this.threadId == -1 || this.threadId == currentThreadId, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.threadId = currentThreadId;
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState == null) {
            this.loadingStates.put(playerId, new PlayerLoadingState());
        } else {
            playerLoadingState.referenceCount++;
        }
        resetPlayerLoadingState(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onTracksSelected(LoadControl.Parameters parameters, TrackGroupArray trackGroups, ExoTrackSelection[] trackSelections) {
        int iCalculateTargetBufferBytes;
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(parameters.playerId);
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(parameters.playerId));
        if (targetBufferBytesOverwrite == -1) {
            iCalculateTargetBufferBytes = calculateTargetBufferBytes(parameters, trackSelections);
        } else {
            iCalculateTargetBufferBytes = targetBufferBytesOverwrite;
        }
        playerLoadingState.targetBufferBytes = iCalculateTargetBufferBytes;
        updateAllocator();
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped(PlayerId playerId) {
        removePlayer(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased(PlayerId playerId) {
        removePlayer(playerId);
        if (this.loadingStates.isEmpty()) {
            this.threadId = -1L;
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator(PlayerId playerId) {
        return new PlayerIdFilteringAllocatorImpl(playerId);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs(PlayerId playerId) {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean retainBackBufferFromKeyframe(PlayerId playerId) {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinueLoading(LoadControl.Parameters parameters) {
        PlayerId playerId = parameters.playerId;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId));
        boolean z = true;
        boolean targetBufferSizeReached = getTotalBufferBytesAllocated(playerId) >= getTargetBufferBytes(playerId);
        if (playerId.equals(PlayerId.PRELOAD)) {
            return !targetBufferSizeReached;
        }
        boolean isLocalPlayback = isLocalPlayback(parameters);
        long minBufferUs = getMinBufferUs(isLocalPlayback);
        long maxBufferUs = getMaxBufferUs(isLocalPlayback);
        if (parameters.playbackSpeed > 1.0f) {
            long mediaDurationMinBufferUs = Util.getMediaDurationForPlayoutDuration(minBufferUs, parameters.playbackSpeed);
            minBufferUs = Math.min(mediaDurationMinBufferUs, maxBufferUs);
        }
        if (parameters.bufferedDurationUs < Math.max(minBufferUs, 500000L)) {
            boolean prioritizeTimeOverSizeThresholds = prioritizeTimeOverSizeThresholds(isLocalPlayback);
            if (!prioritizeTimeOverSizeThresholds && targetBufferSizeReached) {
                z = false;
            }
            playerLoadingState.isLoading = z;
            if (!playerLoadingState.isLoading && parameters.bufferedDurationUs < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (parameters.bufferedDurationUs >= maxBufferUs || targetBufferSizeReached) {
            playerLoadingState.isLoading = false;
        }
        return playerLoadingState.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldStartPlayback(LoadControl.Parameters parameters) {
        long minBufferDurationUs;
        boolean isLocalPlayback = isLocalPlayback(parameters);
        long bufferedDurationUs = Util.getPlayoutDurationForMediaDuration(parameters.bufferedDurationUs, parameters.playbackSpeed);
        if (parameters.rebuffering) {
            minBufferDurationUs = getBufferForPlaybackAfterRebufferUs(isLocalPlayback);
        } else {
            minBufferDurationUs = getBufferForPlaybackUs(isLocalPlayback);
        }
        if (parameters.targetLiveOffsetUs != C.TIME_UNSET) {
            minBufferDurationUs = Math.min(parameters.targetLiveOffsetUs / 2, minBufferDurationUs);
        }
        return minBufferDurationUs <= 0 || bufferedDurationUs >= minBufferDurationUs || (!prioritizeTimeOverSizeThresholds(isLocalPlayback) && getTotalBufferBytesAllocated(parameters.playerId) >= getTargetBufferBytes(parameters.playerId));
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinuePreloading(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long bufferedDurationUs) {
        for (PlayerLoadingState playerLoadingState : this.loadingStates.values()) {
            if (playerLoadingState.isLoading) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    protected int calculateTargetBufferBytes(ExoTrackSelection[] trackSelectionArray) {
        return -1;
    }

    protected int calculateTargetBufferBytes(LoadControl.Parameters parameters, ExoTrackSelection[] trackSelectionArray) {
        int deprecatedResult = calculateTargetBufferBytes(trackSelectionArray);
        if (deprecatedResult != -1) {
            return deprecatedResult;
        }
        int targetBufferSize = 0;
        boolean isLocalPlayback = isLocalPlayback(parameters);
        for (ExoTrackSelection exoTrackSelection : trackSelectionArray) {
            if (exoTrackSelection != null) {
                targetBufferSize += getDefaultBufferSize(exoTrackSelection.getTrackGroup().type, isLocalPlayback);
            }
        }
        return Util.constrainValue(targetBufferSize, 13107200, DEFAULT_MAX_BUFFER_SIZE);
    }

    int calculateTotalTargetBufferBytes() {
        int totalTargetBufferBytes = 0;
        for (PlayerLoadingState state : this.loadingStates.values()) {
            totalTargetBufferBytes += state.targetBufferBytes;
        }
        return totalTargetBufferBytes;
    }

    private void resetPlayerLoadingState(PlayerId playerId) {
        int i;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId));
        int targetBufferBytesOverwrite = getTargetBufferBytesOverwrite(playerId);
        if (targetBufferBytesOverwrite != -1) {
            i = targetBufferBytesOverwrite;
        } else {
            i = 13107200;
        }
        playerLoadingState.targetBufferBytes = i;
        playerLoadingState.isLoading = false;
    }

    private int getTargetBufferBytesOverwrite(PlayerId playerId) {
        Integer playerTargetBufferBytesOverwrite = this.playerTargetBufferBytesOverwrites.get(playerId.name);
        if (playerTargetBufferBytesOverwrite != null && playerTargetBufferBytesOverwrite.intValue() != -1) {
            return playerTargetBufferBytesOverwrite.intValue();
        }
        return this.targetBufferBytesOverwrite;
    }

    private void removePlayer(PlayerId playerId) {
        PlayerLoadingState playerLoadingState = this.loadingStates.get(playerId);
        if (playerLoadingState != null) {
            playerLoadingState.referenceCount--;
            if (playerLoadingState.referenceCount == 0) {
                this.loadingStates.remove(playerId);
                updateAllocator();
            }
        }
    }

    private void updateAllocator() {
        boolean zIsEmpty = this.loadingStates.isEmpty();
        DefaultAllocator defaultAllocator = this.allocator;
        if (zIsEmpty) {
            defaultAllocator.reset();
        } else {
            defaultAllocator.setTargetBufferSize(calculateTotalTargetBufferBytes());
        }
    }

    private static int getDefaultBufferSize(int trackType, boolean isLocalPlayback) {
        switch (trackType) {
            case -2:
                return 0;
            case -1:
                return 13107200;
            case 0:
                return DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                if (isLocalPlayback) {
                    return DEFAULT_VIDEO_BUFFER_SIZE_FOR_LOCAL_PLAYBACK;
                }
                return DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
                return 131072;
            case 4:
                return DEFAULT_IMAGE_BUFFER_SIZE;
            case 5:
                return 131072;
            case 6:
                return 131072;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean isLocalPlayback(LoadControl.Parameters parameters) {
        int windowIndex = parameters.timeline.getPeriodByUid(parameters.mediaPeriodId.periodUid, this.period).windowIndex;
        MediaItem mediaItem = parameters.timeline.getWindow(windowIndex, this.window).mediaItem;
        if (mediaItem.localConfiguration == null) {
            return false;
        }
        String scheme = mediaItem.localConfiguration.uri.getScheme();
        return TextUtils.isEmpty(scheme) || LOCAL_PLAYBACK_SCHEMES.contains(scheme);
    }

    private long getMinBufferUs(boolean isLocalPlayback) {
        return isLocalPlayback ? this.minBufferForLocalPlaybackUs : this.minBufferUs;
    }

    private long getMaxBufferUs(boolean isLocalPlayback) {
        return isLocalPlayback ? this.maxBufferForLocalPlaybackUs : this.maxBufferUs;
    }

    private long getBufferForPlaybackUs(boolean isLocalPlayback) {
        return isLocalPlayback ? this.bufferForPlaybackForLocalPlaybackUs : this.bufferForPlaybackUs;
    }

    private long getBufferForPlaybackAfterRebufferUs(boolean isLocalPlayback) {
        if (isLocalPlayback) {
            return this.bufferForPlaybackAfterRebufferForLocalPlaybackUs;
        }
        return this.bufferForPlaybackAfterRebufferUs;
    }

    private boolean prioritizeTimeOverSizeThresholds(boolean isLocalPlayback) {
        if (isLocalPlayback) {
            return this.prioritizeTimeOverSizeThresholdsForLocalPlayback;
        }
        return this.prioritizeTimeOverSizeThresholds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertGreaterOrEqual(int value1, int value2, String name1, String name2) {
        Preconditions.checkArgument(value1 >= value2, "%s cannot be less than %s", name1, name2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalBufferBytesAllocated(PlayerId playerId) {
        return ((PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId))).getAllocatedCounts() * this.allocator.getIndividualAllocationLength();
    }

    private int getTargetBufferBytes(PlayerId playerId) {
        return ((PlayerLoadingState) Preconditions.checkNotNull(this.loadingStates.get(playerId))).targetBufferBytes;
    }

    private static class PlayerLoadingState {
        private int allocatedCounts;
        public boolean isLoading;
        public int referenceCount = 1;
        public int targetBufferBytes;

        public synchronized void increaseAllocatedCounts() {
            this.allocatedCounts++;
        }

        public synchronized void decreaseAllocatedCounts() {
            this.allocatedCounts--;
        }

        public synchronized int getAllocatedCounts() {
            return this.allocatedCounts;
        }
    }

    private final class PlayerIdFilteringAllocatorImpl implements PlayerIdAwareAllocator {
        private final HashMap<Allocation, PlayerId> allocationPlayerIdMap = new HashMap<>();
        private PlayerId playerId;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.playerId = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator
        public synchronized void setPlayerId(PlayerId playerId) {
            this.playerId = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized Allocation allocate() {
            Allocation allocation;
            allocation = DefaultLoadControl.this.allocator.allocate();
            this.allocationPlayerIdMap.put(allocation, this.playerId);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(this.playerId);
            if (playerLoadingState != null) {
                playerLoadingState.increaseAllocatedCounts();
            }
            return allocation;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocation allocation) {
            DefaultLoadControl.this.allocator.release(allocation);
            releaseInternal(allocation);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void release(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.allocator.release(allocationNode);
            while (allocationNode != null) {
                releaseInternal(allocationNode.getAllocation());
                allocationNode = allocationNode.next();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized void trim() {
            DefaultLoadControl.this.allocator.trim();
        }

        @Override // androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator, androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getTotalBytesAllocated() {
            return DefaultLoadControl.this.getTotalBufferBytesAllocated(this.playerId);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public synchronized int getIndividualAllocationLength() {
            return DefaultLoadControl.this.allocator.getIndividualAllocationLength();
        }

        private void releaseInternal(Allocation allocation) {
            PlayerId playerId = (PlayerId) Preconditions.checkNotNull(this.allocationPlayerIdMap.remove(allocation));
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.loadingStates.get(playerId);
            if (playerLoadingState != null) {
                playerLoadingState.decreaseAllocatedCounts();
            }
        }
    }
}
