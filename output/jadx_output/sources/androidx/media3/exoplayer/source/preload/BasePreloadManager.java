package androidx.media3.exoplayer.source.preload;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.RankingDataComparator;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public abstract class BasePreloadManager<T, PreloadStatusT> {
    private int indexForSourceHolderToClear;
    private int indexForSourceHolderToPreload;
    private final MediaSource.Factory mediaSourceFactory;
    protected final RankingDataComparator<T> rankingDataComparator;
    private final List<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> sourceHolderPriorityList;
    private final TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl;
    private PreloadStatusT targetPreloadStatusOfCurrentPreloadingSource;
    private final Object lock = new Object();
    private final Handler applicationHandler = Util.createHandlerForCurrentOrMainLooper();
    private final ListenerSet<PreloadManagerListener> listeners = new ListenerSet<>(this.applicationHandler.getLooper());
    private final BasePreloadManager<T, PreloadStatusT>.MediaSourceHolderMap mediaSourceHolderMap = new MediaSourceHolderMap();

    protected abstract BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder createMediaSourceHolder(MediaItem mediaItem, MediaSource mediaSource, T t);

    protected abstract void preloadMediaSourceHolderInternal(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder, PreloadStatusT preloadstatust);

    protected static abstract class BuilderBase<T, PreloadStatusT> {
        protected MediaSourceFactorySupplier mediaSourceFactorySupplier;
        protected RankingDataComparator<T> rankingDataComparator;
        protected final TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl;

        public abstract BasePreloadManager<T, PreloadStatusT> build();

        public BuilderBase(RankingDataComparator<T> rankingDataComparator, TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl, MediaSourceFactorySupplier mediaSourceFactorySupplier) {
            this.rankingDataComparator = rankingDataComparator;
            this.targetPreloadStatusControl = targetPreloadStatusControl;
            this.mediaSourceFactorySupplier = mediaSourceFactorySupplier;
        }
    }

    protected BasePreloadManager(RankingDataComparator<T> rankingDataComparator, TargetPreloadStatusControl<T, PreloadStatusT> targetPreloadStatusControl, MediaSource.Factory mediaSourceFactory) {
        this.rankingDataComparator = rankingDataComparator;
        this.targetPreloadStatusControl = targetPreloadStatusControl;
        this.mediaSourceFactory = mediaSourceFactory;
        this.rankingDataComparator.setInvalidationListener(new RankingDataComparator.InvalidationListener() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda1
            @Override // androidx.media3.exoplayer.source.preload.RankingDataComparator.InvalidationListener
            public final void onRankingDataComparatorInvalidated() {
                this.f$0.invalidate();
            }
        });
        this.sourceHolderPriorityList = new ArrayList();
    }

    public void addListener(PreloadManagerListener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(PreloadManagerListener listener) {
        verifyApplicationThread();
        this.listeners.remove(listener);
    }

    public void clearListeners() {
        verifyApplicationThread();
        this.listeners.clear();
    }

    public final int getSourceCount() {
        return this.mediaSourceHolderMap.size();
    }

    public final void addMediaItems(List<MediaItem> mediaItems, List<T> rankingDataList) {
        Preconditions.checkArgument(mediaItems.size() == rankingDataList.size());
        for (int i = 0; i < mediaItems.size(); i++) {
            add(mediaItems.get(i), rankingDataList.get(i));
        }
        invalidate();
    }

    public final void add(MediaItem mediaItem, T rankingData) {
        add(this.mediaSourceFactory.createMediaSource(mediaItem), rankingData);
    }

    public final void addMediaSources(List<MediaSource> mediaSources, List<T> rankingDataList) {
        Preconditions.checkArgument(mediaSources.size() == rankingDataList.size());
        for (int i = 0; i < mediaSources.size(); i++) {
            add(mediaSources.get(i), rankingDataList.get(i));
        }
        invalidate();
    }

    public final void add(MediaSource mediaSource, T rankingData) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaHolder = createMediaSourceHolder(mediaSource.getMediaItem(), mediaSource, rankingData);
        this.mediaSourceHolderMap.put(mediaHolder.mediaItem, mediaHolder.getMediaSource(), mediaHolder);
    }

    public final void invalidate() {
        synchronized (this.lock) {
            resetSourceHolderPriorityList();
            while (this.indexForSourceHolderToPreload < this.sourceHolderPriorityList.size() && !maybeStartPreloadingNextSourceHolder()) {
                this.indexForSourceHolderToPreload++;
            }
        }
    }

    private void resetSourceHolderPriorityList() {
        this.sourceHolderPriorityList.clear();
        this.sourceHolderPriorityList.addAll(this.mediaSourceHolderMap.values());
        Collections.sort(this.sourceHolderPriorityList);
        this.indexForSourceHolderToPreload = 0;
        this.indexForSourceHolderToClear = this.sourceHolderPriorityList.size() - 1;
    }

    public final MediaSource getMediaSource(MediaItem mediaItem) {
        if (!this.mediaSourceHolderMap.containsKey(mediaItem)) {
            return null;
        }
        return ((MediaSourceHolder) Preconditions.checkNotNull(this.mediaSourceHolderMap.get(mediaItem))).getMediaSource();
    }

    public final boolean remove(MediaItem mediaItem) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
        if (mediaSourceHolder != null) {
            releaseMediaSourceHolderInternal(mediaSourceHolder);
            this.mediaSourceHolderMap.remove(mediaItem);
            if (isCurrentlyPreloading(mediaSourceHolder)) {
                maybeAdvanceToNextMediaSourceHolder();
                return true;
            }
            return true;
        }
        return false;
    }

    public final void removeMediaItems(List<MediaItem> mediaItems) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentMediaSourceHolder;
        for (MediaItem mediaItem : mediaItems) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaItem);
            if (mediaSourceHolder != null) {
                releaseMediaSourceHolderInternal(mediaSourceHolder);
                this.mediaSourceHolderMap.remove(mediaItem);
            }
        }
        synchronized (this.lock) {
            currentMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
        }
        if (currentMediaSourceHolder != null && currentMediaSourceHolder.isReleased()) {
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    public final boolean remove(MediaSource mediaSource) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaSource);
        if (mediaSourceHolder != null) {
            releaseMediaSourceHolderInternal(mediaSourceHolder);
            this.mediaSourceHolderMap.remove(mediaSource);
            if (isCurrentlyPreloading(mediaSourceHolder)) {
                maybeAdvanceToNextMediaSourceHolder();
                return true;
            }
            return true;
        }
        return false;
    }

    public final void removeMediaSources(List<MediaSource> mediaSources) {
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentMediaSourceHolder;
        for (MediaSource mediaSource : mediaSources) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaSourceHolderMap.get(mediaSource);
            if (mediaSourceHolder != null) {
                releaseMediaSourceHolderInternal(mediaSourceHolder);
                this.mediaSourceHolderMap.remove(mediaSource);
            }
        }
        synchronized (this.lock) {
            currentMediaSourceHolder = getCurrentlyPreloadingMediaSourceHolder();
        }
        if (currentMediaSourceHolder != null && currentMediaSourceHolder.isReleased()) {
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    public final void reset() {
        for (BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaHolder : this.mediaSourceHolderMap.values()) {
            releaseMediaSourceHolderInternal(mediaHolder);
        }
        this.mediaSourceHolderMap.clear();
        synchronized (this.lock) {
            resetSourceHolderPriorityList();
            this.targetPreloadStatusOfCurrentPreloadingSource = null;
        }
    }

    public final void release() {
        reset();
        releaseInternal();
        clearListeners();
    }

    protected final void onCompleted(final MediaSource mediaSource, final Predicate<PreloadStatusT> shouldNotifyListenerAndAdvancePredicate) {
        this.applicationHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7973x3eecb679(mediaSource, shouldNotifyListenerAndAdvancePredicate);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCompleted$1$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7973x3eecb679(MediaSource mediaSource, Predicate shouldNotifyListenerAndAdvancePredicate) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatus == null) {
            return;
        }
        final BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Preconditions.checkNotNull(this.mediaSourceHolderMap.get(mediaSource));
        if (shouldNotifyListenerAndAdvancePredicate.apply(targetPreloadStatus)) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda6
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((PreloadManagerListener) obj).onCompleted(mediaSourceHolder.mediaItem);
                }
            });
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    protected final void onCompleted(final MediaItem mediaItem, final Predicate<PreloadStatusT> shouldNotifyListenerAndAdvancePredicate) {
        this.applicationHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7974xb3d7f77b(mediaItem, shouldNotifyListenerAndAdvancePredicate);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCompleted$3$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7974xb3d7f77b(MediaItem mediaItem, Predicate shouldNotifyListenerAndAdvancePredicate) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
        if (targetPreloadStatus == null) {
            return;
        }
        final BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Preconditions.checkNotNull(this.mediaSourceHolderMap.get(mediaItem));
        if (shouldNotifyListenerAndAdvancePredicate.apply(targetPreloadStatus)) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda7
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((PreloadManagerListener) obj).onCompleted(mediaSourceHolder.mediaItem);
                }
            });
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    protected final void onError(final PreloadException error, final MediaSource mediaSource, final Predicate<PreloadStatusT> shouldNotifyListenerAndAdvancePredicate) {
        this.applicationHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7975x72a3597a(mediaSource, shouldNotifyListenerAndAdvancePredicate, error);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onError$5$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7975x72a3597a(MediaSource mediaSource, Predicate shouldNotifyListenerAndAdvancePredicate, final PreloadException error) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatus != null && shouldNotifyListenerAndAdvancePredicate.apply(targetPreloadStatus)) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((PreloadManagerListener) obj).onError(error);
                }
            });
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    protected final void onError(final PreloadException error, final MediaItem mediaItem, final Predicate<PreloadStatusT> shouldNotifyListenerAndAdvancePredicate) {
        this.applicationHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7976xe78e9a7c(mediaItem, shouldNotifyListenerAndAdvancePredicate, error);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onError$7$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7976xe78e9a7c(MediaItem mediaItem, Predicate shouldNotifyListenerAndAdvancePredicate, final PreloadException error) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
        if (targetPreloadStatus != null && shouldNotifyListenerAndAdvancePredicate.apply(targetPreloadStatus)) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((PreloadManagerListener) obj).onError(error);
                }
            });
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    protected final void onSkipped(final MediaSource mediaSource, final Predicate<PreloadStatusT> shouldAdvancePredicate) {
        Util.postOrRun(this.applicationHandler, new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7978x83a22925(mediaSource, shouldAdvancePredicate);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onSkipped$8$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7978x83a22925(MediaSource mediaSource, Predicate shouldAdvancePredicate) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaSource);
        if (targetPreloadStatus != null && shouldAdvancePredicate.apply(targetPreloadStatus)) {
            maybeAdvanceToNextMediaSourceHolder();
        }
    }

    protected final void onSourceCleared() {
        synchronized (this.lock) {
            this.indexForSourceHolderToClear--;
        }
    }

    protected final void onMediaSourceUpdated(final MediaItem mediaItem, final MediaSource updatedMediaSource) {
        Util.postOrRun(this.applicationHandler, new Runnable() { // from class: androidx.media3.exoplayer.source.preload.BasePreloadManager$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7977xfe00ce8a(mediaItem, updatedMediaSource);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onMediaSourceUpdated$9$androidx-media3-exoplayer-source-preload-BasePreloadManager, reason: not valid java name */
    /* synthetic */ void m7977xfe00ce8a(MediaItem mediaItem, MediaSource updatedMediaSource) {
        PreloadStatusT targetPreloadStatus = getTargetPreloadStatusIfCurrentlyPreloading(mediaItem);
        if (targetPreloadStatus == null) {
            return;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder sourceHolder = (MediaSourceHolder) Preconditions.checkNotNull(this.mediaSourceHolderMap.get(mediaItem));
        this.mediaSourceHolderMap.remove(mediaItem);
        sourceHolder.setMediaSource(updatedMediaSource);
        this.mediaSourceHolderMap.put(mediaItem, updatedMediaSource, sourceHolder);
    }

    private void maybeAdvanceToNextMediaSourceHolder() {
        synchronized (this.lock) {
            do {
                this.indexForSourceHolderToPreload++;
                if (this.indexForSourceHolderToPreload >= this.sourceHolderPriorityList.size()) {
                    break;
                }
            } while (!maybeStartPreloadingNextSourceHolder());
        }
    }

    private BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder getCurrentlyPreloadingMediaSourceHolder() {
        if (this.indexForSourceHolderToPreload >= this.sourceHolderPriorityList.size()) {
            return null;
        }
        return this.sourceHolderPriorityList.get(this.indexForSourceHolderToPreload);
    }

    protected BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder getMediaSourceHolderToClear() {
        synchronized (this.lock) {
            if (this.indexForSourceHolderToPreload >= this.indexForSourceHolderToClear) {
                return null;
            }
            return this.sourceHolderPriorityList.get(this.indexForSourceHolderToClear);
        }
    }

    protected final PreloadStatusT getTargetPreloadStatusIfCurrentlyPreloading(MediaSource mediaSource) {
        synchronized (this.lock) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentMediaHolder = getCurrentlyPreloadingMediaSourceHolder();
            if (currentMediaHolder != null && mediaSource == currentMediaHolder.getMediaSource()) {
                return this.targetPreloadStatusOfCurrentPreloadingSource;
            }
            return null;
        }
    }

    protected final PreloadStatusT getTargetPreloadStatusIfCurrentlyPreloading(MediaItem mediaItem) {
        synchronized (this.lock) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder currentMediaHolder = getCurrentlyPreloadingMediaSourceHolder();
            if (currentMediaHolder != null && mediaItem.equals(currentMediaHolder.mediaItem)) {
                return this.targetPreloadStatusOfCurrentPreloadingSource;
            }
            return null;
        }
    }

    private boolean isCurrentlyPreloading(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
        boolean z;
        synchronized (this.lock) {
            z = mediaSourceHolder == getCurrentlyPreloadingMediaSourceHolder();
        }
        return z;
    }

    protected boolean shouldStartPreloadingNextSource() {
        return true;
    }

    protected void releaseMediaSourceHolderInternal(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
        mediaSourceHolder.release();
    }

    protected void releaseInternal() {
    }

    private boolean maybeStartPreloadingNextSourceHolder() {
        if (!shouldStartPreloadingNextSource()) {
            return false;
        }
        BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder preloadingHolder = this.sourceHolderPriorityList.get(this.indexForSourceHolderToPreload);
        if (preloadingHolder.isReleased()) {
            return false;
        }
        this.targetPreloadStatusOfCurrentPreloadingSource = this.targetPreloadStatusControl.getTargetPreloadStatus(preloadingHolder.rankingData);
        preloadMediaSourceHolderInternal(preloadingHolder, this.targetPreloadStatusOfCurrentPreloadingSource);
        return true;
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() != this.applicationHandler.getLooper()) {
            throw new IllegalStateException("Preload manager is accessed on the wrong thread.");
        }
    }

    protected class MediaSourceHolder implements Comparable<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> {
        public final MediaItem mediaItem;
        private MediaSource mediaSource;
        public final T rankingData;
        private boolean released;

        public MediaSourceHolder(MediaItem mediaItem, T rankingData, MediaSource mediaSource) {
            this.mediaItem = mediaItem;
            this.rankingData = rankingData;
            this.mediaSource = mediaSource;
        }

        public final void release() {
            this.released = true;
        }

        public final boolean isReleased() {
            return this.released;
        }

        public synchronized MediaSource getMediaSource() {
            return this.mediaSource;
        }

        public synchronized void setMediaSource(MediaSource mediaSource) {
            this.mediaSource = mediaSource;
        }

        @Override // java.lang.Comparable
        public int compareTo(BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder o) {
            return BasePreloadManager.this.rankingDataComparator.compare(this.rankingData, o.rankingData);
        }
    }

    private final class MediaSourceHolderMap {
        private final HashMap<MediaItem, BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> mediaItemToMediaSourceHolder = new HashMap<>();
        private final HashMap<MediaSource, MediaItem> mediaSourceToMediaItem = new HashMap<>();

        public MediaSourceHolderMap() {
        }

        public synchronized void put(MediaItem mediaItem, MediaSource mediaSource, BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder) {
            this.mediaItemToMediaSourceHolder.put(mediaItem, mediaSourceHolder);
            this.mediaSourceToMediaItem.put(mediaSource, mediaItem);
        }

        public synchronized Collection<BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder> values() {
            return this.mediaItemToMediaSourceHolder.values();
        }

        public synchronized int size() {
            return this.mediaItemToMediaSourceHolder.size();
        }

        public synchronized boolean containsKey(MediaItem mediaItem) {
            return this.mediaItemToMediaSourceHolder.containsKey(mediaItem);
        }

        public synchronized BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder get(MediaItem mediaItem) {
            return this.mediaItemToMediaSourceHolder.get(mediaItem);
        }

        public synchronized BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder get(MediaSource mediaSource) {
            MediaItem mediaItem = this.mediaSourceToMediaItem.get(mediaSource);
            if (mediaItem == null) {
                return null;
            }
            return (MediaSourceHolder) Preconditions.checkNotNull(this.mediaItemToMediaSourceHolder.get(mediaItem));
        }

        public synchronized boolean remove(MediaItem mediaItem) {
            BasePreloadManager<T, PreloadStatusT>.MediaSourceHolder mediaSourceHolder = this.mediaItemToMediaSourceHolder.remove(mediaItem);
            if (mediaSourceHolder == null) {
                return false;
            }
            Preconditions.checkNotNull(this.mediaSourceToMediaItem.remove(mediaSourceHolder.getMediaSource()));
            return true;
        }

        public synchronized boolean remove(MediaSource mediaSource) {
            MediaItem mediaItem = this.mediaSourceToMediaItem.remove(mediaSource);
            if (mediaItem == null) {
                return false;
            }
            Preconditions.checkNotNull(this.mediaItemToMediaSourceHolder.remove(mediaItem));
            return true;
        }

        public synchronized void clear() {
            this.mediaItemToMediaSourceHolder.clear();
            this.mediaSourceToMediaItem.clear();
        }
    }
}
