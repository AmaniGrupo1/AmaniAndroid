package androidx.media3.extractor.wav;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.WavUtil;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";
    private static final byte[] WAVEEXT_SUBFORMAT = {0, 0, 0, 0, Ascii.DLE, 0, -128, 0, 0, -86, 0, 56, -101, 113};
    private static final byte[] AMBISONIC_SUBFORMAT = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean checkFileType(ExtractorInput input) throws IOException {
        ParsableByteArray scratch = new ParsableByteArray(8);
        ChunkHeader chunkHeader = ChunkHeader.peek(input, scratch);
        if (chunkHeader.id != 1380533830 && chunkHeader.id != 1380333108) {
            return false;
        }
        input.peekFully(scratch.getData(), 0, 4);
        scratch.setPosition(0);
        int formType = scratch.readInt();
        if (formType != 1463899717) {
            Log.e(TAG, "Unsupported form type: " + formType);
            return false;
        }
        return true;
    }

    public static long readRf64SampleDataSize(ExtractorInput input) throws IOException {
        ParsableByteArray scratch = new ParsableByteArray(8);
        ChunkHeader chunkHeader = ChunkHeader.peek(input, scratch);
        if (chunkHeader.id != 1685272116) {
            input.resetPeekPosition();
            return -1L;
        }
        input.advancePeekPosition(8);
        scratch.setPosition(0);
        input.peekFully(scratch.getData(), 0, 8);
        long sampleDataSize = scratch.readLittleEndianLong();
        input.skipFully(((int) chunkHeader.size) + 8);
        return sampleDataSize;
    }

    public static WavFormat readFormat(ExtractorInput input) throws IOException {
        int audioFormatType;
        byte[] extraData;
        ParsableByteArray scratch = new ParsableByteArray(16);
        ChunkHeader chunkHeader = skipToChunk(WavUtil.FMT_FOURCC, input, scratch);
        Preconditions.checkState(chunkHeader.size >= 16);
        input.peekFully(scratch.getData(), 0, 16);
        scratch.setPosition(0);
        int audioFormatType2 = scratch.readLittleEndianUnsignedShort();
        int numChannels = scratch.readLittleEndianUnsignedShort();
        int frameRateHz = scratch.readLittleEndianUnsignedIntToInt();
        int averageBytesPerSecond = scratch.readLittleEndianUnsignedIntToInt();
        int blockSize = scratch.readLittleEndianUnsignedShort();
        int bitsPerSample = scratch.readLittleEndianUnsignedShort();
        int bytesLeft = ((int) chunkHeader.size) - 16;
        if (bytesLeft > 0) {
            byte[] extraData2 = new byte[bytesLeft];
            input.peekFully(extraData2, 0, bytesLeft);
            if (audioFormatType2 == 65534 && bytesLeft == 24) {
                ParsableByteArray extensionScratch = new ParsableByteArray(extraData2);
                extensionScratch.readLittleEndianUnsignedShort();
                int validBitsPerSample = extensionScratch.readLittleEndianUnsignedShort();
                if (validBitsPerSample != 0 && validBitsPerSample != bitsPerSample) {
                    throw ParserException.createForUnsupportedContainerFeature("validBits ( " + validBitsPerSample + ")  != bitsPerSample( " + bitsPerSample + ") are not supported");
                }
                int channelMask = extensionScratch.readLittleEndianUnsignedIntToInt();
                if ((channelMask >> 18) != 0) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid channel mask " + channelMask);
                }
                if (channelMask != 0 && Integer.bitCount(channelMask) != numChannels) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid number of channels (" + Integer.bitCount(channelMask) + ") in channel mask " + channelMask);
                }
                int audioFormatType3 = extensionScratch.readLittleEndianUnsignedShort();
                byte[] extensionString = new byte[14];
                extensionScratch.readBytes(extensionString, 0, 14);
                if (!Arrays.equals(extensionString, WAVEEXT_SUBFORMAT) && !Arrays.equals(extensionString, AMBISONIC_SUBFORMAT)) {
                    throw ParserException.createForUnsupportedContainerFeature("invalid wav format extension guid");
                }
                audioFormatType = audioFormatType3;
                extraData = extraData2;
            } else {
                audioFormatType = audioFormatType2;
                extraData = extraData2;
            }
        } else {
            audioFormatType = audioFormatType2;
            extraData = Util.EMPTY_BYTE_ARRAY;
        }
        input.skipFully((int) (input.getPeekPosition() - input.getPosition()));
        return new WavFormat(audioFormatType, numChannels, frameRateHz, averageBytesPerSecond, blockSize, bitsPerSample, extraData);
    }

    public static Pair<Long, Long> skipToSampleData(ExtractorInput input) throws IOException {
        input.resetPeekPosition();
        ParsableByteArray scratch = new ParsableByteArray(8);
        ChunkHeader chunkHeader = skipToChunk(1684108385, input, scratch);
        input.skipFully(8);
        long dataStartPosition = input.getPosition();
        return Pair.create(Long.valueOf(dataStartPosition), Long.valueOf(chunkHeader.size));
    }

    private static ChunkHeader skipToChunk(int chunkId, ExtractorInput input, ParsableByteArray scratch) throws IOException {
        ChunkHeader chunkHeader = ChunkHeader.peek(input, scratch);
        while (chunkHeader.id != chunkId) {
            Log.w(TAG, "Ignoring unknown WAV chunk: " + chunkHeader.id);
            long bytesToSkip = chunkHeader.size + 8;
            if (chunkHeader.size % 2 != 0) {
                bytesToSkip++;
            }
            if (bytesToSkip > SieveCacheKt.NodeLinkMask) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + chunkHeader.id);
            }
            input.skipFully((int) bytesToSkip);
            chunkHeader = ChunkHeader.peek(input, scratch);
        }
        return chunkHeader;
    }

    private WavHeaderReader() {
    }

    private static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private ChunkHeader(int id, long size) {
            this.id = id;
            this.size = size;
        }

        public static ChunkHeader peek(ExtractorInput input, ParsableByteArray scratch) throws IOException {
            input.peekFully(scratch.getData(), 0, 8);
            scratch.setPosition(0);
            int id = scratch.readInt();
            long size = scratch.readLittleEndianUnsignedInt();
            return new ChunkHeader(id, size);
        }
    }
}
