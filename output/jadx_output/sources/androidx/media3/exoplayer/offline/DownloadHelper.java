package androidx.media3.exoplayer.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.StreamKey;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.offline.DownloadRequest;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.SeekMap;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class DownloadHelper {
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS = DefaultTrackSelector.Parameters.DEFAULT.buildUpon().setForceHighestSupportedBitrate(true).setConstrainAudioChannelCountToDeviceCapabilities(false).build();

    @Deprecated
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = DEFAULT_TRACK_SELECTOR_PARAMETERS;
    private static final int MODE_NOT_PREPARE = 0;
    private static final int MODE_PREPARE_NON_PROGRESSIVE_SOURCE_AND_SELECT_TRACKS = 2;
    private static final int MODE_PREPARE_PROGRESSIVE_SOURCE = 1;
    private static final String TAG = "DownloadHelper";
    private boolean areTracksSelected;
    private Callback callback;
    private final Handler callbackHandler;
    private final boolean debugLoggingEnabled;
    private List<ExoTrackSelection>[][] immutableTrackSelectionsByPeriodAndRenderer;
    private boolean isPreparedWithMedia;
    private final MediaItem.LocalConfiguration localConfiguration;
    private MappingTrackSelector.MappedTrackInfo[] mappedTrackInfos;
    private MediaPreparer mediaPreparer;
    private final MediaSource mediaSource;
    private final int mode;
    private final RendererCapabilitiesList rendererCapabilities;
    private final SparseIntArray scratchSet;
    private TrackGroupArray[] trackGroupArrays;
    private List<ExoTrackSelection>[][] trackSelectionsByPeriodAndRenderer;
    private final DefaultTrackSelector trackSelector;
    private final Timeline.Window window;

    public interface Callback {
        void onPrepareError(DownloadHelper downloadHelper, IOException iOException);

        void onPrepared(DownloadHelper downloadHelper, boolean z);
    }

    public static class LiveContentUnsupportedException extends IOException {
    }

    public static final class Factory {
        private DataSource.Factory dataSourceFactory;
        private boolean debugLoggingEnabled;
        private DrmSessionManager drmSessionManager;
        private RenderersFactory renderersFactory;
        private TrackSelectionParameters trackSelectionParameters = DownloadHelper.DEFAULT_TRACK_SELECTOR_PARAMETERS;
        private Supplier<ReleasableExecutor> loadExecutorSupplier = null;

        public Factory setDataSourceFactory(DataSource.Factory dataSourceFactory) {
            this.dataSourceFactory = dataSourceFactory;
            return this;
        }

        public Factory setRenderersFactory(RenderersFactory renderersFactory) {
            this.renderersFactory = renderersFactory;
            return this;
        }

        public Factory setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
            this.trackSelectionParameters = trackSelectionParameters;
            return this;
        }

        public Factory setDrmSessionManager(DrmSessionManager drmSessionManager) {
            this.drmSessionManager = drmSessionManager;
            return this;
        }

        public Factory setLoadExecutor(Supplier<ReleasableExecutor> loadExecutor) {
            this.loadExecutorSupplier = loadExecutor;
            return this;
        }

        public Factory setDebugLoggingEnabled(boolean debugLoggingEnabled) {
            this.debugLoggingEnabled = debugLoggingEnabled;
            return this;
        }

        public DownloadHelper create(MediaItem mediaItem) {
            MediaSource mediaSourceCreateMediaSourceInternal;
            RendererCapabilitiesList unreleaseableRendererCapabilitiesList;
            boolean isProgressive = DownloadHelper.isProgressive((MediaItem.LocalConfiguration) Preconditions.checkNotNull(mediaItem.localConfiguration));
            Preconditions.checkArgument(isProgressive || this.dataSourceFactory != null);
            if (!isProgressive || this.dataSourceFactory != null) {
                mediaSourceCreateMediaSourceInternal = DownloadHelper.createMediaSourceInternal(mediaItem, (DataSource.Factory) Util.castNonNull(this.dataSourceFactory), this.drmSessionManager, this.loadExecutorSupplier);
            } else {
                mediaSourceCreateMediaSourceInternal = null;
            }
            TrackSelectionParameters trackSelectionParameters = this.trackSelectionParameters;
            if (this.renderersFactory != null) {
                unreleaseableRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory(this.renderersFactory).createRendererCapabilitiesList();
            } else {
                unreleaseableRendererCapabilitiesList = new UnreleaseableRendererCapabilitiesList(new RendererCapabilities[0]);
            }
            return new DownloadHelper(mediaItem, mediaSourceCreateMediaSourceInternal, trackSelectionParameters, unreleaseableRendererCapabilitiesList, this.debugLoggingEnabled);
        }

        public DownloadHelper create(MediaSource mediaSource) {
            RendererCapabilitiesList unreleaseableRendererCapabilitiesList;
            MediaItem mediaItem = mediaSource.getMediaItem();
            TrackSelectionParameters trackSelectionParameters = this.trackSelectionParameters;
            if (this.renderersFactory != null) {
                unreleaseableRendererCapabilitiesList = new DefaultRendererCapabilitiesList.Factory(this.renderersFactory).createRendererCapabilitiesList();
            } else {
                unreleaseableRendererCapabilitiesList = new UnreleaseableRendererCapabilitiesList(new RendererCapabilities[0]);
            }
            return new DownloadHelper(mediaItem, mediaSource, trackSelectionParameters, unreleaseableRendererCapabilitiesList, this.debugLoggingEnabled);
        }
    }

    @Deprecated
    public static DefaultTrackSelector.Parameters getDefaultTrackSelectorParameters(Context context) {
        return DEFAULT_TRACK_SELECTOR_PARAMETERS;
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem) {
        Preconditions.checkArgument(isProgressive((MediaItem.LocalConfiguration) Preconditions.checkNotNull(mediaItem.localConfiguration)));
        return new Factory().create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, DataSource.Factory dataSourceFactory) {
        return new Factory().setDataSourceFactory(dataSourceFactory).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, DataSource.Factory dataSourceFactory, boolean debugLoggingEnabled) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setDebugLoggingEnabled(debugLoggingEnabled).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setRenderersFactory(renderersFactory).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory, boolean debugLoggingEnabled) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setRenderersFactory(renderersFactory).setDebugLoggingEnabled(debugLoggingEnabled).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory, boolean debugLoggingEnabled) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDebugLoggingEnabled(debugLoggingEnabled).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory, DrmSessionManager drmSessionManager) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDrmSessionManager(drmSessionManager).create(mediaItem);
    }

    @Deprecated
    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory dataSourceFactory, DrmSessionManager drmSessionManager, boolean debugLoggingEnabled) {
        return new Factory().setDataSourceFactory(dataSourceFactory).setTrackSelectionParameters(trackSelectionParameters).setRenderersFactory(renderersFactory).setDrmSessionManager(drmSessionManager).setDebugLoggingEnabled(debugLoggingEnabled).create(mediaItem);
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory dataSourceFactory) {
        return createMediaSource(downloadRequest, dataSourceFactory, null);
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory dataSourceFactory, DrmSessionManager drmSessionManager) {
        return createMediaSourceInternal(downloadRequest.toMediaItem(), dataSourceFactory, drmSessionManager, null);
    }

    public DownloadHelper(MediaItem mediaItem, MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilitiesList rendererCapabilities) {
        this(mediaItem, mediaSource, trackSelectionParameters, rendererCapabilities, false);
    }

    public DownloadHelper(MediaItem mediaItem, MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilitiesList rendererCapabilities, boolean debugLoggingEnabled) {
        int i;
        this.localConfiguration = (MediaItem.LocalConfiguration) Preconditions.checkNotNull(mediaItem.localConfiguration);
        this.mediaSource = mediaSource;
        if (mediaSource == null) {
            i = 0;
        } else if (mediaSource instanceof ProgressiveMediaSource) {
            i = 1;
        } else {
            i = 2;
        }
        this.mode = i;
        this.trackSelector = new DefaultTrackSelector(trackSelectionParameters, new DownloadTrackSelection.Factory());
        this.rendererCapabilities = rendererCapabilities;
        this.debugLoggingEnabled = debugLoggingEnabled;
        this.scratchSet = new SparseIntArray();
        this.trackSelector.init(new TrackSelector.InvalidationListener() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$$ExternalSyntheticLambda4
            @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                DownloadHelper.lambda$new$0();
            }
        }, new FakeBandwidthMeter());
        this.callbackHandler = Util.createHandlerForCurrentOrMainLooper();
        this.window = new Timeline.Window();
    }

    static /* synthetic */ void lambda$new$0() {
    }

    public void prepare(final Callback callback) {
        Preconditions.checkState(this.callback == null);
        this.callback = callback;
        if (this.mode != 0) {
            this.mediaPreparer = new MediaPreparer((MediaSource) Preconditions.checkNotNull(this.mediaSource), this);
        } else {
            this.callbackHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7944xe2e8f097(callback);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$prepare$1$androidx-media3-exoplayer-offline-DownloadHelper, reason: not valid java name */
    /* synthetic */ void m7944xe2e8f097(Callback callback) {
        callback.onPrepared(this, false);
    }

    public void release() {
        if (this.mediaPreparer != null) {
            this.mediaPreparer.release();
        }
        this.trackSelector.release();
        this.rendererCapabilities.release();
    }

    public Object getManifest() {
        if (this.mode == 0) {
            return null;
        }
        assertPreparedWithMedia();
        if (this.mediaPreparer.timeline.getWindowCount() > 0) {
            return this.mediaPreparer.timeline.getWindow(0, this.window).manifest;
        }
        return null;
    }

    public int getPeriodCount() {
        if (this.mode == 0) {
            return 0;
        }
        assertPreparedWithMedia();
        return this.mediaPreparer.mediaPeriods.length;
    }

    public Tracks getTracks(int periodIndex) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return TrackSelectionUtil.buildTracks(this.mappedTrackInfos[periodIndex], this.immutableTrackSelectionsByPeriodAndRenderer[periodIndex]);
    }

    public TrackGroupArray getTrackGroups(int periodIndex) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.trackGroupArrays[periodIndex];
    }

    public MappingTrackSelector.MappedTrackInfo getMappedTrackInfo(int periodIndex) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.mappedTrackInfos[periodIndex];
    }

    public List<ExoTrackSelection> getTrackSelections(int periodIndex, int rendererIndex) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        return this.immutableTrackSelectionsByPeriodAndRenderer[periodIndex][rendererIndex];
    }

    public void clearTrackSelections(int periodIndex) {
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        for (int i = 0; i < this.rendererCapabilities.size(); i++) {
            this.trackSelectionsByPeriodAndRenderer[periodIndex][i].clear();
        }
    }

    public void replaceTrackSelections(int periodIndex, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            clearTrackSelections(periodIndex);
            addTrackSelectionInternal(periodIndex, trackSelectionParameters);
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTrackSelection(int periodIndex, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            addTrackSelectionInternal(periodIndex, trackSelectionParameters);
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addAudioLanguagesToSelection(String... languages) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            TrackSelectionParameters.Builder parametersBuilder = DEFAULT_TRACK_SELECTOR_PARAMETERS.buildUpon();
            parametersBuilder.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities capabilities : this.rendererCapabilities.getRendererCapabilities()) {
                int trackType = capabilities.getTrackType();
                parametersBuilder.setTrackTypeDisabled(trackType, trackType != 1);
            }
            int periodCount = getPeriodCount();
            for (String language : languages) {
                TrackSelectionParameters parameters = parametersBuilder.setPreferredAudioLanguage(language).build();
                for (int periodIndex = 0; periodIndex < periodCount; periodIndex++) {
                    addTrackSelectionInternal(periodIndex, parameters);
                }
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTextLanguagesToSelection(boolean selectUndeterminedTextLanguage, String... languages) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            TrackSelectionParameters.Builder parametersBuilder = DEFAULT_TRACK_SELECTOR_PARAMETERS.buildUpon();
            parametersBuilder.setSelectUndeterminedTextLanguage(selectUndeterminedTextLanguage);
            parametersBuilder.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities capabilities : this.rendererCapabilities.getRendererCapabilities()) {
                int trackType = capabilities.getTrackType();
                parametersBuilder.setTrackTypeDisabled(trackType, trackType != 3);
            }
            int periodCount = getPeriodCount();
            for (String language : languages) {
                TrackSelectionParameters parameters = parametersBuilder.setPreferredTextLanguage(language).build();
                for (int periodIndex = 0; periodIndex < periodCount; periodIndex++) {
                    addTrackSelectionInternal(periodIndex, parameters);
                }
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTrackSelectionForSingleRenderer(int periodIndex, int rendererIndex, DefaultTrackSelector.Parameters trackSelectorParameters, List<DefaultTrackSelector.SelectionOverride> overrides) {
        try {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            DefaultTrackSelector.Parameters.Builder builder = trackSelectorParameters.buildUpon();
            int i = 0;
            while (i < this.mappedTrackInfos[periodIndex].getRendererCount()) {
                builder.setRendererDisabled(i, i != rendererIndex);
                i++;
            }
            if (overrides.isEmpty()) {
                addTrackSelectionInternal(periodIndex, builder.build());
                return;
            }
            TrackGroupArray trackGroupArray = this.mappedTrackInfos[periodIndex].getTrackGroups(rendererIndex);
            for (int i2 = 0; i2 < overrides.size(); i2++) {
                builder.setSelectionOverride(rendererIndex, trackGroupArray, overrides.get(i2));
                addTrackSelectionInternal(periodIndex, builder.build());
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public DownloadRequest getDownloadRequest(byte[] data) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), data);
    }

    public DownloadRequest getDownloadRequest(byte[] data, long startPositionMs, long durationMs) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), data, startPositionMs, durationMs);
    }

    public DownloadRequest getDownloadRequest(String id, byte[] data) {
        return getDownloadRequestBuilder(id, data).build();
    }

    public DownloadRequest getDownloadRequest(String id, byte[] data, long startPositionMs, long durationMs) {
        DownloadRequest.Builder builder = getDownloadRequestBuilder(id, data);
        assertPreparedWithMedia();
        populateDownloadRequestBuilderWithDownloadRange(builder, startPositionMs, durationMs);
        return builder.build();
    }

    private DownloadRequest.Builder getDownloadRequestBuilder(String id, byte[] data) {
        byte[] keySetId;
        DownloadRequest.Builder mimeType = new DownloadRequest.Builder(id, this.localConfiguration.uri).setMimeType(this.localConfiguration.mimeType);
        if (this.localConfiguration.drmConfiguration != null) {
            keySetId = this.localConfiguration.drmConfiguration.getKeySetId();
        } else {
            keySetId = null;
        }
        DownloadRequest.Builder requestBuilder = mimeType.setKeySetId(keySetId).setCustomCacheKey(this.localConfiguration.customCacheKey).setData(data);
        if (this.mode == 2) {
            assertPreparedWithNonProgressiveSourceAndTracksSelected();
            List<StreamKey> streamKeys = new ArrayList<>();
            List<ExoTrackSelection> allSelections = new ArrayList<>();
            int periodCount = this.trackSelectionsByPeriodAndRenderer.length;
            for (int periodIndex = 0; periodIndex < periodCount; periodIndex++) {
                allSelections.clear();
                int rendererCount = this.trackSelectionsByPeriodAndRenderer[periodIndex].length;
                for (int rendererIndex = 0; rendererIndex < rendererCount; rendererIndex++) {
                    allSelections.addAll(this.trackSelectionsByPeriodAndRenderer[periodIndex][rendererIndex]);
                }
                streamKeys.addAll(this.mediaPreparer.mediaPeriods[periodIndex].getStreamKeys(allSelections));
            }
            requestBuilder.setStreamKeys(streamKeys);
        }
        return requestBuilder;
    }

    private void populateDownloadRequestBuilderWithDownloadRange(DownloadRequest.Builder requestBuilder, long startPositionMs, long durationMs) {
        switch (this.mode) {
            case 1:
                populateDownloadRequestBuilderWithByteRange(requestBuilder, startPositionMs, durationMs);
                break;
            case 2:
                populateDownloadRequestBuilderWithTimeRange(requestBuilder, startPositionMs, durationMs);
                break;
        }
    }

    private void populateDownloadRequestBuilderWithByteRange(DownloadRequest.Builder requestBuilder, long startPositionMs, long durationMs) {
        long j;
        assertPreparedWithProgressiveSource();
        Timeline timeline = this.mediaPreparer.timeline;
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        long periodStartPositionUs = ((Long) timeline.getPeriodPositionUs(window, period, 0, Util.msToUs(startPositionMs)).second).longValue();
        long periodEndPositionUs = C.TIME_UNSET;
        if (durationMs != C.TIME_UNSET) {
            periodEndPositionUs = periodStartPositionUs + Util.msToUs(durationMs);
            if (period.durationUs != C.TIME_UNSET) {
                periodEndPositionUs = Math.min(periodEndPositionUs, period.durationUs - 1);
            }
        }
        SeekMap seekMap = this.mediaPreparer.seekMap;
        if (seekMap.isSeekable()) {
            long byteRangeStartPositionOffset = seekMap.getSeekPoints(periodStartPositionUs).first.position;
            long byteRangeLength = -1;
            if (periodEndPositionUs != C.TIME_UNSET) {
                long byteRangeEndPositionOffset = seekMap.getSeekPoints(periodEndPositionUs).second.position;
                boolean areStartAndEndPositionsAfterTheLastSeekPoint = periodStartPositionUs != periodEndPositionUs && byteRangeStartPositionOffset == byteRangeEndPositionOffset;
                if (!areStartAndEndPositionsAfterTheLastSeekPoint) {
                    j = byteRangeEndPositionOffset - byteRangeStartPositionOffset;
                } else {
                    j = -1;
                }
                byteRangeLength = j;
            }
            requestBuilder.setByteRange(byteRangeStartPositionOffset, byteRangeLength);
            return;
        }
        Log.w(TAG, "Cannot set download byte range for progressive stream that is unseekable");
    }

    private void populateDownloadRequestBuilderWithTimeRange(DownloadRequest.Builder requestBuilder, long startPositionMs, long durationMs) {
        long startPositionUs;
        assertPreparedWithNonProgressiveSourceAndTracksSelected();
        Timeline timeline = this.mediaPreparer.timeline;
        Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
        if (startPositionMs == C.TIME_UNSET) {
            startPositionUs = window.getDefaultPositionUs();
        } else {
            startPositionUs = Util.msToUs(startPositionMs);
        }
        long windowDurationUs = window.getDurationUs();
        long durationUs = durationMs == C.TIME_UNSET ? windowDurationUs : Util.msToUs(durationMs);
        if (windowDurationUs != C.TIME_UNSET) {
            startPositionUs = Math.min(startPositionUs, windowDurationUs);
            durationUs = Math.min(durationUs, windowDurationUs - startPositionUs);
        }
        requestBuilder.setTimeRange(startPositionUs, durationUs);
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private void addTrackSelectionInternal(int periodIndex, TrackSelectionParameters trackSelectionParameters) throws ExoPlaybackException {
        this.trackSelector.setParameters(trackSelectionParameters);
        runTrackSelection(periodIndex);
        UnmodifiableIterator<TrackSelectionOverride> it = trackSelectionParameters.overrides.values().iterator();
        while (it.hasNext()) {
            TrackSelectionOverride override = it.next();
            this.trackSelector.setParameters(trackSelectionParameters.buildUpon().setOverrideForType(override).build());
            runTrackSelection(periodIndex);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPrepared() throws ExoPlaybackException {
        final boolean tracksInfoAvailable;
        Preconditions.checkNotNull(this.mediaPreparer);
        Preconditions.checkNotNull(this.mediaPreparer.mediaPeriods);
        Preconditions.checkNotNull(this.mediaPreparer.timeline);
        if (this.mode == 2) {
            int periodCount = this.mediaPreparer.mediaPeriods.length;
            int rendererCount = this.rendererCapabilities.size();
            this.trackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, periodCount, rendererCount);
            this.immutableTrackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, periodCount, rendererCount);
            for (int i = 0; i < periodCount; i++) {
                for (int j = 0; j < rendererCount; j++) {
                    this.trackSelectionsByPeriodAndRenderer[i][j] = new ArrayList();
                    this.immutableTrackSelectionsByPeriodAndRenderer[i][j] = Collections.unmodifiableList(this.trackSelectionsByPeriodAndRenderer[i][j]);
                }
            }
            this.trackGroupArrays = new TrackGroupArray[periodCount];
            this.mappedTrackInfos = new MappingTrackSelector.MappedTrackInfo[periodCount];
            for (int i2 = 0; i2 < periodCount; i2++) {
                this.trackGroupArrays[i2] = this.mediaPreparer.mediaPeriods[i2].getTrackGroups();
                TrackSelectorResult trackSelectorResult = runTrackSelection(i2);
                this.trackSelector.onSelectionActivated(trackSelectorResult.info);
                this.mappedTrackInfos[i2] = (MappingTrackSelector.MappedTrackInfo) Preconditions.checkNotNull(this.trackSelector.getCurrentMappedTrackInfo());
            }
            tracksInfoAvailable = true;
            setPreparedWithNonProgressiveSourceAndTracksSelected();
        } else {
            Preconditions.checkState(this.mode == 1);
            Preconditions.checkNotNull(this.mediaPreparer.seekMap);
            tracksInfoAvailable = false;
            setPreparedWithProgressiveSource();
        }
        ((Handler) Preconditions.checkNotNull(this.callbackHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7943x26f1c63b(tracksInfoAvailable);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onMediaPrepared$2$androidx-media3-exoplayer-offline-DownloadHelper, reason: not valid java name */
    /* synthetic */ void m7943x26f1c63b(boolean tracksInfoAvailable) {
        ((Callback) Preconditions.checkNotNull(this.callback)).onPrepared(this, tracksInfoAvailable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPreparationFailed(final IOException error) {
        ((Handler) Preconditions.checkNotNull(this.callbackHandler)).post(new Runnable() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7942x83f2c593(error);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onMediaPreparationFailed$3$androidx-media3-exoplayer-offline-DownloadHelper, reason: not valid java name */
    /* synthetic */ void m7942x83f2c593(IOException error) {
        ((Callback) Preconditions.checkNotNull(this.callback)).onPrepareError(this, error);
    }

    @RequiresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void setPreparedWithNonProgressiveSourceAndTracksSelected() {
        this.isPreparedWithMedia = true;
        this.areTracksSelected = true;
    }

    @RequiresNonNull({"mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.seekMap", "mediaPreparer.mediaPeriods"})
    private void setPreparedWithProgressiveSource() {
        this.isPreparedWithMedia = true;
    }

    @EnsuresNonNull({"mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void assertPreparedWithMedia() {
        Preconditions.checkState(this.mode != 0);
        Preconditions.checkState(this.isPreparedWithMedia);
    }

    @EnsuresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void assertPreparedWithNonProgressiveSourceAndTracksSelected() {
        Preconditions.checkState(this.mode == 2);
        Preconditions.checkState(this.isPreparedWithMedia);
        Preconditions.checkState(this.areTracksSelected);
    }

    @EnsuresNonNull({"mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.seekMap", "mediaPreparer.mediaPeriods"})
    private void assertPreparedWithProgressiveSource() {
        Preconditions.checkState(this.mode == 1);
        Preconditions.checkState(this.isPreparedWithMedia);
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private TrackSelectorResult runTrackSelection(int periodIndex) throws ExoPlaybackException {
        SparseIntArray sparseIntArray;
        TrackSelectorResult trackSelectorResult = this.trackSelector.selectTracks(this.rendererCapabilities.getRendererCapabilities(), this.trackGroupArrays[periodIndex], new MediaSource.MediaPeriodId(this.mediaPreparer.timeline.getUidOfPeriod(periodIndex)), this.mediaPreparer.timeline);
        for (int i = 0; i < trackSelectorResult.length; i++) {
            ExoTrackSelection newSelection = trackSelectorResult.selections[i];
            if (newSelection != null) {
                List<ExoTrackSelection> existingSelectionList = this.trackSelectionsByPeriodAndRenderer[periodIndex][i];
                boolean mergedWithExistingSelection = false;
                int j = 0;
                while (true) {
                    if (j >= existingSelectionList.size()) {
                        break;
                    }
                    ExoTrackSelection existingSelection = existingSelectionList.get(j);
                    if (!existingSelection.getTrackGroup().equals(newSelection.getTrackGroup())) {
                        j++;
                    } else {
                        this.scratchSet.clear();
                        for (int k = 0; k < existingSelection.length(); k++) {
                            this.scratchSet.put(existingSelection.getIndexInTrackGroup(k), 0);
                        }
                        int k2 = 0;
                        while (true) {
                            int length = newSelection.length();
                            sparseIntArray = this.scratchSet;
                            if (k2 >= length) {
                                break;
                            }
                            sparseIntArray.put(newSelection.getIndexInTrackGroup(k2), 0);
                            k2++;
                        }
                        int k3 = sparseIntArray.size();
                        int[] mergedTracks = new int[k3];
                        for (int k4 = 0; k4 < this.scratchSet.size(); k4++) {
                            mergedTracks[k4] = this.scratchSet.keyAt(k4);
                        }
                        existingSelectionList.set(j, new DownloadTrackSelection(existingSelection.getTrackGroup(), mergedTracks));
                        mergedWithExistingSelection = true;
                    }
                }
                if (!mergedWithExistingSelection) {
                    existingSelectionList.add(newSelection);
                }
            }
        }
        if (this.debugLoggingEnabled) {
            logTrackSelectorResult(periodIndex, trackSelectorResult);
        }
        return trackSelectorResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource createMediaSourceInternal(MediaItem mediaItem, DataSource.Factory dataSourceFactory, final DrmSessionManager drmSessionManager, Supplier<ReleasableExecutor> loadExecutorSupplier) {
        MediaSource.Factory mediaSourceFactory;
        if (isProgressive((MediaItem.LocalConfiguration) Preconditions.checkNotNull(mediaItem.localConfiguration))) {
            mediaSourceFactory = new ProgressiveMediaSource.Factory(dataSourceFactory);
        } else {
            mediaSourceFactory = new DefaultMediaSourceFactory(dataSourceFactory, ExtractorsFactory.EMPTY);
        }
        if (loadExecutorSupplier != null) {
            mediaSourceFactory.setDownloadExecutor(loadExecutorSupplier);
        }
        if (drmSessionManager != null) {
            mediaSourceFactory.setDrmSessionManagerProvider(new DrmSessionManagerProvider() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$$ExternalSyntheticLambda0
                @Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider
                public final DrmSessionManager get(MediaItem mediaItem2) {
                    return DownloadHelper.lambda$createMediaSourceInternal$4(drmSessionManager, mediaItem2);
                }
            });
        }
        return mediaSourceFactory.createMediaSource(mediaItem);
    }

    static /* synthetic */ DrmSessionManager lambda$createMediaSourceInternal$4(DrmSessionManager drmSessionManager, MediaItem unusedMediaItem) {
        return drmSessionManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isProgressive(MediaItem.LocalConfiguration localConfiguration) {
        return Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType) == 4;
    }

    private static void logTrackSelectorResult(int periodIndex, TrackSelectorResult trackSelectorResult) {
        Log.d(TAG, "Track selections changed, period index: " + periodIndex + ", tracks [");
        ImmutableList<Tracks.Group> trackGroups = trackSelectorResult.tracks.getGroups();
        for (int groupIndex = 0; groupIndex < trackGroups.size(); groupIndex++) {
            Tracks.Group trackGroup = trackGroups.get(groupIndex);
            Log.d(TAG, "  group [");
            for (int trackIndex = 0; trackIndex < trackGroup.length; trackIndex++) {
                String status = trackGroup.isTrackSelected(trackIndex) ? "[X]" : "[ ]";
                String formatSupport = Util.getFormatSupportString(trackGroup.getTrackSupport(trackIndex));
                Log.d(TAG, "    " + status + " Track:" + trackIndex + ", " + Format.toLogString(trackGroup.getTrackFormat(trackIndex)) + ", supported=" + formatSupport);
            }
            Log.d(TAG, "  ]");
        }
        Log.d(TAG, "]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class MediaPreparer implements MediaSource.MediaSourceCaller, ProgressiveMediaSource.Listener, MediaPeriod.Callback, Handler.Callback {
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED = 2;
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED = 1;
        private static final int MESSAGE_CHECK_FOR_FAILURE = 2;
        private static final int MESSAGE_CONTINUE_LOADING = 3;
        private static final int MESSAGE_PREPARE_SOURCE = 1;
        private static final int MESSAGE_RELEASE = 4;
        private final DownloadHelper downloadHelper;
        private final Handler downloadHelperHandler;
        public MediaPeriod[] mediaPeriods;
        private final MediaSource mediaSource;
        private final Handler mediaSourceHandler;
        private final HandlerThread mediaSourceThread;
        private boolean released;
        public SeekMap seekMap;
        public Timeline timeline;
        private final Allocator allocator = new DefaultAllocator(true, 65536);
        private final ArrayList<MediaPeriod> pendingMediaPeriods = new ArrayList<>();

        public MediaPreparer(MediaSource mediaSource, DownloadHelper downloadHelper) {
            this.mediaSource = mediaSource;
            this.downloadHelper = downloadHelper;
            Handler downloadThreadHandler = Util.createHandlerForCurrentOrMainLooper(new Handler.Callback() { // from class: androidx.media3.exoplayer.offline.DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f$0.handleDownloadHelperCallbackMessage(message);
                }
            });
            this.downloadHelperHandler = downloadThreadHandler;
            this.mediaSourceThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.mediaSourceThread.start();
            this.mediaSourceHandler = Util.createHandler(this.mediaSourceThread.getLooper(), this);
            this.mediaSourceHandler.sendEmptyMessage(1);
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.mediaSourceHandler.sendEmptyMessage(4);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (this.mediaSource instanceof ProgressiveMediaSource) {
                        ((ProgressiveMediaSource) this.mediaSource).setListener(this);
                    }
                    this.mediaSource.prepareSource(this, null, PlayerId.UNSET);
                    this.mediaSourceHandler.sendEmptyMessage(2);
                    return true;
                case 2:
                    try {
                        if (this.mediaPeriods == null) {
                            this.mediaSource.maybeThrowSourceInfoRefreshError();
                        } else {
                            for (int i = 0; i < this.pendingMediaPeriods.size(); i++) {
                                this.pendingMediaPeriods.get(i).maybeThrowPrepareError();
                            }
                        }
                        this.mediaSourceHandler.sendEmptyMessageDelayed(2, 100L);
                        break;
                    } catch (IOException e) {
                        this.downloadHelperHandler.obtainMessage(2, e).sendToTarget();
                    }
                    return true;
                case 3:
                    MediaPeriod mediaPeriod = (MediaPeriod) msg.obj;
                    if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                        mediaPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(0L).build());
                    }
                    return true;
                case 4:
                    if (this.mediaPeriods != null) {
                        for (MediaPeriod period : this.mediaPeriods) {
                            this.mediaSource.releasePeriod(period);
                        }
                    }
                    if (this.mediaSource instanceof ProgressiveMediaSource) {
                        ((ProgressiveMediaSource) this.mediaSource).clearListener();
                    }
                    this.mediaSource.releaseSource(this);
                    this.mediaSourceHandler.removeCallbacksAndMessages(null);
                    this.mediaSourceThread.quit();
                    return true;
                default:
                    return false;
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
        public void onSourceInfoRefreshed(MediaSource source, Timeline timeline) {
            if (this.timeline != null) {
                return;
            }
            if (timeline.getWindow(0, new Timeline.Window()).isLive()) {
                this.downloadHelperHandler.obtainMessage(2, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.timeline = timeline;
            this.mediaPeriods = new MediaPeriod[timeline.getPeriodCount()];
            for (int i = 0; i < this.mediaPeriods.length; i++) {
                MediaPeriod mediaPeriod = this.mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(i)), this.allocator, 0L);
                this.mediaPeriods[i] = mediaPeriod;
                this.pendingMediaPeriods.add(mediaPeriod);
            }
            for (MediaPeriod mediaPeriod2 : this.mediaPeriods) {
                mediaPeriod2.prepare(this, 0L);
            }
        }

        @Override // androidx.media3.exoplayer.source.ProgressiveMediaSource.Listener
        public void onSeekMap(MediaSource source, SeekMap seekMap) {
            this.seekMap = seekMap;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.pendingMediaPeriods.remove(mediaPeriod);
            if (this.pendingMediaPeriods.isEmpty()) {
                this.mediaSourceHandler.removeMessages(2);
                this.downloadHelperHandler.sendEmptyMessage(1);
            }
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                this.mediaSourceHandler.obtainMessage(3, mediaPeriod).sendToTarget();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean handleDownloadHelperCallbackMessage(Message msg) {
            if (this.released) {
                return false;
            }
            switch (msg.what) {
                case 1:
                    try {
                        this.downloadHelper.onMediaPrepared();
                    } catch (ExoPlaybackException e) {
                        this.downloadHelperHandler.obtainMessage(2, new IOException(e)).sendToTarget();
                    }
                    break;
                case 2:
                    release();
                    this.downloadHelper.onMediaPreparationFailed((IOException) Util.castNonNull(msg.obj));
                    break;
            }
            return false;
            return true;
        }
    }

    private static final class DownloadTrackSelection extends BaseTrackSelection {

        private static final class Factory implements ExoTrackSelection.Factory {
            private Factory() {
            }

            @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
            public ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitions, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
                DownloadTrackSelection downloadTrackSelection;
                ExoTrackSelection[] selections = new ExoTrackSelection[definitions.length];
                for (int i = 0; i < definitions.length; i++) {
                    if (definitions[i] == null) {
                        downloadTrackSelection = null;
                    } else {
                        downloadTrackSelection = new DownloadTrackSelection(definitions[i].group, definitions[i].tracks);
                    }
                    selections[i] = downloadTrackSelection;
                }
                return selections;
            }
        }

        public DownloadTrackSelection(TrackGroup trackGroup, int[] tracks) {
            super(trackGroup, tracks);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long playbackPositionUs, long bufferedDurationUs, long availableDurationUs, List<? extends MediaChunk> queue, MediaChunkIterator[] mediaChunkIterators) {
        }
    }

    private static final class FakeBandwidthMeter implements BandwidthMeter {
        private FakeBandwidthMeter() {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public TransferListener getTransferListener() {
            return null;
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void addEventListener(Handler eventHandler, BandwidthMeter.EventListener eventListener) {
        }

        @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
        public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        }
    }

    private static final class UnreleaseableRendererCapabilitiesList implements RendererCapabilitiesList {
        private final RendererCapabilities[] rendererCapabilities;

        private UnreleaseableRendererCapabilitiesList(RendererCapabilities[] rendererCapabilities) {
            this.rendererCapabilities = rendererCapabilities;
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public RendererCapabilities[] getRendererCapabilities() {
            return this.rendererCapabilities;
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public int size() {
            return this.rendererCapabilities.length;
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList
        public void release() {
        }
    }
}
