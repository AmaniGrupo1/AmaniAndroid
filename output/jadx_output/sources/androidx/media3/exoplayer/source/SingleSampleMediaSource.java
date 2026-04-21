package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Consumer;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public final class SingleSampleMediaSource extends BaseMediaSource {
    private final DataSource.Factory dataSourceFactory;
    private final DataSpec dataSpec;
    private final Supplier<ReleasableExecutor> downloadExecutorSupplier;
    private final long durationUs;
    private final Format format;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final MediaItem mediaItem;
    private final Timeline timeline;
    private TransferListener transferListener;
    private final boolean treatLoadErrorsAsEndOfStream;

    public static final class Factory {
        private final DataSource.Factory dataSourceFactory;
        private Supplier<ReleasableExecutor> downloadExecutorSupplier;
        private Object tag;
        private String trackId;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        private boolean treatLoadErrorsAsEndOfStream = true;

        public Factory(DataSource.Factory dataSourceFactory) {
            this.dataSourceFactory = (DataSource.Factory) Preconditions.checkNotNull(dataSourceFactory);
        }

        public Factory setTag(Object tag) {
            this.tag = tag;
            return this;
        }

        @Deprecated
        public Factory setTrackId(String trackId) {
            this.trackId = trackId;
            return this;
        }

        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            LoadErrorHandlingPolicy defaultLoadErrorHandlingPolicy;
            if (loadErrorHandlingPolicy != null) {
                defaultLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
            } else {
                defaultLoadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = defaultLoadErrorHandlingPolicy;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean treatLoadErrorsAsEndOfStream) {
            this.treatLoadErrorsAsEndOfStream = treatLoadErrorsAsEndOfStream;
            return this;
        }

        public <T extends Executor> Factory setDownloadExecutor(final Supplier<T> downloadExecutor, final Consumer<T> downloadExecutorReleaser) {
            this.downloadExecutorSupplier = new Supplier() { // from class: androidx.media3.exoplayer.source.SingleSampleMediaSource$Factory$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ReleasableExecutor.from((Executor) downloadExecutor.get(), downloadExecutorReleaser);
                }
            };
            return this;
        }

        public SingleSampleMediaSource createMediaSource(MediaItem.SubtitleConfiguration subtitleConfiguration, long durationUs) {
            return new SingleSampleMediaSource(this.trackId, subtitleConfiguration, this.dataSourceFactory, durationUs, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag, this.downloadExecutorSupplier);
        }
    }

    private SingleSampleMediaSource(String trackId, MediaItem.SubtitleConfiguration subtitleConfiguration, DataSource.Factory dataSourceFactory, long durationUs, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean treatLoadErrorsAsEndOfStream, Object tag, Supplier<ReleasableExecutor> downloadExecutorSupplier) {
        this.dataSourceFactory = dataSourceFactory;
        this.durationUs = durationUs;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.treatLoadErrorsAsEndOfStream = treatLoadErrorsAsEndOfStream;
        this.mediaItem = new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId(subtitleConfiguration.uri.toString()).setSubtitleConfigurations(ImmutableList.of(subtitleConfiguration)).setTag(tag).build();
        this.format = new Format.Builder().setSampleMimeType((String) MoreObjects.firstNonNull(subtitleConfiguration.mimeType, MimeTypes.TEXT_UNKNOWN)).setLanguage(subtitleConfiguration.language).setSelectionFlags(subtitleConfiguration.selectionFlags).setRoleFlags(subtitleConfiguration.roleFlags).setLabel(subtitleConfiguration.label).setId(subtitleConfiguration.id != null ? subtitleConfiguration.id : trackId).build();
        this.dataSpec = new DataSpec.Builder().setUri(subtitleConfiguration.uri).setFlags(1).build();
        this.timeline = new SinglePeriodTimeline(durationUs, true, false, false, (Object) null, this.mediaItem);
        this.downloadExecutorSupplier = downloadExecutorSupplier;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener mediaTransferListener) {
        this.transferListener = mediaTransferListener;
        refreshSourceInfo(this.timeline);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId id, Allocator allocator, long startPositionUs) {
        return new SingleSampleMediaPeriod(this.dataSpec, this.dataSourceFactory, this.transferListener, this.format, this.durationUs, this.loadErrorHandlingPolicy, createEventDispatcher(id), this.treatLoadErrorsAsEndOfStream, this.downloadExecutorSupplier != null ? this.downloadExecutorSupplier.get() : null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).release();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
    }
}
