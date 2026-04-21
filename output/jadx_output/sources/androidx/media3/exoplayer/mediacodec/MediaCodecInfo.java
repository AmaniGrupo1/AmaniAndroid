package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class MediaCodecInfo {
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;
    public final MediaCodecInfo.CodecCapabilities capabilities;
    public final String codecMimeType;
    public final boolean detachedSurfaceSupported;
    public final boolean hardwareAccelerated;
    private final boolean isVideo;
    public final String mimeType;
    public final String name;
    public final boolean secure;
    public final boolean softwareOnly;
    public final boolean tunneling;
    public final boolean vendor;
    private float maxFrameRate = -3.4028235E38f;
    private int maxFrameRateWidth = -1;
    private int maxFrameRateHeight = -1;

    public static MediaCodecInfo newInstance(String name, String mimeType, String codecMimeType, MediaCodecInfo.CodecCapabilities capabilities, boolean hardwareAccelerated, boolean softwareOnly, boolean vendor, boolean forceDisableAdaptive, boolean forceSecure) {
        return new MediaCodecInfo(name, mimeType, codecMimeType, capabilities, hardwareAccelerated, softwareOnly, vendor, (forceDisableAdaptive || capabilities == null || !isAdaptive(capabilities)) ? false : true, capabilities != null && isTunneling(capabilities), forceSecure || (capabilities != null && isSecure(capabilities)), isDetachedSurfaceSupported(capabilities));
    }

    MediaCodecInfo(String name, String mimeType, String codecMimeType, MediaCodecInfo.CodecCapabilities capabilities, boolean hardwareAccelerated, boolean softwareOnly, boolean vendor, boolean adaptive, boolean tunneling, boolean secure, boolean detachedSurfaceSupported) {
        this.name = (String) Preconditions.checkNotNull(name);
        this.mimeType = mimeType;
        this.codecMimeType = codecMimeType;
        this.capabilities = capabilities;
        this.hardwareAccelerated = hardwareAccelerated;
        this.softwareOnly = softwareOnly;
        this.vendor = vendor;
        this.adaptive = adaptive;
        this.tunneling = tunneling;
        this.secure = secure;
        this.detachedSurfaceSupported = detachedSurfaceSupported;
        this.isVideo = MimeTypes.isVideo(mimeType);
    }

    public String toString() {
        return this.name;
    }

    public MediaCodecInfo.CodecProfileLevel[] getProfileLevels() {
        if (this.capabilities == null || this.capabilities.profileLevels == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return this.capabilities.profileLevels;
    }

    public int getMaxSupportedInstances() {
        if (this.capabilities == null) {
            return -1;
        }
        return this.capabilities.getMaxSupportedInstances();
    }

    public boolean isFormatSupported(Context context, Format format) {
        if (!isSampleMimeTypeSupported(format) || !isCodecProfileAndLevelSupported(context, format, true) || !isCompressedAudioBitDepthSupported(format)) {
            return false;
        }
        if (this.isVideo) {
            if (format.width <= 0 || format.height <= 0) {
                return true;
            }
            return isVideoSizeAndRateSupportedV21(format.width, format.height, format.frameRate);
        }
        if (format.sampleRate == -1 || isAudioSampleRateSupportedV21(format.sampleRate)) {
            return format.channelCount == -1 || isAudioChannelCountSupportedV21(format.channelCount);
        }
        return false;
    }

    public boolean isFormatFunctionallySupported(Context context, Format format) {
        return isSampleMimeTypeSupported(format) && isCodecProfileAndLevelSupported(context, format, false) && isCompressedAudioBitDepthSupported(format);
    }

    private boolean isSampleMimeTypeSupported(Format format) {
        return this.mimeType.equals(format.sampleMimeType) || this.mimeType.equals(MediaCodecUtil.getAlternativeCodecMimeType(format));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean isCodecProfileAndLevelSupported(Context context, Format format, boolean checkPerformanceCapabilities) {
        Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
        if (format.sampleMimeType != null && format.sampleMimeType.equals(MimeTypes.VIDEO_MV_HEVC)) {
            String normalizedCodecMimeType = MimeTypes.normalizeMimeType(this.codecMimeType);
            if (normalizedCodecMimeType.equals(MimeTypes.VIDEO_MV_HEVC)) {
                return true;
            }
            if (normalizedCodecMimeType.equals(MimeTypes.VIDEO_H265)) {
                codecProfileAndLevel = MediaCodecUtil.getHevcBaseLayerCodecProfileAndLevel(format);
            }
        }
        if (codecProfileAndLevel == null) {
            return true;
        }
        int profile = ((Integer) codecProfileAndLevel.first).intValue();
        int level = ((Integer) codecProfileAndLevel.second).intValue();
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType)) {
            switch (this.mimeType) {
                case "video/avc":
                    profile = 8;
                    level = 0;
                    break;
                case "video/hevc":
                    profile = 2;
                    level = 0;
                    break;
                case "video/av01":
                    profile = 2;
                    level = 0;
                    break;
            }
        }
        if (!this.isVideo && !this.mimeType.equals(MimeTypes.AUDIO_AC4) && profile != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] profileLevels = getProfileLevels();
        if (this.mimeType.equals(MimeTypes.AUDIO_AC4) && profileLevels.length == 0) {
            profileLevels = estimateLegacyAc4ProfileLevels(context, this.capabilities);
        }
        for (MediaCodecInfo.CodecProfileLevel profileLevel : profileLevels) {
            if (profileLevel.profile == profile && ((profileLevel.level >= level || !checkPerformanceCapabilities) && !needsProfileExcludedWorkaround(this.mimeType, profile))) {
                return true;
            }
        }
        logNoSupport("codec.profileLevel, " + format.codecs + ", " + this.codecMimeType);
        return false;
    }

    private boolean isCompressedAudioBitDepthSupported(Format format) {
        return (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_FLAC) && format.pcmEncoding == 22 && Build.VERSION.SDK_INT < 34 && this.name.equals("c2.android.flac.decoder")) ? false : true;
    }

    public boolean isHdr10PlusOutOfBandMetadataSupported() {
        if (Build.VERSION.SDK_INT >= 29 && MimeTypes.VIDEO_VP9.equals(this.mimeType)) {
            for (MediaCodecInfo.CodecProfileLevel capabilities : getProfileLevels()) {
                if (capabilities.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isSeamlessAdaptationSupported(Format format) {
        if (this.isVideo) {
            return this.adaptive;
        }
        Pair<Integer, Integer> profileLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
        return profileLevel != null && ((Integer) profileLevel.first).intValue() == 42;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DecoderReuseEvaluation canReuseCodec(Format oldFormat, Format newFormat) {
        int discardReasons;
        int discardReasons2;
        int discardReasons3;
        int discardReasons4;
        int i;
        int discardReasons5 = 0;
        if (!Objects.equals(oldFormat.sampleMimeType, newFormat.sampleMimeType)) {
            discardReasons5 = 0 | 8;
        }
        if (this.isVideo) {
            if (oldFormat.rotationDegrees != newFormat.rotationDegrees) {
                discardReasons5 |= 1024;
            }
            boolean resolutionChanged = (oldFormat.width == newFormat.width && oldFormat.height == newFormat.height) ? false : true;
            if (!this.adaptive && resolutionChanged) {
                discardReasons5 |= 512;
            }
            if ((!ColorInfo.isEquivalentToAssumedSdrDefault(oldFormat.colorInfo) || !ColorInfo.isEquivalentToAssumedSdrDefault(newFormat.colorInfo)) && !Objects.equals(oldFormat.colorInfo, newFormat.colorInfo)) {
                discardReasons5 |= 2048;
            }
            if (needsAdaptationReconfigureWorkaround(this.name) && !oldFormat.initializationDataEquals(newFormat)) {
                discardReasons5 |= 2;
            }
            if (oldFormat.decodedWidth != -1 && oldFormat.decodedHeight != -1 && oldFormat.decodedWidth == newFormat.decodedWidth && oldFormat.decodedHeight == newFormat.decodedHeight && resolutionChanged) {
                discardReasons5 |= 2;
            }
            if (discardReasons5 == 0 && Objects.equals(newFormat.sampleMimeType, MimeTypes.VIDEO_DOLBY_VISION)) {
                Pair<Integer, Integer> oldCodecProfileLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(oldFormat);
                Pair<Integer, Integer> newCodecProfileLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(newFormat);
                if (oldCodecProfileLevel == null || newCodecProfileLevel == null || !((Integer) oldCodecProfileLevel.first).equals(newCodecProfileLevel.first)) {
                    discardReasons4 = discardReasons5 | 2;
                }
                if (discardReasons4 != 0) {
                }
            } else {
                discardReasons4 = discardReasons5;
                if (discardReasons4 != 0) {
                    String str = this.name;
                    if (oldFormat.initializationDataEquals(newFormat)) {
                        i = 3;
                    } else {
                        i = 2;
                    }
                    return new DecoderReuseEvaluation(str, oldFormat, newFormat, i, 0);
                }
                discardReasons3 = discardReasons4;
            }
        } else {
            if (oldFormat.channelCount != newFormat.channelCount) {
                discardReasons5 |= 4096;
            }
            if (oldFormat.sampleRate != newFormat.sampleRate) {
                discardReasons5 |= 8192;
            }
            if (oldFormat.pcmEncoding == newFormat.pcmEncoding) {
                discardReasons = discardReasons5;
            } else {
                discardReasons = discardReasons5 | 16384;
            }
            if (discardReasons == 0 && (this.mimeType.equals(MimeTypes.AUDIO_AAC) || this.mimeType.equals(MimeTypes.AUDIO_AC4))) {
                Pair<Integer, Integer> oldCodecProfileLevel2 = CodecSpecificDataUtil.getCodecProfileAndLevel(oldFormat);
                Pair<Integer, Integer> newCodecProfileLevel2 = CodecSpecificDataUtil.getCodecProfileAndLevel(newFormat);
                if (oldCodecProfileLevel2 != null && newCodecProfileLevel2 != null) {
                    int oldProfile = ((Integer) oldCodecProfileLevel2.first).intValue();
                    int newProfile = ((Integer) newCodecProfileLevel2.first).intValue();
                    if (oldProfile == 42 && newProfile == 42) {
                        return new DecoderReuseEvaluation(this.name, oldFormat, newFormat, 3, 0);
                    }
                    if (this.mimeType.equals(MimeTypes.AUDIO_AC4) && oldCodecProfileLevel2.equals(newCodecProfileLevel2)) {
                        return new DecoderReuseEvaluation(this.name, oldFormat, newFormat, 3, 0);
                    }
                }
            }
            if (discardReasons == 0 && (this.mimeType.equals(MimeTypes.AUDIO_E_AC3_JOC) || this.mimeType.equals(MimeTypes.AUDIO_E_AC3))) {
                return new DecoderReuseEvaluation(this.name, oldFormat, newFormat, 3, 0);
            }
            if (!oldFormat.initializationDataEquals(newFormat)) {
                discardReasons |= 32;
            }
            if (!needsAdaptationFlushWorkaround(this.mimeType)) {
                discardReasons2 = discardReasons;
            } else {
                discardReasons2 = discardReasons | 2;
            }
            if (discardReasons2 != 0) {
                discardReasons3 = discardReasons2;
            } else {
                return new DecoderReuseEvaluation(this.name, oldFormat, newFormat, 1, 0);
            }
        }
        return new DecoderReuseEvaluation(this.name, oldFormat, newFormat, 0, discardReasons3);
    }

    public boolean isVideoSizeAndRateSupportedV21(int width, int height, double frameRate) {
        if (this.capabilities == null) {
            logNoSupport("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.capabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("sizeAndRate.vCaps");
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int evaluation = MediaCodecPerformancePointCoverageProvider.areResolutionAndFrameRateCovered(videoCapabilities, width, height, frameRate);
            if (evaluation == 2) {
                return true;
            }
            if (evaluation == 1) {
                logNoSupport("sizeAndRate.cover, " + width + "x" + height + "@" + frameRate);
                return false;
            }
        }
        if (!areSizeAndRateSupported(videoCapabilities, width, height, frameRate)) {
            if (width >= height || !needsRotatedVerticalResolutionWorkaround(this.name) || !areSizeAndRateSupported(videoCapabilities, height, width, frameRate)) {
                logNoSupport("sizeAndRate.support, " + width + "x" + height + "@" + frameRate);
                return false;
            }
            logAssumedSupport("sizeAndRate.rotated, " + width + "x" + height + "@" + frameRate);
        }
        return true;
    }

    public float getMaxSupportedFrameRate(int width, int height) {
        if (!this.isVideo) {
            return -3.4028235E38f;
        }
        if (this.maxFrameRate != -3.4028235E38f && this.maxFrameRateWidth == width && this.maxFrameRateHeight == height) {
            return this.maxFrameRate;
        }
        this.maxFrameRate = computeMaxSupportedFrameRate(width, height);
        this.maxFrameRateWidth = width;
        this.maxFrameRateHeight = height;
        return this.maxFrameRate;
    }

    private float computeMaxSupportedFrameRate(int width, int height) {
        float maxFrameRate = 1024.0f;
        float minFrameRate = 0.0f;
        if (isVideoSizeAndRateSupportedV21(width, height, 1024.0f)) {
            return 1024.0f;
        }
        while (Math.abs(maxFrameRate - minFrameRate) > 5.0f) {
            float testFrameRate = ((maxFrameRate - minFrameRate) / 2.0f) + minFrameRate;
            if (isVideoSizeAndRateSupportedV21(width, height, testFrameRate)) {
                minFrameRate = testFrameRate;
            } else {
                maxFrameRate = testFrameRate;
            }
        }
        return minFrameRate;
    }

    public Point alignVideoSizeV21(int width, int height) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (this.capabilities == null || (videoCapabilities = this.capabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return alignVideoSize(videoCapabilities, width, height);
    }

    public boolean isAudioSampleRateSupportedV21(int sampleRate) {
        if (this.capabilities == null) {
            logNoSupport("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.capabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("sampleRate.aCaps");
            return false;
        }
        if (!audioCapabilities.isSampleRateSupported(sampleRate)) {
            logNoSupport("sampleRate.support, " + sampleRate);
            return false;
        }
        return true;
    }

    public boolean isAudioChannelCountSupportedV21(int channelCount) {
        if (this.capabilities == null) {
            logNoSupport("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.capabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("channelCount.aCaps");
            return false;
        }
        int maxInputChannelCount = adjustMaxInputChannelCount(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount());
        if (maxInputChannelCount < channelCount) {
            logNoSupport("channelCount.support, " + channelCount);
            return false;
        }
        return true;
    }

    private void logNoSupport(String message) {
        Log.d(TAG, "NoSupport [" + message + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    private void logAssumedSupport(String message) {
        Log.d(TAG, "AssumedSupport [" + message + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    private static int adjustMaxInputChannelCount(String name, String mimeType, int maxChannelCount) {
        int assumedMaxChannelCount;
        if (maxChannelCount > 1 || ((Build.VERSION.SDK_INT >= 26 && maxChannelCount > 0) || MimeTypes.AUDIO_MPEG.equals(mimeType) || MimeTypes.AUDIO_AMR_NB.equals(mimeType) || MimeTypes.AUDIO_AMR_WB.equals(mimeType) || MimeTypes.AUDIO_AAC.equals(mimeType) || MimeTypes.AUDIO_VORBIS.equals(mimeType) || MimeTypes.AUDIO_OPUS.equals(mimeType) || MimeTypes.AUDIO_RAW.equals(mimeType) || MimeTypes.AUDIO_FLAC.equals(mimeType) || MimeTypes.AUDIO_ALAW.equals(mimeType) || MimeTypes.AUDIO_MLAW.equals(mimeType) || MimeTypes.AUDIO_MSGSM.equals(mimeType))) {
            return maxChannelCount;
        }
        if (MimeTypes.AUDIO_AC3.equals(mimeType)) {
            assumedMaxChannelCount = 6;
        } else if (MimeTypes.AUDIO_E_AC3.equals(mimeType)) {
            assumedMaxChannelCount = 16;
        } else {
            assumedMaxChannelCount = 30;
        }
        Log.w(TAG, "AssumedMaxChannelAdjustment: " + name + ", [" + maxChannelCount + " to " + assumedMaxChannelCount + "]");
        return assumedMaxChannelCount;
    }

    private static boolean isAdaptive(MediaCodecInfo.CodecCapabilities capabilities) {
        return capabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean isTunneling(MediaCodecInfo.CodecCapabilities capabilities) {
        return capabilities.isFeatureSupported("tunneled-playback");
    }

    private static boolean isSecure(MediaCodecInfo.CodecCapabilities capabilities) {
        return capabilities.isFeatureSupported("secure-playback");
    }

    private static boolean isDetachedSurfaceSupported(MediaCodecInfo.CodecCapabilities capabilities) {
        return Build.VERSION.SDK_INT >= 35 && capabilities != null && capabilities.isFeatureSupported("detached-surface") && !needsDetachedSurfaceUnsupportedWorkaround();
    }

    private static boolean areSizeAndRateSupported(MediaCodecInfo.VideoCapabilities capabilities, int width, int height, double frameRate) {
        Point alignedSize = alignVideoSize(capabilities, width, height);
        int width2 = alignedSize.x;
        int height2 = alignedSize.y;
        if (frameRate == -1.0d || frameRate < 1.0d) {
            return capabilities.isSizeSupported(width2, height2);
        }
        double floorFrameRate = Math.floor(frameRate);
        if (!capabilities.areSizeAndRateSupported(width2, height2, floorFrameRate)) {
            return false;
        }
        Range<Double> achievableFrameRates = capabilities.getAchievableFrameRatesFor(width2, height2);
        return achievableFrameRates == null || floorFrameRate <= ((Double) achievableFrameRates.getUpper()).doubleValue();
    }

    private static Point alignVideoSize(MediaCodecInfo.VideoCapabilities capabilities, int width, int height) {
        int widthAlignment = capabilities.getWidthAlignment();
        int heightAlignment = capabilities.getHeightAlignment();
        return new Point(Util.ceilDivide(width, widthAlignment) * widthAlignment, Util.ceilDivide(height, heightAlignment) * heightAlignment);
    }

    private static MediaCodecInfo.CodecProfileLevel[] estimateLegacyAc4ProfileLevels(Context context, MediaCodecInfo.CodecCapabilities capabilities) {
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        int maxInChannelCount = 2;
        if (capabilities != null && (audioCapabilities = capabilities.getAudioCapabilities()) != null) {
            maxInChannelCount = audioCapabilities.getMaxInputChannelCount();
        }
        int level = 8;
        if (maxInChannelCount > 18) {
            level = 16;
        }
        if (Util.isAutomotive(context)) {
            return new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, level)};
        }
        return new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(257, level), MediaCodecUtil.createCodecProfileLevel(InputDeviceCompat.SOURCE_DPAD, level), MediaCodecUtil.createCodecProfileLevel(514, level), MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, level), MediaCodecUtil.createCodecProfileLevel(AnalyticsListener.EVENT_PLAYER_RELEASED, level)};
    }

    private static MediaCodecInfo.CodecProfileLevel[] estimateLegacyVp9ProfileLevels(MediaCodecInfo.CodecCapabilities capabilities) {
        int level;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int maxBitrate = 0;
        if (capabilities != null && (videoCapabilities = capabilities.getVideoCapabilities()) != null) {
            maxBitrate = ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        }
        if (maxBitrate >= 180000000) {
            level = 1024;
        } else if (maxBitrate >= 120000000) {
            level = 512;
        } else if (maxBitrate >= 60000000) {
            level = 256;
        } else if (maxBitrate >= 30000000) {
            level = 128;
        } else if (maxBitrate >= 18000000) {
            level = 64;
        } else if (maxBitrate >= 12000000) {
            level = 32;
        } else if (maxBitrate >= 7200000) {
            level = 16;
        } else if (maxBitrate >= 3600000) {
            level = 8;
        } else if (maxBitrate >= 1800000) {
            level = 4;
        } else if (maxBitrate >= 800000) {
            level = 2;
        } else {
            level = 1;
        }
        return new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.createCodecProfileLevel(1, level)};
    }

    private static boolean needsAdaptationReconfigureWorkaround(String name) {
        return Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(name);
    }

    private static boolean needsAdaptationFlushWorkaround(String mimeType) {
        return MimeTypes.AUDIO_OPUS.equals(mimeType);
    }

    private static boolean needsRotatedVerticalResolutionWorkaround(String name) {
        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(name) && "mcv5a".equals(Build.DEVICE)) {
            return false;
        }
        return true;
    }

    private static boolean needsProfileExcludedWorkaround(String mimeType, int profile) {
        return MimeTypes.VIDEO_H265.equals(mimeType) && 2 == profile && ("sailfish".equals(Build.DEVICE) || "marlin".equals(Build.DEVICE));
    }

    private static boolean needsDetachedSurfaceUnsupportedWorkaround() {
        return Build.MANUFACTURER.equals("Xiaomi") || Build.MANUFACTURER.equals("OPPO") || Build.MANUFACTURER.equals("realme") || Build.MANUFACTURER.equals("motorola") || Build.MANUFACTURER.equals("LENOVO");
    }
}
