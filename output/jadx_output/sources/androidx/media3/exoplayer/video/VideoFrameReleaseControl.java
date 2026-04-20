package androidx.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.work.WorkRequest;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes21.dex */
public final class VideoFrameReleaseControl {
    public static final int FRAME_RELEASE_DROP = 2;
    public static final int FRAME_RELEASE_IGNORE = 4;
    public static final int FRAME_RELEASE_IMMEDIATELY = 0;
    public static final int FRAME_RELEASE_SCHEDULED = 1;
    public static final int FRAME_RELEASE_SKIP = 3;
    public static final int FRAME_RELEASE_TRY_AGAIN_LATER = 5;
    private static final long MAX_EARLY_US_THRESHOLD = 50000;
    private final long allowedJoiningTimeMs;
    private boolean disableAdvancingTimestampChecks;
    private boolean frameReadyWithoutSurface;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private final FrameTimingEvaluator frameTimingEvaluator;
    private boolean hasOutputSurface;
    private boolean joiningRenderNextFrameImmediately;
    private long lastReleaseRealtimeUs;
    private boolean started;
    private int firstFrameState = 0;
    private long initialPositionUs = C.TIME_UNSET;
    private long lastPresentationTimeUs = C.TIME_UNSET;
    private long joiningDeadlineMs = C.TIME_UNSET;
    private float playbackSpeed = 1.0f;
    private Clock clock = Clock.DEFAULT;
    private boolean requiresOutputSurface = true;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameReleaseAction {
    }

    public interface FrameTimingEvaluator {
        boolean shouldDropFrame(long j, long j2, boolean z);

        boolean shouldForceReleaseFrame(long j, long j2);

        boolean shouldIgnoreFrame(long j, long j2, long j3, boolean z, boolean z2) throws ExoPlaybackException;
    }

    public static class FrameReleaseInfo {
        private long earlyUs = C.TIME_UNSET;
        private long releaseTimeNs = C.TIME_UNSET;

        public long getEarlyUs() {
            return this.earlyUs;
        }

        public long getReleaseTimeNs() {
            return this.releaseTimeNs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.earlyUs = C.TIME_UNSET;
            this.releaseTimeNs = C.TIME_UNSET;
        }
    }

    public VideoFrameReleaseControl(Context applicationContext, FrameTimingEvaluator frameTimingEvaluator, long allowedJoiningTimeMs) {
        this.frameTimingEvaluator = frameTimingEvaluator;
        this.allowedJoiningTimeMs = allowedJoiningTimeMs;
        this.frameReleaseHelper = new VideoFrameReleaseHelper(applicationContext);
    }

    public void onStreamChanged(int firstFrameReleaseInstruction) {
        switch (firstFrameReleaseInstruction) {
            case 0:
                this.firstFrameState = 1;
                break;
            case 1:
                this.firstFrameState = 0;
                break;
            case 2:
                lowerFirstFrameState(2);
                break;
            default:
                throw new IllegalStateException();
        }
        this.frameReleaseHelper.onPositionReset();
    }

    public void onStarted() {
        this.started = true;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        this.frameReleaseHelper.onStarted();
    }

    public void onStopped() {
        this.started = false;
        this.joiningDeadlineMs = C.TIME_UNSET;
        this.frameReleaseHelper.onStopped();
    }

    public void setOutputSurface(Surface outputSurface) {
        this.hasOutputSurface = outputSurface != null;
        this.frameReadyWithoutSurface = false;
        this.frameReleaseHelper.onSurfaceChanged(outputSurface);
        lowerFirstFrameState(1);
    }

    public void setFrameRate(float frameRate) {
        this.frameReleaseHelper.onFormatChanged(frameRate);
    }

    public void setRequiresOutputSurface(boolean requiresOutputSurface) {
        this.requiresOutputSurface = requiresOutputSurface;
    }

    public boolean onFrameReleasedIsFirstFrame() {
        boolean firstFrame = this.firstFrameState != 3;
        this.firstFrameState = 3;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        return firstFrame;
    }

    public void setClock(Clock clock) {
        this.clock = clock;
    }

    public void allowReleaseFirstFrameBeforeStarted() {
        if (this.firstFrameState == 0) {
            this.firstFrameState = 1;
        }
    }

