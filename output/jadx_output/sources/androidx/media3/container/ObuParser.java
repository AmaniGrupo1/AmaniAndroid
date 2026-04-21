package androidx.media3.container;

import androidx.media3.common.util.ParsableBitArray;
import com.google.common.base.Preconditions;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class ObuParser {
    public static final int OBU_FRAME = 6;
    public static final int OBU_FRAME_HEADER = 3;
    public static final int OBU_METADATA = 5;
    public static final int OBU_PADDING = 15;
    public static final int OBU_SEQUENCE_HEADER = 1;
    public static final int OBU_TEMPORAL_DELIMITER = 2;

    public static final class Obu {
        public final ByteBuffer payload;
        public final int type;

        private Obu(int type, ByteBuffer payload) {
            this.type = type;
            this.payload = payload;
        }
    }

    public static List<Obu> split(ByteBuffer sample) {
        int obuSize;
        ByteBuffer readOnlySample = sample.asReadOnlyBuffer();
        List<Obu> obuList = new ArrayList<>();
        while (readOnlySample.hasRemaining()) {
            try {
                int headerByte = readOnlySample.get();
                int obuType = (headerByte >> 3) & 15;
                int extensionFlag = (headerByte >> 2) & 1;
                if (extensionFlag != 0) {
                    readOnlySample.get();
                }
                int obuHasSizeField = (headerByte >> 1) & 1;
                if (obuHasSizeField != 0) {
                    obuSize = leb128(readOnlySample);
                } else {
                    obuSize = readOnlySample.remaining();
                }
                if (readOnlySample.position() + obuSize > readOnlySample.limit()) {
                    break;
                }
                ByteBuffer payload = readOnlySample.duplicate();
                payload.limit(readOnlySample.position() + obuSize);
                obuList.add(new Obu(obuType, payload));
                readOnlySample.position(readOnlySample.position() + obuSize);
            } catch (BufferUnderflowException e) {
            }
        }
        return obuList;
    }

    private static int leb128(ByteBuffer data) {
        int value = 0;
        for (int i = 0; i < 8; i++) {
            int leb128Byte = data.get();
            value |= (leb128Byte & 127) << (i * 7);
            if ((leb128Byte & 128) == 0) {
                break;
            }
        }
        return value;
    }

    public static final class SequenceHeader {
        public final int chromaSamplePosition;
        public final byte colorPrimaries;
        public final boolean decoderModelInfoPresentFlag;
        public final boolean frameIdNumbersPresentFlag;
        public final boolean highBitdepth;
        public final int initialDisplayDelayMinus1;
        public final boolean initialDisplayDelayPresentFlag;
        public final byte matrixCoefficients;
        public final boolean monochrome;
        public final int orderHintBits;
        public final boolean reducedStillPictureHeader;
        public final boolean seqForceIntegerMv;
        public final boolean seqForceScreenContentTools;
        public final int seqLevelIdx0;
        public final int seqProfile;
        public final int seqTier0;
        public final boolean subsamplingX;
        public final boolean subsamplingY;
        public final byte transferCharacteristics;
        public final boolean twelveBit;

        public static SequenceHeader parse(Obu obu) {
            try {
                return new SequenceHeader(obu);
            } catch (NotYetImplementedException e) {
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v4, types: [int] */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /* JADX WARN: Type inference failed for: r3v7 */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r3v9 */
        private SequenceHeader(Obu obu) throws NotYetImplementedException {
            ?? bit;
            int bits = 0;
            ?? r3 = 0;
            r3 = 0;
            int bits2 = 0;
            Preconditions.checkArgument(obu.type == 1);
            byte[] bArr = new byte[obu.payload.remaining()];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            this.seqProfile = parsableBitArray.readBits(3);
            parsableBitArray.skipBit();
            this.reducedStillPictureHeader = parsableBitArray.readBit();
            if (this.reducedStillPictureHeader) {
                bits = parsableBitArray.readBits(5);
                this.decoderModelInfoPresentFlag = false;
                this.initialDisplayDelayPresentFlag = false;
            } else {
                if (parsableBitArray.readBit()) {
                    skipTimingInfo(parsableBitArray);
                    this.decoderModelInfoPresentFlag = parsableBitArray.readBit();
                    if (this.decoderModelInfoPresentFlag) {
                        parsableBitArray.skipBits(47);
                    }
                } else {
                    this.decoderModelInfoPresentFlag = false;
                }
                this.initialDisplayDelayPresentFlag = parsableBitArray.readBit();
                int bits3 = parsableBitArray.readBits(5);
                int i = 0;
                while (i <= bits3) {
                    parsableBitArray.skipBits(12);
                    if (i == 0) {
                        bits = parsableBitArray.readBits(5);
                        bit = r3;
                        if (bits > 7) {
                            bit = parsableBitArray.readBit();
                        }
                    } else {
                        bit = r3;
                        if (parsableBitArray.readBits(5) > 7) {
                            parsableBitArray.skipBit();
                            bit = r3;
                        }
                    }
                    if (this.decoderModelInfoPresentFlag) {
                        parsableBitArray.skipBit();
                    }
                    if (this.initialDisplayDelayPresentFlag && parsableBitArray.readBit()) {
                        if (i == 0) {
                            bits2 = parsableBitArray.readBits(4);
                        } else {
                            parsableBitArray.skipBits(4);
                        }
                    }
                    i++;
                    r3 = bit;
                }
            }
            int bits4 = parsableBitArray.readBits(4);
            int bits5 = parsableBitArray.readBits(4);
            parsableBitArray.skipBits(bits4 + 1);
            parsableBitArray.skipBits(bits5 + 1);
            if (!this.reducedStillPictureHeader) {
                this.frameIdNumbersPresentFlag = parsableBitArray.readBit();
            } else {
                this.frameIdNumbersPresentFlag = false;
            }
            if (this.frameIdNumbersPresentFlag) {
                parsableBitArray.skipBits(4);
                parsableBitArray.skipBits(3);
            }
            parsableBitArray.skipBits(3);
            if (this.reducedStillPictureHeader) {
                this.seqForceIntegerMv = true;
                this.seqForceScreenContentTools = true;
                this.orderHintBits = 0;
            } else {
                parsableBitArray.skipBits(4);
                boolean bit2 = parsableBitArray.readBit();
                if (bit2) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    this.seqForceScreenContentTools = true;
                } else {
                    this.seqForceScreenContentTools = parsableBitArray.readBit();
                }
                if (!this.seqForceScreenContentTools || parsableBitArray.readBit()) {
                    this.seqForceIntegerMv = true;
                } else {
                    this.seqForceIntegerMv = parsableBitArray.readBit();
                }
                if (bit2) {
                    this.orderHintBits = parsableBitArray.readBits(3) + 1;
                } else {
                    this.orderHintBits = 0;
                }
            }
            this.seqLevelIdx0 = bits;
            this.seqTier0 = r3;
            this.initialDisplayDelayMinus1 = bits2;
            parsableBitArray.skipBits(3);
            this.highBitdepth = parsableBitArray.readBit();
            if (this.seqProfile == 2 && this.highBitdepth) {
                this.twelveBit = parsableBitArray.readBit();
            } else {
                this.twelveBit = false;
            }
            if (this.seqProfile != 1) {
                this.monochrome = parsableBitArray.readBit();
            } else {
                this.monochrome = false;
            }
            if (parsableBitArray.readBit()) {
                this.colorPrimaries = (byte) parsableBitArray.readBits(8);
                this.transferCharacteristics = (byte) parsableBitArray.readBits(8);
                this.matrixCoefficients = (byte) parsableBitArray.readBits(8);
            } else {
                this.colorPrimaries = (byte) 0;
                this.transferCharacteristics = (byte) 0;
                this.matrixCoefficients = (byte) 0;
            }
            if (this.monochrome) {
                parsableBitArray.skipBit();
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else if (this.colorPrimaries == 1 && this.transferCharacteristics == 13 && this.matrixCoefficients == 0) {
                this.subsamplingX = false;
                this.subsamplingY = false;
                this.chromaSamplePosition = 0;
            } else {
                parsableBitArray.skipBit();
                if (this.seqProfile == 0) {
                    this.subsamplingX = true;
                    this.subsamplingY = true;
                } else if (this.seqProfile == 1) {
                    this.subsamplingX = false;
                    this.subsamplingY = false;
                } else if (this.twelveBit) {
                    this.subsamplingX = parsableBitArray.readBit();
                    if (this.subsamplingX) {
                        this.subsamplingY = parsableBitArray.readBit();
                    } else {
                        this.subsamplingY = false;
                    }
                } else {
                    this.subsamplingX = true;
                    this.subsamplingY = false;
                }
                if (this.subsamplingX && this.subsamplingY) {
                    this.chromaSamplePosition = parsableBitArray.readBits(2);
                } else {
                    this.chromaSamplePosition = 0;
                }
            }
            parsableBitArray.skipBit();
        }

        private static void skipTimingInfo(ParsableBitArray parsableBitArray) {
            parsableBitArray.skipBits(64);
            boolean equalPictureInterval = parsableBitArray.readBit();
            if (equalPictureInterval) {
                ObuParser.skipUvlc(parsableBitArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void skipUvlc(ParsableBitArray parsableBitArray) {
        int leadingZeros = 0;
        while (!done) {
            leadingZeros++;
        }
        if (leadingZeros < 32) {
            parsableBitArray.skipBits(leadingZeros);
        }
    }

    public static final class FrameHeader {
        private static final int FRAME_TYPE_INTRA_ONLY_FRAME = 2;
        private static final int FRAME_TYPE_KEY_FRAME = 0;
        private static final int FRAME_TYPE_SWITCH_FRAME = 3;
        private static final int PROBE_BYTES = 4;
        private final boolean isDependedOn;

        public boolean isDependedOn() {
            return this.isDependedOn;
        }

        public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
            try {
                return new FrameHeader(sequenceHeader, obu);
            } catch (NotYetImplementedException e) {
                return null;
            }
        }

        private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            boolean errorResilientMode;
            int refreshFrameFlags;
            Preconditions.checkArgument(obu.type == 6 || obu.type == 3);
            byte[] bytes = new byte[Math.min(4, obu.payload.remaining())];
            obu.payload.asReadOnlyBuffer().get(bytes);
            ParsableBitArray obuData = new ParsableBitArray(bytes);
            ObuParser.throwWhenFeatureRequired(sequenceHeader.reducedStillPictureHeader);
            boolean showExistingFrame = obuData.readBit();
            if (showExistingFrame) {
                this.isDependedOn = false;
                return;
            }
            int frameType = obuData.readBits(2);
            boolean showFrame = obuData.readBit();
            ObuParser.throwWhenFeatureRequired(sequenceHeader.decoderModelInfoPresentFlag);
            if (!showFrame) {
                this.isDependedOn = true;
                return;
            }
            if (frameType == 3 || frameType == 0) {
                errorResilientMode = true;
            } else {
                errorResilientMode = obuData.readBit();
            }
            obuData.skipBit();
            ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceScreenContentTools);
            boolean allowScreenContentTools = obuData.readBit();
            if (allowScreenContentTools) {
                ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceIntegerMv);
                obuData.skipBit();
            }
            ObuParser.throwWhenFeatureRequired(sequenceHeader.frameIdNumbersPresentFlag);
            if (frameType != 3) {
                obuData.skipBit();
            }
            obuData.skipBits(sequenceHeader.orderHintBits);
            if (frameType != 2 && frameType != 0 && !errorResilientMode) {
                obuData.skipBits(3);
            }
            if (frameType == 3 || frameType == 0) {
                refreshFrameFlags = 255;
            } else {
                refreshFrameFlags = obuData.readBits(8);
            }
            this.isDependedOn = refreshFrameFlags != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void throwWhenFeatureRequired(boolean expression) throws NotYetImplementedException {
        if (expression) {
            throw new NotYetImplementedException();
        }
    }

    private static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    private ObuParser() {
    }
}
