package androidx.media3.exoplayer.source.preload;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.PlaybackLooperProvider;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;
import androidx.media3.exoplayer.source.preload.RankingDataComparator;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public final class DefaultPreloadManager extends BasePreloadManager<Integer, PreloadStatus> {
    private final PreCacheHelper.Factory preCacheHelperFactory;
    private final HandlerThread preCacheThread;
    private final HandlerWrapper preloadHandler;
    private final PlaybackLooperProvider preloadLooperProvider;
    private final PreloadMediaSource.Factory preloadMediaSourceFactory;
    private boolean releaseCalled;
    private final RendererCapabilitiesList rendererCapabilitiesList;
    private final TrackSelector trackSelector;

    public static final class Builder extends BasePreloadManager.BuilderBase<Integer, PreloadStatus> {
        private Supplier<BandwidthMeter> bandwidthMeterSupplier;
        private boolean buildCalled;
        private boolean buildExoPlayerCalled;
        private Cache cache;
        private Executor cachingExecutor;
        private Clock clock;
        private final Context context;
        private DataSource.Factory dataSourceFactory;
        private Supplier<LoadControl> loadControlSupplier;
        private PlaybackLooperProvider preloadLooperProvider;
        private Supplier<RenderersFactory> renderersFactorySupplier;
        private TrackSelector.Factory trackSelectorFactory;

        public Builder(final Context context, TargetPreloadStatusControl<Integer, PreloadStatus> targetPreloadStatusControl) {
            super(new SimpleRankingDataComparator(), targetPreloadStatusControl, new DefaultMediaSourceFactorySupplier(context));
            this.context = context;
            this.preloadLooperProvider = new PlaybackLooperProvider();
            this.trackSelectorFactory = new TrackSelector.Factory() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda3
                @Override // androidx.media3.exoplayer.trackselection.TrackSelector.Factory
                public final TrackSelector createTrackSelector(Context context2) {
                    return new DefaultTrackSelector(context2);
                }
            };
            this.bandwidthMeterSupplier = new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            };
            this.renderersFactorySupplier = Suppliers.memoize(new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$new$1(context);
                }
            });
            this.loadControlSupplier = Suppliers.memoize(new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda6
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            });
            this.cachingExecutor = new Executor() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda7
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    runnable.run();
                }
            };
            this.clock = Clock.DEFAULT;
        }

        static /* synthetic */ RenderersFactory lambda$new$1(Context context) {
            return new DefaultRenderersFactory(context);
        }

        @Deprecated
        public Builder setMediaSourceFactory(final MediaSource.Factory mediaSourceFactory) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.mediaSourceFactorySupplier = new MediaSourceFactorySupplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager.Builder.1
                @Override // androidx.media3.exoplayer.source.preload.MediaSourceFactorySupplier
                public MediaSourceFactorySupplier setCache(Cache cache) {
                    return this;
                }

                @Override // androidx.media3.exoplayer.source.preload.MediaSourceFactorySupplier
                public MediaSourceFactorySupplier setDataSourceFactory(DataSource.Factory dataSourceFactory) {
                    return this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.google.common.base.Supplier
                public MediaSource.Factory get() {
                    return mediaSourceFactory;
                }
            };
            return this;
        }

        public Builder setMediaSourceFactorySupplier(MediaSourceFactorySupplier mediaSourceFactorySupplier) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.mediaSourceFactorySupplier = mediaSourceFactorySupplier.setCache(this.cache).setDataSourceFactory(this.dataSourceFactory);
            return this;
        }

        public Builder setDataSourceFactory(DataSource.Factory dataSourceFactory) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.dataSourceFactory = dataSourceFactory;
            this.mediaSourceFactorySupplier.setDataSourceFactory(dataSourceFactory);
            return this;
        }

        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.renderersFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setRenderersFactory$2(renderersFactory);
                }
            };
            return this;
        }

        static /* synthetic */ RenderersFactory lambda$setRenderersFactory$2(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public Builder setTrackSelectorFactory(TrackSelector.Factory trackSelectorFactory) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.trackSelectorFactory = trackSelectorFactory;
            return this;
        }

        public Builder setLoadControl(final LoadControl loadControl) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.loadControlSupplier = new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setLoadControl$3(loadControl);
                }
            };
            return this;
        }

        static /* synthetic */ LoadControl lambda$setLoadControl$3(LoadControl loadControl) {
            return loadControl;
        }

        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.bandwidthMeterSupplier = new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$Builder$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultPreloadManager.Builder.lambda$setBandwidthMeter$4(bandwidthMeter);
                }
            };
            return this;
        }

        static /* synthetic */ BandwidthMeter lambda$setBandwidthMeter$4(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public Builder setPreloadLooper(Looper preloadLooper) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled || preloadLooper == Looper.getMainLooper()) ? false : true);
            this.preloadLooperProvider = new PlaybackLooperProvider(preloadLooper);
            return this;
        }

        public Builder setCache(Cache cache) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cache = cache;
            this.mediaSourceFactorySupplier.setCache(cache);
            return this;
        }

        public Builder setCachingExecutor(Executor executor) {
            Preconditions.checkState((this.buildCalled || this.buildExoPlayerCalled) ? false : true);
            this.cachingExecutor = executor;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public ExoPlayer buildExoPlayer() {
            return buildExoPlayer(new ExoPlayer.Builder(this.context));
        }

        public ExoPlayer buildExoPlayer(ExoPlayer.Builder exoPlayerBuilder) {
            this.buildExoPlayerCalled = true;
            return exoPlayerBuilder.setMediaSourceFactory(this.mediaSourceFactorySupplier.get()).setBandwidthMeter(this.bandwidthMeterSupplier.get()).setRenderersFactory(this.renderersFactorySupplier.get()).setLoadControl(this.loadControlSupplier.get()).setPlaybackLooperProvider(this.preloadLooperProvider).setTrackSelector(this.trackSelectorFactory.createTrackSelector(this.context)).build();
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.BuilderBase
        public BasePreloadManager<Integer, PreloadStatus> build() {
            Preconditions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new DefaultPreloadManager(this);
        }
    }

    public static final class PreloadStatus {
        public static final PreloadStatus PRELOAD_STATUS_NOT_PRELOADED = new PreloadStatus(Integer.MIN_VALUE, C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_SOURCE_PREPARED = new PreloadStatus(0, C.TIME_UNSET, 0);
        public static final PreloadStatus PRELOAD_STATUS_TRACKS_SELECTED = new PreloadStatus(1, C.TIME_UNSET, 0);
        public static final int STAGE_NOT_PRELOADED = Integer.MIN_VALUE;
        public static final int STAGE_SOURCE_PREPARED = 0;
        public static final int STAGE_SPECIFIED_RANGE_CACHED = -1;
        public static final int STAGE_SPECIFIED_RANGE_LOADED = 2;
        public static final int STAGE_TRACKS_SELECTED = 1;
        public final long durationMs;
        public final int stage;
        public final long startPositionMs;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Stage {
        }

        private PreloadStatus(int stage, long startPositionMs, long durationMs) {
            Preconditions.checkArgument(startPositionMs == C.TIME_UNSET || startPositionMs >= 0);
            Preconditions.checkArgument(durationMs == C.TIME_UNSET || durationMs >= 0);
            this.stage = stage;
            this.startPositionMs = startPositionMs;
            this.durationMs = durationMs;
        }

        public static PreloadStatus specifiedRangeLoaded(long durationMs) {
            return new PreloadStatus(2, C.TIME_UNSET, durationMs);
        }

        public static PreloadStatus specifiedRangeLoaded(long startPositionMs, long durationMs) {
            return new PreloadStatus(2, startPositionMs, durationMs);
        }

        public static PreloadStatus specifiedRangeCached(long durationMs) {
            return new PreloadStatus(-1, C.TIME_UNSET, durationMs);
        }

        public static PreloadStatus specifiedRangeCached(long startPositionMs, long durationMs) {
            return new PreloadStatus(-1, startPositionMs, durationMs);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreloadingCategory() {
            return this.stage == 0 || this.stage == 1 || this.stage == 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isPreCachingCategory() {
            return this.stage == -1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            PreloadStatus other = (PreloadStatus) obj;
            if (this.stage == other.stage && this.startPositionMs == other.startPositionMs && this.durationMs == other.durationMs) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int result = (17 * 31) + this.stage;
            return (((result * 31) + ((int) this.startPositionMs)) * 31) + ((int) this.durationMs);
        }
    }

    private DefaultPreloadManager(Builder builder) {
        DataSource.Factory upstreamDataSourceFactory;
        super(new SimpleRankingDataComparator(), builder.targetPreloadStatusControl, builder.mediaSourceFactorySupplier.get());
        this.rendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory((RenderersFactory) builder.renderersFactorySupplier.get()).createRendererCapabilitiesList();
        this.preloadLooperProvider = builder.preloadLooperProvider;
        this.trackSelector = builder.trackSelectorFactory.createTrackSelector(builder.context);
        BandwidthMeter bandwidthMeter = (BandwidthMeter) builder.bandwidthMeterSupplier.get();
        this.trackSelector.init(new TrackSelector.InvalidationListener() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$$ExternalSyntheticLambda2
            @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                DefaultPreloadManager.lambda$new$0();
            }
        }, bandwidthMeter);
        Looper preloadLooper = this.preloadLooperProvider.obtainLooper();
        this.preloadMediaSourceFactory = new PreloadMediaSource.Factory(builder.mediaSourceFactorySupplier.get(), new PreloadMediaSourceControl(), this.trackSelector, bandwidthMeter, this.rendererCapabilitiesList.getRendererCapabilities(), (LoadControl) builder.loadControlSupplier.get(), preloadLooper).setClock(builder.clock);
        Cache cache = builder.cache;
        if (cache != null) {
            this.preCacheThread = new HandlerThread("DefaultPreloadManager:PreCacheHelper");
            this.preCacheThread.start();
            if (builder.dataSourceFactory != null) {
                upstreamDataSourceFactory = builder.dataSourceFactory;
            } else {
                upstreamDataSourceFactory = new DefaultDataSource.Factory(builder.context);
            }
            this.preCacheHelperFactory = new PreCacheHelper.Factory(builder.context, cache, upstreamDataSourceFactory, this.preCacheThread.getLooper()).setDownloadExecutor(builder.cachingExecutor).setListener(new PreCacheHelperListener());
        } else {
            this.preCacheThread = null;
            this.preCacheHelperFactory = null;
        }
        this.preloadHandler = builder.clock.createHandler(preloadLooper, null);
    }

    static /* synthetic */ void lambda$new$0() {
    }

    public void setCurrentPlayingIndex(int currentPlayingIndex) {
        SimpleRankingDataComparator rankingDataComparator = (SimpleRankingDataComparator) this.rankingDataComparator;
        rankingDataComparator.setCurrentPlayingIndex(currentPlayingIndex);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder createMediaSourceHolder(MediaItem mediaItem, MediaSource mediaSource, Integer rankingData) {
        PreloadMediaSource preloadMediaSource;
        PreloadMediaSource.Factory factory = this.preloadMediaSourceFactory;
        if (mediaSource != null) {
            preloadMediaSource = factory.createMediaSource(mediaSource);
        } else {
            preloadMediaSource = factory.createMediaSource(mediaItem);
        }
        return new PreloadMediaSourceHolder(mediaItem, preloadMediaSource, rankingData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    public void preloadMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder, PreloadStatus targetPreloadStatus) {
        if (this.releaseCalled) {
            return;
        }
        Preconditions.checkArgument(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        PreloadMediaSource preloadMediaSource = preloadMediaSourceHolder.getMediaSource();
        maybeClearPreloadMediaSource(preloadMediaSource, targetPreloadStatus);
        if (targetPreloadStatus.equals(PreloadStatus.PRELOAD_STATUS_NOT_PRELOADED)) {
            onSkipped(preloadMediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.lambda$preloadMediaSourceHolderInternal$1((DefaultPreloadManager.PreloadStatus) obj);
                }
            });
            return;
        }
        if (targetPreloadStatus.stage == -1) {
            if (preloadMediaSourceHolder.preCacheHelper == null) {
                PreCacheHelper.Factory preCacheHelperFactory = (PreCacheHelper.Factory) Preconditions.checkNotNull(this.preCacheHelperFactory, "DefaultPreloadManager wasn't configured with a Cache");
                preloadMediaSourceHolder.preCacheHelper = preCacheHelperFactory.create(mediaSourceHolder.mediaItem);
            }
            ((PreCacheHelper) Preconditions.checkNotNull(preloadMediaSourceHolder.preCacheHelper)).preCache(targetPreloadStatus.startPositionMs, targetPreloadStatus.durationMs);
            return;
        }
        preloadMediaSource.preload(Util.msToUs(targetPreloadStatus.startPositionMs));
    }

    static /* synthetic */ boolean lambda$preloadMediaSourceHolderInternal$1(PreloadStatus preloadStatus) {
        return preloadStatus.stage == Integer.MIN_VALUE;
    }

    private void maybeClearPreloadMediaSource(PreloadMediaSource preloadMediaSource, PreloadStatus targetPreloadStatus) {
        if (targetPreloadStatus.stage == Integer.MIN_VALUE || targetPreloadStatus.stage == -1 || targetPreloadStatus.stage == 0) {
            preloadMediaSource.clear();
        }
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    protected void releaseMediaSourceHolderInternal(BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder mediaSourceHolder) {
        if (this.releaseCalled) {
            return;
        }
        super.releaseMediaSourceHolderInternal(mediaSourceHolder);
        Preconditions.checkArgument(mediaSourceHolder instanceof PreloadMediaSourceHolder);
        PreloadMediaSourceHolder preloadMediaSourceHolder = (PreloadMediaSourceHolder) mediaSourceHolder;
        preloadMediaSourceHolder.getMediaSource().releasePreloadMediaSource();
        if (preloadMediaSourceHolder.preCacheHelper != null) {
            preloadMediaSourceHolder.preCacheHelper.release(true);
            preloadMediaSourceHolder.preCacheHelper = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager
    protected void releaseInternal() {
        this.releaseCalled = true;
        releasePreloadUtils();
        releasePreCacheUtils();
    }

    private void releasePreloadUtils() {
        this.preloadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7979xa55db43d();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$releasePreloadUtils$2$androidx-media3-exoplayer-source-preload-DefaultPreloadManager, reason: not valid java name */
    /* synthetic */ void m7979xa55db43d() {
        this.rendererCapabilitiesList.release();
        this.trackSelector.release();
        this.preloadLooperProvider.releaseLooper();
    }

    private void releasePreCacheUtils() {
        if (this.preCacheThread != null) {
            this.preCacheThread.quit();
        }
    }

    private static final class SimpleRankingDataComparator implements RankingDataComparator<Integer> {
        private int currentPlayingIndex = -1;
        private RankingDataComparator.InvalidationListener invalidationListener;

        @Override // java.util.Comparator
        public int compare(Integer o1, Integer o2) {
            return Integer.compare(Math.abs(o1.intValue() - this.currentPlayingIndex), Math.abs(o2.intValue() - this.currentPlayingIndex));
        }

        @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator
        public void setInvalidationListener(RankingDataComparator.InvalidationListener invalidationListener) {
            this.invalidationListener = invalidationListener;
        }

        public void setCurrentPlayingIndex(int currentPlayingIndex) {
            if (currentPlayingIndex != this.currentPlayingIndex) {
                this.currentPlayingIndex = currentPlayingIndex;
                if (this.invalidationListener != null) {
                    this.invalidationListener.onRankingDataComparatorInvalidated();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class PreCacheHelperListener implements PreCacheHelper.Listener {
        private PreCacheHelperListener() {
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepared(MediaItem originalMediaItem, MediaItem updatedMediaItem) {
            PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(originalMediaItem);
            if (targetPreloadStatus != null && targetPreloadStatus.isPreCachingCategory()) {
                MediaSource updatedMediaSource = DefaultPreloadManager.this.preloadMediaSourceFactory.createMediaSource(updatedMediaItem);
                DefaultPreloadManager.this.onMediaSourceUpdated(originalMediaItem, updatedMediaSource);
            }
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPreCacheProgress(MediaItem mediaItem, long contentLength, long bytesDownloaded, float percentageDownloaded) {
            final PreloadStatus targetPreloadStatus;
            if (percentageDownloaded != 100.0f || (targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem)) == null || !targetPreloadStatus.isPreCachingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onCompleted(mediaItem, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onPrepareError(MediaItem mediaItem, IOException error) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatus == null || !targetPreloadStatus.isPreCachingCategory()) {
                return;
            }
            PreloadException preloadException = new PreloadException(mediaItem, null, error);
            DefaultPreloadManager.this.onError(preloadException, mediaItem, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreCacheHelper.Listener
        public void onDownloadError(MediaItem mediaItem, IOException error) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
            if (targetPreloadStatus == null || !targetPreloadStatus.isPreCachingCategory()) {
                return;
            }
            PreloadException preloadException = new PreloadException(mediaItem, null, error);
            DefaultPreloadManager.this.onError(preloadException, mediaItem, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class PreloadMediaSourceControl implements PreloadMediaSource.PreloadControl {
        private PreloadMediaSourceControl() {
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onSourcePrepared(PreloadMediaSource mediaSource) {
            return continueOrCompletePreloading(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onSourcePrepared$0((DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        static /* synthetic */ boolean lambda$onSourcePrepared$0(PreloadStatus status) {
            return status.stage > 0;
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onTracksSelected(PreloadMediaSource mediaSource) {
            return continueOrCompletePreloading(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onTracksSelected$1((DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        static /* synthetic */ boolean lambda$onTracksSelected$1(PreloadStatus status) {
            return status.stage > 1;
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onContinueLoadingRequested(PreloadMediaSource mediaSource, final long bufferedDurationUs) {
            return continueOrCompletePreloading(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return DefaultPreloadManager.PreloadMediaSourceControl.lambda$onContinueLoadingRequested$2(bufferedDurationUs, (DefaultPreloadManager.PreloadStatus) obj);
                }
            });
        }

        static /* synthetic */ boolean lambda$onContinueLoadingRequested$2(long bufferedDurationUs, PreloadStatus status) {
            return status.stage == 2 && status.durationMs != C.TIME_UNSET && status.durationMs > Util.usToMs(bufferedDurationUs);
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onUsedByPlayer(PreloadMediaSource mediaSource) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
            if (targetPreloadStatus == null || !targetPreloadStatus.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onSkipped(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onLoadedToTheEndOfSource(PreloadMediaSource mediaSource) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
            if (targetPreloadStatus == null || !targetPreloadStatus.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onCompleted(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public void onPreloadError(PreloadException error, PreloadMediaSource mediaSource) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
            if (targetPreloadStatus == null || !targetPreloadStatus.isPreloadingCategory()) {
                return;
            }
            DefaultPreloadManager.this.onError(error, mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                }
            });
        }

        @Override // androidx.media3.exoplayer.source.preload.PreloadMediaSource.PreloadControl
        public boolean onLoadingUnableToContinue(PreloadMediaSource mediaSource) {
            BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder sourceHolder = DefaultPreloadManager.this.getMediaSourceHolderToClear();
            if (sourceHolder != null) {
                PreloadMediaSource lowestPriorityPreloadMediaSource = (PreloadMediaSource) sourceHolder.getMediaSource();
                lowestPriorityPreloadMediaSource.clear();
                DefaultPreloadManager.this.onSourceCleared();
                return true;
            }
            return false;
        }

        private boolean continueOrCompletePreloading(PreloadMediaSource mediaSource, Predicate<PreloadStatus> continueLoadingPredicate) {
            final PreloadStatus targetPreloadStatus = DefaultPreloadManager.this.getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
            if (targetPreloadStatus != null && targetPreloadStatus.isPreloadingCategory()) {
                if (continueLoadingPredicate.apply(targetPreloadStatus)) {
                    return true;
                }
                DefaultPreloadManager.this.onCompleted(mediaSource, new Predicate() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda6
                    @Override // com.google.common.base.Predicate
                    public final boolean apply(Object obj) {
                        return ((DefaultPreloadManager.PreloadStatus) obj).equals(targetPreloadStatus);
                    }
                });
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class DefaultMediaSourceFactorySupplier implements MediaSourceFactorySupplier {
        private Cache cache;
        private final Context context;
        private DataSource.Factory dataSourceFactory;
        private final Supplier<DefaultMediaSourceFactory> defaultMediaSourceFactorySupplier;

        private DefaultMediaSourceFactorySupplier(final Context context) {
            this.context = context;
            this.defaultMediaSourceFactorySupplier = Suppliers.memoize(new Supplier() { // from class: androidx.media3.exoplayer.source.preload.DefaultPreloadManager$DefaultMediaSourceFactorySupplier$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultPreloadManager.DefaultMediaSourceFactorySupplier.lambda$new$0(context);
                }
            });
        }

        static /* synthetic */ DefaultMediaSourceFactory lambda$new$0(Context context) {
            return new DefaultMediaSourceFactory(context);
        }

        @Override // androidx.media3.exoplayer.source.preload.MediaSourceFactorySupplier
        public DefaultMediaSourceFactorySupplier setCache(Cache cache) {
            this.cache = cache;
            return this;
        }

        @Override // androidx.media3.exoplayer.source.preload.MediaSourceFactorySupplier
        public DefaultMediaSourceFactorySupplier setDataSourceFactory(DataSource.Factory dataSourceFactory) {
            this.dataSourceFactory = dataSourceFactory;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public MediaSource.Factory get() {
            DataSource.Factory dataSourceFactory;
            DefaultMediaSourceFactory defaultMediaSourceFactory = this.defaultMediaSourceFactorySupplier.get();
            if (this.dataSourceFactory != null) {
                dataSourceFactory = this.dataSourceFactory;
            } else {
                dataSourceFactory = new DefaultDataSource.Factory(this.context);
            }
            Cache cache = this.cache;
            if (cache != null) {
                CacheDataSource.Factory cacheDataSourceFactory = new CacheDataSource.Factory().setUpstreamDataSourceFactory(dataSourceFactory).setCache(cache).setCacheWriteDataSinkFactory(null);
                defaultMediaSourceFactory.setDataSourceFactory(cacheDataSourceFactory);
            } else {
                defaultMediaSourceFactory.setDataSourceFactory(dataSourceFactory);
            }
            return defaultMediaSourceFactory;
        }
    }

    private final class PreloadMediaSourceHolder extends BasePreloadManager<Integer, PreloadStatus>.MediaSourceHolder {
        public PreCacheHelper preCacheHelper;

        public PreloadMediaSourceHolder(MediaItem mediaItem, PreloadMediaSource mediaSource, Integer rankingData) {
            super(mediaItem, rankingData, mediaSource);
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized PreloadMediaSource getMediaSource() {
            return (PreloadMediaSource) super.getMediaSource();
        }

        @Override // androidx.media3.exoplayer.source.preload.BasePreloadManager.MediaSourceHolder
        public synchronized void setMediaSource(MediaSource mediaSource) {
            getMediaSource().releasePreloadMediaSource();
            super.setMediaSource(mediaSource);
        }
    }
}
