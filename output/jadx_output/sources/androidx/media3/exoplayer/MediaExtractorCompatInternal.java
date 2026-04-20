package androidx.media3.exoplayer;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaCodec;
import android.media.MediaDataSource;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.FileDescriptorDataSource;
import androidx.media3.datasource.MediaDataSourceAdapter;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.android.gms.common.Scopes;
import com.google.common.base.Preconditions;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes21.dex */
public class MediaExtractorCompatInternal {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final String TAG = "MediaExtractorCompatInt";
    private DataSource currentDataSource;
    private final DataSource.Factory dataSourceFactory;
    private boolean hasBeenPrepared;
    private Map<String, String> httpRequestHeaders;
    private LogSessionId logSessionId;
    private long offsetInCurrentFile;
    private SeekPoint pendingSeek;
    private final ProgressiveMediaExtractor progressiveMediaExtractor;
    private SeekMap seekMap;
    private boolean tracksEnded;
    private int upstreamFormatsCount;
    private final PositionHolder positionHolder = new PositionHolder();
    private final Allocator allocator = new DefaultAllocator(true, 65536);
    private final ArrayList<MediaExtractorTrack> tracks = new ArrayList<>();
    private final SparseArray<MediaExtractorSampleQueue> sampleQueues = new SparseArray<>();
    private final SampleMetadataQueue sampleMetadataQueue = new SampleMetadataQueue();
    private final FormatHolder formatHolder = new FormatHolder();
    private final DecoderInputBuffer sampleHolderWithBufferReplacementDisabled = DecoderInputBuffer.newNoDataInstance();
    private final DecoderInputBuffer sampleHolderWithBufferReplacementEnabled = new DecoderInputBuffer(2);
    private final Set<Integer> selectedTrackIndices = new HashSet();

    public MediaExtractorCompatInternal(ProgressiveMediaExtractor progressiveMediaExtractor, DataSource.Factory dataSourceFactory) {
        this.progressiveMediaExtractor = progressiveMediaExtractor;
        this.dataSourceFactory = dataSourceFactory;
    }

