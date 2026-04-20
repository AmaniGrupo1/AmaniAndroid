package androidx.media3.exoplayer.offline;

import android.util.SparseArray;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.offline.DownloadRequest;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public class DefaultDownloaderFactory implements DownloaderFactory {
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final Executor executor;
    private final SparseArray<SegmentDownloaderFactory> segmentDownloaderFactories;

    @Deprecated
    public DefaultDownloaderFactory(CacheDataSource.Factory cacheDataSourceFactory) {
        this(cacheDataSourceFactory, new Executor() { // from class: androidx.media3.exoplayer.offline.DefaultDownloaderFactory$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        });
    }

    public DefaultDownloaderFactory(CacheDataSource.Factory cacheDataSourceFactory, Executor executor) {
        this.cacheDataSourceFactory = (CacheDataSource.Factory) Preconditions.checkNotNull(cacheDataSourceFactory);
        this.executor = (Executor) Preconditions.checkNotNull(executor);
        this.segmentDownloaderFactories = new SparseArray<>();
    }

    @Override // androidx.media3.exoplayer.offline.DownloaderFactory
    public Downloader createDownloader(DownloadRequest request) {
        int contentType = Util.inferContentTypeForUriAndMimeType(request.uri, request.mimeType);
        switch (contentType) {
            case 0:
            case 1:
            case 2:
                return createSegmentDownloader(request, contentType);
            case 3:
            default:
                throw new IllegalArgumentException("Unsupported type: " + contentType);
            case 4:
                DownloadRequest.ByteRange byteRange = request.byteRange;
                return new ProgressiveDownloader(new MediaItem.Builder().setUri(request.uri).setCustomCacheKey(request.customCacheKey).build(), this.cacheDataSourceFactory, this.executor, byteRange != null ? byteRange.offset : 0L, byteRange != null ? byteRange.length : -1L);
        }
    }

    private Downloader createSegmentDownloader(DownloadRequest request, int contentType) {
        SegmentDownloaderFactory downloaderFactory = getSegmentDownloaderFactory(contentType, this.cacheDataSourceFactory);
        MediaItem mediaItem = new MediaItem.Builder().setUri(request.uri).setStreamKeys(request.streamKeys).setCustomCacheKey(request.customCacheKey).build();
        if (request.timeRange != null) {
            downloaderFactory.setStartPositionUs(request.timeRange.startPositionUs).setDurationUs(request.timeRange.durationUs);
        }
        return downloaderFactory.setExecutor(this.executor).create(mediaItem);
    }

    private SegmentDownloaderFactory getSegmentDownloaderFactory(int contentType, CacheDataSource.Factory cacheDataSourceFactory) {
        if (Util.contains(this.segmentDownloaderFactories, contentType)) {
            return this.segmentDownloaderFactories.get(contentType);
        }
        try {
            SegmentDownloaderFactory downloaderFactory = loadSegmentDownloaderFactory(contentType, cacheDataSourceFactory);
            return downloaderFactory;
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Module missing for content type " + contentType, e);
        }
    }

    private SegmentDownloaderFactory loadSegmentDownloaderFactory(int contentType, CacheDataSource.Factory cacheDataSourceFactory) throws ClassNotFoundException {
        SegmentDownloaderFactory factory;
        switch (contentType) {
            case 0:
                factory = createSegmentDownloaderFactory(Class.forName("androidx.media3.exoplayer.dash.offline.DashDownloader$Factory").asSubclass(SegmentDownloaderFactory.class), cacheDataSourceFactory);
                break;
            case 1:
                factory = createSegmentDownloaderFactory(Class.forName("androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader$Factory").asSubclass(SegmentDownloaderFactory.class), cacheDataSourceFactory);
                break;
            case 2:
                factory = createSegmentDownloaderFactory(Class.forName("androidx.media3.exoplayer.hls.offline.HlsDownloader$Factory").asSubclass(SegmentDownloaderFactory.class), cacheDataSourceFactory);
                break;
            default:
                throw new IllegalArgumentException("Unsupported type: " + contentType);
        }
        this.segmentDownloaderFactories.put(contentType, factory);
        return factory;
    }

    private static SegmentDownloaderFactory createSegmentDownloaderFactory(Class<? extends SegmentDownloaderFactory> clazz, CacheDataSource.Factory cacheDataSourceFactory) {
        try {
            return clazz.getConstructor(CacheDataSource.Factory.class).newInstance(cacheDataSourceFactory);
        } catch (Exception e) {
            throw new IllegalStateException("Downloader factory missing", e);
        }
    }
}
