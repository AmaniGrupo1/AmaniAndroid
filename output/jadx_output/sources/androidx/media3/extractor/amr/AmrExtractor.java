package androidx.media3.extractor.amr;

import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class AmrExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int FLAG_ENABLE_INDEX_SEEKING = 4;
    private static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    private static final int SAMPLE_RATE_NB = 8000;
    private static final int SAMPLE_RATE_WB = 16000;
    private static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    private int currentSampleBytesRemaining;
    private int currentSampleSize;
    private long currentSampleTimeUs;
    private TrackOutput currentTrackOutput;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private int firstSampleSize;
    private final int flags;
    private boolean hasOutputFormat;
    private boolean isSeekInProgress;
    private boolean isWideBand;
    private int numSamplesWithSameSize;
    private TrackOutput realTrackOutput;
    private final byte[] scratch;
    private SeekMap seekMap;
    private long seekTimeUs;
    private final TrackOutput skippingTrackOutput;
    private long timeOffsetUs;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.amr.AmrExtractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AmrExtractor.lambda$static$0();
        }
    };
    private static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] frameSizeBytesByTypeWb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] amrSignatureNb = Util.getUtf8Bytes("#!AMR\n");
    private static final byte[] amrSignatureWb = Util.getUtf8Bytes("#!AMR-WB\n");

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[]{new AmrExtractor()};
    }

    public AmrExtractor() {
        this(0);
    }

    public AmrExtractor(int flags) {
        this.flags = (flags & 2) != 0 ? flags | 1 : flags;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
        this.skippingTrackOutput = new DiscardingTrackOutput();
        this.currentTrackOutput = this.skippingTrackOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws IOException {
        return readAmrHeader(input);
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractorOutput = output;
        this.realTrackOutput = output.track(0, 1);
        this.currentTrackOutput = this.realTrackOutput;
        output.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws IOException {
        assertInitialized();
        if (input.getPosition() == 0 && !readAmrHeader(input)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        maybeOutputFormat();
        int sampleReadResult = readSample(input);
        maybeOutputSeekMap(input.getLength(), sampleReadResult);
        if (sampleReadResult == -1 && (this.seekMap instanceof IndexSeekMap)) {
            long durationUs = this.timeOffsetUs + this.currentSampleTimeUs;
            ((IndexSeekMap) this.seekMap).setDurationUs(durationUs);
            this.extractorOutput.seekMap(this.seekMap);
            this.realTrackOutput.durationUs(durationUs);
        }
        return sampleReadResult;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long position, long timeUs) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        this.seekTimeUs = timeUs;
        if (this.seekMap instanceof IndexSeekMap) {
            this.timeOffsetUs = ((IndexSeekMap) this.seekMap).getTimeUs(position);
            if (!isSeekTimeUsWithinRange(this.timeOffsetUs, this.seekTimeUs)) {
                this.isSeekInProgress = true;
                this.currentTrackOutput = this.skippingTrackOutput;
                return;
            }
            return;
        }
        if (position != 0 && (this.seekMap instanceof ConstantBitrateSeekMap)) {
            this.timeOffsetUs = ((ConstantBitrateSeekMap) this.seekMap).getTimeUsAtPosition(position);
        } else {
            this.timeOffsetUs = 0L;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    static int frameSizeBytesByTypeNb(int frameType) {
        return frameSizeBytesByTypeNb[frameType];
    }

    static int frameSizeBytesByTypeWb(int frameType) {
        return frameSizeBytesByTypeWb[frameType];
    }

    static byte[] amrSignatureNb() {
        return Arrays.copyOf(amrSignatureNb, amrSignatureNb.length);
    }

    static byte[] amrSignatureWb() {
        return Arrays.copyOf(amrSignatureWb, amrSignatureWb.length);
    }

    private boolean readAmrHeader(ExtractorInput input) throws IOException {
        if (peekAmrSignature(input, amrSignatureNb)) {
            this.isWideBand = false;
            input.skipFully(amrSignatureNb.length);
            return true;
        }
        if (!peekAmrSignature(input, amrSignatureWb)) {
            return false;
        }
        this.isWideBand = true;
        input.skipFully(amrSignatureWb.length);
        return true;
    }

    private static boolean peekAmrSignature(ExtractorInput input, byte[] amrSignature) throws IOException {
        input.resetPeekPosition();
        byte[] header = new byte[amrSignature.length];
        input.peekFully(header, 0, amrSignature.length);
        return Arrays.equals(header, amrSignature);
    }

    @RequiresNonNull({"realTrackOutput"})
    private void maybeOutputFormat() {
        if (!this.hasOutputFormat) {
            this.hasOutputFormat = true;
            boolean z = this.isWideBand;
            String sampleMimeType = MimeTypes.AUDIO_AMR_WB;
            String containerMimeType = z ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR;
            if (!this.isWideBand) {
                sampleMimeType = MimeTypes.AUDIO_AMR_NB;
            }
            int sampleRate = this.isWideBand ? 16000 : 8000;
            int maxInputSize = this.isWideBand ? frameSizeBytesByTypeWb[8] : frameSizeBytesByTypeNb[7];
            this.realTrackOutput.format(new Format.Builder().setContainerMimeType(containerMimeType).setSampleMimeType(sampleMimeType).setMaxInputSize(maxInputSize).setChannelCount(1).setSampleRate(sampleRate).build());
        }
    }

    @RequiresNonNull({"realTrackOutput"})
    private int readSample(ExtractorInput extractorInput) throws IOException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                this.currentSampleSize = peekNextSampleSize(extractorInput);
                this.currentSampleBytesRemaining = this.currentSampleSize;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
                if (this.seekMap instanceof IndexSeekMap) {
                    IndexSeekMap indexSeekMap = (IndexSeekMap) this.seekMap;
                    long nextSampleTimeUs = this.timeOffsetUs + this.currentSampleTimeUs + 20000;
                    long nextSamplePosition = extractorInput.getPosition() + ((long) this.currentSampleSize);
                    if (!indexSeekMap.isTimeUsInIndex(nextSampleTimeUs, SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US)) {
                        indexSeekMap.addSeekPoint(nextSampleTimeUs, nextSamplePosition);
                    }
                    if (this.isSeekInProgress && isSeekTimeUsWithinRange(nextSampleTimeUs, this.seekTimeUs)) {
                        this.isSeekInProgress = false;
                        this.currentTrackOutput = this.realTrackOutput;
                    }
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int bytesAppended = this.currentTrackOutput.sampleData((DataReader) extractorInput, this.currentSampleBytesRemaining, true);
        if (bytesAppended == -1) {
            return -1;
        }
        this.currentSampleBytesRemaining -= bytesAppended;
        if (this.currentSampleBytesRemaining > 0) {
            return 0;
        }
        this.currentTrackOutput.sampleMetadata(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += 20000;
        return 0;
    }

    private int peekNextSampleSize(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte frameHeader = this.scratch[0];
        if ((frameHeader & 131) > 0) {
            throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) frameHeader), null);
        }
        int frameType = (frameHeader >> 3) & 15;
        return getFrameSizeInBytes(frameType);
    }

    private int getFrameSizeInBytes(int frameType) throws ParserException {
        if (isValidFrameType(frameType)) {
            return this.isWideBand ? frameSizeBytesByTypeWb[frameType] : frameSizeBytesByTypeNb[frameType];
        }
        throw ParserException.createForMalformedContainer("Illegal AMR " + (this.isWideBand ? "WB" : "NB") + " frame type " + frameType, null);
    }

    private boolean isValidFrameType(int frameType) {
        return frameType >= 0 && frameType <= 15 && (isWideBandValidFrameType(frameType) || isNarrowBandValidFrameType(frameType));
    }

    private boolean isWideBandValidFrameType(int frameType) {
        return this.isWideBand && (frameType < 10 || frameType > 13);
    }

    private boolean isNarrowBandValidFrameType(int frameType) {
        return !this.isWideBand && (frameType < 12 || frameType > 14);
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    private void maybeOutputSeekMap(long inputLength, int sampleReadResult) {
        if (this.seekMap != null) {
            return;
        }
        if ((this.flags & 4) != 0) {
            this.seekMap = new IndexSeekMap(new long[]{this.firstSamplePosition}, new long[]{0}, C.TIME_UNSET);
        } else if ((this.flags & 1) == 0 || (this.firstSampleSize != -1 && this.firstSampleSize != this.currentSampleSize)) {
            this.seekMap = new SeekMap.Unseekable(C.TIME_UNSET);
        } else if (this.numSamplesWithSameSize >= 20 || sampleReadResult == -1) {
            this.seekMap = getConstantBitrateSeekMap(inputLength, (this.flags & 2) != 0);
            this.realTrackOutput.durationUs(this.seekMap.getDurationUs());
        }
        if (this.seekMap != null) {
            this.extractorOutput.seekMap(this.seekMap);
        }
    }

    private SeekMap getConstantBitrateSeekMap(long inputLength, boolean allowSeeksIfLengthUnknown) {
        int bitrate = getBitrateFromFrameSize(this.firstSampleSize, 20000L);
        return new ConstantBitrateSeekMap(inputLength, this.firstSamplePosition, bitrate, this.firstSampleSize, allowSeeksIfLengthUnknown);
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    private void assertInitialized() {
        Preconditions.checkNotNull(this.realTrackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    private boolean isSeekTimeUsWithinRange(long timeUs, long seekTimeUs) {
        return Math.abs(seekTimeUs - timeUs) < 20000;
    }

    private static int getBitrateFromFrameSize(int frameSize, long durationUsPerFrame) {
        return (int) (((((long) frameSize) * 8) * 1000000) / durationUsPerFrame);
    }
}