    public void setDataSource(Uri uri, long offset) throws IOException {
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(uri, offset));
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) throws IOException {
        if (assetFileDescriptor.getDeclaredLength() == -1) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IOException {
        setDataSource(fileDescriptor, 0L, -1L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long offset, long length) throws IOException {
        FileDescriptorDataSource fileDescriptorDataSource = new FileDescriptorDataSource(fileDescriptor, offset, length);
        prepareDataSource(fileDescriptorDataSource, buildDataSpec(Uri.EMPTY, 0L));
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException {
        AssetFileDescriptor assetFileDescriptor;
        if (Util.isLocalFileUri(uri)) {
            setDataSource((String) Preconditions.checkNotNull(uri.getPath()));
            return;
        }
        ContentResolver resolver = context.getContentResolver();
        try {
            assetFileDescriptor = resolver.openAssetFileDescriptor(uri, "r");
        } catch (FileNotFoundException e) {
        } catch (SecurityException e2) {
        }
        if (assetFileDescriptor != null) {
            try {
                setDataSource(assetFileDescriptor);
                if (assetFileDescriptor != null) {
                    assetFileDescriptor.close();
                    return;
                }
                return;
            } finally {
            }
        }
        if (assetFileDescriptor != null) {
            assetFileDescriptor.close();
        }
        setDataSource(uri.toString(), headers);
    }

    public void setDataSource(String path) throws IOException {
        setDataSource(path, (Map<String, String>) null);
    }

    public void setDataSource(String path, Map<String, String> headers) throws IOException {
        this.httpRequestHeaders = headers;
        prepareDataSource(this.dataSourceFactory.createDataSource(), buildDataSpec(Uri.parse(path), 0L));
    }

    public void setDataSource(MediaDataSource mediaDataSource) throws IOException {
        MediaDataSourceAdapter mediaDataSourceAdapter = new MediaDataSourceAdapter(mediaDataSource, false);
        prepareDataSource(mediaDataSourceAdapter, buildDataSpec(Uri.EMPTY, 0L));
    }

    private void prepareDataSource(DataSource dataSource, DataSpec dataSpec) throws IOException {
        int result;
        String message;
        Preconditions.checkState(!this.hasBeenPrepared);
        this.hasBeenPrepared = true;
        this.offsetInCurrentFile = dataSpec.position;
        this.currentDataSource = dataSource;
        long length = this.currentDataSource.open(dataSpec);
        this.progressiveMediaExtractor.init(this.currentDataSource, (Uri) Preconditions.checkNotNull(this.currentDataSource.getUri()), this.currentDataSource.getResponseHeaders(), 0L, length, new ExtractorOutputImpl());
        Throwable error = null;
        boolean preparing = true;
        while (preparing) {
            try {
                result = this.progressiveMediaExtractor.read(this.positionHolder);
            } catch (Exception | OutOfMemoryError e) {
                error = e;
                result = -1;
            }
            preparing = !this.tracksEnded || this.upstreamFormatsCount < this.sampleQueues.size() || this.seekMap == null;
            if (error != null || (preparing && result == -1)) {
                release();
                if (error != null) {
                    message = "Exception encountered while parsing input media.";
                } else {
                    message = "Reached end of input before preparation completed.";
                }
                throw ParserException.createForMalformedContainer(message, error);
            }
            if (result == 1) {
                reopenCurrentDataSource(this.positionHolder.position);
            }
        }
    }

    public void release() {
        int i = 0;
        while (true) {
            int size = this.sampleQueues.size();
            SparseArray<MediaExtractorSampleQueue> sparseArray = this.sampleQueues;
            if (i < size) {
                sparseArray.valueAt(i).release();
                i++;
            } else {
                sparseArray.clear();
                this.progressiveMediaExtractor.release();
                this.pendingSeek = null;
                DataSourceUtil.closeQuietly(this.currentDataSource);
                this.currentDataSource = null;
                return;
            }
        }
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public MediaFormat getTrackFormat(int trackIndex) {
        MediaExtractorTrack track = this.tracks.get(trackIndex);
        MediaFormat mediaFormat = track.createDownstreamMediaFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled);
        long trackDurationUs = track.sampleQueue.trackDurationUs;
        if (trackDurationUs != C.TIME_UNSET) {
            mediaFormat.setLong("durationUs", trackDurationUs);
        } else if (this.seekMap != null && this.seekMap.getDurationUs() != C.TIME_UNSET) {
            mediaFormat.setLong("durationUs", this.seekMap.getDurationUs());
        }
        return mediaFormat;
    }

    public void selectTrack(int trackIndex) {
        this.selectedTrackIndices.add(Integer.valueOf(trackIndex));
    }

    public void unselectTrack(int trackIndex) {
        this.selectedTrackIndices.remove(Integer.valueOf(trackIndex));
    }

    public void seekTo(long timeUs, int mode) {
        SeekMap.SeekPoints seekPoints;
        SeekPoint seekPoint;
        if (this.seekMap == null) {
            return;
        }
        if (this.selectedTrackIndices.size() == 1 && (this.seekMap instanceof TrackAwareSeekMap)) {
            TrackAwareSeekMap trackAwareSeekMap = (TrackAwareSeekMap) this.seekMap;
            int trackId = this.tracks.get(this.selectedTrackIndices.iterator().next().intValue()).getIdOfBackingTrack();
            if (trackAwareSeekMap.isSeekable(trackId)) {
                seekPoints = trackAwareSeekMap.getSeekPoints(timeUs, trackId);
            } else {
                seekPoints = trackAwareSeekMap.getSeekPoints(timeUs);
            }
        } else {
            seekPoints = this.seekMap.getSeekPoints(timeUs);
        }
        switch (mode) {
            case 0:
                seekPoint = seekPoints.first;
                break;
            case 1:
                seekPoint = seekPoints.second;
                break;
            case 2:
                if (Math.abs(timeUs - seekPoints.second.timeUs) < Math.abs(timeUs - seekPoints.first.timeUs)) {
                    seekPoint = seekPoints.second;
                } else {
                    seekPoint = seekPoints.first;
                }
                break;
            default:
                throw new IllegalArgumentException();
        }
        this.sampleMetadataQueue.clear();
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            this.sampleQueues.valueAt(i).reset();
        }
        this.pendingSeek = seekPoint;
    }

    public boolean advance() {
        if (!advanceToSampleOrEndOfInput()) {
            return false;
        }
        skipOneSample();
        return advanceToSampleOrEndOfInput();
    }

    public int readSampleData(ByteBuffer buffer, int offset) {
        if (!advanceToSampleOrEndOfInput()) {
            return -1;
        }
        buffer.position(offset);
        buffer.limit(buffer.capacity());
        this.sampleHolderWithBufferReplacementDisabled.data = buffer;
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementDisabled);
        buffer.flip();
        buffer.position(offset);
        this.sampleHolderWithBufferReplacementDisabled.data = null;
        return buffer.remaining();
    }

    public int getSampleTrackIndex() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1;
        }
        return this.sampleMetadataQueue.peekFirst().trackIndex;
    }

    public long getSampleSize() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1L;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        ByteBuffer buffer = (ByteBuffer) Preconditions.checkNotNull(this.sampleHolderWithBufferReplacementEnabled.data);
        int sampleSize = buffer.position();
        buffer.position(0);
        return sampleSize;
    }

    public long getSampleTime() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1L;
        }
        return this.sampleMetadataQueue.peekFirst().timeUs;
    }

    public int getSampleFlags() {
        if (!advanceToSampleOrEndOfInput()) {
            return -1;
        }
        return this.sampleMetadataQueue.peekFirst().flags;
    }

    public boolean getSampleCryptoInfo(MediaCodec.CryptoInfo info) {
        if (!advanceToSampleOrEndOfInput()) {
            return false;
        }
        boolean isEncrypted = (this.sampleMetadataQueue.peekFirst().flags & 2) != 0;
        if (!isEncrypted) {
            return false;
        }
        peekNextSelectedTrackSample(this.sampleHolderWithBufferReplacementEnabled);
        populatePlatformCryptoInfoParameters(info);
        return true;
    }

    private void populatePlatformCryptoInfoParameters(MediaCodec.CryptoInfo info) {
        MediaCodec.CryptoInfo platformCryptoInfo = ((CryptoInfo) Preconditions.checkNotNull(this.sampleHolderWithBufferReplacementEnabled.cryptoInfo)).getFrameworkCryptoInfo();
        info.numSubSamples = platformCryptoInfo.numSubSamples;
        info.numBytesOfClearData = platformCryptoInfo.numBytesOfClearData;
        info.numBytesOfEncryptedData = platformCryptoInfo.numBytesOfEncryptedData;
        info.key = platformCryptoInfo.key;
        info.iv = platformCryptoInfo.iv;
        info.mode = platformCryptoInfo.mode;
    }

    public void setLogSessionId(LogSessionId logSessionId) {
        if (!logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            this.logSessionId = logSessionId;
        }
    }

    public LogSessionId getLogSessionId() {
        return this.logSessionId != null ? this.logSessionId : LogSessionId.LOG_SESSION_ID_NONE;
    }

    public DrmInitData getDrmInitData() {
        for (int i = 0; i < this.tracks.size(); i++) {
            Format format = this.tracks.get(i).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled);
            if (format.drmInitData != null) {
                return format.drmInitData;
            }
        }
        return null;
    }

    public long getCachedDuration() {
        if (!advanceToSampleOrEndOfInput()) {
            return 0L;
        }
        long largestReadTimestampUs = Long.MIN_VALUE;
        long largestQueuedTimestampUs = Long.MIN_VALUE;
        for (int i = 0; i < this.tracks.size(); i++) {
            MediaExtractorSampleQueue mediaExtractorSampleQueue = this.tracks.get(i).sampleQueue;
            largestReadTimestampUs = Math.max(largestReadTimestampUs, mediaExtractorSampleQueue.getLargestReadTimestampUs());
            largestQueuedTimestampUs = Math.max(largestQueuedTimestampUs, mediaExtractorSampleQueue.getLargestQueuedTimestampUs());
        }
        Preconditions.checkState(largestQueuedTimestampUs != Long.MIN_VALUE);
        if (largestReadTimestampUs == largestQueuedTimestampUs) {
            return 0L;
        }
        if (largestReadTimestampUs == Long.MIN_VALUE) {
            largestReadTimestampUs = 0;
        }
        return (largestQueuedTimestampUs - largestReadTimestampUs) + 10000;
    }

    public boolean hasCacheReachedEndOfStream() {
        return getCachedDuration() == 0;
    }

    public PersistableBundle getMetrics() {
        PersistableBundle bundle = new PersistableBundle();
        String formatName = this.progressiveMediaExtractor.getUnderlyingImplementationName();
        if (formatName != null) {
            bundle.putString("android.media.mediaextractor.fmt", formatName);
        }
        if (!this.tracks.isEmpty()) {
            Format format = this.tracks.get(0).getFormat(this.formatHolder, this.sampleHolderWithBufferReplacementDisabled);
            if (format.containerMimeType != null) {
                bundle.putString("android.media.mediaextractor.mime", format.containerMimeType);
            }
        }
        bundle.putInt("android.media.mediaextractor.ntrk", this.tracks.size());
        return bundle;
    }

    public Map<UUID, byte[]> getPsshInfo() {
        PsshAtomUtil.PsshAtom parsedPsshAtom;
        DrmInitData drmInitData = getDrmInitData();
        if (drmInitData == null) {
            return null;
        }
        Map<UUID, byte[]> psshDataMap = new HashMap<>();
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if (schemeData.data != null && (parsedPsshAtom = PsshAtomUtil.parsePsshAtom(schemeData.data)) != null) {
                psshDataMap.put(parsedPsshAtom.uuid, parsedPsshAtom.schemeData);
            }
        }
        if (psshDataMap.isEmpty()) {
            return null;
        }
        return psshDataMap;
    }

    public Allocator getAllocator() {
        return this.allocator;
    }

    private void peekNextSelectedTrackSample(DecoderInputBuffer decoderInputBuffer) {
        MediaExtractorTrack trackOfSample = this.tracks.get(((SampleMetadataQueue.SampleMetadata) Preconditions.checkNotNull(this.sampleMetadataQueue.peekFirst())).trackIndex);
        SampleQueue sampleQueue = trackOfSample.sampleQueue;
        int result = sampleQueue.read(this.formatHolder, decoderInputBuffer, 1, false);
        if (result == -5) {
            result = sampleQueue.read(this.formatHolder, decoderInputBuffer, 1, false);
        }
        this.formatHolder.clear();
        Preconditions.checkState(result == -4);
    }

    @EnsuresNonNullIf(expression = {"sampleMetadataQueue.peekFirst()"}, result = true)
    private boolean advanceToSampleOrEndOfInput() {
        try {
            maybeResolvePendingSeek();
            boolean seenEndOfInput = false;
            while (true) {
                if (!this.sampleMetadataQueue.isEmpty()) {
                    if (this.selectedTrackIndices.contains(Integer.valueOf(((SampleMetadataQueue.SampleMetadata) Preconditions.checkNotNull(this.sampleMetadataQueue.peekFirst())).trackIndex))) {
                        return true;
                    }
                    skipOneSample();
                } else {
                    if (seenEndOfInput) {
                        return false;
                    }
                    try {
                        int result = this.progressiveMediaExtractor.read(this.positionHolder);
                        if (result == -1) {
                            seenEndOfInput = true;
                        } else if (result == 1) {
                            reopenCurrentDataSource(this.positionHolder.position);
                        }
                    } catch (Exception | OutOfMemoryError e) {
                        Log.w(TAG, "Treating exception as the end of input.", e);
                        seenEndOfInput = true;
                    }
                }
            }
        } catch (IOException e2) {
            Log.w(TAG, "Treating exception as the end of input.", e2);
            return false;
        }
    }

    private void skipOneSample() {
        int trackIndex = this.sampleMetadataQueue.removeFirst().trackIndex;
        MediaExtractorTrack track = this.tracks.get(trackIndex);
        if (!track.isCompatibilityTrack) {
            track.discardFrontSample();
        }
    }

    private void reopenCurrentDataSource(long newPositionInStream) throws IOException {
        long length;
        DataSource currentDataSource = (DataSource) Preconditions.checkNotNull(this.currentDataSource);
        Uri currentUri = (Uri) Preconditions.checkNotNull(currentDataSource.getUri());
        DataSourceUtil.closeQuietly(currentDataSource);
        long length2 = currentDataSource.open(buildDataSpec(currentUri, this.offsetInCurrentFile + newPositionInStream));
        if (length2 == -1) {
            length = length2;
        } else {
            length = length2 + newPositionInStream;
        }
        this.progressiveMediaExtractor.init(currentDataSource, currentUri, currentDataSource.getResponseHeaders(), newPositionInStream, length, new ExtractorOutputImpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void onSampleQueueFormatInitialized(MediaExtractorSampleQueue mediaExtractorSampleQueue, Format format) {
        boolean z = true;
        this.upstreamFormatsCount++;
        mediaExtractorSampleQueue.setMainTrackIndex(this.tracks.size());
        Object[] objArr = 0;
        this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, false, null));
        String alternativeCodecMimeType = MediaCodecUtil.getAlternativeCodecMimeType(format);
        if (alternativeCodecMimeType != null) {
            mediaExtractorSampleQueue.setCompatibilityTrackIndex(this.tracks.size());
            this.tracks.add(new MediaExtractorTrack(mediaExtractorSampleQueue, z, alternativeCodecMimeType));
        }
    }

    private void maybeResolvePendingSeek() throws IOException {
        if (this.pendingSeek == null) {
            return;
        }
        SeekPoint pendingSeek = (SeekPoint) Preconditions.checkNotNull(this.pendingSeek);
        this.progressiveMediaExtractor.seek(pendingSeek.position, pendingSeek.timeUs);
        reopenCurrentDataSource(pendingSeek.position);
        this.pendingSeek = null;
    }

    private DataSpec buildDataSpec(Uri uri, long position) {
        DataSpec.Builder dataSpec = new DataSpec.Builder().setUri(uri).setPosition(position).setFlags(6);
        if (this.httpRequestHeaders != null) {
            dataSpec.setHttpRequestHeaders(this.httpRequestHeaders);
        }
        return dataSpec.build();
    }

    private final class ExtractorOutputImpl implements ExtractorOutput {
        private ExtractorOutputImpl() {
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public TrackOutput track(int id, int type) {
            MediaExtractorSampleQueue sampleQueue = (MediaExtractorSampleQueue) MediaExtractorCompatInternal.this.sampleQueues.get(id);
            if (sampleQueue == null) {
                if (MediaExtractorCompatInternal.this.tracksEnded) {
                    return new DiscardingTrackOutput();
                }
                MediaExtractorSampleQueue sampleQueue2 = MediaExtractorCompatInternal.this.new MediaExtractorSampleQueue(MediaExtractorCompatInternal.this.allocator, id);
                MediaExtractorCompatInternal.this.sampleQueues.put(id, sampleQueue2);
                return sampleQueue2;
            }
            return sampleQueue;
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void endTracks() {
            MediaExtractorCompatInternal.this.tracksEnded = true;
        }

        @Override // androidx.media3.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
            MediaExtractorCompatInternal.this.seekMap = seekMap;
        }
    }

    private static final class MediaExtractorTrack {
        public final String compatibilityTrackMimeType;
        public final boolean isCompatibilityTrack;
        public final MediaExtractorSampleQueue sampleQueue;

        private MediaExtractorTrack(MediaExtractorSampleQueue sampleQueue, boolean isCompatibilityTrack, String compatibilityTrackMimeType) {
            this.sampleQueue = sampleQueue;
            this.isCompatibilityTrack = isCompatibilityTrack;
            this.compatibilityTrackMimeType = compatibilityTrackMimeType;
        }

        public MediaFormat createDownstreamMediaFormat(FormatHolder scratchFormatHolder, DecoderInputBuffer scratchNoDataDecoderInputBuffer) {
            Format format = getFormat(scratchFormatHolder, scratchNoDataDecoderInputBuffer);
            MediaFormat mediaFormatResult = MediaFormatUtil.createMediaFormatFromFormat(format);
            if (this.compatibilityTrackMimeType != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    mediaFormatResult.removeKey("codecs-string");
                }
                mediaFormatResult.setString("mime", this.compatibilityTrackMimeType);
            }
            Pair<Integer, Integer> profileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
            if (profileAndLevel != null) {
                mediaFormatResult.setInteger(Scopes.PROFILE, ((Integer) profileAndLevel.first).intValue());
                mediaFormatResult.setInteger("level", ((Integer) profileAndLevel.second).intValue());
            }
            return mediaFormatResult;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Format getFormat(FormatHolder scratchFormatHolder, DecoderInputBuffer scratchNoDataDecoderInputBuffer) {
            scratchFormatHolder.clear();
            this.sampleQueue.read(scratchFormatHolder, scratchNoDataDecoderInputBuffer, 2, false);
            Format format = (Format) Preconditions.checkNotNull(scratchFormatHolder.format);
            scratchFormatHolder.clear();
            return format;
        }

        public void discardFrontSample() {
            this.sampleQueue.skip(1);
            this.sampleQueue.discardToRead();
        }

        public int getIdOfBackingTrack() {
            return this.sampleQueue.trackId;
        }

        public String toString() {
            return String.format("MediaExtractorSampleQueue: %s, isCompatibilityTrack: %s, compatibilityTrackMimeType: %s", this.sampleQueue, Boolean.valueOf(this.isCompatibilityTrack), this.compatibilityTrackMimeType);
        }
    }

    private final class MediaExtractorSampleQueue extends SampleQueue {
        private int compatibilityTrackIndex;
        private int mainTrackIndex;
        public long trackDurationUs;
        public final int trackId;

        public MediaExtractorSampleQueue(Allocator allocator, int trackId) {
            super(allocator, null, null);
            this.trackId = trackId;
            this.trackDurationUs = C.TIME_UNSET;
            this.mainTrackIndex = -1;
            this.compatibilityTrackIndex = -1;
        }

        public void setMainTrackIndex(int mainTrackIndex) {
            this.mainTrackIndex = mainTrackIndex;
        }

        public void setCompatibilityTrackIndex(int compatibilityTrackIndex) {
            this.compatibilityTrackIndex = compatibilityTrackIndex;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void durationUs(long durationUs) {
            this.trackDurationUs = durationUs;
            super.durationUs(durationUs);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public Format getAdjustedUpstreamFormat(Format format) {
            if (getUpstreamFormat() == null) {
                MediaExtractorCompatInternal.this.onSampleQueueFormatInitialized(this, format);
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, androidx.media3.extractor.TrackOutput
        public void sampleMetadata(long timeUs, int flags, int size, int offset, TrackOutput.CryptoData cryptoData) {
            int flags2 = flags & (-536870913);
            int flags3 = this.mainTrackIndex;
            Preconditions.checkState(flags3 != -1);
            int writeIndexBeforeCommitting = getWriteIndex();
            super.sampleMetadata(timeUs, flags2, size, offset, cryptoData);
            if (getWriteIndex() == writeIndexBeforeCommitting + 1) {
                queueSampleMetadata(timeUs, flags2);
            }
        }

        public String toString() {
            return String.format("trackId: %s, mainTrackIndex: %s, compatibilityTrackIndex: %s", Integer.valueOf(this.trackId), Integer.valueOf(this.mainTrackIndex), Integer.valueOf(this.compatibilityTrackIndex));
        }

        private void queueSampleMetadata(long timeUs, int flags) {
            int mediaExtractorFlags = 0 | ((1073741824 & flags) != 0 ? 2 : 0) | ((flags & 1) != 0 ? 1 : 0);
            if (this.compatibilityTrackIndex != -1) {
                MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(timeUs, mediaExtractorFlags, this.compatibilityTrackIndex);
            }
            MediaExtractorCompatInternal.this.sampleMetadataQueue.addLast(timeUs, mediaExtractorFlags, this.mainTrackIndex);
        }
    }

    private static final class SampleMetadataQueue {
        private final ArrayDeque<SampleMetadata> sampleMetadataPool = new ArrayDeque<>();
        private final ArrayDeque<SampleMetadata> sampleMetadataQueue = new ArrayDeque<>();

        public void addLast(long timeUs, int flags, int trackIndex) {
            SampleMetadata metadata = obtainSampleMetadata(timeUs, flags, trackIndex);
            this.sampleMetadataQueue.addLast(metadata);
        }

        public SampleMetadata removeFirst() {
            SampleMetadata metadata = this.sampleMetadataQueue.removeFirst();
            this.sampleMetadataPool.push(metadata);
            return metadata;
        }

        public SampleMetadata peekFirst() {
            return this.sampleMetadataQueue.peekFirst();
        }

        public void clear() {
            for (SampleMetadata metadata : this.sampleMetadataQueue) {
                this.sampleMetadataPool.push(metadata);
            }
            this.sampleMetadataQueue.clear();
        }

        public boolean isEmpty() {
            return this.sampleMetadataQueue.isEmpty();
        }

        private SampleMetadata obtainSampleMetadata(long timeUs, int flags, int trackIndex) {
            SampleMetadata metadata;
            if (this.sampleMetadataPool.isEmpty()) {
                metadata = new SampleMetadata(timeUs, flags, trackIndex);
            } else {
                metadata = this.sampleMetadataPool.pop();
            }
            metadata.set(timeUs, flags, trackIndex);
            return metadata;
        }

        private static final class SampleMetadata {
            public int flags;
            public long timeUs;
            public int trackIndex;

            public SampleMetadata(long timeUs, int flags, int trackIndex) {
                set(timeUs, flags, trackIndex);
            }

            public void set(long timeUs, int flags, int trackIndex) {
                this.timeUs = timeUs;
                this.flags = flags;
                this.trackIndex = trackIndex;
            }
        }
    }
}
