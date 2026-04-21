package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import android.os.Build;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
final class MediaCodecPerformancePointCoverageProvider {
    static final int COVERAGE_RESULT_NO = 1;
    static final int COVERAGE_RESULT_NO_PERFORMANCE_POINTS_UNSUPPORTED = 0;
    static final int COVERAGE_RESULT_YES = 2;
    private static Boolean shouldIgnorePerformancePoints;

    private MediaCodecPerformancePointCoverageProvider() {
    }

    public static int areResolutionAndFrameRateCovered(MediaCodecInfo.VideoCapabilities videoCapabilities, int width, int height, double frameRate) {
        if (Build.VERSION.SDK_INT < 29) {
            return 0;
        }
        if (shouldIgnorePerformancePoints != null && shouldIgnorePerformancePoints.booleanValue()) {
            return 0;
        }
        return Api29.areResolutionAndFrameRateCovered(videoCapabilities, width, height, frameRate);
    }

    private static final class Api29 {
        private Api29() {
        }

        public static int areResolutionAndFrameRateCovered(MediaCodecInfo.VideoCapabilities videoCapabilities, int width, int height, double frameRate) {
            List<MediaCodecInfo.VideoCapabilities.PerformancePoint> performancePointList = videoCapabilities.getSupportedPerformancePoints();
            if (performancePointList == null || performancePointList.isEmpty()) {
                return 0;
            }
            MediaCodecInfo.VideoCapabilities.PerformancePoint targetPerformancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(width, height, (int) frameRate);
            int performancePointCoverageResult = evaluatePerformancePointCoverage(performancePointList, targetPerformancePoint);
            if (performancePointCoverageResult == 1 && MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints == null) {
                Boolean unused = MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints = Boolean.valueOf(shouldIgnorePerformancePoints());
                if (MediaCodecPerformancePointCoverageProvider.shouldIgnorePerformancePoints.booleanValue()) {
                    return 0;
                }
            }
            return performancePointCoverageResult;
        }

        private static boolean shouldIgnorePerformancePoints() {
            if (Build.VERSION.SDK_INT >= 37) {
                return false;
            }
            int h264SecureRequiredSupportResult = evaluateH264RequiredSupport(true);
            if (Build.VERSION.SDK_INT >= 35) {
                return h264SecureRequiredSupportResult == 1;
            }
            int h264RequiredSupportResult = evaluateH264RequiredSupport(false);
            return h264RequiredSupportResult != 2 || h264SecureRequiredSupportResult == 1;
        }

        private static int evaluateH264RequiredSupport(boolean requiresSecureDecoder) {
            MediaCodecInfo.VideoCapabilities videoCapabilities;
            List<MediaCodecInfo.VideoCapabilities.PerformancePoint> performancePointListH264;
            try {
                Format formatH264 = new Format.Builder().setSampleMimeType(MimeTypes.VIDEO_H264).build();
                if (formatH264.sampleMimeType != null) {
                    List<MediaCodecInfo> decoderInfos = MediaCodecUtil.getDecoderInfosSoftMatch(MediaCodecSelector.DEFAULT, formatH264, requiresSecureDecoder, false);
                    for (int i = 0; i < decoderInfos.size(); i++) {
                        if (decoderInfos.get(i).capabilities != null && (videoCapabilities = decoderInfos.get(i).capabilities.getVideoCapabilities()) != null && (performancePointListH264 = videoCapabilities.getSupportedPerformancePoints()) != null && !performancePointListH264.isEmpty()) {
                            MediaCodecInfo.VideoCapabilities.PerformancePoint targetPerformancePointH264 = new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60);
                            return evaluatePerformancePointCoverage(performancePointListH264, targetPerformancePointH264);
                        }
                    }
                }
                return 0;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                return 0;
            }
        }

        private static int evaluatePerformancePointCoverage(List<MediaCodecInfo.VideoCapabilities.PerformancePoint> performancePointList, MediaCodecInfo.VideoCapabilities.PerformancePoint targetPerformancePoint) {
            for (int i = 0; i < performancePointList.size(); i++) {
                if (performancePointList.get(i).covers(targetPerformancePoint)) {
                    return 2;
                }
            }
            return 1;
        }
    }
}
