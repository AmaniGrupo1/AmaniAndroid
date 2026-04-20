package androidx.media3.exoplayer.source;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private ClippingMediaSource.IllegalClippingException clippingError;
    private final boolean enableClippingInMediaPeriod;
    long endUs;
    private boolean isPeriodClippingEndPosition;
    private long lastReportedDiscontinuityUs;
    public final MediaPeriod mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private ClippingSampleStream[] sampleStreams;
    long startUs;

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean enableInitialDiscontinuity, long startUs, long endUs) {
        this(mediaPeriod, enableInitialDiscontinuity, startUs, endUs, false);
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean enableInitialDiscontinuity, long startUs, long endUs, boolean enableClippingInMediaPeriod) {
        this.mediaPeriod = mediaPeriod;
        this.sampleStreams = new ClippingSampleStream[0];
        this.pendingInitialDiscontinuityPositionUs = enableInitialDiscontinuity ? startUs : -9223372036854775807L;
        this.lastReportedDiscontinuityUs = C.TIME_UNSET;
        this.enableClippingInMediaPeriod = enableClippingInMediaPeriod;
        updateClipping(startUs, endUs);
    }

    public void updateClipping(long startUs, long endUs) {
        this.startUs = startUs;
        this.endUs = endUs;
        if (this.enableClippingInMediaPeriod) {
            long periodEndPositionUs = this.mediaPeriod.setEndPositionUs(endUs);
            Preconditions.checkState(periodEndPositionUs == Long.MIN_VALUE || periodEndPositionUs == endUs, "Period updating end positions not supported, %s!=%s", periodEndPositionUs, endUs);
            this.isPeriodClippingEndPosition = periodEndPositionUs == endUs;
        }
    }

    public void setClippingError(ClippingMediaSource.IllegalClippingException clippingError) {
        this.clippingError = clippingError;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long positionUs) {
        this.callback = callback;
        this.mediaPeriod.prepare(this, positionUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        if (this.clippingError != null) {
            throw this.clippingError;
        }
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> trackSelections) {
        return this.mediaPeriod.getStreamKeys(trackSelections);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] selections, boolean[] mayRetainStreamFlags, SampleStream[] streams, boolean[] streamResetFlags, long positionUs) {
        long j;
        this.sampleStreams = new ClippingSampleStream[streams.length];
        SampleStream[] childStreams = new SampleStream[streams.length];
        int i = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i >= streams.length) {
                break;
            }
            this.sampleStreams[i] = (ClippingSampleStream) streams[i];
            if (this.sampleStreams[i] != null) {
                sampleStream = this.sampleStreams[i].childStream;
            }
            childStreams[i] = sampleStream;
            i++;
        }
        long realEnablePositionUs = this.mediaPeriod.selectTracks(selections, mayRetainStreamFlags, childStreams, streamResetFlags, positionUs);
        long correctedEnablePositionUs = enforceClippingRange(realEnablePositionUs, positionUs, this.endUs);
        if (isPendingInitialDiscontinuity() && shouldKeepInitialDiscontinuity(realEnablePositionUs, positionUs, selections)) {
            j = correctedEnablePositionUs;
        } else {
            j = C.TIME_UNSET;
        }
        this.pendingInitialDiscontinuityPositionUs = j;
        for (int i2 = 0; i2 < streams.length; i2++) {
            SampleStream sampleStream2 = childStreams[i2];
            ClippingSampleStream[] clippingSampleStreamArr = this.sampleStreams;
            if (sampleStream2 == null) {
                clippingSampleStreamArr[i2] = null;
            } else if (clippingSampleStreamArr[i2] == null || this.sampleStreams[i2].childStream != childStreams[i2]) {
                this.sampleStreams[i2] = new ClippingSampleStream(childStreams[i2]);
            }
            streams[i2] = this.sampleStreams[i2];
        }
        return correctedEnablePositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long positionUs, boolean toKeyframe) {
        this.mediaPeriod.discardBuffer(positionUs, toKeyframe);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long positionUs) {
        this.mediaPeriod.reevaluateBuffer(positionUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (isPendingInitialDiscontinuity()) {
            long initialDiscontinuityUs = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
            this.lastReportedDiscontinuityUs = initialDiscontinuityUs;
            long childDiscontinuityUs = readDiscontinuity();
            return childDiscontinuityUs != C.TIME_UNSET ? childDiscontinuityUs : initialDiscontinuityUs;
        }
        long discontinuityUs = this.mediaPeriod.readDiscontinuity();
        if (discontinuityUs == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long discontinuityUs2 = enforceClippingRange(discontinuityUs, this.startUs, this.endUs);
        if (discontinuityUs2 == this.lastReportedDiscontinuityUs) {
            return C.TIME_UNSET;
        }
        this.lastReportedDiscontinuityUs = discontinuityUs2;
        return discontinuityUs2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (this.isPeriodClippingEndPosition) {
            if (this.endUs != Long.MIN_VALUE && bufferedPositionUs != Long.MIN_VALUE) {
                return Math.min(this.endUs, bufferedPositionUs);
            }
            return bufferedPositionUs;
        }
        if (bufferedPositionUs == Long.MIN_VALUE || (this.endUs != Long.MIN_VALUE && bufferedPositionUs >= this.endUs)) {
            return Long.MIN_VALUE;
        }
        return bufferedPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long positionUs) {
        this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
        for (ClippingSampleStream sampleStream : this.sampleStreams) {
            if (sampleStream != null) {
                sampleStream.clearSentEos();
            }
        }
        return enforceClippingRange(this.mediaPeriod.seekToUs(positionUs), this.startUs, this.endUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long positionUs, SeekParameters seekParameters) {
        if (positionUs == this.startUs) {
            return this.startUs;
        }
        SeekParameters clippedSeekParameters = clipSeekParameters(positionUs, seekParameters);
        return this.mediaPeriod.getAdjustedSeekPositionUs(positionUs, clippedSeekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (this.isPeriodClippingEndPosition) {
            if (this.endUs != Long.MIN_VALUE && nextLoadPositionUs != Long.MIN_VALUE) {
                return Math.min(this.endUs, nextLoadPositionUs);
            }
            return nextLoadPositionUs;
        }
        if (nextLoadPositionUs == Long.MIN_VALUE || (this.endUs != Long.MIN_VALUE && nextLoadPositionUs >= this.endUs)) {
            return Long.MIN_VALUE;
        }
        return nextLoadPositionUs;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return this.mediaPeriod.continueLoading(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.mediaPeriod.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        if (this.clippingError != null) {
            return;
        }
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onPrepared(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod source) {
        ((MediaPeriod.Callback) Preconditions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    boolean isPendingInitialDiscontinuity() {
        return this.pendingInitialDiscontinuityPositionUs != C.TIME_UNSET;
    }

    private SeekParameters clipSeekParameters(long positionUs, SeekParameters seekParameters) {
        long toleranceBeforeUs = Util.constrainValue(seekParameters.toleranceBeforeUs, 0L, positionUs - this.startUs);
        long toleranceAfterUs = Util.constrainValue(seekParameters.toleranceAfterUs, 0L, this.endUs == Long.MIN_VALUE ? Long.MAX_VALUE : this.endUs - positionUs);
        if (toleranceBeforeUs == seekParameters.toleranceBeforeUs && toleranceAfterUs == seekParameters.toleranceAfterUs) {
            return seekParameters;
        }
        return new SeekParameters(toleranceBeforeUs, toleranceAfterUs);
    }

    private static boolean shouldKeepInitialDiscontinuity(long startUs, long requestedPositionUs, ExoTrackSelection[] selections) {
        if (startUs < requestedPositionUs) {
            return true;
        }
        if (startUs != 0) {
            for (ExoTrackSelection trackSelection : selections) {
                if (trackSelection != null) {
                    Format selectedFormat = trackSelection.getSelectedFormat();
                    if (!MimeTypes.allSamplesAreSyncSamples(selectedFormat.sampleMimeType, selectedFormat.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static long enforceClippingRange(long positionUs, long minPositionUs, long maxPositionUs) {
        long positionUs2 = Math.max(positionUs, minPositionUs);
        if (maxPositionUs != Long.MIN_VALUE) {
            return Math.min(positionUs2, maxPositionUs);
        }
        return positionUs2;
    }

    private final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        private boolean sentEos;

        public ClippingSampleStream(SampleStream childStream) {
            this.childStream = childStream;
        }

        public void clearSentEos() {
            this.sentEos = false;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.isPendingInitialDiscontinuity() && this.childStream.isReady();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x008c, code lost:
        
            if (r19.waitingForKeys == false) goto L36;
         */
        @Override // androidx.media3.exoplayer.source.SampleStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int readData(FormatHolder formatHolder, DecoderInputBuffer buffer, int readFlags) {
            long bufferedPositionUs;
            int i;
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            if (ClippingMediaPeriod.this.isPeriodClippingEndPosition) {
                int result = this.childStream.readData(formatHolder, buffer, readFlags);
                if (result == -5) {
                    ClippingMediaPeriod.updateDecoderDelayPaddingForClipping(formatHolder, ClippingMediaPeriod.this.startUs, ClippingMediaPeriod.this.endUs);
                    return -5;
                }
                return result;
            }
            if (this.sentEos) {
                buffer.setFlags(4);
                return -4;
            }
            long bufferedPositionUs2 = ClippingMediaPeriod.this.getBufferedPositionUs();
            int result2 = this.childStream.readData(formatHolder, buffer, readFlags);
            if (ClippingMediaPeriod.this.lastReportedDiscontinuityUs != C.TIME_UNSET && result2 != -3) {
                ClippingMediaPeriod.this.lastReportedDiscontinuityUs = C.TIME_UNSET;
            }
            ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
            if (result2 == -5) {
                ClippingMediaPeriod.updateDecoderDelayPaddingForClipping(formatHolder, clippingMediaPeriod.startUs, ClippingMediaPeriod.this.endUs);
                return -5;
            }
            if (clippingMediaPeriod.endUs != Long.MIN_VALUE) {
                if (result2 == -4) {
                    bufferedPositionUs = bufferedPositionUs2;
                    i = -4;
                    if (buffer.timeUs < ClippingMediaPeriod.this.endUs) {
                    }
                    buffer.clear();
                    buffer.setFlags(4);
                    this.sentEos = true;
                    return i;
                }
                bufferedPositionUs = bufferedPositionUs2;
                i = -4;
                if (result2 == -3) {
                    if (bufferedPositionUs == Long.MIN_VALUE) {
                    }
                }
            }
            return result2;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long positionUs) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            return this.childStream.skipData(positionUs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateDecoderDelayPaddingForClipping(FormatHolder formatHolder, long startUs, long endUs) {
        Format format = (Format) Preconditions.checkNotNull(formatHolder.format);
        if (format.encoderDelay != 0 || format.encoderPadding != 0) {
            int encoderDelay = startUs != 0 ? 0 : format.encoderDelay;
            int encoderPadding = endUs == Long.MIN_VALUE ? format.encoderPadding : 0;
            formatHolder.format = format.buildUpon().setEncoderDelay(encoderDelay).setEncoderPadding(encoderPadding).build();
        }
    }
}
