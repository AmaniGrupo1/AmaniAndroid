package androidx.media3.common.util;

import android.media.MediaFormat;
import android.os.Build;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.common.Scopes;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class MediaFormatUtil {
    public static final String KEY_MAX_BIT_RATE = "max-bitrate";
    public static final String KEY_PCM_ENCODING_EXTENDED = "exo-pcm-encoding-int";
    public static final String KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT = "exo-pixel-width-height-ratio-float";
    private static final int MAX_POWER_OF_TWO_INT = 1073741824;

    public static Format createFormatFromMediaFormat(MediaFormat mediaFormat) {
        Format.Builder formatBuilder = new Format.Builder().setSampleMimeType(mediaFormat.getString("mime")).setLanguage(mediaFormat.getString("language")).setPeakBitrate(getInteger(mediaFormat, KEY_MAX_BIT_RATE, -1)).setAverageBitrate(getInteger(mediaFormat, "bitrate", -1)).setCodecs(getCodecString(mediaFormat)).setFrameRate(getFloatFromIntOrFloat(mediaFormat, "frame-rate", -1.0f)).setWidth(getInteger(mediaFormat, "width", -1)).setHeight(getInteger(mediaFormat, "height", -1)).setPixelWidthHeightRatio(getPixelWidthHeightRatio(mediaFormat, 1.0f)).setMaxInputSize(getInteger(mediaFormat, "max-input-size", -1)).setRotationDegrees(getInteger(mediaFormat, "rotation-degrees", 0)).setColorInfo(getColorInfo(mediaFormat)).setSampleRate(getInteger(mediaFormat, "sample-rate", -1)).setChannelCount(getInteger(mediaFormat, "channel-count", -1)).setPcmEncoding(getInteger(mediaFormat, "pcm-encoding", -1));
        ImmutableList.Builder<byte[]> csdBuffers = new ImmutableList.Builder<>();
        int csdIndex = 0;
        while (true) {
            ByteBuffer csdByteBuffer = mediaFormat.getByteBuffer("csd-" + csdIndex);
            if (csdByteBuffer == null) {
                break;
            }
            byte[] csdBufferData = new byte[csdByteBuffer.remaining()];
            csdByteBuffer.get(csdBufferData);
            csdByteBuffer.rewind();
            csdBuffers.add(csdBufferData);
            csdIndex++;
        }
        formatBuilder.setInitializationData(csdBuffers.build());
        if (mediaFormat.containsKey("track-id")) {
            formatBuilder.setId(mediaFormat.getInteger("track-id"));
        }
        return formatBuilder.build();
    }

    public static MediaFormat createMediaFormatFromFormat(Format format) {
        MediaFormat result = new MediaFormat();
        maybeSetInteger(result, "bitrate", format.bitrate);
        maybeSetInteger(result, KEY_MAX_BIT_RATE, format.peakBitrate);
        maybeSetInteger(result, "channel-count", format.channelCount);
        int channelMask = Util.getAudioTrackChannelConfig(format.channelCount);
        if (channelMask != 0) {
            result.setInteger("channel-mask", channelMask);
        }
        maybeSetColorInfo(result, format.colorInfo);
        maybeSetString(result, "mime", format.sampleMimeType);
        maybeSetString(result, "codecs-string", format.codecs);
        maybeSetFloat(result, "frame-rate", format.frameRate);
        maybeSetInteger(result, "width", format.width);
        maybeSetInteger(result, "height", format.height);
        setCsdBuffers(result, format.initializationData);
        maybeSetPcmEncoding(result, format.pcmEncoding);
        maybeSetString(result, "language", format.language);
        maybeSetInteger(result, "max-input-size", format.maxInputSize);
        maybeSetInteger(result, "sample-rate", format.sampleRate);
        maybeSetInteger(result, "caption-service-number", format.accessibilityChannel);
        result.setInteger("rotation-degrees", format.rotationDegrees);
        int selectionFlags = format.selectionFlags;
        setBooleanAsInt(result, "is-autoselect", selectionFlags & 4);
        setBooleanAsInt(result, "is-default", selectionFlags & 1);
        setBooleanAsInt(result, "is-forced-subtitle", selectionFlags & 2);
        result.setInteger("encoder-delay", format.encoderDelay);
        result.setInteger("encoder-padding", format.encoderPadding);
        maybeSetPixelAspectRatio(result, format.pixelWidthHeightRatio);
        if (format.id != null) {
            try {
                result.setInteger("track-id", Integer.parseInt(format.id));
            } catch (NumberFormatException e) {
            }
        }
        return result;
    }

    public static void maybeSetString(MediaFormat format, String key, String value) {
        if (value != null) {
            format.setString(key, value);
        }
    }

    public static void setCsdBuffers(MediaFormat format, List<byte[]> csdBuffers) {
        for (int i = 0; i < csdBuffers.size(); i++) {
            format.setByteBuffer("csd-" + i, ByteBuffer.wrap(csdBuffers.get(i)));
        }
    }

    public static void maybeSetInteger(MediaFormat format, String key, int value) {
        if (value != -1) {
            format.setInteger(key, value);
        }
    }

    public static void maybeSetFloat(MediaFormat format, String key, float value) {
        if (value != -1.0f) {
            format.setFloat(key, value);
        }
    }

    public static void maybeSetByteBuffer(MediaFormat format, String key, byte[] value) {
        if (value != null) {
            format.setByteBuffer(key, ByteBuffer.wrap(value));
        }
    }

    public static void maybeSetColorInfo(MediaFormat format, ColorInfo colorInfo) {
        if (colorInfo != null) {
            maybeSetInteger(format, "color-transfer", colorInfo.colorTransfer);
            maybeSetInteger(format, "color-standard", colorInfo.colorSpace);
            maybeSetInteger(format, "color-range", colorInfo.colorRange);
            maybeSetByteBuffer(format, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static ColorInfo getColorInfo(MediaFormat mediaFormat) {
        int colorSpace = getInteger(mediaFormat, "color-standard", -1);
        int colorRange = getInteger(mediaFormat, "color-range", -1);
        int colorTransfer = getInteger(mediaFormat, "color-transfer", -1);
        ByteBuffer hdrStaticInfoByteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] hdrStaticInfo = hdrStaticInfoByteBuffer != null ? getArray(hdrStaticInfoByteBuffer) : null;
        if (!isValidColorSpace(colorSpace)) {
            colorSpace = -1;
        }
        if (!isValidColorRange(colorRange)) {
            colorRange = -1;
        }
        if (!isValidColorTransfer(colorTransfer)) {
            colorTransfer = -1;
        }
        if (colorSpace == -1 && colorRange == -1 && colorTransfer == -1 && hdrStaticInfo == null) {
            return null;
        }
        return new ColorInfo.Builder().setColorSpace(colorSpace).setColorRange(colorRange).setColorTransfer(colorTransfer).setHdrStaticInfo(hdrStaticInfo).build();
    }

    public static int getInteger(MediaFormat mediaFormat, String name, int defaultValue) {
        return mediaFormat.containsKey(name) ? mediaFormat.getInteger(name) : defaultValue;
    }

    public static float getFloat(MediaFormat mediaFormat, String name, float defaultValue) {
        return mediaFormat.containsKey(name) ? mediaFormat.getFloat(name) : defaultValue;
    }

    public static String getString(MediaFormat mediaFormat, String name, String defaultValue) {
        return mediaFormat.containsKey(name) ? mediaFormat.getString(name) : defaultValue;
    }

    public static float getFloatFromIntOrFloat(MediaFormat mediaFormat, String keyName, float defaultValue) {
        if (!mediaFormat.containsKey(keyName)) {
            return defaultValue;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int valueType = mediaFormat.getValueTypeForKey(keyName);
            if (valueType == 3) {
                float value = mediaFormat.getFloat(keyName);
                return value;
            }
            float value2 = mediaFormat.getInteger(keyName);
            return value2;
        }
        try {
            float value3 = mediaFormat.getFloat(keyName);
            return value3;
        } catch (ClassCastException e) {
            float value4 = mediaFormat.getInteger(keyName);
            return value4;
        }
    }

    private static String getCodecString(MediaFormat mediaFormat) {
        if (Objects.equals(mediaFormat.getString("mime"), MimeTypes.VIDEO_H263) && mediaFormat.containsKey(Scopes.PROFILE) && mediaFormat.containsKey("level")) {
            return CodecSpecificDataUtil.buildH263CodecString(mediaFormat.getInteger(Scopes.PROFILE), mediaFormat.getInteger("level"));
        }
        if (Objects.equals(mediaFormat.getString("mime"), MimeTypes.VIDEO_DOLBY_VISION) && mediaFormat.containsKey(Scopes.PROFILE) && mediaFormat.containsKey("level")) {
            return CodecSpecificDataUtil.buildDolbyVisionCodecString(CodecSpecificDataUtil.dolbyVisionConstantToProfileNumber(mediaFormat.getInteger(Scopes.PROFILE)), CodecSpecificDataUtil.dolbyVisionConstantToLevelNumber(mediaFormat.getInteger("level")));
        }
        return getString(mediaFormat, "codecs-string", null);
    }

    private static float getPixelWidthHeightRatio(MediaFormat mediaFormat, float defaultValue) {
        if (mediaFormat.containsKey("sar-width") && mediaFormat.containsKey("sar-height")) {
            return mediaFormat.getInteger("sar-width") / mediaFormat.getInteger("sar-height");
        }
        return defaultValue;
    }

    public static byte[] getArray(ByteBuffer byteBuffer) {
        byte[] array = new byte[byteBuffer.remaining()];
        byteBuffer.get(array);
        return array;
    }

    public static boolean isVideoFormat(MediaFormat mediaFormat) {
        return MimeTypes.isVideo(mediaFormat.getString("mime"));
    }

    public static boolean isAudioFormat(MediaFormat mediaFormat) {
        return MimeTypes.isAudio(mediaFormat.getString("mime"));
    }

    public static Integer getTimeLapseFrameRate(MediaFormat format) {
        if (format.containsKey("time-lapse-enable") && format.getInteger("time-lapse-enable") > 0 && format.containsKey("time-lapse-fps")) {
            return Integer.valueOf(format.getInteger("time-lapse-fps"));
        }
        return null;
    }

    private static void setBooleanAsInt(MediaFormat format, String key, int value) {
        format.setInteger(key, value != 0 ? 1 : 0);
    }

    private static void maybeSetPixelAspectRatio(MediaFormat mediaFormat, float pixelWidthHeightRatio) {
        mediaFormat.setFloat(KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT, pixelWidthHeightRatio);
        int pixelAspectRatioWidth = 1;
        int pixelAspectRatioHeight = 1;
        if (pixelWidthHeightRatio < 1.0f) {
            pixelAspectRatioHeight = 1073741824;
            pixelAspectRatioWidth = (int) (1073741824 * pixelWidthHeightRatio);
        } else if (pixelWidthHeightRatio > 1.0f) {
            pixelAspectRatioWidth = 1073741824;
            pixelAspectRatioHeight = (int) (1073741824 / pixelWidthHeightRatio);
        }
        mediaFormat.setInteger("sar-width", pixelAspectRatioWidth);
        mediaFormat.setInteger("sar-height", pixelAspectRatioHeight);
    }

    private static void maybeSetPcmEncoding(MediaFormat mediaFormat, int exoPcmEncoding) {
        int mediaFormatPcmEncoding;
        if (exoPcmEncoding == -1) {
            return;
        }
        maybeSetInteger(mediaFormat, KEY_PCM_ENCODING_EXTENDED, exoPcmEncoding);
        switch (exoPcmEncoding) {
            case 0:
                mediaFormatPcmEncoding = 0;
                break;
            case 2:
                mediaFormatPcmEncoding = 2;
                break;
            case 3:
                mediaFormatPcmEncoding = 3;
                break;
            case 4:
                mediaFormatPcmEncoding = 4;
                break;
            case 21:
                mediaFormatPcmEncoding = 21;
                break;
            case 22:
                mediaFormatPcmEncoding = 22;
                break;
            default:
                return;
        }
        mediaFormat.setInteger("pcm-encoding", mediaFormatPcmEncoding);
    }

    private static boolean isValidColorSpace(int colorSpace) {
        return colorSpace == 2 || colorSpace == 1 || colorSpace == 6 || colorSpace == -1;
    }

    private static boolean isValidColorRange(int colorRange) {
        return colorRange == 2 || colorRange == 1 || colorRange == -1;
    }

    private static boolean isValidColorTransfer(int colorTransfer) {
        return colorTransfer == 1 || colorTransfer == 3 || colorTransfer == 2 || colorTransfer == 6 || colorTransfer == 7 || colorTransfer == -1;
    }

    private MediaFormatUtil() {
    }
}
