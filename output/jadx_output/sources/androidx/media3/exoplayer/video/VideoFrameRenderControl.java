package androidx.media3.exoplayer.video;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
final class VideoFrameRenderControl {
    private final FrameRenderer frameRenderer;
    private long outputStreamStartPositionUs;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    private final TimedValueQueue<VideoSize> videoSizes = new TimedValueQueue<>();
    private final TimedValueQueue<Long> streamStartPositionsUs = new TimedValueQueue<>();
    private final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    private long latestInputPresentationTimeUs = C.TIME_UNSET;
    private VideoSize outputVideoSize = VideoSize.UNKNOWN;
    private long latestOutputPresentationTimeUs = C.TIME_UNSET;
    private long lastPresentationTimeUs = C.TIME_UNSET;

    interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j, long j2, boolean z);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
        this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.latestInputPresentationTimeUs = C.TIME_UNSET;
        this.latestOutputPresentationTimeUs = C.TIME_UNSET;
        this.lastPresentationTimeUs = C.TIME_UNSET;
        if (this.streamStartPositionsUs.size() > 0) {
            this.outputStreamStartPositionUs = ((Long) getLastAndClear(this.streamStartPositionsUs)).longValue();
        }
        if (this.videoSizes.size() > 0) {
            VideoSize lastVideoSize = (VideoSize) getLastAndClear(this.videoSizes);
            this.videoSizes.add(0L, lastVideoSize);
        }
    }

    public void render(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long presentationTimeUs = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStream(presentationTimeUs)) {
                this.videoFrameReleaseControl.onStreamChanged(2);
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(presentationTimeUs, positionUs, elapsedRealtimeUs, this.outputStreamStartPositionUs, false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction != 5 && frameReleaseAction != 4) {
                this.videoFrameReleaseEarlyTimeForecaster.onVideoFrameProcessed(presentationTimeUs, this.videoFrameReleaseInfo.getEarlyUs());
            }
            switch (frameReleaseAction) {
                case 0:
                case 1:
                    this.latestOutputPresentationTimeUs = presentationTimeUs;
                    renderFrame(frameReleaseAction == 0);
                    break;
                case 2:
                case 3:
                    this.latestOutputPresentationTimeUs = presentationTimeUs;
                    dropFrame();
                    break;
                case 4:
                    this.latestOutputPresentationTimeUs = presentationTimeUs;
                    break;
                case 5:
                    return;
                default:
                    throw new IllegalStateException(String.valueOf(frameReleaseAction));
            }
        }
    }

    public void onVideoSizeChanged(int width, int height) {
        this.videoSizes.add(this.latestInputPresentationTimeUs == C.TIME_UNSET ? 0L : this.latestInputPresentationTimeUs + 1, new VideoSize(width, height));
    }

    public void onStreamChanged(int firstFrameReleaseInstruction, long streamStartPositionUs) {
        long j;
        if (this.presentationTimestampsUs.isEmpty()) {
            this.videoFrameReleaseControl.onStreamChanged(firstFrameReleaseInstruction);
            this.outputStreamStartPositionUs = streamStartPositionUs;
            return;
        }
        TimedValueQueue<Long> timedValueQueue = this.streamStartPositionsUs;
        if (this.latestInputPresentationTimeUs == C.TIME_UNSET) {
            j = SieveCacheKt.NodeMetaMask;
        } else {
            j = this.latestInputPresentationTimeUs + 1;
        }
        timedValueQueue.add(j, Long.valueOf(streamStartPositionUs));
    }

    public void onFrameAvailableForRendering(long presentationTimeUs) {
        this.presentationTimestampsUs.add(presentationTimeUs);
        this.latestInputPresentationTimeUs = presentationTimeUs;
        this.lastPresentationTimeUs = C.TIME_UNSET;
    }

    public void signalEndOfInput() {
        if (this.latestInputPresentationTimeUs == C.TIME_UNSET) {
            this.latestInputPresentationTimeUs = Long.MIN_VALUE;
            this.latestOutputPresentationTimeUs = Long.MIN_VALUE;
        }
        this.lastPresentationTimeUs = this.latestInputPresentationTimeUs;
    }

    public boolean isEnded() {
        return this.lastPresentationTimeUs != C.TIME_UNSET && this.latestOutputPresentationTimeUs == this.lastPresentationTimeUs;
    }

    private void dropFrame() {
        this.presentationTimestampsUs.remove();
        this.frameRenderer.dropFrame();
    }

    private void renderFrame(boolean shouldRenderImmediately) {
        long renderTimeNs;
        long presentationTimeUs = this.presentationTimestampsUs.remove();
        boolean videoSizeUpdated = maybeUpdateOutputVideoSize(presentationTimeUs);
        if (videoSizeUpdated) {
            this.frameRenderer.onVideoSizeChanged(this.outputVideoSize);
        }
        if (shouldRenderImmediately) {
            renderTimeNs = SystemClock.DEFAULT.nanoTime();
        } else {
            renderTimeNs = this.videoFrameReleaseInfo.getReleaseTimeNs();
        }
        this.frameRenderer.renderFrame(renderTimeNs, presentationTimeUs, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    private boolean maybeUpdateOutputStream(long presentationTimeUs) {
        Long newOutputStreamStartPositionUs = this.streamStartPositionsUs.pollFloor(presentationTimeUs);
        if (newOutputStreamStartPositionUs != null && newOutputStreamStartPositionUs.longValue() != this.outputStreamStartPositionUs) {
            this.outputStreamStartPositionUs = newOutputStreamStartPositionUs.longValue();
            return true;
        }
        return false;
    }

    private boolean maybeUpdateOutputVideoSize(long presentationTimeUs) {
        VideoSize newOutputVideoSize = this.videoSizes.pollFloor(presentationTimeUs);
        if (newOutputVideoSize != null && !newOutputVideoSize.equals(VideoSize.UNKNOWN) && !newOutputVideoSize.equals(this.outputVideoSize)) {
            this.outputVideoSize = newOutputVideoSize;
            return true;
        }
        return false;
    }

    private static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        Preconditions.checkArgument(timedValueQueue.size() > 0);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) Preconditions.checkNotNull(timedValueQueue.pollFirst());
    }
}
