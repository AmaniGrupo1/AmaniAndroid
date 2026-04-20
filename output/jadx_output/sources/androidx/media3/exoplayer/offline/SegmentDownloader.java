package androidx.media3.exoplayer.offline;

import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.datasource.cache.ContentMetadata;
import androidx.media3.exoplayer.offline.Downloader;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public abstract class SegmentDownloader<M extends FilterableManifest<M>> implements Downloader {
    private static final int BUFFER_SIZE_BYTES = 131072;
    public static final long DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS = 20000;
    private final ArrayList<RunnableFutureTask<?, ?>> activeRunnables;
    private final Cache cache;
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final CacheKeyFactory cacheKeyFactory;
    public final long durationUs;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final DataSpec manifestDataSpec;
    private final ParsingLoadable.Parser<M> manifestParser;
    private final long maxMergedSegmentStartTimeDiffUs;
    private final PriorityTaskManager priorityTaskManager;
    public final long startPositionUs;
    private final ArrayList<StreamKey> streamKeys;

    protected abstract List<Segment> getSegments(DataSource dataSource, M m, boolean z) throws InterruptedException, IOException;

    protected static abstract class BaseFactory<M extends FilterableManifest<M>> implements SegmentDownloaderFactory {
        protected final CacheDataSource.Factory cacheDataSourceFactory;
        protected ParsingLoadable.Parser<M> manifestParser;
        protected long startPositionUs;
        protected Executor executor = new Executor() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader$BaseFactory$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        };
        protected long maxMergedSegmentStartTimeDiffMs = 20000;
        protected long durationUs = C.TIME_UNSET;

        public BaseFactory(CacheDataSource.Factory cacheDataSourceFactory, ParsingLoadable.Parser<M> manifestParser) {
            this.cacheDataSourceFactory = cacheDataSourceFactory;
            this.manifestParser = manifestParser;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setExecutor(Executor executor) {
            this.executor = executor;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setMaxMergedSegmentStartTimeDiffMs(long maxMergedSegmentStartTimeDiffMs) {
            this.maxMergedSegmentStartTimeDiffMs = maxMergedSegmentStartTimeDiffMs;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setStartPositionUs(long startPositionUs) {
            this.startPositionUs = startPositionUs;
            return this;
        }

        @Override // androidx.media3.exoplayer.offline.SegmentDownloaderFactory
        public BaseFactory<M> setDurationUs(long durationUs) {
            this.durationUs = durationUs;
            return this;
        }
    }

    protected static class Segment implements Comparable<Segment> {
        public final DataSpec dataSpec;
        public final long startTimeUs;

        public Segment(long startTimeUs, DataSpec dataSpec) {
            this.startTimeUs = startTimeUs;
            this.dataSpec = dataSpec;
        }

        @Override // java.lang.Comparable
        public int compareTo(Segment other) {
            return Long.compare(this.startTimeUs, other.startTimeUs);
        }
    }

    protected SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> manifestParser, CacheDataSource.Factory cacheDataSourceFactory, Executor executor, long maxMergedSegmentStartTimeDiffMs) {
        this(mediaItem, manifestParser, cacheDataSourceFactory, executor, maxMergedSegmentStartTimeDiffMs, 0L, C.TIME_UNSET);
    }

    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> manifestParser, CacheDataSource.Factory cacheDataSourceFactory, Executor executor, long maxMergedSegmentStartTimeDiffMs, long startPositionUs, long durationUs) {
        Preconditions.checkNotNull(mediaItem.localConfiguration);
        this.manifestDataSpec = getCompressibleDataSpec(mediaItem.localConfiguration.uri);
        this.manifestParser = manifestParser;
        this.streamKeys = new ArrayList<>(mediaItem.localConfiguration.streamKeys);
        this.cacheDataSourceFactory = cacheDataSourceFactory;
        this.executor = executor;
        this.startPositionUs = startPositionUs;
        this.durationUs = durationUs;
        this.cache = (Cache) Preconditions.checkNotNull(cacheDataSourceFactory.getCache());
        this.cacheKeyFactory = cacheDataSourceFactory.getCacheKeyFactory();
        this.priorityTaskManager = cacheDataSourceFactory.getUpstreamPriorityTaskManager();
        this.activeRunnables = new ArrayList<>();
        this.maxMergedSegmentStartTimeDiffUs = Util.msToUs(maxMergedSegmentStartTimeDiffMs);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01fb A[EDGE_INSN: B:113:0x01fb->B:94:0x01fb BREAK  A[LOOP:1: B:91:0x01e4->B:93:0x01ee], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ee A[LOOP:1: B:91:0x01e4->B:93:0x01ee, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0203 A[LOOP:2: B:95:0x0201->B:96:0x0203, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0218  */
    @Override // androidx.media3.exoplayer.offline.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void download(Downloader.ProgressListener progressListener) throws Throwable {
        int i;
        int size;
        ArrayList<RunnableFutureTask<?, ?>> arrayList;
        int size2;
        ArrayList<RunnableFutureTask<?, ?>> arrayList2;
        CacheDataSource cacheDataSourceCreateDataSourceForDownloading;
        byte[] bArr;
        byte[] bArr2;
        SegmentDownloadRunnable segmentDownloadRunnable;
        Segment segment;
        long j;
        long j2;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        if (this.priorityTaskManager != null) {
            this.priorityTaskManager.add(-4000);
        }
        boolean z = true;
        try {
            CacheDataSource cacheDataSourceCreateDataSourceForDownloading2 = this.cacheDataSourceFactory.createDataSourceForDownloading();
            FilterableManifest manifest = getManifest(cacheDataSourceCreateDataSourceForDownloading2, this.manifestDataSpec, false);
            List<Segment> segments = getSegments(cacheDataSourceCreateDataSourceForDownloading2, !this.streamKeys.isEmpty() ? (FilterableManifest) manifest.copy(this.streamKeys) : manifest, false);
            Collections.sort(segments);
            mergeSegments(segments, this.cacheKeyFactory, this.maxMergedSegmentStartTimeDiffUs);
            int size3 = segments.size();
            int i2 = 0;
            int size4 = segments.size() - 1;
            long j3 = 0;
            long j4 = 0;
            while (size4 >= 0) {
                try {
                    DataSpec dataSpec = segments.get(size4).dataSpec;
                    String strBuildCacheKey = this.cacheKeyFactory.buildCacheKey(dataSpec);
                    boolean z2 = z;
                    CacheDataSource cacheDataSource = cacheDataSourceCreateDataSourceForDownloading2;
                    long j5 = dataSpec.length;
                    if (j5 == -1) {
                        long contentLength = ContentMetadata.getContentLength(this.cache.getContentMetadata(strBuildCacheKey));
                        if (contentLength != -1) {
                            j2 = contentLength - dataSpec.position;
                            long cachedBytes = this.cache.getCachedBytes(strBuildCacheKey, dataSpec.position, j2);
                            j3 += cachedBytes;
                            if (j2 == -1) {
                                if (j2 == cachedBytes) {
                                    i2++;
                                    segments.remove(size4);
                                }
                                if (j4 != -1) {
                                    j4 += j2;
                                }
                            } else {
                                j4 = -1;
                            }
                            size4--;
                            z = z2;
                            cacheDataSourceCreateDataSourceForDownloading2 = cacheDataSource;
                        } else {
                            j = j5;
                        }
                    } else {
                        j = j5;
                    }
                    j2 = j;
                    long cachedBytes2 = this.cache.getCachedBytes(strBuildCacheKey, dataSpec.position, j2);
                    j3 += cachedBytes2;
                    if (j2 == -1) {
                    }
                    size4--;
                    z = z2;
                    cacheDataSourceCreateDataSourceForDownloading2 = cacheDataSource;
                } catch (Throwable th) {
                    th = th;
                    i = 0;
                    while (true) {
                        size = this.activeRunnables.size();
                        arrayList = this.activeRunnables;
                        if (i < size) {
                            break;
                        }
                        arrayList.get(i).cancel(true);
                        i++;
                    }
                    for (size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                        this.activeRunnables.get(size2).blockUntilFinished();
                        removeActiveRunnable(size2);
                    }
                    if (this.priorityTaskManager != null) {
                        this.priorityTaskManager.remove(-4000);
                    }
                    throw th;
                }
            }
            boolean z3 = z;
            ProgressNotifier progressNotifier = progressListener != null ? new ProgressNotifier(progressListener, j4, size3, j3, i2) : null;
            arrayDeque.addAll(segments);
            while (!this.isCanceled && !arrayDeque.isEmpty()) {
                if (this.priorityTaskManager != null) {
                    this.priorityTaskManager.proceed(-4000);
                }
                if (arrayDeque2.isEmpty()) {
                    cacheDataSourceCreateDataSourceForDownloading = this.cacheDataSourceFactory.createDataSourceForDownloading();
                    bArr = new byte[131072];
                } else {
                    SegmentDownloadRunnable segmentDownloadRunnable2 = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                    cacheDataSourceCreateDataSourceForDownloading = segmentDownloadRunnable2.dataSource;
                    bArr = segmentDownloadRunnable2.temporaryBuffer;
                }
                Segment segment2 = (Segment) arrayDeque.removeFirst();
                SegmentDownloadRunnable segmentDownloadRunnable3 = new SegmentDownloadRunnable(segment2, cacheDataSourceCreateDataSourceForDownloading, progressNotifier, bArr);
                addActiveRunnable(segmentDownloadRunnable3);
                this.executor.execute(segmentDownloadRunnable3);
                int size5 = this.activeRunnables.size() - 1;
                while (size5 >= 0) {
                    SegmentDownloadRunnable segmentDownloadRunnable4 = (SegmentDownloadRunnable) this.activeRunnables.get(size5);
                    if (arrayDeque.isEmpty() || segmentDownloadRunnable4.isDone()) {
                        try {
                            segmentDownloadRunnable4.get();
                            removeActiveRunnable(size5);
                            bArr2 = bArr;
                            segmentDownloadRunnable = segmentDownloadRunnable4;
                            try {
                                arrayDeque2.addLast(segmentDownloadRunnable);
                                segment = segment2;
                            } catch (ExecutionException e) {
                                e = e;
                                Throwable th2 = (Throwable) Preconditions.checkNotNull(e.getCause());
                                segment = segment2;
                                if (!(th2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                                    if (th2 instanceof IOException) {
                                        throw ((IOException) th2);
                                    }
                                    Util.sneakyThrow(th2);
                                    i = 0;
                                    while (true) {
                                        size = this.activeRunnables.size();
                                        arrayList = this.activeRunnables;
                                        if (i < size) {
                                        }
                                        arrayList.get(i).cancel(true);
                                        i++;
                                    }
                                    while (size2 >= 0) {
                                    }
                                    if (this.priorityTaskManager != null) {
                                    }
                                    throw th;
                                }
                                arrayDeque.addFirst(segmentDownloadRunnable.segment);
                                removeActiveRunnable(size5);
                                arrayDeque2.addLast(segmentDownloadRunnable);
                            }
                        } catch (ExecutionException e2) {
                            e = e2;
                            bArr2 = bArr;
                            segmentDownloadRunnable = segmentDownloadRunnable4;
                        }
                    } else {
                        bArr2 = bArr;
                        segment = segment2;
                    }
                    size5--;
                    bArr = bArr2;
                    segment2 = segment;
                }
                segmentDownloadRunnable3.blockUntilStarted();
            }
            int i3 = 0;
            while (true) {
                int size6 = this.activeRunnables.size();
                arrayList2 = this.activeRunnables;
                if (i3 >= size6) {
                    break;
                }
                arrayList2.get(i3).cancel(z3);
                i3++;
            }
            for (int size7 = arrayList2.size() - (z3 ? 1 : 0); size7 >= 0; size7--) {
                this.activeRunnables.get(size7).blockUntilFinished();
                removeActiveRunnable(size7);
            }
            if (this.priorityTaskManager != null) {
                this.priorityTaskManager.remove(-4000);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void cancel() {
        synchronized (this.activeRunnables) {
            this.isCanceled = true;
            for (int i = 0; i < this.activeRunnables.size(); i++) {
                this.activeRunnables.get(i).cancel(true);
            }
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public final void remove() {
        CacheDataSource dataSource = this.cacheDataSourceFactory.createDataSourceForRemovingDownload();
        try {
            try {
                List<Segment> segments = getSegments(dataSource, getManifest(dataSource, this.manifestDataSpec, true), true);
                int i = 0;
                while (true) {
                    int size = segments.size();
                    Cache cache = this.cache;
                    if (i >= size) {
                        cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
                        return;
                    } else {
                        cache.removeResource(this.cacheKeyFactory.buildCacheKey(segments.get(i).dataSpec));
                        i++;
                    }
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (Exception e2) {
            }
        } finally {
            this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
        }
    }

    protected final M getManifest(final DataSource dataSource, final DataSpec dataSpec, boolean removing) throws InterruptedException, IOException {
        return (M) execute(new Supplier() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return this.f$0.m7949xeae2e604(dataSource, dataSpec);
            }
        }, removing);
    }

    /* JADX INFO: renamed from: lambda$getManifest$0$androidx-media3-exoplayer-offline-SegmentDownloader, reason: not valid java name */
    /* synthetic */ RunnableFutureTask m7949xeae2e604(final DataSource dataSource, final DataSpec dataSpec) {
        return new RunnableFutureTask<M, IOException>() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.media3.common.util.RunnableFutureTask
            public M doWork() throws IOException {
                return (M) ParsingLoadable.load(dataSource, SegmentDownloader.this.manifestParser, dataSpec, 4);
            }
        };
    }

    protected final <T> T execute(Supplier<RunnableFutureTask<T, ?>> runnable, boolean removing) throws Throwable {
        if (removing) {
            RunnableFutureTask<T, ?> task = runnable.get();
            task.run();
            try {
                return task.get();
            } catch (ExecutionException e) {
                Throwable cause = (Throwable) Preconditions.checkNotNull(e.getCause());
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                Util.sneakyThrow(e);
            }
        }
        while (!this.isCanceled) {
            if (this.priorityTaskManager != null) {
                this.priorityTaskManager.proceed(-4000);
            }
            RunnableFutureTask<T, ?> task2 = runnable.get();
            addActiveRunnable(task2);
            this.executor.execute(task2);
            try {
                return task2.get();
            } catch (ExecutionException e2) {
                Throwable cause2 = (Throwable) Preconditions.checkNotNull(e2.getCause());
                if (!(cause2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                    if (cause2 instanceof IOException) {
                        throw ((IOException) cause2);
                    }
                    Util.sneakyThrow(e2);
                }
            } finally {
                task2.blockUntilFinished();
                removeActiveRunnable((RunnableFutureTask<?, ?>) task2);
            }
        }
        throw new InterruptedException();
    }

    protected static DataSpec getCompressibleDataSpec(Uri uri) {
        return new DataSpec.Builder().setUri(uri).setFlags(1).build();
    }

    private <T> void addActiveRunnable(RunnableFutureTask<T, ?> runnable) throws InterruptedException {
        synchronized (this.activeRunnables) {
            if (this.isCanceled) {
                throw new InterruptedException();
            }
            this.activeRunnables.add(runnable);
        }
    }

    private void removeActiveRunnable(RunnableFutureTask<?, ?> runnable) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(runnable);
        }
    }

    private void removeActiveRunnable(int index) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(index);
        }
    }

    private static void mergeSegments(List<Segment> segments, CacheKeyFactory keyFactory, long maxMergedSegmentStartTimeDiffUs) {
        HashMap<String, Integer> lastIndexByCacheKey = new HashMap<>();
        int nextOutIndex = 0;
        for (int i = 0; i < segments.size(); i++) {
            Segment segment = segments.get(i);
            String cacheKey = keyFactory.buildCacheKey(segment.dataSpec);
            Integer lastIndex = lastIndexByCacheKey.get(cacheKey);
            Segment lastSegment = lastIndex == null ? null : segments.get(lastIndex.intValue());
            if (lastSegment == null || segment.startTimeUs > lastSegment.startTimeUs + maxMergedSegmentStartTimeDiffUs || !canMergeSegments(lastSegment.dataSpec, segment.dataSpec)) {
                lastIndexByCacheKey.put(cacheKey, Integer.valueOf(nextOutIndex));
                segments.set(nextOutIndex, segment);
                nextOutIndex++;
            } else {
                long mergedLength = segment.dataSpec.length != -1 ? segment.dataSpec.length + lastSegment.dataSpec.length : -1L;
                DataSpec mergedDataSpec = lastSegment.dataSpec.subrange(0L, mergedLength);
                segments.set(((Integer) Preconditions.checkNotNull(lastIndex)).intValue(), new Segment(lastSegment.startTimeUs, mergedDataSpec));
            }
        }
        int i2 = segments.size();
        Util.removeRange(segments, nextOutIndex, i2);
    }

    private static boolean canMergeSegments(DataSpec dataSpec1, DataSpec dataSpec2) {
        return dataSpec1.uri.equals(dataSpec2.uri) && dataSpec1.length != -1 && dataSpec1.position + dataSpec1.length == dataSpec2.position && Objects.equals(dataSpec1.key, dataSpec2.key) && dataSpec1.flags == dataSpec2.flags && dataSpec1.httpMethod == dataSpec2.httpMethod && dataSpec1.httpRequestHeaders.equals(dataSpec2.httpRequestHeaders);
    }

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final CacheWriter cacheWriter;
        public final CacheDataSource dataSource;
        private final ProgressNotifier progressNotifier;
        public final Segment segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(Segment segment, CacheDataSource dataSource, ProgressNotifier progressNotifier, byte[] temporaryBuffer) {
            this.segment = segment;
            this.dataSource = dataSource;
            this.progressNotifier = progressNotifier;
            this.temporaryBuffer = temporaryBuffer;
            this.cacheWriter = new CacheWriter(dataSource, segment.dataSpec, temporaryBuffer, progressNotifier);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.media3.common.util.RunnableFutureTask
        public Void doWork() throws IOException {
            this.cacheWriter.cache();
            if (this.progressNotifier != null) {
                this.progressNotifier.onSegmentDownloaded();
                return null;
            }
            return null;
        }

        @Override // androidx.media3.common.util.RunnableFutureTask
        protected void cancelWork() {
            this.cacheWriter.cancel();
        }
    }

    private static final class ProgressNotifier implements CacheWriter.ProgressListener {
        private long bytesDownloaded;
        private final long contentLength;
        private final Downloader.ProgressListener progressListener;
        private int segmentsDownloaded;
        private final int totalSegments;

        public ProgressNotifier(Downloader.ProgressListener progressListener, long contentLength, int totalSegments, long bytesDownloaded, int segmentsDownloaded) {
            this.progressListener = progressListener;
            this.contentLength = contentLength;
            this.totalSegments = totalSegments;
            this.bytesDownloaded = bytesDownloaded;
            this.segmentsDownloaded = segmentsDownloaded;
        }

        @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
        public void onProgress(long requestLength, long bytesCached, long newBytesCached) {
            this.bytesDownloaded += newBytesCached;
            this.progressListener.onProgress(this.contentLength, this.bytesDownloaded, getPercentDownloaded());
        }

        public void onSegmentDownloaded() {
            this.segmentsDownloaded++;
            this.progressListener.onProgress(this.contentLength, this.bytesDownloaded, getPercentDownloaded());
        }

        private float getPercentDownloaded() {
            if (this.contentLength != -1 && this.contentLength != 0) {
                return Util.percentFloat(this.bytesDownloaded, this.contentLength);
            }
            if (this.totalSegments != 0) {
                return Util.percentFloat(this.segmentsDownloaded, this.totalSegments);
            }
            return -1.0f;
        }
    }
}
