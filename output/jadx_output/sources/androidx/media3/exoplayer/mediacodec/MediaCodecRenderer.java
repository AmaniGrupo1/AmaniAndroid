package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = {0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    private static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    private static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    private static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    protected static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    protected static final boolean DEBUG_LOG_ENABLED = false;
    protected static final String DEBUG_LOG_TAG = "MCRdebug";
    private static final int DRAIN_ACTION_FLUSH = 1;
    private static final int DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION = 2;
    private static final int DRAIN_ACTION_NONE = 0;
    private static final int DRAIN_ACTION_REINITIALIZE = 3;
    private static final int DRAIN_STATE_NONE = 0;
    private static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final String TAG = "MediaCodecRenderer";
    private CodecParameters activeCodecParameters;
    private final float assumedMinimumCodecOperatingRate;
    private ArrayDeque<MediaCodecInfo> availableCodecInfos;
    private final DecoderInputBuffer buffer;
    private final BatchBuffer bypassBatchBuffer;
    private boolean bypassDrainAndReinitialize;
    private boolean bypassEnabled;
    private final DecoderInputBuffer bypassSampleBuffer;
    private boolean bypassSampleBufferPending;
    private MediaCodecAdapter codec;
    private int codecAdaptationWorkaroundMode;
    private final MediaCodecAdapter.Factory codecAdapterFactory;
    private int codecDrainAction;
    private int codecDrainState;
    private DrmSession codecDrmSession;
    private boolean codecHasOutputMediaFormat;
    private long codecHotswapDeadlineMs;
    private MediaCodecInfo codecInfo;
    private Format codecInputFormat;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagation;
    private boolean codecNeedsSosFlushWorkaround;
    private float codecOperatingRate;
    private MediaFormat codecOutputMediaFormat;
    private boolean codecOutputMediaFormatChanged;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private boolean codecRegisteredOnBufferAvailableListener;
    private final Context context;
    private float currentPlaybackSpeed;
    protected DecoderCounters decoderCounters;
    private final boolean enableDecoderFallback;
    private boolean experimentalEnableProcessedStreamChangedAtStart;
    private boolean hasSkippedFlushAndWaitingForQueueInputBuffer;
    private Format inputFormat;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean isDecodeOnlyOutputBuffer;
    private boolean isLastOutputBuffer;
    private long largestQueuedPresentationTimeUs;
    private CodecParameters lastDispatchedCodecParameters;
    private long lastOutputBufferProcessedRealtimeMs;
    private long lastProcessedOutputBufferTimeUs;
    private final MediaCodecSelector mediaCodecSelector;
    private MediaCrypto mediaCrypto;
    private boolean needToNotifyOutputFormatChangeAfterStreamChange;
    private final DecoderInputBuffer noDataBuffer;
    private final OggOpusAudioPacketizer oggOpusAudioPacketizer;
    private ByteBuffer outputBuffer;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private Format outputFormat;
    private int outputIndex;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private boolean pendingOutputEndOfStream;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private ExoPlaybackException pendingPlaybackException;
    private DecoderInitializationException preferredDecoderInitializationException;
    private final AtomicInteger readDataResultHolder;
    private long renderTimeLimitMs;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    private long skippedFlushOffsetUs;
    private DrmSession sourceDrmSession;
    private ImmutableSet<String> subscribedCodecParameterKeys;
    private float targetPlaybackSpeed;
    private boolean waitingForFirstSampleInFormat;
    private Renderer.WakeupListener wakeupListener;

    protected abstract List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    protected abstract MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f);

    protected abstract void onCodecParametersChanged(CodecParameters codecParameters);

    protected abstract boolean processOutputBuffer(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException;

    protected abstract int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException;

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final MediaCodecInfo codecInfo;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable cause, boolean secureDecoderRequired, int errorCode) {
            this("Decoder init failed: [" + errorCode + "], " + format, cause, format.sampleMimeType, secureDecoderRequired, null, buildCustomDiagnosticInfo(errorCode), null);
        }

        public DecoderInitializationException(Format format, Throwable cause, boolean secureDecoderRequired, MediaCodecInfo mediaCodecInfo) {
            this("Decoder init failed: " + mediaCodecInfo.name + ", " + format, cause, format.sampleMimeType, secureDecoderRequired, mediaCodecInfo, cause instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) cause).getDiagnosticInfo() : null, null);
        }

        private DecoderInitializationException(String message, Throwable cause, String mimeType, boolean secureDecoderRequired, MediaCodecInfo mediaCodecInfo, String diagnosticInfo, DecoderInitializationException fallbackDecoderInitializationException) {
            super(message, cause);
            this.mimeType = mimeType;
            this.secureDecoderRequired = secureDecoderRequired;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = diagnosticInfo;
            this.fallbackDecoderInitializationException = fallbackDecoderInitializationException;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException fallbackException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, fallbackException);
        }

        private static String buildCustomDiagnosticInfo(int errorCode) {
            String sign = errorCode < 0 ? "neg_" : "";
            return "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + sign + Math.abs(errorCode);
        }
    }

    public MediaCodecRenderer(Context context, int trackType, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, float assumedMinimumCodecOperatingRate) {
        super(trackType);
        this.context = context.getApplicationContext();
        this.codecAdapterFactory = codecAdapterFactory;
        this.mediaCodecSelector = (MediaCodecSelector) Preconditions.checkNotNull(mediaCodecSelector);
        this.enableDecoderFallback = enableDecoderFallback;
        this.assumedMinimumCodecOperatingRate = assumedMinimumCodecOperatingRate;
        this.readDataResultHolder = new AtomicInteger();
        this.noDataBuffer = DecoderInputBuffer.newNoDataInstance();
        this.buffer = new DecoderInputBuffer(0);
        this.bypassSampleBuffer = new DecoderInputBuffer(2);
        this.bypassBatchBuffer = new BatchBuffer();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = C.TIME_UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        this.bypassBatchBuffer.ensureSpaceForWrite(0);
        this.bypassBatchBuffer.data.order(ByteOrder.nativeOrder());
        this.oggOpusAudioPacketizer = new OggOpusAudioPacketizer();
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.decoderCounters = new DecoderCounters();
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
        this.subscribedCodecParameterKeys = ImmutableSet.of();
        this.activeCodecParameters = CodecParameters.EMPTY;
        this.lastDispatchedCodecParameters = CodecParameters.EMPTY;
    }

    public void setRenderTimeLimitMs(long renderTimeLimitMs) {
        this.renderTimeLimitMs = renderTimeLimitMs;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int supportsFormat(Format format) throws ExoPlaybackException {
        try {
            return supportsFormat(this.mediaCodecSelector, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw createRendererException(e, format, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long getDurationToProgressUs(long positionUs, long elapsedRealtimeUs) {
        return getDurationToProgressUs(positionUs, elapsedRealtimeUs, this.codecRegisteredOnBufferAvailableListener);
    }

    public void experimentalEnableProcessedStreamChangedAtStart() {
        this.experimentalEnableProcessedStreamChangedAtStart = true;
    }

    protected long getDurationToProgressUs(long positionUs, long elapsedRealtimeUs, boolean isOnBufferAvailableListenerRegistered) {
        return super.getDurationToProgressUs(positionUs, elapsedRealtimeUs);
    }

    protected final void maybeInitCodecOrBypass() throws ExoPlaybackException {
        if (this.codec != null || this.bypassEnabled || this.inputFormat == null) {
            return;
        }
        Format inputFormat = this.inputFormat;
        if (isBypassPossible(inputFormat)) {
            initBypass(inputFormat);
            return;
        }
        setCodecDrmSession(this.sourceDrmSession);
        if (this.codecDrmSession == null || initMediaCryptoIfDrmSessionReady()) {
            try {
                boolean mediaCryptoRequiresSecureDecoder = this.codecDrmSession != null && (this.codecDrmSession.getState() == 3 || this.codecDrmSession.getState() == 4) && this.codecDrmSession.requiresSecureDecoder((String) Preconditions.checkNotNull(inputFormat.sampleMimeType));
                maybeInitCodecWithFallback(this.mediaCrypto, mediaCryptoRequiresSecureDecoder);
            } catch (DecoderInitializationException e) {
                throw createRendererException(e, inputFormat, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
            }
        }
        if (this.mediaCrypto != null && this.codec == null) {
            this.mediaCrypto.release();
            this.mediaCrypto = null;
        }
    }

    protected final boolean isBypassPossible(Format format) {
        return this.sourceDrmSession == null && shouldUseBypass(format);
    }

    protected boolean shouldUseBypass(Format format) {
        return false;
    }

    protected boolean shouldInitCodec(MediaCodecInfo codecInfo) {
        return true;
    }

    protected boolean shouldReinitCodec() {
        return false;
    }

    protected final boolean isBypassEnabled() {
        return this.bypassEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPendingPlaybackException(ExoPlaybackException exception) {
        this.pendingPlaybackException = exception;
    }

    protected final void updateOutputFormatForTime(long presentationTimeUs) throws ExoPlaybackException {
        boolean outputFormatChanged = false;
        Format format = this.outputStreamInfo.formatQueue.pollFloor(presentationTimeUs);
        if (format == null && this.needToNotifyOutputFormatChangeAfterStreamChange && this.codecOutputMediaFormat != null) {
            format = this.outputStreamInfo.formatQueue.pollFirst();
        }
        if (format != null) {
            this.outputFormat = format;
            outputFormatChanged = true;
        }
        if (outputFormatChanged || (this.codecOutputMediaFormatChanged && this.outputFormat != null)) {
            onOutputFormatChanged((Format) Preconditions.checkNotNull(this.outputFormat), this.codecOutputMediaFormat);
            this.codecOutputMediaFormatChanged = false;
            this.needToNotifyOutputFormatChangeAfterStreamChange = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodecAdapter getCodec() {
        return this.codec;
    }

    protected final Format getCodecInputFormat() {
        return this.codecInputFormat;
    }

    protected final MediaFormat getCodecOutputMediaFormat() {
        return this.codecOutputMediaFormat;
    }

    protected final MediaCodecInfo getCodecInfo() {
        return this.codecInfo;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onEnabled(boolean joining, boolean mayRenderStartOfStream) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStreamChanged(Format[] formats, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        if (this.outputStreamInfo.streamOffsetUs == C.TIME_UNSET) {
            setOutputStreamInfo(new OutputStreamInfo(C.TIME_UNSET, startPositionUs, offsetUs));
            if (this.experimentalEnableProcessedStreamChangedAtStart) {
                onProcessedStreamChange();
                return;
            }
            return;
        }
        if (this.pendingOutputStreamChanges.isEmpty() && (this.largestQueuedPresentationTimeUs == C.TIME_UNSET || (this.lastProcessedOutputBufferTimeUs != C.TIME_UNSET && this.lastProcessedOutputBufferTimeUs >= this.largestQueuedPresentationTimeUs))) {
            setOutputStreamInfo(new OutputStreamInfo(C.TIME_UNSET, startPositionUs, offsetUs));
            if (this.outputStreamInfo.streamOffsetUs != C.TIME_UNSET) {
                onProcessedStreamChange();
                return;
            }
            return;
        }
        this.pendingOutputStreamChanges.add(new OutputStreamInfo(this.largestQueuedPresentationTimeUs, startPositionUs, offsetUs));
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        if (!this.pendingOutputStreamChanges.isEmpty()) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.getLast();
        }
        this.pendingOutputStreamChanges.clear();
        if (!sampleStreamIsResetToKeyFrame) {
            return;
        }
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.pendingOutputEndOfStream = false;
        if (this.bypassEnabled) {
            resetBypassState();
        } else {
            flushOrReinitializeCodec();
        }
        if (this.outputStreamInfo.formatQueue.size() > 0) {
            this.waitingForFirstSampleInFormat = true;
        }
        this.outputStreamInfo.formatQueue.clear();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float currentPlaybackSpeed, float targetPlaybackSpeed) throws ExoPlaybackException {
        this.currentPlaybackSpeed = currentPlaybackSpeed;
        this.targetPlaybackSpeed = targetPlaybackSpeed;
        updateCodecOperatingRate(this.codecInputFormat);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        this.inputFormat = null;
        setOutputStreamInfo(OutputStreamInfo.UNSET);
        this.pendingOutputStreamChanges.clear();
        if (this.bypassEnabled) {
            disableBypass();
        } else {
            flushOrReleaseCodec();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onReset() {
        try {
            disableBypass();
            releaseCodec();
        } finally {
            setSourceDrmSession(null);
        }
    }

    private void disableBypass() {
        this.bypassEnabled = false;
        resetBypassState();
    }

    private void resetBypassState() {
        resetCommonStateForFlush();
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.clear();
        this.bypassSampleBuffer.clear();
        this.bypassSampleBufferPending = false;
        this.oggOpusAudioPacketizer.reset();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void releaseCodec() {
        try {
            if (this.codec != null) {
                this.codec.release();
                this.decoderCounters.decoderReleaseCount++;
                onCodecReleased(((MediaCodecInfo) Preconditions.checkNotNull(this.codecInfo)).name);
            }
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStarted() {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStopped() {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        switch (messageType) {
            case 11:
                this.wakeupListener = (Renderer.WakeupListener) Preconditions.checkNotNull((Renderer.WakeupListener) message);
                break;
            case 21:
                if (Build.VERSION.SDK_INT >= 29) {
                    this.activeCodecParameters = (CodecParameters) Preconditions.checkNotNull(message);
                    MediaCodecAdapter codec = getCodec();
                    if (codec != null) {
                        codec.setParameters(this.activeCodecParameters.toBundle());
                    }
                }
                break;
            case 22:
                if (Build.VERSION.SDK_INT >= 29) {
                    ImmutableSet<String> keys = (ImmutableSet) Preconditions.checkNotNull(message);
                    updateCodecSubscriptions(keys);
                }
                break;
            default:
                super.handleMessage(messageType, message);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        int errorCode;
        boolean isRecoverable = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            processEndOfStream();
        }
        if (this.pendingPlaybackException != null) {
            ExoPlaybackException playbackException = this.pendingPlaybackException;
            this.pendingPlaybackException = null;
            throw playbackException;
        }
        try {
            if (this.outputStreamEnded) {
                renderToEndOfStream();
                return;
            }
            if (this.inputFormat == null && !readSourceOmittingSampleData(2)) {
                return;
            }
            maybeInitCodecOrBypass();
            if (this.bypassEnabled) {
                TraceUtil.beginSection("bypassRender");
                while (bypassRender(positionUs, elapsedRealtimeUs)) {
                }
                TraceUtil.endSection();
            } else if (this.codec != null) {
                long renderStartTimeMs = getClock().elapsedRealtime();
                TraceUtil.beginSection("drainAndFeed");
                while (drainOutputBuffer(positionUs, elapsedRealtimeUs) && shouldContinueRendering(renderStartTimeMs)) {
                }
                while (feedInputBuffer() && shouldContinueRendering(renderStartTimeMs)) {
                }
                TraceUtil.endSection();
            } else {
                this.decoderCounters.skippedInputBufferCount += skipSource(positionUs);
                readSourceOmittingSampleData(1);
            }
            this.decoderCounters.ensureUpdated();
        } catch (MediaCodec.CryptoException e) {
            throw createRendererException(e, this.inputFormat, Util.getErrorCodeForMediaDrmErrorCode(e.getErrorCode()));
        } catch (IllegalStateException e2) {
            if (isMediaCodecException(e2)) {
                onCodecError(e2);
                if ((e2 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e2).isRecoverable()) {
                    isRecoverable = true;
                }
                if (isRecoverable) {
                    releaseCodec();
                }
                MediaCodecDecoderException exception = createDecoderException(e2, getCodecInfo());
                if (exception.errorCode == 1101) {
                    errorCode = PlaybackException.ERROR_CODE_DECODING_RESOURCES_RECLAIMED;
                } else {
                    errorCode = PlaybackException.ERROR_CODE_DECODING_FAILED;
                }
                throw createRendererException(exception, this.inputFormat, isRecoverable, errorCode);
            }
            throw e2;
        }
    }

    protected final boolean flushOrReinitializeCodec() throws ExoPlaybackException {
        boolean released = flushOrReleaseCodec();
        if (released) {
            maybeInitCodecOrBypass();
        }
        return released;
    }

    private boolean flushOrReleaseCodec() {
        if (this.codec == null) {
            return false;
        }
        if (shouldReleaseCodecInsteadOfFlushing()) {
            releaseCodec();
            return true;
        }
        if (shouldFlushCodec()) {
            flushCodec();
        } else {
            this.hasSkippedFlushAndWaitingForQueueInputBuffer = true;
        }
        return false;
    }

    protected boolean shouldReleaseCodecInsteadOfFlushing() {
        if (this.codecDrainAction == 3 || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            return true;
        }
        if (this.codecDrainAction == 2) {
            try {
                updateDrmSession();
                return false;
            } catch (ExoPlaybackException e) {
                Log.w(TAG, "Failed to update the DRM session, releasing the codec instead.", e);
                return true;
            }
        }
        return false;
    }

    protected boolean shouldFlushCodec() {
        return true;
    }

    protected long getSkippedFlushOffsetUs() {
        return this.skippedFlushOffsetUs;
    }

    private void flushCodec() {
        try {
            ((MediaCodecAdapter) Preconditions.checkNotNull(this.codec)).flush();
        } finally {
            resetCodecStateForFlush();
        }
    }

    private void resetCommonStateForFlush() {
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        getLastOutputStreamInfo().lastBufferTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
    }

    protected void resetCodecStateForFlush() {
        resetInputBuffer();
        resetOutputBuffer();
        resetCommonStateForFlush();
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.codecReceivedEos = false;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecReceivedBuffers = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.isDecodeOnlyOutputBuffer = false;
        this.isLastOutputBuffer = false;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
    }

    protected void resetCodecStateForRelease() {
        resetCodecStateForFlush();
        this.pendingPlaybackException = null;
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecInputFormat = null;
        this.codecOutputMediaFormat = null;
        this.codecOutputMediaFormatChanged = false;
        this.codecHasOutputMediaFormat = false;
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecNeedsSosFlushWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsEosPropagation = false;
        this.codecRegisteredOnBufferAvailableListener = false;
        this.codecReconfigured = false;
        this.codecReconfigurationState = 0;
    }

    protected MediaCodecDecoderException createDecoderException(Throwable cause, MediaCodecInfo codecInfo) {
        return new MediaCodecDecoderException(cause, codecInfo);
    }

    private void checkAndNotifyCodecParameterChanges(MediaFormat mediaFormat) {
        if (this.subscribedCodecParameterKeys.isEmpty()) {
            return;
        }
        CodecParameters currentValues = CodecParameters.createFrom(mediaFormat, this.subscribedCodecParameterKeys).build();
        if (currentValues.equals(this.lastDispatchedCodecParameters)) {
            return;
        }
        this.lastDispatchedCodecParameters = currentValues;
        onCodecParametersChanged(currentValues);
    }

    private void updateCodecSubscriptions(ImmutableSet<String> newKeys) {
        if (this.subscribedCodecParameterKeys.equals(newKeys)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            Set<String> addedKeys = new HashSet<>(newKeys);
            Set<String> removedKeys = new HashSet<>();
            UnmodifiableIterator<String> it = this.subscribedCodecParameterKeys.iterator();
            while (it.hasNext()) {
                String oldKey = it.next();
                if (!addedKeys.remove(oldKey)) {
                    removedKeys.add(oldKey);
                }
            }
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                if (!removedKeys.isEmpty()) {
                    codec.unsubscribeFromVendorParameters(new ArrayList(removedKeys));
                }
                if (!addedKeys.isEmpty()) {
                    codec.subscribeToVendorParameters(new ArrayList(addedKeys));
                }
            }
        }
        this.subscribedCodecParameterKeys = newKeys;
    }

    private boolean readSourceOmittingSampleData(int readFlags) throws ExoPlaybackException {
        FormatHolder formatHolder = getFormatHolder();
        this.noDataBuffer.clear();
        int result = readSource(formatHolder, this.noDataBuffer, readFlags | 4);
        if (result == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (result == -4 && this.noDataBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            processEndOfStream();
            return false;
        }
        return false;
    }

    @RequiresNonNull({"this.codecDrmSession"})
    private boolean initMediaCryptoIfDrmSessionReady() throws ExoPlaybackException {
        Preconditions.checkState(this.mediaCrypto == null);
        DrmSession codecDrmSession = this.codecDrmSession;
        CryptoConfig cryptoConfig = codecDrmSession.getCryptoConfig();
        if (FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC && (cryptoConfig instanceof FrameworkCryptoConfig)) {
            int drmSessionState = codecDrmSession.getState();
            if (drmSessionState == 1) {
                DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) Preconditions.checkNotNull(codecDrmSession.getError());
                throw createRendererException(drmSessionException, this.inputFormat, drmSessionException.errorCode);
            }
            if (drmSessionState != 4) {
                return false;
            }
        }
        if (cryptoConfig == null) {
            DrmSession.DrmSessionException drmError = codecDrmSession.getError();
            return drmError != null;
        }
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfig;
            try {
                this.mediaCrypto = new MediaCrypto(frameworkCryptoConfig.uuid, frameworkCryptoConfig.sessionId);
            } catch (MediaCryptoException e) {
                throw createRendererException(e, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        return true;
    }

    private void maybeInitCodecWithFallback(MediaCrypto crypto, boolean mediaCryptoRequiresSecureDecoder) throws DecoderInitializationException, ExoPlaybackException {
        Format inputFormat = (Format) Preconditions.checkNotNull(this.inputFormat);
        if (this.availableCodecInfos == null) {
            try {
                List<MediaCodecInfo> allAvailableCodecInfos = getAvailableCodecInfos(mediaCryptoRequiresSecureDecoder);
                this.availableCodecInfos = new ArrayDeque<>();
                if (this.enableDecoderFallback) {
                    this.availableCodecInfos.addAll(allAvailableCodecInfos);
                } else if (!allAvailableCodecInfos.isEmpty()) {
                    this.availableCodecInfos.add(allAvailableCodecInfos.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (MediaCodecUtil.DecoderQueryException e) {
                throw new DecoderInitializationException(inputFormat, e, mediaCryptoRequiresSecureDecoder, -49998);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new DecoderInitializationException(inputFormat, (Throwable) null, mediaCryptoRequiresSecureDecoder, -49999);
        }
        ArrayDeque<MediaCodecInfo> availableCodecInfos = (ArrayDeque) Preconditions.checkNotNull(this.availableCodecInfos);
        while (this.codec == null) {
            MediaCodecInfo codecInfo = (MediaCodecInfo) Preconditions.checkNotNull(availableCodecInfos.peekFirst());
            if (!maybeInitializeProcessingPipeline(inputFormat) || !shouldInitCodec(codecInfo)) {
                return;
            }
            try {
                initCodec(codecInfo, crypto);
            } catch (Exception e2) {
                Log.w(TAG, "Failed to initialize decoder: " + codecInfo, e2);
                availableCodecInfos.removeFirst();
                DecoderInitializationException exception = new DecoderInitializationException(inputFormat, e2, mediaCryptoRequiresSecureDecoder, codecInfo);
                onCodecError(exception);
                if (this.preferredDecoderInitializationException != null) {
                    this.preferredDecoderInitializationException = this.preferredDecoderInitializationException.copyWithFallbackException(exception);
                } else {
                    this.preferredDecoderInitializationException = exception;
                }
                if (availableCodecInfos.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    private List<MediaCodecInfo> getAvailableCodecInfos(boolean mediaCryptoRequiresSecureDecoder) throws MediaCodecUtil.DecoderQueryException {
        Format inputFormat = (Format) Preconditions.checkNotNull(this.inputFormat);
        List<MediaCodecInfo> codecInfos = getDecoderInfos(this.mediaCodecSelector, inputFormat, mediaCryptoRequiresSecureDecoder);
        if (codecInfos.isEmpty() && mediaCryptoRequiresSecureDecoder) {
            codecInfos = getDecoderInfos(this.mediaCodecSelector, inputFormat, false);
            if (!codecInfos.isEmpty()) {
                Log.w(TAG, "Drm session requires secure decoder for " + inputFormat.sampleMimeType + ", but no secure decoder available. Trying to proceed with " + codecInfos + ".");
            }
        }
        return codecInfos;
    }

    private void initBypass(Format format) {
        disableBypass();
        String mimeType = format.sampleMimeType;
        if (!MimeTypes.AUDIO_AAC.equals(mimeType) && !MimeTypes.AUDIO_MPEG.equals(mimeType) && !MimeTypes.AUDIO_OPUS.equals(mimeType)) {
            this.bypassBatchBuffer.setMaxSampleCount(1);
        } else {
            this.bypassBatchBuffer.setMaxSampleCount(32);
        }
        this.bypassEnabled = true;
    }

    private void initCodec(MediaCodecInfo codecInfo, MediaCrypto crypto) throws Exception {
        float codecOperatingRate;
        this.codecInfo = codecInfo;
        Format inputFormat = (Format) Preconditions.checkNotNull(this.inputFormat);
        String codecName = codecInfo.name;
        float codecOperatingRate2 = getCodecOperatingRateV23(this.targetPlaybackSpeed, inputFormat, getStreamFormats());
        if (codecOperatingRate2 > this.assumedMinimumCodecOperatingRate) {
            codecOperatingRate = codecOperatingRate2;
        } else {
            codecOperatingRate = -1.0f;
        }
        long codecInitializingTimestamp = getClock().elapsedRealtime();
        MediaCodecAdapter.Configuration configuration = getMediaCodecConfiguration(codecInfo, inputFormat, crypto, codecOperatingRate);
        if (Build.VERSION.SDK_INT >= 31) {
            Api31.setLogSessionIdToMediaCodecFormat(configuration, getPlayerId());
        }
        try {
            TraceUtil.beginSection("createCodec:" + codecName);
            this.codec = this.codecAdapterFactory.createAdapter(configuration);
            this.codecRegisteredOnBufferAvailableListener = this.codec.registerOnBufferAvailableListener(new MediaCodecRendererCodecAdapterListener());
            TraceUtil.endSection();
            long codecInitializedTimestamp = getClock().elapsedRealtime();
            if (!codecInfo.isFormatSupported(this.context, inputFormat)) {
                Log.w(TAG, Util.formatInvariant("Format exceeds selected codec's capabilities [%s, %s]", Format.toLogString(inputFormat), codecName));
            }
            this.codecOperatingRate = codecOperatingRate;
            this.codecInputFormat = inputFormat;
            this.codecAdaptationWorkaroundMode = codecAdaptationWorkaroundMode(codecName);
            this.codecNeedsSosFlushWorkaround = codecNeedsSosFlushWorkaround(codecName);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(codecName);
            this.codecNeedsEosPropagation = codecNeedsEosPropagationWorkaround(codecInfo);
            if (((MediaCodecAdapter) Preconditions.checkNotNull(this.codec)).needsReconfiguration()) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0;
            }
            if (getState() == 2) {
                this.codecHotswapDeadlineMs = getClock().elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            long elapsed = codecInitializedTimestamp - codecInitializingTimestamp;
            if (Build.VERSION.SDK_INT >= 31 && !this.subscribedCodecParameterKeys.isEmpty()) {
                ((MediaCodecAdapter) Preconditions.checkNotNull(getCodec())).subscribeToVendorParameters(new ArrayList(this.subscribedCodecParameterKeys));
            }
            onCodecInitialized(codecName, configuration, codecInitializedTimestamp, elapsed);
        } catch (Throwable th) {
            TraceUtil.endSection();
            throw th;
        }
    }

    private boolean shouldContinueRendering(long renderStartTimeMs) {
        return this.renderTimeLimitMs == C.TIME_UNSET || getClock().elapsedRealtime() - renderStartTimeMs < this.renderTimeLimitMs;
    }

    private boolean hasOutputBuffer() {
        return this.outputIndex >= 0;
    }

    private void resetInputBuffer() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void resetOutputBuffer() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void setSourceDrmSession(DrmSession session) {
        DrmSession.replaceSession(this.sourceDrmSession, session);
        this.sourceDrmSession = session;
    }

    private void setCodecDrmSession(DrmSession session) {
        DrmSession.replaceSession(this.codecDrmSession, session);
        this.codecDrmSession = session;
    }

    private boolean feedInputBuffer() throws ExoPlaybackException {
        if (this.codec == null || this.codecDrainState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.codecDrainState == 0 && shouldReinitCodec()) {
            drainAndReinitializeCodec();
        }
        MediaCodecAdapter codec = (MediaCodecAdapter) Preconditions.checkNotNull(this.codec);
        if (this.inputIndex < 0) {
            this.inputIndex = codec.dequeueInputBufferIndex();
            if (this.inputIndex < 0) {
                return false;
            }
            this.buffer.data = codec.getInputBuffer(this.inputIndex);
            this.buffer.clear();
        }
        if (this.codecDrainState == 1) {
            if (!this.codecNeedsEosPropagation) {
                this.codecReceivedEos = true;
                codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                resetInputBuffer();
            }
            this.codecDrainState = 2;
            return false;
        }
        if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            ((ByteBuffer) Preconditions.checkNotNull(this.buffer.data)).put(ADAPTATION_WORKAROUND_BUFFER);
            codec.queueInputBuffer(this.inputIndex, 0, ADAPTATION_WORKAROUND_BUFFER.length, 0L, 0);
            resetInputBuffer();
            this.codecReceivedBuffers = true;
            return true;
        }
        if (this.codecReconfigurationState == 1) {
            for (int i = 0; i < ((Format) Preconditions.checkNotNull(this.codecInputFormat)).initializationData.size(); i++) {
                byte[] data = this.codecInputFormat.initializationData.get(i);
                ((ByteBuffer) Preconditions.checkNotNull(this.buffer.data)).put(data);
            }
            this.codecReconfigurationState = 2;
        }
        int adaptiveReconfigurationBytes = ((ByteBuffer) Preconditions.checkNotNull(this.buffer.data)).position();
        final FormatHolder formatHolder = getFormatHolder();
        try {
            codec.useInputBuffer(new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7940xf3821a9d(formatHolder);
                }
            });
            int result = this.readDataResultHolder.get();
            if (result == -3) {
                if (hasReadStreamToEnd()) {
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                }
                return false;
            }
            if (result == -5) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                onInputFormatChanged(formatHolder);
                return true;
            }
            if (this.buffer.isEndOfStream()) {
                getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                this.inputStreamEnded = true;
                if (!this.codecReceivedBuffers) {
                    processEndOfStream();
                    return false;
                }
                if (!this.codecNeedsEosPropagation) {
                    this.codecReceivedEos = true;
                    codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                    resetInputBuffer();
                }
                return false;
            }
            if (!this.codecReceivedBuffers && !this.buffer.isKeyFrame()) {
                this.buffer.clear();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            long presentationTimeUs = this.buffer.timeUs;
            if (shouldDiscardDecoderInputBuffer(this.buffer)) {
                return true;
            }
            boolean bufferEncrypted = this.buffer.isEncrypted();
            if (bufferEncrypted) {
                this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(adaptiveReconfigurationBytes);
            }
            if (this.waitingForFirstSampleInFormat) {
                getLastOutputStreamInfo().formatQueue.add(presentationTimeUs, (Format) Preconditions.checkNotNull(this.inputFormat));
                this.waitingForFirstSampleInFormat = false;
            }
            this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, presentationTimeUs);
            if (hasReadStreamToEnd() || this.buffer.isLastSample()) {
                getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
            }
            this.buffer.flip();
            if (this.buffer.hasSupplementalData()) {
                handleInputBufferSupplementalData(this.buffer);
            }
            if (this.hasSkippedFlushAndWaitingForQueueInputBuffer) {
                if (presentationTimeUs <= this.largestQueuedPresentationTimeUs) {
                    this.skippedFlushOffsetUs += (this.largestQueuedPresentationTimeUs - presentationTimeUs) + 1;
                }
                this.largestQueuedPresentationTimeUs = presentationTimeUs;
                this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
            }
            onQueueInputBuffer(this.buffer);
            int flags = getCodecBufferFlags(this.buffer);
            long presentationTimeUs2 = presentationTimeUs + this.skippedFlushOffsetUs;
            if (bufferEncrypted) {
                ((MediaCodecAdapter) Preconditions.checkNotNull(codec)).queueSecureInputBuffer(this.inputIndex, 0, this.buffer.cryptoInfo, presentationTimeUs2, flags);
            } else {
                ((MediaCodecAdapter) Preconditions.checkNotNull(codec)).queueInputBuffer(this.inputIndex, 0, ((ByteBuffer) Preconditions.checkNotNull(this.buffer.data)).limit(), presentationTimeUs2, flags);
            }
            resetInputBuffer();
            this.codecReceivedBuffers = true;
            this.codecReconfigurationState = 0;
            this.decoderCounters.queuedInputBufferCount++;
            return true;
        } catch (DecoderInputBuffer.InsufficientCapacityException e) {
            onCodecError(e);
            readSourceOmittingSampleData(0);
            flushCodec();
            return true;
        }
    }

    /* JADX INFO: renamed from: lambda$feedInputBuffer$0$androidx-media3-exoplayer-mediacodec-MediaCodecRenderer, reason: not valid java name */
    /* synthetic */ void m7940xf3821a9d(FormatHolder formatHolder) {
        this.readDataResultHolder.set(readSource(formatHolder, this.buffer, 0));
    }

    protected boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
        return true;
    }

    protected void onCodecInitialized(String name, MediaCodecAdapter.Configuration configuration, long initializedTimestampMs, long initializationDurationMs) {
    }

    protected void onCodecReleased(String name) {
    }

    protected void onCodecError(Exception codecError) {
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        Format newFormat;
        int overridingDiscardReasons;
        boolean z = true;
        this.waitingForFirstSampleInFormat = true;
        Format newFormat2 = (Format) Preconditions.checkNotNull(formatHolder.format);
        if (newFormat2.sampleMimeType == null) {
            throw createRendererException(new IllegalArgumentException("Sample MIME type is null."), newFormat2, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
        }
        if ((Objects.equals(newFormat2.sampleMimeType, MimeTypes.VIDEO_AV1) || Objects.equals(newFormat2.sampleMimeType, MimeTypes.VIDEO_VP9) || (Objects.equals(newFormat2.sampleMimeType, MimeTypes.VIDEO_DOLBY_VISION) && Objects.equals(MediaCodecUtil.getAlternativeCodecMimeType(newFormat2), MimeTypes.VIDEO_AV1))) && !newFormat2.initializationData.isEmpty()) {
            newFormat = newFormat2.buildUpon().setInitializationData(null).build();
        } else {
            newFormat = newFormat2;
        }
        setSourceDrmSession(formatHolder.drmSession);
        this.inputFormat = newFormat;
        if (this.bypassEnabled) {
            this.bypassDrainAndReinitialize = true;
            return null;
        }
        if (this.codec == null) {
            this.availableCodecInfos = null;
            maybeInitCodecOrBypass();
            return null;
        }
        MediaCodecAdapter codec = this.codec;
        MediaCodecInfo codecInfo = (MediaCodecInfo) Preconditions.checkNotNull(this.codecInfo);
        Format oldFormat = (Format) Preconditions.checkNotNull(this.codecInputFormat);
        if (drmNeedsCodecReinitialization(codecInfo, newFormat, this.codecDrmSession, this.sourceDrmSession)) {
            drainAndReinitializeCodec();
            return new DecoderReuseEvaluation(codecInfo.name, oldFormat, newFormat, 0, 128);
        }
        boolean drainAndUpdateCodecDrmSession = this.sourceDrmSession != this.codecDrmSession;
        DecoderReuseEvaluation evaluation = canReuseCodec(codecInfo, oldFormat, newFormat);
        switch (evaluation.result) {
            case 0:
                drainAndReinitializeCodec();
                overridingDiscardReasons = 0;
                if (evaluation.result == 0 && (this.codec != codec || this.codecDrainAction == 3)) {
                    return new DecoderReuseEvaluation(codecInfo.name, oldFormat, newFormat, 0, overridingDiscardReasons);
                }
                return evaluation;
            case 1:
                if (!updateCodecOperatingRate(newFormat)) {
                    int overridingDiscardReasons2 = 0 | 16;
                    overridingDiscardReasons = overridingDiscardReasons2;
                } else {
                    this.codecInputFormat = newFormat;
                    if (drainAndUpdateCodecDrmSession) {
                        if (!drainAndUpdateCodecDrmSession()) {
                            int overridingDiscardReasons3 = 0 | 2;
                            overridingDiscardReasons = overridingDiscardReasons3;
                        } else {
                            overridingDiscardReasons = 0;
                        }
                    } else if (!drainAndFlushCodec()) {
                        int overridingDiscardReasons4 = 0 | 2;
                        overridingDiscardReasons = overridingDiscardReasons4;
                    }
                }
                if (evaluation.result == 0) {
                    break;
                }
                return evaluation;
            case 2:
                if (!updateCodecOperatingRate(newFormat)) {
                    int overridingDiscardReasons5 = 0 | 16;
                    overridingDiscardReasons = overridingDiscardReasons5;
                } else {
                    this.codecReconfigured = true;
                    this.codecReconfigurationState = 1;
                    if (this.codecAdaptationWorkaroundMode != 2 && (this.codecAdaptationWorkaroundMode != 1 || newFormat.width != oldFormat.width || newFormat.height != oldFormat.height)) {
                        z = false;
                    }
                    this.codecNeedsAdaptationWorkaroundBuffer = z;
                    this.codecInputFormat = newFormat;
                    if (drainAndUpdateCodecDrmSession && !drainAndUpdateCodecDrmSession()) {
                        int overridingDiscardReasons6 = 0 | 2;
                        overridingDiscardReasons = overridingDiscardReasons6;
                    }
                }
                if (evaluation.result == 0) {
                }
                return evaluation;
            case 3:
                if (!updateCodecOperatingRate(newFormat)) {
                    int overridingDiscardReasons7 = 0 | 16;
                    overridingDiscardReasons = overridingDiscardReasons7;
                } else {
                    this.codecInputFormat = newFormat;
                    if (drainAndUpdateCodecDrmSession && !drainAndUpdateCodecDrmSession()) {
                        int overridingDiscardReasons8 = 0 | 2;
                        overridingDiscardReasons = overridingDiscardReasons8;
                    }
                }
                if (evaluation.result == 0) {
                }
                return evaluation;
            default:
                throw new IllegalStateException();
        }
    }

    protected void onOutputFormatChanged(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void handleInputBufferSupplementalData(DecoderInputBuffer buffer) throws ExoPlaybackException {
    }

    protected void onQueueInputBuffer(DecoderInputBuffer buffer) throws ExoPlaybackException {
    }

    protected int getCodecBufferFlags(DecoderInputBuffer buffer) {
        return 0;
    }

    protected boolean shouldSkipDecoderInputBuffer(DecoderInputBuffer buffer) {
        return false;
    }

    protected boolean shouldDiscardDecoderInputBuffer(DecoderInputBuffer buffer) {
        if (shouldSkipDecoderInputBuffer(buffer)) {
            buffer.clear();
            this.decoderCounters.skippedInputBufferCount++;
            return true;
        }
        return false;
    }

    protected final long getLastProcessedOutputBufferTimeUs() {
        return this.lastProcessedOutputBufferTimeUs;
    }

    protected void onProcessedOutputBuffer(long presentationTimeUs) {
        this.lastProcessedOutputBufferTimeUs = presentationTimeUs;
        while (!this.pendingOutputStreamChanges.isEmpty() && presentationTimeUs >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            setOutputStreamInfo((OutputStreamInfo) Preconditions.checkNotNull(this.pendingOutputStreamChanges.poll()));
            onProcessedStreamChange();
        }
    }

    protected void onProcessedStreamChange() {
    }

    protected DecoderReuseEvaluation canReuseCodec(MediaCodecInfo codecInfo, Format oldFormat, Format newFormat) {
        return new DecoderReuseEvaluation(codecInfo.name, oldFormat, newFormat, 0, 1);
    }

    protected void onOutputStreamOffsetUsChanged(long outputStreamOffsetUs) {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return isReadyForDecoding();
    }

    protected final boolean isReadyForDecoding() {
        return this.inputFormat != null && (isSourceReady() || hasOutputBuffer() || (this.codecHotswapDeadlineMs != C.TIME_UNSET && getClock().elapsedRealtime() < this.codecHotswapDeadlineMs));
    }

    protected float getPlaybackSpeed() {
        return this.currentPlaybackSpeed;
    }

    protected float getCodecOperatingRate() {
        return this.codecOperatingRate;
    }

    protected float getCodecOperatingRateV23(float targetPlaybackSpeed, Format format, Format[] streamFormats) {
        return -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Renderer.WakeupListener getWakeupListener() {
        return this.wakeupListener;
    }

    protected final boolean updateCodecOperatingRate() throws ExoPlaybackException {
        return updateCodecOperatingRate(this.codecInputFormat);
    }

    private boolean updateCodecOperatingRate(Format format) throws ExoPlaybackException {
        if (this.codec == null || this.codecDrainAction == 3 || getState() == 0) {
            return true;
        }
        float newCodecOperatingRate = getCodecOperatingRateV23(this.targetPlaybackSpeed, (Format) Preconditions.checkNotNull(format), getStreamFormats());
        if (this.codecOperatingRate == newCodecOperatingRate) {
            return true;
        }
        if (newCodecOperatingRate == -1.0f) {
            drainAndReinitializeCodec();
            return false;
        }
        if (this.codecOperatingRate == -1.0f && newCodecOperatingRate <= this.assumedMinimumCodecOperatingRate) {
            return true;
        }
        Bundle codecParameters = new Bundle();
        codecParameters.putFloat("operating-rate", newCodecOperatingRate);
        ((MediaCodecAdapter) Preconditions.checkNotNull(this.codec)).setParameters(codecParameters);
        this.codecOperatingRate = newCodecOperatingRate;
        return true;
    }

    private boolean drainAndFlushCodec() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 1;
        }
        return true;
    }

    private boolean drainAndUpdateCodecDrmSession() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            updateDrmSession();
        }
        return true;
    }

    private void drainAndReinitializeCodec() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        } else {
            reinitializeCodec();
        }
    }

    private boolean drainOutputBuffer(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        MediaCodecAdapter codec = (MediaCodecAdapter) Preconditions.checkNotNull(this.codec);
        if (!hasOutputBuffer()) {
            int outputIndex = codec.dequeueOutputBufferIndex(this.outputBufferInfo);
            if (outputIndex < 0) {
                if (outputIndex == -2) {
                    processOutputMediaFormatChanged();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    processEndOfStream();
                }
                if (this.lastOutputBufferProcessedRealtimeMs != C.TIME_UNSET && this.lastOutputBufferProcessedRealtimeMs + 100 < getClock().currentTimeMillis()) {
                    processEndOfStream();
                }
                return false;
            }
            this.outputBufferInfo.presentationTimeUs -= this.skippedFlushOffsetUs;
            if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                codec.releaseOutputBuffer(outputIndex, false);
                return true;
            }
            if (this.outputBufferInfo.size == 0 && (this.outputBufferInfo.flags & 4) != 0) {
                processEndOfStream();
                return false;
            }
            this.outputIndex = outputIndex;
            this.outputBuffer = codec.getOutputBuffer(outputIndex);
            if (this.outputBuffer != null) {
                this.outputBuffer.position(this.outputBufferInfo.offset);
                this.outputBuffer.limit(this.outputBufferInfo.offset + this.outputBufferInfo.size);
            }
            updateOutputFormatForTime(this.outputBufferInfo.presentationTimeUs);
        }
        this.isDecodeOnlyOutputBuffer = this.hasSkippedFlushAndWaitingForQueueInputBuffer || this.outputBufferInfo.presentationTimeUs < getLastResetPositionUs();
        this.isLastOutputBuffer = this.outputStreamInfo.lastBufferTimeUs != C.TIME_UNSET && this.outputStreamInfo.lastBufferTimeUs <= this.outputBufferInfo.presentationTimeUs;
        boolean processedOutputBuffer = processOutputBuffer(positionUs, elapsedRealtimeUs, codec, this.outputBuffer, this.outputIndex, this.outputBufferInfo.flags, 1, this.outputBufferInfo.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, (Format) Preconditions.checkNotNull(this.outputFormat));
        if (processedOutputBuffer) {
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            boolean isEndOfStream = (this.outputBufferInfo.flags & 4) != 0;
            if (!isEndOfStream && this.codecReceivedEos && this.isLastOutputBuffer) {
                this.lastOutputBufferProcessedRealtimeMs = getClock().currentTimeMillis();
            }
            resetOutputBuffer();
            if (!isEndOfStream) {
                return true;
            }
            processEndOfStream();
        }
        return false;
    }

    private void processOutputMediaFormatChanged() {
        this.codecHasOutputMediaFormat = true;
        MediaFormat mediaFormat = ((MediaCodecAdapter) Preconditions.checkNotNull(this.codec)).getOutputFormat();
        if (this.codecAdaptationWorkaroundMode != 0 && mediaFormat.getInteger("width") == 32 && mediaFormat.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            checkAndNotifyCodecParameterChanges(mediaFormat);
        }
        this.codecOutputMediaFormat = mediaFormat;
        this.codecOutputMediaFormatChanged = true;
    }

    protected void renderToEndOfStream() throws ExoPlaybackException {
    }

    private void processEndOfStream() throws ExoPlaybackException {
        switch (this.codecDrainAction) {
            case 1:
                flushCodec();
                break;
            case 2:
                flushCodec();
                updateDrmSession();
                break;
            case 3:
                reinitializeCodec();
                break;
            default:
                this.outputStreamEnded = true;
                renderToEndOfStream();
                break;
        }
    }

    protected final void setPendingOutputEndOfStream() {
        this.pendingOutputEndOfStream = true;
    }

    protected long getLastBufferInStreamPresentationTimeUs() {
        return this.outputStreamInfo.lastBufferTimeUs;
    }

    protected long getLargestQueuedPresentationTimeUs() {
        return this.largestQueuedPresentationTimeUs;
    }

    protected final long getOutputStreamOffsetUs() {
        return this.outputStreamInfo.streamOffsetUs;
    }

    protected final long getOutputStreamStartPositionUs() {
        return this.outputStreamInfo.startPositionUs;
    }

    protected final void applyCodecParametersToMediaFormat(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.activeCodecParameters.applyTo(mediaFormat);
        }
    }

    private void setOutputStreamInfo(OutputStreamInfo outputStreamInfo) {
        this.outputStreamInfo = outputStreamInfo;
        if (outputStreamInfo.streamOffsetUs != C.TIME_UNSET) {
            this.needToNotifyOutputFormatChangeAfterStreamChange = true;
            onOutputStreamOffsetUsChanged(outputStreamInfo.streamOffsetUs);
        }
    }

    private OutputStreamInfo getLastOutputStreamInfo() {
        if (!this.pendingOutputStreamChanges.isEmpty()) {
            return this.pendingOutputStreamChanges.getLast();
        }
        return this.outputStreamInfo;
    }

    protected static boolean supportsFormatDrm(Format format) {
        return format.cryptoType == 0 || format.cryptoType == 2;
    }

    private boolean drmNeedsCodecReinitialization(MediaCodecInfo codecInfo, Format newFormat, DrmSession oldSession, DrmSession newSession) throws ExoPlaybackException {
        CryptoConfig newCryptoConfig;
        CryptoConfig oldCryptoConfig;
        if (oldSession == newSession) {
            return false;
        }
        if (newSession == null || oldSession == null || (newCryptoConfig = newSession.getCryptoConfig()) == null || (oldCryptoConfig = oldSession.getCryptoConfig()) == null || !newCryptoConfig.getClass().equals(oldCryptoConfig.getClass())) {
            return true;
        }
        if (!(newCryptoConfig instanceof FrameworkCryptoConfig)) {
            return false;
        }
        if (!newSession.getSchemeUuid().equals(oldSession.getSchemeUuid()) || C.PLAYREADY_UUID.equals(oldSession.getSchemeUuid()) || C.PLAYREADY_UUID.equals(newSession.getSchemeUuid())) {
            return true;
        }
        if (codecInfo.secure) {
            return false;
        }
        if (newSession.getState() != 2 && ((newSession.getState() != 3 && newSession.getState() != 4) || !newSession.requiresSecureDecoder((String) Preconditions.checkNotNull(newFormat.sampleMimeType)))) {
            return false;
        }
        return true;
    }

    private void reinitializeCodec() throws ExoPlaybackException {
        releaseCodec();
        maybeInitCodecOrBypass();
    }

    private void updateDrmSession() throws ExoPlaybackException {
        CryptoConfig cryptoConfig = ((DrmSession) Preconditions.checkNotNull(this.sourceDrmSession)).getCryptoConfig();
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            try {
                ((MediaCrypto) Preconditions.checkNotNull(this.mediaCrypto)).setMediaDrmSession(((FrameworkCryptoConfig) cryptoConfig).sessionId);
            } catch (MediaCryptoException e) {
                throw createRendererException(e, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        setCodecDrmSession(this.sourceDrmSession);
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    private boolean bypassRender(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        boolean z;
        boolean z2;
        Preconditions.checkState(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.hasSamples()) {
            z = false;
            if (!processOutputBuffer(positionUs, elapsedRealtimeUs, null, this.bypassBatchBuffer.data, this.outputIndex, 0, this.bypassBatchBuffer.getSampleCount(), this.bypassBatchBuffer.getFirstSampleTimeUs(), isDecodeOnly(getLastResetPositionUs(), this.bypassBatchBuffer.getLastSampleTimeUs()), this.bypassBatchBuffer.isEndOfStream(), (Format) Preconditions.checkNotNull(this.outputFormat))) {
                return false;
            }
            onProcessedOutputBuffer(this.bypassBatchBuffer.getLastSampleTimeUs());
            this.bypassBatchBuffer.clear();
        } else {
            z = false;
        }
        if (this.inputStreamEnded) {
            this.outputStreamEnded = true;
            return z;
        }
        if (this.bypassSampleBufferPending) {
            Preconditions.checkState(this.bypassBatchBuffer.append(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = z;
        }
        if (!this.bypassDrainAndReinitialize) {
            z2 = true;
        } else {
            if (this.bypassBatchBuffer.hasSamples()) {
                return true;
            }
            z2 = true;
            disableBypass();
            this.bypassDrainAndReinitialize = z;
            maybeInitCodecOrBypass();
            if (!this.bypassEnabled) {
                return z;
            }
        }
        bypassRead();
        if (this.bypassBatchBuffer.hasSamples()) {
            this.bypassBatchBuffer.flip();
        }
        return (this.bypassBatchBuffer.hasSamples() || this.inputStreamEnded || this.bypassDrainAndReinitialize) ? z2 : z;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:104)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private void bypassRead() throws androidx.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.bypassRead():void");
    }

    private boolean haveBypassBatchBufferAndNewSampleSameDecodeOnlyState() {
        if (!this.bypassBatchBuffer.hasSamples()) {
            return true;
        }
        long lastResetPositionUs = getLastResetPositionUs();
        boolean batchBufferIsDecodeOnly = isDecodeOnly(lastResetPositionUs, this.bypassBatchBuffer.getLastSampleTimeUs());
        boolean sampleBufferIsDecodeOnly = isDecodeOnly(lastResetPositionUs, this.bypassSampleBuffer.timeUs);
        return batchBufferIsDecodeOnly == sampleBufferIsDecodeOnly;
    }

    private boolean isDecodeOnly(long startTimeUs, long frameTimeUs) {
        return frameTimeUs < startTimeUs && !(this.outputFormat != null && Objects.equals(this.outputFormat.sampleMimeType, MimeTypes.AUDIO_OPUS) && OpusUtil.needToDecodeOpusFrame(startTimeUs, frameTimeUs));
    }

    private static boolean isMediaCodecException(IllegalStateException error) {
        if (error instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = error.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private int codecAdaptationWorkaroundMode(String name) {
        if (Build.VERSION.SDK_INT <= 25 && "OMX.Exynos.avc.dec.secure".equals(name)) {
            if (Build.MODEL.startsWith("SM-T585") || Build.MODEL.startsWith("SM-A510") || Build.MODEL.startsWith("SM-A520") || Build.MODEL.startsWith("SM-J700")) {
                return 2;
            }
            return 0;
        }
        return 0;
    }

    private static boolean codecNeedsSosFlushWorkaround(String name) {
        return Build.VERSION.SDK_INT == 29 && "c2.android.aac.decoder".equals(name);
    }

    private static boolean codecNeedsEosPropagationWorkaround(MediaCodecInfo codecInfo) {
        String name = codecInfo.name;
        return (Build.VERSION.SDK_INT <= 25 && "OMX.rk.video_decoder.avc".equals(name)) || (Build.VERSION.SDK_INT <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(name) || "OMX.broadcom.video_decoder.tunnel.secure".equals(name) || "OMX.bcm.vdec.avc.tunnel".equals(name) || "OMX.bcm.vdec.avc.tunnel.secure".equals(name) || "OMX.bcm.vdec.hevc.tunnel".equals(name) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(name))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && codecInfo.secure);
    }

    private static boolean codecNeedsEosFlushWorkaround(String name) {
        return false;
    }

    private static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET);
        public final TimedValueQueue<Format> formatQueue = new TimedValueQueue<>();
        public long lastBufferTimeUs = C.TIME_UNSET;
        public final long previousStreamLastBufferTimeUs;
        public final long startPositionUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long previousStreamLastBufferTimeUs, long startPositionUs, long streamOffsetUs) {
            this.previousStreamLastBufferTimeUs = previousStreamLastBufferTimeUs;
            this.startPositionUs = startPositionUs;
            this.streamOffsetUs = streamOffsetUs;
        }
    }

    private static final class Api31 {
        private Api31() {
        }

        public static void setLogSessionIdToMediaCodecFormat(MediaCodecAdapter.Configuration codecConfiguration, PlayerId playerId) {
            LogSessionId logSessionId = playerId.getLogSessionId();
            if (!logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                codecConfiguration.mediaFormat.setString("log-session-id", logSessionId.getStringId());
            }
        }
    }

    private final class MediaCodecRendererCodecAdapterListener implements MediaCodecAdapter.OnBufferAvailableListener {
        private MediaCodecRendererCodecAdapterListener() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onInputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onOutputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }
    }
}
