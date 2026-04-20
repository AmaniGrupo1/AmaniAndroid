package androidx.media3.exoplayer.source.preload;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.offline.DefaultDownloaderFactory;
import androidx.media3.exoplayer.offline.DownloadHelper;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.offline.Downloader;
import androidx.media3.exoplayer.offline.DownloaderFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes21.dex */
public final class PreCacheHelper {
    static final int DEFAULT_MIN_RETRY_COUNT = 5;
    private final Handler applicationHandler = Util.createHandlerForCurrentOrMainLooper();
    private DownloadCallback currentDownloadCallback;
    private final DownloadHelper.Factory downloadHelperFactory;
    private final DownloaderFactory downloaderFactory;
    private final Listener listener;
    private final MediaItem mediaItem;
    private final Handler preCacheHandler;
    private final MediaSource.Factory testMediaSourceFactory;

    public interface Listener {
        default void onPrepared(MediaItem originalMediaItem, MediaItem updatedMediaItem) {
        }

        default void onPreCacheProgress(MediaItem mediaItem, long contentLength, long bytesDownloaded, float percentageDownloaded) {
        }

        default void onPrepareError(MediaItem mediaItem, IOException error) {
        }

        default void onDownloadError(MediaItem mediaItem, IOException error) {
        }
    }

    public static final class Factory {
        private final Cache cache;
        private Listener listener;
        private final Looper preCacheLooper;
        private final RenderersFactory renderersFactory;
        private final DataSource.Factory upstreamDataSourceFactory;
        private TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.DEFAULT;
        private Executor downloadExecutor = new Executor() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$Factory$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        };

        public Factory(Context context, Cache cache, Looper preCacheLooper) {
            this.cache = cache;
            this.preCacheLooper = preCacheLooper;
            this.upstreamDataSourceFactory = new DefaultDataSource.Factory(context);
            this.renderersFactory = new DefaultRenderersFactory(context);
        }

        public Factory(Context context, Cache cache, RenderersFactory renderersFactory, Looper preCacheLooper) {
            this.cache = cache;
            this.preCacheLooper = preCacheLooper;
            this.upstreamDataSourceFactory = new DefaultDataSource.Factory(context);
            this.renderersFactory = renderersFactory;
        }

        public Factory(Context context, Cache cache, DataSource.Factory upstreamDataSourceFactory, Looper preCacheLooper) {
            this.cache = cache;
            this.preCacheLooper = preCacheLooper;
            this.upstreamDataSourceFactory = upstreamDataSourceFactory;
            this.renderersFactory = new DefaultRenderersFactory(context);
        }

        public Factory(Cache cache, DataSource.Factory upstreamDataSourceFactory, RenderersFactory renderersFactory, Looper preCacheLooper) {
            this.cache = cache;
            this.preCacheLooper = preCacheLooper;
            this.upstreamDataSourceFactory = upstreamDataSourceFactory;
            this.renderersFactory = renderersFactory;
        }

