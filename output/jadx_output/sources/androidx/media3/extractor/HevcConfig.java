package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public final class HevcConfig {
    public final int bitdepthChroma;
    public final int bitdepthLuma;
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int decodedHeight;
    public final int decodedWidth;
    public final int height;
    public final List<byte[]> initializationData;
    public final int maxNumReorderPics;
    public final int maxSubLayers;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int stereoMode;
    public final NalUnitUtil.H265VpsData vpsData;
    public final int width;

    public static HevcConfig parse(ParsableByteArray data) throws ParserException {
        return parseImpl(data, false, null);
    }

    public static HevcConfig parseLayered(ParsableByteArray data, NalUnitUtil.H265VpsData vpsData) throws ParserException {
        return parseImpl(data, true, vpsData);
    }

    private static HevcConfig parseImpl(ParsableByteArray data, boolean layered, NalUnitUtil.H265VpsData vpsData) throws ParserException {
        boolean z;
        int lengthSizeMinusOne;
        int i;
        try {
            if (!layered) {
                data.skipBytes(21);
            } else {
                data.skipBytes(4);
            }
            int lengthSizeMinusOne2 = data.readUnsignedByte() & 3;
            int numberOfArrays = data.readUnsignedByte();
            int csdLength = 0;
            int csdStartPosition = data.getPosition();
            int i2 = 0;
            while (true) {
                z = true;
                if (i2 >= numberOfArrays) {
                    break;
                }
                data.skipBytes(1);
                int numberOfNalUnits = data.readUnsignedShort();
                for (int j = 0; j < numberOfNalUnits; j++) {
                    int nalUnitLength = data.readUnsignedShort();
                    csdLength += nalUnitLength + 4;
                    data.skipBytes(nalUnitLength);
                }
                i2++;
            }
            data.setPosition(csdStartPosition);
            byte[] buffer = new byte[csdLength];
            int bufferPosition = 0;
            int maxSubLayers = -1;
            int width = -1;
            int height = -1;
            int decodedWidth = -1;
            int decodedHeight = -1;
            int bitdepthLuma = -1;
            int bitdepthChroma = -1;
            int colorSpace = -1;
            int colorRange = -1;
            int colorTransfer = -1;
            int stereoMode = -1;
            float pixelWidthHeightRatio = 1.0f;
            int maxNumReorderPics = -1;
            String codecs = null;
            NalUnitUtil.H265VpsData currentVpsData = vpsData;
            int maxSubLayers2 = 0;
            while (maxSubLayers2 < numberOfArrays) {
                int nalUnitType = data.readUnsignedByte() & 63;
                int numberOfNalUnits2 = data.readUnsignedShort();
                int j2 = 0;
                NalUnitUtil.H265VpsData currentVpsData2 = currentVpsData;
                while (j2 < numberOfNalUnits2) {
                    int nalUnitLength2 = data.readUnsignedShort();
                    boolean z2 = z;
                    System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, buffer, bufferPosition, NalUnitUtil.NAL_START_CODE.length);
                    int bufferPosition2 = bufferPosition + NalUnitUtil.NAL_START_CODE.length;
                    System.arraycopy(data.getData(), data.getPosition(), buffer, bufferPosition2, nalUnitLength2);
                    if (nalUnitType == 32 && j2 == 0) {
                        currentVpsData2 = NalUnitUtil.parseH265VpsNalUnit(buffer, bufferPosition2, bufferPosition2 + nalUnitLength2);
                        lengthSizeMinusOne = lengthSizeMinusOne2;
                    } else if (nalUnitType != 33 || j2 != 0) {
                        lengthSizeMinusOne = lengthSizeMinusOne2;
                        if (nalUnitType == 39 && j2 == 0) {
                            NalUnitUtil.H265Sei3dRefDisplayInfoData seiData = NalUnitUtil.parseH265Sei3dRefDisplayInfo(buffer, bufferPosition2, bufferPosition2 + nalUnitLength2);
                            if (seiData != null && currentVpsData2 != null) {
                                if (seiData.leftViewId == currentVpsData2.layerInfos.get(0).viewId) {
                                    i = 4;
                                } else {
                                    i = 5;
                                }
                                stereoMode = i;
                            }
                        }
                    } else {
                        NalUnitUtil.H265SpsData spsData = NalUnitUtil.parseH265SpsNalUnit(buffer, bufferPosition2, bufferPosition2 + nalUnitLength2, currentVpsData2);
                        maxSubLayers = spsData.maxSubLayersMinus1 + 1;
                        width = spsData.width;
                        height = spsData.height;
                        decodedWidth = spsData.decodedWidth;
                        decodedHeight = spsData.decodedHeight;
                        bitdepthLuma = spsData.bitDepthLumaMinus8 + 8;
                        bitdepthChroma = spsData.bitDepthChromaMinus8 + 8;
                        colorSpace = spsData.colorSpace;
                        colorRange = spsData.colorRange;
                        colorTransfer = spsData.colorTransfer;
                        pixelWidthHeightRatio = spsData.pixelWidthHeightRatio;
                        maxNumReorderPics = spsData.maxNumReorderPics;
                        if (spsData.profileTierLevel == null) {
                            lengthSizeMinusOne = lengthSizeMinusOne2;
                        } else {
                            lengthSizeMinusOne = lengthSizeMinusOne2;
                            codecs = CodecSpecificDataUtil.buildHevcCodecString(spsData.profileTierLevel.generalProfileSpace, spsData.profileTierLevel.generalTierFlag, spsData.profileTierLevel.generalProfileIdc, spsData.profileTierLevel.generalProfileCompatibilityFlags, spsData.profileTierLevel.constraintBytes, spsData.profileTierLevel.generalLevelIdc);
                        }
                    }
                    bufferPosition = bufferPosition2 + nalUnitLength2;
                    data.skipBytes(nalUnitLength2);
                    j2++;
                    z = z2;
                    lengthSizeMinusOne2 = lengthSizeMinusOne;
                }
                maxSubLayers2++;
                currentVpsData = currentVpsData2;
            }
            int lengthSizeMinusOne3 = lengthSizeMinusOne2;
            List<byte[]> initializationData = csdLength == 0 ? Collections.emptyList() : Collections.singletonList(buffer);
            return new HevcConfig(initializationData, lengthSizeMinusOne3 + 1, maxSubLayers, width, height, decodedWidth, decodedHeight, bitdepthLuma, bitdepthChroma, colorSpace, colorRange, colorTransfer, stereoMode, pixelWidthHeightRatio, maxNumReorderPics, codecs, currentVpsData);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.createForMalformedContainer("Error parsing" + (layered ? "L-HEVC config" : "HEVC config"), e);
        }
    }

    private HevcConfig(List<byte[]> initializationData, int nalUnitLengthFieldLength, int maxSubLayers, int width, int height, int decodedWidth, int decodedHeight, int bitdepthLuma, int bitdepthChroma, int colorSpace, int colorRange, int colorTransfer, int stereoMode, float pixelWidthHeightRatio, int maxNumReorderPics, String codecs, NalUnitUtil.H265VpsData vpsData) {
        this.initializationData = initializationData;
        this.nalUnitLengthFieldLength = nalUnitLengthFieldLength;
        this.maxSubLayers = maxSubLayers;
        this.width = width;
        this.height = height;
        this.decodedWidth = decodedWidth;
        this.decodedHeight = decodedHeight;
        this.bitdepthLuma = bitdepthLuma;
        this.bitdepthChroma = bitdepthChroma;
        this.colorSpace = colorSpace;
        this.colorRange = colorRange;
        this.colorTransfer = colorTransfer;
        this.stereoMode = stereoMode;
        this.pixelWidthHeightRatio = pixelWidthHeightRatio;
        this.maxNumReorderPics = maxNumReorderPics;
        this.codecs = codecs;
        this.vpsData = vpsData;
    }
}
