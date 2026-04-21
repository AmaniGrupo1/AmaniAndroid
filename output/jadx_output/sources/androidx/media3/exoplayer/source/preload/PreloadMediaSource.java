package androidx.media3.exoplayer.source.preload;

import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.WrappingMediaSource;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.PlayerIdAwareAllocator;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
public final class PreloadMediaSource extends WrappingMediaSource {
    private static final long CHECK_FOR_PRELOAD_ERROR_INTERVAL_MS = 100;
    private static final int CONTINUE_LOADING_RETRY_COUNT = 10;
    private static final long MAYBE_CONTINUE_LOADING_INTERVAL_MS = 100;
    private static final String TAG = "PreloadMediaSource";
    private final Allocator allocator;
    private final BandwidthMeter bandwidthMeter;
    private final LoadControl loadControl;
    private boolean onSourcePreparedNotified;
    private boolean onUsedByPlayerNotified;
    private Pair<PreloadMediaPeriod, MediaSource.MediaPeriodId> playingPreloadedMediaPeriodAndId;
    private boolean preloadCalled;
    private final PreloadControl preloadControl;
    private final HandlerWrapper preloadHandler;
    private Pair<PreloadMediaPeriod, MediaPeriodKey> preloadingMediaPeriodAndKey;
    private boolean prepareChildSourceCalled;
    private final HandlerWrapper releaseHandler;
    private boolean releasePreloadMediaSourceCalled;
    private final RendererCapabilities[] rendererCapabilities;
    private long startPositionUs;
    private Timeline timeline;
    private final TrackSelector trackSelector;

    public interface PreloadControl {
        boolean onContinueLoadingRequested(PreloadMediaSource preloadMediaSource, long j);

        void onPreloadError(PreloadException preloadException, PreloadMediaSource preloadMediaSource);

        boolean onSourcePrepared(PreloadMediaSource preloadMediaSource);

        boolean onTracksSelected(PreloadMediaSource preloadMediaSource);

        void onUsedByPlayer(PreloadMediaSource preloadMediaSource);

        default void onLoadedToTheEndOfSource(PreloadMediaSource mediaSource) {
        }

        default boolean onLoadingUnableToContinue(PreloadMediaSource mediaSource) {
            return false;
        }
    }

    public static final class Factory implements MediaSource.Factory {
        private final BandwidthMeter bandwidthMeter;
        private Clock clock = Clock.DEFAULT;
        private final LoadControl loadControl;
        private final MediaSource.Factory mediaSourceFactory;
        private final PreloadControl preloadControl;
        private final Looper preloadLooper;
        private final RendererCapabilities[] rendererCapabilities;
        private final TrackSelector trackSelector;

        public Factory(MediaSource.Factory mediaSourceFactory, PreloadControl preloadControl, TrackSelector trackSelector, BandwidthMeter bandwidthMeter, RendererCapabilities[] rendererCapabilities, LoadControl loadControl, Looper preloadLooper) {
            this.mediaSourceFactory = mediaSourceFactory;
            this.preloadControl = preloadControl;
            this.trackSelector = trackSelector;
            this.bandwidthMeter = bandwidthMeter;
            this.rendererCapabilities = (RendererCapabilities[]) Arrays.copyOf(rendererCapabilities, rendererCapabilities.length);
            this.loadControl = loadControl;
            this.preloadLooper = preloadLooper;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory cmcdConfigurationFactory) {
            this.mediaSourceFactory.setCmcdConfigurationFactory(cmcdConfigurationFactory);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        public Factory setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return this.mediaSourceFactory.getSupportedTypes();
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public PreloadMediaSource createMediaSource(MediaItem mediaItem) {
            return new PreloadMediaSource(this.mediaSourceFactory.createMediaSource(mediaItem), this.preloadControl, this.trackSelector, this.bandwidthMeter, this.rendererCapabilities, this.loadControl, this.preloadLooper, this.clock);
        }

        public PreloadMediaSource createMediaSource(MediaSource mediaSource) {
            return new PreloadMediaSource(mediaSource, this.preloadControl, this.trackSelector, this.bandwidthMeter, this.rendererCapabilities, this.loadControl, this.preloadLooper, this.clock);
        }
    }

