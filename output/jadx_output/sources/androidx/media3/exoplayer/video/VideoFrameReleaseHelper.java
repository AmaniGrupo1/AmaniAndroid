package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class VideoFrameReleaseHelper {
    private static final long MAX_ALLOWED_ADJUSTMENT_NS = 20000000;
    private static final int MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE = 30;
    private static final long MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS = 5000000000L;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE = 0.1f;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE = 1.0f;
    private static final String TAG = "VideoFrameReleaseHelper";
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    public static final long VSYNC_SAMPLE_UPDATE_PERIOD_MS = 500;
    private final Context context;
    private long frameIndex;
    private long lastAdjustedFrameIndex;
    private long lastAdjustedPresentationTimeUs;
    private long lastAdjustedReleaseTimeNs;
    private long lastVsyncHysteresisOffsetNs;
    private long pendingLastAdjustedFrameIndex;
    private long pendingLastAdjustedReleaseTimeNs;
    private long pendingLastPresentationTimeUs;
    private long pendingVsyncHysteresisOffsetNs;
    private boolean started;
    private Surface surface;
    private float surfaceMediaFrameRate;
    private float surfacePlaybackFrameRate;
    private boolean vsyncSampleBuilt;
    private VSyncSampler vsyncSampler;
    private final FixedFrameRateEstimator frameRateEstimator = new FixedFrameRateEstimator();
    private float formatFrameRate = -1.0f;
    private float playbackSpeed = 1.0f;
    private int changeFrameRateStrategy = 0;

    public VideoFrameReleaseHelper(Context context) {
        this.context = context;
    }

    public void setChangeFrameRateStrategy(int changeFrameRateStrategy) {
        if (this.changeFrameRateStrategy == changeFrameRateStrategy) {
            return;
        }
        this.changeFrameRateStrategy = changeFrameRateStrategy;
        updateSurfacePlaybackFrameRate(true);
    }

    public void onStarted() {
        this.started = true;
        resetAdjustment();
        if (!this.vsyncSampleBuilt) {
            this.vsyncSampler = VSyncSampler.maybeBuildInstance(this.context);
        }
        if (this.vsyncSampler != null) {
            this.vsyncSampler.register();
        }
        updateSurfacePlaybackFrameRate(false);
    }

    public void onSurfaceChanged(Surface surface) {
        if (this.surface == surface) {
            return;
        }
        clearSurfaceFrameRate();
        this.surface = surface;
        updateSurfacePlaybackFrameRate(true);
    }

    public void onPositionReset() {
        resetAdjustment();
    }

    public void onPlaybackSpeed(float playbackSpeed) {
        this.playbackSpeed = playbackSpeed;
        updateSurfacePlaybackFrameRate(false);
    }

    public void onFormatChanged(float formatFrameRate) {
        this.formatFrameRate = formatFrameRate;
        this.frameRateEstimator.reset();
        updateSurfaceMediaFrameRate();
    }

    public void onNextFrame(long framePresentationTimeUs) {
        if (this.pendingLastAdjustedFrameIndex != -1) {
            this.lastAdjustedFrameIndex = this.pendingLastAdjustedFrameIndex;
            this.lastAdjustedReleaseTimeNs = this.pendingLastAdjustedReleaseTimeNs;
            this.lastAdjustedPresentationTimeUs = this.pendingLastPresentationTimeUs;
            this.lastVsyncHysteresisOffsetNs = this.pendingVsyncHysteresisOffsetNs;
        }
        this.frameIndex++;
        this.frameRateEstimator.onNextFrame(1000 * framePresentationTimeUs);
        updateSurfaceMediaFrameRate();
    }

    public void onStopped() {
        this.started = false;
        if (this.vsyncSampler != null) {
            this.vsyncSampler.unregister();
        }
        clearSurfaceFrameRate();
    }

    public long adjustReleaseTime(long releaseTimeNs, long presentationTimeUs) {
        long frameDurationNs;
        long adjustedReleaseTimeNs = releaseTimeNs;
        if (this.lastAdjustedFrameIndex != -1) {
            if (this.frameRateEstimator.isSynced()) {
                long frameDurationNs2 = this.frameRateEstimator.getFrameDurationNs();
                frameDurationNs = (long) (((this.frameIndex - this.lastAdjustedFrameIndex) * frameDurationNs2) / this.playbackSpeed);
            } else {
                long elapsedReleaseTimeSinceLastFrameNs = this.lastAdjustedPresentationTimeUs;
                frameDurationNs = (long) (((presentationTimeUs - elapsedReleaseTimeSinceLastFrameNs) * 1000) / this.playbackSpeed);
            }
            long candidateAdjustedReleaseTimeNs = this.lastAdjustedReleaseTimeNs + frameDurationNs;
            if (adjustmentAllowed(releaseTimeNs, candidateAdjustedReleaseTimeNs)) {
                adjustedReleaseTimeNs = candidateAdjustedReleaseTimeNs;
            } else {
                resetAdjustment();
            }
        }
        this.pendingLastAdjustedFrameIndex = this.frameIndex;
        this.pendingLastAdjustedReleaseTimeNs = adjustedReleaseTimeNs;
        this.pendingLastPresentationTimeUs = presentationTimeUs;
        if (this.vsyncSampler == null) {
            return adjustedReleaseTimeNs;
        }
        long sampledVsyncTimeNs = this.vsyncSampler.sampledVsyncTimeNs;
        long vsyncDurationNs = this.vsyncSampler.vsyncDurationNs;
        if (sampledVsyncTimeNs == C.TIME_UNSET || vsyncDurationNs == C.TIME_UNSET) {
            return adjustedReleaseTimeNs;
        }
        long snappedTimeNs = findClosestVsyncAndUpdateHysteresis(adjustedReleaseTimeNs, sampledVsyncTimeNs, vsyncDurationNs);
        return snappedTimeNs - ((VSYNC_OFFSET_PERCENTAGE * vsyncDurationNs) / 100);
    }

    public void setVsyncData(long vsyncSampleTimeNs, long vsyncDurationNs) {
        ((VSyncSampler) Preconditions.checkNotNull(this.vsyncSampler)).sampledVsyncTimeNs = vsyncSampleTimeNs;
        this.vsyncSampler.vsyncDurationNs = vsyncDurationNs;
    }

    private void resetAdjustment() {
        this.frameIndex = 0L;
        this.lastAdjustedFrameIndex = -1L;
        this.pendingLastAdjustedFrameIndex = -1L;
        this.lastVsyncHysteresisOffsetNs = 0L;
        this.pendingVsyncHysteresisOffsetNs = 0L;
    }

    private static boolean adjustmentAllowed(long unadjustedReleaseTimeNs, long adjustedReleaseTimeNs) {
        return Math.abs(unadjustedReleaseTimeNs - adjustedReleaseTimeNs) <= MAX_ALLOWED_ADJUSTMENT_NS;
    }

    private void updateSurfaceMediaFrameRate() {
        float minimumChangeForUpdate;
        if (Build.VERSION.SDK_INT < 30 || this.surface == null) {
            return;
        }
        float candidateFrameRate = this.frameRateEstimator.isSynced() ? this.frameRateEstimator.getFrameRate() : this.formatFrameRate;
        if (candidateFrameRate == this.surfaceMediaFrameRate) {
            return;
        }
        boolean shouldUpdate = true;
        if (candidateFrameRate != -1.0f && this.surfaceMediaFrameRate != -1.0f) {
            boolean candidateIsHighConfidence = this.frameRateEstimator.isSynced() && this.frameRateEstimator.getMatchingFrameDurationSumNs() >= MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS;
            if (candidateIsHighConfidence) {
                minimumChangeForUpdate = 0.1f;
            } else {
                minimumChangeForUpdate = 1.0f;
            }
            if (Math.abs(candidateFrameRate - this.surfaceMediaFrameRate) < minimumChangeForUpdate) {
                shouldUpdate = false;
            }
        } else if (candidateFrameRate != -1.0f) {
            shouldUpdate = true;
        } else if (this.frameRateEstimator.getFramesWithoutSyncCount() < 30) {
            shouldUpdate = false;
        }
        if (shouldUpdate) {
            this.surfaceMediaFrameRate = candidateFrameRate;
            updateSurfacePlaybackFrameRate(false);
        }
    }

    private void updateSurfacePlaybackFrameRate(boolean forceUpdate) {
        if (Build.VERSION.SDK_INT < 30 || this.surface == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || !this.surface.isValid()) {
            return;
        }
        float surfacePlaybackFrameRate = 0.0f;
        if (this.started && this.surfaceMediaFrameRate != -1.0f) {
            surfacePlaybackFrameRate = this.surfaceMediaFrameRate * this.playbackSpeed;
        }
        if (!forceUpdate && this.surfacePlaybackFrameRate == surfacePlaybackFrameRate) {
            return;
        }
        this.surfacePlaybackFrameRate = surfacePlaybackFrameRate;
        Api30.setSurfaceFrameRate(this.surface, surfacePlaybackFrameRate);
    }

    private void clearSurfaceFrameRate() {
        if (Build.VERSION.SDK_INT < 30 || this.surface == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || this.surfacePlaybackFrameRate == 0.0f || !this.surface.isValid()) {
            return;
        }
        this.surfacePlaybackFrameRate = 0.0f;
        Api30.setSurfaceFrameRate(this.surface, 0.0f);
    }

    private long findClosestVsyncAndUpdateHysteresis(long releaseTimeNs, long sampledVsyncTimeNs, long vsyncDurationNs) {
        long snappedBeforeNs;
        long snappedAfterNs;
        long vsyncCount = (releaseTimeNs - sampledVsyncTimeNs) / vsyncDurationNs;
        long snappedTimeNs = sampledVsyncTimeNs + (vsyncDurationNs * vsyncCount);
        if (releaseTimeNs <= snappedTimeNs) {
            snappedBeforeNs = snappedTimeNs - vsyncDurationNs;
            snappedAfterNs = snappedTimeNs;
        } else {
            snappedBeforeNs = snappedTimeNs;
            snappedAfterNs = snappedTimeNs + vsyncDurationNs;
        }
        long snappedAfterDiffNs = snappedAfterNs - releaseTimeNs;
        long snappedBeforeDiffNs = releaseTimeNs - snappedBeforeNs;
        long snappedDiffsDiffNs = Math.abs(snappedAfterDiffNs - snappedBeforeDiffNs);
        boolean shouldEvaluateHysteresis = snappedDiffsDiffNs < vsyncDurationNs / 2;
        if (!shouldEvaluateHysteresis) {
            long vsyncCount2 = this.lastVsyncHysteresisOffsetNs;
            this.pendingVsyncHysteresisOffsetNs = vsyncCount2;
        } else {
            long vsyncCount3 = vsyncDurationNs / 4;
            boolean isInHysteresisRange = snappedDiffsDiffNs < vsyncCount3;
            if (!isInHysteresisRange) {
                this.pendingVsyncHysteresisOffsetNs = 0L;
            } else if (this.lastVsyncHysteresisOffsetNs != 0) {
                this.pendingVsyncHysteresisOffsetNs = this.lastVsyncHysteresisOffsetNs;
            } else {
                this.pendingVsyncHysteresisOffsetNs = snappedAfterDiffNs < snappedBeforeDiffNs ? -vsyncCount3 : vsyncCount3;
            }
        }
        if (this.pendingVsyncHysteresisOffsetNs + snappedAfterDiffNs < snappedBeforeDiffNs) {
            return snappedAfterNs;
        }
        return snappedBeforeNs;
    }

    private static final class Api30 {
        private Api30() {
        }

        public static void setSurfaceFrameRate(Surface surface, float frameRate) {
            int compatibility;
            if (frameRate == 0.0f) {
                compatibility = 0;
            } else {
                compatibility = 1;
            }
            try {
                surface.setFrameRate(frameRate, compatibility);
            } catch (IllegalStateException e) {
                Log.e(VideoFrameReleaseHelper.TAG, "Failed to call Surface.setFrameRate", e);
            }
        }
    }

    private static abstract class VSyncSampler implements DisplayManager.DisplayListener {
        final Choreographer choreographer;
        final DisplayManager displayManager;
        volatile long sampledVsyncTimeNs;
        volatile long vsyncDurationNs;

        /* JADX INFO: Access modifiers changed from: private */
        public static VSyncSampler maybeBuildInstance(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return null;
            }
            try {
                Choreographer choreographer = Choreographer.getInstance();
                if (Build.VERSION.SDK_INT >= 33) {
                    return new VSyncSamplerV33(choreographer, displayManager);
                }
                return new VSyncSamplerBase(choreographer, displayManager);
            } catch (RuntimeException e) {
                Log.w(VideoFrameReleaseHelper.TAG, "Vsync sampling disabled due to platform error", e);
                return null;
            }
        }

        private VSyncSampler(Choreographer choreographer, DisplayManager displayManager) {
            this.choreographer = choreographer;
            this.displayManager = displayManager;
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }

        void register() {
            this.displayManager.registerDisplayListener(this, Util.createHandlerForCurrentLooper());
        }

        void unregister() {
            this.displayManager.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int displayId) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int displayId) {
        }
    }

    private static final class VSyncSamplerBase extends VSyncSampler implements Choreographer.FrameCallback {
        private VSyncSamplerBase(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        void register() {
            super.register();
            this.choreographer.postFrameCallback(this);
            this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        void unregister() {
            super.unregister();
            this.choreographer.removeFrameCallback(this);
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long vsyncTimeNs) {
            this.sampledVsyncTimeNs = vsyncTimeNs;
            this.choreographer.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
            if (displayId == 0) {
                this.choreographer.postFrameCallback(this);
                this.vsyncDurationNs = getVsyncDurationNsFromDefaultDisplay(this.displayManager);
            }
        }

        private static long getVsyncDurationNsFromDefaultDisplay(DisplayManager displayManager) {
            Display defaultDisplay = displayManager.getDisplay(0);
            if (defaultDisplay != null) {
                double defaultDisplayRefreshRate = defaultDisplay.getRefreshRate();
                return (long) (1.0E9d / defaultDisplayRefreshRate);
            }
            Log.w(VideoFrameReleaseHelper.TAG, "Unable to query display refresh rate");
            return C.TIME_UNSET;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class VSyncSamplerV33 extends VSyncSampler implements Choreographer.VsyncCallback {
        private final Handler handler;

        private VSyncSamplerV33(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
            this.handler = Util.createHandlerForCurrentLooper();
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        void register() {
            super.register();
            this.choreographer.postVsyncCallback(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        void unregister() {
            super.unregister();
            this.handler.removeCallbacksAndMessages(null);
            this.choreographer.removeVsyncCallback(this);
            this.sampledVsyncTimeNs = C.TIME_UNSET;
            this.vsyncDurationNs = C.TIME_UNSET;
        }

        @Override // android.view.Choreographer.VsyncCallback
        public void onVsync(Choreographer.FrameData data) {
            this.sampledVsyncTimeNs = data.getFrameTimeNanos();
            Choreographer.FrameTimeline[] frameTimelines = data.getFrameTimelines();
            int length = frameTimelines.length;
            long j = C.TIME_UNSET;
            if (length >= 2) {
                long vsyncDurationNs = frameTimelines[1].getExpectedPresentationTimeNanos() - frameTimelines[0].getExpectedPresentationTimeNanos();
                if (vsyncDurationNs != 0) {
                    j = vsyncDurationNs;
                }
                this.vsyncDurationNs = j;
            } else {
                this.vsyncDurationNs = C.TIME_UNSET;
            }
            this.handler.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoFrameReleaseHelper$VSyncSamplerV33$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8011x28d2bfdf();
                }
            }, 500L);
        }

        /* JADX INFO: renamed from: lambda$onVsync$0$androidx-media3-exoplayer-video-VideoFrameReleaseHelper$VSyncSamplerV33, reason: not valid java name */
        /* synthetic */ void m8011x28d2bfdf() {
            this.choreographer.postVsyncCallback(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
            if (displayId == 0) {
                this.choreographer.postVsyncCallback(this);
            }
        }
    }
}
