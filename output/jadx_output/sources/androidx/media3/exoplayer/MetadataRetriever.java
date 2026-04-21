package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.ExtractorsFactory;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public final class MetadataRetriever implements AutoCloseable {
    public static final int DEFAULT_MAXIMUM_PARALLEL_RETRIEVALS = 5;
    private final MetadataRetrieverInternal internalRetriever;

    public static final class Builder {
        private Clock clock;
        private final Context context;
        private final MediaItem mediaItem;
        private MediaSource.Factory mediaSourceFactory;

        public Builder(Context context, MediaItem mediaItem) {
            this.context = context != null ? context.getApplicationContext() : null;
            this.mediaItem = (MediaItem) Preconditions.checkNotNull(mediaItem);
            this.clock = Clock.DEFAULT;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory mediaSourceFactory) {
            this.mediaSourceFactory = (MediaSource.Factory) Preconditions.checkNotNull(mediaSourceFactory);
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public MetadataRetriever build() {
            if (this.mediaSourceFactory == null) {
                Preconditions.checkState(this.context != null, "Context must be provided if MediaSource.Factory is not set.");
                ExtractorsFactory extractorsFactory = new DefaultExtractorsFactory().setMp4ExtractorFlags(260);
                this.mediaSourceFactory = new DefaultMediaSourceFactory(this.context, extractorsFactory);
            }
            MetadataRetrieverInternal internalRetriever = new MetadataRetrieverInternal(this.mediaItem, (MediaSource.Factory) Preconditions.checkNotNull(this.mediaSourceFactory), this.clock);
            return new MetadataRetriever(internalRetriever);
        }
    }

    private MetadataRetriever(MetadataRetrieverInternal internalRetriever) {
        this.internalRetriever = internalRetriever;
    }

    public ListenableFuture<TrackGroupArray> retrieveTrackGroups() {
        return this.internalRetriever.retrieveTrackGroups();
    }

    public ListenableFuture<Timeline> retrieveTimeline() {
        return this.internalRetriever.retrieveTimeline();
    }

    public ListenableFuture<Long> retrieveDurationUs() {
        return this.internalRetriever.retrieveDurationUs();
    }

    @Deprecated
    public static ListenableFuture<TrackGroupArray> retrieveMetadata(Context context, MediaItem mediaItem) {
        return retrieveMetadata(context, mediaItem, Clock.DEFAULT);
    }

    @Deprecated
    public static ListenableFuture<TrackGroupArray> retrieveMetadata(MediaSource.Factory mediaSourceFactory, MediaItem mediaItem) {
        return retrieveMetadata(mediaSourceFactory, mediaItem, Clock.DEFAULT);
    }

    static ListenableFuture<TrackGroupArray> retrieveMetadata(Context context, MediaItem mediaItem, Clock clock) {
        MetadataRetriever retriever = new Builder(context, mediaItem).setClock(clock).build();
        try {
            ListenableFuture<TrackGroupArray> listenableFutureRetrieveTrackGroups = retriever.retrieveTrackGroups();
            if (retriever != null) {
                retriever.close();
            }
            return listenableFutureRetrieveTrackGroups;
        } catch (Throwable th) {
            if (retriever != null) {
                try {
                    retriever.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static ListenableFuture<TrackGroupArray> retrieveMetadata(MediaSource.Factory mediaSourceFactory, MediaItem mediaItem, Clock clock) {
        MetadataRetriever retriever = new Builder(null, mediaItem).setMediaSourceFactory(mediaSourceFactory).setClock(clock).build();
        try {
            ListenableFuture<TrackGroupArray> listenableFutureRetrieveTrackGroups = retriever.retrieveTrackGroups();
            if (retriever != null) {
                retriever.close();
            }
            return listenableFutureRetrieveTrackGroups;
        } catch (Throwable th) {
            if (retriever != null) {
                try {
                    retriever.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static void setMaximumParallelRetrievals(int maximumParallelRetrievals) {
        Preconditions.checkArgument(maximumParallelRetrievals >= 1);
        MetadataRetrieverInternal.SharedWorkerThread.MAX_PARALLEL_RETRIEVALS.set(maximumParallelRetrievals);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.internalRetriever.close();
    }
}