    private PreloadMediaSource(MediaSource mediaSource, PreloadControl preloadControl, TrackSelector trackSelector, BandwidthMeter bandwidthMeter, RendererCapabilities[] rendererCapabilities, LoadControl loadControl, Looper preloadLooper, Clock clock) {
        super(mediaSource);
        this.preloadControl = preloadControl;
        this.trackSelector = trackSelector;
        this.bandwidthMeter = bandwidthMeter;
        this.rendererCapabilities = rendererCapabilities;
        this.loadControl = loadControl;
        this.allocator = loadControl.getAllocator(PlayerId.PRELOAD);
        this.preloadHandler = clock.createHandler(preloadLooper, null);
        this.releaseHandler = clock.createHandler(preloadLooper, null);
        this.startPositionUs = C.TIME_UNSET;
    }

    public void preload(final long startPositionUs) {
        this.preloadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7995xf99e9a56(startPositionUs);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$preload$0$androidx-media3-exoplayer-source-preload-PreloadMediaSource, reason: not valid java name */
    /* synthetic */ void m7995xf99e9a56(long startPositionUs) {
        this.onSourcePreparedNotified = false;
        if (isUsedByPlayer()) {
            onUsedByPlayer();
            return;
        }
        this.preloadCalled = true;
        this.startPositionUs = startPositionUs;
        setPlayerId(PlayerId.PRELOAD);
        this.loadControl.onPrepared(PlayerId.PRELOAD);
        prepareSourceInternal(this.bandwidthMeter.getTransferListener());
        checkForPreloadError();
    }

    public void clear() {
        Util.postOrRun(this.preloadHandler, new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7993xcf4780db();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$clear$1$androidx-media3-exoplayer-source-preload-PreloadMediaSource, reason: not valid java name */
    /* synthetic */ void m7993xcf4780db() {
        if (this.preloadingMediaPeriodAndKey != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) this.preloadingMediaPeriodAndKey.first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void prepareSourceInternal() {
        Preconditions.checkState(Looper.myLooper() == this.preloadHandler.getLooper());
        if (isUsedByPlayer() && !this.onUsedByPlayerNotified) {
            onUsedByPlayer();
        }
        maybeSetPlayerIdForAllocator();
        if (this.timeline != null) {
            onChildSourceInfoRefreshed(this.timeline);
        } else if (!this.prepareChildSourceCalled) {
            this.prepareChildSourceCalled = true;
            prepareChildSource();
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void onChildSourceInfoRefreshed(final Timeline newTimeline) {
        this.timeline = newTimeline;
        refreshSourceInfo(newTimeline);
        this.preloadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7994xd674fafd(newTimeline);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onChildSourceInfoRefreshed$2$androidx-media3-exoplayer-source-preload-PreloadMediaSource, reason: not valid java name */
    /* synthetic */ void m7994xd674fafd(Timeline newTimeline) {
        if (!isUsedByPlayer() && !this.onSourcePreparedNotified) {
            this.onSourcePreparedNotified = true;
            if (!this.preloadControl.onSourcePrepared(this)) {
                stopPreloading();
                return;
            }
            Pair<Object, Long> periodPosition = newTimeline.getPeriodPositionUs(new Timeline.Window(), new Timeline.Period(), 0, this.startPositionUs);
            MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(periodPosition.first);
            PreloadMediaPeriod mediaPeriod = createPeriod(mediaPeriodId, this.allocator, ((Long) periodPosition.second).longValue());
            mediaPeriod.preload(new PreloadMediaPeriodCallback(((Long) periodPosition.second).longValue()), ((Long) periodPosition.second).longValue());
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public PreloadMediaPeriod createPeriod(MediaSource.MediaPeriodId id, Allocator allocator, long startPositionUs) {
        MediaPeriodKey key = new MediaPeriodKey(id, startPositionUs);
        if (this.preloadingMediaPeriodAndKey != null && key.equals(this.preloadingMediaPeriodAndKey.second)) {
            PreloadMediaPeriod mediaPeriod = (PreloadMediaPeriod) ((Pair) Preconditions.checkNotNull(this.preloadingMediaPeriodAndKey)).first;
            if (isUsedByPlayer()) {
                this.preloadingMediaPeriodAndKey = null;
                this.playingPreloadedMediaPeriodAndId = new Pair<>(mediaPeriod, id);
            }
            return mediaPeriod;
        }
        if (this.preloadingMediaPeriodAndKey != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) ((Pair) Preconditions.checkNotNull(this.preloadingMediaPeriodAndKey)).first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
        PreloadMediaPeriod mediaPeriod2 = new PreloadMediaPeriod(this.mediaSource.createPeriod(id, allocator, startPositionUs));
        if (!isUsedByPlayer()) {
            this.preloadingMediaPeriodAndKey = new Pair<>(mediaPeriod2, key);
        }
        return mediaPeriod2;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        if (this.playingPreloadedMediaPeriodAndId != null && mediaPeriodIdEqualsWithoutWindowSequenceNumber(mediaPeriodId, (MediaSource.MediaPeriodId) ((Pair) Preconditions.checkNotNull(this.playingPreloadedMediaPeriodAndId)).second)) {
            return (MediaSource.MediaPeriodId) ((Pair) Preconditions.checkNotNull(this.playingPreloadedMediaPeriodAndId)).second;
        }
        return mediaPeriodId;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
        if (this.preloadingMediaPeriodAndKey != null && preloadMediaPeriod == ((Pair) Preconditions.checkNotNull(this.preloadingMediaPeriodAndKey)).first) {
            this.preloadingMediaPeriodAndKey = null;
        } else if (this.playingPreloadedMediaPeriodAndId != null && preloadMediaPeriod == ((Pair) Preconditions.checkNotNull(this.playingPreloadedMediaPeriodAndId)).first) {
            this.playingPreloadedMediaPeriodAndId = null;
        }
        this.mediaSource.releasePeriod(preloadMediaPeriod.mediaPeriod);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
        if (!isUsedByPlayer()) {
            this.onUsedByPlayerNotified = false;
            if (this.preloadCalled && !this.releasePreloadMediaSourceCalled) {
                setPlayerId(PlayerId.PRELOAD);
                maybeSetPlayerIdForAllocator();
            } else {
                this.timeline = null;
                this.prepareChildSourceCalled = false;
                super.releaseSourceInternal();
            }
        }
    }

    public void releasePreloadMediaSource() {
        this.releaseHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7996xd9831bcd();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$releasePreloadMediaSource$3$androidx-media3-exoplayer-source-preload-PreloadMediaSource, reason: not valid java name */
    /* synthetic */ void m7996xd9831bcd() {
        if (this.preloadCalled) {
            this.loadControl.onReleased(PlayerId.PRELOAD);
        }
        this.releasePreloadMediaSourceCalled = true;
        this.preloadCalled = false;
        this.startPositionUs = C.TIME_UNSET;
        this.onSourcePreparedNotified = false;
        if (this.preloadingMediaPeriodAndKey != null) {
            this.mediaSource.releasePeriod(((PreloadMediaPeriod) this.preloadingMediaPeriodAndKey.first).mediaPeriod);
            this.preloadingMediaPeriodAndKey = null;
        }
        releaseSourceInternal();
        this.preloadHandler.removeCallbacksAndMessages(null);
        this.releaseHandler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUsedByPlayer() {
        return prepareSourceCalled();
    }

    private void onUsedByPlayer() {
        this.preloadControl.onUsedByPlayer(this);
        stopPreloading();
        this.onUsedByPlayerNotified = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForPreloadError() {
        try {
            maybeThrowSourceInfoRefreshError();
            if (this.preloadingMediaPeriodAndKey != null) {
                PreloadMediaPeriod preloadingMediaPeriod = (PreloadMediaPeriod) this.preloadingMediaPeriodAndKey.first;
                if (!preloadingMediaPeriod.prepared) {
                    preloadingMediaPeriod.maybeThrowPrepareError();
                } else {
                    preloadingMediaPeriod.maybeThrowStreamError();
                }
            }
            this.preloadHandler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.checkForPreloadError();
                }
            }, 100L);
        } catch (IOException e) {
            this.preloadControl.onPreloadError(new PreloadException(getMediaItem(), null, e), this);
            stopPreloading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopPreloading() {
        this.preloadHandler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean mediaPeriodIdEqualsWithoutWindowSequenceNumber(MediaSource.MediaPeriodId firstPeriodId, MediaSource.MediaPeriodId secondPeriodId) {
        return firstPeriodId.periodUid.equals(secondPeriodId.periodUid) && firstPeriodId.adGroupIndex == secondPeriodId.adGroupIndex && firstPeriodId.adIndexInAdGroup == secondPeriodId.adIndexInAdGroup && firstPeriodId.nextAdGroupIndex == secondPeriodId.nextAdGroupIndex;
    }

    private void maybeSetPlayerIdForAllocator() {
        if (this.allocator instanceof PlayerIdAwareAllocator) {
            ((PlayerIdAwareAllocator) this.allocator).setPlayerId(getPlayerId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PreloadMediaPeriodCallback implements MediaPeriod.Callback {
        private int continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
        private Runnable maybeContinueLoadingRunnable;
        private boolean onLoadToTheEndOfSourceNotified;
        private final long periodStartPositionUs;
        private boolean prepared;

        public PreloadMediaPeriodCallback(long periodStartPositionUs) {
            this.periodStartPositionUs = periodStartPositionUs;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(final MediaPeriod mediaPeriod) {
            this.prepared = true;
            PreloadMediaSource.this.preloadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() throws ExoPlaybackException {
                    this.f$0.m7999x5a2a8722(mediaPeriod);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onPrepared$0$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback, reason: not valid java name */
        /* synthetic */ void m7999x5a2a8722(MediaPeriod mediaPeriod) throws ExoPlaybackException {
            if (PreloadMediaSource.this.isUsedByPlayer()) {
                return;
            }
            PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
            TrackGroupArray trackGroups = preloadMediaPeriod.getTrackGroups();
            TrackSelectorResult trackSelectorResult = null;
            MediaPeriodKey key = (MediaPeriodKey) ((Pair) Preconditions.checkNotNull(PreloadMediaSource.this.preloadingMediaPeriodAndKey)).second;
            MediaSource.MediaPeriodId mediaPeriodId = key.mediaPeriodId;
            try {
                trackSelectorResult = PreloadMediaSource.this.trackSelector.selectTracks(PreloadMediaSource.this.rendererCapabilities, trackGroups, mediaPeriodId, (Timeline) Preconditions.checkNotNull(PreloadMediaSource.this.timeline));
            } catch (ExoPlaybackException e) {
                Log.e(PreloadMediaSource.TAG, "Failed to select tracks", e);
            }
            if (trackSelectorResult == null) {
                PreloadMediaSource.this.stopPreloading();
                return;
            }
            preloadMediaPeriod.selectTracksForPreloading(trackSelectorResult.selections, this.periodStartPositionUs);
            boolean zOnTracksSelected = PreloadMediaSource.this.preloadControl.onTracksSelected(PreloadMediaSource.this);
            PreloadMediaSource preloadMediaSource = PreloadMediaSource.this;
            if (!zOnTracksSelected) {
                preloadMediaSource.stopPreloading();
                return;
            }
            preloadMediaSource.loadControl.onTracksSelected(createLoadControlParameters(PreloadMediaSource.this.getPlayerId(), (Timeline) Preconditions.checkNotNull(PreloadMediaSource.this.timeline), mediaPeriodId, mediaPeriod.getBufferedPositionUs()), trackGroups, trackSelectorResult.selections);
            this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
            m7997xe55d806f(preloadMediaPeriod, mediaPeriodId);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(final MediaPeriod mediaPeriod) {
            PreloadMediaSource.this.preloadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7998xba37e565(mediaPeriod);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onContinueLoadingRequested$1$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback, reason: not valid java name */
        /* synthetic */ void m7998xba37e565(MediaPeriod mediaPeriod) {
            if (PreloadMediaSource.this.isUsedByPlayer()) {
                return;
            }
            PreloadMediaPeriod preloadMediaPeriod = (PreloadMediaPeriod) mediaPeriod;
            if (this.prepared) {
                long bufferedPositionUs = mediaPeriod.getBufferedPositionUs();
                if (bufferedPositionUs != Long.MIN_VALUE) {
                    if (!PreloadMediaSource.this.preloadControl.onContinueLoadingRequested(PreloadMediaSource.this, bufferedPositionUs - this.periodStartPositionUs)) {
                        PreloadMediaSource.this.stopPreloading();
                        return;
                    }
                } else {
                    onLoadToTheEndOfSource();
                    return;
                }
            }
            MediaPeriodKey key = (MediaPeriodKey) ((Pair) Preconditions.checkNotNull(PreloadMediaSource.this.preloadingMediaPeriodAndKey)).second;
            this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
            m7997xe55d806f(preloadMediaPeriod, key.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: maybeContinueLoading, reason: merged with bridge method [inline-methods] */
        public void m7997xe55d806f(final MediaPeriod mediaPeriod, final MediaSource.MediaPeriodId mediaPeriodId) {
            if (PreloadMediaSource.this.preloadingMediaPeriodAndKey != null && PreloadMediaSource.this.preloadingMediaPeriodAndKey.first == mediaPeriod) {
                if (this.maybeContinueLoadingRunnable != null) {
                    PreloadMediaSource.this.preloadHandler.removeCallbacks(this.maybeContinueLoadingRunnable);
                    this.maybeContinueLoadingRunnable = null;
                }
                LoadControl.Parameters parameters = createLoadControlParameters(PreloadMediaSource.this.getPlayerId(), (Timeline) Preconditions.checkNotNull(PreloadMediaSource.this.timeline), mediaPeriodId, this.prepared ? mediaPeriod.getBufferedPositionUs() : 0L);
                if (PreloadMediaSource.this.loadControl.shouldContinueLoading(parameters)) {
                    this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
                    mediaPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(this.periodStartPositionUs).build());
                    if (this.prepared && mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE) {
                        onLoadToTheEndOfSource();
                        return;
                    }
                    return;
                }
                if (this.continueLoadingRetryCountBeforeCallingPreloadControlAgain == -1 || this.continueLoadingRetryCountBeforeCallingPreloadControlAgain >= 10) {
                    if (PreloadMediaSource.this.preloadControl.onLoadingUnableToContinue(PreloadMediaSource.this)) {
                        this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = 0;
                    } else {
                        this.continueLoadingRetryCountBeforeCallingPreloadControlAgain = -1;
                    }
                } else {
                    this.continueLoadingRetryCountBeforeCallingPreloadControlAgain++;
                }
                this.maybeContinueLoadingRunnable = new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7997xe55d806f(mediaPeriod, mediaPeriodId);
                    }
                };
                PreloadMediaSource.this.preloadHandler.postDelayed(this.maybeContinueLoadingRunnable, 100L);
            }
        }

        private LoadControl.Parameters createLoadControlParameters(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long bufferedDurationUs) {
            return new LoadControl.Parameters(playerId, timeline, mediaPeriodId, 0L, bufferedDurationUs, 1.0f, false, false, C.TIME_UNSET, C.TIME_UNSET);
        }

        private void onLoadToTheEndOfSource() {
            if (!this.onLoadToTheEndOfSourceNotified) {
                PreloadMediaSource.this.preloadControl.onLoadedToTheEndOfSource(PreloadMediaSource.this);
                this.onLoadToTheEndOfSourceNotified = true;
            }
            PreloadMediaSource.this.stopPreloading();
        }
    }

    private static class MediaPeriodKey {
        public final MediaSource.MediaPeriodId mediaPeriodId;
        private final Long startPositionUs;

        public MediaPeriodKey(MediaSource.MediaPeriodId mediaPeriodId, long startPositionUs) {
            this.mediaPeriodId = mediaPeriodId;
            this.startPositionUs = Long.valueOf(startPositionUs);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MediaPeriodKey)) {
                return false;
            }
            MediaPeriodKey mediaPeriodKey = (MediaPeriodKey) other;
            return PreloadMediaSource.mediaPeriodIdEqualsWithoutWindowSequenceNumber(this.mediaPeriodId, mediaPeriodKey.mediaPeriodId) && this.startPositionUs.equals(mediaPeriodKey.startPositionUs);
        }

        public int hashCode() {
            int result = (17 * 31) + this.mediaPeriodId.periodUid.hashCode();
            return (((((((result * 31) + this.mediaPeriodId.adGroupIndex) * 31) + this.mediaPeriodId.adIndexInAdGroup) * 31) + this.mediaPeriodId.nextAdGroupIndex) * 31) + this.startPositionUs.intValue();
        }
    }
}
