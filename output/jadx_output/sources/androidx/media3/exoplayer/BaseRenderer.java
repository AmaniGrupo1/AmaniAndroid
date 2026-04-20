package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    private Clock clock;
    private RendererConfiguration configuration;
    private int index;
    private long lastResetPositionUs;
    private MediaSource.MediaPeriodId mediaPeriodId;
    private PlayerId playerId;
    private RendererCapabilities.Listener rendererCapabilitiesListener;
    private int state;
    private SampleStream stream;
    private Format[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final Object lock = new Object();
    private final FormatHolder formatHolder = new FormatHolder();
    private long readingPositionUs = Long.MIN_VALUE;
    private Timeline timeline = Timeline.EMPTY;

    public BaseRenderer(int trackType) {
        this.trackType = trackType;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void init(int index, PlayerId playerId, Clock clock) {
        this.index = index;
        this.playerId = playerId;
        this.clock = clock;
        onInit();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void enable(RendererConfiguration configuration, Format[] formats, SampleStream stream, long positionUs, boolean joining, boolean mayRenderStartOfStream, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        Preconditions.checkState(this.state == 0);
        this.configuration = configuration;
        this.mediaPeriodId = mediaPeriodId;
        this.state = 1;
        onEnabled(joining, mayRenderStartOfStream);
        replaceStream(formats, stream, startPositionUs, offsetUs, mediaPeriodId);
        resetPosition(startPositionUs, joining, true);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void start() throws ExoPlaybackException {
        Preconditions.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void replaceStream(Format[] formats, SampleStream stream, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        Preconditions.checkState(!this.streamIsFinal);
        this.stream = stream;
        this.mediaPeriodId = mediaPeriodId;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = startPositionUs;
        }
        this.streamFormats = formats;
        this.streamOffsetUs = offsetUs;
        onStreamChanged(formats, startPositionUs, offsetUs, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void maybeThrowStreamError() throws IOException {
        ((SampleStream) Preconditions.checkNotNull(this.stream)).maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setTimeline(Timeline timeline) {
        if (!Objects.equals(this.timeline, timeline)) {
            this.timeline = timeline;
            onTimelineChanged(this.timeline);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void resetPosition(long positionUs, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        resetPosition(positionUs, false, sampleStreamIsResetToKeyFrame);
    }

    private void resetPosition(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        this.streamIsFinal = false;
        this.lastResetPositionUs = positionUs;
        this.readingPositionUs = positionUs;
        if (!sampleStreamIsResetToKeyFrame) {
            sampleStreamIsResetToKeyFrame = skipSource(positionUs) != 0;
        }
        onPositionReset(positionUs, joining, sampleStreamIsResetToKeyFrame);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void stop() {
        Preconditions.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void disable() {
        Preconditions.checkState(this.state == 1);
        this.formatHolder.clear();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
        this.mediaPeriodId = null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        Preconditions.checkState(this.state == 0);
        this.formatHolder.clear();
        onReset();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void release() {
        Preconditions.checkState(this.state == 0);
        onRelease();
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void setListener(RendererCapabilities.Listener listener) {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = listener;
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void clearListener() {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = null;
        }
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
    }

    protected void onInit() {
    }

    protected void onEnabled(boolean joining, boolean mayRenderStartOfStream) throws ExoPlaybackException {
    }

    protected void onStreamChanged(Format[] formats, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
    }

    protected void onPositionReset(long positionUs, boolean joining, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
    }

    protected void onStarted() throws ExoPlaybackException {
    }

    protected void onStopped() {
    }

    protected void onDisabled() {
    }

    protected void onReset() {
    }

    protected void onRelease() {
    }

    protected void onTimelineChanged(Timeline timeline) {
    }

    protected final long getLastResetPositionUs() {
        return this.lastResetPositionUs;
    }

    protected final long getStreamOffsetUs() {
        return this.streamOffsetUs;
    }

    protected final FormatHolder getFormatHolder() {
        this.formatHolder.clear();
        return this.formatHolder;
    }

    protected final Format[] getStreamFormats() {
        return (Format[]) Preconditions.checkNotNull(this.streamFormats);
    }

    protected final RendererConfiguration getConfiguration() {
        return (RendererConfiguration) Preconditions.checkNotNull(this.configuration);
    }

    protected final int getIndex() {
        return this.index;
    }

    protected final PlayerId getPlayerId() {
        return (PlayerId) Preconditions.checkNotNull(this.playerId);
    }

    protected final Clock getClock() {
        return (Clock) Preconditions.checkNotNull(this.clock);
    }

    protected final Timeline getTimeline() {
        return this.timeline;
    }

    protected final MediaSource.MediaPeriodId getMediaPeriodId() {
        return this.mediaPeriodId;
    }

    protected final ExoPlaybackException createRendererException(Throwable cause, Format format, int errorCode) {
        return createRendererException(cause, format, false, errorCode);
    }

    protected final ExoPlaybackException createRendererException(Throwable cause, Format format, boolean isRecoverable, int errorCode) {
        int formatSupport;
        if (format != null && !this.throwRendererExceptionIsExecuting) {
            this.throwRendererExceptionIsExecuting = true;
            try {
                int formatSupport2 = RendererCapabilities.getFormatSupport(supportsFormat(format));
                this.throwRendererExceptionIsExecuting = false;
                formatSupport = formatSupport2;
            } catch (ExoPlaybackException e) {
                this.throwRendererExceptionIsExecuting = false;
                formatSupport = 4;
            } catch (Throwable th) {
                this.throwRendererExceptionIsExecuting = false;
                throw th;
            }
        } else {
            formatSupport = 4;
        }
        return ExoPlaybackException.createForRenderer(cause, getName(), getIndex(), format, formatSupport, this.mediaPeriodId, isRecoverable, errorCode);
    }

    protected final int readSource(FormatHolder formatHolder, DecoderInputBuffer buffer, int readFlags) {
        int result = ((SampleStream) Preconditions.checkNotNull(this.stream)).readData(formatHolder, buffer, readFlags);
        if (result == -4) {
            if (buffer.isEndOfStream()) {
                this.readingPositionUs = Long.MIN_VALUE;
                return this.streamIsFinal ? -4 : -3;
            }
            buffer.timeUs += this.streamOffsetUs;
            this.readingPositionUs = Math.max(this.readingPositionUs, buffer.timeUs);
        } else if (result == -5) {
            Format format = (Format) Preconditions.checkNotNull(formatHolder.format);
            if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                formatHolder.format = format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.streamOffsetUs).build();
            }
        }
        return result;
    }

    protected int skipSource(long positionUs) {
        return ((SampleStream) Preconditions.checkNotNull(this.stream)).skipData(positionUs - this.streamOffsetUs);
    }

    protected final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.streamIsFinal : ((SampleStream) Preconditions.checkNotNull(this.stream)).isReady();
    }

    protected final void onRendererCapabilitiesChanged() {
        RendererCapabilities.Listener listener;
        synchronized (this.lock) {
            listener = this.rendererCapabilitiesListener;
        }
        if (listener != null) {
            listener.onRendererCapabilitiesChanged(this);
        }
    }
}
