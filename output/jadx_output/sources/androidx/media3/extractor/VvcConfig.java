package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes21.dex */
public final class VvcConfig {
    public final int bitdepthLuma;
    public final String codecs;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;

    public static VvcConfig parse(ParsableByteArray data) throws ParserException {
        int i;
        int unsignedShort;
        int lengthSizeMinusOne;
        int numNalus;
        int i2;
        try {
            if (data.readInt() != 0) {
                throw ParserException.createForMalformedContainer("Unsupported VVC version", null);
            }
            int firstByte = data.readUnsignedByte();
            int lengthSizeMinusOne2 = (firstByte >> 1) & 3;
            boolean ptlPresentFlag = (firstByte & 1) != 0;
            int nalUnitLengthFieldLength = lengthSizeMinusOne2 + 1;
            int profileIdc = 0;
            int levelIdc = 0;
            String tierString = "L";
            int bitDepthMinus8 = 0;
            if (ptlPresentFlag) {
                data.skipBytes(1);
                int olsAndSublayersByte = data.readUnsignedByte();
                int numSublayers = (olsAndSublayersByte >> 4) & 7;
                int bitDepthByte = data.readUnsignedByte();
                bitDepthMinus8 = (bitDepthByte >> 5) & 7;
                int constraintInfoByte = data.readUnsignedByte();
                int numBytesConstraintInfo = constraintInfoByte & 63;
                int profileAndTierByte = data.readUnsignedByte();
                profileIdc = (profileAndTierByte >> 1) & 127;
                tierString = (profileAndTierByte & 1) != 0 ? "H" : "L";
                levelIdc = data.readUnsignedByte();
                data.skipBytes(numBytesConstraintInfo);
                if (numSublayers > 1) {
                    int sublayerFlags = data.readUnsignedByte();
                    int i3 = 1;
                    int i4 = 0;
                    while (true) {
                        int firstByte2 = firstByte;
                        if (i4 >= numSublayers - 1) {
                            break;
                        }
                        if (((sublayerFlags >> (7 - i4)) & 1) == 0) {
                            i2 = i3;
                        } else {
                            i2 = i3;
                            data.skipBytes(i2);
                        }
                        i4++;
                        i3 = i2;
                        firstByte = firstByte2;
                    }
                }
                int numSubProfiles = data.readUnsignedByte();
                data.skipBytes(numSubProfiles * 4);
                data.skipBytes(6);
            }
            int numArrays = data.readUnsignedByte();
            int csdStartPosition = data.getPosition();
            int csdLength = 0;
            int i5 = 0;
            while (true) {
                i = 13;
                if (i5 >= numArrays) {
                    break;
                }
                int arrayHeader = data.readUnsignedByte();
                int nalType = arrayHeader & 31;
                if (nalType != 13 && nalType != 12) {
                    numNalus = data.readUnsignedShort();
                } else {
                    numNalus = 1;
                }
                int j = 0;
                while (j < numNalus) {
                    int nalUnitLength = data.readUnsignedShort();
                    csdLength += nalUnitLength + 4;
                    data.skipBytes(nalUnitLength);
                    j++;
                    nalType = nalType;
                }
                i5++;
            }
            data.setPosition(csdStartPosition);
            byte[] buffer = new byte[csdLength];
            int bufferPosition = 0;
            int i6 = 0;
            while (i6 < numArrays) {
                int arrayHeader2 = data.readUnsignedByte();
                int nalType2 = arrayHeader2 & 31;
                if (nalType2 != i && nalType2 != 12) {
                    unsignedShort = data.readUnsignedShort();
                } else {
                    unsignedShort = 1;
                }
                int numNalus2 = unsignedShort;
                int j2 = 0;
                while (true) {
                    lengthSizeMinusOne = lengthSizeMinusOne2;
                    int lengthSizeMinusOne3 = numNalus2;
                    if (j2 < lengthSizeMinusOne3) {
                        int nalUnitLength2 = data.readUnsignedShort();
                        numNalus2 = lengthSizeMinusOne3;
                        System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, buffer, bufferPosition, 4);
                        int bufferPosition2 = bufferPosition + 4;
                        data.readBytes(buffer, bufferPosition2, nalUnitLength2);
                        bufferPosition = bufferPosition2 + nalUnitLength2;
                        j2++;
                        lengthSizeMinusOne2 = lengthSizeMinusOne;
                        ptlPresentFlag = ptlPresentFlag;
                        numArrays = numArrays;
                    }
                }
                i6++;
                lengthSizeMinusOne2 = lengthSizeMinusOne;
                numArrays = numArrays;
                i = 13;
            }
            String codecs = String.format(Locale.US, "vvc1.%d.%s%d", Integer.valueOf(profileIdc), tierString, Integer.valueOf(levelIdc));
            return new VvcConfig(ImmutableList.of(buffer), nalUnitLengthFieldLength, codecs, bitDepthMinus8 + 8);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing VVC configuration", e);
        }
    }

    private VvcConfig(List<byte[]> initializationData, int nalUnitLengthFieldLength, String codecs, int bitdepthLuma) {
        this.initializationData = initializationData;
        this.nalUnitLengthFieldLength = nalUnitLengthFieldLength;
        this.codecs = codecs;
        this.bitdepthLuma = bitdepthLuma;
    }
}
