package androidx.media3.common.util;

import android.util.Pair;
import androidx.compose.ui.spatial.RectListKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes21.dex */
public final class CodecSpecificDataUtil {
    private static final String CODEC_ID_AC4 = "ac-4";
    private static final String CODEC_ID_APV1 = "apv1";
    private static final String CODEC_ID_AV01 = "av01";
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_H263 = "s263";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_IAMF = "iamf";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final String CODEC_ID_VP09 = "vp09";
    private static final String CODEC_ID_VVC1 = "vvc1";
    private static final String CODEC_ID_VVI1 = "vvi1";
    private static final int EXTENDED_PAR = 15;
    private static final int OBU_IA_CODEC_CONFIG = 0;
    private static final int OBU_IA_SEQUENCE_HEADER = 31;
    private static final int RECTANGULAR = 0;
    private static final String TAG = "CodecSpecificDataUtil";
    private static final int VISUAL_OBJECT_LAYER = 1;
    private static final int VISUAL_OBJECT_LAYER_START = 32;
    private static final int VVC_HIGH_TIER_LEVEL_4_0 = 64;
    private static final int VVC_HIGH_TIER_LEVEL_4_1 = 256;
    private static final int VVC_HIGH_TIER_LEVEL_5_0 = 1024;
    private static final int VVC_HIGH_TIER_LEVEL_5_1 = 4096;
    private static final int VVC_HIGH_TIER_LEVEL_5_2 = 16384;
    private static final int VVC_HIGH_TIER_LEVEL_6_0 = 65536;
    private static final int VVC_HIGH_TIER_LEVEL_6_1 = 262144;
    private static final int VVC_HIGH_TIER_LEVEL_6_2 = 1048576;
    private static final int VVC_HIGH_TIER_LEVEL_6_3 = 4194304;
    private static final int VVC_MAIN_TIER_LEVEL_1_0 = 1;
    private static final int VVC_MAIN_TIER_LEVEL_2_0 = 2;
    private static final int VVC_MAIN_TIER_LEVEL_2_1 = 4;
    private static final int VVC_MAIN_TIER_LEVEL_3_0 = 8;
    private static final int VVC_MAIN_TIER_LEVEL_3_1 = 16;
    private static final int VVC_MAIN_TIER_LEVEL_4_0 = 32;
    private static final int VVC_MAIN_TIER_LEVEL_4_1 = 128;
    private static final int VVC_MAIN_TIER_LEVEL_5_0 = 512;
    private static final int VVC_MAIN_TIER_LEVEL_5_1 = 2048;
    private static final int VVC_MAIN_TIER_LEVEL_5_2 = 8192;
    private static final int VVC_MAIN_TIER_LEVEL_6_0 = 32768;
    private static final int VVC_MAIN_TIER_LEVEL_6_1 = 131072;
    private static final int VVC_MAIN_TIER_LEVEL_6_2 = 524288;
    private static final int VVC_MAIN_TIER_LEVEL_6_3 = 2097152;
    private static final int VVC_PROFILE_MAIN_10 = 2;
    private static final int VVC_PROFILE_MAIN_10_HDR10 = 4096;
    private static final int VVC_PROFILE_MAIN_10_STILL = 4;
    private static final int VVC_PROFILE_MAIN_8 = 1;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final String[] HEVC_GENERAL_PROFILE_SPACE_STRINGS = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");

    public static int[] parseAlacAudioSpecificConfig(byte[] audioSpecificConfig) {
        ParsableByteArray byteArray = new ParsableByteArray(audioSpecificConfig);
        byteArray.setPosition(5);
        int bitDepth = byteArray.readUnsignedByte();
        byteArray.setPosition(9);
        int channelCount = byteArray.readUnsignedByte();
        byteArray.setPosition(20);
        int sampleRate = byteArray.readUnsignedIntToInt();
        return new int[]{sampleRate, channelCount, bitDepth};
    }

    public static List<byte[]> buildCea708InitializationData(boolean isWideAspectRatio) {
        byte[] bArr = new byte[1];
        if (isWideAspectRatio) {
            bArr[0] = 1;
        } else {
            bArr[0] = 0;
        }
        return Collections.singletonList(bArr);
    }

