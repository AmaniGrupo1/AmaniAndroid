package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.IcyDataSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ForwardingSeekMap;
import androidx.media3.extractor.ForwardingTrackOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes21.dex */
final class ProgressiveMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final String TAG = "ProgressiveMediaPeriod";
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;
    private ControlledTrackOutput[] controlledTrackOutputs;
    private final String customCacheKey;
    private final DataSource dataSource;
    private int dataType;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private long durationUs;
    private int enabledTrackCount;
    private long endPositionUs = Long.MIN_VALUE;
    private int extractedSamplesCountAtStartOfLoad;
    private final Handler handler;
    private boolean haveAudioVideoTracks;
    private IcyHeaders icyHeaders;
    private boolean isLengthKnown;
    private boolean isLive;
    private boolean isSingleSample;
    private long lastSeekPositionUs;
    private final Listener listener;
    private final ConditionVariable loadCondition;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final boolean loadOnlySelectedTracks;
    private final Loader loader;
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private boolean notifyDiscontinuity;
    private final Runnable onContinueLoadingRequestedRunnable;
    private boolean pendingDeferredRetry;
    private boolean pendingInitialDiscontinuity;
    private long pendingResetPositionUs;
    private boolean prepared;
    private final ProgressiveMediaExtractor progressiveMediaExtractor;
    private boolean released;
    private TrackId[] sampleQueueTrackIds;
    private SampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private SeekMap seekMap;
    private boolean seenFirstTrackSelection;
    private final long singleSampleDurationUs;
    private final Format singleTrackFormat;
    private final int singleTrackId;
    private TrackState trackState;
    private final Uri uri;
    private static final Map<String, String> ICY_METADATA_HEADERS = createIcyMetadataHeaders();
    private static final Format ICY_FORMAT = new Format.Builder().setId("icy").setSampleMimeType(MimeTypes.APPLICATION_ICY).build();

    interface Listener {
        void onSourceInfoRefreshed(long j, SeekMap seekMap, boolean z);
    }

    public ProgressiveMediaPeriod(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher drmEventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher, Listener listener, Allocator allocator, String customCacheKey, int continueLoadingCheckIntervalBytes, boolean loadOnlySelectedTracks, int singleTrackId, Format singleTrackFormat, long singleSampleDurationUs, ReleasableExecutor downloadExecutor) {
        Loader loader;
        this.uri = uri;
        this.dataSource = dataSource;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = drmEventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = mediaSourceEventDispatcher;
        this.listener = listener;
        this.allocator = allocator;
        this.customCacheKey = customCacheKey;
        this.continueLoadingCheckIntervalBytes = continueLoadingCheckIntervalBytes;
        this.loadOnlySelectedTracks = loadOnlySelectedTracks;
        this.singleTrackId = singleTrackId;
        this.singleTrackFormat = singleTrackFormat;
        if (downloadExecutor != null) {
            loader = new Loader(downloadExecutor);
        } else {
            loader = new Loader(TAG);
        }
        this.loader = loader;
        this.progressiveMediaExtractor = progressiveMediaExtractor;
        this.singleSampleDurationUs = singleSampleDurationUs;
        this.loadCondition = new ConditionVariable();
        this.maybeFinishPrepareRunnable = new Runnable() { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.maybeFinishPrepare();
            }
        };
        this.onContinueLoadingRequestedRunnable = new Runnable() { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7963x97cae34d();
            }
        };
        this.handler = Util.createHandlerForCurrentLooper();
        this.sampleQueueTrackIds = new TrackId[0];
        this.sampleQueues = new SampleQueue[0];
        this.controlledTrackOutputs = new ControlledTrackOutput[0];
        this.pendingResetPositionUs = C.TIME_UNSET;
        this.dataType = 1;
    }

    /* JADX INFO: renamed from: lambda$new$0$androidx-media3-exoplayer-source-ProgressiveMediaPeriod, reason: not valid java name */
    /* synthetic */ void m7963x97cae34d() {
        if (!this.released) {
            ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    public void release() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.preRelease();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.release();
        }
        this.progressiveMediaExtractor.release();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long positionUs) throws Throwable {
        this.callback = callback;
        if (this.singleTrackFormat != null) {
            TrackOutput track = track(this.singleTrackId, 3);
            track.format(this.singleTrackFormat);
            m7965x33ac0ff2(new IndexSeekMap(new long[]{0}, new long[]{0}, C.TIME_UNSET));
            endTracks();
            this.pendingResetPositionUs = positionUs;
            return;
        }
        this.loadCondition.open();
        startLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
        if (this.loadingFinished && !this.prepared) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        assertPrepared();
        return this.trackState.tracks;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] selections, boolean[] mayRetainStreamFlags, SampleStream[] streams, boolean[] streamResetFlags, long positionUs) {
        int i;
        long positionUs2 = positionUs;
        assertPrepared();
        TrackGroupArray tracks = this.trackState.tracks;
        boolean[] trackEnabledStates = this.trackState.trackEnabledStates;
        int oldEnabledTrackCount = this.enabledTrackCount;
        int i2 = 0;
        while (true) {
            i = 0;
            if (i2 >= selections.length) {
                break;
            }
            if (streams[i2] != null && (selections[i2] == null || !mayRetainStreamFlags[i2])) {
                int track = ((SampleStreamImpl) streams[i2]).track;
                Preconditions.checkState(trackEnabledStates[track]);
                this.enabledTrackCount--;
                trackEnabledStates[track] = false;
                streams[i2] = null;
            }
            i2++;
        }
        boolean seekRequired = !this.seenFirstTrackSelection ? positionUs2 == 0 || this.isSingleSample : oldEnabledTrackCount != 0;
        for (int i3 = 0; i3 < selections.length; i3++) {
            if (streams[i3] == null && selections[i3] != null) {
                ExoTrackSelection selection = selections[i3];
                Preconditions.checkState(selection.length() == 1);
                Preconditions.checkState(selection.getIndexInTrackGroup(0) == 0);
                int track2 = tracks.indexOf(selection.getTrackGroup());
                Preconditions.checkState(!trackEnabledStates[track2]);
                this.enabledTrackCount++;
                trackEnabledStates[track2] = true;
                this.pendingInitialDiscontinuity |= selection.getSelectedFormat().hasPrerollSamples;
                streams[i3] = new SampleStreamImpl(track2);
                streamResetFlags[i3] = true;
                if (this.loadOnlySelectedTracks) {
                    seekRequired |= this.seenFirstTrackSelection;
                } else if (!seekRequired) {
                    SampleQueue sampleQueue = this.sampleQueues[track2];
                    seekRequired = (sampleQueue.getReadIndex() == 0 || sampleQueue.seekTo(positionUs2, true)) ? false : true;
                }
            }
        }
        if (this.loadOnlySelectedTracks) {
            for (int i4 = 0; i4 < this.controlledTrackOutputs.length; i4++) {
                this.controlledTrackOutputs[i4].updateSelectionState(trackEnabledStates[i4]);
            }
        }
        int i5 = this.enabledTrackCount;
        if (i5 == 0) {
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = false;
            this.pendingInitialDiscontinuity = false;
            if (this.loader.isLoading()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i < length) {
                    SampleQueue sampleQueue2 = sampleQueueArr[i];
                    sampleQueue2.discardToEnd();
                    i++;
                }
                this.loader.cancelLoading();
            } else {
                this.loadingFinished = false;
                SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length2 = sampleQueueArr2.length;
                while (i < length2) {
                    SampleQueue sampleQueue3 = sampleQueueArr2[i];
                    sampleQueue3.reset();
                    i++;
                }
            }
        } else if (seekRequired) {
            positionUs2 = seekToUs(positionUs2);
            for (int i6 = 0; i6 < streams.length; i6++) {
                if (streams[i6] != null) {
                    streamResetFlags[i6] = true;
                }
            }
        }
        this.seenFirstTrackSelection = true;
        return positionUs2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long positionUs, boolean toKeyframe) {
        if (this.isSingleSample) {
            return;
        }
        assertPrepared();
        if (isPendingReset()) {
            return;
        }
        boolean[] trackEnabledStates = this.trackState.trackEnabledStates;
        int trackCount = this.sampleQueues.length;
        for (int i = 0; i < trackCount; i++) {
            this.sampleQueues[i].discardTo(positionUs, toKeyframe, trackEnabledStates[i]);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long positionUs) {
        if (this.enabledTrackCount > 0 && !isPendingReset() && haveSampleQueuesReachedEndTimeUs()) {
            this.loadingFinished = true;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (this.loadingFinished || this.loader.hasFatalError() || this.pendingDeferredRetry) {
            return false;
        }
        if ((this.prepared || this.singleTrackFormat != null) && this.enabledTrackCount == 0) {
            return false;
        }
        boolean continuedLoading = this.loadCondition.open();
        if (!this.loader.isLoading()) {
            startLoading();
            return true;
        }
        return continuedLoading;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return !this.loadingFinished && this.loader.isLoading() && this.loadCondition.isOpen();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.pendingInitialDiscontinuity) {
            this.pendingInitialDiscontinuity = false;
            return this.lastSeekPositionUs;
        }
        if (this.notifyDiscontinuity) {
            if (this.loadingFinished || getExtractedSamplesCount() > this.extractedSamplesCountAtStartOfLoad) {
                this.notifyDiscontinuity = false;
                return this.lastSeekPositionUs;
            }
            return C.TIME_UNSET;
        }
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        assertPrepared();
        if (this.loadingFinished || this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long largestQueuedTimestampUs = Long.MAX_VALUE;
        if (this.haveAudioVideoTracks) {
            int trackCount = this.sampleQueues.length;
            for (int i = 0; i < trackCount; i++) {
                if (this.trackState.trackIsAudioVideoFlags[i] && this.trackState.trackEnabledStates[i] && !this.sampleQueues[i].isLastSampleQueued()) {
                    largestQueuedTimestampUs = Math.min(largestQueuedTimestampUs, this.sampleQueues[i].getLargestQueuedTimestampUs());
                }
            }
        }
        if (largestQueuedTimestampUs == Long.MAX_VALUE) {
            largestQueuedTimestampUs = getLargestQueuedTimestampUs(false);
        }
        if (largestQueuedTimestampUs == Long.MIN_VALUE) {
            return this.lastSeekPositionUs;
        }
        return largestQueuedTimestampUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long positionUs) {
        assertPrepared();
        boolean[] trackIsAudioVideoFlags = this.trackState.trackIsAudioVideoFlags;
        long positionUs2 = this.seekMap.isSeekable() ? positionUs : 0L;
        int i = 0;
        this.notifyDiscontinuity = false;
        boolean isSameAsLastSeekPosition = this.lastSeekPositionUs == positionUs2;
        this.lastSeekPositionUs = positionUs2;
        if (isPendingReset()) {
            this.pendingResetPositionUs = positionUs2;
            return positionUs2;
        }
        if (this.dataType != 7 && ((this.loadingFinished || this.loader.isLoading()) && seekInsideBufferUs(trackIsAudioVideoFlags, positionUs2, isSameAsLastSeekPosition))) {
            return positionUs2;
        }
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = positionUs2;
        this.loadingFinished = false;
        this.pendingInitialDiscontinuity = false;
        if (this.loader.isLoading()) {
            SampleQueue[] sampleQueueArr = this.sampleQueues;
            int length = sampleQueueArr.length;
            while (i < length) {
                SampleQueue sampleQueue = sampleQueueArr[i];
                sampleQueue.discardToEnd();
                i++;
            }
            this.loader.cancelLoading();
        } else {
            this.loader.clearFatalError();
            SampleQueue[] sampleQueueArr2 = this.sampleQueues;
            int length2 = sampleQueueArr2.length;
            while (i < length2) {
                SampleQueue sampleQueue2 = sampleQueueArr2[i];
                sampleQueue2.reset();
                i++;
            }
        }
        return positionUs2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long positionUs, SeekParameters seekParameters) {
        assertPrepared();
        if (!this.seekMap.isSeekable()) {
            return 0L;
        }
        SeekMap.SeekPoints seekPoints = this.seekMap.getSeekPoints(positionUs);
        return seekParameters.resolveSeekPositionUs(positionUs, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long setEndPositionUs(long endPositionUs) throws Throwable {
        this.endPositionUs = endPositionUs;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.setReadEndTimeUs(endPositionUs);
        }
        return endPositionUs;
    }

    boolean isReady(int track) {
        return !suppressRead() && this.sampleQueues[track].isReady(this.loadingFinished);
    }

    void maybeThrowError(int sampleQueueIndex) throws IOException {
        this.sampleQueues[sampleQueueIndex].maybeThrowError();
        maybeThrowError();
    }

    void maybeThrowError() throws IOException {
        this.loader.maybeThrowError(this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }

    int readData(int sampleQueueIndex, FormatHolder formatHolder, DecoderInputBuffer buffer, int readFlags) {
        if (suppressRead()) {
            return -3;
        }
        maybeNotifyDownstreamFormat(sampleQueueIndex);
        int result = this.sampleQueues[sampleQueueIndex].read(formatHolder, buffer, readFlags, this.loadingFinished);
        if (result == -3) {
            maybeStartDeferredRetry(sampleQueueIndex);
        }
        return result;
    }

    int skipData(int track, long positionUs) throws Throwable {
        if (suppressRead()) {
            return 0;
        }
        maybeNotifyDownstreamFormat(track);
        SampleQueue sampleQueue = this.sampleQueues[track];
        int skipCount = sampleQueue.getSkipCount(positionUs, this.loadingFinished);
        sampleQueue.skip(skipCount);
        if (skipCount == 0) {
            maybeStartDeferredRetry(track);
        }
        return skipCount;
    }

    private boolean haveSampleQueuesReachedEndTimeUs() {
        if (this.endPositionUs == Long.MIN_VALUE) {
            return false;
        }
        assertPrepared();
        boolean endPositionReached = true;
        for (int i = 0; i < this.sampleQueues.length; i++) {
            if (this.trackState.trackEnabledStates[i] && (this.trackState.trackIsAudioVideoFlags[i] || !this.haveAudioVideoTracks)) {
                endPositionReached &= this.sampleQueues[i].hasQueuedTimestampsUpToReadEndTimeUs();
            }
        }
        return endPositionReached;
    }

    private void maybeNotifyDownstreamFormat(int track) {
        assertPrepared();
        boolean[] trackNotifiedDownstreamFormats = this.trackState.trackNotifiedDownstreamFormats;
        if (!trackNotifiedDownstreamFormats[track]) {
            Format trackFormat = this.trackState.tracks.get(track).getFormat(0);
            this.mediaSourceEventDispatcher.downstreamFormatChanged(MimeTypes.getTrackType(trackFormat.sampleMimeType), trackFormat, 0, null, this.lastSeekPositionUs);
            trackNotifiedDownstreamFormats[track] = true;
        }
    }

    private void maybeStartDeferredRetry(int track) {
        assertPrepared();
        if (this.pendingDeferredRetry) {
            if (!this.haveAudioVideoTracks || this.trackState.trackIsAudioVideoFlags[track]) {
                if (this.sampleQueues[track].isReady(false)) {
                    return;
                }
                this.pendingResetPositionUs = 0L;
                this.pendingDeferredRetry = false;
                this.notifyDiscontinuity = true;
                this.lastSeekPositionUs = 0L;
                this.extractedSamplesCountAtStartOfLoad = 0;
                for (SampleQueue sampleQueue : this.sampleQueues) {
                    sampleQueue.reset();
                }
                ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
            }
        }
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity || isPendingReset();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadStarted(ExtractingLoadable loadable, long elapsedRealtimeMs, long loadDurationMs, int retryCount) {
        LoadEventInfo loadEventInfo;
        StatsDataSource dataSource = loadable.dataSource;
        if (retryCount == 0) {
            loadEventInfo = new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, elapsedRealtimeMs);
        } else {
            loadEventInfo = new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, dataSource.getLastOpenedUri(), dataSource.getLastResponseHeaders(), elapsedRealtimeMs, loadDurationMs, dataSource.getBytesRead());
        }
        LoadEventInfo loadEventInfo2 = loadEventInfo;
        this.mediaSourceEventDispatcher.loadStarted(loadEventInfo2, 1, -1, null, 0, null, loadable.seekTimeUs, this.durationUs, retryCount);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(ExtractingLoadable loadable, long elapsedRealtimeMs, long loadDurationMs) {
        long j;
        if (this.durationUs == C.TIME_UNSET && this.seekMap != null) {
            long largestQueuedTimestampUs = getLargestQueuedTimestampUs(true);
            if (largestQueuedTimestampUs == Long.MIN_VALUE) {
                j = 0;
            } else {
                j = 10000 + largestQueuedTimestampUs;
            }
            this.durationUs = j;
            this.listener.onSourceInfoRefreshed(this.durationUs, this.seekMap, this.isLive);
        }
        StatsDataSource dataSource = loadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, dataSource.getLastOpenedUri(), dataSource.getLastResponseHeaders(), elapsedRealtimeMs, loadDurationMs, dataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(loadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, 1, -1, null, 0, null, loadable.seekTimeUs, this.durationUs);
        this.loadingFinished = true;
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(ExtractingLoadable loadable, long elapsedRealtimeMs, long loadDurationMs, boolean released) {
        StatsDataSource dataSource = loadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, dataSource.getLastOpenedUri(), dataSource.getLastResponseHeaders(), elapsedRealtimeMs, loadDurationMs, dataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(loadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, 1, -1, null, 0, null, loadable.seekTimeUs, this.durationUs);
        if (!released) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
            if (this.enabledTrackCount > 0) {
                ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ExtractingLoadable loadable, long elapsedRealtimeMs, long loadDurationMs, IOException error, int errorCount) {
        Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        Loader.LoadErrorAction loadErrorAction;
        StatsDataSource dataSource = loadable.dataSource;
        LoadEventInfo loadEventInfo = new LoadEventInfo(loadable.loadTaskId, loadable.dataSpec, dataSource.getLastOpenedUri(), dataSource.getLastResponseHeaders(), elapsedRealtimeMs, loadDurationMs, dataSource.getBytesRead());
        MediaLoadData mediaLoadData = new MediaLoadData(1, -1, null, 0, null, Util.usToMs(loadable.seekTimeUs), Util.usToMs(this.durationUs));
        long retryDelayMs = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, mediaLoadData, error, errorCount));
        if (retryDelayMs == C.TIME_UNSET) {
            loadErrorAction = Loader.DONT_RETRY_FATAL;
        } else {
            int extractedSamplesCount = getExtractedSamplesCount();
            boolean madeProgress = extractedSamplesCount > this.extractedSamplesCountAtStartOfLoad;
            if (configureRetry(loadable, extractedSamplesCount)) {
                loadErrorActionCreateRetryAction = Loader.createRetryAction(madeProgress, retryDelayMs);
            } else {
                loadErrorActionCreateRetryAction = Loader.DONT_RETRY;
            }
            loadErrorAction = loadErrorActionCreateRetryAction;
        }
        boolean wasCanceled = !loadErrorAction.isRetry();
        this.mediaSourceEventDispatcher.loadError(loadEventInfo, 1, -1, null, 0, null, loadable.seekTimeUs, this.durationUs, error, wasCanceled);
        if (wasCanceled) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(loadable.loadTaskId);
        }
        return loadErrorAction;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int id, int type) {
        return prepareTrackOutput(new TrackId(id, false));
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void seekMap(final SeekMap seekMap) {
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.m7965x33ac0ff2(seekMap);
            }
        });
    }

    TrackOutput icyTrack() {
        return prepareTrackOutput(new TrackId(0, true));
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLengthKnown() {
        this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m7964xa2bd730d();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onLengthKnown$2$androidx-media3-exoplayer-source-ProgressiveMediaPeriod, reason: not valid java name */
    /* synthetic */ void m7964xa2bd730d() {
        this.isLengthKnown = true;
    }

    private TrackOutput prepareTrackOutput(TrackId id) {
        int trackCount = this.sampleQueues.length;
        for (int i = 0; i < trackCount; i++) {
            if (id.equals(this.sampleQueueTrackIds[i])) {
                return this.sampleQueues[i];
            }
        }
        if (this.sampleQueuesBuilt) {
            Log.w(TAG, "Extractor added new track (id=" + id.id + ") after finishing tracks.");
            return new DiscardingTrackOutput();
        }
        SampleQueue sampleQueue = SampleQueue.createWithDrm(this.allocator, this.drmSessionManager, this.drmEventDispatcher);
        ControlledTrackOutput trackOutput = new ControlledTrackOutput(sampleQueue);
        sampleQueue.setUpstreamFormatChangeListener(this);
        TrackId[] sampleQueueTrackIds = (TrackId[]) Arrays.copyOf(this.sampleQueueTrackIds, trackCount + 1);
        sampleQueueTrackIds[trackCount] = id;
        this.sampleQueueTrackIds = (TrackId[]) Util.castNonNullTypeArray(sampleQueueTrackIds);
        SampleQueue[] sampleQueues = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, trackCount + 1);
        sampleQueues[trackCount] = sampleQueue;
        this.sampleQueues = (SampleQueue[]) Util.castNonNullTypeArray(sampleQueues);
        ControlledTrackOutput[] controlledTrackOutputs = (ControlledTrackOutput[]) Arrays.copyOf(this.controlledTrackOutputs, trackCount + 1);
        controlledTrackOutputs[trackCount] = trackOutput;
        this.controlledTrackOutputs = (ControlledTrackOutput[]) Util.castNonNullTypeArray(controlledTrackOutputs);
        return trackOutput;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setSeekMap, reason: merged with bridge method [inline-methods] */
    public void m7965x33ac0ff2(SeekMap seekMap) throws Throwable {
        this.seekMap = this.icyHeaders == null ? seekMap : new SeekMap.Unseekable(C.TIME_UNSET);
        this.durationUs = seekMap.getDurationUs();
        this.isLive = !this.isLengthKnown && seekMap.getDurationUs() == C.TIME_UNSET;
        this.dataType = this.isLive ? 7 : 1;
        if (this.prepared) {
            this.listener.onSourceInfoRefreshed(this.durationUs, seekMap, this.isLive);
        } else {
            maybeFinishPrepare();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() throws Throwable {
        Metadata metadata;
        if (this.released || this.prepared || !this.sampleQueuesBuilt || this.seekMap == null) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.loadCondition.close();
        int trackCount = this.sampleQueues.length;
        int primaryTrackIndex = 0;
        int primaryTrackIndexType = -1;
        for (int i = 0; i < trackCount; i++) {
            int trackType = MimeTypes.getTrackType(((Format) Preconditions.checkNotNull(this.sampleQueues[i].getUpstreamFormat())).sampleMimeType);
            if (getTrackTypePriority(trackType) > getTrackTypePriority(primaryTrackIndexType)) {
                primaryTrackIndex = i;
                primaryTrackIndexType = trackType;
            }
        }
        TrackGroup[] trackArray = new TrackGroup[trackCount];
        boolean[] trackIsAudioVideoFlags = new boolean[trackCount];
        int i2 = 0;
        while (i2 < trackCount) {
            Format trackFormat = (Format) Preconditions.checkNotNull(this.sampleQueues[i2].getUpstreamFormat());
            String mimeType = trackFormat.sampleMimeType;
            boolean isAudio = MimeTypes.isAudio(mimeType);
            boolean isAudioVideo = isAudio || MimeTypes.isVideo(mimeType);
            trackIsAudioVideoFlags[i2] = isAudioVideo;
            this.haveAudioVideoTracks |= isAudioVideo;
            boolean isImage = MimeTypes.isImage(mimeType);
            int primaryTrackIndexType2 = primaryTrackIndexType;
            this.isSingleSample = this.singleSampleDurationUs != C.TIME_UNSET && trackCount == 1 && isImage;
            IcyHeaders icyHeaders = this.icyHeaders;
            if (icyHeaders != null) {
                if (isAudio || this.sampleQueueTrackIds[i2].isIcyTrack) {
                    Metadata metadata2 = trackFormat.metadata;
                    if (metadata2 == null) {
                        metadata = new Metadata(icyHeaders);
                    } else {
                        metadata = metadata2.copyWithAppendedEntries(icyHeaders);
                    }
                    trackFormat = trackFormat.buildUpon().setMetadata(metadata).build();
                }
                if (isAudio && trackFormat.averageBitrate == -1 && trackFormat.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    trackFormat = trackFormat.buildUpon().setAverageBitrate(icyHeaders.bitrate).build();
                }
            }
            Format trackFormat2 = trackFormat.copyWithCryptoType(this.drmSessionManager.getCryptoType(trackFormat));
            if (i2 != primaryTrackIndex) {
                trackFormat2 = trackFormat2.buildUpon().setPrimaryTrackGroupId(Integer.toString(primaryTrackIndex)).build();
            }
            trackArray[i2] = new TrackGroup(Integer.toString(i2), trackFormat2);
            this.pendingInitialDiscontinuity |= trackFormat2.hasPrerollSamples;
            this.sampleQueues[i2].setReadEndTimeUs(this.endPositionUs);
            i2++;
            primaryTrackIndexType = primaryTrackIndexType2;
        }
        this.trackState = new TrackState(new TrackGroupArray(trackArray), trackIsAudioVideoFlags);
        if (this.isSingleSample && this.durationUs == C.TIME_UNSET) {
            this.durationUs = this.singleSampleDurationUs;
            this.seekMap = new ForwardingSeekMap(this.seekMap) { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod.1
                @Override // androidx.media3.extractor.ForwardingSeekMap, androidx.media3.extractor.SeekMap
                public long getDurationUs() {
                    return ProgressiveMediaPeriod.this.durationUs;
                }
            };
        }
        this.listener.onSourceInfoRefreshed(this.durationUs, this.seekMap, this.isLive);
        this.prepared = true;
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onPrepared(this);
    }

    private void startLoading() {
        ExtractingLoadable loadable = new ExtractingLoadable(this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared) {
            Preconditions.checkState(isPendingReset());
            long maxLoadPositionUs = this.endPositionUs != Long.MIN_VALUE ? this.endPositionUs : this.durationUs;
            if (maxLoadPositionUs != C.TIME_UNSET && this.pendingResetPositionUs > maxLoadPositionUs) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = C.TIME_UNSET;
                return;
            }
            loadable.setLoadPosition(((SeekMap) Preconditions.checkNotNull(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.setStartTimeUs(this.pendingResetPositionUs);
            }
            this.pendingResetPositionUs = C.TIME_UNSET;
        }
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        this.loader.startLoading(loadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }

    private boolean configureRetry(ExtractingLoadable loadable, int currentExtractedSampleCount) {
        if (this.isLengthKnown || (this.seekMap != null && this.seekMap.getDurationUs() != C.TIME_UNSET)) {
            this.extractedSamplesCountAtStartOfLoad = currentExtractedSampleCount;
            return true;
        }
        if (this.prepared && !suppressRead()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        loadable.setLoadPosition(0L, 0L);
        return true;
    }

    private boolean seekInsideBufferUs(boolean[] trackIsAudioVideoFlags, long positionUs, boolean isSameAsLastSeekPosition) throws Throwable {
        boolean seekInsideQueue;
        int trackCount = this.sampleQueues.length;
        for (int i = 0; i < trackCount; i++) {
            SampleQueue sampleQueue = this.sampleQueues[i];
            if (this.controlledTrackOutputs[i].isSelected() && (sampleQueue.getReadIndex() != 0 || !isSameAsLastSeekPosition)) {
                if (this.isSingleSample) {
                    seekInsideQueue = sampleQueue.seekTo(sampleQueue.getFirstIndex());
                } else {
                    seekInsideQueue = sampleQueue.seekTo(positionUs, this.loadingFinished);
                }
                if (!seekInsideQueue && (trackIsAudioVideoFlags[i] || !this.haveAudioVideoTracks)) {
                    return false;
                }
            }
        }
        return true;
    }

    private int getExtractedSamplesCount() {
        int extractedSamplesCount = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            extractedSamplesCount += sampleQueue.getWriteIndex();
        }
        return extractedSamplesCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getLargestQueuedTimestampUs(boolean includeDisabledTracks) {
        long largestQueuedTimestampUs = Long.MIN_VALUE;
        for (int i = 0; i < this.sampleQueues.length; i++) {
            if (includeDisabledTracks || ((TrackState) Preconditions.checkNotNull(this.trackState)).trackEnabledStates[i]) {
                largestQueuedTimestampUs = Math.max(largestQueuedTimestampUs, this.sampleQueues[i].getLargestQueuedTimestampUs());
            }
        }
        return largestQueuedTimestampUs;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void assertPrepared() {
        Preconditions.checkState(this.prepared);
        Preconditions.checkNotNull(this.trackState);
        Preconditions.checkNotNull(this.seekMap);
    }

    private final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int track) {
            this.track = track;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return ProgressiveMediaPeriod.this.isReady(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            ProgressiveMediaPeriod.this.maybeThrowError(this.track);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer buffer, int readFlags) {
            return ProgressiveMediaPeriod.this.readData(this.track, formatHolder, buffer, readFlags);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long positionUs) {
            return ProgressiveMediaPeriod.this.skipData(this.track, positionUs);
        }
    }

    final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {
        private final StatsDataSource dataSource;
        private final ExtractorOutput extractorOutput;
        private TrackOutput icyTrackOutput;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private final ProgressiveMediaExtractor progressiveMediaExtractor;
        private long seekTimeUs;
        private boolean seenIcyMetadata;
        private final Uri uri;
        private final PositionHolder positionHolder = new PositionHolder();
        private boolean pendingExtractorSeek = true;
        private final long loadTaskId = LoadEventInfo.getNewId();
        private DataSpec dataSpec = buildDataSpec(0, null);

        public ExtractingLoadable(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, ExtractorOutput extractorOutput, ConditionVariable loadCondition) {
            this.uri = uri;
            this.dataSource = new StatsDataSource(dataSource);
            this.progressiveMediaExtractor = progressiveMediaExtractor;
            this.extractorOutput = extractorOutput;
            this.loadCondition = loadCondition;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            long length;
            DataSource extractorDataSource;
            String etag = null;
            int result = 0;
            while (result == 0 && !this.loadCanceled) {
                try {
                    long position = this.positionHolder.position;
                    this.dataSpec = buildDataSpec(position, etag);
                    long length2 = this.dataSource.open(this.dataSpec);
                    if (!this.loadCanceled) {
                        List<String> etags = this.dataSource.getResponseHeaders().get(HttpHeaders.ETAG);
                        etag = (etags == null || etags.isEmpty()) ? null : etags.get(0);
                        if (length2 != -1) {
                            ProgressiveMediaPeriod.this.onLengthKnown();
                            length = length2 + position;
                        } else {
                            length = length2;
                        }
                        ProgressiveMediaPeriod.this.icyHeaders = IcyHeaders.parse(this.dataSource.getResponseHeaders());
                        DataSource extractorDataSource2 = this.dataSource;
                        if (ProgressiveMediaPeriod.this.icyHeaders != null && ProgressiveMediaPeriod.this.icyHeaders.metadataInterval != -1) {
                            DataSource extractorDataSource3 = new IcyDataSource(this.dataSource, ProgressiveMediaPeriod.this.icyHeaders.metadataInterval, this);
                            this.icyTrackOutput = ProgressiveMediaPeriod.this.icyTrack();
                            this.icyTrackOutput.format(ProgressiveMediaPeriod.ICY_FORMAT);
                            extractorDataSource = extractorDataSource3;
                        } else {
                            extractorDataSource = extractorDataSource2;
                        }
                        this.progressiveMediaExtractor.init(extractorDataSource, this.uri, this.dataSource.getResponseHeaders(), position, length, this.extractorOutput);
                        if (ProgressiveMediaPeriod.this.icyHeaders != null) {
                            this.progressiveMediaExtractor.disableSeekingOnMp3Streams();
                        }
                        if (this.pendingExtractorSeek) {
                            this.progressiveMediaExtractor.seek(position, this.seekTimeUs);
                            this.pendingExtractorSeek = false;
                        }
                        while (result == 0 && !this.loadCanceled) {
                            try {
                                this.loadCondition.block();
                                result = this.progressiveMediaExtractor.read(this.positionHolder);
                                long currentInputPosition = this.progressiveMediaExtractor.getCurrentInputPosition();
                                if (currentInputPosition > ProgressiveMediaPeriod.this.continueLoadingCheckIntervalBytes + position) {
                                    this.loadCondition.close();
                                    ProgressiveMediaPeriod.this.handler.post(ProgressiveMediaPeriod.this.onContinueLoadingRequestedRunnable);
                                    position = currentInputPosition;
                                }
                            } catch (InterruptedException e) {
                                throw new InterruptedIOException();
                            }
                        }
                        if (result == 1) {
                            result = 0;
                        } else if (this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                            this.positionHolder.position = this.progressiveMediaExtractor.getCurrentInputPosition();
                        }
                        DataSourceUtil.closeQuietly(this.dataSource);
                    } else {
                        if (result != 1 && this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                            this.positionHolder.position = this.progressiveMediaExtractor.getCurrentInputPosition();
                        }
                        DataSourceUtil.closeQuietly(this.dataSource);
                        return;
                    }
                } catch (Throwable th) {
                    if (result != 1 && this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                        this.positionHolder.position = this.progressiveMediaExtractor.getCurrentInputPosition();
                    }
                    DataSourceUtil.closeQuietly(this.dataSource);
                    throw th;
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.IcyDataSource.Listener
        public void onIcyMetadata(ParsableByteArray metadata) {
            long jMax;
            if (this.seenIcyMetadata) {
                jMax = Math.max(ProgressiveMediaPeriod.this.getLargestQueuedTimestampUs(true), this.seekTimeUs);
            } else {
                jMax = this.seekTimeUs;
            }
            long timeUs = jMax;
            int length = metadata.bytesLeft();
            TrackOutput icyTrackOutput = (TrackOutput) Preconditions.checkNotNull(this.icyTrackOutput);
            icyTrackOutput.sampleData(metadata, length);
            icyTrackOutput.sampleMetadata(timeUs, 1, length, 0, null);
            this.seenIcyMetadata = true;
        }

        private DataSpec buildDataSpec(long position, String etag) {
            Map<String, String> requestHeaders = ProgressiveMediaPeriod.ICY_METADATA_HEADERS;
            if (etag != null && !etag.startsWith("W/")) {
                requestHeaders = ImmutableMap.builder().putAll(requestHeaders).put(HttpHeaders.IF_RANGE, etag).buildKeepingLast();
            }
            return new DataSpec.Builder().setUri(this.uri).setPosition(position).setKey(ProgressiveMediaPeriod.this.customCacheKey).setFlags(6).setHttpRequestHeaders(requestHeaders).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLoadPosition(long position, long timeUs) {
            this.positionHolder.position = position;
            this.seekTimeUs = timeUs;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }
    }

    private static final class TrackState {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final TrackGroupArray tracks;

        public TrackState(TrackGroupArray tracks, boolean[] trackIsAudioVideoFlags) {
            this.tracks = tracks;
            this.trackIsAudioVideoFlags = trackIsAudioVideoFlags;
            this.trackEnabledStates = new boolean[tracks.length];
            this.trackNotifiedDownstreamFormats = new boolean[tracks.length];
        }
    }

    private static final class TrackId {
        public final int id;
        public final boolean isIcyTrack;

        public TrackId(int id, boolean isIcyTrack) {
            this.id = id;
            this.isIcyTrack = isIcyTrack;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            TrackId other = (TrackId) obj;
            if (this.id == other.id && this.isIcyTrack == other.isIcyTrack) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }
    }

    private static Map<String, String> createIcyMetadataHeaders() {
        Map<String, String> headers = new HashMap<>();
        headers.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(headers);
    }

    private static int getTrackTypePriority(int trackType) {
        switch (trackType) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return 0;
        }
    }

    private static class ControlledTrackOutput extends ForwardingTrackOutput {
        private final DiscardingTrackOutput discardingTrackOutput;
        private final AtomicReference<OutputMode> outputMode;
        private final SampleQueue sampleQueue;

        enum OutputMode {
            PASS_THROUGH,
            DISCARD_AFTER_NEXT_SAMPLE_METADATA,
            DISCARDING
        }

        ControlledTrackOutput(SampleQueue sampleQueue) {
            super(sampleQueue);
            this.sampleQueue = sampleQueue;
            this.discardingTrackOutput = new DiscardingTrackOutput();
            this.outputMode = new AtomicReference<>(OutputMode.PASS_THROUGH);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public int sampleData(DataReader input, int length, boolean allowEndOfInput) throws IOException {
            return getCurrentOutput().sampleData(input, length, allowEndOfInput);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public int sampleData(DataReader input, int length, boolean allowEndOfInput, int sampleDataPart) throws IOException {
            return getCurrentOutput().sampleData(input, length, allowEndOfInput, sampleDataPart);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public void sampleData(ParsableByteArray data, int length) {
            getCurrentOutput().sampleData(data, length);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public void sampleData(ParsableByteArray data, int length, int sampleDataPart) {
            getCurrentOutput().sampleData(data, length, sampleDataPart);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public void sampleMetadata(long timeUs, int flags, int size, int offset, TrackOutput.CryptoData cryptoData) {
            getCurrentOutput().sampleMetadata(timeUs, flags, size, offset, cryptoData);
            if (this.outputMode.get() == OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA) {
                this.sampleQueue.reset();
                this.outputMode.set(OutputMode.DISCARDING);
            }
        }

        void updateSelectionState(boolean selected) {
            this.outputMode.set(selected ? OutputMode.PASS_THROUGH : OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA);
            if (!selected) {
                this.sampleQueue.discardToEnd();
            }
        }

        boolean isSelected() {
            return this.outputMode.get() == OutputMode.PASS_THROUGH;
        }

        private TrackOutput getCurrentOutput() {
            return this.outputMode.get() == OutputMode.DISCARDING ? this.discardingTrackOutput : this.sampleQueue;
        }
    }
}
