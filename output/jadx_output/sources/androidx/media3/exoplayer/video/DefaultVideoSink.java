package androidx.media3.exoplayer.video;

import android.graphics.Bitmap;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameRenderControl;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
final class DefaultVideoSink implements VideoSink {
    private Format inputFormat;
    private VideoSink.Listener listener;
    private Executor listenerExecutor;
    private Surface outputSurface;
    private long streamStartPositionUs;
    private final Queue<VideoSink.VideoFrameHandler> videoFrameHandlers;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameRenderControl videoFrameRenderControl;

    public DefaultVideoSink(VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster, Clock clock) {
        this.videoFrameReleaseControl = videoFrameReleaseControl;
        this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
        videoFrameReleaseControl.setClock(clock);
        this.videoFrameRenderControl = new VideoFrameRenderControl(new FrameRendererImpl(), videoFrameReleaseControl, videoFrameReleaseEarlyTimeForecaster);
        this.videoFrameHandlers = new ArrayDeque();
        this.inputFormat = new Format.Builder().build();
        this.streamStartPositionUs = C.TIME_UNSET;
        this.listener = VideoSink.Listener.NO_OP;
        this.listenerExecutor = new Executor() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                DefaultVideoSink.lambda$new$0(runnable);
            }
        };
        this.videoFrameMetadataListener = new VideoFrameMetadataListener() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda1
            @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
            public final void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
                DefaultVideoSink.lambda$new$1(j, j2, format, mediaFormat);
            }
        };
    }

    static /* synthetic */ void lambda$new$0(Runnable runnable) {
    }

    static /* synthetic */ void lambda$new$1(long presentationTimeUs, long releaseTimeNs, Format format, MediaFormat mediaFormat) {
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void startRendering() {
        this.videoFrameReleaseEarlyTimeForecaster.reset();
        this.videoFrameReleaseControl.onStarted();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void stopRendering() {
        this.videoFrameReleaseEarlyTimeForecaster.reset();
        this.videoFrameReleaseControl.onStopped();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setListener(VideoSink.Listener listener, Executor executor) {
        this.listener = listener;
        this.listenerExecutor = executor;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean initialize(Format sourceFormat) {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean isInitialized() {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void redraw() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void flush(boolean resetPosition) {
        if (resetPosition) {
            this.videoFrameReleaseControl.reset();
        }
        this.videoFrameReleaseEarlyTimeForecaster.reset();
        this.videoFrameRenderControl.flush();
        this.videoFrameHandlers.clear();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean isReady(boolean otherwiseReady) {
        return this.videoFrameReleaseControl.isReady(otherwiseReady);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void signalEndOfCurrentInputStream() {
        this.videoFrameRenderControl.signalEndOfInput();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void signalEndOfInput() {
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean isEnded() {
        return this.videoFrameRenderControl.isEnded();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public Surface getInputSurface() {
        return (Surface) Preconditions.checkNotNull(this.outputSurface);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setPlaybackSpeed(float speed) {
        this.videoFrameReleaseControl.setPlaybackSpeed(speed);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setVideoEffects(List<Effect> videoEffects) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setBufferTimestampAdjustmentUs(long bufferTimestampAdjustmentUs) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setOutputSurfaceInfo(Surface outputSurface, Size outputResolution) {
        this.outputSurface = outputSurface;
        this.videoFrameReleaseControl.setOutputSurface(outputSurface);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void clearOutputSurfaceInfo() {
        this.outputSurface = null;
        this.videoFrameReleaseControl.setOutputSurface(null);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void setChangeFrameRateStrategy(int changeFrameRateStrategy) {
        this.videoFrameReleaseControl.setChangeFrameRateStrategy(changeFrameRateStrategy);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void onInputStreamChanged(int inputType, Format format, long startPositionUs, int firstFrameReleaseInstruction, List<Effect> videoEffects) {
        Preconditions.checkState(videoEffects.isEmpty());
        if (format.width != this.inputFormat.width || format.height != this.inputFormat.height) {
            this.videoFrameRenderControl.onVideoSizeChanged(format.width, format.height);
        }
        if (format.frameRate != this.inputFormat.frameRate) {
            this.videoFrameReleaseControl.setFrameRate(format.frameRate);
        }
        this.inputFormat = format;
        if (startPositionUs != this.streamStartPositionUs) {
            this.videoFrameRenderControl.onStreamChanged(firstFrameReleaseInstruction, startPositionUs);
            this.streamStartPositionUs = startPositionUs;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void allowReleaseFirstFrameBeforeStarted() {
        this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean handleInputFrame(long framePresentationTimeUs, VideoSink.VideoFrameHandler videoFrameHandler) {
        this.videoFrameHandlers.add(videoFrameHandler);
        this.videoFrameRenderControl.onFrameAvailableForRendering(framePresentationTimeUs);
        this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8005x5ef5fbd7();
            }
        });
        return true;
    }

    /* JADX INFO: renamed from: lambda$handleInputFrame$2$androidx-media3-exoplayer-video-DefaultVideoSink, reason: not valid java name */
    /* synthetic */ void m8005x5ef5fbd7() {
        this.listener.onFrameAvailableForRendering();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public boolean handleInputBitmap(Bitmap inputBitmap, TimestampIterator bufferTimestampIterator) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void render(long positionUs, long elapsedRealtimeUs) throws VideoSink.VideoSinkException {
        try {
            this.videoFrameRenderControl.render(positionUs, elapsedRealtimeUs);
        } catch (ExoPlaybackException e) {
            throw new VideoSink.VideoSinkException(e, this.inputFormat);
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void join(boolean renderNextFrameImmediately) {
        this.videoFrameReleaseControl.join(renderNextFrameImmediately);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class FrameRendererImpl implements VideoFrameRenderControl.FrameRenderer {
        private Format outputFormat;

        private FrameRendererImpl() {
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void onVideoSizeChanged(final VideoSize videoSize) {
            this.outputFormat = new Format.Builder().setWidth(videoSize.width).setHeight(videoSize.height).setSampleMimeType(MimeTypes.VIDEO_RAW).build();
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8007x3f151f9(videoSize);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onVideoSizeChanged$0$androidx-media3-exoplayer-video-DefaultVideoSink$FrameRendererImpl, reason: not valid java name */
        /* synthetic */ void m8007x3f151f9(VideoSize videoSize) {
            DefaultVideoSink.this.listener.onVideoSizeChanged(videoSize);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void renderFrame(long renderTimeNs, long framePresentationTimeUs, boolean isFirstFrame) {
            if (isFirstFrame && DefaultVideoSink.this.outputSurface != null) {
                DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m8008xaf98b1f2();
                    }
                });
            }
            Format format = this.outputFormat == null ? new Format.Builder().build() : this.outputFormat;
            DefaultVideoSink.this.videoFrameMetadataListener.onVideoFrameAboutToBeRendered(framePresentationTimeUs, renderTimeNs, format, null);
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).render(renderTimeNs);
        }

        /* JADX INFO: renamed from: lambda$renderFrame$1$androidx-media3-exoplayer-video-DefaultVideoSink$FrameRendererImpl, reason: not valid java name */
        /* synthetic */ void m8008xaf98b1f2() {
            DefaultVideoSink.this.listener.onFirstFrameRendered();
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void dropFrame() {
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8006x29a4e3aa();
                }
            });
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).skip();
        }

        /* JADX INFO: renamed from: lambda$dropFrame$2$androidx-media3-exoplayer-video-DefaultVideoSink$FrameRendererImpl, reason: not valid java name */
        /* synthetic */ void m8006x29a4e3aa() {
            DefaultVideoSink.this.listener.onFrameDropped();
        }
    }
}
