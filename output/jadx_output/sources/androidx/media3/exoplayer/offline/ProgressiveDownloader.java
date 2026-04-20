package androidx.media3.exoplayer.offline;

import androidx.media3.common.MediaItem;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.offline.Downloader;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public final class ProgressiveDownloader implements Downloader {
    private final CacheWriter cacheWriter;
    private final CacheDataSource dataSource;
    final DataSpec dataSpec;
    private volatile RunnableFutureTask<Void, IOException> downloadRunnable;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final PriorityTaskManager priorityTaskManager;
    private Downloader.ProgressListener progressListener;

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory cacheDataSourceFactory) {
        this(mediaItem, cacheDataSourceFactory, new Executor() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        });
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory cacheDataSourceFactory, long position, long length) {
        this(mediaItem, cacheDataSourceFactory, new Executor() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        }, position, length);
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory cacheDataSourceFactory, Executor executor) {
        this(mediaItem, cacheDataSourceFactory, executor, 0L, -1L);
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory cacheDataSourceFactory, Executor executor, long position, long length) {
        this.executor = (Executor) Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(mediaItem.localConfiguration);
        this.dataSpec = new DataSpec.Builder().setUri(mediaItem.localConfiguration.uri).setKey(mediaItem.localConfiguration.customCacheKey).setFlags(4).setPosition(position).setLength(length).build();
        this.dataSource = cacheDataSourceFactory.createDataSourceForDownloading();
        CacheWriter.ProgressListener progressListener = new CacheWriter.ProgressListener() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader$$ExternalSyntheticLambda0
            @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
            public final void onProgress(long j, long j2, long j3) {
                this.f$0.onProgress(j, j2, j3);
            }
        };
        this.cacheWriter = new CacheWriter(this.dataSource, this.dataSpec, null, progressListener);
        this.priorityTaskManager = cacheDataSourceFactory.getUpstreamPriorityTaskManager();
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void download(Downloader.ProgressListener progressListener) throws InterruptedException, IOException {
        this.progressListener = progressListener;
        if (this.priorityTaskManager != null) {
            this.priorityTaskManager.add(-4000);
        }
        boolean finished = false;
        while (!finished) {
            try {
                if (this.isCanceled) {
                    break;
                }
                this.downloadRunnable = new RunnableFutureTask<Void, IOException>() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // androidx.media3.common.util.RunnableFutureTask
                    public Void doWork() throws IOException {
                        ProgressiveDownloader.this.cacheWriter.cache();
                        return null;
                    }

                    @Override // androidx.media3.common.util.RunnableFutureTask
                    protected void cancelWork() {
                        ProgressiveDownloader.this.cacheWriter.cancel();
                    }
                };
                if (this.priorityTaskManager != null) {
                    this.priorityTaskManager.proceed(-4000);
                }
                this.executor.execute(this.downloadRunnable);
                try {
                    this.downloadRunnable.get();
                    finished = true;
                } catch (ExecutionException e) {
                    Throwable cause = (Throwable) Preconditions.checkNotNull(e.getCause());
                    if (!(cause instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (cause instanceof IOException) {
                            throw ((IOException) cause);
                        }
                        Util.sneakyThrow(cause);
                    }
                }
            } finally {
                ((RunnableFutureTask) Preconditions.checkNotNull(this.downloadRunnable)).blockUntilFinished();
                if (this.priorityTaskManager != null) {
                    this.priorityTaskManager.remove(-4000);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void cancel() {
        this.isCanceled = true;
        RunnableFutureTask<Void, IOException> downloadRunnable = this.downloadRunnable;
        if (downloadRunnable != null) {
            downloadRunnable.cancel(true);
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void remove() {
        this.dataSource.getCache().removeResource(this.dataSource.getCacheKeyFactory().buildCacheKey(this.dataSpec));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProgress(long contentLength, long bytesCached, long newBytesCached) {
        float fPercentFloat;
        if (this.progressListener == null) {
            return;
        }
        if (contentLength == -1 || contentLength == 0) {
            fPercentFloat = -1.0f;
        } else {
            fPercentFloat = Util.percentFloat(bytesCached, contentLength);
        }
        float percentDownloaded = fPercentFloat;
        ((Downloader.ProgressListener) Preconditions.checkNotNull(this.progressListener)).onProgress(contentLength, bytesCached, percentDownloaded);
    }
}
