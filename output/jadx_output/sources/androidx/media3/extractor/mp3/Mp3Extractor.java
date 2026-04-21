package androidx.media3.extractor.mp3;

import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.media3.extractor.mp3.Seeker;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class Mp3Extractor implements Extractor {
    public static final int FLAG_DISABLE_ID3_METADATA = 8;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int FLAG_ENABLE_INDEX_SEEKING = 4;
    private static final int MAX_SEARCH_BYTES = 131072;
    private static final int MPEG_AUDIO_HEADER_MASK = -128000;
    private static final int SCRATCH_LENGTH = 10;
    private static final int SEEK_HEADER_INFO = 1231971951;
    private static final int SEEK_HEADER_UNSET = 0;
    private static final int SEEK_HEADER_VBRI = 1447187017;
    private static final int SEEK_HEADER_XING = 1483304551;
    private static final String TAG = "Mp3Extractor";
    private long basisTimeUs;
    private TrackOutput currentTrackOutput;
    private boolean disableSeeking;
    private long endPositionOfLastSampleRead;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private final int flags;
    private final long forcedFirstSampleTimestampUs;
    private final GaplessInfoHolder gaplessInfoHolder;
    private Metadata id3Metadata;
    private final Id3Peeker id3Peeker;
    private boolean isSeekInProgress;
    private TrackOutput realTrackOutput;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final ParsableByteArray scratch;
    private long seekTimeUs;
    private Seeker seeker;
    private final TrackOutput skippingTrackOutput;
    private final MpegAudioUtil.Header synchronizedHeader;
    private int synchronizedHeaderData;
    private Metadata xingMetadata;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp3Extractor.lambda$static$0();
        }
    };
    private static final Id3Decoder.FramePredicate REQUIRED_ID3_FRAME_PREDICATE = new Id3Decoder.FramePredicate() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda1
        @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return Mp3Extractor.lambda$static$1(i, i2, i3, i4, i5);
        }
    };

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new Mp3Extractor()};
    }

    static /* synthetic */ boolean lambda$static$1(int majorVersion, int id0, int id1, int id2, int id3) {
        return (id0 == 67 && id1 == 79 && id2 == 77 && (id3 == 77 || majorVersion == 2)) || (id0 == 77 && id1 == 76 && id2 == 76 && (id3 == 84 || majorVersion == 2));
    }

    public Mp3Extractor() {
        this(0);
    }

    public Mp3Extractor(int flags) {
        this(flags, C.TIME_UNSET);
    }

    public Mp3Extractor(int flags, long forcedFirstSampleTimestampUs) {
        this.flags = (flags & 2) != 0 ? flags | 1 : flags;
        this.forcedFirstSampleTimestampUs = forcedFirstSampleTimestampUs;
        this.scratch = new ParsableByteArray(10);
        this.synchronizedHeader = new MpegAudioUtil.Header();
        this.gaplessInfoHolder = new GaplessInfoHolder();
        this.basisTimeUs = C.TIME_UNSET;
        this.id3Peeker = new Id3Peeker();
        this.skippingTrackOutput = new DiscardingTrackOutput();
        this.currentTrackOutput = this.skippingTrackOutput;
        this.endPositionOfLastSampleRead = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        return synchronize(input, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractorOutput = output;
        this.realTrackOutput = this.extractorOutput.track(0, 1);
        this.currentTrackOutput = this.realTrackOutput;
        this.extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = C.TIME_UNSET;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
        this.endPositionOfLastSampleRead = -1L;
        this.seekTimeUs = timeUs;
        if ((this.seeker instanceof IndexSeeker) && !((IndexSeeker) this.seeker).isTimeUsInIndex(timeUs)) {
            this.isSeekInProgress = true;
            this.currentTrackOutput = this.skippingTrackOutput;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        assertInitialized();
        int readResult = readInternal(input);
        if (readResult == -1 && (this.seeker instanceof IndexSeeker)) {
            long durationUs = computeTimeUs(this.samplesRead);
            if (this.seeker.getDurationUs() != durationUs) {
                ((IndexSeeker) this.seeker).setDurationUs(durationUs);
                this.extractorOutput.seekMap(this.seeker);
                this.realTrackOutput.durationUs(this.seeker.getDurationUs());
            }
        }
        return readResult;
    }

    public void disableSeeking() {
        this.disableSeeking = true;
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private int readInternal(ExtractorInput input) throws IOException {
        Metadata metadata;
        if (this.synchronizedHeaderData == 0) {
            try {
                synchronize(input, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.seeker == null) {
            this.seeker = computeSeeker(input);
            this.extractorOutput.seekMap(this.seeker);
            if (this.id3Metadata != null && (this.flags & 8) == 0) {
                Metadata metadata2 = this.xingMetadata;
                metadata = this.id3Metadata;
                if (metadata2 != null) {
                    metadata = metadata.copyWithAppendedEntriesFrom(this.xingMetadata);
                }
            } else {
                metadata = this.xingMetadata;
            }
            Format.Builder format = new Format.Builder().setContainerMimeType(MimeTypes.AUDIO_MPEG).setSampleMimeType(this.synchronizedHeader.mimeType).setMaxInputSize(4096).setChannelCount(this.synchronizedHeader.channels).setSampleRate(this.synchronizedHeader.sampleRate).setEncoderDelay(this.gaplessInfoHolder.encoderDelay).setEncoderPadding(this.gaplessInfoHolder.encoderPadding).setMetadata(metadata);
            if (this.seeker.getAverageBitrate() != -2147483647) {
                format.setAverageBitrate(this.seeker.getAverageBitrate());
            }
            this.currentTrackOutput.format(format.build());
            this.firstSamplePosition = input.getPosition();
        } else if (this.firstSamplePosition != 0) {
            long inputPosition = input.getPosition();
            if (inputPosition < this.firstSamplePosition) {
                input.skipFully((int) (this.firstSamplePosition - inputPosition));
            }
        }
        return readSample(input);
    }

    @RequiresNonNull({"realTrackOutput", "seeker"})
    private int readSample(ExtractorInput extractorInput) throws IOException {
        if (this.sampleBytesRemaining == 0) {
            extractorInput.resetPeekPosition();
            if (peekEndOfStreamOrHeader(extractorInput)) {
                return -1;
            }
            this.scratch.setPosition(0);
            int sampleHeaderData = this.scratch.readInt();
            if (!headersMatch(sampleHeaderData, this.synchronizedHeaderData) || MpegAudioUtil.getFrameSize(sampleHeaderData) == -1) {
                extractorInput.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            this.synchronizedHeader.setForHeaderData(sampleHeaderData);
            if (this.basisTimeUs == C.TIME_UNSET) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != C.TIME_UNSET) {
                    long embeddedFirstSampleTimestampUs = this.seeker.getTimeUs(0L);
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - embeddedFirstSampleTimestampUs;
                }
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
            this.endPositionOfLastSampleRead = extractorInput.getPosition() + ((long) this.synchronizedHeader.frameSize);
            if (this.seeker instanceof IndexSeeker) {
                IndexSeeker indexSeeker = (IndexSeeker) this.seeker;
                indexSeeker.maybeAddSeekPoint(computeTimeUs(this.samplesRead + ((long) this.synchronizedHeader.samplesPerFrame)), this.endPositionOfLastSampleRead);
                if (this.isSeekInProgress && indexSeeker.isTimeUsInIndex(this.seekTimeUs)) {
                    this.isSeekInProgress = false;
                    this.currentTrackOutput = this.realTrackOutput;
                }
            }
        }
        int bytesAppended = this.currentTrackOutput.sampleData((DataReader) extractorInput, this.sampleBytesRemaining, true);
        if (bytesAppended == -1) {
            return -1;
        }
        this.sampleBytesRemaining -= bytesAppended;
        if (this.sampleBytesRemaining > 0) {
            return 0;
        }
        this.currentTrackOutput.sampleMetadata(computeTimeUs(this.samplesRead), 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += (long) this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private long computeTimeUs(long samplesRead) {
        return this.basisTimeUs + ((1000000 * samplesRead) / ((long) this.synchronizedHeader.sampleRate));
    }

    private boolean synchronize(ExtractorInput input, boolean sniffing) throws IOException {
        int frameSize;
        int validFrameCount = 0;
        int candidateSynchronizedHeaderData = 0;
        int peekedId3Bytes = 0;
        int searchedBytes = 0;
        input.resetPeekPosition();
        if (input.getPosition() == 0) {
            boolean parseAllId3Frames = (this.flags & 8) == 0;
            Id3Decoder.FramePredicate id3FramePredicate = parseAllId3Frames ? null : REQUIRED_ID3_FRAME_PREDICATE;
            this.id3Metadata = this.id3Peeker.peekId3Data(input, id3FramePredicate, 131072);
            if (this.id3Metadata != null) {
                this.gaplessInfoHolder.setFromMetadata(this.id3Metadata);
            }
            peekedId3Bytes = (int) input.getPeekPosition();
            if (!sniffing) {
                input.skipFully(peekedId3Bytes);
            }
        }
        while (true) {
            boolean parseAllId3Frames2 = peekEndOfStreamOrHeader(input);
            if (parseAllId3Frames2) {
                if (validFrameCount <= 0) {
                    maybeUpdateCbrDurationToLastSample();
                    throw new EOFException();
                }
            } else {
                this.scratch.setPosition(0);
                int headerData = this.scratch.readInt();
                if ((candidateSynchronizedHeaderData != 0 && !headersMatch(headerData, candidateSynchronizedHeaderData)) || (frameSize = MpegAudioUtil.getFrameSize(headerData)) == -1) {
                    int searchedBytes2 = searchedBytes + 1;
                    if (searchedBytes == 131072) {
                        if (sniffing) {
                            return false;
                        }
                        maybeUpdateCbrDurationToLastSample();
                        throw new EOFException();
                    }
                    validFrameCount = 0;
                    candidateSynchronizedHeaderData = 0;
                    if (sniffing) {
                        input.resetPeekPosition();
                        input.advancePeekPosition(peekedId3Bytes + searchedBytes2);
                    } else {
                        input.skipFully(1);
                    }
                    searchedBytes = searchedBytes2;
                } else {
                    validFrameCount++;
                    if (validFrameCount == 1) {
                        this.synchronizedHeader.setForHeaderData(headerData);
                        candidateSynchronizedHeaderData = headerData;
                    } else if (validFrameCount == 4) {
                        break;
                    }
                    input.advancePeekPosition(frameSize - 4);
                }
            }
        }
        if (sniffing) {
            input.skipFully(peekedId3Bytes + searchedBytes);
        } else {
            input.resetPeekPosition();
        }
        this.synchronizedHeaderData = candidateSynchronizedHeaderData;
        return true;
    }

    private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) throws IOException {
        if (this.seeker != null) {
            long dataEndPosition = this.seeker.getDataEndPosition();
            if (dataEndPosition != -1 && extractorInput.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !extractorInput.peekFully(this.scratch.getData(), 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    @RequiresNonNull({"realTrackOutput"})
    private Seeker computeSeeker(ExtractorInput input) throws IOException {
        long dataStartPosition;
        long inputLength;
        Seeker seekFrameSeeker = maybeReadSeekFrame(input);
        Seeker metadataSeeker = maybeHandleSeekMetadata(this.id3Metadata, input.getPosition());
        if (this.disableSeeking) {
            return new Seeker.UnseekableSeeker();
        }
        Seeker resultSeeker = null;
        if (metadataSeeker != null) {
            resultSeeker = metadataSeeker;
        } else if (seekFrameSeeker != null) {
            resultSeeker = seekFrameSeeker;
        }
        if (resultSeeker == null) {
            resultSeeker = getConstantBitrateSeeker(input, (this.flags & 2) != 0);
        }
        if ((this.flags & 4) != 0 && !resultSeeker.isSeekable()) {
            resultSeeker = new IndexSeeker(resultSeeker.getDurationUs(), input.getPosition(), resultSeeker.getDataEndPosition());
        }
        if (shouldFallbackToConstantBitrateSeeking(resultSeeker) && resultSeeker.getDurationUs() != C.TIME_UNSET && (resultSeeker.getDataEndPosition() != -1 || input.getLength() != -1)) {
            if (resultSeeker.getDataStartPosition() != -1) {
                dataStartPosition = resultSeeker.getDataStartPosition();
            } else {
                dataStartPosition = 0;
            }
            long dataStart = dataStartPosition;
            if (resultSeeker.getDataEndPosition() != -1) {
                inputLength = resultSeeker.getDataEndPosition();
            } else {
                inputLength = input.getLength();
            }
            long audioLength = inputLength - dataStart;
            int bitrate = Ints.saturatedCast(Util.scaleLargeValue(audioLength, 8000000L, resultSeeker.getDurationUs(), RoundingMode.HALF_UP));
            resultSeeker = new ConstantBitrateSeeker(inputLength, dataStart, bitrate, -1, false);
        } else if (shouldFallbackToConstantBitrateSeeking(resultSeeker)) {
            resultSeeker = getConstantBitrateSeeker(input, (this.flags & 2) != 0);
        }
        this.realTrackOutput.durationUs(resultSeeker.getDurationUs());
        return resultSeeker;
    }

    private boolean shouldFallbackToConstantBitrateSeeking(Seeker seeker) {
        return (seeker.isSeekable() || (seeker instanceof ConstantBitrateSeeker) || (this.flags & 1) == 0) ? false : true;
    }

    private Seeker maybeReadSeekFrame(ExtractorInput input) throws IOException {
        ParsableByteArray frame = new ParsableByteArray(this.synchronizedHeader.frameSize);
        input.peekFully(frame.getData(), 0, this.synchronizedHeader.frameSize);
        int i = this.synchronizedHeader.version & 1;
        MpegAudioUtil.Header header = this.synchronizedHeader;
        int i2 = 21;
        if (i != 0) {
            if (header.channels != 1) {
                i2 = 36;
            }
        } else if (header.channels == 1) {
            i2 = 13;
        }
        int xingBase = i2;
        int seekHeader = getSeekFrameHeader(frame, xingBase);
        switch (seekHeader) {
            case SEEK_HEADER_INFO /* 1231971951 */:
            case SEEK_HEADER_XING /* 1483304551 */:
                XingFrame xingFrame = XingFrame.parse(this.synchronizedHeader, frame);
                if (!this.gaplessInfoHolder.hasGaplessInfo() && xingFrame.encoderDelay != -1 && xingFrame.encoderPadding != -1) {
                    this.gaplessInfoHolder.encoderDelay = xingFrame.encoderDelay;
                    this.gaplessInfoHolder.encoderPadding = xingFrame.encoderPadding;
                }
                this.xingMetadata = xingFrame.getMetadata();
                long startPosition = input.getPosition();
                if (input.getLength() != -1 && xingFrame.dataSize != -1 && input.getLength() != xingFrame.dataSize + startPosition) {
                    Log.i(TAG, "Data size mismatch between stream (" + input.getLength() + ") and Xing frame (" + (xingFrame.dataSize + startPosition) + "), using Xing value.");
                }
                input.skipFully(this.synchronizedHeader.frameSize);
                if (seekHeader == SEEK_HEADER_XING) {
                    Seeker seeker = XingSeeker.create(xingFrame, startPosition);
                    return seeker;
                }
                Seeker seeker2 = getConstantBitrateSeeker(startPosition, xingFrame, input.getLength());
                return seeker2;
            case SEEK_HEADER_VBRI /* 1447187017 */:
                Seeker seeker3 = VbriSeeker.create(input.getLength(), input.getPosition(), this.synchronizedHeader, frame);
                input.skipFully(this.synchronizedHeader.frameSize);
                return seeker3;
            default:
                input.resetPeekPosition();
                return null;
        }
    }

    private Seeker getConstantBitrateSeeker(ExtractorInput input, boolean allowSeeksIfLengthUnknown) throws IOException {
        input.peekFully(this.scratch.getData(), 0, 4);
        this.scratch.setPosition(0);
        this.synchronizedHeader.setForHeaderData(this.scratch.readInt());
        return new ConstantBitrateSeeker(input.getLength(), input.getPosition(), this.synchronizedHeader, allowSeeksIfLengthUnknown);
    }

    private Seeker getConstantBitrateSeeker(long infoFramePosition, XingFrame infoFrame, long fallbackStreamLength) {
        long streamLength;
        long streamLength2;
        long durationUs = infoFrame.computeDurationUs();
        if (durationUs == C.TIME_UNSET) {
            return null;
        }
        if (infoFrame.dataSize != -1) {
            long streamLength3 = infoFramePosition + infoFrame.dataSize;
            streamLength = streamLength3;
            streamLength2 = infoFrame.dataSize - ((long) infoFrame.header.frameSize);
        } else {
            if (fallbackStreamLength == -1) {
                return null;
            }
            streamLength = fallbackStreamLength;
            streamLength2 = (fallbackStreamLength - infoFramePosition) - ((long) infoFrame.header.frameSize);
        }
        int averageBitrate = Ints.checkedCast(Util.scaleLargeValue(streamLength2, 8000000L, durationUs, RoundingMode.HALF_UP));
        int frameSize = Ints.checkedCast(LongMath.divide(streamLength2, infoFrame.frameCount, RoundingMode.HALF_UP));
        return new ConstantBitrateSeeker(streamLength, infoFramePosition + ((long) infoFrame.header.frameSize), averageBitrate, frameSize, false);
    }

    private void maybeUpdateCbrDurationToLastSample() {
        if ((this.seeker instanceof ConstantBitrateSeeker) && this.seeker.isSeekable() && this.endPositionOfLastSampleRead != -1 && this.endPositionOfLastSampleRead != this.seeker.getDataEndPosition()) {
            this.seeker = ((ConstantBitrateSeeker) this.seeker).copyWithNewDataEndPosition(this.endPositionOfLastSampleRead);
            ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).seekMap(this.seeker);
            ((TrackOutput) Preconditions.checkNotNull(this.realTrackOutput)).durationUs(this.seeker.getDurationUs());
        }
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void assertInitialized() {
        Preconditions.checkNotNull(this.realTrackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    private static boolean headersMatch(int headerA, long headerB) {
        return ((long) (MPEG_AUDIO_HEADER_MASK & headerA)) == ((-128000) & headerB);
    }

    private static int getSeekFrameHeader(ParsableByteArray frame, int xingBase) {
        if (frame.limit() >= xingBase + 4) {
            frame.setPosition(xingBase);
            int headerData = frame.readInt();
            if (headerData == SEEK_HEADER_XING || headerData == SEEK_HEADER_INFO) {
                return headerData;
            }
        }
        if (frame.limit() >= 40) {
            frame.setPosition(36);
            if (frame.readInt() == SEEK_HEADER_VBRI) {
                return SEEK_HEADER_VBRI;
            }
            return 0;
        }
        return 0;
    }

    private static MlltSeeker maybeHandleSeekMetadata(Metadata metadata, long firstFramePosition) {
        MlltFrame mlltFrame;
        if (metadata == null || (mlltFrame = (MlltFrame) metadata.getFirstEntryOfType(MlltFrame.class)) == null) {
            return null;
        }
        return MlltSeeker.create(firstFramePosition, mlltFrame, getId3TlenUs(metadata));
    }

    private static long getId3TlenUs(Metadata metadata) {
        TextInformationFrame tlenFrame;
        if (metadata == null || (tlenFrame = (TextInformationFrame) metadata.getFirstMatchingEntry(TextInformationFrame.class, new Predicate() { // from class: androidx.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return ((TextInformationFrame) obj).id.equals("TLEN");
            }
        })) == null) {
            return C.TIME_UNSET;
        }
        return Util.msToUs(Long.parseLong(tlenFrame.values.get(0)));
    }
}