        public Factory setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
            this.trackSelectionParameters = trackSelectionParameters;
            return this;
        }

        public Factory setDownloadExecutor(Executor downloadExecutor) {
            this.downloadExecutor = downloadExecutor;
            return this;
        }

        public Factory setListener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public PreCacheHelper create(MediaItem mediaItem) {
            CacheDataSource.Factory cacheDataSourceFactory = new CacheDataSource.Factory().setUpstreamDataSourceFactory(this.upstreamDataSourceFactory).setCache(this.cache);
            DownloadHelper.Factory downloadHelperFactory = new DownloadHelper.Factory().setDataSourceFactory(cacheDataSourceFactory).setRenderersFactory(this.renderersFactory).setTrackSelectionParameters(this.trackSelectionParameters);
            DownloaderFactory downloaderFactory = new DefaultDownloaderFactory(cacheDataSourceFactory, this.downloadExecutor);
            return new PreCacheHelper(mediaItem, null, downloadHelperFactory, downloaderFactory, this.preCacheLooper, this.listener);
        }
    }

    PreCacheHelper(MediaItem mediaItem, MediaSource.Factory testMediaSourceFactory, DownloadHelper.Factory downloadHelperFactory, DownloaderFactory downloaderFactory, Looper preCacheLooper, Listener listener) {
        this.mediaItem = mediaItem;
        this.testMediaSourceFactory = testMediaSourceFactory;
        this.downloadHelperFactory = downloadHelperFactory;
        this.downloaderFactory = downloaderFactory;
        this.listener = listener;
        this.preCacheHandler = Util.createHandler(preCacheLooper, null);
    }

    public void preCache(final long startPositionMs, final long durationMs) {
        this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.m7980xada346dd(startPositionMs, durationMs);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$preCache$0$androidx-media3-exoplayer-source-preload-PreCacheHelper, reason: not valid java name */
    /* synthetic */ void m7980xada346dd(long startPositionMs, long durationMs) throws Throwable {
        if (this.currentDownloadCallback != null && this.currentDownloadCallback.isReusable(startPositionMs, durationMs)) {
            return;
        }
        if (this.currentDownloadCallback != null) {
            this.currentDownloadCallback.cancel(false);
        }
        this.currentDownloadCallback = new DownloadCallback(startPositionMs, durationMs);
    }

    public void stop() {
        this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.m7982x5a429201();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$stop$1$androidx-media3-exoplayer-source-preload-PreCacheHelper, reason: not valid java name */
    /* synthetic */ void m7982x5a429201() throws Throwable {
        if (this.currentDownloadCallback != null) {
            this.currentDownloadCallback.cancel(false);
        }
    }

    public void release(final boolean removeCachedContent) {
        this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.m7981x4e6cbcad(removeCachedContent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$release$2$androidx-media3-exoplayer-source-preload-PreCacheHelper, reason: not valid java name */
    /* synthetic */ void m7981x4e6cbcad(boolean removeCachedContent) throws Throwable {
        if (this.currentDownloadCallback != null) {
            this.currentDownloadCallback.cancel(removeCachedContent);
            this.currentDownloadCallback = null;
        }
        this.preCacheHandler.removeCallbacksAndMessages(null);
    }

    private static final class ReleasableSingleThreadExecutor implements ReleasableExecutor {
        private final ExecutorService executor;
        private final Runnable releaseRunnable;

        private ReleasableSingleThreadExecutor(Runnable releaseRunnable) {
            this.executor = Util.newSingleThreadExecutor("PreCacheHelper:Loader");
            this.releaseRunnable = releaseRunnable;
        }

        @Override // androidx.media3.exoplayer.util.ReleasableExecutor
        public void release() {
            execute(this.releaseRunnable);
            this.executor.shutdown();
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            this.executor.execute(command);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ReleasableExecutorSupplier implements Supplier<ReleasableExecutor> {
        private DownloadCallback downloadCallback;
        private int executorCount;
        private final Handler preCacheHandler;

        private ReleasableExecutorSupplier(Handler preCacheHandler) {
            this.preCacheHandler = preCacheHandler;
        }

        public void setDownloadCallback(DownloadCallback downloadCallback) {
            this.downloadCallback = downloadCallback;
        }

        @Override // com.google.common.base.Supplier
        public ReleasableExecutor get() {
            synchronized (this) {
                this.executorCount++;
            }
            return new ReleasableSingleThreadExecutor(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$ReleasableExecutorSupplier$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onExecutorReleased();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onExecutorReleased() {
            synchronized (this) {
                Preconditions.checkState(this.executorCount > 0);
                this.executorCount--;
                if (wereExecutorsReleased()) {
                    this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$ReleasableExecutorSupplier$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m7991x3edeb64e();
                        }
                    });
                }
            }
        }

        /* JADX INFO: renamed from: lambda$onExecutorReleased$0$androidx-media3-exoplayer-source-preload-PreCacheHelper$ReleasableExecutorSupplier, reason: not valid java name */
        /* synthetic */ void m7991x3edeb64e() {
            Preconditions.checkState(wereExecutorsReleased());
            if (this.downloadCallback != null) {
                this.downloadCallback.maybeSubmitPendingDownloadRequest();
            }
        }

        public boolean wereExecutorsReleased() {
            boolean z;
            synchronized (this) {
                z = this.executorCount == 0;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class DownloadCallback implements DownloadHelper.Callback {
        private final DownloadHelper downloadHelper;
        private Downloader downloader;
        private Task downloaderTask;
        private final long durationMs;
        private boolean isCanceled;
        private boolean isPreparationOngoing;
        private final Object lock;
        private DownloadRequest pendingDownloadRequest;
        private final ReleasableExecutorSupplier releasableExecutorSupplier;
        private final long startPositionMs;

        public DownloadCallback(long startPositionMs, long durationMs) {
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            this.lock = new Object();
            this.startPositionMs = startPositionMs;
            this.durationMs = durationMs;
            if (PreCacheHelper.this.testMediaSourceFactory != null) {
                this.releasableExecutorSupplier = null;
                this.downloadHelper = PreCacheHelper.this.downloadHelperFactory.create(PreCacheHelper.this.testMediaSourceFactory.createMediaSource(PreCacheHelper.this.mediaItem));
            } else {
                this.releasableExecutorSupplier = new ReleasableExecutorSupplier(PreCacheHelper.this.preCacheHandler);
                PreCacheHelper.this.downloadHelperFactory.setLoadExecutor(this.releasableExecutorSupplier);
                this.downloadHelper = PreCacheHelper.this.downloadHelperFactory.create(PreCacheHelper.this.mediaItem);
                this.releasableExecutorSupplier.setDownloadCallback(this);
            }
            this.isPreparationOngoing = true;
            this.downloadHelper.prepare(this);
        }

        @Override // androidx.media3.exoplayer.offline.DownloadHelper.Callback
        public void onPrepared(DownloadHelper helper, boolean tracksInfoAvailable) {
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            Preconditions.checkState(helper == this.downloadHelper);
            this.isPreparationOngoing = false;
            DownloadRequest downloadRequest = helper.getDownloadRequest(null, this.startPositionMs, this.durationMs);
            this.downloadHelper.release();
            final MediaItem updatedMediaItem = downloadRequest.toMediaItem(PreCacheHelper.this.mediaItem.buildUpon());
            notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.m7989x2cdaea77(updatedMediaItem, (PreCacheHelper.Listener) obj);
                }
            });
            this.pendingDownloadRequest = downloadRequest;
            if (this.releasableExecutorSupplier == null || this.releasableExecutorSupplier.wereExecutorsReleased()) {
                maybeSubmitPendingDownloadRequest();
            }
        }

        /* JADX INFO: renamed from: lambda$onPrepared$0$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7989x2cdaea77(MediaItem updatedMediaItem, Listener listener) {
            listener.onPrepared(PreCacheHelper.this.mediaItem, updatedMediaItem);
        }

        @Override // androidx.media3.exoplayer.offline.DownloadHelper.Callback
        public void onPrepareError(DownloadHelper helper, final IOException e) {
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            Preconditions.checkState(helper == this.downloadHelper);
            this.isPreparationOngoing = false;
            this.downloadHelper.release();
            notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.m7988x987b4a12(e, (PreCacheHelper.Listener) obj);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onPrepareError$1$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7988x987b4a12(IOException e, Listener listener) {
            listener.onPrepareError(PreCacheHelper.this.mediaItem, e);
        }

        public void maybeSubmitPendingDownloadRequest() {
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            if (this.pendingDownloadRequest != null) {
                this.downloader = PreCacheHelper.this.downloaderFactory.createDownloader(this.pendingDownloadRequest);
                this.downloaderTask = new Task(this.downloader, false, 5, this);
                this.downloaderTask.start();
                this.pendingDownloadRequest = null;
            }
        }

        public void onDownloadStopped(final Task task) {
            PreCacheHelper.this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7987xa2e2ff64(task);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onDownloadStopped$3$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7987xa2e2ff64(Task task) {
            if (task != this.downloaderTask) {
                return;
            }
            this.downloaderTask = null;
            final IOException finalException = task.finalException;
            if (!task.isRemove && finalException != null) {
                notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda0
                    @Override // androidx.media3.common.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.m7986x88720645(finalException, (PreCacheHelper.Listener) obj);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$onDownloadStopped$2$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7986x88720645(IOException finalException, Listener listener) {
            listener.onDownloadError(PreCacheHelper.this.mediaItem, finalException);
        }

        public void onDownloadProgress(final Task task) {
            PreCacheHelper.this.preCacheHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7985x5419627a(task);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onDownloadProgress$5$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7985x5419627a(final Task task) {
            if (task != this.downloaderTask) {
                return;
            }
            notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.m7984x39a8695b(task, (PreCacheHelper.Listener) obj);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onDownloadProgress$4$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7984x39a8695b(Task task, Listener listener) {
            listener.onPreCacheProgress(PreCacheHelper.this.mediaItem, task.contentLength, task.bytesDownloaded, task.percentDownloaded);
        }

        public void cancel(boolean removeCachedContent) throws Throwable {
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            synchronized (this.lock) {
                try {
                    this.isCanceled = true;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }
            this.pendingDownloadRequest = null;
            this.downloadHelper.release();
            if (this.downloaderTask != null && this.downloaderTask.isRemove) {
                return;
            }
            if (this.downloaderTask != null) {
                this.downloaderTask.cancel();
            }
            if (removeCachedContent && this.downloader != null) {
                this.downloaderTask = new Task(this.downloader, true, 5, this);
                this.downloaderTask.start();
            }
        }

        public boolean isReusable(long startPositionMs, long durationMs) {
            boolean z = true;
            Preconditions.checkState(Looper.myLooper() == PreCacheHelper.this.preCacheHandler.getLooper());
            synchronized (this.lock) {
                if (this.isCanceled || startPositionMs != this.startPositionMs || durationMs != this.durationMs || (!this.isPreparationOngoing && (this.downloaderTask == null || this.downloaderTask.isRemove))) {
                    z = false;
                }
            }
            return z;
        }

        private void notifyListeners(final Consumer<Listener> callable) {
            PreCacheHelper.this.applicationHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.preload.PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7983x97097351(callable);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$notifyListeners$6$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback, reason: not valid java name */
        /* synthetic */ void m7983x97097351(Consumer callable) {
            synchronized (this.lock) {
                if (this.isCanceled) {
                    return;
                }
                if (PreCacheHelper.this.listener != null) {
                    callable.accept(PreCacheHelper.this.listener);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class Task extends Thread implements Downloader.ProgressListener {
        private volatile long bytesDownloaded;
        private volatile long contentLength;
        private DownloadCallback downloadCallback;
        private final Downloader downloader;
        private volatile IOException finalException;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private volatile float percentDownloaded;

        private Task(Downloader downloader, boolean isRemove, int minRetryCount, DownloadCallback downloadCallback) {
            this.downloader = downloader;
            this.isRemove = isRemove;
            this.minRetryCount = minRetryCount;
            this.downloadCallback = downloadCallback;
            this.contentLength = -1L;
        }

        public void cancel() {
            this.downloadCallback = null;
            if (!this.isCanceled) {
                this.isCanceled = true;
                this.downloader.cancel();
                interrupt();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                try {
                    if (this.isRemove) {
                        this.downloader.remove();
                    } else {
                        int errorCount = 0;
                        long errorPosition = -1;
                        while (!this.isCanceled) {
                            try {
                                this.downloader.download(this);
                                break;
                            } catch (IOException e) {
                                if (!this.isCanceled) {
                                    if (this.bytesDownloaded != errorPosition) {
                                        errorPosition = this.bytesDownloaded;
                                        errorCount = 0;
                                    }
                                    errorCount++;
                                    if (errorCount > this.minRetryCount) {
                                        throw e;
                                    }
                                    Thread.sleep(getRetryDelayMillis(errorCount));
                                }
                            }
                        }
                    }
                } catch (IOException e2) {
                    this.finalException = e2;
                }
            } catch (InterruptedException e3) {
                Thread.currentThread().interrupt();
            } catch (CancellationException e4) {
            }
            if (this.downloadCallback != null) {
                this.downloadCallback.onDownloadStopped(this);
            }
        }

        @Override // androidx.media3.exoplayer.offline.Downloader.ProgressListener
        public void onProgress(long contentLength, long bytesDownloaded, float percentDownloaded) {
            this.contentLength = contentLength;
            this.bytesDownloaded = bytesDownloaded;
            this.percentDownloaded = percentDownloaded;
            if (this.downloadCallback != null) {
                this.downloadCallback.onDownloadProgress(this);
            }
        }

        private static int getRetryDelayMillis(int errorCount) {
            return Math.min((errorCount - 1) * 1000, 5000);
        }
    }
}
