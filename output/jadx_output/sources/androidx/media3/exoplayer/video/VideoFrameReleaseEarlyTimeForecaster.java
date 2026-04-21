package androidx.media3.exoplayer.video;

import android.util.Range;
import androidx.media3.common.C;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
class VideoFrameReleaseEarlyTimeForecaster {
    private static final float SMOOTHING_FACTOR = 0.2f;
    private double derivativeOfEarlyTime;
    private Range<Double> derivativeOfEarlyTimeRange;
    private long lastFrameEarlyUs;
    private long lastFramePresentationTimeUs;

    public VideoFrameReleaseEarlyTimeForecaster(float playbackSpeed) {
        Preconditions.checkArgument(playbackSpeed > 0.0f);
        this.derivativeOfEarlyTimeRange = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) playbackSpeed)));
        this.derivativeOfEarlyTime = ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    public void onVideoFrameProcessed(long framePresentationTimeUs, long earlyUs) {
        Preconditions.checkArgument(framePresentationTimeUs != C.TIME_UNSET);
        Preconditions.checkArgument(earlyUs != C.TIME_UNSET);
        double derivativeFromLastFrame = calculateDerivativeFromLastFrame(framePresentationTimeUs, earlyUs);
        updateDerivativeWithExponentialMovingAverage(((Double) this.derivativeOfEarlyTimeRange.clamp(Double.valueOf(derivativeFromLastFrame))).doubleValue());
        this.lastFramePresentationTimeUs = framePresentationTimeUs;
        this.lastFrameEarlyUs = earlyUs;
    }

    public long predictEarlyUs(long presentationTimeUs) {
        return this.lastFramePresentationTimeUs == C.TIME_UNSET ? C.TIME_UNSET : (long) (this.lastFrameEarlyUs + ((presentationTimeUs - this.lastFramePresentationTimeUs) * this.derivativeOfEarlyTime));
    }

    public void setPlaybackSpeed(float playbackSpeed) {
        Preconditions.checkArgument(playbackSpeed > 0.0f);
        this.derivativeOfEarlyTimeRange = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) playbackSpeed)));
        reset();
    }

    public void reset() {
        this.derivativeOfEarlyTime = ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    private double calculateDerivativeFromLastFrame(long presentationTimeUs, long earlyUs) {
        if (this.lastFramePresentationTimeUs != C.TIME_UNSET && this.lastFrameEarlyUs != C.TIME_UNSET && presentationTimeUs != this.lastFramePresentationTimeUs) {
            return (earlyUs - this.lastFrameEarlyUs) / (presentationTimeUs - this.lastFramePresentationTimeUs);
        }
        return ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
    }

    private void updateDerivativeWithExponentialMovingAverage(double latestDerivative) {
        this.derivativeOfEarlyTime = (this.derivativeOfEarlyTime * 0.800000011920929d) + (0.20000000298023224d * latestDerivative);
    }
}
