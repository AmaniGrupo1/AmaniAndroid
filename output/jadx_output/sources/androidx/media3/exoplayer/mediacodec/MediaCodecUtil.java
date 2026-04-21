package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public final class MediaCodecUtil {
    private static final String TAG = "MediaCodecUtil";
    private static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;

    private interface MediaCodecListCompat {
        int getCodecCount();

        android.media.MediaCodecInfo getCodecInfoAt(int i);

        boolean isFeatureRequired(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean isFeatureSupported(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface ScoreProvider<T> {
        int getScore(T t);
    }

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable cause) {
            super("Failed to query underlying media codecs", cause);
        }
    }

    private MediaCodecUtil() {
    }

    public static void warmDecoderInfoCache(String mimeType, boolean secure, boolean tunneling) {
        try {
            getDecoderInfos(mimeType, secure, tunneling);
        } catch (DecoderQueryException e) {
            Log.e(TAG, "Codec warming failed", e);
        }
    }

    public static synchronized void clearDecoderInfoCache() {
        decoderInfosCache.clear();
    }

    public static MediaCodecInfo getDecryptOnlyDecoderInfo() throws DecoderQueryException {
        return getDecoderInfo(MimeTypes.AUDIO_RAW, false, false);
    }

    public static MediaCodecInfo getDecoderInfo(String mimeType, boolean secure, boolean tunneling) throws DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(mimeType, secure, tunneling);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    public static synchronized List<MediaCodecInfo> getDecoderInfos(String mimeType, boolean secure, boolean tunneling) throws DecoderQueryException {
        CodecKey key = new CodecKey(mimeType, secure, tunneling);
        List<MediaCodecInfo> cachedDecoderInfos = decoderInfosCache.get(key);
        if (cachedDecoderInfos != null) {
            return cachedDecoderInfos;
        }
        boolean specialCodec = mimeType.equals(MimeTypes.VIDEO_MV_HEVC);
        MediaCodecListCompat mediaCodecList = new MediaCodecListCompatV21(secure, tunneling, specialCodec);
        ArrayList<MediaCodecInfo> decoderInfos = getDecoderInfosInternal(key, mediaCodecList);
        if (secure) {
            decoderInfos.isEmpty();
        }
        applyWorkarounds(mimeType, decoderInfos);
        ImmutableList<MediaCodecInfo> immutableDecoderInfos = ImmutableList.copyOf((Collection) decoderInfos);
        decoderInfosCache.put(key, immutableDecoderInfos);
        return immutableDecoderInfos;
    }

    @RequiresNonNull({"#2.sampleMimeType"})
    public static List<MediaCodecInfo> getDecoderInfosSoftMatch(MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder, boolean requiresTunnelingDecoder) throws DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = mediaCodecSelector.getDecoderInfos(format.sampleMimeType, requiresSecureDecoder, requiresTunnelingDecoder);
        List<MediaCodecInfo> alternativeDecoderInfos = getAlternativeDecoderInfos(mediaCodecSelector, format, requiresSecureDecoder, requiresTunnelingDecoder);
        return ImmutableList.builder().addAll((Iterable) decoderInfos).addAll((Iterable) alternativeDecoderInfos).build();
    }

    public static List<MediaCodecInfo> getAlternativeDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder, boolean requiresTunnelingDecoder) throws DecoderQueryException {
        String alternativeMimeType = getAlternativeCodecMimeType(format);
        if (alternativeMimeType == null) {
            return ImmutableList.of();
        }
        return mediaCodecSelector.getDecoderInfos(alternativeMimeType, requiresSecureDecoder, requiresTunnelingDecoder);
    }

    public static List<MediaCodecInfo> getDecoderInfosSortedByFormatSupport(final Context context, List<MediaCodecInfo> decoderInfos, final Format format) {
        List<MediaCodecInfo> decoderInfos2 = new ArrayList<>(decoderInfos);
        sortByScore(decoderInfos2, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda3
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
            public final int getScore(Object obj) {
                return MediaCodecUtil.lambda$getDecoderInfosSortedByFormatSupport$0(context, format, (MediaCodecInfo) obj);
            }
        });
        return decoderInfos2;
    }

    static /* synthetic */ int lambda$getDecoderInfosSortedByFormatSupport$0(Context context, Format format, MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isFormatFunctionallySupported(context, format) ? 1 : 0;
    }

    public static List<MediaCodecInfo> getDecoderInfosSortedByFullFormatSupport(final Context context, List<MediaCodecInfo> decoderInfos, final Format format) {
        List<MediaCodecInfo> decoderInfos2 = new ArrayList<>(decoderInfos);
        sortByScore(decoderInfos2, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda1
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
            public final int getScore(Object obj) {
                return MediaCodecUtil.lambda$getDecoderInfosSortedByFullFormatSupport$1(context, format, (MediaCodecInfo) obj);
            }
        });
        return decoderInfos2;
    }

    static /* synthetic */ int lambda$getDecoderInfosSortedByFullFormatSupport$1(Context context, Format format, MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isFormatSupported(context, format) ? 1 : 0;
    }

    public static List<MediaCodecInfo> getDecoderInfosSortedBySoftwareOnly(List<MediaCodecInfo> decoderInfos) {
        List<MediaCodecInfo> decoderInfos2 = new ArrayList<>(decoderInfos);
        sortByScore(decoderInfos2, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
            public final int getScore(Object obj) {
                return MediaCodecUtil.lambda$getDecoderInfosSortedBySoftwareOnly$2((MediaCodecInfo) obj);
            }
        });
        return ImmutableList.copyOf((Collection) decoderInfos2);
    }

    static /* synthetic */ int lambda$getDecoderInfosSortedBySoftwareOnly$2(MediaCodecInfo mediaCodecInfo) {
        return (mediaCodecInfo.softwareOnly ? 2 : 0) + (!mediaCodecInfo.vendor ? 1 : 0);
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        if (maxH264DecodableFrameSize == -1) {
            int result = 0;
            MediaCodecInfo decoderInfo = getDecoderInfo(MimeTypes.VIDEO_H264, false, false);
            if (decoderInfo != null) {
                for (MediaCodecInfo.CodecProfileLevel profileLevel : decoderInfo.getProfileLevels()) {
                    result = Math.max(avcLevelToMaxFrameSize(profileLevel.level), result);
                }
                result = Math.max(result, 345600);
            }
            maxH264DecodableFrameSize = result;
        }
        return maxH264DecodableFrameSize;
    }

    public static MediaCodecInfo.CodecProfileLevel createCodecProfileLevel(int profile, int level) {
        MediaCodecInfo.CodecProfileLevel profileLevel = new MediaCodecInfo.CodecProfileLevel();
        profileLevel.profile = profile;
        profileLevel.level = level;
        return profileLevel;
    }

    @Deprecated
    public static Pair<Integer, Integer> getCodecProfileAndLevel(Format format) {
        return CodecSpecificDataUtil.getCodecProfileAndLevel(format);
    }

    public static Pair<Integer, Integer> getHevcBaseLayerCodecProfileAndLevel(Format format) {
        String codecs = NalUnitUtil.getH265BaseLayerCodecsString(format.initializationData);
        if (codecs == null) {
            return null;
        }
        String[] parts = Util.split(codecs.trim(), "\\.");
        return CodecSpecificDataUtil.getHevcProfileAndLevel(codecs, parts, format.colorInfo);
    }

    public static String getAlternativeCodecMimeType(Format format) {
        Pair<Integer, Integer> codecProfileAndLevel;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(format.sampleMimeType)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format)) != null) {
            int profile = ((Integer) codecProfileAndLevel.first).intValue();
            if (profile == 16 || profile == 256) {
                return MimeTypes.VIDEO_H265;
            }
            if (profile == 512) {
                return MimeTypes.VIDEO_H264;
            }
            if (profile == 1024) {
                if (format.colorInfo != null && format.colorInfo.colorTransfer == 6 && format.colorInfo.colorRange == 1) {
                    return null;
                }
                return MimeTypes.VIDEO_AV1;
            }
        }
        if (MimeTypes.VIDEO_MV_HEVC.equals(format.sampleMimeType)) {
            return MimeTypes.VIDEO_H265;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009e, code lost:
    
        if (r24.secure != r12) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ArrayList<MediaCodecInfo> getDecoderInfosInternal(CodecKey key, MediaCodecListCompat mediaCodecList) throws DecoderQueryException {
        String name;
        String codecMimeType;
        String str;
        int i;
        String str2 = "secure-playback";
        try {
            ArrayList<MediaCodecInfo> decoderInfos = new ArrayList<>();
            String mimeType = key.mimeType;
            int numberOfCodecs = mediaCodecList.getCodecCount();
            boolean secureDecodersExplicit = mediaCodecList.secureDecodersExplicit();
            int i2 = 0;
            while (i2 < numberOfCodecs) {
                android.media.MediaCodecInfo codecInfo = mediaCodecList.getCodecInfoAt(i2);
                if (isAlias(codecInfo)) {
                    str = str2;
                    i = i2;
                } else {
                    String name2 = codecInfo.getName();
                    if (isCodecUsableDecoder(codecInfo, name2, secureDecodersExplicit, mimeType)) {
                        String codecMimeType2 = getCodecMimeType(codecInfo, name2, mimeType);
                        if (codecMimeType2 == null) {
                            str = str2;
                            i = i2;
                        } else {
                            try {
                                MediaCodecInfo.CodecCapabilities capabilities = codecInfo.getCapabilitiesForType(codecMimeType2);
                                boolean tunnelingSupported = mediaCodecList.isFeatureSupported("tunneled-playback", codecMimeType2, capabilities);
                                boolean tunnelingRequired = mediaCodecList.isFeatureRequired("tunneled-playback", codecMimeType2, capabilities);
                                if ((key.tunneling || !tunnelingRequired) && (!key.tunneling || tunnelingSupported)) {
                                    boolean secureSupported = mediaCodecList.isFeatureSupported(str2, codecMimeType2, capabilities);
                                    boolean secureRequired = mediaCodecList.isFeatureRequired(str2, codecMimeType2, capabilities);
                                    if ((key.secure || !secureRequired) && (!key.secure || secureSupported)) {
                                        boolean hardwareAccelerated = isHardwareAccelerated(codecInfo, mimeType);
                                        boolean softwareOnly = isSoftwareOnly(codecInfo, mimeType);
                                        boolean vendor = isVendor(codecInfo);
                                        if (secureDecodersExplicit) {
                                            str = str2;
                                            try {
                                            } catch (Exception e) {
                                                e = e;
                                                name = name2;
                                                codecMimeType = codecMimeType2;
                                                Log.e(TAG, "Failed to query codec " + name + " (" + codecMimeType + ")");
                                                throw e;
                                            }
                                        } else {
                                            str = str2;
                                        }
                                        if (secureDecodersExplicit || key.secure) {
                                            i = i2;
                                            name = name2;
                                            codecMimeType = codecMimeType2;
                                            if (!secureDecodersExplicit && secureSupported) {
                                                try {
                                                } catch (Exception e2) {
                                                    e = e2;
                                                }
                                                try {
                                                    decoderInfos.add(MediaCodecInfo.newInstance(name + ".secure", mimeType, codecMimeType, capabilities, hardwareAccelerated, softwareOnly, vendor, false, true));
                                                    return decoderInfos;
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    name = name;
                                                    Log.e(TAG, "Failed to query codec " + name + " (" + codecMimeType + ")");
                                                    throw e;
                                                }
                                            }
                                        }
                                        codecMimeType = codecMimeType2;
                                        i = i2;
                                        name = name2;
                                        try {
                                            decoderInfos.add(MediaCodecInfo.newInstance(name, mimeType, codecMimeType, capabilities, hardwareAccelerated, softwareOnly, vendor, false, false));
                                        } catch (Exception e4) {
                                            e = e4;
                                            Log.e(TAG, "Failed to query codec " + name + " (" + codecMimeType + ")");
                                            throw e;
                                        }
                                    } else {
                                        str = str2;
                                        i = i2;
                                    }
                                } else {
                                    str = str2;
                                    i = i2;
                                }
                            } catch (Exception e5) {
                                e = e5;
                                name = name2;
                                codecMimeType = codecMimeType2;
                            }
                        }
                    } else {
                        str = str2;
                        i = i2;
                    }
                }
                i2 = i + 1;
                str2 = str;
            }
            return decoderInfos;
        } catch (Exception e6) {
            throw new DecoderQueryException(e6);
        }
    }

    private static String getCodecMimeType(android.media.MediaCodecInfo info, String name, String mimeType) {
        String[] supportedTypes = info.getSupportedTypes();
        for (String supportedType : supportedTypes) {
            if (supportedType.equalsIgnoreCase(mimeType)) {
                return supportedType;
            }
        }
        if (mimeType.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(name)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(name) || "OMX.realtek.video.decoder.tunneled".equals(name)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (mimeType.equals(MimeTypes.VIDEO_MV_HEVC)) {
            if ("c2.qti.mvhevc.decoder".equals(name) || "c2.qti.mvhevc.decoder.secure".equals(name)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (mimeType.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(name)) {
            return "audio/x-lg-alac";
        }
        if (mimeType.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(name)) {
            return "audio/x-lg-flac";
        }
        if (mimeType.equals(MimeTypes.AUDIO_AC3) && "OMX.lge.ac3.decoder".equals(name)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    private static boolean isCodecUsableDecoder(android.media.MediaCodecInfo info, String name, boolean secureDecodersExplicit, String mimeType) {
        if (info.isEncoder()) {
            return false;
        }
        if (!secureDecodersExplicit && name.endsWith(".secure")) {
            return false;
        }
        return true;
    }

    private static void applyWorkarounds(String mimeType, List<MediaCodecInfo> decoderInfos) {
        if (MimeTypes.AUDIO_RAW.equals(mimeType)) {
            if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && decoderInfos.size() == 1 && decoderInfos.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                decoderInfos.add(MediaCodecInfo.newInstance("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            sortByScore(decoderInfos, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda4
                @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
                public final int getScore(Object obj) {
                    return MediaCodecUtil.lambda$applyWorkarounds$3((MediaCodecInfo) obj);
                }
            });
        }
        if (Build.VERSION.SDK_INT < 32 && decoderInfos.size() > 1) {
            String firstCodecName = decoderInfos.get(0).name;
            if ("OMX.qti.audio.decoder.flac".equals(firstCodecName)) {
                decoderInfos.add(decoderInfos.remove(0));
            }
        }
    }

    static /* synthetic */ int lambda$applyWorkarounds$3(MediaCodecInfo decoderInfo) {
        String name = decoderInfo.name;
        if (name.startsWith("OMX.google") || name.startsWith("c2.android")) {
            return 1;
        }
        if (Build.VERSION.SDK_INT < 26 && name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
            return -1;
        }
        return 0;
    }

    private static boolean isAlias(android.media.MediaCodecInfo info) {
        return Build.VERSION.SDK_INT >= 29 && isAliasV29(info);
    }

    private static boolean isAliasV29(android.media.MediaCodecInfo info) {
        return info.isAlias();
    }

    private static boolean isHardwareAccelerated(android.media.MediaCodecInfo codecInfo, String mimeType) {
        if (Build.VERSION.SDK_INT >= 29) {
            return isHardwareAcceleratedV29(codecInfo);
        }
        return !isSoftwareOnly(codecInfo, mimeType);
    }

    private static boolean isHardwareAcceleratedV29(android.media.MediaCodecInfo codecInfo) {
        return codecInfo.isHardwareAccelerated();
    }

    private static boolean isSoftwareOnly(android.media.MediaCodecInfo codecInfo, String mimeType) {
        if (Build.VERSION.SDK_INT >= 29) {
            return isSoftwareOnlyV29(codecInfo);
        }
        if (MimeTypes.isAudio(mimeType)) {
            return true;
        }
        String codecName = Ascii.toLowerCase(codecInfo.getName());
        if (codecName.startsWith("arc.")) {
            return false;
        }
        if (codecName.startsWith("omx.google.") || codecName.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((codecName.startsWith("omx.sec.") && codecName.contains(".sw.")) || codecName.equals("omx.qcom.video.decoder.hevcswvdec") || codecName.startsWith("c2.android.") || codecName.startsWith("c2.google.")) {
            return true;
        }
        return (codecName.startsWith("omx.") || codecName.startsWith("c2.")) ? false : true;
    }

    private static boolean isSoftwareOnlyV29(android.media.MediaCodecInfo codecInfo) {
        return codecInfo.isSoftwareOnly();
    }

    private static boolean isVendor(android.media.MediaCodecInfo codecInfo) {
        if (Build.VERSION.SDK_INT >= 29) {
            return isVendorV29(codecInfo);
        }
        String codecName = Ascii.toLowerCase(codecInfo.getName());
        return (codecName.startsWith("omx.google.") || codecName.startsWith("c2.android.") || codecName.startsWith("c2.google.")) ? false : true;
    }

    private static boolean isVendorV29(android.media.MediaCodecInfo codecInfo) {
        return codecInfo.isVendor();
    }

    private static int avcLevelToMaxFrameSize(int avcLevel) {
        switch (avcLevel) {
            case 1:
            case 2:
                return 25344;
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    static /* synthetic */ int lambda$sortByScore$4(ScoreProvider scoreProvider, Object a, Object b) {
        return scoreProvider.getScore(b) - scoreProvider.getScore(a);
    }

    private static <T> void sortByScore(List<T> list, final ScoreProvider<T> scoreProvider) {
        Collections.sort(list, new Comparator() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.lambda$sortByScore$4(scoreProvider, obj, obj2);
            }
        });
    }

    private static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;
        private android.media.MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean includeSecure, boolean includeTunneling, boolean includeSpecialCodec) {
            int i;
            if (includeSecure || includeTunneling || includeSpecialCodec) {
                i = 1;
            } else {
                i = 0;
            }
            this.codecKind = i;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int index) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[index];
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(String feature, String mimeType, MediaCodecInfo.CodecCapabilities capabilities) {
            return capabilities.isFeatureSupported(feature);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(String feature, String mimeType, MediaCodecInfo.CodecCapabilities capabilities) {
            return capabilities.isFeatureRequired(feature);
        }

        @EnsuresNonNull({"mediaCodecInfos"})
        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }
    }

    private static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        private MediaCodecListCompatV16() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int index) {
            return MediaCodecList.getCodecInfoAt(index);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(String feature, String mimeType, MediaCodecInfo.CodecCapabilities capabilities) {
            return "secure-playback".equals(feature) && MimeTypes.VIDEO_H264.equals(mimeType);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(String feature, String mimeType, MediaCodecInfo.CodecCapabilities capabilities) {
            return false;
        }
    }

    private static final class CodecKey {
        public final String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public CodecKey(String mimeType, boolean secure, boolean tunneling) {
            this.mimeType = mimeType;
            this.secure = secure;
            this.tunneling = tunneling;
        }

        public int hashCode() {
            int result = (1 * 31) + this.mimeType.hashCode();
            return (((result * 31) + (this.secure ? 1231 : 1237)) * 31) + (this.tunneling ? 1231 : 1237);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey other = (CodecKey) obj;
            if (TextUtils.equals(this.mimeType, other.mimeType) && this.secure == other.secure && this.tunneling == other.tunneling) {
                return true;
            }
            return false;
        }
    }
}