    public static String buildIamfCodecString(byte[] initializationData) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(initializationData);
        String iaSequenceHeader = null;
        String codecConfigCodecId = null;
        while (parsableByteArray.bytesLeft() > 0 && (iaSequenceHeader == null || codecConfigCodecId == null)) {
            int obuHeaderByte = parsableByteArray.readUnsignedByte();
            int obuType = obuHeaderByte >> 3;
            boolean obuTrimmingStatusFlag = (obuHeaderByte & 2) != 0;
            boolean obuExtensionFlag = (obuHeaderByte & 1) != 0;
            int obuSize = parsableByteArray.readUnsignedLeb128ToInt();
            if (obuType > 4 && obuType < 24 && obuTrimmingStatusFlag) {
                parsableByteArray.skipLeb128();
                parsableByteArray.skipLeb128();
            }
            if (obuExtensionFlag) {
                int extensionHeaderSize = parsableByteArray.readUnsignedLeb128ToInt();
                parsableByteArray.skipBytes(extensionHeaderSize);
            }
            int extensionHeaderSize2 = parsableByteArray.getPosition();
            int nextObuPosition = extensionHeaderSize2 + obuSize;
            if (obuType == 31) {
                parsableByteArray.skipBytes(4);
                int primaryProfile = parsableByteArray.readUnsignedByte();
                int additionalProfile = parsableByteArray.readUnsignedByte();
                iaSequenceHeader = Util.formatInvariant("iamf.%03X.%03X", Integer.valueOf(primaryProfile), Integer.valueOf(additionalProfile));
            } else if (obuType == 0) {
                parsableByteArray.skipLeb128();
                codecConfigCodecId = parsableByteArray.readString(4);
                if (codecConfigCodecId.equals(CODEC_ID_MP4A)) {
                    parsableByteArray.skipLeb128();
                    parsableByteArray.skipBytes(2);
                    ParsableBitArray decoderConfigBitArray = new ParsableBitArray();
                    decoderConfigBitArray.reset(parsableByteArray);
                    int audioObjectType = decoderConfigBitArray.readBits(5);
                    if (audioObjectType == 31) {
                        audioObjectType = decoderConfigBitArray.readBits(6) + 32;
                    }
                    codecConfigCodecId = codecConfigCodecId + ".40." + audioObjectType;
                }
            }
            parsableByteArray.setPosition(nextObuPosition);
        }
        if (iaSequenceHeader != null && codecConfigCodecId != null) {
            return iaSequenceHeader + "." + codecConfigCodecId;
        }
        return null;
    }

    public static boolean parseCea708InitializationData(List<byte[]> initializationData) {
        return initializationData.size() == 1 && initializationData.get(0).length == 1 && initializationData.get(0)[0] == 1;
    }

    public static ImmutableList<byte[]> buildVp9CodecPrivateInitializationData(byte profile, byte level, byte bitDepth, byte chromaSubsampling) {
        return ImmutableList.of(new byte[]{1, 1, profile, 2, 1, level, 3, 1, bitDepth, 4, 1, chromaSubsampling});
    }

    public static ByteBuffer getVorbisInitializationData(Format format) {
        Preconditions.checkArgument(format.initializationData.size() > 1, "csd-0 and csd-1 must be present for Vorbis.");
        byte[] identificationHeader = format.initializationData.get(0);
        byte[] setupHeader = format.initializationData.get(1);
        byte[] commentHeader = {3, 118, 111, 114, 98, 105, 115, 7, 0, 0, 0, 97, 110, 100, 114, 111, 105, 100, 0, 0, 0, 0, 1};
        int identificationHeaderSize = identificationHeader.length;
        int commentHeaderSize = commentHeader.length;
        int setupHeaderSize = setupHeader.length;
        byte[] identificationHeaderLaced = xiphLaceEnc(identificationHeaderSize);
        byte[] commentHeaderLaced = xiphLaceEnc(commentHeaderSize);
        int codecPrivateSize = identificationHeaderLaced.length + 1 + commentHeaderLaced.length + identificationHeaderSize + commentHeaderSize + setupHeaderSize;
        ByteBuffer codecPrivateBuf = ByteBuffer.allocate(codecPrivateSize);
        codecPrivateBuf.put((byte) 2);
        codecPrivateBuf.put(identificationHeaderLaced);
        codecPrivateBuf.put(commentHeaderLaced);
        codecPrivateBuf.put(identificationHeader);
        codecPrivateBuf.put(commentHeader);
        codecPrivateBuf.put(setupHeader);
        codecPrivateBuf.flip();
        return codecPrivateBuf;
    }

    private static byte[] xiphLaceEnc(int size) {
        byte[] xiphLacedSizeArray = new byte[(size / 255) + 1];
        Arrays.fill(xiphLacedSizeArray, (byte) -1);
        xiphLacedSizeArray[xiphLacedSizeArray.length - 1] = (byte) (size % 255);
        return xiphLacedSizeArray;
    }

    public static byte[] buildDolbyVisionInitializationData(int profile, int level) {
        byte[] dolbyVisionCsd = new byte[24];
        byte blCompatibilityId = 0;
        byte mdCompression = 0;
        if (profile == 8) {
            blCompatibilityId = 4;
        } else if (profile == 9) {
            blCompatibilityId = 2;
            mdCompression = 1;
        }
        dolbyVisionCsd[0] = 1;
        dolbyVisionCsd[1] = 0;
        dolbyVisionCsd[2] = (byte) ((profile & 127) << 1);
        dolbyVisionCsd[2] = (byte) ((dolbyVisionCsd[2] | ((level >> 5) & 1)) & 255);
        dolbyVisionCsd[3] = (byte) ((level & 31) << 3);
        dolbyVisionCsd[3] = (byte) (dolbyVisionCsd[3] | 4);
        dolbyVisionCsd[3] = (byte) (0 | dolbyVisionCsd[3]);
        dolbyVisionCsd[3] = (byte) (dolbyVisionCsd[3] | 1);
        dolbyVisionCsd[4] = (byte) (blCompatibilityId << 4);
        dolbyVisionCsd[4] = (byte) (dolbyVisionCsd[4] | (mdCompression << 2));
        return dolbyVisionCsd;
    }

    public static byte[] getOpusInitializationData(Format format) {
        Preconditions.checkArgument(!format.initializationData.isEmpty(), "csd-0 must be present for Opus.");
        byte[] csd0 = format.initializationData.get(0);
        Preconditions.checkArgument(csd0.length >= 8);
        ParsableByteArray parsableCsd0 = new ParsableByteArray(csd0);
        int payloadOffset = 0;
        int payloadLength = csd0.length;
        String csd0SignatureString = parsableCsd0.readString(8);
        if (csd0SignatureString.equals("AOPUSHDR")) {
            Preconditions.checkArgument(csd0.length >= 16 + 8);
            long identificationHeaderLength = parsableCsd0.readLittleEndianLong();
            Preconditions.checkArgument(((long) 16) + identificationHeaderLength <= ((long) csd0.length));
            payloadOffset = 16;
            payloadLength = (int) identificationHeaderLength;
        } else {
            Preconditions.checkArgument(csd0SignatureString.equals("OpusHead"));
        }
        return Arrays.copyOfRange(csd0, payloadOffset, payloadOffset + payloadLength);
    }

    public static Pair<Integer, Integer> getVideoResolutionFromMpeg4VideoConfig(byte[] videoSpecificConfig) {
        int offset = 0;
        boolean foundVOL = false;
        ParsableByteArray scratchBytes = new ParsableByteArray(videoSpecificConfig);
        while (true) {
            if (offset + 3 >= videoSpecificConfig.length) {
                break;
            }
            if (scratchBytes.readUnsignedInt24() != 1 || (videoSpecificConfig[offset + 3] & 240) != 32) {
                scratchBytes.setPosition(scratchBytes.getPosition() - 2);
                offset++;
            } else {
                foundVOL = true;
                break;
            }
        }
        Preconditions.checkArgument(foundVOL, "Invalid input: VOL not found.");
        ParsableBitArray scratchBits = new ParsableBitArray(videoSpecificConfig);
        scratchBits.skipBits((offset + 4) * 8);
        scratchBits.skipBits(1);
        scratchBits.skipBits(8);
        if (scratchBits.readBit()) {
            scratchBits.skipBits(4);
            scratchBits.skipBits(3);
        }
        int aspectRatioInfo = scratchBits.readBits(4);
        if (aspectRatioInfo == 15) {
            scratchBits.skipBits(8);
            scratchBits.skipBits(8);
        }
        if (scratchBits.readBit()) {
            scratchBits.skipBits(2);
            scratchBits.skipBits(1);
            if (scratchBits.readBit()) {
                scratchBits.skipBits(79);
            }
        }
        int videoObjectLayerShape = scratchBits.readBits(2);
        Preconditions.checkArgument(videoObjectLayerShape == 0, "Only supports rectangular video object layer shape.");
        Preconditions.checkArgument(scratchBits.readBit());
        int vopTimeIncrementResolution = scratchBits.readBits(16);
        Preconditions.checkArgument(scratchBits.readBit());
        if (scratchBits.readBit()) {
            Preconditions.checkArgument(vopTimeIncrementResolution > 0);
            int numBitsToSkip = 0;
            for (int vopTimeIncrementResolution2 = vopTimeIncrementResolution - 1; vopTimeIncrementResolution2 > 0; vopTimeIncrementResolution2 >>= 1) {
                numBitsToSkip++;
            }
            scratchBits.skipBits(numBitsToSkip);
        }
        Preconditions.checkArgument(scratchBits.readBit());
        int videoObjectLayerWidth = scratchBits.readBits(13);
        Preconditions.checkArgument(scratchBits.readBit());
        int videoObjectLayerHeight = scratchBits.readBits(13);
        Preconditions.checkArgument(scratchBits.readBit());
        scratchBits.skipBits(1);
        return Pair.create(Integer.valueOf(videoObjectLayerWidth), Integer.valueOf(videoObjectLayerHeight));
    }

    public static String buildAvcCodecString(int profileIdc, int constraintsFlagsAndReservedZero2Bits, int levelIdc) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(profileIdc), Integer.valueOf(constraintsFlagsAndReservedZero2Bits), Integer.valueOf(levelIdc));
    }

    public static String buildHevcCodecString(int generalProfileSpace, boolean generalTierFlag, int generalProfileIdc, int generalProfileCompatibilityFlags, int[] constraintBytes, int generalLevelIdc) {
        StringBuilder builder = new StringBuilder(Util.formatInvariant("hvc1.%s%d.%X.%c%d", HEVC_GENERAL_PROFILE_SPACE_STRINGS[generalProfileSpace], Integer.valueOf(generalProfileIdc), Integer.valueOf(generalProfileCompatibilityFlags), Character.valueOf(generalTierFlag ? 'H' : 'L'), Integer.valueOf(generalLevelIdc)));
        int trailingZeroIndex = constraintBytes.length;
        while (trailingZeroIndex > 0 && constraintBytes[trailingZeroIndex - 1] == 0) {
            trailingZeroIndex--;
        }
        for (int i = 0; i < trailingZeroIndex; i++) {
            builder.append(String.format(".%02X", Integer.valueOf(constraintBytes[i])));
        }
        return builder.toString();
    }

    public static String buildApvCodecString(byte[] initializationData) {
        Preconditions.checkArgument(initializationData.length >= 17, "Invalid APV CSD length: %s", initializationData.length);
        Preconditions.checkArgument(initializationData[0] == 1, "Invalid APV CSD version: %s", (int) initializationData[0]);
        int profile = initializationData[5];
        int level = initializationData[6];
        int band = initializationData[7];
        return Util.formatInvariant("apv1.apvf%d.apvl%d.apvb%d", Integer.valueOf(profile), Integer.valueOf(level), Integer.valueOf(band));
    }

    public static String buildH263CodecString(int profile, int level) {
        return Util.formatInvariant("s263.%d.%d", Integer.valueOf(profile), Integer.valueOf(level));
    }

    public static String buildDolbyVisionCodecString(int profile, int level) {
        if (profile > 9) {
            return Util.formatInvariant("dvh1.%02d.%02d", Integer.valueOf(profile), Integer.valueOf(level));
        }
        if (profile > 8) {
            return Util.formatInvariant("dvav.%02d.%02d", Integer.valueOf(profile), Integer.valueOf(level));
        }
        return Util.formatInvariant("dvhe.%02d.%02d", Integer.valueOf(profile), Integer.valueOf(level));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Pair<Integer, Integer> getCodecProfileAndLevel(Format format) {
        if (format.codecs == null) {
            return null;
        }
        String[] parts = format.codecs.split("\\.");
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType)) {
            return getDolbyVisionProfileAndLevel(format.codecs, parts);
        }
        byte b = 0;
        String str = parts[0];
        switch (str.hashCode()) {
            case 2986313:
                b = !str.equals(CODEC_ID_AC4) ? (byte) -1 : Ascii.VT;
                break;
            case 3001066:
                if (str.equals(CODEC_ID_APV1)) {
                    b = 9;
                    break;
                }
                break;
            case 3004662:
                if (str.equals(CODEC_ID_AV01)) {
                    b = 8;
                    break;
                }
                break;
            case 3006243:
                if (str.equals(CODEC_ID_AVC1)) {
                    b = 1;
                    break;
                }
                break;
            case 3006244:
                if (str.equals(CODEC_ID_AVC2)) {
                    b = 2;
                    break;
                }
                break;
            case 3199032:
                if (str.equals(CODEC_ID_HEV1)) {
                    b = 4;
                    break;
                }
                break;
            case 3214780:
                if (str.equals(CODEC_ID_HVC1)) {
                    b = 5;
                    break;
                }
                break;
            case 3224753:
                if (str.equals(CODEC_ID_IAMF)) {
                    b = Ascii.FF;
                    break;
                }
                break;
            case 3356560:
                if (str.equals(CODEC_ID_MP4A)) {
                    b = 10;
                    break;
                }
                break;
            case 3475740:
                if (!str.equals(CODEC_ID_H263)) {
                }
                break;
            case 3624515:
                if (str.equals(CODEC_ID_VP09)) {
                    b = 3;
                    break;
                }
                break;
            case 3631854:
                if (str.equals(CODEC_ID_VVC1)) {
                    b = 6;
                    break;
                }
                break;
            case 3632040:
                if (str.equals(CODEC_ID_VVI1)) {
                    b = 7;
                    break;
                }
                break;
        }
        switch (b) {
            case 0:
                return getH263ProfileAndLevel(format.codecs, parts);
            case 1:
            case 2:
                return getAvcProfileAndLevel(format.codecs, parts);
            case 3:
                return getVp9ProfileAndLevel(format.codecs, parts);
            case 4:
            case 5:
                return getHevcProfileAndLevel(format.codecs, parts, format.colorInfo);
            case 6:
            case 7:
                return getVvcProfileAndLevel(format.codecs, parts, format.colorInfo);
            case 8:
                return getAv1ProfileAndLevel(format.codecs, parts, format.colorInfo);
            case 9:
                return getApvProfileAndLevel(format.codecs, parts);
            case 10:
                return getAacCodecProfileAndLevel(format.codecs, parts);
            case 11:
                return getAc4CodecProfileAndLevel(format.codecs, parts);
            case 12:
                return getIamfCodecProfileAndLevel(format.codecs, parts);
            default:
                return null;
        }
    }

    private static Pair<Integer, Integer> getVvcProfileAndLevel(String codec, String[] parts, ColorInfo colorInfo) {
        int profile;
        if (parts.length < 3) {
            Log.w(TAG, "Ignoring malformed VVC codec string: " + codec);
            return null;
        }
        try {
            int profileIdc = Integer.parseInt(parts[1]);
            if (profileIdc == 1) {
                if (colorInfo != null && colorInfo.colorTransfer == 6) {
                    profile = 4096;
                } else if (colorInfo != null && colorInfo.lumaBitdepth == 8) {
                    profile = 1;
                } else {
                    profile = 2;
                }
            } else {
                if (profileIdc != 65) {
                    Log.w(TAG, "Unknown VVC profile IDC: " + parts[1]);
                    return null;
                }
                profile = 4;
            }
            String levelString = parts[2];
            Integer level = vvcCodecStringToProfileLevel(levelString);
            if (level == null) {
                Log.w(TAG, "Unknown VVC level string: " + levelString);
                return null;
            }
            return new Pair<>(Integer.valueOf(profile), level);
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed VVC codec string: " + codec);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Integer vvcCodecStringToProfileLevel(String codecString) {
        byte b;
        if (codecString == null) {
            return null;
        }
        switch (codecString.hashCode()) {
            case 70918:
                b = !codecString.equals("H64") ? (byte) -1 : (byte) 6;
                break;
            case 70921:
                if (codecString.equals("H67")) {
                    b = 8;
                    break;
                }
                break;
            case 70976:
                if (codecString.equals("H80")) {
                    b = 10;
                    break;
                }
                break;
            case 70979:
                if (codecString.equals("H83")) {
                    b = Ascii.FF;
                    break;
                }
                break;
            case 70982:
                if (codecString.equals("H86")) {
                    b = Ascii.SO;
                    break;
                }
                break;
            case 71013:
                if (codecString.equals("H96")) {
                    b = 16;
                    break;
                }
                break;
            case 74609:
                if (codecString.equals("L16")) {
                    b = 0;
                    break;
                }
                break;
            case 74667:
                if (codecString.equals("L32")) {
                    b = 1;
                    break;
                }
                break;
            case 74670:
                if (codecString.equals("L35")) {
                    b = 2;
                    break;
                }
                break;
            case 74704:
                if (codecString.equals("L48")) {
                    b = 3;
                    break;
                }
                break;
            case 74728:
                if (codecString.equals("L51")) {
                    b = 4;
                    break;
                }
                break;
            case 74762:
                if (codecString.equals("L64")) {
                    b = 5;
                    break;
                }
                break;
            case 74765:
                if (codecString.equals("L67")) {
                    b = 7;
                    break;
                }
                break;
            case 74820:
                if (codecString.equals("L80")) {
                    b = 9;
                    break;
                }
                break;
            case 74823:
                if (codecString.equals("L83")) {
                    b = Ascii.VT;
                    break;
                }
                break;
            case 74826:
                if (codecString.equals("L86")) {
                    b = Ascii.CR;
                    break;
                }
                break;
            case 74857:
                if (codecString.equals("L96")) {
                    b = Ascii.SI;
                    break;
                }
                break;
            case 2193610:
                if (codecString.equals("H112")) {
                    b = Ascii.DC2;
                    break;
                }
                break;
            case 2193647:
                if (codecString.equals("H128")) {
                    b = Ascii.DC4;
                    break;
                }
                break;
            case 2193705:
                if (codecString.equals("H144")) {
                    b = Ascii.SYN;
                    break;
                }
                break;
            case 2312774:
                if (codecString.equals("L112")) {
                    b = 17;
                    break;
                }
                break;
            case 2312811:
                if (codecString.equals("L128")) {
                    b = 19;
                    break;
                }
                break;
            case 2312869:
                if (codecString.equals("L144")) {
                    b = Ascii.NAK;
                    break;
                }
                break;
        }
        switch (b) {
        }
        return null;
    }

    public static Pair<Integer, Integer> getHevcProfileAndLevel(String codec, String[] parts, ColorInfo colorInfo) {
        int profile;
        if (parts.length < 4) {
            Log.w(TAG, "Ignoring malformed HEVC codec string: " + codec);
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(parts[1]);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring malformed HEVC codec string: " + codec);
            return null;
        }
        String profileString = matcher.group(1);
        if ("1".equals(profileString)) {
            profile = 1;
        } else if (ExifInterface.GPS_MEASUREMENT_2D.equals(profileString)) {
            if (colorInfo != null && colorInfo.colorTransfer == 6) {
                profile = 4096;
            } else {
                profile = 2;
            }
        } else if ("6".equals(profileString)) {
            profile = 6;
        } else {
            Log.w(TAG, "Unknown HEVC profile string: " + profileString);
            return null;
        }
        String levelString = parts[3];
        Integer level = hevcCodecStringToProfileLevel(levelString);
        if (level == null) {
            Log.w(TAG, "Unknown HEVC level string: " + levelString);
            return null;
        }
        return new Pair<>(Integer.valueOf(profile), level);
    }

    public static byte[] buildNalUnit(byte[] data, int offset, int length) {
        byte[] nalUnit = new byte[NAL_START_CODE.length + length];
        System.arraycopy(NAL_START_CODE, 0, nalUnit, 0, NAL_START_CODE.length);
        System.arraycopy(data, offset, nalUnit, NAL_START_CODE.length, length);
        return nalUnit;
    }

    public static byte[][] splitNalUnits(byte[] data) {
        if (!isNalStartCode(data, 0)) {
            return null;
        }
        List<Integer> starts = new ArrayList<>();
        int nalUnitIndex = 0;
        do {
            starts.add(Integer.valueOf(nalUnitIndex));
            nalUnitIndex = findNalStartCode(data, NAL_START_CODE.length + nalUnitIndex);
        } while (nalUnitIndex != -1);
        byte[][] split = new byte[starts.size()][];
        int i = 0;
        while (i < starts.size()) {
            int startIndex = starts.get(i).intValue();
            int endIndex = i < starts.size() + (-1) ? starts.get(i + 1).intValue() : data.length;
            byte[] nal = new byte[endIndex - startIndex];
            System.arraycopy(data, startIndex, nal, 0, nal.length);
            split[i] = nal;
            i++;
        }
        return split;
    }

    public static int dolbyVisionConstantToLevelNumber(int levelConstant) {
        switch (levelConstant) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 4:
                return 3;
            case 8:
                return 4;
            case 16:
                return 5;
            case 32:
                return 6;
            case 64:
                return 7;
            case 128:
                return 8;
            case 256:
                return 9;
            case 512:
                return 10;
            case 1024:
                return 11;
            case 2048:
                return 12;
            case 4096:
                return 13;
            default:
                throw new IllegalArgumentException("Unknown Dolby Vision level: " + levelConstant);
        }
    }

    public static int dolbyVisionConstantToProfileNumber(int profileConstant) {
        switch (profileConstant) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 4:
                return 2;
            case 8:
                return 3;
            case 16:
                return 4;
            case 32:
                return 5;
            case 64:
                return 6;
            case 128:
                return 7;
            case 256:
                return 8;
            case 512:
                return 9;
            case 1024:
                return 10;
            default:
                throw new IllegalArgumentException("Unknown Dolby Vision profile: " + profileConstant);
        }
    }

    private static int findNalStartCode(byte[] data, int index) {
        int endIndex = data.length - NAL_START_CODE.length;
        for (int i = index; i <= endIndex; i++) {
            if (isNalStartCode(data, i)) {
                return i;
            }
        }
        return -1;
    }

    private static boolean isNalStartCode(byte[] data, int index) {
        if (data.length - index <= NAL_START_CODE.length) {
            return false;
        }
        for (int j = 0; j < NAL_START_CODE.length; j++) {
            if (data[index + j] != NAL_START_CODE[j]) {
                return false;
            }
        }
        return true;
    }

    private static Pair<Integer, Integer> getDolbyVisionProfileAndLevel(String codec, String[] parts) {
        if (parts.length < 3) {
            Log.w(TAG, "Ignoring malformed Dolby Vision codec string: " + codec);
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(parts[1]);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring malformed Dolby Vision codec string: " + codec);
            return null;
        }
        String profileString = matcher.group(1);
        Integer profile = dolbyVisionStringToProfile(profileString);
        if (profile == null) {
            Log.w(TAG, "Unknown Dolby Vision profile string: " + profileString);
            return null;
        }
        String levelString = parts[2];
        Integer level = dolbyVisionStringToLevel(levelString);
        if (level == null) {
            Log.w(TAG, "Unknown Dolby Vision level string: " + levelString);
            return null;
        }
        return new Pair<>(profile, level);
    }

    private static Pair<Integer, Integer> getH263ProfileAndLevel(String codec, String[] parts) {
        Pair<Integer, Integer> defaultProfileAndLevel = new Pair<>(1, 1);
        if (parts.length < 3) {
            Log.w(TAG, "Ignoring malformed H263 codec string: " + codec);
            return defaultProfileAndLevel;
        }
        try {
            int profile = Integer.parseInt(parts[1]);
            int level = Integer.parseInt(parts[2]);
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed H263 codec string: " + codec);
            return defaultProfileAndLevel;
        }
    }

    private static Pair<Integer, Integer> getAvcProfileAndLevel(String codec, String[] parts) {
        int profileInteger;
        int profileInteger2;
        if (parts.length < 2) {
            Log.w(TAG, "Ignoring malformed AVC codec string: " + codec);
            return null;
        }
        try {
            if (parts[1].length() == 6) {
                profileInteger = Integer.parseInt(parts[1].substring(0, 2), 16);
                profileInteger2 = Integer.parseInt(parts[1].substring(4), 16);
            } else if (parts.length >= 3) {
                int profileInteger3 = Integer.parseInt(parts[1]);
                profileInteger = profileInteger3;
                profileInteger2 = Integer.parseInt(parts[2]);
            } else {
                Log.w(TAG, "Ignoring malformed AVC codec string: " + codec);
                return null;
            }
            int profile = avcProfileNumberToConst(profileInteger);
            if (profile == -1) {
                Log.w(TAG, "Unknown AVC profile: " + profileInteger);
                return null;
            }
            int level = avcLevelNumberToConst(profileInteger2);
            if (level == -1) {
                Log.w(TAG, "Unknown AVC level: " + profileInteger2);
                return null;
            }
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed AVC codec string: " + codec);
            return null;
        }
    }

    private static Pair<Integer, Integer> getVp9ProfileAndLevel(String codec, String[] parts) {
        if (parts.length < 3) {
            Log.w(TAG, "Ignoring malformed VP9 codec string: " + codec);
            return null;
        }
        try {
            int profileInteger = Integer.parseInt(parts[1]);
            int levelInteger = Integer.parseInt(parts[2]);
            int profile = vp9ProfileNumberToConst(profileInteger);
            if (profile == -1) {
                Log.w(TAG, "Unknown VP9 profile: " + profileInteger);
                return null;
            }
            int level = vp9LevelNumberToConst(levelInteger);
            if (level == -1) {
                Log.w(TAG, "Unknown VP9 level: " + levelInteger);
                return null;
            }
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed VP9 codec string: " + codec);
            return null;
        }
    }

    private static Pair<Integer, Integer> getAv1ProfileAndLevel(String codec, String[] parts, ColorInfo colorInfo) {
        int profile;
        if (parts.length < 4) {
            Log.w(TAG, "Ignoring malformed AV1 codec string: " + codec);
            return null;
        }
        try {
            int profileInteger = Integer.parseInt(parts[1]);
            int levelInteger = Integer.parseInt(parts[2].substring(0, 2));
            int bitDepthInteger = Integer.parseInt(parts[3]);
            if (profileInteger != 0) {
                Log.w(TAG, "Unknown AV1 profile: " + profileInteger);
                return null;
            }
            if (bitDepthInteger != 8 && bitDepthInteger != 10) {
                Log.w(TAG, "Unknown AV1 bit depth: " + bitDepthInteger);
                return null;
            }
            if (bitDepthInteger == 8) {
                profile = 1;
            } else if (colorInfo != null && (colorInfo.hdrStaticInfo != null || colorInfo.colorTransfer == 7 || colorInfo.colorTransfer == 6)) {
                profile = 4096;
            } else {
                profile = 2;
            }
            int level = av1LevelNumberToConst(levelInteger);
            if (level == -1) {
                Log.w(TAG, "Unknown AV1 level: " + levelInteger);
                return null;
            }
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed AV1 codec string: " + codec);
            return null;
        }
    }

    private static Pair<Integer, Integer> getApvProfileAndLevel(String codec, String[] parts) {
        int profile;
        if (parts.length < 4) {
            Log.w(TAG, "Ignoring malformed APV codec string: " + codec);
            return null;
        }
        try {
            int profileInteger = Integer.parseInt(parts[1].substring(4));
            int levelInteger = Integer.parseInt(parts[2].substring(4));
            int bandInteger = Integer.parseInt(parts[3].substring(4));
            if (profileInteger == 33) {
                profile = 1;
            } else if (profileInteger == 44) {
                profile = 8192;
            } else {
                Log.w(TAG, "Ignoring invalid APV profile: " + profileInteger);
                return null;
            }
            int levelNum = (levelInteger / 30) * 2;
            if (levelInteger % 30 == 0) {
                levelNum--;
            }
            int level = (1 << bandInteger) | (256 << (levelNum - 1));
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed APV codec string: " + codec, e);
            return null;
        }
    }

    private static Pair<Integer, Integer> getAacCodecProfileAndLevel(String codec, String[] parts) {
        if (parts.length != 3) {
            Log.w(TAG, "Ignoring malformed MP4A codec string: " + codec);
            return null;
        }
        try {
            int objectTypeIndication = Integer.parseInt(parts[1], 16);
            String mimeType = MimeTypes.getMimeTypeFromMp4ObjectType(objectTypeIndication);
            if (MimeTypes.AUDIO_AAC.equals(mimeType)) {
                int audioObjectTypeIndication = Integer.parseInt(parts[2]);
                int profile = mp4aAudioObjectTypeToProfile(audioObjectTypeIndication);
                if (profile != -1) {
                    return new Pair<>(Integer.valueOf(profile), 0);
                }
            }
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed MP4A codec string: " + codec);
        }
        return null;
    }

    private static Pair<Integer, Integer> getAc4CodecProfileAndLevel(String codec, String[] parts) {
        if (parts.length != 4) {
            Log.w(TAG, "Ignoring malformed AC-4 codec string: " + codec);
            return null;
        }
        try {
            int bitstreamVersionInteger = Integer.parseInt(parts[1]);
            int presentationVersionInteger = Integer.parseInt(parts[2]);
            int levelInteger = Integer.parseInt(parts[3]);
            int profile = ac4BitstreamAndPresentationVersionsToProfileConst(bitstreamVersionInteger, presentationVersionInteger);
            if (profile == -1) {
                Log.w(TAG, "Unknown AC-4 profile: " + bitstreamVersionInteger + "." + presentationVersionInteger);
                return null;
            }
            int level = ac4LevelNumberToConst(levelInteger);
            if (level == -1) {
                Log.w(TAG, "Unknown AC-4 level: " + levelInteger);
                return null;
            }
            return new Pair<>(Integer.valueOf(profile), Integer.valueOf(level));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed AC-4 codec string: " + codec);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Pair<Integer, Integer> getIamfCodecProfileAndLevel(String codec, String[] parts) {
        int auxiliaryProfileValue;
        if (parts.length < 4) {
            Log.w(TAG, "Ignoring malformed IAMF codec string: " + codec);
            return null;
        }
        try {
            int primaryProfileValue = Integer.parseInt(parts[1]);
            int profileBitmask = 1 << (primaryProfileValue + 16);
            switch (parts[3]) {
                case "Opus":
                    auxiliaryProfileValue = 1;
                    break;
                case "mp4a":
                    auxiliaryProfileValue = 2;
                    break;
                case "fLaC":
                    auxiliaryProfileValue = 4;
                    break;
                case "ipcm":
                    auxiliaryProfileValue = 8;
                    break;
                default:
                    Log.w(TAG, "Ignoring unknown codec identifier for IAMF auxiliary profile: " + parts[3]);
                    return null;
            }
            return new Pair<>(Integer.valueOf(16777216 | profileBitmask | auxiliaryProfileValue), 0);
        } catch (NumberFormatException e) {
            Log.w(TAG, "Ignoring malformed primary profile in IAMF codec string: " + parts[1], e);
            return null;
        }
    }

    private static int avcProfileNumberToConst(int profileNumber) {
        switch (profileNumber) {
            case 66:
                return 1;
            case 77:
                return 2;
            case 88:
                return 4;
            case 100:
                return 8;
            case 110:
                return 16;
            case 122:
                return 32;
            case 244:
                return 64;
            default:
                return -1;
        }
    }

    private static int avcLevelNumberToConst(int levelNumber) {
        switch (levelNumber) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            case 20:
                return 32;
            case 21:
                return 64;
            case 22:
                return 128;
            case 30:
                return 256;
            case 31:
                return 512;
            case 32:
                return 1024;
            case 40:
                return 2048;
            case 41:
                return 4096;
            case 42:
                return 8192;
            case 50:
                return 16384;
            case 51:
                return 32768;
            case 52:
                return 65536;
            default:
                return -1;
        }
    }

    private static int vp9ProfileNumberToConst(int profileNumber) {
        switch (profileNumber) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            default:
                return -1;
        }
    }

    private static int vp9LevelNumberToConst(int levelNumber) {
        switch (levelNumber) {
            case 10:
                return 1;
            case 11:
                return 2;
            case 20:
                return 4;
            case 21:
                return 8;
            case 30:
                return 16;
            case 31:
                return 32;
            case 40:
                return 64;
            case 41:
                return 128;
            case 50:
                return 256;
            case 51:
                return 512;
            case 60:
                return 2048;
            case 61:
                return 4096;
            case RectListKt.BitOffsetForGesturable /* 62 */:
                return 8192;
            default:
                return -1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Integer hevcCodecStringToProfileLevel(String codecString) {
        byte b;
        if (codecString == null) {
            return null;
        }
        switch (codecString.hashCode()) {
            case 70821:
                b = !codecString.equals("H30") ? (byte) -1 : Ascii.CR;
                break;
            case 70914:
                if (codecString.equals("H60")) {
                    b = Ascii.SO;
                    break;
                }
                break;
            case 70917:
                if (codecString.equals("H63")) {
                    b = Ascii.SI;
                    break;
                }
                break;
            case 71007:
                if (codecString.equals("H90")) {
                    b = 16;
                    break;
                }
                break;
            case 71010:
                if (codecString.equals("H93")) {
                    b = 17;
                    break;
                }
                break;
            case 74665:
                if (codecString.equals("L30")) {
                    b = 0;
                    break;
                }
                break;
            case 74758:
                if (codecString.equals("L60")) {
                    b = 1;
                    break;
                }
                break;
            case 74761:
                if (codecString.equals("L63")) {
                    b = 2;
                    break;
                }
                break;
            case 74851:
                if (codecString.equals("L90")) {
                    b = 3;
                    break;
                }
                break;
            case 74854:
                if (codecString.equals("L93")) {
                    b = 4;
                    break;
                }
                break;
            case 2193639:
                if (codecString.equals("H120")) {
                    b = Ascii.DC2;
                    break;
                }
                break;
            case 2193642:
                if (codecString.equals("H123")) {
                    b = 19;
                    break;
                }
                break;
            case 2193732:
                if (codecString.equals("H150")) {
                    b = Ascii.DC4;
                    break;
                }
                break;
            case 2193735:
                if (codecString.equals("H153")) {
                    b = Ascii.NAK;
                    break;
                }
                break;
            case 2193738:
                if (codecString.equals("H156")) {
                    b = Ascii.SYN;
                    break;
                }
                break;
            case 2193825:
                if (codecString.equals("H180")) {
                    b = Ascii.ETB;
                    break;
                }
                break;
            case 2193828:
                if (codecString.equals("H183")) {
                    b = Ascii.CAN;
                    break;
                }
                break;
            case 2193831:
                if (codecString.equals("H186")) {
                    b = Ascii.EM;
                    break;
                }
                break;
            case 2312803:
                if (codecString.equals("L120")) {
                    b = 5;
                    break;
                }
                break;
            case 2312806:
                if (codecString.equals("L123")) {
                    b = 6;
                    break;
                }
                break;
            case 2312896:
                if (codecString.equals("L150")) {
                    b = 7;
                    break;
                }
                break;
            case 2312899:
                if (codecString.equals("L153")) {
                    b = 8;
                    break;
                }
                break;
            case 2312902:
                if (codecString.equals("L156")) {
                    b = 9;
                    break;
                }
                break;
            case 2312989:
                if (codecString.equals("L180")) {
                    b = 10;
                    break;
                }
                break;
            case 2312992:
                if (codecString.equals("L183")) {
                    b = Ascii.VT;
                    break;
                }
                break;
            case 2312995:
                if (codecString.equals("L186")) {
                    b = Ascii.FF;
                    break;
                }
                break;
        }
        switch (b) {
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Integer dolbyVisionStringToProfile(String profileString) {
        if (profileString == null) {
            return null;
        }
        switch (profileString) {
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Integer dolbyVisionStringToLevel(String levelString) {
        byte b;
        if (levelString == null) {
            return null;
        }
        switch (levelString.hashCode()) {
            case 1537:
                b = !levelString.equals("01") ? (byte) -1 : (byte) 0;
                break;
            case 1538:
                if (levelString.equals("02")) {
                    b = 1;
                    break;
                }
                break;
            case 1539:
                if (levelString.equals("03")) {
                    b = 2;
                    break;
                }
                break;
            case 1540:
                if (levelString.equals("04")) {
                    b = 3;
                    break;
                }
                break;
            case 1541:
                if (levelString.equals("05")) {
                    b = 4;
                    break;
                }
                break;
            case 1542:
                if (levelString.equals("06")) {
                    b = 5;
                    break;
                }
                break;
            case 1543:
                if (levelString.equals("07")) {
                    b = 6;
                    break;
                }
                break;
            case 1544:
                if (levelString.equals("08")) {
                    b = 7;
                    break;
                }
                break;
            case 1545:
                if (levelString.equals("09")) {
                    b = 8;
                    break;
                }
                break;
            case 1567:
                if (levelString.equals("10")) {
                    b = 9;
                    break;
                }
                break;
            case 1568:
                if (levelString.equals("11")) {
                    b = 10;
                    break;
                }
                break;
            case 1569:
                if (levelString.equals("12")) {
                    b = Ascii.VT;
                    break;
                }
                break;
            case 1570:
                if (levelString.equals("13")) {
                    b = Ascii.FF;
                    break;
                }
                break;
        }
        switch (b) {
        }
        return null;
    }

    private static int av1LevelNumberToConst(int levelNumber) {
        switch (levelNumber) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int mp4aAudioObjectTypeToProfile(int profileNumber) {
        switch (profileNumber) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 17:
                return 17;
            case 20:
                return 20;
            case 23:
                return 23;
            case 29:
                return 29;
            case 39:
                return 39;
            case 42:
                return 42;
            default:
                return -1;
        }
    }

    private static int ac4BitstreamAndPresentationVersionsToProfileConst(int bitstreamVersionInteger, int presentationVersionInteger) {
        switch (bitstreamVersionInteger) {
            case 0:
                if (presentationVersionInteger == 0) {
                }
                break;
            case 1:
                if (presentationVersionInteger != 0) {
                    if (presentationVersionInteger == 1) {
                    }
                }
                break;
            case 2:
                if (presentationVersionInteger != 1) {
                    if (presentationVersionInteger == 2) {
                    }
                }
                break;
        }
        return -1;
    }

    private static int ac4LevelNumberToConst(int levelNumber) {
        switch (levelNumber) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            default:
                return -1;
        }
    }

    private CodecSpecificDataUtil() {
    }
}
