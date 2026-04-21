package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes21.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph.Listener {
    public static final long LATE_US_TO_DROP_INPUT_FRAME = 15000;
    private static final Executor NO_OP_EXECUTOR = new Executor() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            PlaybackVideoGraphWrapper.lambda$static$0(runnable);
        }
    };
    private static final int PRIMARY_SEQUENCE_INDEX = 0;
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 2;
    private static final String TAG = "PlaybackVidGraphWrapper";
    private final Clock clock;
    private ImmutableList<Effect> compositionEffects;
    private VideoCompositorSettings compositorSettings;
    private final Context context;
    private Pair<Surface, Size> currentSurfaceAndSize;
    private final VideoSink defaultVideoSink;
    private final long earlyThresholdToDropInputUs;
    private final boolean enablePlaylistMode;
    private long finalFramePresentationTimeUs;
    private HandlerWrapper handler;
    private boolean hasSignaledEndOfVideoGraphOutputStream;
    private final SparseArray<InputVideoSink> inputVideoSinks;
    private boolean isInputSdrToneMapped;
    private long lastOutputFramePresentationTimeUs;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int outputStreamFirstFrameReleaseInstruction;
    private long outputStreamStartPositionUs;
    private int pendingFlushCount;
    private TimedValueQueue<StreamChangeInfo> pendingStreamChanges;
    private int registeredVideoInputCount;
    private boolean requestOpenGlToneMapping;
    private int state;
    private int totalVideoInputCount;
    private final VideoSink.VideoFrameHandler videoFrameHandler;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private VideoGraph videoGraph;
    private final VideoGraph.Factory videoGraphFactory;
    private Format videoGraphOutputFormat;

    public interface Listener {
        default void onFrameAvailableForRendering() {
        }

        default void onFirstFrameRendered() {
        }

        default void onFrameDropped() {
        }

        default void onVideoSizeChanged(VideoSize videoSize) {
        }

        default void onError(VideoFrameProcessingException videoFrameProcessingException) {
        }

        default void onEnded(long finalFramePresentationTimeUs) {
        }
    }

    public static final class Builder {
        private boolean built;
        private final Context context;
        private boolean enablePlaylistMode;
        private boolean enableReplayableCache;
        private final VideoFrameReleaseControl videoFrameReleaseControl;
        private VideoGraph.Factory videoGraphFactory;
        private long lateThresholdToDropInputUs = 15000;
        private VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        private Clock clock = Clock.DEFAULT;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.context = context.getApplicationContext();
            this.videoFrameReleaseControl = videoFrameReleaseControl;
        }

        public Builder setVideoGraphFactory(VideoGraph.Factory videoGraphFactory) {
            this.videoGraphFactory = videoGraphFactory;
            return this;
        }

        public Builder setEnablePlaylistMode(boolean enablePlaylistMode) {
            this.enablePlaylistMode = enablePlaylistMode;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setEnableReplayableCache(boolean enableReplayableCache) {
            this.enableReplayableCache = enableReplayableCache;
            return this;
        }

        public Builder experimentalSetLateThresholdToDropInputUs(long lateThresholdToDropInputUs) {
            this.lateThresholdToDropInputUs = lateThresholdToDropInputUs;
            return this;
        }

        public PlaybackVideoGraphWrapper build() {
            Preconditions.checkState(!this.built);
            if (this.videoGraphFactory == null) {
                this.videoGraphFactory = new ReflectiveSingleInputVideoGraphFactory(this.enableReplayableCache);
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(this);
            this.built = true;
            return playbackVideoGraphWrapper;
        }

        Builder setVideoFrameReleaseEarlyTimeForecaster(VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster) {
            this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
            return this;
        }
    }

    static /* synthetic */ void lambda$static$0(Runnable runnable) {
    }

    private PlaybackVideoGraphWrapper(Builder builder) {
        long j;
        this.context = builder.context;
        this.pendingStreamChanges = new TimedValueQueue<>();
        this.videoGraphFactory = (VideoGraph.Factory) Preconditions.checkNotNull(builder.videoGraphFactory);
        this.inputVideoSinks = new SparseArray<>();
        this.compositionEffects = ImmutableList.of();
        this.compositorSettings = VideoCompositorSettings.DEFAULT;
        this.enablePlaylistMode = builder.enablePlaylistMode;
        this.clock = builder.clock;
        if (builder.lateThresholdToDropInputUs != C.TIME_UNSET) {
            j = -builder.lateThresholdToDropInputUs;
        } else {
            j = -9223372036854775807L;
        }
        this.earlyThresholdToDropInputUs = j;
        this.videoFrameReleaseEarlyTimeForecaster = builder.videoFrameReleaseEarlyTimeForecaster;
        this.defaultVideoSink = new DefaultVideoSink(builder.videoFrameReleaseControl, this.videoFrameReleaseEarlyTimeForecaster, this.clock);
        this.videoFrameHandler = new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.1
            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void render(long renderTimestampNs) {
                ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(renderTimestampNs);
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void skip() {
                ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(-2L);
            }
        };
        this.listeners = new CopyOnWriteArraySet<>();
        this.videoGraphOutputFormat = new Format.Builder().build();
        this.outputStreamStartPositionUs = C.TIME_UNSET;
        this.lastOutputFramePresentationTimeUs = C.TIME_UNSET;
        this.finalFramePresentationTimeUs = C.TIME_UNSET;
        this.totalVideoInputCount = -1;
        this.state = 0;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void setTotalVideoInputCount(int totalVideoInputCount) {
        if (totalVideoInputCount < this.totalVideoInputCount) {
            return;
        }
        this.totalVideoInputCount = totalVideoInputCount;
    }

    public VideoSink getSink(int inputIndex) {
        if (Util.contains(this.inputVideoSinks, inputIndex)) {
            return this.inputVideoSinks.get(inputIndex);
        }
        InputVideoSink inputVideoSink = new InputVideoSink(this.context, inputIndex);
        if (inputIndex == 0) {
            addListener(inputVideoSink);
        }
        this.inputVideoSinks.put(inputIndex, inputVideoSink);
        return inputVideoSink;
    }

    public void setOutputSurfaceInfo(Surface outputSurface, Size outputResolution) {
        if (this.currentSurfaceAndSize != null && ((Surface) this.currentSurfaceAndSize.first).equals(outputSurface) && ((Size) this.currentSurfaceAndSize.second).equals(outputResolution)) {
            return;
        }
        this.currentSurfaceAndSize = Pair.create(outputSurface, outputResolution);
        maybeSetOutputSurfaceInfo(outputSurface, outputResolution.getWidth(), outputResolution.getHeight());
    }

    public void clearOutputSurfaceInfo() {
        maybeSetOutputSurfaceInfo(null, Size.UNKNOWN.getWidth(), Size.UNKNOWN.getHeight());
        this.currentSurfaceAndSize = null;
    }

    public void startRendering() {
        this.defaultVideoSink.startRendering();
    }

    public void stopRendering() {
        this.defaultVideoSink.stopRendering();
    }

    public void setCompositionEffects(List<Effect> compositionEffects) {
        this.compositionEffects = ImmutableList.copyOf((Collection) compositionEffects);
        if (this.videoGraph != null) {
            this.videoGraph.setCompositionEffects(compositionEffects);
        }
    }

    public void setCompositorSettings(VideoCompositorSettings compositorSettings) {
        this.compositorSettings = compositorSettings;
        if (this.videoGraph != null) {
            this.videoGraph.setCompositorSettings(compositorSettings);
        }
    }

    public void setRequestOpenGlToneMapping(boolean requestOpenGlToneMapping) {
        this.requestOpenGlToneMapping = requestOpenGlToneMapping;
    }

    public void setIsInputSdrToneMapped(boolean isInputSdrToneMapped) {
        this.isInputSdrToneMapped = isInputSdrToneMapped;
    }

    public void release() {
        if (this.state == 2) {
            return;
        }
        if (this.handler != null) {
            this.handler.removeCallbacksAndMessages(null);
        }
        if (this.videoGraph != null) {
            this.videoGraph.release();
        }
        this.currentSurfaceAndSize = null;
        this.state = 2;
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputSizeChanged(int width, int height) {
        this.videoGraphOutputFormat = this.videoGraphOutputFormat.buildUpon().setWidth(width).setHeight(height).build();
        onOutputStreamChanged();
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputFrameRateChanged(float frameRate) {
        this.videoGraphOutputFormat = this.videoGraphOutputFormat.buildUpon().setFrameRate(frameRate).build();
        onOutputStreamChanged();
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputFrameAvailableForRendering(long framePresentationTimeUs, boolean isRedrawnFrame) {
        if (this.pendingFlushCount > 0) {
            return;
        }
        for (Listener listener : this.listeners) {
            listener.onFrameAvailableForRendering();
        }
        if (isRedrawnFrame) {
            if (this.videoFrameMetadataListener != null) {
                this.videoFrameMetadataListener.onVideoFrameAboutToBeRendered(framePresentationTimeUs, C.TIME_UNSET, this.videoGraphOutputFormat, null);
                return;
            }
            return;
        }
        this.lastOutputFramePresentationTimeUs = framePresentationTimeUs;
        StreamChangeInfo streamChangeInfo = this.pendingStreamChanges.pollFloor(framePresentationTimeUs);
        if (streamChangeInfo != null) {
            this.outputStreamStartPositionUs = streamChangeInfo.startPositionUs;
            this.outputStreamFirstFrameReleaseInstruction = streamChangeInfo.firstFrameReleaseInstruction;
            onOutputStreamChanged();
        }
        this.defaultVideoSink.handleInputFrame(framePresentationTimeUs, this.videoFrameHandler);
        boolean isLastFrame = this.finalFramePresentationTimeUs != C.TIME_UNSET && framePresentationTimeUs >= this.finalFramePresentationTimeUs;
        if (isLastFrame) {
            signalEndOfVideoGraphOutputStream();
        }
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onEnded(long finalFramePresentationTimeUs) {
        for (Listener listener : this.listeners) {
            listener.onEnded(finalFramePresentationTimeUs);
        }
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onError(VideoFrameProcessingException exception) {
        for (Listener listener : this.listeners) {
            listener.onError(exception);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean registerInput(Format sourceFormat, int inputIndex) throws VideoSink.VideoSinkException {
        PlaybackVideoGraphWrapper playbackVideoGraphWrapper;
        ColorInfo outputColorInfo;
        VideoGraph.Factory factory;
        Context context;
        DebugViewProvider debugViewProvider;
        final HandlerWrapper handlerWrapper;
        if (inputIndex == 0) {
            Preconditions.checkState(this.state == 0);
            ColorInfo inputColorInfo = getAdjustedInputColorInfo(sourceFormat.colorInfo);
            try {
                if (this.requestOpenGlToneMapping) {
                    outputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                } else if (inputColorInfo.colorTransfer == 7 && Build.VERSION.SDK_INT < 34 && GlUtil.isBt2020PqExtensionSupported()) {
                    outputColorInfo = inputColorInfo.buildUpon().setColorTransfer(6).build();
                } else if (!GlUtil.isColorTransferSupported(inputColorInfo.colorTransfer) && Build.VERSION.SDK_INT >= 29) {
                    Log.w(TAG, Util.formatInvariant("Color transfer %d is not supported. Falling back to OpenGl tone mapping.", Integer.valueOf(inputColorInfo.colorTransfer)));
                    outputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                } else if (inputColorInfo.colorTransfer == 2 || inputColorInfo.colorTransfer == 10) {
                    ColorInfo outputColorInfo2 = ColorInfo.SDR_BT709_LIMITED;
                    outputColorInfo = outputColorInfo2;
                } else {
                    outputColorInfo = inputColorInfo;
                }
                this.handler = this.clock.createHandler((Looper) Preconditions.checkNotNull(Looper.myLooper()), null);
                try {
                    factory = this.videoGraphFactory;
                    context = this.context;
                    debugViewProvider = DebugViewProvider.NONE;
                    handlerWrapper = this.handler;
                    Objects.requireNonNull(handlerWrapper);
                    playbackVideoGraphWrapper = this;
                } catch (VideoFrameProcessingException e) {
                    e = e;
                }
                try {
                    playbackVideoGraphWrapper.videoGraph = factory.create(context, outputColorInfo, debugViewProvider, playbackVideoGraphWrapper, new Executor() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            handlerWrapper.post(runnable);
                        }
                    }, 0L, false);
                    playbackVideoGraphWrapper.videoGraph.setCompositionEffects(playbackVideoGraphWrapper.compositionEffects);
                    playbackVideoGraphWrapper.videoGraph.setCompositorSettings(playbackVideoGraphWrapper.compositorSettings);
                    playbackVideoGraphWrapper.videoGraph.initialize();
                    if (playbackVideoGraphWrapper.currentSurfaceAndSize != null) {
                        Surface surface = (Surface) playbackVideoGraphWrapper.currentSurfaceAndSize.first;
                        Size size = (Size) playbackVideoGraphWrapper.currentSurfaceAndSize.second;
                        maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
                    }
                    playbackVideoGraphWrapper.defaultVideoSink.initialize(sourceFormat);
                    VideoSink videoSink = playbackVideoGraphWrapper.defaultVideoSink;
                    DefaultVideoSinkListener defaultVideoSinkListener = new DefaultVideoSinkListener();
                    final HandlerWrapper handlerWrapper2 = playbackVideoGraphWrapper.handler;
                    Objects.requireNonNull(handlerWrapper2);
                    videoSink.setListener(defaultVideoSinkListener, new Executor() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            handlerWrapper2.post(runnable);
                        }
                    });
                    playbackVideoGraphWrapper.state = 1;
                } catch (VideoFrameProcessingException e2) {
                    e = e2;
                    throw new VideoSink.VideoSinkException(e, sourceFormat);
                }
            } catch (GlUtil.GlException e3) {
                throw new VideoSink.VideoSinkException(e3, sourceFormat);
            }
        } else {
            playbackVideoGraphWrapper = this;
            if (!isInitialized()) {
                return false;
            }
        }
        try {
            ((VideoGraph) Preconditions.checkNotNull(playbackVideoGraphWrapper.videoGraph)).registerInput(inputIndex);
            playbackVideoGraphWrapper.registeredVideoInputCount++;
            return true;
        } catch (VideoFrameProcessingException e4) {
            throw new VideoSink.VideoSinkException(e4, sourceFormat);
        }
    }

    private boolean isInitialized() {
        return this.state == 1;
    }

    private void maybeSetOutputSurfaceInfo(Surface surface, int width, int height) {
        if (this.videoGraph == null) {
            return;
        }
        VideoGraph videoGraph = this.videoGraph;
        if (surface != null) {
            videoGraph.setOutputSurfaceInfo(new SurfaceInfo(surface, width, height));
            this.defaultVideoSink.setOutputSurfaceInfo(surface, new Size(width, height));
        } else {
            videoGraph.setOutputSurfaceInfo(null);
            this.defaultVideoSink.clearOutputSurfaceInfo();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReady(boolean otherwiseReady) {
        return this.defaultVideoSink.isReady(otherwiseReady && this.pendingFlushCount == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signalEndOfVideoGraphOutputStream() {
        this.defaultVideoSink.signalEndOfCurrentInputStream();
        this.hasSignaledEndOfVideoGraphOutputStream = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEnded() {
        return this.pendingFlushCount == 0 && this.hasSignaledEndOfVideoGraphOutputStream && this.defaultVideoSink.isEnded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(long positionUs, long elapsedRealtimeUs) throws VideoSink.VideoSinkException {
        this.defaultVideoSink.render(positionUs, elapsedRealtimeUs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flush(boolean resetPosition) {
        TimedValueQueue<StreamChangeInfo> timedValueQueue;
        if (!isInitialized()) {
            return;
        }
        this.pendingFlushCount++;
        this.defaultVideoSink.flush(resetPosition);
        while (true) {
            int size = this.pendingStreamChanges.size();
            timedValueQueue = this.pendingStreamChanges;
            if (size <= 1) {
                break;
            } else {
                timedValueQueue.pollFirst();
            }
        }
        if (timedValueQueue.size() == 1) {
            StreamChangeInfo streamChangeInfo = (StreamChangeInfo) Preconditions.checkNotNull(this.pendingStreamChanges.pollFirst());
            this.outputStreamStartPositionUs = streamChangeInfo.startPositionUs;
            this.outputStreamFirstFrameReleaseInstruction = streamChangeInfo.firstFrameReleaseInstruction;
            onOutputStreamChanged();
        }
        this.lastOutputFramePresentationTimeUs = C.TIME_UNSET;
        if (resetPosition) {
            this.finalFramePresentationTimeUs = C.TIME_UNSET;
            this.hasSignaledEndOfVideoGraphOutputStream = false;
        }
        ((HandlerWrapper) Preconditions.checkNotNull(this.handler)).post(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m8009x92e2e5d9();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$flush$1$androidx-media3-exoplayer-video-PlaybackVideoGraphWrapper, reason: not valid java name */
    /* synthetic */ void m8009x92e2e5d9() {
        this.pendingFlushCount--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinPlayback(boolean renderNextFrameImmediately) {
        this.defaultVideoSink.join(renderNextFrameImmediately);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allowReleaseFirstFrameBeforeStarted() {
        this.defaultVideoSink.allowReleaseFirstFrameBeforeStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        this.defaultVideoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float speed) {
        this.videoFrameReleaseEarlyTimeForecaster.setPlaybackSpeed(speed);
        this.defaultVideoSink.setPlaybackSpeed(speed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChangeFrameRateStrategy(int changeFrameRateStrategy) {
        this.defaultVideoSink.setChangeFrameRateStrategy(changeFrameRateStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldRenderToInputVideoSink() {
        return this.totalVideoInputCount != -1 && this.totalVideoInputCount == this.registeredVideoInputCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ColorInfo getAdjustedInputColorInfo(ColorInfo inputColorInfo) {
        if (inputColorInfo == null || !inputColorInfo.isDataSpaceValid() || this.isInputSdrToneMapped) {
            return ColorInfo.SDR_BT709_LIMITED;
        }
        return inputColorInfo;
    }

    private void onOutputStreamChanged() {
        this.defaultVideoSink.onInputStreamChanged(1, this.videoGraphOutputFormat, this.outputStreamStartPositionUs, this.outputStreamFirstFrameReleaseInstruction, ImmutableList.of());
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class InputVideoSink implements VideoSink, Listener {
        private static final int MAX_CONSECUTIVE_FRAMES_TO_DROP = 2;
        private int consecutiveDroppedFrames;
        private long inputBufferTimestampAdjustmentUs;
        private Format inputFormat;
        private final int inputIndex;
        private int inputType;
        private boolean isInitialized;
        private boolean signaledEndOfStream;
        private final int videoFrameProcessorMaxPendingFrameCount;
        private ImmutableList<Effect> videoEffects = ImmutableList.of();
        private long lastFramePresentationTimeUs = C.TIME_UNSET;
        private VideoSink.Listener listener = VideoSink.Listener.NO_OP;
        private Executor listenerExecutor = PlaybackVideoGraphWrapper.NO_OP_EXECUTOR;

        public InputVideoSink(Context context, int inputIndex) {
            this.inputIndex = inputIndex;
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(context);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void startRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.startRendering();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void stopRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.stopRendering();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setListener(VideoSink.Listener listener, Executor executor) {
            this.listener = listener;
            this.listenerExecutor = executor;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean initialize(Format sourceFormat) throws VideoSink.VideoSinkException {
            Preconditions.checkState(!isInitialized());
            this.isInitialized = PlaybackVideoGraphWrapper.this.registerInput(sourceFormat, this.inputIndex);
            return this.isInitialized;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            return this.isInitialized;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void redraw() {
            if (!isInitialized()) {
                return;
            }
            boolean needsResignalEndOfCurrentInputStream = this.signaledEndOfStream;
            long replayedPresentationTimeUs = PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs;
            PlaybackVideoGraphWrapper.this.flush(false);
            ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).redraw();
            PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs = replayedPresentationTimeUs;
            if (needsResignalEndOfCurrentInputStream) {
                signalEndOfCurrentInputStream();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void flush(boolean resetPosition) {
            if (isInitialized()) {
                ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).flush();
            }
            this.lastFramePresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.flush(resetPosition);
            this.signaledEndOfStream = false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isReady(boolean otherwiseReady) {
            return PlaybackVideoGraphWrapper.this.isReady(otherwiseReady && isInitialized());
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void signalEndOfCurrentInputStream() {
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = this.lastFramePresentationTimeUs;
            if (PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs >= PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs) {
                PlaybackVideoGraphWrapper.this.signalEndOfVideoGraphOutputStream();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void signalEndOfInput() {
            if (!this.signaledEndOfStream && isInitialized()) {
                ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).signalEndOfInput(this.inputIndex);
                this.signaledEndOfStream = true;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            return isInitialized() && PlaybackVideoGraphWrapper.this.isEnded();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void onInputStreamChanged(int inputType, Format format, long startPositionUs, int firstFrameReleaseInstruction, List<Effect> videoEffects) {
            long fromTimestampUs;
            Preconditions.checkState(isInitialized());
            this.videoEffects = ImmutableList.copyOf((Collection) videoEffects);
            this.inputType = inputType;
            this.inputFormat = format;
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.hasSignaledEndOfVideoGraphOutputStream = false;
            registerInputStream(format);
            boolean isFirstStream = this.lastFramePresentationTimeUs == C.TIME_UNSET;
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode || (this.inputIndex == 0 && isFirstStream)) {
                if (isFirstStream) {
                    fromTimestampUs = -4611686018427387904L;
                } else {
                    long fromTimestampUs2 = this.lastFramePresentationTimeUs;
                    fromTimestampUs = fromTimestampUs2 + 1;
                }
                PlaybackVideoGraphWrapper.this.pendingStreamChanges.add(fromTimestampUs, new StreamChangeInfo(startPositionUs + this.inputBufferTimestampAdjustmentUs, firstFrameReleaseInstruction, fromTimestampUs));
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void allowReleaseFirstFrameBeforeStarted() {
            if (PlaybackVideoGraphWrapper.this.pendingStreamChanges.size() == 0) {
                PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                return;
            }
            TimedValueQueue<StreamChangeInfo> newPendingStreamChanges = new TimedValueQueue<>();
            boolean isFirstStreamChange = true;
            while (true) {
                int size = PlaybackVideoGraphWrapper.this.pendingStreamChanges.size();
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
                if (size > 0) {
                    StreamChangeInfo streamChangeInfo = (StreamChangeInfo) Preconditions.checkNotNull((StreamChangeInfo) playbackVideoGraphWrapper.pendingStreamChanges.pollFirst());
                    if (isFirstStreamChange) {
                        if (streamChangeInfo.firstFrameReleaseInstruction != 0 && streamChangeInfo.firstFrameReleaseInstruction != 1) {
                            PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                        } else {
                            streamChangeInfo = new StreamChangeInfo(streamChangeInfo.startPositionUs, 0, streamChangeInfo.fromTimestampUs);
                        }
                        isFirstStreamChange = false;
                    }
                    newPendingStreamChanges.add(streamChangeInfo.fromTimestampUs, streamChangeInfo);
                } else {
                    playbackVideoGraphWrapper.pendingStreamChanges = newPendingStreamChanges;
                    return;
                }
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public Surface getInputSurface() {
            Preconditions.checkState(isInitialized());
            return ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).getInputSurface(this.inputIndex);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setVideoFrameMetadataListener(videoFrameMetadataListener);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setPlaybackSpeed(float speed) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setPlaybackSpeed(speed);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoEffects(List<Effect> videoEffects) {
            if (this.videoEffects.equals(videoEffects)) {
                return;
            }
            this.videoEffects = ImmutableList.copyOf((Collection) videoEffects);
            if (this.inputFormat != null) {
                registerInputStream(this.inputFormat);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setBufferTimestampAdjustmentUs(long bufferTimestampAdjustmentUs) {
            this.inputBufferTimestampAdjustmentUs = bufferTimestampAdjustmentUs;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setOutputSurfaceInfo(Surface outputSurface, Size outputResolution) {
            PlaybackVideoGraphWrapper.this.setOutputSurfaceInfo(outputSurface, outputResolution);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void clearOutputSurfaceInfo() {
            PlaybackVideoGraphWrapper.this.clearOutputSurfaceInfo();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setChangeFrameRateStrategy(int changeFrameRateStrategy) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setChangeFrameRateStrategy(changeFrameRateStrategy);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean handleInputFrame(long bufferPresentationTimeUs, VideoSink.VideoFrameHandler videoFrameHandler) {
            Preconditions.checkState(isInitialized());
            long framePresentationTimeUs = this.inputBufferTimestampAdjustmentUs + bufferPresentationTimeUs;
            long predictedEarlyUs = PlaybackVideoGraphWrapper.this.videoFrameReleaseEarlyTimeForecaster.predictEarlyUs(framePresentationTimeUs);
            if (predictedEarlyUs == C.TIME_UNSET || PlaybackVideoGraphWrapper.this.earlyThresholdToDropInputUs == C.TIME_UNSET || predictedEarlyUs >= PlaybackVideoGraphWrapper.this.earlyThresholdToDropInputUs || this.consecutiveDroppedFrames >= 2) {
                if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink() || ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).getPendingInputFrameCount(this.inputIndex) >= this.videoFrameProcessorMaxPendingFrameCount || !((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).registerInputFrame(this.inputIndex)) {
                    return false;
                }
                this.lastFramePresentationTimeUs = framePresentationTimeUs;
                videoFrameHandler.render(1000 * framePresentationTimeUs);
                this.consecutiveDroppedFrames = 0;
                return true;
            }
            this.consecutiveDroppedFrames++;
            videoFrameHandler.skip();
            return true;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean handleInputBitmap(Bitmap inputBitmap, TimestampIterator bufferTimestampIterator) {
            Preconditions.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink()) {
                return false;
            }
            TimestampIterator frameTimestampIterator = new ShiftingTimestampIterator(bufferTimestampIterator, this.inputBufferTimestampAdjustmentUs);
            if (!((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).queueInputBitmap(this.inputIndex, inputBitmap, frameTimestampIterator)) {
                return false;
            }
            long lastFramePresentationTimeUs = frameTimestampIterator.getLastTimestampUs();
            Preconditions.checkState(lastFramePresentationTimeUs != C.TIME_UNSET);
            this.lastFramePresentationTimeUs = lastFramePresentationTimeUs;
            return true;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void render(long positionUs, long elapsedRealtimeUs) throws VideoSink.VideoSinkException {
            PlaybackVideoGraphWrapper.this.render(this.inputBufferTimestampAdjustmentUs + positionUs, elapsedRealtimeUs);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void join(boolean renderNextFrameImmediately) {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.joinPlayback(renderNextFrameImmediately);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void release() {
            PlaybackVideoGraphWrapper.this.release();
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFrameAvailableForRendering() {
            final VideoSink.Listener currentListener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(currentListener);
            executor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    currentListener.onFrameAvailableForRendering();
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFirstFrameRendered() {
            final VideoSink.Listener currentListener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(currentListener);
            executor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    currentListener.onFirstFrameRendered();
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFrameDropped() {
            final VideoSink.Listener currentListener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(currentListener);
            executor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    currentListener.onFrameDropped();
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onVideoSizeChanged(final VideoSize videoSize) {
            final VideoSink.Listener currentListener = this.listener;
            this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    currentListener.onVideoSizeChanged(videoSize);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onError(final VideoFrameProcessingException videoFrameProcessingException) {
            final VideoSink.Listener currentListener = this.listener;
            this.listenerExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8010x167f068a(currentListener, videoFrameProcessingException);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onError$1$androidx-media3-exoplayer-video-PlaybackVideoGraphWrapper$InputVideoSink, reason: not valid java name */
        /* synthetic */ void m8010x167f068a(VideoSink.Listener currentListener, VideoFrameProcessingException videoFrameProcessingException) {
            currentListener.onError(new VideoSink.VideoSinkException(videoFrameProcessingException, (Format) Preconditions.checkNotNull(this.inputFormat)));
        }

        private void registerInputStream(Format inputFormat) {
            int videoGraphInputType;
            Format adjustedInputFormat = inputFormat.buildUpon().setColorInfo(PlaybackVideoGraphWrapper.this.getAdjustedInputColorInfo(inputFormat.colorInfo)).build();
            if (this.inputType == 1) {
                videoGraphInputType = 1;
            } else {
                videoGraphInputType = 2;
            }
            ((VideoGraph) Preconditions.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).registerInputStream(this.inputIndex, videoGraphInputType, adjustedInputFormat, this.videoEffects, 0L);
        }
    }

    private final class DefaultVideoSinkListener implements VideoSink.Listener {
        private DefaultVideoSinkListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onFirstFrameRendered() {
            for (Listener listener : PlaybackVideoGraphWrapper.this.listeners) {
                listener.onFirstFrameRendered();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onFrameDropped() {
            for (Listener listener : PlaybackVideoGraphWrapper.this.listeners) {
                listener.onFrameDropped();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            for (Listener listener : PlaybackVideoGraphWrapper.this.listeners) {
                listener.onVideoSizeChanged(videoSize);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onError(VideoSink.VideoSinkException videoSinkException) {
            for (Listener listener : PlaybackVideoGraphWrapper.this.listeners) {
                listener.onError(VideoFrameProcessingException.from(videoSinkException));
            }
        }
    }

    private static final class StreamChangeInfo {
        public final int firstFrameReleaseInstruction;
        public final long fromTimestampUs;
        public final long startPositionUs;

        public StreamChangeInfo(long startPositionUs, int firstFrameReleaseInstruction, long fromTimestampUs) {
            this.startPositionUs = startPositionUs;
            this.firstFrameReleaseInstruction = firstFrameReleaseInstruction;
            this.fromTimestampUs = fromTimestampUs;
        }
    }

    private static final class ShiftingTimestampIterator implements TimestampIterator {
        private final long shift;
        private final TimestampIterator timestampIterator;

        public ShiftingTimestampIterator(TimestampIterator timestampIterator, long shift) {
            this.timestampIterator = timestampIterator;
            this.shift = shift;
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public boolean hasNext() {
            return this.timestampIterator.hasNext();
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public long next() {
            return this.timestampIterator.next() + this.shift;
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public TimestampIterator copyOf() {
            return new ShiftingTimestampIterator(this.timestampIterator.copyOf(), this.shift);
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public long getLastTimestampUs() {
            long unshiftedLastTimestampUs = this.timestampIterator.getLastTimestampUs();
            if (unshiftedLastTimestampUs == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            return this.shift + unshiftedLastTimestampUs;
        }
    }

    private static final class ReflectiveSingleInputVideoGraphFactory implements VideoGraph.Factory {
        private final VideoFrameProcessor.Factory videoFrameProcessorFactory;

        public ReflectiveSingleInputVideoGraphFactory(boolean enableReplayableCache) {
            this.videoFrameProcessorFactory = new ReflectiveDefaultVideoFrameProcessorFactory(enableReplayableCache);
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public VideoGraph create(Context context, ColorInfo outputColorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor listenerExecutor, long initialTimestampOffsetUs, boolean renderFramesAutomatically) {
            try {
                String className = "androidx.media3.effect.SingleInputVideoGraph$Factory";
                Class<?> singleInputVideoGraphFactoryClass = Class.forName(className);
                VideoGraph.Factory factory = (VideoGraph.Factory) singleInputVideoGraphFactoryClass.getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.videoFrameProcessorFactory);
                return factory.create(context, outputColorInfo, debugViewProvider, listener, listenerExecutor, initialTimestampOffsetUs, renderFramesAutomatically);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public boolean supportsMultipleInputs() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        private static final Supplier<Class<?>> DEFAULT_VIDEO_FRAME_PROCESSOR_FACTORY_BUILDER_CLASS = Suppliers.memoize(new Supplier() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.lambda$static$0();
            }
        });
        private final boolean enableReplayableCache;

        static /* synthetic */ Class lambda$static$0() {
            try {
                String className = "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder";
                return Class.forName(className);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }

        public ReflectiveDefaultVideoFrameProcessorFactory(boolean enableReplayableCache) {
            this.enableReplayableCache = enableReplayableCache;
        }

        @Override // androidx.media3.common.VideoFrameProcessor.Factory
        public VideoFrameProcessor create(Context context, DebugViewProvider debugViewProvider, ColorInfo outputColorInfo, boolean renderFramesAutomatically, Executor listenerExecutor, VideoFrameProcessor.Listener listener) throws VideoFrameProcessingException {
            try {
                Class<?> defaultVideoFrameProcessorFactoryBuilderClass = DEFAULT_VIDEO_FRAME_PROCESSOR_FACTORY_BUILDER_CLASS.get();
                Object builder = defaultVideoFrameProcessorFactoryBuilderClass.getConstructor(new Class[0]).newInstance(new Object[0]);
                Method setUseReplayableCacheMethod = defaultVideoFrameProcessorFactoryBuilderClass.getMethod("setEnableReplayableCache", Boolean.TYPE);
                setUseReplayableCacheMethod.invoke(builder, Boolean.valueOf(this.enableReplayableCache));
                VideoFrameProcessor.Factory factory = (VideoFrameProcessor.Factory) Preconditions.checkNotNull(defaultVideoFrameProcessorFactoryBuilderClass.getMethod("build", new Class[0]).invoke(builder, new Object[0]));
                return factory.create(context, debugViewProvider, outputColorInfo, renderFramesAutomatically, listenerExecutor, listener);
            } catch (Exception e) {
                throw new VideoFrameProcessingException(e);
            }
        }
    }
}
