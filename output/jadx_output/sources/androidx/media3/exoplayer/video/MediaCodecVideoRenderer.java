package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.ScrubbingModeParameters;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import androidx.window.core.layout.WindowSizeClass;
import com.google.android.gms.common.Scopes;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer implements VideoFrameReleaseControl.FrameTimingEvaluator {
    public static final long DEFAULT_LATE_THRESHOLD_TO_DROP_DECODER_INPUT_US = 15000;
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int MAX_CONSECUTIVE_DROPPED_INPUT_BUFFERS_COUNT_TO_DISCARD_HEADER = 0;
    private static final long MIN_EARLY_US_LATE_THRESHOLD = -30000;
    private static final long MIN_EARLY_US_VERY_LATE_THRESHOLD = -500000;
    private static final long OFFSET_FROM_PERIOD_END_TO_TREAT_AS_LAST_US = 100000;
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND, 1440, 1280, 960, 854, 640, 540, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final Av1SampleDependencyParser av1SampleDependencyParser;
    private int buffersInCodecCount;
    private int changeFrameRateStrategy;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private int consecutiveDroppedInputBufferCount;
    private final Context context;
    private VideoSize decodedVideoSize;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private Surface displaySurface;
    private final PriorityQueue<Long> droppedDecoderInputBufferTimestamps;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final boolean enableDurationToProgressUs;
    private final boolean enableMediaCodecBufferDecodeOnlyFlag;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private boolean hasSetVideoSink;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private boolean isFlushRequired;
    private long lastFrameReleaseTimeNs;
    private long lastResetToKeyFramePositionUs;
    private final int maxDroppedFramesToNotify;
    private final long minEarlyUsToDropDecoderInput;
    private long nextOutputBufferToProcessPresentationTimeUs;
    private int nextVideoSinkFirstFrameReleaseInstruction;
    private Size outputResolution;
    private final boolean ownsVideoSink;
    private boolean pendingVideoSinkInputStreamChange;
    private long periodDurationUs;
    private PlaceholderSurface placeholderSurface;
    private int rendererPriority;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private ScrubbingModeParameters scrubbingModeParameters;
    private long startPositionUs;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListener tunnelingOnFrameRenderedListener;
    private List<Effect> videoEffects;
    private int videoFrameProcessingOffsetCount;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo;
    private VideoSink videoSink;

    public static final class Builder {
        private long allowedJoiningTimeMs;
        private boolean buildCalled;
        private MediaCodecAdapter.Factory codecAdapterFactory;
        private final Context context;
        private boolean enableDecoderFallback;
        private boolean enableDurationToProgressUs;
        private boolean enableMediaCodecBufferDecodeOnlyFlag;
        private Handler eventHandler;
        private VideoRendererEventListener eventListener;
        private int maxDroppedFramesToNotify;
        private VideoSink videoSink;
        private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
        private float assumedMinimumCodecOperatingRate = 30.0f;
        private boolean parseAv1SampleDependencies = true;
        private long lateThresholdToDropDecoderInputUs = 15000;

        public Builder(Context context) {
            this.context = context;
            this.codecAdapterFactory = MediaCodecAdapter.Factory.getDefault(context);
        }

        public Builder setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
            this.mediaCodecSelector = mediaCodecSelector;
            return this;
        }

        public Builder setCodecAdapterFactory(MediaCodecAdapter.Factory codecAdapterFactory) {
            this.codecAdapterFactory = codecAdapterFactory;
            return this;
        }

        public Builder setAllowedJoiningTimeMs(long allowedJoiningTimeMs) {
            this.allowedJoiningTimeMs = allowedJoiningTimeMs;
            return this;
        }

        public Builder setEnableDecoderFallback(boolean enableDecoderFallback) {
            this.enableDecoderFallback = enableDecoderFallback;
            return this;
        }

        public Builder setEventHandler(Handler eventHandler) {
            this.eventHandler = eventHandler;
            return this;
        }

        public Builder setEventListener(VideoRendererEventListener eventListener) {
            this.eventListener = eventListener;
            return this;
        }

        public Builder setMaxDroppedFramesToNotify(int maxDroppedFramesToNotify) {
            this.maxDroppedFramesToNotify = maxDroppedFramesToNotify;
            return this;
        }

        public Builder setAssumedMinimumCodecOperatingRate(float assumedMinimumCodecOperatingRate) {
            this.assumedMinimumCodecOperatingRate = assumedMinimumCodecOperatingRate;
            return this;
        }

        public Builder setVideoSink(VideoSink videoSink) {
            this.videoSink = videoSink;
            return this;
        }

        public Builder experimentalSetParseAv1SampleDependencies(boolean parseAv1SampleDependencies) {
            this.parseAv1SampleDependencies = parseAv1SampleDependencies;
            return this;
        }

        public Builder experimentalSetLateThresholdToDropDecoderInputUs(long lateThresholdToDropDecoderInputUs) {
            this.lateThresholdToDropDecoderInputUs = lateThresholdToDropDecoderInputUs;
            return this;
        }

        public Builder experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(boolean enableMediaCodecBufferDecodeOnlyFlag) {
            this.enableMediaCodecBufferDecodeOnlyFlag = enableMediaCodecBufferDecodeOnlyFlag;
            return this;
        }

        public Builder setEnableDurationToProgressUs(boolean enableDurationToProgressUs) {
            this.enableDurationToProgressUs = enableDurationToProgressUs;
            return this;
        }

        public MediaCodecVideoRenderer build() {
            Preconditions.checkState(!this.buildCalled);
            Preconditions.checkState((this.eventHandler == null && this.eventListener == null) || !(this.eventHandler == null || this.eventListener == null));
            this.buildCalled = true;
            return new MediaCodecVideoRenderer(this);
        }
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(allowedJoiningTimeMs));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs, Handler eventHandler, VideoRendererEventListener eventListener, int maxDroppedFramesToNotify) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(allowedJoiningTimeMs).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(maxDroppedFramesToNotify));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, int maxDroppedFramesToNotify) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(allowedJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(maxDroppedFramesToNotify));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, int maxDroppedFramesToNotify) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(codecAdapterFactory).setAllowedJoiningTimeMs(allowedJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(maxDroppedFramesToNotify));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, int maxDroppedFramesToNotify, float assumedMinimumCodecOperatingRate) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(codecAdapterFactory).setAllowedJoiningTimeMs(allowedJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(maxDroppedFramesToNotify).setAssumedMinimumCodecOperatingRate(assumedMinimumCodecOperatingRate));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, long allowedJoiningTimeMs, boolean enableDecoderFallback, Handler eventHandler, VideoRendererEventListener eventListener, int maxDroppedFramesToNotify, float assumedMinimumCodecOperatingRate, VideoSink videoSink) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(codecAdapterFactory).setAllowedJoiningTimeMs(allowedJoiningTimeMs).setEnableDecoderFallback(enableDecoderFallback).setEventHandler(eventHandler).setEventListener(eventListener).setMaxDroppedFramesToNotify(maxDroppedFramesToNotify).setAssumedMinimumCodecOperatingRate(assumedMinimumCodecOperatingRate).setVideoSink(videoSink));
    }

    protected MediaCodecVideoRenderer(Builder builder) {
        super(builder.context.getApplicationContext(), 2, builder.codecAdapterFactory, builder.mediaCodecSelector, builder.enableDecoderFallback, builder.assumedMinimumCodecOperatingRate);
        this.context = builder.context.getApplicationContext();
        this.maxDroppedFramesToNotify = builder.maxDroppedFramesToNotify;
        this.videoSink = builder.videoSink;
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(builder.eventHandler, builder.eventListener);
        this.ownsVideoSink = this.videoSink == null;
        this.videoFrameReleaseControl = new VideoFrameReleaseControl(this.context, this, builder.allowedJoiningTimeMs);
        this.videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.outputResolution = Size.UNKNOWN;
        this.scalingMode = 1;
        this.changeFrameRateStrategy = 0;
        this.decodedVideoSize = VideoSize.UNKNOWN;
        this.tunnelingAudioSessionId = 0;
        this.reportedVideoSize = null;
        this.rendererPriority = -1000;
        this.startPositionUs = C.TIME_UNSET;
        this.periodDurationUs = C.TIME_UNSET;
        this.av1SampleDependencyParser = builder.parseAv1SampleDependencies ? new Av1SampleDependencyParser() : null;
        this.droppedDecoderInputBufferTimestamps = new PriorityQueue<>();
        if (builder.lateThresholdToDropDecoderInputUs != C.TIME_UNSET) {
            this.minEarlyUsToDropDecoderInput = -builder.lateThresholdToDropDecoderInputUs;
            this.videoFrameReleaseEarlyTimeForecaster = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        } else {
            this.minEarlyUsToDropDecoderInput = C.TIME_UNSET;
            this.videoFrameReleaseEarlyTimeForecaster = null;
        }
        this.enableMediaCodecBufferDecodeOnlyFlag = builder.enableMediaCodecBufferDecodeOnlyFlag;
        this.enableDurationToProgressUs = builder.enableDurationToProgressUs;
        this.nextOutputBufferToProcessPresentationTimeUs = C.TIME_UNSET;
        this.scrubbingModeParameters = null;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldForceReleaseFrame(long earlyUs, long elapsedSinceLastReleaseUs) {
        return shouldForceRenderOutputBuffer(earlyUs, elapsedSinceLastReleaseUs);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldDropFrame(long earlyUs, long elapsedRealtimeUs, boolean isLastFrame) {
        return shouldDropOutputBuffer(earlyUs, elapsedRealtimeUs, isLastFrame);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldIgnoreFrame(long earlyUs, long positionUs, long elapsedRealtimeUs, boolean isLastFrame, boolean treatDroppedBuffersAsSkipped) throws ExoPlaybackException {
        if (this.videoSink != null && this.ownsVideoSink) {
            positionUs -= getBufferTimestampAdjustmentUs();
        }
        return shouldDropBuffersToKeyframe(earlyUs, elapsedRealtimeUs, isLastFrame) && maybeDropBuffersToKeyframe(positionUs, treatDroppedBuffersAsSkipped);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    public static int supportsFormat(Context context, MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        return supportsFormatInternal(context, mediaCodecSelector, format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        return supportsFormatInternal(this.context, mediaCodecSelector, format);
    }

    private static int supportsFormatInternal(Context context, MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        int adaptiveSupport;
        int hardwareAccelerationSupport;
        String mimeType = format.sampleMimeType;
        if (!MimeTypes.isVideo(mimeType)) {
            return RendererCapabilities.create(0);
        }
        DrmInitData drmInitData = format.drmInitData;
        boolean requiresSecureDecryption = drmInitData != null;
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, requiresSecureDecryption, false);
        if (requiresSecureDecryption && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return RendererCapabilities.create(1);
        }
        if (!supportsFormatDrm(format)) {
            return RendererCapabilities.create(2);
        }
        MediaCodecInfo decoderInfo = decoderInfos.get(0);
        boolean isFormatSupported = decoderInfo.isFormatSupported(context, format);
        boolean isPreferredDecoder = true;
        if (!isFormatSupported) {
            int i = 1;
            while (true) {
                if (i >= decoderInfos.size()) {
                    break;
                }
                MediaCodecInfo otherDecoderInfo = decoderInfos.get(i);
                if (!otherDecoderInfo.isFormatSupported(context, format)) {
                    i++;
                } else {
                    decoderInfo = otherDecoderInfo;
                    isFormatSupported = true;
                    isPreferredDecoder = false;
                    break;
                }
            }
        }
        int formatSupport = isFormatSupported ? 4 : 3;
        if (decoderInfo.isSeamlessAdaptationSupported(format)) {
            adaptiveSupport = 16;
        } else {
            adaptiveSupport = 8;
        }
        if (decoderInfo.hardwareAccelerated) {
            hardwareAccelerationSupport = 64;
        } else {
            hardwareAccelerationSupport = 0;
        }
        int decoderSupport = isPreferredDecoder ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(context)) {
            decoderSupport = 256;
        }
        int tunnelingSupport = 0;
        if (isFormatSupported) {
            List<MediaCodecInfo> tunnelingDecoderInfos = getDecoderInfos(context, mediaCodecSelector, format, requiresSecureDecryption, true);
            if (!tunnelingDecoderInfos.isEmpty()) {
                MediaCodecInfo tunnelingDecoderInfo = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(context, tunnelingDecoderInfos, format).get(0);
                if (tunnelingDecoderInfo.isFormatSupported(context, format) && tunnelingDecoderInfo.isSeamlessAdaptationSupported(format)) {
                    tunnelingSupport = 32;
                }
            }
        }
        return RendererCapabilities.create(formatSupport, adaptiveSupport, tunnelingSupport, hardwareAccelerationSupport, decoderSupport);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(this.context, getDecoderInfos(this.context, mediaCodecSelector, format, requiresSecureDecoder, this.tunneling), format);
    }

    private static List<MediaCodecInfo> getDecoderInfos(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder, boolean requiresTunnelingDecoder) throws MediaCodecUtil.DecoderQueryException {
        if (format.sampleMimeType == null) {
            return ImmutableList.of();
        }
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(context)) {
            List<MediaCodecInfo> alternativeDecoderInfos = MediaCodecUtil.getAlternativeDecoderInfos(mediaCodecSelector, format, requiresSecureDecoder, requiresTunnelingDecoder);
            if (!alternativeDecoderInfos.isEmpty()) {
                return alternativeDecoderInfos;
            }
        }
        return MediaCodecUtil.getDecoderInfosSoftMatch(mediaCodecSelector, format, requiresSecureDecoder, requiresTunnelingDecoder);
    }

    private static final class Api26 {
        private Api26() {
        }

        public static boolean doesDisplaySupportDolbyVision(Context context) {
            Display.HdrCapabilities hdrCapabilities;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr() || (hdrCapabilities = display.getHdrCapabilities()) == null) {
                return false;
            }
            for (int hdrType : hdrCapabilities.getSupportedHdrTypes()) {
                if (hdrType == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onInit() {
        super.onInit();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onEnabled(boolean joining, boolean mayRenderStartOfStream) throws ExoPlaybackException {
        super.onEnabled(joining, mayRenderStartOfStream);
        boolean tunneling = getConfiguration().tunneling;
        int firstFrameReleaseInstruction = 0;
        Preconditions.checkState((tunneling && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != tunneling) {
            this.tunneling = tunneling;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        if (!this.hasSetVideoSink) {
            if (this.videoEffects != null && this.videoSink == null) {
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = createPlaybackVideoGraphWrapper(this.context, this.videoFrameReleaseControl);
                playbackVideoGraphWrapper.setTotalVideoInputCount(1);
                this.videoSink = playbackVideoGraphWrapper.getSink(0);
            }
            this.hasSetVideoSink = true;
        }
        if (this.videoSink != null) {
            configureVideoSink();
            if (!mayRenderStartOfStream) {
                firstFrameReleaseInstruction = 1;
            }
            this.nextVideoSinkFirstFrameReleaseInstruction = firstFrameReleaseInstruction;
            experimentalEnableProcessedStreamChangedAtStart();
            return;
        }
        this.videoFrameReleaseControl.setClock(getClock());
        if (!mayRenderStartOfStream) {
            firstFrameReleaseInstruction = 1;
        }
        this.videoFrameReleaseControl.onStreamChanged(firstFrameReleaseInstruction);
    }

    @RequiresNonNull({"videoSink"})
    private void configureVideoSink() {
        this.videoSink.setListener(new VideoSink.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.1
            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameAvailableForRendering() {
                Renderer.WakeupListener wakeupListener = MediaCodecVideoRenderer.this.getWakeupListener();
                if (wakeupListener != null) {
                    wakeupListener.onWakeup();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFirstFrameRendered() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.notifyRenderedFirstFrame();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameDropped() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.updateDroppedBufferCounters(0, 1);
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onVideoSizeChanged(VideoSize videoSize) {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onError(VideoSink.VideoSinkException videoSinkException) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(MediaCodecVideoRenderer.this.createRendererException(videoSinkException, videoSinkException.format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED));
            }
        }, MoreExecutors.directExecutor());
        if (this.frameMetadataListener != null) {
            this.videoSink.setVideoFrameMetadataListener(this.frameMetadataListener);
        }
        if (this.displaySurface != null && !this.outputResolution.equals(Size.UNKNOWN)) {
            this.videoSink.setOutputSurfaceInfo(this.displaySurface, this.outputResolution);
        }
        this.videoSink.setChangeFrameRateStrategy(this.changeFrameRateStrategy);
        this.videoSink.setPlaybackSpeed(getPlaybackSpeed());
        if (this.videoEffects != null) {
            this.videoSink.setVideoEffects(this.videoEffects);
        }
    }

    protected PlaybackVideoGraphWrapper createPlaybackVideoGraphWrapper(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
        PlaybackVideoGraphWrapper.Builder enablePlaylistMode = new PlaybackVideoGraphWrapper.Builder(context, videoFrameReleaseControl).setEnablePlaylistMode(true);
        long j = this.minEarlyUsToDropDecoderInput;
        long j2 = C.TIME_UNSET;
        if (j != C.TIME_UNSET) {
            j2 = -this.minEarlyUsToDropDecoderInput;
        }
        return enablePlaylistMode.experimentalSetLateThresholdToDropInputUs(j2).setClock(getClock()).build();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        if (this.videoSink != null) {
            if (this.nextVideoSinkFirstFrameReleaseInstruction == 0 || this.nextVideoSinkFirstFrameReleaseInstruction == 1) {
                this.nextVideoSinkFirstFrameReleaseInstruction = 0;
                return;
            } else {
                this.videoSink.allowReleaseFirstFrameBeforeStarted();
                return;
            }
        }
        this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onStreamChanged(Format[] formats, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        super.onStreamChanged(formats, startPositionUs, offsetUs, mediaPeriodId);
        updatePeriodDurationUs(mediaPeriodId);
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            this.videoFrameReleaseEarlyTimeForecaster.reset();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onTimelineChanged(Timeline timeline) {
        super.onTimelineChanged(timeline);
        MediaSource.MediaPeriodId mediaPeriodId = getMediaPeriodId();
        if (mediaPeriodId != null) {
            updatePeriodDurationUs(mediaPeriodId);
        }
    }

    private void updatePeriodDurationUs(MediaSource.MediaPeriodId mediaPeriodId) {
        Timeline timeline = getTimeline();
        if (timeline.isEmpty()) {
            this.periodDurationUs = C.TIME_UNSET;
            return;
        }
        int periodIndex = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        if (periodIndex == -1) {
            this.periodDurationUs = C.TIME_UNSET;
        } else {
            this.periodDurationUs = timeline.getPeriod(periodIndex, new Timeline.Period()).getDurationUs();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        if (this.videoSink != null && !joining) {
            this.videoSink.flush(true);
        }
        if (sampleStreamIsResetToKeyFrame) {
            this.lastResetToKeyFramePositionUs = positionUs;
        }
        super.onPositionReset(positionUs, joining, sampleStreamIsResetToKeyFrame);
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.reset();
        }
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            this.videoFrameReleaseEarlyTimeForecaster.reset();
        }
        if (joining) {
            if (this.videoSink != null) {
                this.videoSink.join(false);
            } else {
                this.videoFrameReleaseControl.join(false);
            }
        }
        maybeSetupTunnelingForFirstFrame();
        this.consecutiveDroppedFrameCount = 0;
        this.nextOutputBufferToProcessPresentationTimeUs = C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean supportsResetPositionWithoutKeyFrameReset(long positionUs) {
        if (getLargestQueuedPresentationTimeUs() == C.TIME_UNSET || positionUs < this.lastResetToKeyFramePositionUs) {
            return false;
        }
        long lastProcessedOutputBufferTimeUs = getLastProcessedOutputBufferTimeUs();
        return lastProcessedOutputBufferTimeUs == C.TIME_UNSET || positionUs > lastProcessedOutputBufferTimeUs;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return super.isEnded() && (this.videoSink == null || this.videoSink.isEnded());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        boolean rendererOtherwiseReady = isReadyForDecoding();
        if (this.videoSink != null) {
            return this.videoSink.isReady(rendererOtherwiseReady);
        }
        if (rendererOtherwiseReady && (getCodec() == null || this.tunneling)) {
            return true;
        }
        return this.videoFrameReleaseControl.isReady(rendererOtherwiseReady);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        long elapsedRealtimeMs = getClock().elapsedRealtime();
        this.droppedFrameAccumulationStartTimeMs = elapsedRealtimeMs;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        if (this.videoSink != null) {
            this.videoSink.startRendering();
        } else {
            this.videoFrameReleaseControl.onStarted();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onStopped() {
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        if (this.videoSink != null) {
            this.videoSink.stopRendering();
        } else {
            this.videoFrameReleaseControl.onStopped();
        }
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            this.videoFrameReleaseEarlyTimeForecaster.reset();
        }
        super.onStopped();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        this.reportedVideoSize = null;
        this.periodDurationUs = C.TIME_UNSET;
        maybeSetupTunnelingForFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        this.isFlushRequired = true;
        this.nextOutputBufferToProcessPresentationTimeUs = C.TIME_UNSET;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
            this.eventDispatcher.videoSizeChanged(VideoSize.UNKNOWN);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onReset() {
        try {
            super.onReset();
        } finally {
            this.hasSetVideoSink = false;
            this.startPositionUs = C.TIME_UNSET;
            this.nextOutputBufferToProcessPresentationTimeUs = C.TIME_UNSET;
            releasePlaceholderSurface();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onRelease() {
        super.onRelease();
        if (this.videoSink != null && this.ownsVideoSink) {
            this.videoSink.release();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        switch (messageType) {
            case 1:
                setOutput(message);
                break;
            case 2:
            case 3:
            case 6:
            case 8:
            case 9:
            case 11:
            case 12:
            case 15:
            default:
                super.handleMessage(messageType, message);
                break;
            case 4:
                this.scalingMode = ((Integer) Preconditions.checkNotNull(message)).intValue();
                MediaCodecAdapter codec = getCodec();
                if (codec != null) {
                    codec.setVideoScalingMode(this.scalingMode);
                }
                break;
            case 5:
                this.changeFrameRateStrategy = ((Integer) Preconditions.checkNotNull(message)).intValue();
                if (this.videoSink != null) {
                    this.videoSink.setChangeFrameRateStrategy(this.changeFrameRateStrategy);
                } else {
                    this.videoFrameReleaseControl.setChangeFrameRateStrategy(this.changeFrameRateStrategy);
                }
                break;
            case 7:
                this.frameMetadataListener = (VideoFrameMetadataListener) Preconditions.checkNotNull(message);
                if (this.videoSink != null) {
                    this.videoSink.setVideoFrameMetadataListener(this.frameMetadataListener);
                }
                break;
            case 10:
                int tunnelingAudioSessionId = ((Integer) Preconditions.checkNotNull(message)).intValue();
                if (this.tunnelingAudioSessionId != tunnelingAudioSessionId) {
                    this.tunnelingAudioSessionId = tunnelingAudioSessionId;
                    if (this.tunneling) {
                        releaseCodec();
                    }
                }
                break;
            case 13:
                List<Effect> videoEffects = (List) Preconditions.checkNotNull(message);
                setVideoEffects(videoEffects);
                break;
            case 14:
                Size outputResolution = (Size) Preconditions.checkNotNull(message);
                if (outputResolution.getWidth() != 0 && outputResolution.getHeight() != 0) {
                    this.outputResolution = outputResolution;
                    if (this.videoSink != null) {
                        this.videoSink.setOutputSurfaceInfo((Surface) Preconditions.checkNotNull(this.displaySurface), outputResolution);
                    }
                    break;
                }
                break;
            case 16:
                this.rendererPriority = ((Integer) Preconditions.checkNotNull(message)).intValue();
                updateCodecImportance();
                break;
            case 17:
                Surface surface = this.displaySurface;
                setOutput(null);
                ((MediaCodecVideoRenderer) Preconditions.checkNotNull(message)).handleMessage(1, surface);
                break;
            case 18:
                boolean codecRateAlreadyIncreasedForScrubbing = this.scrubbingModeParameters != null && this.scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
                this.scrubbingModeParameters = (ScrubbingModeParameters) message;
                boolean shouldIncreaseCodecOperatingRate = this.scrubbingModeParameters != null && this.scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
                if (codecRateAlreadyIncreasedForScrubbing != shouldIncreaseCodecOperatingRate) {
                    updateCodecOperatingRate();
                }
                break;
        }
    }

    private void setOutput(Object output) throws ExoPlaybackException {
        Surface displaySurface = output instanceof Surface ? (Surface) output : null;
        if (this.displaySurface != displaySurface) {
            this.displaySurface = displaySurface;
            if (this.videoSink == null) {
                this.videoFrameReleaseControl.setOutputSurface(displaySurface);
            }
            this.haveReportedFirstFrameRenderedForCurrentSurface = false;
            int state = getState();
            MediaCodecAdapter codec = getCodec();
            if (codec != null && this.videoSink == null) {
                MediaCodecInfo codecInfo = (MediaCodecInfo) Preconditions.checkNotNull(getCodecInfo());
                boolean canUpdateSurface = hasSurfaceForCodec(codecInfo);
                if (canUpdateSurface && !this.codecNeedsSetOutputSurfaceWorkaround) {
                    setOutputSurface(codec, getSurfaceForCodec(codecInfo));
                } else {
                    releaseCodec();
                    maybeInitCodecOrBypass();
                }
            }
            if (displaySurface != null) {
                maybeRenotifyVideoSizeChanged();
            } else {
                this.reportedVideoSize = null;
                if (this.videoSink != null) {
                    this.videoSink.clearOutputSurfaceInfo();
                }
            }
            if (state == 2) {
                if (this.videoSink != null) {
                    this.videoSink.join(true);
                } else {
                    this.videoFrameReleaseControl.join(true);
                }
            }
            maybeSetupTunnelingForFirstFrame();
            return;
        }
        if (displaySurface != null) {
            maybeRenotifyVideoSizeChanged();
            maybeRenotifyRenderedFirstFrame();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean shouldInitCodec(MediaCodecInfo codecInfo) {
        return hasSurfaceForCodec(codecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo codecInfo, Format format, MediaCrypto crypto, float codecOperatingRate) {
        String codecMimeType = codecInfo.codecMimeType;
        this.codecMaxValues = getCodecMaxValues(codecInfo, format, getStreamFormats());
        MediaFormat mediaFormat = getMediaFormat(format, codecMimeType, this.codecMaxValues, codecOperatingRate, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        Surface codecSurface = getSurfaceForCodec(codecInfo);
        maybeSetKeyAllowFrameDrop(mediaFormat);
        return MediaCodecAdapter.Configuration.createForVideoDecoding(codecInfo, mediaFormat, format, codecSurface, crypto);
    }

    private void maybeSetKeyAllowFrameDrop(MediaFormat mediaFormat) {
        if (this.videoSink != null && !Util.isFrameDropAllowedOnSurfaceInput(this.context)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation canReuseCodec(MediaCodecInfo codecInfo, Format oldFormat, Format newFormat) {
        int discardReasons;
        DecoderReuseEvaluation evaluation = codecInfo.canReuseCodec(oldFormat, newFormat);
        int discardReasons2 = evaluation.discardReasons;
        CodecMaxValues codecMaxValues = (CodecMaxValues) Preconditions.checkNotNull(this.codecMaxValues);
        if (newFormat.width > codecMaxValues.width || newFormat.height > codecMaxValues.height) {
            discardReasons2 |= 256;
        }
        if (getMaxInputSize(codecInfo, newFormat) > codecMaxValues.inputSize) {
            discardReasons2 |= 64;
        }
        if (this.changeFrameRateStrategy != Integer.MIN_VALUE && oldFormat.frameRate != -1.0f && newFormat.frameRate != -1.0f && Math.abs(newFormat.frameRate - oldFormat.frameRate) > 1.0f && cannotChangeSurfaceFrameRateMidPlayback()) {
            discardReasons = discardReasons2 | 65536;
        } else {
            discardReasons = discardReasons2;
        }
        return new DecoderReuseEvaluation(codecInfo.name, oldFormat, newFormat, discardReasons != 0 ? 0 : evaluation.result, discardReasons);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public void render(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        if (this.videoSink != null) {
            try {
                this.videoSink.render(positionUs, elapsedRealtimeUs);
            } catch (VideoSink.VideoSinkException e) {
                throw createRendererException(e, e.format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED);
            }
        }
        super.render(positionUs, elapsedRealtimeUs);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.droppedDecoderInputBufferTimestamps.clear();
        this.buffersInCodecCount = 0;
        this.consecutiveDroppedInputBufferCount = 0;
        this.isFlushRequired = false;
        this.nextOutputBufferToProcessPresentationTimeUs = C.TIME_UNSET;
        if (this.av1SampleDependencyParser != null) {
            this.av1SampleDependencyParser.reset();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float currentPlaybackSpeed, float targetPlaybackSpeed) throws ExoPlaybackException {
        super.setPlaybackSpeed(currentPlaybackSpeed, targetPlaybackSpeed);
        if (this.videoSink != null) {
            this.videoSink.setPlaybackSpeed(currentPlaybackSpeed);
        } else {
            this.videoFrameReleaseControl.setPlaybackSpeed(currentPlaybackSpeed);
        }
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            this.videoFrameReleaseEarlyTimeForecaster.setPlaybackSpeed(currentPlaybackSpeed);
        }
    }

    public static int getCodecMaxInputSize(MediaCodecInfo codecInfo, Format format) {
        int width = format.width;
        int height = format.height;
        if (width == -1 || height == -1) {
            return -1;
        }
        String sampleMimeType = (String) Preconditions.checkNotNull(format.sampleMimeType);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(sampleMimeType)) {
            sampleMimeType = MimeTypes.VIDEO_H265;
            Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
            if (codecProfileAndLevel != null) {
                int profile = ((Integer) codecProfileAndLevel.first).intValue();
                if (profile == 512 || profile == 1 || profile == 2) {
                    sampleMimeType = MimeTypes.VIDEO_H264;
                } else if (profile == 1024) {
                    sampleMimeType = MimeTypes.VIDEO_AV1;
                }
            }
        }
        switch (sampleMimeType) {
            case "video/3gpp":
            case "video/mp4v-es":
            case "video/av01":
            case "video/x-vnd.on2.vp8":
                return getMaxSampleSize(width * height, 2);
            case "video/hevc":
                return Math.max(2097152, getMaxSampleSize(width * height, 2));
            case "video/avc":
                if ("BRAVIA 4K 2015".equals(Build.MODEL) || ("Amazon".equals(Build.MANUFACTURER) && ("KFSOWI".equals(Build.MODEL) || ("AFTS".equals(Build.MODEL) && codecInfo.secure)))) {
                    return -1;
                }
                int maxPixels = Util.ceilDivide(width, 16) * Util.ceilDivide(height, 16) * 16 * 16;
                return getMaxSampleSize(maxPixels, 2);
            case "video/x-vnd.on2.vp9":
                return getMaxSampleSize(width * height, 4);
            default:
                return -1;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected long getDurationToProgressUs(long positionUs, long elapsedRealtimeUs, boolean isOnBufferAvailableListenerRegistered) {
        if (!this.enableDurationToProgressUs || !isOnBufferAvailableListenerRegistered) {
            return super.getDurationToProgressUs(positionUs, elapsedRealtimeUs, isOnBufferAvailableListenerRegistered);
        }
        if (getState() != 2) {
            return (isReady() || isEnded()) ? 1000000L : 10000L;
        }
        if (this.nextOutputBufferToProcessPresentationTimeUs == C.TIME_UNSET || this.videoSink != null) {
            return 10000L;
        }
        if (isEnded()) {
            long durationUs = this.nextOutputBufferToProcessPresentationTimeUs - positionUs;
            return Math.max(10000L, (long) ((durationUs / getPlaybackSpeed()) / 2.0f));
        }
        try {
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(this.nextOutputBufferToProcessPresentationTimeUs, positionUs, elapsedRealtimeUs, getOutputStreamStartPositionUs(), false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction != 5) {
                return 0L;
            }
            long durationUs2 = this.videoFrameReleaseInfo.getEarlyUs();
            return Math.max(0L, (durationUs2 + (Util.msToUs(getClock().elapsedRealtime()) - elapsedRealtimeUs)) - 25000);
        } catch (ExoPlaybackException e) {
            Log.w(TAG, "Error while evaluating frame release action");
            return 10000L;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float getCodecOperatingRateV23(float targetPlaybackSpeed, Format format, Format[] streamFormats) {
        MediaCodecInfo codecInfo;
        float maxFrameRate = -1.0f;
        for (Format streamFormat : streamFormats) {
            float streamFrameRate = streamFormat.frameRate;
            if (streamFrameRate != -1.0f) {
                maxFrameRate = Math.max(maxFrameRate, streamFrameRate);
            }
        }
        float operatingRate = maxFrameRate == -1.0f ? -1.0f : maxFrameRate * targetPlaybackSpeed;
        if (this.scrubbingModeParameters != null && (codecInfo = getCodecInfo()) != null) {
            float maxSupportedFrameRate = codecInfo.getMaxSupportedFrameRate(format.width, format.height);
            if (operatingRate != -1.0f) {
                return Math.max(operatingRate, maxSupportedFrameRate);
            }
            return maxSupportedFrameRate;
        }
        return operatingRate;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
        if (this.videoSink != null && !this.videoSink.isInitialized()) {
            try {
                return this.videoSink.initialize(format);
            } catch (VideoSink.VideoSinkException e) {
                throw createRendererException(e, format, 7000);
            }
        }
        return true;
    }

    public void setVideoEffects(List<Effect> effects) {
        if (effects.equals(VideoFrameProcessor.REDRAW)) {
            if (this.videoSink == null || !this.videoSink.isInitialized()) {
                return;
            }
            this.videoSink.redraw();
            return;
        }
        this.videoEffects = effects;
        if (this.videoSink != null) {
            this.videoSink.setVideoEffects(effects);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecInitialized(String name, MediaCodecAdapter.Configuration configuration, long initializedTimestampMs, long initializationDurationMs) {
        this.eventDispatcher.decoderInitialized(name, initializedTimestampMs, initializationDurationMs);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(name);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Preconditions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        maybeSetupTunnelingForFirstFrame();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecReleased(String name) {
        this.eventDispatcher.decoderReleased(name);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecError(Exception codecError) {
        Log.e(TAG, "Video codec error", codecError);
        this.eventDispatcher.videoCodecError(codecError);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected final boolean shouldReleaseCodecInsteadOfFlushing() {
        MediaCodecInfo codecInfo = getCodecInfo();
        if (this.videoSink != null && codecInfo != null && (codecInfo.name.equals("c2.mtk.avc.decoder") || codecInfo.name.equals("c2.mtk.hevc.decoder"))) {
            return true;
        }
        return super.shouldReleaseCodecInsteadOfFlushing();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected final boolean shouldFlushCodec() {
        Format inputFormat = getCodecInputFormat();
        boolean skippingFlushMayCauseOverflow = true;
        if (this.periodDurationUs != C.TIME_UNSET) {
            long maxPotentialSkippedFlushOffset = this.periodDurationUs + 1;
            long maxPotentialSampleTimestamp = getOutputStreamOffsetUs() + this.periodDurationUs;
            skippingFlushMayCauseOverflow = getSkippedFlushOffsetUs() + maxPotentialSkippedFlushOffset > Long.MAX_VALUE - maxPotentialSampleTimestamp;
        }
        if (this.scrubbingModeParameters == null) {
            return super.shouldFlushCodec();
        }
        if (!this.scrubbingModeParameters.allowSkippingMediaCodecFlush || this.isFlushRequired || this.tunneling) {
            return true;
        }
        return (inputFormat != null && inputFormat.maxNumReorderSamples > 0) || skippingFlushMayCauseOverflow || getLastBufferInStreamPresentationTimeUs() != C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation evaluation = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged((Format) Preconditions.checkNotNull(formatHolder.format), evaluation);
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            this.videoFrameReleaseEarlyTimeForecaster.reset();
        }
        return evaluation;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onQueueInputBuffer(DecoderInputBuffer buffer) throws ExoPlaybackException {
        if (this.av1SampleDependencyParser != null && ((MediaCodecInfo) Preconditions.checkNotNull(getCodecInfo())).mimeType.equals(MimeTypes.VIDEO_AV1) && buffer.isKeyFrame() && buffer.data != null) {
            this.av1SampleDependencyParser.queueInputBuffer(buffer.data);
        }
        this.consecutiveDroppedInputBufferCount = 0;
        int flags = getCodecBufferFlags(buffer);
        if ((Build.VERSION.SDK_INT < 34 || (flags & 32) == 0) && !this.tunneling) {
            this.buffersInCodecCount++;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int getCodecBufferFlags(DecoderInputBuffer buffer) {
        if (Build.VERSION.SDK_INT >= 34) {
            if ((this.enableMediaCodecBufferDecodeOnlyFlag || ((this.scrubbingModeParameters != null && this.scrubbingModeParameters.useDecodeOnlyFlag) || this.tunneling)) && isBufferBeforeStartTime(buffer) && !isBufferProbablyLastSample(buffer)) {
                return 32;
            }
            return 0;
        }
        return 0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean shouldDiscardDecoderInputBuffer(DecoderInputBuffer buffer) {
        if (isBufferProbablyLastSample(buffer)) {
            return false;
        }
        boolean shouldSkipDecoderInputBuffer = isBufferBeforeStartTime(buffer);
        boolean shouldDropDecoderInputBuffer = false;
        if (this.videoFrameReleaseEarlyTimeForecaster != null) {
            long predictedEarlyUs = this.videoFrameReleaseEarlyTimeForecaster.predictEarlyUs(buffer.timeUs);
            shouldDropDecoderInputBuffer = predictedEarlyUs != C.TIME_UNSET && predictedEarlyUs < this.minEarlyUsToDropDecoderInput;
        }
        if ((!shouldSkipDecoderInputBuffer && !shouldDropDecoderInputBuffer) || buffer.hasSupplementalData()) {
            return false;
        }
        boolean bufferDiscarded = false;
        if (buffer.notDependedOn()) {
            bufferDiscarded = true;
            buffer.clear();
        } else if (this.av1SampleDependencyParser != null && ((MediaCodecInfo) Preconditions.checkNotNull(getCodecInfo())).mimeType.equals(MimeTypes.VIDEO_AV1) && buffer.data != null) {
            boolean skipFrameHeaders = shouldSkipDecoderInputBuffer || this.consecutiveDroppedInputBufferCount <= 0;
            ByteBuffer readOnlySample = buffer.data.asReadOnlyBuffer();
            readOnlySample.flip();
            int sampleLimitAfterSkippingNonReferenceFrames = this.av1SampleDependencyParser.sampleLimitAfterSkippingNonReferenceFrame(readOnlySample, skipFrameHeaders);
            if (sampleLimitAfterSkippingNonReferenceFrames == 0) {
                buffer.clear();
                bufferDiscarded = true;
            } else if (sampleLimitAfterSkippingNonReferenceFrames != readOnlySample.limit()) {
                boolean hasSpaceForNextFrame = ((CodecMaxValues) Preconditions.checkNotNull(this.codecMaxValues)).inputSize + sampleLimitAfterSkippingNonReferenceFrames < readOnlySample.capacity();
                if (hasSpaceForNextFrame && !buffer.isEncrypted()) {
                    ((ByteBuffer) Preconditions.checkNotNull(buffer.data)).position(sampleLimitAfterSkippingNonReferenceFrames);
                    bufferDiscarded = true;
                }
            }
        }
        if (bufferDiscarded) {
            if (shouldSkipDecoderInputBuffer) {
                this.decoderCounters.skippedInputBufferCount++;
            } else {
                this.droppedDecoderInputBufferTimestamps.add(Long.valueOf(buffer.timeUs));
                this.consecutiveDroppedInputBufferCount++;
            }
        }
        return bufferDiscarded;
    }

    private boolean isBufferProbablyLastSample(DecoderInputBuffer buffer) {
        if (hasReadStreamToEnd() || buffer.isLastSample() || this.periodDurationUs == C.TIME_UNSET) {
            return true;
        }
        long presentationTimeUs = buffer.timeUs - getOutputStreamOffsetUs();
        return this.periodDurationUs - presentationTimeUs <= 100000;
    }

    private boolean isBufferBeforeStartTime(DecoderInputBuffer buffer) {
        return buffer.timeUs < getLastResetPositionUs();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
        int width;
        int integer;
        int height;
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            width = format.width;
            height = format.height;
        } else {
            Preconditions.checkNotNull(mediaFormat);
            boolean hasCrop = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
            if (hasCrop) {
                width = (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
            } else {
                width = mediaFormat.getInteger("width");
            }
            if (hasCrop) {
                integer = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1;
            } else {
                integer = mediaFormat.getInteger("height");
            }
            height = integer;
        }
        float pixelWidthHeightRatio = format.pixelWidthHeightRatio;
        if (format.rotationDegrees == 90 || format.rotationDegrees == 270) {
            int rotatedHeight = width;
            width = height;
            height = rotatedHeight;
            pixelWidthHeightRatio = 1.0f / pixelWidthHeightRatio;
        }
        this.decodedVideoSize = new VideoSize(width, height, pixelWidthHeightRatio);
        if (this.videoSink != null && this.pendingVideoSinkInputStreamChange) {
            changeVideoSinkInputStream(this.videoSink, 1, format.buildUpon().setWidth(width).setHeight(height).setPixelWidthHeightRatio(pixelWidthHeightRatio).build(), this.nextVideoSinkFirstFrameReleaseInstruction);
            this.nextVideoSinkFirstFrameReleaseInstruction = 2;
        } else {
            this.videoFrameReleaseControl.setFrameRate(format.frameRate);
        }
        this.pendingVideoSinkInputStreamChange = false;
    }

    protected void changeVideoSinkInputStream(VideoSink videoSink, int inputType, Format format, int firstFrameReleaseInstruction) {
        List<Effect> videoEffectsToApply = this.videoEffects != null ? this.videoEffects : ImmutableList.of();
        videoSink.onInputStreamChanged(inputType, format, getOutputStreamStartPositionUs(), firstFrameReleaseInstruction, videoEffectsToApply);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void handleInputBufferSupplementalData(DecoderInputBuffer buffer) throws ExoPlaybackException {
        if (!this.codecHandlesHdr10PlusOutOfBandMetadata) {
            return;
        }
        ByteBuffer data = (ByteBuffer) Preconditions.checkNotNull(buffer.supplementalData);
        if (data.remaining() >= 7) {
            byte ituTT35CountryCode = data.get();
            int ituTT35TerminalProviderCode = data.getShort();
            int ituTT35TerminalProviderOrientedCode = data.getShort();
            byte applicationIdentifier = data.get();
            byte applicationVersion = data.get();
            data.position(0);
            if (ituTT35CountryCode == -75 && ituTT35TerminalProviderCode == 60 && ituTT35TerminalProviderOrientedCode == 1 && applicationIdentifier == 4) {
                if (applicationVersion == 0 || applicationVersion == 1) {
                    byte[] hdr10PlusInfo = new byte[data.remaining()];
                    data.get(hdr10PlusInfo);
                    data.position(0);
                    setHdr10PlusInfoV29((MediaCodecAdapter) Preconditions.checkNotNull(getCodec()), hdr10PlusInfo);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean processOutputBuffer(long positionUs, long elapsedRealtimeUs, final MediaCodecAdapter codec, ByteBuffer buffer, final int bufferIndex, int bufferFlags, int sampleCount, long bufferPresentationTimeUs, boolean isDecodeOnlyBuffer, boolean isLastBuffer, Format format) throws ExoPlaybackException {
        long j;
        Preconditions.checkNotNull(codec);
        long outputStreamOffsetUs = getOutputStreamOffsetUs();
        final long presentationTimeUs = bufferPresentationTimeUs - outputStreamOffsetUs;
        updateDroppedBufferCountersWithInputBuffers(bufferPresentationTimeUs);
        if (this.videoSink != null) {
            if (isDecodeOnlyBuffer && !isLastBuffer) {
                skipOutputBuffer(codec, bufferIndex, presentationTimeUs);
                return true;
            }
            return this.videoSink.handleInputFrame(bufferPresentationTimeUs, new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.2
                @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                public void render(long renderTimestampNs) {
                    MediaCodecVideoRenderer.this.renderOutputBuffer(codec, bufferIndex, presentationTimeUs, renderTimestampNs);
                }

                @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                public void skip() {
                    MediaCodecVideoRenderer.this.dropOutputBuffer(codec, bufferIndex, presentationTimeUs);
                }
            });
        }
        int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(bufferPresentationTimeUs, positionUs, elapsedRealtimeUs, getOutputStreamStartPositionUs(), isDecodeOnlyBuffer, isLastBuffer, this.videoFrameReleaseInfo);
        if (this.videoFrameReleaseEarlyTimeForecaster != null && frameReleaseAction != 5 && frameReleaseAction != 4) {
            this.videoFrameReleaseEarlyTimeForecaster.onVideoFrameProcessed(bufferPresentationTimeUs, this.videoFrameReleaseInfo.getEarlyUs());
        }
        if (frameReleaseAction == 5) {
            j = bufferPresentationTimeUs;
        } else {
            j = C.TIME_UNSET;
        }
        this.nextOutputBufferToProcessPresentationTimeUs = j;
        switch (frameReleaseAction) {
            case 0:
                long releaseTimeNs = getClock().nanoTime();
                notifyFrameMetadataListener(presentationTimeUs, releaseTimeNs, format);
                renderOutputBuffer(codec, bufferIndex, presentationTimeUs, releaseTimeNs);
                updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
                return true;
            case 1:
                releaseFrame((MediaCodecAdapter) Preconditions.checkNotNull(codec), bufferIndex, presentationTimeUs, format);
                return true;
            case 2:
                dropOutputBuffer(codec, bufferIndex, presentationTimeUs);
                updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
                return true;
            case 3:
                skipOutputBuffer(codec, bufferIndex, presentationTimeUs);
                updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
                return true;
            case 4:
            case 5:
                return false;
            default:
                throw new IllegalStateException(String.valueOf(frameReleaseAction));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecParametersChanged(CodecParameters codecParameters) {
        this.eventDispatcher.videoCodecParametersChanged(codecParameters);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void renderToEndOfStream() {
        if (this.videoSink != null) {
            this.videoSink.signalEndOfCurrentInputStream();
        } else if (getLastBufferInStreamPresentationTimeUs() != C.TIME_UNSET) {
            this.nextOutputBufferToProcessPresentationTimeUs = getLastBufferInStreamPresentationTimeUs();
        }
    }

    protected void experimentalDisableAdvancingTimestampChecksInVideoFrameReleaseControl() {
        this.videoFrameReleaseControl.experimentalDisableAdvancingTimestampChecks();
    }

    protected long getBufferTimestampAdjustmentUs() {
        return -this.startPositionUs;
    }

    private void releaseFrame(MediaCodecAdapter codec, int bufferIndex, long presentationTimeUs, Format format) {
        MediaCodecVideoRenderer mediaCodecVideoRenderer;
        long releaseTimeNs;
        long releaseTimeNs2 = this.videoFrameReleaseInfo.getReleaseTimeNs();
        long earlyUs = this.videoFrameReleaseInfo.getEarlyUs();
        if (shouldSkipBuffersWithIdenticalReleaseTime() && releaseTimeNs2 == this.lastFrameReleaseTimeNs) {
            skipOutputBuffer(codec, bufferIndex, presentationTimeUs);
            mediaCodecVideoRenderer = this;
            releaseTimeNs = releaseTimeNs2;
        } else {
            mediaCodecVideoRenderer = this;
            mediaCodecVideoRenderer.notifyFrameMetadataListener(presentationTimeUs, releaseTimeNs2, format);
            releaseTimeNs = releaseTimeNs2;
            mediaCodecVideoRenderer.renderOutputBufferV21(codec, bufferIndex, presentationTimeUs, releaseTimeNs);
        }
        updateVideoFrameProcessingOffsetCounters(earlyUs);
        mediaCodecVideoRenderer.lastFrameReleaseTimeNs = releaseTimeNs;
    }

    private void notifyFrameMetadataListener(long presentationTimeUs, long releaseTimeNs, Format format) {
        if (this.frameMetadataListener != null) {
            this.frameMetadataListener.onVideoFrameAboutToBeRendered(presentationTimeUs, releaseTimeNs, format, getCodecOutputMediaFormat());
        }
    }

    protected void onProcessedTunneledBuffer(long presentationTimeUs) throws ExoPlaybackException {
        updateOutputFormatForTime(presentationTimeUs);
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(presentationTimeUs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onProcessedOutputBuffer(long presentationTimeUs) {
        super.onProcessedOutputBuffer(presentationTimeUs);
        if (!this.tunneling) {
            this.buffersInCodecCount--;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        if (this.videoSink != null) {
            this.videoSink.signalEndOfCurrentInputStream();
            if (this.startPositionUs == C.TIME_UNSET) {
                this.startPositionUs = getOutputStreamStartPositionUs();
            }
            this.videoSink.setBufferTimestampAdjustmentUs(getBufferTimestampAdjustmentUs());
        } else {
            this.videoFrameReleaseControl.onStreamChanged(2);
        }
        this.pendingVideoSinkInputStreamChange = true;
        maybeSetupTunnelingForFirstFrame();
    }

    protected boolean shouldDropOutputBuffer(long earlyUs, long elapsedRealtimeUs, boolean isLastBuffer) {
        return earlyUs < MIN_EARLY_US_LATE_THRESHOLD && !isLastBuffer;
    }

    protected boolean shouldDropBuffersToKeyframe(long earlyUs, long elapsedRealtimeUs, boolean isLastBuffer) {
        return earlyUs < MIN_EARLY_US_VERY_LATE_THRESHOLD && !isLastBuffer;
    }

    protected boolean shouldSkipBuffersWithIdenticalReleaseTime() {
        return true;
    }

    protected boolean shouldForceRenderOutputBuffer(long earlyUs, long elapsedSinceLastRenderUs) {
        return earlyUs < MIN_EARLY_US_LATE_THRESHOLD && elapsedSinceLastRenderUs > 100000;
    }

    protected void skipOutputBuffer(MediaCodecAdapter codec, int index, long presentationTimeUs) {
        TraceUtil.beginSection("skipVideoBuffer");
        codec.releaseOutputBuffer(index, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    protected void dropOutputBuffer(MediaCodecAdapter codec, int index, long presentationTimeUs) {
        TraceUtil.beginSection("dropVideoBuffer");
        codec.releaseOutputBuffer(index, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    protected boolean maybeDropBuffersToKeyframe(long positionUs, boolean treatDroppedBuffersAsSkipped) throws ExoPlaybackException {
        int droppedSourceBufferCount = skipSource(positionUs);
        if (droppedSourceBufferCount == 0) {
            return false;
        }
        this.lastResetToKeyFramePositionUs = positionUs;
        if (treatDroppedBuffersAsSkipped) {
            this.decoderCounters.skippedInputBufferCount += droppedSourceBufferCount;
            this.decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
            this.decoderCounters.skippedInputBufferCount += this.droppedDecoderInputBufferTimestamps.size();
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(this.droppedDecoderInputBufferTimestamps.size() + droppedSourceBufferCount, this.buffersInCodecCount);
        }
        flushOrReinitializeCodec();
        if (this.videoSink != null) {
            this.videoSink.flush(false);
        }
        return true;
    }

    protected void updateDroppedBufferCounters(int droppedInputBufferCount, int droppedDecoderBufferCount) {
        this.decoderCounters.droppedInputBufferCount += droppedInputBufferCount;
        int totalDroppedBufferCount = droppedInputBufferCount + droppedDecoderBufferCount;
        this.decoderCounters.droppedBufferCount += totalDroppedBufferCount;
        this.droppedFrames += totalDroppedBufferCount;
        this.consecutiveDroppedFrameCount += totalDroppedBufferCount;
        this.decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(this.consecutiveDroppedFrameCount, this.decoderCounters.maxConsecutiveDroppedBufferCount);
        if (this.maxDroppedFramesToNotify > 0 && this.droppedFrames >= this.maxDroppedFramesToNotify) {
            maybeNotifyDroppedFrames();
        }
    }

    private void updateDroppedBufferCountersWithInputBuffers(long bufferPresentationTimeUs) {
        int droppedInputBufferCount = 0;
        while (true) {
            Long minDroppedDecoderBufferTimeUs = this.droppedDecoderInputBufferTimestamps.peek();
            if (minDroppedDecoderBufferTimeUs == null || minDroppedDecoderBufferTimeUs.longValue() >= bufferPresentationTimeUs) {
                break;
            }
            droppedInputBufferCount++;
            this.droppedDecoderInputBufferTimestamps.poll();
        }
        updateDroppedBufferCounters(droppedInputBufferCount, 0);
    }

    protected void updateVideoFrameProcessingOffsetCounters(long processingOffsetUs) {
        this.decoderCounters.addVideoFrameProcessingOffset(processingOffsetUs);
        this.totalVideoFrameProcessingOffsetUs += processingOffsetUs;
        this.videoFrameProcessingOffsetCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderOutputBuffer(MediaCodecAdapter codec, int index, long presentationTimeUs, long releaseTimeNs) {
        renderOutputBufferV21(codec, index, presentationTimeUs, releaseTimeNs);
    }

    @Deprecated
    protected void renderOutputBuffer(MediaCodecAdapter codec, int index, long presentationTimeUs) {
        TraceUtil.beginSection("releaseOutputBuffer");
        codec.releaseOutputBuffer(index, true);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoSink == null) {
            maybeNotifyVideoSizeChanged(this.decodedVideoSize);
            maybeNotifyRenderedFirstFrame();
        }
    }

    protected void renderOutputBufferV21(MediaCodecAdapter codec, int index, long presentationTimeUs, long releaseTimeNs) {
        TraceUtil.beginSection("releaseOutputBuffer");
        codec.releaseOutputBuffer(index, releaseTimeNs);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoSink == null) {
            maybeNotifyVideoSizeChanged(this.decodedVideoSize);
            maybeNotifyRenderedFirstFrame();
        }
    }

    private boolean hasSurfaceForCodec(MediaCodecInfo codecInfo) {
        return this.videoSink != null || (this.displaySurface != null && this.displaySurface.isValid()) || shouldUseDetachedSurface(codecInfo) || shouldUsePlaceholderSurface(codecInfo);
    }

    private Surface getSurfaceForCodec(MediaCodecInfo codecInfo) {
        if (this.videoSink != null) {
            return this.videoSink.getInputSurface();
        }
        if (this.displaySurface != null) {
            return this.displaySurface;
        }
        if (shouldUseDetachedSurface(codecInfo)) {
            return null;
        }
        Preconditions.checkState(shouldUsePlaceholderSurface(codecInfo));
        if (this.placeholderSurface != null && this.placeholderSurface.secure != codecInfo.secure) {
            releasePlaceholderSurface();
        }
        if (this.placeholderSurface == null) {
            this.placeholderSurface = PlaceholderSurface.newInstance(this.context, codecInfo.secure);
        }
        return this.placeholderSurface;
    }

    protected boolean shouldUseDetachedSurface(MediaCodecInfo codecInfo) {
        return Build.VERSION.SDK_INT >= 35 && codecInfo.detachedSurfaceSupported;
    }

    protected boolean shouldUsePlaceholderSurface(MediaCodecInfo codecInfo) {
        return (this.tunneling || codecNeedsSetOutputSurfaceWorkaround(codecInfo.name) || (codecInfo.secure && !PlaceholderSurface.isSecureSupported(this.context))) ? false : true;
    }

    private void releasePlaceholderSurface() {
        if (this.placeholderSurface != null) {
            this.placeholderSurface.release();
            this.placeholderSurface = null;
        }
    }

    private void maybeSetupTunnelingForFirstFrame() {
        MediaCodecAdapter codec;
        if (!this.tunneling || (codec = getCodec()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListener(codec);
        if (Build.VERSION.SDK_INT >= 33) {
            Bundle codecParameters = new Bundle();
            codecParameters.putInt("tunnel-peek", 1);
            codec.setParameters(codecParameters);
        }
    }

    private void updateCodecImportance() {
        MediaCodecAdapter codec = getCodec();
        if (codec != null && Build.VERSION.SDK_INT >= 35) {
            Bundle codecParameters = new Bundle();
            codecParameters.putInt("importance", Math.max(0, -this.rendererPriority));
            codec.setParameters(codecParameters);
        }
    }

    private void maybeNotifyRenderedFirstFrame() {
        if (this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame() && this.displaySurface != null) {
            notifyRenderedFirstFrame();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresNonNull({"displaySurface"})
    public void notifyRenderedFirstFrame() {
        this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.displaySurface != null && this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        }
    }

    private void maybeNotifyVideoSizeChanged(VideoSize newOutputSize) {
        if (!newOutputSize.equals(VideoSize.UNKNOWN) && !newOutputSize.equals(this.reportedVideoSize)) {
            this.reportedVideoSize = newOutputSize;
            this.eventDispatcher.videoSizeChanged(this.reportedVideoSize);
        }
    }

    private void maybeRenotifyVideoSizeChanged() {
        if (this.reportedVideoSize != null) {
            this.eventDispatcher.videoSizeChanged(this.reportedVideoSize);
        }
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long now = getClock().elapsedRealtime();
            long elapsedMs = now - this.droppedFrameAccumulationStartTimeMs;
            this.eventDispatcher.droppedFrames(this.droppedFrames, elapsedMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = now;
        }
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        if (this.videoFrameProcessingOffsetCount != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, this.videoFrameProcessingOffsetCount);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter codec, byte[] hdr10PlusInfo) {
        Bundle codecParameters = new Bundle();
        codecParameters.putByteArray("hdr10-plus-info", hdr10PlusInfo);
        codec.setParameters(codecParameters);
    }

    private void setOutputSurface(MediaCodecAdapter codec, Surface surface) {
        if (surface != null) {
            setOutputSurfaceV23(codec, surface);
        } else {
            if (Build.VERSION.SDK_INT >= 35) {
                detachOutputSurfaceV35(codec);
                return;
            }
            throw new IllegalStateException();
        }
    }

    protected void setOutputSurfaceV23(MediaCodecAdapter codec, Surface surface) {
        codec.setOutputSurface(surface);
    }

    protected void detachOutputSurfaceV35(MediaCodecAdapter codec) {
        codec.detachOutputSurface();
    }

    protected MediaFormat getMediaFormat(Format format, String codecMimeType, CodecMaxValues codecMaxValues, float codecOperatingRate, boolean deviceNeedsNoPostProcessWorkaround, int tunnelingAudioSessionId) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", codecMimeType);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, Scopes.PROFILE, ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        mediaFormat.setInteger("priority", 0);
        if (codecOperatingRate != -1.0f) {
            mediaFormat.setFloat("operating-rate", codecOperatingRate);
        }
        if (deviceNeedsNoPostProcessWorkaround) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (tunnelingAudioSessionId != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", tunnelingAudioSessionId);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.rendererPriority));
        }
        applyCodecParametersToMediaFormat(mediaFormat);
        return mediaFormat;
    }

    protected CodecMaxValues getCodecMaxValues(MediaCodecInfo codecInfo, Format format, Format[] streamFormats) {
        int codecMaxInputSize;
        int maxWidth = format.width;
        int maxHeight = format.height;
        int maxInputSize = getMaxInputSize(codecInfo, format);
        if (streamFormats.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(codecInfo, format)) != -1) {
                int scaledMaxInputSize = (int) (maxInputSize * INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR);
                maxInputSize = Math.min(scaledMaxInputSize, codecMaxInputSize);
            }
            return new CodecMaxValues(maxWidth, maxHeight, maxInputSize);
        }
        boolean haveUnknownDimensions = false;
        int length = streamFormats.length;
        for (int i = 0; i < length; i++) {
            Format streamFormat = streamFormats[i];
            if (format.colorInfo != null && streamFormat.colorInfo == null) {
                streamFormat = streamFormat.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (codecInfo.canReuseCodec(format, streamFormat).result != 0) {
                haveUnknownDimensions |= streamFormat.width == -1 || streamFormat.height == -1;
                maxWidth = Math.max(maxWidth, streamFormat.width);
                maxHeight = Math.max(maxHeight, streamFormat.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(codecInfo, streamFormat));
            }
        }
        if (haveUnknownDimensions) {
            Log.w(TAG, "Resolutions unknown. Codec max resolution: " + maxWidth + "x" + maxHeight);
            Point codecMaxSize = getCodecMaxSize(codecInfo, format);
            if (codecMaxSize != null) {
                maxWidth = Math.max(maxWidth, codecMaxSize.x);
                maxHeight = Math.max(maxHeight, codecMaxSize.y);
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(codecInfo, format.buildUpon().setWidth(maxWidth).setHeight(maxHeight).build()));
                Log.w(TAG, "Codec max resolution adjusted to: " + maxWidth + "x" + maxHeight);
            }
        }
        return new CodecMaxValues(maxWidth, maxHeight, maxInputSize);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException createDecoderException(Throwable cause, MediaCodecInfo codecInfo) {
        return new MediaCodecVideoDecoderException(cause, codecInfo, this.displaySurface);
    }

    private static Point getCodecMaxSize(MediaCodecInfo codecInfo, Format format) {
        boolean isVerticalVideo;
        Format format2 = format;
        int i = 0;
        boolean isVerticalVideo2 = format2.height > format2.width;
        int formatLongEdgePx = isVerticalVideo2 ? format2.height : format2.width;
        int formatShortEdgePx = isVerticalVideo2 ? format2.width : format2.height;
        float aspectRatio = formatShortEdgePx / formatLongEdgePx;
        int[] iArr = STANDARD_LONG_EDGE_VIDEO_PX;
        int length = iArr.length;
        while (i < length) {
            int longEdgePx = iArr[i];
            int shortEdgePx = (int) (longEdgePx * aspectRatio);
            if (longEdgePx > formatLongEdgePx && shortEdgePx > formatShortEdgePx) {
                Point alignedSize = codecInfo.alignVideoSizeV21(isVerticalVideo2 ? shortEdgePx : longEdgePx, isVerticalVideo2 ? longEdgePx : shortEdgePx);
                float frameRate = format2.frameRate;
                if (alignedSize == null) {
                    isVerticalVideo = isVerticalVideo2;
                } else {
                    isVerticalVideo = isVerticalVideo2;
                    if (codecInfo.isVideoSizeAndRateSupportedV21(alignedSize.x, alignedSize.y, frameRate)) {
                        return alignedSize;
                    }
                }
                i++;
                format2 = format;
                isVerticalVideo2 = isVerticalVideo;
            }
            return null;
        }
        return null;
    }

    protected static int getMaxInputSize(MediaCodecInfo codecInfo, Format format) {
        if (format.maxInputSize != -1) {
            int totalInitializationDataSize = 0;
            int initializationDataCount = format.initializationData.size();
            for (int i = 0; i < initializationDataCount; i++) {
                totalInitializationDataSize += format.initializationData.get(i).length;
            }
            int i2 = format.maxInputSize;
            return i2 + totalInitializationDataSize;
        }
        int totalInitializationDataSize2 = getCodecMaxInputSize(codecInfo, format);
        return totalInitializationDataSize2;
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Build.MANUFACTURER);
    }

    protected boolean codecNeedsSetOutputSurfaceWorkaround(String name) {
        if (name.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    protected Surface getSurface() {
        return this.displaySurface;
    }

    protected static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int width, int height, int inputSize) {
            this.width = width;
            this.height = height;
            this.inputSize = inputSize;
        }
    }

    private static void debugLogForBufferRelease(int frameReleaseAction, long bufferPresentationTimeUs, long positionUs, boolean isDecodeOnlyBuffer, boolean isLastBuffer, VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo, long lastFrameReleaseTimeNs) {
        if (frameReleaseAction == 5) {
            return;
        }
        String debugString = "video, release output, pts=" + bufferPresentationTimeUs + ", pos=" + positionUs + ", early=" + videoFrameReleaseInfo.getEarlyUs();
        if (isDecodeOnlyBuffer) {
            debugString = debugString + ", decode-only";
        }
        if (isLastBuffer) {
            debugString = debugString + ", last-buffer";
        }
        switch (frameReleaseAction) {
            case 0:
                debugString = debugString + ", release immediately";
                break;
            case 1:
                long releaseTimeNs = videoFrameReleaseInfo.getReleaseTimeNs();
                debugString = debugString + ", release=" + (releaseTimeNs / 1000);
                if (lastFrameReleaseTimeNs != 0) {
                    debugString = debugString + " (+" + ((releaseTimeNs - lastFrameReleaseTimeNs) / 1000) + ")";
                }
                break;
            case 2:
                debugString = debugString + ", drop";
                break;
            case 3:
                debugString = debugString + ", skip";
                break;
            case 4:
                debugString = debugString + ", ignore";
                break;
        }
        Log.d("MCRdebug", debugString);
    }

    private static int getMaxSampleSize(int pixelCount, int minCompressionRatio) {
        return (pixelCount * 3) / (minCompressionRatio * 2);
    }

    private static boolean cannotChangeSurfaceFrameRateMidPlayback() {
        return Build.VERSION.SDK_INT < 30 || (Build.VERSION.SDK_INT == 30 && Build.MODEL.startsWith("MiTV"));
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        /*
            Method dump skipped, instruction units count: 2932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.evaluateDeviceNeedsSetOutputSurfaceWorkaround():boolean");
    }

    private final class OnFrameRenderedListener implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler = Util.createHandlerForCurrentLooper(this);

        public OnFrameRenderedListener(MediaCodecAdapter codec) {
            codec.setOnFrameRenderedListener(this, this.handler);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter codec, long presentationTimeUs, long nanoTime) {
            if (Build.VERSION.SDK_INT < 30) {
                Message message = Message.obtain(this.handler, 0, (int) (presentationTimeUs >> 32), (int) presentationTimeUs);
                this.handler.sendMessageAtFrontOfQueue(message);
            } else {
                handleFrameRendered(presentationTimeUs);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    handleFrameRendered(Util.toLong(message.arg1, message.arg2));
                    return true;
                default:
                    return false;
            }
        }

        private void handleFrameRendered(long presentationTimeUs) {
            if (this != MediaCodecVideoRenderer.this.tunnelingOnFrameRenderedListener || MediaCodecVideoRenderer.this.getCodec() == null) {
                return;
            }
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (presentationTimeUs == Long.MAX_VALUE) {
                mediaCodecVideoRenderer.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                mediaCodecVideoRenderer.onProcessedTunneledBuffer(presentationTimeUs);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e);
            }
        }
    }
}
