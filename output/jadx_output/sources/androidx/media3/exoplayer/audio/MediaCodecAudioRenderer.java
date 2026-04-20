package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.MediaClock;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.extractor.VorbisUtil;
import com.google.android.gms.common.Scopes;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public class MediaCodecAudioRenderer extends MediaCodecRenderer implements MediaClock {
    private static final String TAG = "MediaCodecAudioRenderer";
    private static final String VIVO_BITS_PER_SAMPLE_KEY = "v-bits-per-sample";
    private boolean allowPositionDiscontinuity;
    private final AudioSink audioSink;
    private boolean audioSinkNeedsReset;
    private int codecMaxInputSize;
    private boolean codecNeedsDiscardChannelsWorkaround;
    private boolean codecNeedsVorbisToAndroidChannelMappingWorkaround;
    private final Context context;
    private long currentPositionUs;
    private Format decryptOnlyCodecFormat;
    private final AudioRendererEventListener.EventDispatcher eventDispatcher;
    private boolean hasPendingReportedSkippedSilence;
    private boolean hasReportedAudioPositionAdvancing;
    private Format inputFormat;
    private boolean isStarted;
    private final LoudnessCodecController loudnessCodecController;
    private long nextBufferToWritePresentationTimeUs;
    private int rendererPriority;

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, null, null);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler eventHandler, AudioRendererEventListener eventListener) {
        this(context, mediaCodecSelector, eventHandler, eventListener, new DefaultAudioSink.Builder(context).build());
    }

    @Deprecated
    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler eventHandler, AudioRendererEventListener eventListener, AudioCapabilities audioCapabilities, AudioProcessor... audioProcessors) {
        this(context, mediaCodecSelector, eventHandler, eventListener, new DefaultAudioSink.Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessors).build());
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler eventHandler, AudioRendererEventListener eventListener, AudioSink audioSink) {
        this(context, MediaCodecAdapter.Factory.getDefault(context), mediaCodecSelector, false, eventHandler, eventListener, audioSink);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, Handler eventHandler, AudioRendererEventListener eventListener, AudioSink audioSink) {
        this(context, MediaCodecAdapter.Factory.getDefault(context), mediaCodecSelector, enableDecoderFallback, eventHandler, eventListener, audioSink);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, Handler eventHandler, AudioRendererEventListener eventListener, AudioSink audioSink) {
        this(context, codecAdapterFactory, mediaCodecSelector, enableDecoderFallback, eventHandler, eventListener, audioSink, Build.VERSION.SDK_INT >= 35 ? new LoudnessCodecController() : null);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory codecAdapterFactory, MediaCodecSelector mediaCodecSelector, boolean enableDecoderFallback, Handler eventHandler, AudioRendererEventListener eventListener, AudioSink audioSink, LoudnessCodecController loudnessCodecController) {
        super(context.getApplicationContext(), 1, codecAdapterFactory, mediaCodecSelector, enableDecoderFallback, 44100.0f);
        this.context = context.getApplicationContext();
        this.audioSink = audioSink;
        this.loudnessCodecController = loudnessCodecController;
        this.rendererPriority = -1000;
        this.eventDispatcher = new AudioRendererEventListener.EventDispatcher(eventHandler, eventListener);
        this.nextBufferToWritePresentationTimeUs = C.TIME_UNSET;
        audioSink.setListener(new AudioSinkListener());
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        int audioOffloadSupport;
        boolean isFormatSupported;
        boolean isPreferredDecoder;
        int hardwareAccelerationSupport;
        if (!MimeTypes.isAudio(format.sampleMimeType)) {
            return RendererCapabilities.create(0);
        }
        boolean formatHasDrm = format.cryptoType != 0;
        boolean supportsFormatDrm = supportsFormatDrm(format);
        int adaptiveSupport = 8;
        if (supportsFormatDrm && (!formatHasDrm || MediaCodecUtil.getDecryptOnlyDecoderInfo() != null)) {
            int audioOffloadSupport2 = getAudioOffloadSupport(format);
            if (this.audioSink.supportsFormat(format)) {
                return RendererCapabilities.create(4, 8, 32, audioOffloadSupport2);
            }
            audioOffloadSupport = audioOffloadSupport2;
        } else {
            audioOffloadSupport = 0;
        }
        if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType) && !this.audioSink.supportsFormat(format)) {
            return RendererCapabilities.create(1);
        }
        if (!this.audioSink.supportsFormat(Util.getPcmFormat(2, format.channelCount, format.sampleRate))) {
            return RendererCapabilities.create(1);
        }
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(mediaCodecSelector, format, false, this.audioSink);
        if (decoderInfos.isEmpty()) {
            return RendererCapabilities.create(1);
        }
        if (!supportsFormatDrm) {
            return RendererCapabilities.create(2);
        }
        MediaCodecInfo decoderInfo = decoderInfos.get(0);
        boolean isFormatSupported2 = decoderInfo.isFormatSupported(this.context, format);
        if (!isFormatSupported2) {
            for (int i = 1; i < decoderInfos.size(); i++) {
                MediaCodecInfo otherDecoderInfo = decoderInfos.get(i);
                if (otherDecoderInfo.isFormatSupported(this.context, format)) {
                    decoderInfo = otherDecoderInfo;
                    isFormatSupported = true;
                    isPreferredDecoder = false;
                    break;
                }
            }
            isFormatSupported = isFormatSupported2;
            isPreferredDecoder = true;
        } else {
            isFormatSupported = isFormatSupported2;
            isPreferredDecoder = true;
        }
        int formatSupport = isFormatSupported ? 4 : 3;
        if (isFormatSupported && decoderInfo.isSeamlessAdaptationSupported(format)) {
            adaptiveSupport = 16;
        }
        if (decoderInfo.hardwareAccelerated) {
            hardwareAccelerationSupport = 64;
        } else {
            hardwareAccelerationSupport = 0;
        }
        int decoderSupport = isPreferredDecoder ? 128 : 0;
        int formatSupport2 = formatSupport;
        int formatSupport3 = adaptiveSupport;
        return RendererCapabilities.create(formatSupport2, formatSupport3, 32, hardwareAccelerationSupport, decoderSupport, audioOffloadSupport);
    }

    private int getAudioOffloadSupport(Format format) {
        AudioOffloadSupport audioSinkOffloadSupport = this.audioSink.getFormatOffloadSupport(format);
        if (!audioSinkOffloadSupport.isFormatSupported) {
            return 0;
        }
        int audioOffloadSupport = 512;
        if (audioSinkOffloadSupport.isGaplessSupported) {
            audioOffloadSupport = 512 | 1024;
        }
        if (audioSinkOffloadSupport.isSpeedChangeSupported) {
            return audioOffloadSupport | 2048;
        }
        return audioOffloadSupport;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(this.context, getDecoderInfos(mediaCodecSelector, format, requiresSecureDecoder, this.audioSink), format);
    }

    private static List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean requiresSecureDecoder, AudioSink audioSink) throws MediaCodecUtil.DecoderQueryException {
        MediaCodecInfo codecInfo;
        if (format.sampleMimeType == null) {
            return ImmutableList.of();
        }
        if (audioSink.supportsFormat(format) && (codecInfo = MediaCodecUtil.getDecryptOnlyDecoderInfo()) != null) {
            return ImmutableList.of(codecInfo);
        }
        return MediaCodecUtil.getDecoderInfosSoftMatch(mediaCodecSelector, format, requiresSecureDecoder, false);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean shouldUseBypass(Format format) {
        if (getConfiguration().offloadModePreferred != 0) {
            int audioOffloadSupport = getAudioOffloadSupport(format);
            if ((audioOffloadSupport & 512) != 0) {
                if (getConfiguration().offloadModePreferred == 2 || (audioOffloadSupport & 1024) != 0) {
                    return true;
                }
                if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                    return true;
                }
            }
        }
        return this.audioSink.supportsFormat(format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo codecInfo, Format format, MediaCrypto crypto, float codecOperatingRate) {
        this.codecMaxInputSize = getCodecMaxInputSize(codecInfo, format, getStreamFormats());
        this.codecNeedsDiscardChannelsWorkaround = codecNeedsDiscardChannelsWorkaround(codecInfo.name);
        this.codecNeedsVorbisToAndroidChannelMappingWorkaround = codecNeedsVorbisToAndroidChannelMappingWorkaround(codecInfo.name);
        MediaFormat mediaFormat = getMediaFormat(format, codecInfo.codecMimeType, this.codecMaxInputSize, codecOperatingRate);
        boolean decryptOnlyCodecEnabled = MimeTypes.AUDIO_RAW.equals(codecInfo.mimeType) && !MimeTypes.AUDIO_RAW.equals(format.sampleMimeType);
        this.decryptOnlyCodecFormat = decryptOnlyCodecEnabled ? format : null;
        return MediaCodecAdapter.Configuration.createForAudioDecoding(codecInfo, mediaFormat, format, crypto, this.loudnessCodecController);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation canReuseCodec(MediaCodecInfo codecInfo, Format oldFormat, Format newFormat) {
        int discardReasons;
        DecoderReuseEvaluation evaluation = codecInfo.canReuseCodec(oldFormat, newFormat);
        int discardReasons2 = evaluation.discardReasons;
        if (isBypassPossible(newFormat)) {
            discardReasons2 |= 32768;
        }
        if (getCodecMaxInputSize(codecInfo, newFormat) <= this.codecMaxInputSize) {
            discardReasons = discardReasons2;
        } else {
            discardReasons = discardReasons2 | 64;
        }
        return new DecoderReuseEvaluation(codecInfo.name, oldFormat, newFormat, discardReasons != 0 ? 0 : evaluation.result, discardReasons);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return this;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected long getDurationToProgressUs(long positionUs, long elapsedRealtimeUs, boolean isOnBufferAvailableListenerRegistered) {
        boolean audioSinkBufferFull = this.audioSink.hasPendingData() && this.nextBufferToWritePresentationTimeUs != C.TIME_UNSET;
        if (!this.isStarted) {
            return (audioSinkBufferFull || super.isEnded()) ? 1000000L : 10000L;
        }
        long audioTrackBufferDurationUs = this.audioSink.getAudioTrackBufferSizeUs();
        if (!this.hasReportedAudioPositionAdvancing || !audioSinkBufferFull || audioTrackBufferDurationUs == C.TIME_UNSET) {
            return 10000L;
        }
        long writtenDurationUs = this.nextBufferToWritePresentationTimeUs - positionUs;
        long bufferedDurationUs = Math.min(audioTrackBufferDurationUs, writtenDurationUs);
        return Math.max(10000L, (long) ((bufferedDurationUs / (getPlaybackParameters() != null ? getPlaybackParameters().speed : 1.0f)) / 2.0f));
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float getCodecOperatingRateV23(float targetPlaybackSpeed, Format format, Format[] streamFormats) {
        int maxSampleRate = -1;
        for (Format streamFormat : streamFormats) {
            int streamSampleRate = streamFormat.sampleRate;
            if (streamSampleRate != -1) {
                maxSampleRate = Math.max(maxSampleRate, streamSampleRate);
            }
        }
        if (maxSampleRate == -1) {
            return -1.0f;
        }
        return maxSampleRate * targetPlaybackSpeed;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecInitialized(String name, MediaCodecAdapter.Configuration configuration, long initializedTimestampMs, long initializationDurationMs) {
        this.eventDispatcher.decoderInitialized(name, initializedTimestampMs, initializationDurationMs);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecReleased(String name) {
        this.eventDispatcher.decoderReleased(name);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecError(Exception codecError) {
        Log.e(TAG, "Audio codec error", codecError);
        this.eventDispatcher.audioCodecError(codecError);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        Format inputFormat = (Format) Preconditions.checkNotNull(formatHolder.format);
        this.inputFormat = inputFormat;
        DecoderReuseEvaluation evaluation = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged(inputFormat, evaluation);
        return evaluation;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onOutputFormatChanged(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
        int pcmEncoding;
        Format audioSinkInputFormat;
        int[] channelMap = null;
        if (this.decryptOnlyCodecFormat != null) {
            audioSinkInputFormat = this.decryptOnlyCodecFormat;
        } else if (getCodec() == null) {
            audioSinkInputFormat = format;
        } else {
            Preconditions.checkNotNull(mediaFormat);
            if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
                pcmEncoding = format.pcmEncoding;
            } else if (mediaFormat.containsKey("pcm-encoding")) {
                pcmEncoding = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey(VIVO_BITS_PER_SAMPLE_KEY)) {
                pcmEncoding = Util.getPcmEncoding(mediaFormat.getInteger(VIVO_BITS_PER_SAMPLE_KEY));
            } else {
                pcmEncoding = 2;
            }
            Format audioSinkInputFormat2 = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setPcmEncoding(pcmEncoding).setEncoderDelay(format.encoderDelay).setEncoderPadding(format.encoderPadding).setMetadata(format.metadata).setCustomData(format.customData).setId(format.id).setLabel(format.label).setLabels(format.labels).setLanguage(format.language).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).setChannelCount(mediaFormat.getInteger("channel-count")).setSampleRate(mediaFormat.getInteger("sample-rate")).build();
            if (this.codecNeedsDiscardChannelsWorkaround && audioSinkInputFormat2.channelCount == 6 && format.channelCount < 6) {
                channelMap = new int[format.channelCount];
                for (int i = 0; i < format.channelCount; i++) {
                    channelMap[i] = i;
                }
                audioSinkInputFormat = audioSinkInputFormat2;
            } else if (!this.codecNeedsVorbisToAndroidChannelMappingWorkaround) {
                audioSinkInputFormat = audioSinkInputFormat2;
            } else {
                channelMap = VorbisUtil.getVorbisToAndroidChannelLayoutMapping(audioSinkInputFormat2.channelCount);
                audioSinkInputFormat = audioSinkInputFormat2;
            }
        }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                if (isBypassEnabled() && getConfiguration().offloadModePreferred != 0) {
                    this.audioSink.setOffloadMode(getConfiguration().offloadModePreferred);
                } else {
                    this.audioSink.setOffloadMode(0);
                }
            }
            this.audioSink.configure(audioSinkInputFormat, 0, channelMap);
        } catch (AudioSink.ConfigurationException e) {
            throw createRendererException(e, e.format, PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        }
    }

    protected void onPositionDiscontinuity() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onEnabled(boolean joining, boolean mayRenderStartOfStream) throws ExoPlaybackException {
        super.onEnabled(joining, mayRenderStartOfStream);
        this.eventDispatcher.enabled(this.decoderCounters);
        boolean z = getConfiguration().tunneling;
        AudioSink audioSink = this.audioSink;
        if (z) {
            audioSink.enableTunnelingV21();
        } else {
            audioSink.disableTunneling();
        }
        this.audioSink.setPlayerId(getPlayerId());
        this.audioSink.setClock(getClock());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        super.onPositionReset(positionUs, joining, sampleStreamIsResetToKeyFrame);
        this.audioSink.flush();
        this.currentPositionUs = positionUs;
        this.nextBufferToWritePresentationTimeUs = C.TIME_UNSET;
        this.hasPendingReportedSkippedSilence = false;
        this.hasReportedAudioPositionAdvancing = false;
        this.allowPositionDiscontinuity = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onStarted() {
        super.onStarted();
        this.audioSink.play();
        this.isStarted = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onStopped() {
        updateCurrentPosition();
        this.isStarted = false;
        this.audioSink.pause();
        super.onStopped();
        this.hasReportedAudioPositionAdvancing = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        this.audioSinkNeedsReset = true;
        this.inputFormat = null;
        this.nextBufferToWritePresentationTimeUs = C.TIME_UNSET;
        this.hasReportedAudioPositionAdvancing = false;
        try {
            this.audioSink.flush();
            try {
                super.onDisabled();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.onDisabled();
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void onReset() {
        this.hasPendingReportedSkippedSilence = false;
        this.hasReportedAudioPositionAdvancing = false;
        this.nextBufferToWritePresentationTimeUs = C.TIME_UNSET;
        try {
            super.onReset();
        } finally {
            if (this.audioSinkNeedsReset) {
                this.audioSinkNeedsReset = false;
                this.audioSink.reset();
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onRelease() {
        this.audioSink.release();
        if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
            this.loudnessCodecController.release();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return super.isEnded() && this.audioSink.isEnded();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData();
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            updateCurrentPosition();
        }
        return this.currentPositionUs;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public boolean hasSkippedSilenceSinceLastCall() {
        boolean hasPendingReportedSkippedSilence = this.hasPendingReportedSkippedSilence;
        this.hasPendingReportedSkippedSilence = false;
        return hasPendingReportedSkippedSilence;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.audioSink.setPlaybackParameters(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        this.audioSink.handleDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean processOutputBuffer(long positionUs, long elapsedRealtimeUs, MediaCodecAdapter codec, ByteBuffer buffer, int bufferIndex, int bufferFlags, int sampleCount, long bufferPresentationTimeUs, boolean isDecodeOnlyBuffer, boolean isLastBuffer, Format format) throws ExoPlaybackException {
        int i;
        int i2;
        Preconditions.checkNotNull(buffer);
        this.nextBufferToWritePresentationTimeUs = C.TIME_UNSET;
        if (this.decryptOnlyCodecFormat != null && (bufferFlags & 2) != 0) {
            ((MediaCodecAdapter) Preconditions.checkNotNull(codec)).releaseOutputBuffer(bufferIndex, false);
            return true;
        }
        if (isDecodeOnlyBuffer) {
            if (codec != null) {
                codec.releaseOutputBuffer(bufferIndex, false);
            }
            this.decoderCounters.skippedOutputBufferCount += sampleCount;
            this.audioSink.handleDiscontinuity();
            return true;
        }
        try {
            try {
                boolean fullyConsumed = this.audioSink.handleBuffer(buffer, bufferPresentationTimeUs, sampleCount);
                if (fullyConsumed) {
                    if (codec != null) {
                        codec.releaseOutputBuffer(bufferIndex, false);
                    }
                    this.decoderCounters.renderedOutputBufferCount += sampleCount;
                    return true;
                }
                this.nextBufferToWritePresentationTimeUs = bufferPresentationTimeUs;
                return false;
            } catch (AudioSink.InitializationException e) {
                e = e;
                Format format2 = this.inputFormat;
                boolean z = e.isRecoverable;
                if (isBypassEnabled() && getConfiguration().offloadModePreferred != 0) {
                    i2 = PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED;
                } else {
                    i2 = PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED;
                }
                throw createRendererException(e, format2, z, i2);
            } catch (AudioSink.WriteException e2) {
                e = e2;
                boolean z2 = e.isRecoverable;
                if (isBypassEnabled() && getConfiguration().offloadModePreferred != 0) {
                    i = PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED;
                } else {
                    i = PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED;
                }
                throw createRendererException(e, format, z2, i);
            }
        } catch (AudioSink.InitializationException e3) {
            e = e3;
        } catch (AudioSink.WriteException e4) {
            e = e4;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onCodecParametersChanged(CodecParameters codecParameters) {
        this.eventDispatcher.audioCodecParametersChanged(codecParameters);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void renderToEndOfStream() throws ExoPlaybackException {
        int i;
        try {
            this.audioSink.playToEndOfStream();
            if (getLastBufferInStreamPresentationTimeUs() != C.TIME_UNSET) {
                this.nextBufferToWritePresentationTimeUs = getLastBufferInStreamPresentationTimeUs();
            }
        } catch (AudioSink.WriteException e) {
            Format format = e.format;
            boolean z = e.isRecoverable;
            if (isBypassEnabled()) {
                i = PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED;
            } else {
                i = PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED;
            }
            throw createRendererException(e, format, z, i);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void onOutputStreamOffsetUsChanged(long outputStreamOffsetUs) {
        this.audioSink.setOutputStreamOffsetUs(outputStreamOffsetUs);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        switch (messageType) {
            case 2:
                this.audioSink.setVolume(((Float) Preconditions.checkNotNull(message)).floatValue());
                break;
            case 3:
                AudioAttributes audioAttributes = (AudioAttributes) message;
                this.audioSink.setAudioAttributes((AudioAttributes) Preconditions.checkNotNull(audioAttributes));
                break;
            case 6:
                AuxEffectInfo auxEffectInfo = (AuxEffectInfo) message;
                this.audioSink.setAuxEffectInfo((AuxEffectInfo) Preconditions.checkNotNull(auxEffectInfo));
                break;
            case 9:
                this.audioSink.setSkipSilenceEnabled(((Boolean) Preconditions.checkNotNull(message)).booleanValue());
                break;
            case 10:
                setAudioSessionId(((Integer) Preconditions.checkNotNull(message)).intValue());
                break;
            case 12:
                this.audioSink.setPreferredDevice((AudioDeviceInfo) message);
                break;
            case 16:
                this.rendererPriority = ((Integer) Preconditions.checkNotNull(message)).intValue();
                updateCodecImportance();
                break;
            case 19:
                this.audioSink.setVirtualDeviceId(((Integer) Preconditions.checkNotNull(message)).intValue());
                break;
            case 20:
                this.audioSink.setAudioOutputProvider((AudioOutputProvider) Preconditions.checkNotNull(message));
                break;
            default:
                super.handleMessage(messageType, message);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void handleInputBufferSupplementalData(DecoderInputBuffer buffer) {
        if (Build.VERSION.SDK_INT >= 29 && buffer.format != null && Objects.equals(buffer.format.sampleMimeType, MimeTypes.AUDIO_OPUS) && isBypassEnabled()) {
            ByteBuffer data = (ByteBuffer) Preconditions.checkNotNull(buffer.supplementalData);
            int preSkip = ((Format) Preconditions.checkNotNull(buffer.format)).encoderDelay;
            if (data.remaining() == 8) {
                int discardSamples = (int) ((data.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND);
                this.audioSink.setOffloadDelayPadding(preSkip, discardSamples);
            }
        }
    }

    protected int getCodecMaxInputSize(MediaCodecInfo codecInfo, Format format, Format[] streamFormats) {
        int maxInputSize = getCodecMaxInputSize(codecInfo, format);
        if (streamFormats.length == 1) {
            return maxInputSize;
        }
        for (Format streamFormat : streamFormats) {
            if (codecInfo.canReuseCodec(format, streamFormat).result != 0) {
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(codecInfo, streamFormat));
            }
        }
        return maxInputSize;
    }

    private int getCodecMaxInputSize(MediaCodecInfo codecInfo, Format format) {
        if ("OMX.google.raw.decoder".equals(codecInfo.name)) {
        }
        return format.maxInputSize;
    }

    protected MediaFormat getMediaFormat(Format format, String codecMimeType, int codecMaxInputSize, float codecOperatingRate) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", codecMimeType);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxInputSize);
        mediaFormat.setInteger("priority", 0);
        if (codecOperatingRate != -1.0f && !deviceDoesntSupportOperatingRate()) {
            mediaFormat.setFloat("operating-rate", codecOperatingRate);
        }
        if (MimeTypes.AUDIO_AC4.equals(format.sampleMimeType)) {
            Pair<Integer, Integer> profileLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
            if (profileLevel != null) {
                MediaFormatUtil.maybeSetInteger(mediaFormat, Scopes.PROFILE, ((Integer) profileLevel.first).intValue());
                MediaFormatUtil.maybeSetInteger(mediaFormat, "level", ((Integer) profileLevel.second).intValue());
            }
            if (Build.VERSION.SDK_INT <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        if (this.audioSink.getFormatSupport(Util.getPcmFormat(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (Build.VERSION.SDK_INT >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.rendererPriority));
        }
        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_IAMF)) {
            AudioCapabilities audioCapabilities = this.audioSink.getAudioCapabilities();
            if (audioCapabilities == null) {
                Log.w(TAG, "AudioCapabilities from the AudioSink are null, using default stereo output layout.");
                mediaFormat.setInteger("channel-mask", 12);
                mediaFormat.setInteger("max-output-channel-count", 2);
            } else {
                int channelMask = IamfUtil.getOutputChannelMaskForCurrentConfiguration(audioCapabilities);
                int channelCount = Integer.bitCount(channelMask);
                mediaFormat.setInteger("channel-mask", channelMask);
                mediaFormat.setInteger("max-output-channel-count", channelCount);
            }
        }
        applyCodecParametersToMediaFormat(mediaFormat);
        return mediaFormat;
    }

    private void setAudioSessionId(int audioSessionId) {
        this.audioSink.setAudioSessionId(audioSessionId);
        if (Build.VERSION.SDK_INT >= 35 && this.loudnessCodecController != null) {
            this.loudnessCodecController.setAudioSessionId(audioSessionId);
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

    private void updateCurrentPosition() {
        long jMax;
        long newCurrentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (newCurrentPositionUs != Long.MIN_VALUE) {
            if (this.allowPositionDiscontinuity) {
                jMax = newCurrentPositionUs;
            } else {
                jMax = Math.max(this.currentPositionUs, newCurrentPositionUs);
            }
            this.currentPositionUs = jMax;
            this.allowPositionDiscontinuity = false;
        }
    }

    private static boolean deviceDoesntSupportOperatingRate() {
        return false;
    }

    private static boolean codecNeedsDiscardChannelsWorkaround(String codecName) {
        return false;
    }

    private static boolean codecNeedsVorbisToAndroidChannelMappingWorkaround(String codecName) {
        return codecName.equals("OMX.google.opus.decoder") || codecName.equals("c2.android.opus.decoder") || codecName.equals("OMX.google.vorbis.decoder") || codecName.equals("c2.android.vorbis.decoder");
    }

    private final class AudioSinkListener implements AudioSink.Listener {
        private AudioSinkListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            MediaCodecAudioRenderer.this.onPositionDiscontinuity();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onSilenceSkipped() {
            MediaCodecAudioRenderer.this.hasPendingReportedSkippedSilence = true;
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onPositionAdvancing(long playoutStartSystemTimeMs) {
            MediaCodecAudioRenderer.this.hasReportedAudioPositionAdvancing = true;
            MediaCodecAudioRenderer.this.eventDispatcher.positionAdvancing(playoutStartSystemTimeMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onUnderrun(int bufferSize, long bufferSizeMs, long elapsedSinceLastFeedMs) {
            MediaCodecAudioRenderer.this.eventDispatcher.underrun(bufferSize, bufferSizeMs, elapsedSinceLastFeedMs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean skipSilenceEnabled) {
            MediaCodecAudioRenderer.this.eventDispatcher.skipSilenceEnabledChanged(skipSilenceEnabled);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onOffloadBufferEmptying() {
            Renderer.WakeupListener wakeupListener = MediaCodecAudioRenderer.this.getWakeupListener();
            if (wakeupListener != null) {
                wakeupListener.onWakeup();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onOffloadBufferFull() {
            Renderer.WakeupListener wakeupListener = MediaCodecAudioRenderer.this.getWakeupListener();
            if (wakeupListener != null) {
                wakeupListener.onSleep();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onAudioSinkError(Exception audioSinkError) {
            Log.e(MediaCodecAudioRenderer.TAG, "Audio sink error", audioSinkError);
            MediaCodecAudioRenderer.this.eventDispatcher.audioSinkError(audioSinkError);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onAudioCapabilitiesChanged() {
            MediaCodecAudioRenderer.this.onRendererCapabilitiesChanged();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig) {
            MediaCodecAudioRenderer.this.eventDispatcher.audioTrackInitialized(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig) {
            MediaCodecAudioRenderer.this.eventDispatcher.audioTrackReleased(audioTrackConfig);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onAudioSessionIdChanged(int audioSessionId) {
            if (Build.VERSION.SDK_INT >= 35 && MediaCodecAudioRenderer.this.loudnessCodecController != null) {
                MediaCodecAudioRenderer.this.loudnessCodecController.setAudioSessionId(audioSessionId);
            }
            MediaCodecAudioRenderer.this.eventDispatcher.audioSessionIdChanged(audioSessionId);
        }
    }
}
