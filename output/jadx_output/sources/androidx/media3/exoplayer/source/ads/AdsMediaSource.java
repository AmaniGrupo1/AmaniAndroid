package androidx.media3.exoplayer.source.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.ClippingMediaPeriod;
import androidx.media3.exoplayer.source.CompositeMediaSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class AdsMediaSource extends CompositeMediaSource<MediaSource.MediaPeriodId> {
    private static final MediaSource.MediaPeriodId CHILD_SOURCE_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    private final List<AdMediaSourceHolder> activeMediaSourceHolders;
    private final MediaSource.Factory adMediaSourceFactory;
    private AdMediaSourceHolder[][] adMediaSourceHolders;
    private AdPlaybackState adPlaybackState;
    private final DataSpec adTagDataSpec;
    private final AdViewProvider adViewProvider;
    private final Object adsId;
    private final AdsLoader adsLoader;
    private ComponentListener componentListener;
    final MediaItem.DrmConfiguration contentDrmConfiguration;
    private final MaskingMediaSource contentMediaSource;
    private Timeline contentTimeline;
    private final Handler mainHandler;
    private final Timeline.Period period;
    private Handler playerHandler;
    private final boolean useAdMediaSourceClipping;
    private final boolean useLazyContentSourcePreparation;

    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public static AdLoadException createForAd(Exception error) {
            return new AdLoadException(0, error);
        }

        public static AdLoadException createForAdGroup(Exception error, int adGroupIndex) {
            return new AdLoadException(1, new IOException("Failed to load ad group " + adGroupIndex, error));
        }

        public static AdLoadException createForAllAds(Exception error) {
            return new AdLoadException(2, error);
        }

        public static AdLoadException createForUnexpected(RuntimeException error) {
            return new AdLoadException(3, error);
        }

        private AdLoadException(int type, Exception cause) {
            super(cause);
            this.type = type;
        }

        public RuntimeException getRuntimeExceptionForUnexpected() {
            Preconditions.checkState(this.type == 3);
            return (RuntimeException) Preconditions.checkNotNull(getCause());
        }
    }

    public AdsMediaSource(MediaSource contentMediaSource, DataSpec adTagDataSpec, Object adsId, MediaSource.Factory adMediaSourceFactory, AdsLoader adsLoader, AdViewProvider adViewProvider) {
        this(contentMediaSource, adTagDataSpec, adsId, adMediaSourceFactory, adsLoader, adViewProvider, true, false);
    }

    public AdsMediaSource(MediaSource contentMediaSource, DataSpec adTagDataSpec, Object adsId, MediaSource.Factory adMediaSourceFactory, AdsLoader adsLoader, AdViewProvider adViewProvider, boolean useLazyContentSourcePreparation, boolean useAdMediaSourceClipping) {
        this.contentMediaSource = new MaskingMediaSource(contentMediaSource, useLazyContentSourcePreparation);
        this.contentDrmConfiguration = ((MediaItem.LocalConfiguration) Preconditions.checkNotNull(contentMediaSource.getMediaItem().localConfiguration)).drmConfiguration;
        this.adMediaSourceFactory = adMediaSourceFactory;
        this.adsLoader = adsLoader;
        this.adViewProvider = adViewProvider;
        this.adTagDataSpec = adTagDataSpec;
        this.adsId = adsId;
        this.useLazyContentSourcePreparation = useLazyContentSourcePreparation;
        this.useAdMediaSourceClipping = useAdMediaSourceClipping;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.period = new Timeline.Period();
        this.adMediaSourceHolders = new AdMediaSourceHolder[0][];
        this.activeMediaSourceHolders = new ArrayList();
        adsLoader.setSupportedContentTypes(adMediaSourceFactory.getSupportedTypes());
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem getMediaItem() {
        return this.contentMediaSource.getMediaItem();
    }

    public Object getAdsId() {
        return this.adsId;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return Objects.equals(getAdsConfiguration(getMediaItem()), getAdsConfiguration(mediaItem)) && this.contentMediaSource.canUpdateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void updateMediaItem(MediaItem mediaItem) {
        this.contentMediaSource.updateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener mediaTransferListener) {
        super.prepareSourceInternal(mediaTransferListener);
        this.playerHandler = Util.createHandlerForCurrentLooper();
        final ComponentListener componentListener = new ComponentListener(this.playerHandler);
        this.componentListener = componentListener;
        this.contentTimeline = this.contentMediaSource.getTimeline();
        prepareChildSource(CHILD_SOURCE_MEDIA_PERIOD_ID, this.contentMediaSource);
        this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7967x9f9466de(componentListener);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$prepareSourceInternal$0$androidx-media3-exoplayer-source-ads-AdsMediaSource, reason: not valid java name */
    /* synthetic */ void m7967x9f9466de(ComponentListener componentListener) {
        this.adsLoader.start(this, this.adTagDataSpec, this.adsId, this.adViewProvider, componentListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId id, Allocator allocator, long startPositionUs) {
        AdMediaSourceHolder adMediaSourceHolder;
        AdPlaybackState adPlaybackState = (AdPlaybackState) Preconditions.checkNotNull(this.adPlaybackState);
        if (adPlaybackState.adGroupCount > 0 && id.isAd()) {
            int adGroupIndex = id.adGroupIndex;
            int adIndexInAdGroup = id.adIndexInAdGroup;
            if (this.adMediaSourceHolders[adGroupIndex].length <= adIndexInAdGroup) {
                int adCount = adIndexInAdGroup + 1;
                this.adMediaSourceHolders[adGroupIndex] = (AdMediaSourceHolder[]) Arrays.copyOf(this.adMediaSourceHolders[adGroupIndex], adCount);
            }
            AdMediaSourceHolder adMediaSourceHolder2 = this.adMediaSourceHolders[adGroupIndex][adIndexInAdGroup];
            if (adMediaSourceHolder2 != null) {
                adMediaSourceHolder = adMediaSourceHolder2;
            } else {
                long endPositionUs = Long.MIN_VALUE;
                if (this.useAdMediaSourceClipping) {
                    AdPlaybackState.AdGroup adGroup = (AdPlaybackState.AdGroup) Preconditions.checkNotNull(adPlaybackState.getAdGroup(id.adGroupIndex));
                    if (adGroup.durationsUs.length > adIndexInAdGroup) {
                        long adDurationUs = adGroup.durationsUs[adIndexInAdGroup];
                        if (adDurationUs != C.TIME_UNSET) {
                            endPositionUs = adDurationUs;
                        }
                    }
                }
                AdMediaSourceHolder adMediaSourceHolder3 = new AdMediaSourceHolder(id, endPositionUs);
                this.adMediaSourceHolders[adGroupIndex][adIndexInAdGroup] = adMediaSourceHolder3;
                this.activeMediaSourceHolders.add(adMediaSourceHolder3);
                maybeUpdateAdMediaSources();
                adMediaSourceHolder = adMediaSourceHolder3;
            }
            return adMediaSourceHolder.createMediaPeriod(id, allocator, startPositionUs, this.useAdMediaSourceClipping);
        }
        MaskingMediaPeriod mediaPeriod = new MaskingMediaPeriod(id, allocator, startPositionUs);
        mediaPeriod.setMediaSource(this.contentMediaSource);
        mediaPeriod.createPeriod(id);
        return mediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        MediaPeriod mediaPeriod2;
        if (mediaPeriod instanceof ClippingMediaPeriod) {
            mediaPeriod2 = ((ClippingMediaPeriod) mediaPeriod).mediaPeriod;
        } else {
            mediaPeriod2 = mediaPeriod;
        }
        MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod2;
        MediaSource.MediaPeriodId id = maskingMediaPeriod.id;
        if (id.isAd()) {
            AdMediaSourceHolder adMediaSourceHolder = (AdMediaSourceHolder) Preconditions.checkNotNull(this.adMediaSourceHolders[id.adGroupIndex][id.adIndexInAdGroup]);
            adMediaSourceHolder.releaseMediaPeriod(mediaPeriod);
            if (!adMediaSourceHolder.isInactive()) {
                return;
            }
            adMediaSourceHolder.release();
            this.adMediaSourceHolders[id.adGroupIndex][id.adIndexInAdGroup] = null;
            this.activeMediaSourceHolders.remove(adMediaSourceHolder);
            return;
        }
        maskingMediaPeriod.releasePeriod();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
        super.releaseSourceInternal();
        final ComponentListener componentListener = (ComponentListener) Preconditions.checkNotNull(this.componentListener);
        this.componentListener = null;
        this.playerHandler = null;
        componentListener.stop();
        this.contentTimeline = null;
        this.adPlaybackState = null;
        this.adMediaSourceHolders = new AdMediaSourceHolder[0][];
        this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7968x4d6cb35f(componentListener);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$releaseSourceInternal$1$androidx-media3-exoplayer-source-ads-AdsMediaSource, reason: not valid java name */
    /* synthetic */ void m7968x4d6cb35f(ComponentListener componentListener) {
        this.adsLoader.stop(this, componentListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* JADX INFO: renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void m7952x28f9175(MediaSource.MediaPeriodId childSourceId, MediaSource mediaSource, final Timeline newTimeline) {
        if (childSourceId.isAd()) {
            int adGroupIndex = childSourceId.adGroupIndex;
            int adIndexInAdGroup = childSourceId.adIndexInAdGroup;
            ((AdMediaSourceHolder) Preconditions.checkNotNull(this.adMediaSourceHolders[adGroupIndex][adIndexInAdGroup])).handleSourceInfoRefresh(newTimeline);
            maybeUpdateSourceInfo();
            return;
        }
        Preconditions.checkArgument(newTimeline.getPeriodCount() == 1);
        this.contentTimeline = newTimeline;
        this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7966xbe1bc96f(newTimeline);
            }
        });
        if (this.useLazyContentSourcePreparation) {
            maybeUpdateSourceInfo();
        }
    }

    /* JADX INFO: renamed from: lambda$onChildSourceInfoRefreshed$2$androidx-media3-exoplayer-source-ads-AdsMediaSource, reason: not valid java name */
    /* synthetic */ void m7966xbe1bc96f(Timeline newTimeline) {
        boolean sourceInfoUpdated = this.adsLoader.handleContentTimelineChanged(this, newTimeline);
        Preconditions.checkState((sourceInfoUpdated && this.useLazyContentSourcePreparation) ? false : true);
        if (!sourceInfoUpdated && !this.useLazyContentSourcePreparation) {
            ((Handler) Preconditions.checkNotNull(this.playerHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.maybeUpdateSourceInfo();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId childSourceId, MediaSource.MediaPeriodId mediaPeriodId) {
        return childSourceId.isAd() ? childSourceId : mediaPeriodId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdPlaybackState(AdPlaybackState adPlaybackState) {
        if (this.adPlaybackState == null) {
            this.adMediaSourceHolders = new AdMediaSourceHolder[adPlaybackState.adGroupCount - (adPlaybackState.endsWithLivePostrollPlaceHolder() ? 1 : 0)][];
            Arrays.fill(this.adMediaSourceHolders, new AdMediaSourceHolder[0]);
        } else {
            int iCheckValidAdPlaybackStateUpdate = checkValidAdPlaybackStateUpdate(this.adPlaybackState, adPlaybackState);
            if (iCheckValidAdPlaybackStateUpdate > 0) {
                this.adMediaSourceHolders = growAdMediaSourceHolderGrid(this.adMediaSourceHolders, iCheckValidAdPlaybackStateUpdate);
            }
            if (this.useAdMediaSourceClipping) {
                for (int i = 0; i < this.activeMediaSourceHolders.size(); i++) {
                    AdMediaSourceHolder adMediaSourceHolder = this.activeMediaSourceHolders.get(i);
                    MediaSource.MediaPeriodId mediaPeriodId = adMediaSourceHolder.id;
                    long j = adPlaybackState.getAdGroup(mediaPeriodId.adGroupIndex).durationsUs[mediaPeriodId.adIndexInAdGroup];
                    if (j != C.TIME_UNSET) {
                        adMediaSourceHolder.setEndPositionUs(j);
                    }
                }
            }
        }
        this.adPlaybackState = adPlaybackState;
        maybeUpdateAdMediaSources();
        maybeUpdateSourceInfo();
    }

    private static int checkValidAdPlaybackStateUpdate(AdPlaybackState oldAdPlaybackState, AdPlaybackState newAdPlaybackState) {
        Preconditions.checkState(oldAdPlaybackState.endsWithLivePostrollPlaceHolder() == newAdPlaybackState.endsWithLivePostrollPlaceHolder());
        int insertionCount = newAdPlaybackState.adGroupCount - oldAdPlaybackState.adGroupCount;
        Preconditions.checkState(insertionCount >= 0);
        int i = newAdPlaybackState.removedAdGroupCount;
        while (true) {
            if (i >= oldAdPlaybackState.adGroupCount) {
                break;
            }
            AdPlaybackState.AdGroup oldAdGroup = oldAdPlaybackState.getAdGroup(i);
            if (oldAdGroup.isLivePostrollPlaceholder()) {
                Preconditions.checkState(i == oldAdPlaybackState.adGroupCount - 1);
            } else {
                AdPlaybackState.AdGroup newAdGroup = newAdPlaybackState.getAdGroup(i);
                Preconditions.checkState(oldAdGroup.count <= newAdGroup.count);
                Preconditions.checkState(oldAdGroup.timeUs == newAdGroup.timeUs);
                for (int j = 0; j < oldAdGroup.count; j++) {
                    if (oldAdGroup.mediaItems[j] != null) {
                        Preconditions.checkState(oldAdGroup.mediaItems[j].equals(newAdGroup.mediaItems[j]));
                    }
                }
                i++;
            }
        }
        return insertionCount;
    }

    private static AdMediaSourceHolder[][] growAdMediaSourceHolderGrid(AdMediaSourceHolder[][] grid, int insertionCount) {
        AdMediaSourceHolder[][] grownGrid = new AdMediaSourceHolder[grid.length + insertionCount][];
        System.arraycopy(grid, 0, grownGrid, 0, grid.length);
        for (int i = grid.length; i < grownGrid.length; i++) {
            grownGrid[i] = new AdMediaSourceHolder[0];
        }
        return grownGrid;
    }

    private void maybeUpdateAdMediaSources() {
        MediaItem adMediaItem;
        AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null) {
            return;
        }
        for (int adGroupIndex = 0; adGroupIndex < this.adMediaSourceHolders.length; adGroupIndex++) {
            for (int adIndexInAdGroup = 0; adIndexInAdGroup < this.adMediaSourceHolders[adGroupIndex].length; adIndexInAdGroup++) {
                AdMediaSourceHolder adMediaSourceHolder = this.adMediaSourceHolders[adGroupIndex][adIndexInAdGroup];
                AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(adGroupIndex);
                if (adMediaSourceHolder != null && !adMediaSourceHolder.hasMediaSource() && adIndexInAdGroup < adGroup.mediaItems.length && (adMediaItem = adGroup.mediaItems[adIndexInAdGroup]) != null) {
                    if (this.contentDrmConfiguration != null) {
                        adMediaItem = adMediaItem.buildUpon().setDrmConfiguration(this.contentDrmConfiguration).build();
                    }
                    MediaSource adMediaSource = this.adMediaSourceFactory.createMediaSource(adMediaItem);
                    adMediaSourceHolder.initializeWithMediaSource(adMediaSource, adMediaItem);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateSourceInfo() {
        Timeline contentTimeline = this.contentTimeline;
        if (this.adPlaybackState != null && contentTimeline != null) {
            if (this.adPlaybackState.adGroupCount == 0) {
                refreshSourceInfo(contentTimeline);
            } else {
                this.adPlaybackState = this.adPlaybackState.withAdDurationsUs(getAdDurationsUs());
                refreshSourceInfo(new SinglePeriodAdTimeline(contentTimeline, this.adPlaybackState));
            }
        }
    }

    @RequiresNonNull({"adPlaybackState"})
    private long[][] getAdDurationsUs() {
        int length;
        long j;
        AdPlaybackState adPlaybackState = (AdPlaybackState) Preconditions.checkNotNull(this.adPlaybackState);
        boolean zEndsWithLivePostrollPlaceHolder = adPlaybackState.endsWithLivePostrollPlaceHolder();
        int length2 = this.adMediaSourceHolders.length + (zEndsWithLivePostrollPlaceHolder ? 1 : 0);
        long[][] jArr = new long[length2][];
        for (int i = 0; i < this.adMediaSourceHolders.length; i++) {
            if (this.useAdMediaSourceClipping) {
                length = Math.max(adPlaybackState.getAdGroup(i).count, 0);
            } else {
                length = this.adMediaSourceHolders[i].length;
            }
            jArr[i] = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                if (adPlaybackState.getAdGroup(i).durationsUs.length > i2) {
                    j = adPlaybackState.getAdGroup(i).durationsUs[i2];
                } else {
                    j = -9223372036854775807L;
                }
                if (j != C.TIME_UNSET && this.useAdMediaSourceClipping) {
                    jArr[i][i2] = j;
                } else if (this.adMediaSourceHolders[i].length <= i2 || this.adMediaSourceHolders[i][i2] == null) {
                    jArr[i][i2] = -9223372036854775807L;
                } else {
                    jArr[i][i2] = this.adMediaSourceHolders[i][i2].getDurationUs();
                }
            }
        }
        if (zEndsWithLivePostrollPlaceHolder) {
            jArr[length2 - 1] = new long[0];
        }
        return jArr;
    }

    private static MediaItem.AdsConfiguration getAdsConfiguration(MediaItem mediaItem) {
        if (mediaItem.localConfiguration == null) {
            return null;
        }
        return mediaItem.localConfiguration.adsConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ComponentListener implements AdsLoader.EventListener {
        private final Handler playerHandler;
        private volatile boolean stopped;

        public ComponentListener(Handler playerHandler) {
            this.playerHandler = playerHandler;
        }

        public void stop() {
            this.stopped = true;
            this.playerHandler.removeCallbacksAndMessages(null);
        }

        @Override // androidx.media3.exoplayer.source.ads.AdsLoader.EventListener
        public void onAdPlaybackState(final AdPlaybackState adPlaybackState) {
            if (this.stopped) {
                return;
            }
            this.playerHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$ComponentListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7971x6396e000(adPlaybackState);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onAdPlaybackState$0$androidx-media3-exoplayer-source-ads-AdsMediaSource$ComponentListener, reason: not valid java name */
        /* synthetic */ void m7971x6396e000(AdPlaybackState adPlaybackState) {
            if (!this.stopped) {
                AdsMediaSource.this.onAdPlaybackState(adPlaybackState);
            }
        }

        @Override // androidx.media3.exoplayer.source.ads.AdsLoader.EventListener
        public void onAdLoadError(AdLoadException error, DataSpec dataSpec) {
            if (this.stopped) {
                return;
            }
            AdsMediaSource.this.createEventDispatcher(null).loadError(new LoadEventInfo(LoadEventInfo.getNewId(), dataSpec, SystemClock.elapsedRealtime()), 6, (IOException) error, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AdPrepareListener implements MaskingMediaPeriod.PrepareListener {
        private final MediaItem adMediaItem;

        public AdPrepareListener(MediaItem adMediaItem) {
            this.adMediaItem = adMediaItem;
        }

        @Override // androidx.media3.exoplayer.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareComplete(final MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7969x672fc1f4(mediaPeriodId);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onPrepareComplete$0$androidx-media3-exoplayer-source-ads-AdsMediaSource$AdPrepareListener, reason: not valid java name */
        /* synthetic */ void m7969x672fc1f4(MediaSource.MediaPeriodId mediaPeriodId) {
            AdsMediaSource.this.adsLoader.handlePrepareComplete(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        }

        @Override // androidx.media3.exoplayer.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareError(final MediaSource.MediaPeriodId mediaPeriodId, final IOException exception) {
            AdsMediaSource.this.createEventDispatcher(mediaPeriodId).loadError(new LoadEventInfo(LoadEventInfo.getNewId(), new DataSpec(((MediaItem.LocalConfiguration) Preconditions.checkNotNull(this.adMediaItem.localConfiguration)).uri), SystemClock.elapsedRealtime()), 6, (IOException) AdLoadException.createForAd(exception), true);
            AdsMediaSource.this.mainHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.AdsMediaSource$AdPrepareListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7970xa9898f8e(mediaPeriodId, exception);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onPrepareError$1$androidx-media3-exoplayer-source-ads-AdsMediaSource$AdPrepareListener, reason: not valid java name */
        /* synthetic */ void m7970xa9898f8e(MediaSource.MediaPeriodId mediaPeriodId, IOException exception) {
            AdsMediaSource.this.adsLoader.handlePrepareError(AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, exception);
        }
    }

    private final class AdMediaSourceHolder {
        private final List<MediaPeriod> activeMediaPeriods;
        private MediaItem adMediaItem;
        private MediaSource adMediaSource;
        private long endPositionUs;
        private final MediaSource.MediaPeriodId id;
        private Timeline timeline;

        private AdMediaSourceHolder(MediaSource.MediaPeriodId id, long endPositionUs) {
            this.id = id;
            this.endPositionUs = endPositionUs;
            this.activeMediaPeriods = new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initializeWithMediaSource(MediaSource adMediaSource, MediaItem adMediaItem) {
            this.adMediaSource = adMediaSource;
            this.adMediaItem = adMediaItem;
            for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
                MaskingMediaPeriod maskingMediaPeriod = getActiveMaskingMediaPeriod(i);
                maskingMediaPeriod.setMediaSource(adMediaSource);
                maskingMediaPeriod.setPrepareListener(AdsMediaSource.this.new AdPrepareListener(adMediaItem));
            }
            AdsMediaSource.this.prepareChildSource(this.id, adMediaSource);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaPeriod createMediaPeriod(MediaSource.MediaPeriodId id, Allocator allocator, long startPositionUs, boolean useClipping) {
            MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(id, allocator, startPositionUs);
            MediaPeriod mediaPeriod = useClipping ? new ClippingMediaPeriod(maskingMediaPeriod, false, startPositionUs, this.endPositionUs) : maskingMediaPeriod;
            this.activeMediaPeriods.add(mediaPeriod);
            if (this.adMediaSource != null) {
                maskingMediaPeriod.setMediaSource(this.adMediaSource);
                maskingMediaPeriod.setPrepareListener(AdsMediaSource.this.new AdPrepareListener((MediaItem) Preconditions.checkNotNull(this.adMediaItem)));
            }
            if (this.timeline != null) {
                Object periodUid = this.timeline.getUidOfPeriod(0);
                MediaSource.MediaPeriodId adSourceMediaPeriodId = new MediaSource.MediaPeriodId(periodUid, id.windowSequenceNumber);
                maskingMediaPeriod.createPeriod(adSourceMediaPeriodId);
            }
            return mediaPeriod;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleSourceInfoRefresh(Timeline timeline) {
            Preconditions.checkArgument(timeline.getPeriodCount() == 1);
            if (this.timeline == null) {
                Object periodUid = timeline.getUidOfPeriod(0);
                for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
                    MaskingMediaPeriod maskingMediaPeriod = getActiveMaskingMediaPeriod(i);
                    MediaSource.MediaPeriodId adSourceMediaPeriodId = new MediaSource.MediaPeriodId(periodUid, maskingMediaPeriod.id.windowSequenceNumber);
                    maskingMediaPeriod.createPeriod(adSourceMediaPeriodId);
                }
                setEndPositionUs(this.endPositionUs);
            }
            this.timeline = timeline;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEndPositionUs(long endPositionUs) {
            if (!AdsMediaSource.this.useAdMediaSourceClipping || this.endPositionUs != Long.MIN_VALUE || endPositionUs == Long.MIN_VALUE) {
                return;
            }
            this.endPositionUs = endPositionUs;
            for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
                if (this.activeMediaPeriods.get(i) instanceof ClippingMediaPeriod) {
                    ((ClippingMediaPeriod) this.activeMediaPeriods.get(i)).updateClipping(0L, endPositionUs);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getDurationUs() {
            if (this.timeline != null) {
                return this.timeline.getPeriod(0, AdsMediaSource.this.period).getDurationUs();
            }
            return C.TIME_UNSET;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void releaseMediaPeriod(MediaPeriod mediaPeriod) {
            MediaPeriod mediaPeriod2;
            this.activeMediaPeriods.remove(mediaPeriod);
            if (mediaPeriod instanceof ClippingMediaPeriod) {
                mediaPeriod2 = ((ClippingMediaPeriod) mediaPeriod).mediaPeriod;
            } else {
                mediaPeriod2 = mediaPeriod;
            }
            MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod2;
            maskingMediaPeriod.releasePeriod();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            if (hasMediaSource()) {
                AdsMediaSource.this.releaseChildSource(this.id);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasMediaSource() {
            return this.adMediaSource != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isInactive() {
            return this.activeMediaPeriods.isEmpty();
        }

        private MaskingMediaPeriod getActiveMaskingMediaPeriod(int activeMediaPeriodIndex) {
            MediaPeriod mediaPeriod;
            MediaPeriod mediaPeriod2 = this.activeMediaPeriods.get(activeMediaPeriodIndex);
            if (mediaPeriod2 instanceof ClippingMediaPeriod) {
                mediaPeriod = ((ClippingMediaPeriod) mediaPeriod2).mediaPeriod;
            } else {
                mediaPeriod = mediaPeriod2;
            }
            return (MaskingMediaPeriod) mediaPeriod;
        }
    }
}
