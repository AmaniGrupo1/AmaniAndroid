package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ts.PsExtractor;
import java.io.IOException;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes21.dex */
public final class FlacFrameReader {
    private static final String TAG = "FlacFrameReader";

    public static final class SampleNumberHolder {
        public long sampleNumber;
    }

    public static boolean checkAndReadFrameHeader(ParsableByteArray data, FlacStreamMetadata flacStreamMetadata, int frameStartMarker, SampleNumberHolder sampleNumberHolder) {
        int frameStartPosition = data.getPosition();
        long frameHeaderBytes = data.readUnsignedInt();
        if ((frameHeaderBytes >>> 16) != frameStartMarker) {
            return false;
        }
        boolean isBlockSizeVariable = ((frameHeaderBytes >>> 16) & 1) == 1;
        int blockSizeKey = (int) ((frameHeaderBytes >> 12) & 15);
        int sampleRateKey = (int) ((frameHeaderBytes >> 8) & 15);
        int channelAssignmentKey = (int) ((frameHeaderBytes >> 4) & 15);
        int bitsPerSampleKey = (int) ((frameHeaderBytes >> 1) & 7);
        boolean reservedBit = (frameHeaderBytes & 1) == 1;
        return checkChannelAssignment(channelAssignmentKey, flacStreamMetadata) && checkBitsPerSample(bitsPerSampleKey, flacStreamMetadata) && !reservedBit && checkAndReadFirstSampleNumber(data, flacStreamMetadata, isBlockSizeVariable, sampleNumberHolder) && checkAndReadBlockSizeSamples(data, flacStreamMetadata, blockSizeKey, sampleNumberHolder.sampleNumber) && checkAndReadSampleRate(data, flacStreamMetadata, sampleRateKey) && checkAndReadCrc(data, frameStartPosition) && checkFirstSubframeHeaderFromPeek(data);
    }

    public static boolean checkFrameHeaderFromPeek(ExtractorInput input, FlacStreamMetadata flacStreamMetadata, int frameStartMarker, SampleNumberHolder sampleNumberHolder) throws IOException {
        long originalPeekPosition = input.getPeekPosition();
        ParsableByteArray scratch = new ParsableByteArray(17);
        input.peekFully(scratch.getData(), 0, 2);
        int frameStart = scratch.peekChar();
        if (frameStart != frameStartMarker) {
            input.resetPeekPosition();
            input.advancePeekPosition((int) (originalPeekPosition - input.getPosition()));
            return false;
        }
        int totalBytesPeeked = 2 + ExtractorUtil.peekToLength(input, scratch.getData(), 2, 17 - 2);
        scratch.setLimit(totalBytesPeeked);
        input.resetPeekPosition();
        input.advancePeekPosition((int) (originalPeekPosition - input.getPosition()));
        return checkAndReadFrameHeader(scratch, flacStreamMetadata, frameStartMarker, sampleNumberHolder);
    }

    public static long getFirstSampleNumber(ExtractorInput input, FlacStreamMetadata flacStreamMetadata) throws IOException {
        input.resetPeekPosition();
        boolean isBlockSizeVariable = true;
        input.advancePeekPosition(1);
        byte[] blockingStrategyByte = new byte[1];
        input.peekFully(blockingStrategyByte, 0, 1);
        if ((blockingStrategyByte[0] & 1) != 1) {
            isBlockSizeVariable = false;
        }
        input.advancePeekPosition(2);
        int maxUtf8SampleNumberSize = isBlockSizeVariable ? 7 : 6;
        ParsableByteArray scratch = new ParsableByteArray(maxUtf8SampleNumberSize);
        int totalBytesPeeked = ExtractorUtil.peekToLength(input, scratch.getData(), 0, maxUtf8SampleNumberSize);
        scratch.setLimit(totalBytesPeeked);
        input.resetPeekPosition();
        SampleNumberHolder sampleNumberHolder = new SampleNumberHolder();
        if (!checkAndReadFirstSampleNumber(scratch, flacStreamMetadata, isBlockSizeVariable, sampleNumberHolder)) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        return sampleNumberHolder.sampleNumber;
    }

