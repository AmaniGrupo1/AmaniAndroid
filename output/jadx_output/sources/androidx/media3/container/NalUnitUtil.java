package androidx.media3.container;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.DoubleMath;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes21.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    public static final int H264_NAL_UNIT_TYPE_AUD = 9;
    public static final int H264_NAL_UNIT_TYPE_IDR = 5;
    public static final int H264_NAL_UNIT_TYPE_NON_IDR = 1;
    public static final int H264_NAL_UNIT_TYPE_PARTITION_A = 2;
    public static final int H264_NAL_UNIT_TYPE_PPS = 8;
    public static final int H264_NAL_UNIT_TYPE_PREFIX = 14;
    public static final int H264_NAL_UNIT_TYPE_SEI = 6;
    public static final int H264_NAL_UNIT_TYPE_SPS = 7;
    public static final int H264_NAL_UNIT_TYPE_UNSPECIFIED = 24;
    public static final int H265_NAL_UNIT_TYPE_AUD = 35;
    public static final int H265_NAL_UNIT_TYPE_BLA_W_LP = 16;
    public static final int H265_NAL_UNIT_TYPE_CRA = 21;
    public static final int H265_NAL_UNIT_TYPE_PPS = 34;
    public static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    public static final int H265_NAL_UNIT_TYPE_RASL_R = 9;
    public static final int H265_NAL_UNIT_TYPE_SPS = 33;
    public static final int H265_NAL_UNIT_TYPE_SUFFIX_SEI = 40;
    public static final int H265_NAL_UNIT_TYPE_UNSPECIFIED = 48;
    public static final int H265_NAL_UNIT_TYPE_VPS = 32;
    private static final int INVALID_ID = -1;

    @Deprecated
    public static final int NAL_UNIT_TYPE_AUD = 9;

    @Deprecated
    public static final int NAL_UNIT_TYPE_IDR = 5;

    @Deprecated
    public static final int NAL_UNIT_TYPE_NON_IDR = 1;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PARTITION_A = 2;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PPS = 8;

    @Deprecated
    public static final int NAL_UNIT_TYPE_PREFIX = 14;

    @Deprecated
    public static final int NAL_UNIT_TYPE_SEI = 6;

    @Deprecated
    public static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "NalUnitUtil";
    public static final int VVC_NAL_UNIT_TYPE_DCI = 13;
    public static final int VVC_NAL_UNIT_TYPE_OPI = 12;
    public static final int VVC_NAL_UNIT_TYPE_PREFIX_SEI = 23;
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static final class SpsData {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
        public final int constraintsFlagsAndReservedZero2Bits;
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int levelIdc;
        public final int maxNumRefFrames;
        public final int maxNumReorderFrames;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthHeightRatio;
        public final int profileIdc;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int profileIdc, int constraintsFlagsAndReservedZero2Bits, int levelIdc, int seqParameterSetId, int maxNumRefFrames, int width, int height, float pixelWidthHeightRatio, int bitDepthLumaMinus8, int bitDepthChromaMinus8, boolean separateColorPlaneFlag, boolean frameMbsOnlyFlag, int frameNumLength, int picOrderCountType, int picOrderCntLsbLength, boolean deltaPicOrderAlwaysZeroFlag, int colorSpace, int colorRange, int colorTransfer, int maxNumReorderFrames) {
            this.profileIdc = profileIdc;
            this.constraintsFlagsAndReservedZero2Bits = constraintsFlagsAndReservedZero2Bits;
            this.levelIdc = levelIdc;
            this.seqParameterSetId = seqParameterSetId;
            this.maxNumRefFrames = maxNumRefFrames;
            this.width = width;
            this.height = height;
            this.pixelWidthHeightRatio = pixelWidthHeightRatio;
            this.bitDepthLumaMinus8 = bitDepthLumaMinus8;
            this.bitDepthChromaMinus8 = bitDepthChromaMinus8;
            this.separateColorPlaneFlag = separateColorPlaneFlag;
            this.frameMbsOnlyFlag = frameMbsOnlyFlag;
            this.frameNumLength = frameNumLength;
            this.picOrderCountType = picOrderCountType;
            this.picOrderCntLsbLength = picOrderCntLsbLength;
            this.deltaPicOrderAlwaysZeroFlag = deltaPicOrderAlwaysZeroFlag;
            this.colorSpace = colorSpace;
            this.colorRange = colorRange;
            this.colorTransfer = colorTransfer;
            this.maxNumReorderFrames = maxNumReorderFrames;
        }
    }

    public static final class H265NalHeader {
        public final int layerId;
        public final int nalUnitType;
        public final int temporalId;

        public H265NalHeader(int nalUnitType, int layerId, int temporalId) {
            this.nalUnitType = nalUnitType;
            this.layerId = layerId;
            this.temporalId = temporalId;
        }
    }

    public static final class H265LayerInfo {
        public final int layerIdInVps;
        public final int viewId;

        public H265LayerInfo(int layerIdInVps, int viewId) {
            this.layerIdInVps = layerIdInVps;
            this.viewId = viewId;
        }
    }

    public static final class H265ProfileTierLevel {
        public final int[] constraintBytes;
        public final int generalLevelIdc;
        public final int generalProfileCompatibilityFlags;
        public final int generalProfileIdc;
        public final int generalProfileSpace;
        public final boolean generalTierFlag;

        public H265ProfileTierLevel(int generalProfileSpace, boolean generalTierFlag, int generalProfileIdc, int generalProfileCompatibilityFlags, int[] constraintBytes, int generalLevelIdc) {
            this.generalProfileSpace = generalProfileSpace;
            this.generalTierFlag = generalTierFlag;
            this.generalProfileIdc = generalProfileIdc;
            this.generalProfileCompatibilityFlags = generalProfileCompatibilityFlags;
            this.constraintBytes = constraintBytes;
            this.generalLevelIdc = generalLevelIdc;
        }
    }

    public static final class H265ProfileTierLevelsAndIndices {
        public final int[] indices;
        public final ImmutableList<H265ProfileTierLevel> profileTierLevels;

        public H265ProfileTierLevelsAndIndices(List<H265ProfileTierLevel> profileTierLevels, int[] indices) {
            this.profileTierLevels = ImmutableList.copyOf((Collection) profileTierLevels);
            this.indices = indices;
        }
    }

    public static final class H265RepFormat {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int chromaFormatIdc;
        public final int height;
        public final int width;

        public H265RepFormat(int chromaFormatIdc, int bitDepthLumaMinus8, int bitDepthChromaMinus8, int width, int height) {
            this.chromaFormatIdc = chromaFormatIdc;
            this.bitDepthLumaMinus8 = bitDepthLumaMinus8;
            this.bitDepthChromaMinus8 = bitDepthChromaMinus8;
            this.width = width;
            this.height = height;
        }
    }

    public static final class H265RepFormatsAndIndices {
        public final int[] indices;
        public final ImmutableList<H265RepFormat> repFormats;

        public H265RepFormatsAndIndices(List<H265RepFormat> repFormats, int[] indices) {
            this.repFormats = ImmutableList.copyOf((Collection) repFormats);
            this.indices = indices;
        }
    }

    public static final class H265VideoSignalInfo {
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;

        public H265VideoSignalInfo(int colorSpace, int colorRange, int colorTransfer) {
            this.colorSpace = colorSpace;
            this.colorRange = colorRange;
            this.colorTransfer = colorTransfer;
        }
    }

    public static final class H265VideoSignalInfosAndIndices {
        public final int[] indices;
        public final ImmutableList<H265VideoSignalInfo> videoSignalInfos;

        public H265VideoSignalInfosAndIndices(List<H265VideoSignalInfo> videoSignalInfos, int[] indices) {
            this.videoSignalInfos = ImmutableList.copyOf((Collection) videoSignalInfos);
            this.indices = indices;
        }
    }

    public static final class H265VpsData {
        public final ImmutableList<H265LayerInfo> layerInfos;
        public final H265NalHeader nalHeader;
        public final H265ProfileTierLevelsAndIndices profileTierLevelsAndIndices;
        public final H265RepFormatsAndIndices repFormatsAndIndices;
        public final H265VideoSignalInfosAndIndices videoSignalInfosAndIndices;

        public H265VpsData(H265NalHeader nalHeader, List<H265LayerInfo> layerInfos, H265ProfileTierLevelsAndIndices profileTierLevelsAndIndices, H265RepFormatsAndIndices repFormatsAndIndices, H265VideoSignalInfosAndIndices videoSignalInfosAndIndices) {
            this.nalHeader = nalHeader;
            this.layerInfos = layerInfos != null ? ImmutableList.copyOf((Collection) layerInfos) : ImmutableList.of();
            this.profileTierLevelsAndIndices = profileTierLevelsAndIndices;
            this.repFormatsAndIndices = repFormatsAndIndices;
            this.videoSignalInfosAndIndices = videoSignalInfosAndIndices;
        }
    }

    public static final class H265SpsData {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int chromaFormatIdc;
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
        public final int decodedHeight;
        public final int decodedWidth;
        public final int height;
        public final int maxNumReorderPics;
        public final int maxSubLayersMinus1;
        public final H265NalHeader nalHeader;
        public final float pixelWidthHeightRatio;
        public final H265ProfileTierLevel profileTierLevel;
        public final int seqParameterSetId;
        public final int width;

        public H265SpsData(H265NalHeader nalHeader, int maxSubLayersMinus1, H265ProfileTierLevel profileTierLevel, int chromaFormatIdc, int bitDepthLumaMinus8, int bitDepthChromaMinus8, int seqParameterSetId, int width, int height, int decodedWidth, int decodedHeight, float pixelWidthHeightRatio, int maxNumReorderPics, int colorSpace, int colorRange, int colorTransfer) {
            this.nalHeader = nalHeader;
            this.maxSubLayersMinus1 = maxSubLayersMinus1;
            this.profileTierLevel = profileTierLevel;
            this.chromaFormatIdc = chromaFormatIdc;
            this.bitDepthLumaMinus8 = bitDepthLumaMinus8;
            this.bitDepthChromaMinus8 = bitDepthChromaMinus8;
            this.seqParameterSetId = seqParameterSetId;
            this.width = width;
            this.height = height;
            this.pixelWidthHeightRatio = pixelWidthHeightRatio;
            this.maxNumReorderPics = maxNumReorderPics;
            this.colorSpace = colorSpace;
            this.colorRange = colorRange;
            this.colorTransfer = colorTransfer;
            this.decodedWidth = decodedWidth;
            this.decodedHeight = decodedHeight;
        }
    }

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int picParameterSetId, int seqParameterSetId, boolean bottomFieldPicOrderInFramePresentFlag) {
            this.picParameterSetId = picParameterSetId;
            this.seqParameterSetId = seqParameterSetId;
            this.bottomFieldPicOrderInFramePresentFlag = bottomFieldPicOrderInFramePresentFlag;
        }
    }

    public static final class H265Sei3dRefDisplayInfoData {
        public final int exponentRefDisplayWidth;
        public final int exponentRefViewingDist;
        public final int leftViewId;
        public final int mantissaRefDisplayWidth;
        public final int mantissaRefViewingDist;
        public final int numRefDisplays;
        public final int precRefDisplayWidth;
        public final int precRefViewingDist;
        public final int rightViewId;

        public H265Sei3dRefDisplayInfoData(int precRefDisplayWidth, int precRefViewingDist, int numRefDisplays, int leftViewId, int rightViewId, int exponentRefDisplayWidth, int mantissaRefDisplayWidth, int exponentRefViewingDist, int mantissaRefViewingDist) {
            this.precRefDisplayWidth = precRefDisplayWidth;
            this.precRefViewingDist = precRefViewingDist;
            this.numRefDisplays = numRefDisplays;
            this.leftViewId = leftViewId;
            this.rightViewId = rightViewId;
            this.exponentRefDisplayWidth = exponentRefDisplayWidth;
            this.mantissaRefDisplayWidth = mantissaRefDisplayWidth;
            this.exponentRefViewingDist = exponentRefViewingDist;
            this.mantissaRefViewingDist = mantissaRefViewingDist;
        }
    }

    public static int unescapeStream(byte[] data, int limit) {
        int unescapedLength;
        synchronized (scratchEscapePositionsLock) {
            int position = 0;
            int scratchEscapeCount = 0;
            while (position < limit) {
                try {
                    position = findNextUnescapeIndex(data, position, limit);
                    if (position < limit) {
                        if (scratchEscapePositions.length <= scratchEscapeCount) {
                            scratchEscapePositions = Arrays.copyOf(scratchEscapePositions, scratchEscapePositions.length * 2);
                        }
                        scratchEscapePositions[scratchEscapeCount] = position;
                        position += 3;
                        scratchEscapeCount++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            unescapedLength = limit - scratchEscapeCount;
            int escapedPosition = 0;
            int unescapedPosition = 0;
            for (int i = 0; i < scratchEscapeCount; i++) {
                int nextEscapePosition = scratchEscapePositions[i];
                int copyLength = nextEscapePosition - escapedPosition;
                System.arraycopy(data, escapedPosition, data, unescapedPosition, copyLength);
                int unescapedPosition2 = unescapedPosition + copyLength;
                int unescapedPosition3 = unescapedPosition2 + 1;
                data[unescapedPosition2] = 0;
                unescapedPosition = unescapedPosition3 + 1;
                data[unescapedPosition3] = 0;
                escapedPosition += copyLength + 3;
            }
            int i2 = unescapedLength - unescapedPosition;
            System.arraycopy(data, escapedPosition, data, unescapedPosition, i2);
        }
        return unescapedLength;
    }

    public static void discardToSps(ByteBuffer data) {
        int length = data.position();
        int consecutiveZeros = 0;
        for (int offset = 0; offset + 1 < length; offset++) {
            int value = data.get(offset) & 255;
            if (consecutiveZeros == 3) {
                if (value == 1 && (data.get(offset + 1) & Ascii.US) == 7) {
                    ByteBuffer offsetData = data.duplicate();
                    offsetData.position(offset - 3);
                    offsetData.limit(length);
                    data.position(0);
                    data.put(offsetData);
                    return;
                }
            } else if (value == 0) {
                consecutiveZeros++;
            }
            if (value != 0) {
                consecutiveZeros = 0;
            }
        }
        data.clear();
    }

    @Deprecated
    public static boolean isNalUnitSei(String mimeType, byte nalUnitHeaderFirstByte) {
        if (MimeTypes.VIDEO_H264.equals(mimeType) && (nalUnitHeaderFirstByte & Ascii.US) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(mimeType) && ((nalUnitHeaderFirstByte & 126) >> 1) == 39;
    }

    @Deprecated
    public static boolean isNalUnitSei(Format format, byte nalUnitHeaderFirstByte) {
        return isNalUnitSei(format, new byte[]{nalUnitHeaderFirstByte}, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isNalUnitSei(Format format, byte[] data, int offset) {
        String mimeType = getNalStructureMimeType(format);
        if (mimeType == null) {
            return false;
        }
        switch (mimeType) {
            case "video/avc":
                if ((data[offset] & Ascii.US) == 6) {
                    break;
                }
                break;
            case "video/hevc":
                int nalUnitType = data[offset];
                if (((nalUnitType & WebSocketProtocol.PAYLOAD_SHORT) >> 1) == 39) {
                    break;
                }
                break;
            case "video/vvc":
                int nalUnitType2 = (data[offset + 1] & 248) >> 3;
                if (nalUnitType2 == 23) {
                    break;
                }
                break;
        }
        return false;
    }

    public static int getNalUnitType(byte[] data, int offset) {
        return data[offset + 3] & Ascii.US;
    }

    public static boolean isH264NalUnitDependedOn(byte nalUnitHeaderFirstByte) {
        int nalRefIdc = (nalUnitHeaderFirstByte & 96) >> 5;
        if (nalRefIdc != 0) {
            return true;
        }
        int nalUnitType = nalUnitHeaderFirstByte & 31;
        if (nalUnitType != 1 && nalUnitType != 9 && nalUnitType != 14) {
            return true;
        }
        return false;
    }

    public static int numberOfBytesInNalUnitHeader(Format format) {
        String mimeType = getNalStructureMimeType(format);
        if (Objects.equals(mimeType, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        if (Objects.equals(mimeType, MimeTypes.VIDEO_H265) || Objects.equals(mimeType, MimeTypes.VIDEO_H266)) {
            return 2;
        }
        return 0;
    }

    public static boolean isDependedOn(byte[] data, int offset, int length, Format format) {
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H264)) {
            return isH264NalUnitDependedOn(data[offset]);
        }
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_H265)) {
            return isH265NalUnitDependedOn(data, offset, length, format);
        }
        return true;
    }

    private static boolean isH265NalUnitDependedOn(byte[] data, int offset, int length, Format format) {
        H265NalHeader header = parseH265NalHeader(new ParsableNalUnitBitArray(data, offset, offset + length));
        if (header.nalUnitType == 35) {
            return false;
        }
        boolean isSubLayerNonReferencePicture = header.nalUnitType <= 14 && header.nalUnitType % 2 == 0;
        return (isSubLayerNonReferencePicture && header.temporalId == format.maxSubLayers - 1) ? false : true;
    }

    public static int getH265NalUnitType(byte[] data, int offset) {
        return (data[offset + 3] & 126) >> 1;
    }

    public static SpsData parseSpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        return parseSpsNalUnitPayload(nalData, nalOffset + 1, nalLimit);
    }

    public static SpsData parseSpsNalUnitPayload(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i, i2);
        int bits = parsableNalUnitBitArray.readBits(8);
        int bits2 = parsableNalUnitBitArray.readBits(8);
        int bits3 = parsableNalUnitBitArray.readBits(8);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        boolean bit = false;
        if (bits != 100 && bits != 110 && bits != 122 && bits != 244 && bits != 44 && bits != 83 && bits != 86 && bits != 118 && bits != 128 && bits != 138) {
            i3 = 1;
            i4 = 0;
            i5 = 0;
        } else {
            int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            if (unsignedExpGolombCodedInt2 == 3) {
                bit = parsableNalUnitBitArray.readBit();
            }
            int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
            if (parsableNalUnitBitArray.readBit()) {
                int i15 = unsignedExpGolombCodedInt2 != 3 ? 8 : 12;
                int i16 = 0;
                while (i16 < i15) {
                    if (parsableNalUnitBitArray.readBit()) {
                        skipScalingList(parsableNalUnitBitArray, i16 < 6 ? 16 : 64);
                    }
                    i16++;
                }
            }
            i3 = unsignedExpGolombCodedInt2;
            i4 = unsignedExpGolombCodedInt3;
            i5 = unsignedExpGolombCodedInt4;
        }
        int unsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
        int unsignedExpGolombCodedInt6 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt7 = 0;
        boolean bit2 = false;
        if (unsignedExpGolombCodedInt6 == 0) {
            unsignedExpGolombCodedInt7 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
            i6 = 1;
        } else if (unsignedExpGolombCodedInt6 != 1) {
            i6 = 1;
        } else {
            bit2 = parsableNalUnitBitArray.readBit();
            parsableNalUnitBitArray.readSignedExpGolombCodedInt();
            parsableNalUnitBitArray.readSignedExpGolombCodedInt();
            i6 = 1;
            long unsignedExpGolombCodedInt8 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            for (int i17 = 0; i17 < unsignedExpGolombCodedInt8; i17++) {
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            }
        }
        boolean z2 = bit;
        int unsignedExpGolombCodedInt9 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        int unsignedExpGolombCodedInt10 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        int unsignedExpGolombCodedInt11 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        boolean bit3 = parsableNalUnitBitArray.readBit();
        int i18 = (2 - (bit3 ? 1 : 0)) * unsignedExpGolombCodedInt11;
        if (!bit3) {
            parsableNalUnitBitArray.skipBit();
        }
        parsableNalUnitBitArray.skipBit();
        int i19 = unsignedExpGolombCodedInt10 * 16;
        int i20 = i18 * 16;
        if (!parsableNalUnitBitArray.readBit()) {
            z = z2;
        } else {
            int unsignedExpGolombCodedInt12 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt13 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt14 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt15 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            if (i3 == 0) {
                i14 = 2 - (bit3 ? 1 : 0);
                i13 = 1;
                z = z2;
            } else {
                z = z2;
                int i21 = i6;
                i13 = i3 == 3 ? i6 : 2;
                i14 = (2 - (bit3 ? 1 : 0)) * (i3 == i21 ? 2 : i21);
            }
            i19 -= (unsignedExpGolombCodedInt12 + unsignedExpGolombCodedInt13) * i13;
            i20 -= (unsignedExpGolombCodedInt14 + unsignedExpGolombCodedInt15) * i14;
        }
        int iIsoColorPrimariesToColorSpace = -1;
        int i22 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        float f = 1.0f;
        if ((bits == 44 || bits == 86 || bits == 100 || bits == 110 || bits == 122 || bits == 244) && (bits2 & 16) != 0) {
            i7 = 0;
        } else {
            i7 = 16;
        }
        if (!parsableNalUnitBitArray.readBit()) {
            i8 = i7;
            i9 = -1;
            i10 = -1;
            i11 = -1;
        } else {
            if (!parsableNalUnitBitArray.readBit()) {
                i12 = i7;
            } else {
                i12 = i7;
                int bits4 = parsableNalUnitBitArray.readBits(8);
                if (bits4 == 255) {
                    int bits5 = parsableNalUnitBitArray.readBits(16);
                    int bits6 = parsableNalUnitBitArray.readBits(16);
                    if (bits5 != 0 && bits6 != 0) {
                        f = bits5 / bits6;
                    }
                } else if (bits4 < ASPECT_RATIO_IDC_VALUES.length) {
                    f = ASPECT_RATIO_IDC_VALUES[bits4];
                } else {
                    Log.w(TAG, "Unexpected aspect_ratio_idc value: " + bits4);
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBit();
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBits(3);
                i22 = parsableNalUnitBitArray.readBit() ? 1 : 2;
                if (parsableNalUnitBitArray.readBit()) {
                    int bits7 = parsableNalUnitBitArray.readBits(8);
                    int bits8 = parsableNalUnitBitArray.readBits(8);
                    parsableNalUnitBitArray.skipBits(8);
                    iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(bits7);
                    iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(bits8);
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBits(65);
            }
            boolean bit4 = parsableNalUnitBitArray.readBit();
            if (bit4) {
                skipHrdParameters(parsableNalUnitBitArray);
            }
            boolean bit5 = parsableNalUnitBitArray.readBit();
            if (bit5) {
                skipHrdParameters(parsableNalUnitBitArray);
            }
            if (bit4 || bit5) {
                parsableNalUnitBitArray.skipBit();
            }
            parsableNalUnitBitArray.skipBit();
            if (!parsableNalUnitBitArray.readBit()) {
                i8 = i12;
                i9 = iIsoColorPrimariesToColorSpace;
                i10 = i22;
                i11 = iIsoTransferCharacteristicsToColorTransfer;
            } else {
                parsableNalUnitBitArray.skipBit();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt16 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                i8 = unsignedExpGolombCodedInt16;
                i9 = iIsoColorPrimariesToColorSpace;
                i10 = i22;
                i11 = iIsoTransferCharacteristicsToColorTransfer;
            }
        }
        return new SpsData(bits, bits2, bits3, unsignedExpGolombCodedInt, unsignedExpGolombCodedInt9, i19, i20, f, i4, i5, z, bit3, unsignedExpGolombCodedInt5, unsignedExpGolombCodedInt6, unsignedExpGolombCodedInt7, bit2, i9, i10, i11, i8);
    }

    public static H265VpsData parseH265VpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        ParsableNalUnitBitArray data = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        H265NalHeader nalHeader = parseH265NalHeader(data);
        return parseH265VpsNalUnitPayload(data, nalHeader);
    }

    private static H265NalHeader parseH265NalHeader(ParsableNalUnitBitArray data) {
        data.skipBit();
        int nalUnitType = data.readBits(6);
        int layerId = data.readBits(6);
        int temporalId = data.readBits(3) - 1;
        return new H265NalHeader(nalUnitType, layerId, temporalId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static H265VpsData parseH265VpsNalUnitPayload(ParsableNalUnitBitArray parsableNalUnitBitArray, H265NalHeader h265NalHeader) {
        int[] iArr;
        int[] iArr2;
        H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices;
        int i;
        int i2;
        int i3;
        ImmutableList immutableList;
        int[] iArr3;
        int i4;
        int[] iArr4;
        int[] iArr5;
        boolean z;
        ImmutableList immutableList2;
        int[] iArr6;
        int[][] iArr7;
        int i5;
        int i6;
        boolean z2;
        boolean z3;
        parsableNalUnitBitArray.skipBits(4);
        boolean bit = parsableNalUnitBitArray.readBit();
        boolean bit2 = parsableNalUnitBitArray.readBit();
        int bits = parsableNalUnitBitArray.readBits(6) + 1;
        int bits2 = parsableNalUnitBitArray.readBits(3);
        parsableNalUnitBitArray.skipBits(17);
        H265ProfileTierLevel h265ProfileTierLevel = parseH265ProfileTierLevel(parsableNalUnitBitArray, true, bits2, null);
        for (int i7 = parsableNalUnitBitArray.readBit() ? 0 : bits2; i7 <= bits2; i7++) {
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        }
        int bits3 = parsableNalUnitBitArray.readBits(6);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        ImmutableList immutableListOf = ImmutableList.of(h265ProfileTierLevel);
        H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices = new H265ProfileTierLevelsAndIndices(immutableListOf, new int[1]);
        boolean z4 = bits >= 2 && unsignedExpGolombCodedInt >= 2;
        boolean z5 = bit && bit2;
        boolean z6 = bits3 + 1 >= bits;
        if (z4 && z5 && z6) {
            int i8 = 1;
            int i9 = 6;
            int[][] iArr8 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, unsignedExpGolombCodedInt, bits3 + 1);
            int[] iArr9 = new int[unsignedExpGolombCodedInt];
            int[] iArr10 = new int[unsignedExpGolombCodedInt];
            iArr8[0][0] = 0;
            iArr9[0] = 1;
            iArr10[0] = 0;
            for (int i10 = 1; i10 < unsignedExpGolombCodedInt; i10++) {
                int i11 = 0;
                for (int i12 = 0; i12 <= bits3; i12++) {
                    if (parsableNalUnitBitArray.readBit()) {
                        iArr8[i10][i11] = i12;
                        iArr10[i10] = i12;
                        i11++;
                    }
                    iArr9[i10] = i11;
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBits(64);
                if (parsableNalUnitBitArray.readBit()) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int i13 = 0;
                boolean z7 = z6;
                while (i13 < unsignedExpGolombCodedInt2) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    if (i13 == 0 || parsableNalUnitBitArray.readBit()) {
                        z2 = z7;
                        z3 = true;
                    } else {
                        z2 = z7;
                        z3 = false;
                    }
                    skipH265HrdParameters(parsableNalUnitBitArray, z3, bits2);
                    i13++;
                    z7 = z2;
                }
            }
            if (!parsableNalUnitBitArray.readBit()) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            parsableNalUnitBitArray.byteAlign();
            H265ProfileTierLevel h265ProfileTierLevel2 = parseH265ProfileTierLevel(parsableNalUnitBitArray, false, bits2, h265ProfileTierLevel);
            boolean bit3 = parsableNalUnitBitArray.readBit();
            boolean[] zArr = new boolean[16];
            int i14 = 0;
            for (int i15 = 0; i15 < 16; i15++) {
                zArr[i15] = parsableNalUnitBitArray.readBit();
                if (zArr[i15]) {
                    i14++;
                }
            }
            if (i14 == 0 || !zArr[1]) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            int[] iArr11 = new int[i14];
            int i16 = 0;
            while (true) {
                iArr = iArr11;
                if (i16 >= i14 - (bit3 ? 1 : 0)) {
                    break;
                }
                iArr[i16] = parsableNalUnitBitArray.readBits(3);
                i16++;
                iArr11 = iArr;
            }
            int[] iArr12 = new int[i14 + 1];
            if (!bit3) {
                iArr2 = iArr12;
            } else {
                int i17 = 1;
                while (i17 < i14) {
                    int[] iArr13 = iArr12;
                    for (int i18 = 0; i18 < i17; i18++) {
                        iArr13[i17] = iArr13[i17] + iArr[i18] + 1;
                    }
                    i17++;
                    iArr12 = iArr13;
                }
                iArr2 = iArr12;
                iArr2[i14] = 6;
            }
            int[][] iArr14 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, bits, i14);
            int[] iArr15 = new int[bits];
            iArr15[0] = 0;
            boolean bit4 = parsableNalUnitBitArray.readBit();
            int i19 = 1;
            while (i19 < bits) {
                if (bit4) {
                    i6 = i19;
                    iArr15[i6] = parsableNalUnitBitArray.readBits(i9);
                } else {
                    i6 = i19;
                    iArr15[i6] = i6;
                }
                if (!bit3) {
                    int i20 = 0;
                    while (i20 < i14) {
                        int i21 = i20;
                        iArr14[i6][i21] = parsableNalUnitBitArray.readBits(iArr[i20] + 1);
                        i20 = i21 + 1;
                    }
                } else {
                    for (int i22 = 0; i22 < i14; i22++) {
                        iArr14[i6][i22] = (iArr15[i6] & ((1 << iArr2[i22 + 1]) - 1)) >> iArr2[i22];
                    }
                }
                i19 = i6 + 1;
                i9 = 6;
            }
            int[] iArr16 = new int[bits3 + 1];
            int i23 = 1;
            int i24 = 0;
            while (true) {
                boolean z8 = bit2;
                if (i24 >= bits) {
                    break;
                }
                iArr16[iArr15[i24]] = -1;
                int i25 = 0;
                int i26 = 0;
                while (true) {
                    iArr7 = iArr8;
                    if (i25 >= 16) {
                        break;
                    }
                    if (zArr[i25]) {
                        if (i25 == i8) {
                            iArr16[iArr15[i24]] = iArr14[i24][i26];
                        }
                        i26++;
                    }
                    i25++;
                    iArr8 = iArr7;
                    i8 = 1;
                }
                if (i24 <= 0) {
                    i5 = i24;
                } else {
                    boolean z9 = true;
                    int i27 = 0;
                    while (true) {
                        if (i27 >= i24) {
                            i5 = i24;
                            break;
                        }
                        i5 = i24;
                        boolean z10 = z9;
                        if (iArr16[iArr15[i24]] != iArr16[iArr15[i27]]) {
                            i27++;
                            i24 = i5;
                            z9 = z10;
                        } else {
                            z9 = false;
                            break;
                        }
                    }
                    if (z9) {
                        i23++;
                    }
                }
                i24 = i5 + 1;
                bit2 = z8;
                iArr8 = iArr7;
                i8 = 1;
            }
            int[][] iArr17 = iArr8;
            int bits4 = parsableNalUnitBitArray.readBits(4);
            if (i23 < 2 || bits4 == 0) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            int[] iArr18 = new int[i23];
            for (int i28 = 0; i28 < i23; i28++) {
                iArr18[i28] = parsableNalUnitBitArray.readBits(bits4);
            }
            int[] iArr19 = new int[bits3 + 1];
            int i29 = i23;
            int i30 = 0;
            while (i30 < bits) {
                int i31 = i30;
                iArr19[Math.min(iArr15[i31], bits3)] = i31;
                i30 = i31 + 1;
            }
            ImmutableList.Builder builder = ImmutableList.builder();
            int i32 = 0;
            while (i32 <= bits3) {
                int i33 = i32;
                int[] iArr20 = iArr19;
                int iMin = Math.min(iArr16[i33], i29 - 1);
                builder.add(new H265LayerInfo(iArr20[i33], iMin >= 0 ? iArr18[iMin] : -1));
                i32 = i33 + 1;
                iArr19 = iArr20;
                iArr18 = iArr18;
            }
            ImmutableList immutableListBuild = builder.build();
            if (((H265LayerInfo) immutableListBuild.get(0)).viewId == -1) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            int i34 = -1;
            int i35 = 1;
            while (true) {
                if (i35 > bits3) {
                    break;
                }
                ImmutableList.Builder builder2 = builder;
                int i36 = i34;
                if (((H265LayerInfo) immutableListBuild.get(i35)).viewId == -1) {
                    i35++;
                    i34 = i36;
                    builder = builder2;
                } else {
                    i34 = i35;
                    break;
                }
            }
            if (i34 == -1) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            boolean[][] zArr2 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, bits, bits);
            boolean[][] zArr3 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, bits, bits);
            int i37 = 1;
            while (i37 < bits) {
                boolean[][] zArr4 = zArr3;
                for (int i38 = 0; i38 < i37; i38++) {
                    boolean[] zArr5 = zArr2[i37];
                    boolean[] zArr6 = zArr4[i37];
                    boolean bit5 = parsableNalUnitBitArray.readBit();
                    zArr6[i38] = bit5;
                    zArr5[i38] = bit5;
                }
                i37++;
                zArr3 = zArr4;
            }
            boolean[][] zArr7 = zArr3;
            int i39 = 1;
            while (i39 < bits) {
                int i40 = 0;
                while (true) {
                    iArr6 = iArr15;
                    if (i40 < bits - 1) {
                        int i41 = 0;
                        while (true) {
                            if (i41 >= i39) {
                                break;
                            }
                            if (!zArr7[i39][i41] || !zArr7[i41][i40]) {
                                i41++;
                            } else {
                                zArr7[i39][i40] = true;
                                break;
                            }
                        }
                        i40++;
                        iArr15 = iArr6;
                    }
                }
                i39++;
                iArr15 = iArr6;
            }
            int[] iArr21 = iArr15;
            int[] iArr22 = new int[bits3 + 1];
            int i42 = 0;
            while (i42 < bits) {
                int i43 = 0;
                int[] iArr23 = iArr22;
                for (int i44 = 0; i44 < i42; i44++) {
                    i43 += zArr2[i42][i44] ? 1 : 0;
                }
                iArr23[iArr21[i42]] = i43;
                i42++;
                iArr22 = iArr23;
            }
            int[] iArr24 = iArr22;
            int i45 = 0;
            for (int i46 = 0; i46 < bits; i46++) {
                if (iArr24[iArr21[i46]] == 0) {
                    i45++;
                }
            }
            if (i45 > 1) {
                return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
            }
            int[] iArr25 = new int[bits];
            int[] iArr26 = new int[unsignedExpGolombCodedInt];
            if (parsableNalUnitBitArray.readBit()) {
                int i47 = 0;
                while (i47 < bits) {
                    int i48 = i47;
                    iArr25[i48] = parsableNalUnitBitArray.readBits(3);
                    i47 = i48 + 1;
                }
            } else {
                Arrays.fill(iArr25, 0, bits, bits2);
            }
            int i49 = 0;
            while (i49 < unsignedExpGolombCodedInt) {
                int i50 = i49;
                int[] iArr27 = iArr25;
                int iMax = 0;
                int i51 = 0;
                while (true) {
                    immutableList2 = immutableListOf;
                    if (i51 < iArr9[i50]) {
                        iMax = Math.max(iMax, iArr27[((H265LayerInfo) immutableListBuild.get(iArr17[i50][i51])).layerIdInVps]);
                        i51++;
                        immutableListOf = immutableList2;
                    }
                }
                iArr26[i50] = iMax + 1;
                i49 = i50 + 1;
                immutableListOf = immutableList2;
                iArr25 = iArr27;
            }
            if (parsableNalUnitBitArray.readBit()) {
                for (int i52 = 0; i52 < bits - 1; i52++) {
                    for (int i53 = i52 + 1; i53 < bits; i53++) {
                        if (zArr2[i53][i52]) {
                            parsableNalUnitBitArray.skipBits(3);
                        }
                    }
                }
            }
            parsableNalUnitBitArray.skipBit();
            int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
            ImmutableList.Builder builder3 = ImmutableList.builder();
            builder3.add(h265ProfileTierLevel);
            if (unsignedExpGolombCodedInt3 > 1) {
                builder3.add(h265ProfileTierLevel2);
                H265ProfileTierLevel h265ProfileTierLevel3 = h265ProfileTierLevel2;
                int i54 = 2;
                while (i54 < unsignedExpGolombCodedInt3) {
                    int i55 = i54;
                    H265ProfileTierLevel h265ProfileTierLevel4 = parseH265ProfileTierLevel(parsableNalUnitBitArray, parsableNalUnitBitArray.readBit(), bits2, h265ProfileTierLevel3);
                    builder3.add(h265ProfileTierLevel4);
                    h265ProfileTierLevel3 = h265ProfileTierLevel4;
                    i54 = i55 + 1;
                }
            }
            ImmutableList immutableListBuild2 = builder3.build();
            int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + unsignedExpGolombCodedInt;
            if (unsignedExpGolombCodedInt4 <= unsignedExpGolombCodedInt) {
                int bits5 = parsableNalUnitBitArray.readBits(2);
                boolean[][] zArr8 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, unsignedExpGolombCodedInt4, bits3 + 1);
                int[] iArr28 = new int[unsignedExpGolombCodedInt4];
                int[] iArr29 = new int[unsignedExpGolombCodedInt4];
                int i56 = 0;
                boolean z11 = z4;
                while (i56 < unsignedExpGolombCodedInt) {
                    int i57 = i56;
                    iArr28[i57] = 0;
                    iArr29[i57] = iArr10[i57];
                    if (bits5 == 0) {
                        iArr4 = iArr28;
                        iArr5 = iArr10;
                        z = z11;
                        Arrays.fill(zArr8[i57], 0, iArr9[i57], true);
                        iArr4[i57] = iArr9[i57];
                    } else {
                        iArr4 = iArr28;
                        iArr5 = iArr10;
                        z = z11;
                        if (bits5 == 1) {
                            int i58 = iArr5[i57];
                            for (int i59 = 0; i59 < iArr9[i57]; i59++) {
                                zArr8[i57][i59] = iArr17[i57][i59] == i58;
                            }
                            iArr4[i57] = 1;
                        } else {
                            zArr8[0][0] = true;
                            iArr4[0] = 1;
                        }
                    }
                    i56 = i57 + 1;
                    iArr28 = iArr4;
                    iArr10 = iArr5;
                    z11 = z;
                }
                int[] iArr30 = iArr28;
                int[] iArr31 = new int[bits3 + 1];
                boolean[][] zArr9 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, unsignedExpGolombCodedInt4, bits3 + 1);
                int i60 = 0;
                int i61 = 1;
                while (i61 < unsignedExpGolombCodedInt4) {
                    int i62 = i60;
                    if (bits5 != 2) {
                        i = bits5;
                    } else {
                        int i63 = 0;
                        while (true) {
                            i = bits5;
                            if (i63 >= iArr9[i61]) {
                                break;
                            }
                            zArr8[i61][i63] = parsableNalUnitBitArray.readBit();
                            iArr30[i61] = iArr30[i61] + (zArr8[i61][i63] ? 1 : 0);
                            if (zArr8[i61][i63]) {
                                iArr29[i61] = iArr17[i61][i63];
                            }
                            i63++;
                            bits5 = i;
                        }
                    }
                    if (i62 == 0 && iArr17[i61][0] == 0 && zArr8[i61][0]) {
                        int i64 = 1;
                        int i65 = i62;
                        while (true) {
                            i4 = i65;
                            if (i64 >= iArr9[i61]) {
                                break;
                            }
                            if (iArr17[i61][i64] != i34 || !zArr8[i61][i34]) {
                                i65 = i4;
                            } else {
                                i65 = i61;
                            }
                            i64++;
                        }
                        i60 = i4;
                    } else {
                        i60 = i62;
                    }
                    int i66 = 0;
                    while (true) {
                        i2 = i34;
                        if (i66 >= iArr9[i61]) {
                            break;
                        }
                        if (unsignedExpGolombCodedInt3 > 1) {
                            zArr9[i61][i66] = zArr8[i61][i66];
                            iArr3 = iArr31;
                            immutableList = immutableListBuild2;
                            int iLog2 = DoubleMath.log2(unsignedExpGolombCodedInt3, RoundingMode.CEILING);
                            if (zArr9[i61][i66]) {
                                i3 = unsignedExpGolombCodedInt3;
                            } else {
                                int i67 = ((H265LayerInfo) immutableListBuild.get(iArr17[i61][i66])).layerIdInVps;
                                int i68 = 0;
                                while (true) {
                                    if (i68 >= i66) {
                                        i3 = unsignedExpGolombCodedInt3;
                                        break;
                                    }
                                    i3 = unsignedExpGolombCodedInt3;
                                    if (!zArr7[i67][((H265LayerInfo) immutableListBuild.get(iArr17[i61][i68])).layerIdInVps]) {
                                        i68++;
                                        unsignedExpGolombCodedInt3 = i3;
                                    } else {
                                        zArr9[i61][i66] = true;
                                        break;
                                    }
                                }
                            }
                            if (zArr9[i61][i66]) {
                                if (i60 > 0 && i61 == i60) {
                                    iArr3[i66] = parsableNalUnitBitArray.readBits(iLog2);
                                } else {
                                    parsableNalUnitBitArray.skipBits(iLog2);
                                }
                            }
                        } else {
                            i3 = unsignedExpGolombCodedInt3;
                            immutableList = immutableListBuild2;
                            iArr3 = iArr31;
                        }
                        i66++;
                        immutableListBuild2 = immutableList;
                        i34 = i2;
                        iArr31 = iArr3;
                        unsignedExpGolombCodedInt3 = i3;
                    }
                    int i69 = unsignedExpGolombCodedInt3;
                    ImmutableList immutableList3 = immutableListBuild2;
                    int[] iArr32 = iArr31;
                    if (iArr30[i61] == 1 && iArr24[iArr29[i61]] > 0) {
                        parsableNalUnitBitArray.skipBit();
                    }
                    i61++;
                    immutableListBuild2 = immutableList3;
                    bits5 = i;
                    i34 = i2;
                    iArr31 = iArr32;
                    unsignedExpGolombCodedInt3 = i69;
                }
                ImmutableList immutableList4 = immutableListBuild2;
                int[] iArr33 = iArr31;
                if (i60 == 0) {
                    return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
                }
                H265RepFormatsAndIndices h265RepFormatsAndIndices = parseH265RepFormatsAndIndices(parsableNalUnitBitArray, bits);
                parsableNalUnitBitArray.skipBits(2);
                for (int i70 = 1; i70 < bits; i70++) {
                    if (iArr24[iArr21[i70]] == 0) {
                        parsableNalUnitBitArray.skipBit();
                    }
                }
                skipH265DpbSize(parsableNalUnitBitArray, unsignedExpGolombCodedInt4, iArr26, iArr9, zArr9);
                skipToH265VuiPresentFlagAfterDpbSize(parsableNalUnitBitArray, bits, zArr2);
                if (!parsableNalUnitBitArray.readBit()) {
                    h265VideoSignalInfosAndIndices = null;
                } else {
                    parsableNalUnitBitArray.byteAlign();
                    h265VideoSignalInfosAndIndices = parseH265VideoSignalInfosAndIndices(parsableNalUnitBitArray, bits, unsignedExpGolombCodedInt, iArr26);
                }
                return new H265VpsData(h265NalHeader, immutableListBuild, new H265ProfileTierLevelsAndIndices(immutableList4, iArr33), h265RepFormatsAndIndices, h265VideoSignalInfosAndIndices);
            }
            return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
        }
        return new H265VpsData(h265NalHeader, null, h265ProfileTierLevelsAndIndices, null, null);
    }

    public static H265SpsData parseH265SpsNalUnit(byte[] nalData, int nalOffset, int nalLimit, H265VpsData vpsData) {
        H265NalHeader nalHeader = parseH265NalHeader(new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit));
        return parseH265SpsNalUnitPayload(nalData, nalOffset + 2, nalLimit, nalHeader, vpsData);
    }

    public static H265SpsData parseH265SpsNalUnitPayload(byte[] nalData, int nalOffset, int nalLimit, H265NalHeader nalHeader, H265VpsData vpsData) {
        int layerIdInVps;
        int profileTierLevelIdx;
        int decodedHeight;
        int spsRepFormatIdx;
        int maxNumReorderPics;
        int frameHeight;
        int colorSpace;
        int videoSignalInfoIdx;
        int spsRepFormatIdx2;
        int spsRepFormatIdx3;
        ParsableNalUnitBitArray data = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        data.skipBits(4);
        int maxSubLayersMinus1 = data.readBits(3);
        boolean multiLayerExtSpsFlag = nalHeader.layerId != 0 && maxSubLayersMinus1 == 7;
        if (vpsData != null && !vpsData.layerInfos.isEmpty()) {
            int layerId = Math.min(nalHeader.layerId, vpsData.layerInfos.size() - 1);
            int layerIdInVps2 = vpsData.layerInfos.get(layerId).layerIdInVps;
            layerIdInVps = layerIdInVps2;
        } else {
            layerIdInVps = 0;
        }
        H265ProfileTierLevel profileTierLevel = null;
        if (!multiLayerExtSpsFlag) {
            data.skipBit();
            profileTierLevel = parseH265ProfileTierLevel(data, true, maxSubLayersMinus1, null);
        } else if (vpsData != null && vpsData.profileTierLevelsAndIndices.profileTierLevels.size() > (profileTierLevelIdx = vpsData.profileTierLevelsAndIndices.indices[layerIdInVps])) {
            profileTierLevel = vpsData.profileTierLevelsAndIndices.profileTierLevels.get(profileTierLevelIdx);
        }
        int seqParameterSetId = data.readUnsignedExpGolombCodedInt();
        int chromaFormatIdc = 0;
        int frameWidth = 0;
        int frameHeight2 = 0;
        int decodedHeight2 = 0;
        int bitDepthLumaMinus8 = 0;
        if (multiLayerExtSpsFlag) {
            if (!data.readBit()) {
                spsRepFormatIdx2 = -1;
            } else {
                int spsRepFormatIdx4 = data.readBits(8);
                spsRepFormatIdx2 = spsRepFormatIdx4;
            }
            if (vpsData == null || vpsData.repFormatsAndIndices == null) {
                decodedHeight = 0;
                spsRepFormatIdx = 0;
            } else {
                if (spsRepFormatIdx2 != -1) {
                    spsRepFormatIdx3 = spsRepFormatIdx2;
                } else {
                    spsRepFormatIdx3 = vpsData.repFormatsAndIndices.indices[layerIdInVps];
                }
                if (spsRepFormatIdx3 == -1 || vpsData.repFormatsAndIndices.repFormats.size() <= spsRepFormatIdx3) {
                    decodedHeight = 0;
                    spsRepFormatIdx = 0;
                } else {
                    H265RepFormat repFormat = vpsData.repFormatsAndIndices.repFormats.get(spsRepFormatIdx3);
                    chromaFormatIdc = repFormat.chromaFormatIdc;
                    int decodedWidth = repFormat.width;
                    int decodedHeight3 = repFormat.height;
                    frameWidth = decodedWidth;
                    frameHeight2 = decodedHeight3;
                    int bitDepthLumaMinus82 = repFormat.bitDepthLumaMinus8;
                    int bitDepthChromaMinus8 = repFormat.bitDepthChromaMinus8;
                    bitDepthLumaMinus8 = bitDepthLumaMinus82;
                    spsRepFormatIdx = bitDepthChromaMinus8;
                    decodedHeight2 = decodedHeight3;
                    decodedHeight = decodedWidth;
                }
            }
        } else {
            chromaFormatIdc = data.readUnsignedExpGolombCodedInt();
            if (chromaFormatIdc == 3) {
                data.skipBit();
            }
            int decodedWidth2 = data.readUnsignedExpGolombCodedInt();
            int decodedHeight4 = data.readUnsignedExpGolombCodedInt();
            if (data.readBit()) {
                int confWinLeftOffset = data.readUnsignedExpGolombCodedInt();
                int confWinRightOffset = data.readUnsignedExpGolombCodedInt();
                int confWinTopOffset = data.readUnsignedExpGolombCodedInt();
                int confWinBottomOffset = data.readUnsignedExpGolombCodedInt();
                frameWidth = applyConformanceWindowToWidth(decodedWidth2, chromaFormatIdc, confWinLeftOffset, confWinRightOffset);
                frameHeight2 = applyConformanceWindowToHeight(decodedHeight4, chromaFormatIdc, confWinTopOffset, confWinBottomOffset);
            } else {
                frameWidth = decodedWidth2;
                frameHeight2 = decodedHeight4;
            }
            bitDepthLumaMinus8 = data.readUnsignedExpGolombCodedInt();
            int bitDepthChromaMinus82 = data.readUnsignedExpGolombCodedInt();
            decodedHeight2 = decodedHeight4;
            decodedHeight = decodedWidth2;
            spsRepFormatIdx = bitDepthChromaMinus82;
        }
        int log2MaxPicOrderCntLsbMinus4 = data.readUnsignedExpGolombCodedInt();
        int maxNumReorderPics2 = -1;
        if (!multiLayerExtSpsFlag) {
            for (int i = data.readBit() ? 0 : maxSubLayersMinus1; i <= maxSubLayersMinus1; i++) {
                data.readUnsignedExpGolombCodedInt();
                maxNumReorderPics2 = Math.max(data.readUnsignedExpGolombCodedInt(), maxNumReorderPics2);
                data.readUnsignedExpGolombCodedInt();
            }
        }
        data.readUnsignedExpGolombCodedInt();
        data.readUnsignedExpGolombCodedInt();
        data.readUnsignedExpGolombCodedInt();
        data.readUnsignedExpGolombCodedInt();
        data.readUnsignedExpGolombCodedInt();
        data.readUnsignedExpGolombCodedInt();
        if (data.readBit()) {
            boolean inferScalingListFlag = false;
            if (multiLayerExtSpsFlag) {
                inferScalingListFlag = data.readBit();
            }
            if (inferScalingListFlag) {
                data.skipBits(6);
            } else if (data.readBit()) {
                skipH265ScalingList(data);
            }
        }
        data.skipBits(2);
        if (data.readBit()) {
            data.skipBits(8);
            data.readUnsignedExpGolombCodedInt();
            data.readUnsignedExpGolombCodedInt();
            data.skipBit();
        }
        skipH265ShortTermReferencePictureSets(data);
        if (data.readBit()) {
            int numLongTermRefPicsSps = data.readUnsignedExpGolombCodedInt();
            for (int i2 = 0; i2 < numLongTermRefPicsSps; i2++) {
                int ltRefPicPocLsbSpsLength = log2MaxPicOrderCntLsbMinus4 + 4;
                data.skipBits(ltRefPicPocLsbSpsLength + 1);
            }
        }
        data.skipBits(2);
        int colorSpace2 = -1;
        int colorRange = -1;
        int colorTransfer = -1;
        float pixelWidthHeightRatio = 1.0f;
        if (!data.readBit()) {
            maxNumReorderPics = maxNumReorderPics2;
            int i3 = frameHeight2;
            frameHeight = -1;
            colorSpace = i3;
        } else {
            if (!data.readBit()) {
                maxNumReorderPics = maxNumReorderPics2;
            } else {
                maxNumReorderPics = maxNumReorderPics2;
                int aspectRatioIdc = data.readBits(8);
                if (aspectRatioIdc == 255) {
                    int sarWidth = data.readBits(16);
                    int sarHeight = data.readBits(16);
                    if (sarWidth != 0 && sarHeight != 0) {
                        pixelWidthHeightRatio = sarWidth / sarHeight;
                    }
                } else if (aspectRatioIdc < ASPECT_RATIO_IDC_VALUES.length) {
                    pixelWidthHeightRatio = ASPECT_RATIO_IDC_VALUES[aspectRatioIdc];
                } else {
                    Log.w(TAG, "Unexpected aspect_ratio_idc value: " + aspectRatioIdc);
                }
            }
            if (data.readBit()) {
                data.skipBit();
            }
            if (data.readBit()) {
                data.skipBits(3);
                int colorRange2 = data.readBit() ? 1 : 2;
                if (!data.readBit()) {
                    colorRange = colorRange2;
                } else {
                    int colorPrimaries = data.readBits(8);
                    int transferCharacteristics = data.readBits(8);
                    data.skipBits(8);
                    int colorSpace3 = ColorInfo.isoColorPrimariesToColorSpace(colorPrimaries);
                    int colorPrimaries2 = ColorInfo.isoTransferCharacteristicsToColorTransfer(transferCharacteristics);
                    colorTransfer = colorPrimaries2;
                    colorSpace2 = colorSpace3;
                    colorRange = colorRange2;
                }
            } else if (vpsData != null && vpsData.videoSignalInfosAndIndices != null && vpsData.videoSignalInfosAndIndices.videoSignalInfos.size() > (videoSignalInfoIdx = vpsData.videoSignalInfosAndIndices.indices[layerIdInVps])) {
                H265VideoSignalInfo videoSignalInfo = vpsData.videoSignalInfosAndIndices.videoSignalInfos.get(videoSignalInfoIdx);
                int colorSpace4 = videoSignalInfo.colorSpace;
                colorRange = videoSignalInfo.colorRange;
                colorTransfer = videoSignalInfo.colorTransfer;
                colorSpace2 = colorSpace4;
            }
            if (data.readBit()) {
                data.readUnsignedExpGolombCodedInt();
                data.readUnsignedExpGolombCodedInt();
            }
            data.skipBit();
            if (!data.readBit()) {
                int i4 = frameHeight2;
                frameHeight = colorSpace2;
                colorSpace = i4;
            } else {
                int frameHeight3 = frameHeight2 * 2;
                frameHeight = colorSpace2;
                colorSpace = frameHeight3;
            }
        }
        int seqParameterSetId2 = decodedHeight2;
        return new H265SpsData(nalHeader, maxSubLayersMinus1, profileTierLevel, chromaFormatIdc, bitDepthLumaMinus8, spsRepFormatIdx, seqParameterSetId, frameWidth, colorSpace, decodedHeight, seqParameterSetId2, pixelWidthHeightRatio, maxNumReorderPics, frameHeight, colorRange, colorTransfer);
    }

    public static PpsData parsePpsNalUnit(byte[] nalData, int nalOffset, int nalLimit) {
        return parsePpsNalUnitPayload(nalData, nalOffset + 1, nalLimit);
    }

    public static PpsData parsePpsNalUnitPayload(byte[] nalData, int nalOffset, int nalLimit) {
        ParsableNalUnitBitArray data = new ParsableNalUnitBitArray(nalData, nalOffset, nalLimit);
        int picParameterSetId = data.readUnsignedExpGolombCodedInt();
        int seqParameterSetId = data.readUnsignedExpGolombCodedInt();
        data.skipBit();
        boolean bottomFieldPicOrderInFramePresentFlag = data.readBit();
        return new PpsData(picParameterSetId, seqParameterSetId, bottomFieldPicOrderInFramePresentFlag);
    }

    public static H265Sei3dRefDisplayInfoData parseH265Sei3dRefDisplayInfo(byte[] nalData, int nalOffset, int nalLimit) {
        int precRefViewingDist;
        int seiRbspPos;
        int refViewDistBits;
        int seiRbspPos2 = nalOffset + 2;
        int last1BitBytePos = nalLimit - 1;
        while (nalData[last1BitBytePos] == 0 && last1BitBytePos > seiRbspPos2) {
            last1BitBytePos--;
        }
        if (nalData[last1BitBytePos] != 0 && last1BitBytePos > seiRbspPos2) {
            ParsableNalUnitBitArray data = new ParsableNalUnitBitArray(nalData, seiRbspPos2, last1BitBytePos + 1);
            while (data.canReadBits(16)) {
                int payloadType = 0;
                int nextByte = data.readBits(8);
                while (nextByte == 255) {
                    payloadType += 255;
                    nextByte = data.readBits(8);
                }
                int payloadType2 = payloadType + nextByte;
                int payloadSize = 0;
                int nextByte2 = data.readBits(8);
                while (nextByte2 == 255) {
                    payloadSize += 255;
                    nextByte2 = data.readBits(8);
                }
                int payloadSize2 = payloadSize + nextByte2;
                if (payloadSize2 != 0 && data.canReadBits(payloadSize2)) {
                    if (payloadType2 == 176) {
                        int precRefDisplayWidth = data.readUnsignedExpGolombCodedInt();
                        boolean refViewingDistanceFlag = data.readBit();
                        if (!refViewingDistanceFlag) {
                            precRefViewingDist = 0;
                        } else {
                            int precRefViewingDist2 = data.readUnsignedExpGolombCodedInt();
                            precRefViewingDist = precRefViewingDist2;
                        }
                        int numRefDisplaysMinus1 = data.readUnsignedExpGolombCodedInt();
                        int leftViewId = -1;
                        int leftViewId2 = 0;
                        int exponentRefViewingDist = -1;
                        int exponentRefViewingDist2 = -1;
                        int mantissaRefViewingDist = -1;
                        int mantissaRefDisplayWidth = -1;
                        int rightViewId = -1;
                        while (leftViewId2 <= numRefDisplaysMinus1) {
                            leftViewId = data.readUnsignedExpGolombCodedInt();
                            rightViewId = data.readUnsignedExpGolombCodedInt();
                            int exponentRefDisplayWidth = data.readBits(6);
                            if (exponentRefDisplayWidth == 63) {
                                return null;
                            }
                            int refDispWidthBits = exponentRefDisplayWidth == 0 ? Math.max(0, precRefDisplayWidth - 30) : Math.max(0, (exponentRefDisplayWidth + precRefDisplayWidth) - 31);
                            mantissaRefDisplayWidth = data.readBits(refDispWidthBits);
                            if (refViewingDistanceFlag) {
                                int exponentRefViewingDist3 = data.readBits(6);
                                if (exponentRefViewingDist3 == 63) {
                                    return null;
                                }
                                if (exponentRefViewingDist3 == 0) {
                                    seiRbspPos = seiRbspPos2;
                                    refViewDistBits = Math.max(0, precRefViewingDist - 30);
                                } else {
                                    seiRbspPos = seiRbspPos2;
                                    refViewDistBits = Math.max(0, (exponentRefViewingDist3 + precRefViewingDist) - 31);
                                }
                                mantissaRefViewingDist = data.readBits(refViewDistBits);
                                exponentRefViewingDist = exponentRefViewingDist3;
                            } else {
                                seiRbspPos = seiRbspPos2;
                            }
                            if (data.readBit()) {
                                data.skipBits(10);
                            }
                            leftViewId2++;
                            exponentRefViewingDist2 = exponentRefDisplayWidth;
                            seiRbspPos2 = seiRbspPos;
                        }
                        return new H265Sei3dRefDisplayInfoData(precRefDisplayWidth, precRefViewingDist, numRefDisplaysMinus1 + 1, leftViewId, rightViewId, exponentRefViewingDist2, mantissaRefDisplayWidth, exponentRefViewingDist, mantissaRefViewingDist);
                    }
                    data.skipBits(payloadSize2 * 8);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public static int findNalUnit(byte[] data, int startOffset, int endOffset, boolean[] prefixFlags) {
        boolean z;
        boolean z2;
        int length = endOffset - startOffset;
        Preconditions.checkState(length >= 0);
        if (length == 0) {
            return endOffset;
        }
        if (prefixFlags[0]) {
            clearPrefixFlags(prefixFlags);
            return startOffset - 3;
        }
        if (length > 1 && prefixFlags[1] && data[startOffset] == 1) {
            clearPrefixFlags(prefixFlags);
            return startOffset - 2;
        }
        if (length > 2 && prefixFlags[2] && data[startOffset] == 0 && data[startOffset + 1] == 1) {
            clearPrefixFlags(prefixFlags);
            return startOffset - 1;
        }
        int limit = endOffset - 1;
        int i = startOffset + 2;
        while (i < limit) {
            if ((data[i] & 254) == 0) {
                if (data[i - 2] == 0 && data[i - 1] == 0 && data[i] == 1) {
                    clearPrefixFlags(prefixFlags);
                    return i - 2;
                }
                i -= 2;
            }
            i += 3;
        }
        if (length > 2) {
            z = data[endOffset + (-3)] == 0 && data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 1;
        } else if (length == 2) {
            z = prefixFlags[2] && data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 1;
        } else {
            z = prefixFlags[1] && data[endOffset + (-1)] == 1;
        }
        prefixFlags[0] = z;
        if (length > 1) {
            z2 = data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 0;
        } else {
            z2 = prefixFlags[2] && data[endOffset + (-1)] == 0;
        }
        prefixFlags[1] = z2;
        prefixFlags[2] = data[endOffset + (-1)] == 0;
        return endOffset;
    }

    public static void clearPrefixFlags(boolean[] prefixFlags) {
        prefixFlags[0] = false;
        prefixFlags[1] = false;
        prefixFlags[2] = false;
    }

    public static String getH265BaseLayerCodecsString(List<byte[]> csdBuffers) {
        for (int i = 0; i < csdBuffers.size(); i++) {
            byte[] buffer = csdBuffers.get(i);
            int limit = buffer.length;
            if (limit > 3) {
                ImmutableList<Integer> nalUnitPositions = findNalUnitPositions(buffer);
                for (int j = 0; j < nalUnitPositions.size(); j++) {
                    if (nalUnitPositions.get(j).intValue() + 3 < limit) {
                        ParsableNalUnitBitArray data = new ParsableNalUnitBitArray(buffer, nalUnitPositions.get(j).intValue() + 3, limit);
                        H265NalHeader nalHeader = parseH265NalHeader(data);
                        if (nalHeader.nalUnitType == 33 && nalHeader.layerId == 0) {
                            return createCodecStringFromH265SpsPalyoad(data);
                        }
                    }
                }
            }
        }
        return null;
    }

    private static ImmutableList<Integer> findNalUnitPositions(byte[] data) {
        int offset = 0;
        boolean[] prefixFlags = new boolean[3];
        ImmutableList.Builder<Integer> nalUnitPositions = ImmutableList.builder();
        while (offset < data.length) {
            int nalUnitOffset = findNalUnit(data, offset, data.length, prefixFlags);
            if (nalUnitOffset != data.length) {
                nalUnitPositions.add(Integer.valueOf(nalUnitOffset));
            }
            offset = nalUnitOffset + 3;
        }
        return nalUnitPositions.build();
    }

    private static String createCodecStringFromH265SpsPalyoad(ParsableNalUnitBitArray data) {
        data.skipBits(4);
        int maxSubLayersMinus1 = data.readBits(3);
        data.skipBit();
        H265ProfileTierLevel profileTierLevel = parseH265ProfileTierLevel(data, true, maxSubLayersMinus1, null);
        return CodecSpecificDataUtil.buildHevcCodecString(profileTierLevel.generalProfileSpace, profileTierLevel.generalTierFlag, profileTierLevel.generalProfileIdc, profileTierLevel.generalProfileCompatibilityFlags, profileTierLevel.constraintBytes, profileTierLevel.generalLevelIdc);
    }

    private static int findNextUnescapeIndex(byte[] bytes, int offset, int limit) {
        for (int i = offset; i < limit - 2; i++) {
            if (bytes[i] == 0 && bytes[i + 1] == 0 && bytes[i + 2] == 3) {
                return i;
            }
        }
        return limit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    private static void skipH265HrdParameters(ParsableNalUnitBitArray parsableNalUnitBitArray, boolean z, int i) {
        ?? r0 = 0;
        ?? r1 = 0;
        boolean bit = false;
        if (z) {
            boolean bit2 = parsableNalUnitBitArray.readBit();
            boolean bit3 = parsableNalUnitBitArray.readBit();
            r0 = bit2;
            r1 = bit3;
            if (bit2 || bit3) {
                bit = parsableNalUnitBitArray.readBit();
                if (bit) {
                    parsableNalUnitBitArray.skipBits(19);
                }
                parsableNalUnitBitArray.skipBits(8);
                if (bit) {
                    parsableNalUnitBitArray.skipBits(4);
                }
                parsableNalUnitBitArray.skipBits(15);
                r0 = bit2;
                r1 = bit3;
            }
        }
        for (int i2 = 0; i2 <= i; i2++) {
            boolean bit4 = parsableNalUnitBitArray.readBit();
            boolean bit5 = bit4;
            boolean bit6 = false;
            int unsignedExpGolombCodedInt = 0;
            if (!bit4) {
                bit5 = parsableNalUnitBitArray.readBit();
            }
            if (bit5) {
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            } else {
                bit6 = parsableNalUnitBitArray.readBit();
            }
            if (!bit6) {
                unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            }
            int i3 = 0 + r0 + r1;
            for (int i4 = 0; i4 < i3; i4++) {
                for (int i5 = 0; i5 <= unsignedExpGolombCodedInt; i5++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    if (bit) {
                        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    }
                    parsableNalUnitBitArray.skipBit();
                }
            }
        }
    }

    private static H265ProfileTierLevel parseH265ProfileTierLevel(ParsableNalUnitBitArray data, boolean profilePresentFlag, int maxSubLayersMinus1, H265ProfileTierLevel prevProfileTierLevel) {
        int generalProfileSpace;
        boolean generalTierFlag;
        int generalProfileIdc;
        int generalProfileCompatibilityFlags;
        int[] constraintBytes;
        int[] constraintBytes2 = new int[6];
        if (profilePresentFlag) {
            int generalProfileSpace2 = data.readBits(2);
            boolean generalTierFlag2 = data.readBit();
            int generalProfileIdc2 = data.readBits(5);
            int generalProfileCompatibilityFlags2 = 0;
            for (int i = 0; i < 32; i++) {
                if (data.readBit()) {
                    generalProfileCompatibilityFlags2 |= 1 << i;
                }
            }
            for (int i2 = 0; i2 < constraintBytes2.length; i2++) {
                constraintBytes2[i2] = data.readBits(8);
            }
            generalProfileSpace = generalProfileSpace2;
            generalTierFlag = generalTierFlag2;
            generalProfileIdc = generalProfileIdc2;
            generalProfileCompatibilityFlags = generalProfileCompatibilityFlags2;
            constraintBytes = constraintBytes2;
        } else if (prevProfileTierLevel == null) {
            generalProfileSpace = 0;
            generalTierFlag = false;
            generalProfileIdc = 0;
            generalProfileCompatibilityFlags = 0;
            constraintBytes = constraintBytes2;
        } else {
            int generalProfileSpace3 = prevProfileTierLevel.generalProfileSpace;
            boolean generalTierFlag3 = prevProfileTierLevel.generalTierFlag;
            int generalProfileIdc3 = prevProfileTierLevel.generalProfileIdc;
            int generalProfileCompatibilityFlags3 = prevProfileTierLevel.generalProfileCompatibilityFlags;
            generalProfileSpace = generalProfileSpace3;
            generalTierFlag = generalTierFlag3;
            generalProfileIdc = generalProfileIdc3;
            generalProfileCompatibilityFlags = generalProfileCompatibilityFlags3;
            constraintBytes = prevProfileTierLevel.constraintBytes;
        }
        int generalLevelIdc = data.readBits(8);
        int toSkip = 0;
        for (int i3 = 0; i3 < maxSubLayersMinus1; i3++) {
            if (data.readBit()) {
                toSkip += 88;
            }
            if (data.readBit()) {
                toSkip += 8;
            }
        }
        data.skipBits(toSkip);
        if (maxSubLayersMinus1 > 0) {
            data.skipBits((8 - maxSubLayersMinus1) * 2);
        }
        return new H265ProfileTierLevel(generalProfileSpace, generalTierFlag, generalProfileIdc, generalProfileCompatibilityFlags, constraintBytes, generalLevelIdc);
    }

    private static int applyConformanceWindowToWidth(int width, int chromaFormatIdc, int offsetLeft, int offsetRight) {
        int subWidthC = 2;
        if (chromaFormatIdc != 1 && chromaFormatIdc != 2) {
            subWidthC = 1;
        }
        return width - ((offsetLeft + offsetRight) * subWidthC);
    }

    private static int applyConformanceWindowToHeight(int height, int chromaFormatIdc, int offsetTop, int offsetBottom) {
        int subHeightC = chromaFormatIdc == 1 ? 2 : 1;
        return height - ((offsetTop + offsetBottom) * subHeightC);
    }

    private static H265RepFormatsAndIndices parseH265RepFormatsAndIndices(ParsableNalUnitBitArray data, int maxLayers) {
        int numRepFormats = data.readUnsignedExpGolombCodedInt() + 1;
        ImmutableList.Builder<H265RepFormat> repFormats = ImmutableList.builderWithExpectedSize(numRepFormats);
        int[] repFormatIndices = new int[maxLayers];
        for (int i = 0; i < numRepFormats; i++) {
            repFormats.add(parseH265RepFormat(data));
        }
        if (numRepFormats > 1 && data.readBit()) {
            int bitLen = DoubleMath.log2(numRepFormats, RoundingMode.CEILING);
            for (int i2 = 1; i2 < maxLayers; i2++) {
                repFormatIndices[i2] = data.readBits(bitLen);
            }
        } else {
            for (int i3 = 1; i3 < maxLayers; i3++) {
                repFormatIndices[i3] = Math.min(i3, numRepFormats - 1);
            }
        }
        return new H265RepFormatsAndIndices(repFormats.build(), repFormatIndices);
    }

    private static H265RepFormat parseH265RepFormat(ParsableNalUnitBitArray data) {
        int chromaFormatIdc;
        int bitDepthLumaMinus8;
        int bitDepthChromaMinus8;
        int frameHeight;
        int frameWidth;
        int frameWidth2 = data.readBits(16);
        int frameHeight2 = data.readBits(16);
        if (!data.readBit()) {
            chromaFormatIdc = 0;
            bitDepthLumaMinus8 = 0;
            bitDepthChromaMinus8 = 0;
        } else {
            int chromaFormatIdc2 = data.readBits(2);
            if (chromaFormatIdc2 == 3) {
                data.skipBit();
            }
            int bitDepthLumaMinus82 = data.readBits(4);
            int bitDepthChromaMinus82 = data.readBits(4);
            chromaFormatIdc = chromaFormatIdc2;
            bitDepthLumaMinus8 = bitDepthLumaMinus82;
            bitDepthChromaMinus8 = bitDepthChromaMinus82;
        }
        if (!data.readBit()) {
            frameHeight = frameHeight2;
            frameWidth = frameWidth2;
        } else {
            int confWinLeftOffset = data.readUnsignedExpGolombCodedInt();
            int confWinRightOffset = data.readUnsignedExpGolombCodedInt();
            int confWinTopOffset = data.readUnsignedExpGolombCodedInt();
            int confWinBottomOffset = data.readUnsignedExpGolombCodedInt();
            int frameWidth3 = applyConformanceWindowToWidth(frameWidth2, chromaFormatIdc, confWinLeftOffset, confWinRightOffset);
            frameHeight = applyConformanceWindowToHeight(frameHeight2, chromaFormatIdc, confWinTopOffset, confWinBottomOffset);
            frameWidth = frameWidth3;
        }
        return new H265RepFormat(chromaFormatIdc, bitDepthLumaMinus8, bitDepthChromaMinus8, frameWidth, frameHeight);
    }

    private static void skipH265DpbSize(ParsableNalUnitBitArray data, int numOutputLayerSets, int[] maxSubLayersInLayerSet, int[] numLayersInIdList, boolean[][] necessaryLayerFlag) {
        boolean subLayerDpbInfoPresentFlag;
        for (int i = 1; i < numOutputLayerSets; i++) {
            boolean subLayerFlagInfoPresentFlag = data.readBit();
            int j = 0;
            while (j < maxSubLayersInLayerSet[i]) {
                if (j > 0 && subLayerFlagInfoPresentFlag) {
                    subLayerDpbInfoPresentFlag = data.readBit();
                } else {
                    subLayerDpbInfoPresentFlag = j == 0;
                }
                if (subLayerDpbInfoPresentFlag) {
                    for (int k = 0; k < numLayersInIdList[i]; k++) {
                        if (necessaryLayerFlag[i][k]) {
                            data.readUnsignedExpGolombCodedInt();
                        }
                    }
                    data.readUnsignedExpGolombCodedInt();
                    data.readUnsignedExpGolombCodedInt();
                }
                j++;
            }
        }
    }

    private static void skipToH265VuiPresentFlagAfterDpbSize(ParsableNalUnitBitArray data, int maxLayers, boolean[][] directDependencyFlag) {
        int directDepTypeLen = data.readUnsignedExpGolombCodedInt() + 2;
        if (data.readBit()) {
            data.skipBits(directDepTypeLen);
        } else {
            for (int i = 1; i < maxLayers; i++) {
                for (int j = 0; j < i; j++) {
                    if (directDependencyFlag[i][j]) {
                        data.skipBits(directDepTypeLen);
                    }
                }
            }
        }
        int nonVuiExtensionLen = data.readUnsignedExpGolombCodedInt();
        for (int i2 = 1; i2 <= nonVuiExtensionLen; i2++) {
            data.skipBits(8);
        }
    }

    private static H265VideoSignalInfosAndIndices parseH265VideoSignalInfosAndIndices(ParsableNalUnitBitArray data, int maxLayers, int numLayerSets, int[] maxSubLayersInLayerSet) {
        boolean crossLayerIrapAlignedFlag = true;
        if (!data.readBit()) {
            crossLayerIrapAlignedFlag = data.readBit();
        }
        if (crossLayerIrapAlignedFlag) {
            data.skipBit();
        }
        boolean bitRatePresentVpsFlag = data.readBit();
        boolean picRatePresentVpsFlag = data.readBit();
        if (bitRatePresentVpsFlag || picRatePresentVpsFlag) {
            for (int i = 0; i < numLayerSets; i++) {
                for (int j = 0; j < maxSubLayersInLayerSet[i]; j++) {
                    boolean bitRatePresentFlag = false;
                    boolean picRatePresentFlag = false;
                    if (bitRatePresentVpsFlag) {
                        bitRatePresentFlag = data.readBit();
                    }
                    if (picRatePresentVpsFlag) {
                        picRatePresentFlag = data.readBit();
                    }
                    if (bitRatePresentFlag) {
                        data.skipBits(32);
                    }
                    if (picRatePresentFlag) {
                        data.skipBits(18);
                    }
                }
            }
        }
        int numVideoSignalInfos = maxLayers;
        boolean videoSignalInfoIdxPresentFlag = data.readBit();
        if (videoSignalInfoIdxPresentFlag) {
            numVideoSignalInfos = data.readBits(4) + 1;
        }
        ImmutableList.Builder<H265VideoSignalInfo> videoSignalInfos = ImmutableList.builderWithExpectedSize(numVideoSignalInfos);
        int[] videoSignalInfoIdices = new int[maxLayers];
        for (int i2 = 0; i2 < numVideoSignalInfos; i2++) {
            videoSignalInfos.add(parseH265VideoSignalInfo(data));
        }
        if (videoSignalInfoIdxPresentFlag && numVideoSignalInfos > 1) {
            for (int i3 = 0; i3 < maxLayers; i3++) {
                videoSignalInfoIdices[i3] = data.readBits(4);
            }
        }
        return new H265VideoSignalInfosAndIndices(videoSignalInfos.build(), videoSignalInfoIdices);
    }

    private static H265VideoSignalInfo parseH265VideoSignalInfo(ParsableNalUnitBitArray data) {
        data.skipBits(3);
        int colorRange = data.readBit() ? 1 : 2;
        int colorSpace = ColorInfo.isoColorPrimariesToColorSpace(data.readBits(8));
        int colorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(data.readBits(8));
        data.skipBits(8);
        return new H265VideoSignalInfo(colorSpace, colorRange, colorTransfer);
    }

    private static void skipScalingList(ParsableNalUnitBitArray bitArray, int size) {
        int lastScale = 8;
        int nextScale = 8;
        for (int i = 0; i < size; i++) {
            if (nextScale != 0) {
                int deltaScale = bitArray.readSignedExpGolombCodedInt();
                nextScale = ((lastScale + deltaScale) + 256) % 256;
            }
            lastScale = nextScale == 0 ? lastScale : nextScale;
        }
    }

    private static void skipHrdParameters(ParsableNalUnitBitArray data) {
        int codedPictureBufferCount = data.readUnsignedExpGolombCodedInt() + 1;
        data.skipBits(8);
        for (int i = 0; i < codedPictureBufferCount; i++) {
            data.readUnsignedExpGolombCodedInt();
            data.readUnsignedExpGolombCodedInt();
            data.skipBit();
        }
        data.skipBits(20);
    }

    private static void skipH265ScalingList(ParsableNalUnitBitArray bitArray) {
        for (int sizeId = 0; sizeId < 4; sizeId++) {
            int matrixId = 0;
            while (matrixId < 6) {
                int i = 1;
                if (!bitArray.readBit()) {
                    bitArray.readUnsignedExpGolombCodedInt();
                } else {
                    int coefNum = Math.min(64, 1 << ((sizeId << 1) + 4));
                    if (sizeId > 1) {
                        bitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i2 = 0; i2 < coefNum; i2++) {
                        bitArray.readSignedExpGolombCodedInt();
                    }
                }
                if (sizeId == 3) {
                    i = 3;
                }
                matrixId += i;
            }
        }
    }

    private static void skipH265ShortTermReferencePictureSets(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int i;
        int unsignedExpGolombCodedInt;
        int unsignedExpGolombCodedInt2;
        int[] iArrCopyOf;
        int[] iArrCopyOf2;
        int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int i2 = -1;
        int i3 = -1;
        boolean z = false;
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        int i4 = 0;
        while (i4 < unsignedExpGolombCodedInt3) {
            if ((i4 == 0 || !parsableNalUnitBitArray.readBit()) ? z : true) {
                int i5 = i2 + i3;
                int unsignedExpGolombCodedInt4 = (1 - ((parsableNalUnitBitArray.readBit() ? 1 : 0) * 2)) * (parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1);
                boolean[] zArr = new boolean[i5 + 1];
                for (int i6 = 0; i6 <= i5; i6++) {
                    if (!parsableNalUnitBitArray.readBit()) {
                        zArr[i6] = parsableNalUnitBitArray.readBit();
                    } else {
                        zArr[i6] = true;
                    }
                }
                int i7 = 0;
                int[] iArr3 = new int[i5 + 1];
                int[] iArr4 = new int[i5 + 1];
                for (int i8 = i3 - 1; i8 >= 0; i8--) {
                    int i9 = iArr2[i8] + unsignedExpGolombCodedInt4;
                    if (i9 < 0 && zArr[i2 + i8]) {
                        iArr3[i7] = i9;
                        i7++;
                    }
                }
                if (unsignedExpGolombCodedInt4 < 0 && zArr[i5]) {
                    iArr3[i7] = unsignedExpGolombCodedInt4;
                    i7++;
                }
                for (int i10 = 0; i10 < i2; i10++) {
                    int i11 = iArr[i10] + unsignedExpGolombCodedInt4;
                    if (i11 < 0 && zArr[i10]) {
                        iArr3[i7] = i11;
                        i7++;
                    }
                }
                unsignedExpGolombCodedInt = i7;
                iArrCopyOf = Arrays.copyOf(iArr3, unsignedExpGolombCodedInt);
                int i12 = 0;
                for (int i13 = i2 - 1; i13 >= 0; i13--) {
                    int i14 = iArr[i13] + unsignedExpGolombCodedInt4;
                    if (i14 > 0 && zArr[i13]) {
                        iArr4[i12] = i14;
                        i12++;
                    }
                }
                if (unsignedExpGolombCodedInt4 > 0 && zArr[i5]) {
                    iArr4[i12] = unsignedExpGolombCodedInt4;
                    i12++;
                }
                i = unsignedExpGolombCodedInt3;
                for (int i15 = 0; i15 < i3; i15++) {
                    int i16 = iArr2[i15] + unsignedExpGolombCodedInt4;
                    if (i16 > 0 && zArr[i2 + i15]) {
                        iArr4[i12] = i16;
                        i12++;
                    }
                }
                unsignedExpGolombCodedInt2 = i12;
                iArrCopyOf2 = Arrays.copyOf(iArr4, unsignedExpGolombCodedInt2);
            } else {
                i = unsignedExpGolombCodedInt3;
                unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                iArrCopyOf = new int[unsignedExpGolombCodedInt];
                int i17 = 0;
                while (i17 < unsignedExpGolombCodedInt) {
                    iArrCopyOf[i17] = (i17 > 0 ? iArrCopyOf[i17 - 1] : 0) - (parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1);
                    parsableNalUnitBitArray.skipBit();
                    i17++;
                }
                int[] iArr5 = new int[unsignedExpGolombCodedInt2];
                int i18 = 0;
                while (i18 < unsignedExpGolombCodedInt2) {
                    iArr5[i18] = (i18 > 0 ? iArr5[i18 - 1] : 0) + parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
                    parsableNalUnitBitArray.skipBit();
                    i18++;
                }
                iArrCopyOf2 = iArr5;
            }
            i2 = unsignedExpGolombCodedInt;
            i3 = unsignedExpGolombCodedInt2;
            iArr = iArrCopyOf;
            iArr2 = iArrCopyOf2;
            i4++;
            unsignedExpGolombCodedInt3 = i;
            z = false;
        }
    }

    private static String getNalStructureMimeType(Format format) {
        if (Objects.equals(format.sampleMimeType, MimeTypes.VIDEO_DOLBY_VISION) && format.codecs != null) {
            if (format.codecs.startsWith("dva1") || format.codecs.startsWith("dvav")) {
                return MimeTypes.VIDEO_H264;
            }
            if (format.codecs.startsWith("dvh1") || format.codecs.startsWith("dvhe")) {
                return MimeTypes.VIDEO_H265;
            }
        }
        return format.sampleMimeType;
    }

    private NalUnitUtil() {
    }
}