    public boolean isReady(boolean otherwiseReady) {
        if (otherwiseReady && (this.firstFrameState == 3 || (this.frameReadyWithoutSurface && (!this.hasOutputSurface || !this.requiresOutputSurface)))) {
            this.joiningDeadlineMs = C.TIME_UNSET;
            return true;
        }
        if (this.joiningDeadlineMs == C.TIME_UNSET) {
            return false;
        }
        if (this.clock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = C.TIME_UNSET;
        return false;
    }

    public void join(boolean renderNextFrameImmediately) {
        this.joiningRenderNextFrameImmediately = renderNextFrameImmediately;
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? this.clock.elapsedRealtime() + this.allowedJoiningTimeMs : C.TIME_UNSET;
    }

    public int getFrameReleaseAction(long presentationTimeUs, long positionUs, long elapsedRealtimeUs, long outputStreamStartPositionUs, boolean isDecodeOnlyFrame, boolean isLastFrame, FrameReleaseInfo frameReleaseInfo) throws ExoPlaybackException {
        frameReleaseInfo.reset();
        if (this.started && this.initialPositionUs == C.TIME_UNSET) {
            this.initialPositionUs = positionUs;
        }
        if (this.lastPresentationTimeUs != presentationTimeUs) {
            this.frameReleaseHelper.onNextFrame(presentationTimeUs);
            this.lastPresentationTimeUs = presentationTimeUs;
        }
        frameReleaseInfo.earlyUs = calculateEarlyTimeUs(positionUs, elapsedRealtimeUs, presentationTimeUs);
        if (isDecodeOnlyFrame && !isLastFrame) {
            return 3;
        }
        if (!this.hasOutputSurface && this.requiresOutputSurface) {
            if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, positionUs, elapsedRealtimeUs, isLastFrame, true)) {
                return 4;
            }
            if (this.started && frameReleaseInfo.earlyUs < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                return 3;
            }
            this.frameReadyWithoutSurface = true;
            return 5;
        }
        if (!this.requiresOutputSurface) {
            this.frameReadyWithoutSurface = true;
        }
        if (shouldForceRelease(positionUs, frameReleaseInfo.earlyUs, outputStreamStartPositionUs)) {
            return 0;
        }
        if (!this.started || positionUs == this.initialPositionUs) {
            return 5;
        }
        long systemTimeNs = this.clock.nanoTime();
        frameReleaseInfo.releaseTimeNs = this.frameReleaseHelper.adjustReleaseTime(systemTimeNs + (frameReleaseInfo.earlyUs * 1000), presentationTimeUs);
        frameReleaseInfo.earlyUs = (frameReleaseInfo.releaseTimeNs - systemTimeNs) / 1000;
        boolean treatDropAsSkip = (this.joiningDeadlineMs == C.TIME_UNSET || this.joiningRenderNextFrameImmediately) ? false : true;
        if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, positionUs, elapsedRealtimeUs, isLastFrame, treatDropAsSkip)) {
            return 4;
        }
        return this.frameTimingEvaluator.shouldDropFrame(frameReleaseInfo.earlyUs, elapsedRealtimeUs, isLastFrame) ? treatDropAsSkip ? 3 : 2 : frameReleaseInfo.earlyUs > MAX_EARLY_US_THRESHOLD ? 5 : 1;
    }

    public void reset() {
        this.frameReleaseHelper.onPositionReset();
        this.lastPresentationTimeUs = C.TIME_UNSET;
        this.initialPositionUs = C.TIME_UNSET;
        lowerFirstFrameState(1);
        this.joiningDeadlineMs = C.TIME_UNSET;
        this.frameReadyWithoutSurface = false;
    }

    public void setChangeFrameRateStrategy(int changeFrameRateStrategy) {
        this.frameReleaseHelper.setChangeFrameRateStrategy(changeFrameRateStrategy);
    }

    public void setPlaybackSpeed(float speed) {
        Preconditions.checkArgument(speed > 0.0f);
        if (speed == this.playbackSpeed) {
            return;
        }
        this.playbackSpeed = speed;
        this.frameReleaseHelper.onPlaybackSpeed(speed);
    }

    void experimentalDisableAdvancingTimestampChecks() {
        this.disableAdvancingTimestampChecks = true;
    }

    private void lowerFirstFrameState(int firstFrameState) {
        this.firstFrameState = Math.min(this.firstFrameState, firstFrameState);
    }

    private long calculateEarlyTimeUs(long positionUs, long elapsedRealtimeUs, long framePresentationTimeUs) {
        long earlyUs = (long) ((framePresentationTimeUs - positionUs) / ((double) this.playbackSpeed));
        if (this.started) {
            return earlyUs - (Util.msToUs(this.clock.elapsedRealtime()) - elapsedRealtimeUs);
        }
        return earlyUs;
    }

    private boolean shouldForceRelease(long positionUs, long earlyUs, long outputStreamStartPositionUs) {
        if (this.joiningDeadlineMs != C.TIME_UNSET && !this.joiningRenderNextFrameImmediately) {
            return false;
        }
        switch (this.firstFrameState) {
            case 0:
                return this.started;
            case 1:
                return true;
            case 2:
                return positionUs >= outputStreamStartPositionUs;
            case 3:
                long elapsedTimeSinceLastReleaseUs = Util.msToUs(this.clock.elapsedRealtime()) - this.lastReleaseRealtimeUs;
                if (this.started) {
                    return (this.disableAdvancingTimestampChecks || !(this.initialPositionUs == C.TIME_UNSET || this.initialPositionUs == positionUs)) && this.frameTimingEvaluator.shouldForceReleaseFrame(earlyUs, elapsedTimeSinceLastReleaseUs);
                }
                return false;
            default:
                throw new IllegalStateException();
        }
    }
}