    public static int readFrameBlockSizeSamplesFromKey(ParsableByteArray data, int blockSizeKey) {
        switch (blockSizeKey) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (blockSizeKey - 2);
            case 6:
                return data.readUnsignedByte() + 1;
            case 7:
                return data.readUnsignedShort() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (blockSizeKey - 8);
            default:
                return -1;
        }
    }

    private static boolean checkChannelAssignment(int channelAssignmentKey, FlacStreamMetadata flacStreamMetadata) {
        return channelAssignmentKey <= 7 ? channelAssignmentKey == flacStreamMetadata.channels - 1 : channelAssignmentKey <= 10 && flacStreamMetadata.channels == 2;
    }

    private static boolean checkBitsPerSample(int bitsPerSampleKey, FlacStreamMetadata flacStreamMetadata) {
        return bitsPerSampleKey == 0 || bitsPerSampleKey == flacStreamMetadata.bitsPerSampleLookupKey;
    }

    private static boolean checkAndReadFirstSampleNumber(ParsableByteArray data, FlacStreamMetadata flacStreamMetadata, boolean isBlockSizeVariable, SampleNumberHolder sampleNumberHolder) {
        try {
            long utf8Value = data.readUtf8EncodedLong();
            long sampleNumber = isBlockSizeVariable ? utf8Value : ((long) flacStreamMetadata.maxBlockSizeSamples) * utf8Value;
            if (flacStreamMetadata.totalSamples != 0 && sampleNumber > flacStreamMetadata.totalSamples) {
                return false;
            }
            sampleNumberHolder.sampleNumber = sampleNumber;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private static boolean checkAndReadBlockSizeSamples(ParsableByteArray data, FlacStreamMetadata flacStreamMetadata, int blockSizeKey, long firstSampleNumber) {
        int blockSizeSamples = readFrameBlockSizeSamplesFromKey(data, blockSizeKey);
        boolean isMaybeLastBlock = flacStreamMetadata.totalSamples == 0 || ((long) blockSizeSamples) + firstSampleNumber >= flacStreamMetadata.totalSamples;
        if (blockSizeSamples != -1) {
            return (isMaybeLastBlock || blockSizeSamples >= flacStreamMetadata.minBlockSizeSamples) && blockSizeSamples <= flacStreamMetadata.maxBlockSizeSamples;
        }
        return false;
    }

    private static boolean checkAndReadSampleRate(ParsableByteArray data, FlacStreamMetadata flacStreamMetadata, int sampleRateKey) {
        int expectedSampleRate = flacStreamMetadata.sampleRate;
        if (sampleRateKey == 0) {
            return true;
        }
        if (sampleRateKey <= 11) {
            return sampleRateKey == flacStreamMetadata.sampleRateLookupKey;
        }
        if (sampleRateKey == 12) {
            return data.readUnsignedByte() * 1000 == expectedSampleRate;
        }
        if (sampleRateKey > 14) {
            return false;
        }
        int sampleRate = data.readUnsignedShort();
        if (sampleRateKey == 14) {
            sampleRate *= 10;
        }
        return sampleRate == expectedSampleRate;
    }

    private static boolean checkAndReadCrc(ParsableByteArray data, int frameStartPosition) {
        int crc = data.readUnsignedByte();
        int frameEndPosition = data.getPosition();
        int expectedCrc = Util.crc8(data.getData(), frameStartPosition, frameEndPosition - 1, 0);
        return crc == expectedCrc;
    }

    private static boolean checkFirstSubframeHeaderFromPeek(ParsableByteArray data) {
        if (data.bytesLeft() == 0) {
            return true;
        }
        int subframeHeader = data.peekUnsignedByte();
        if ((subframeHeader & 128) != 0) {
            return false;
        }
        int subframeType = (subframeHeader & WebSocketProtocol.PAYLOAD_SHORT) >> 1;
        if ((subframeType < 2 || subframeType > 7) && (subframeType < 13 || subframeType > 31)) {
            return true;
        }
        Log.i(TAG, "Ignoring frame where first subframe has a reserved type: " + subframeType);
        return false;
    }

    private FlacFrameReader() {
    }
}
