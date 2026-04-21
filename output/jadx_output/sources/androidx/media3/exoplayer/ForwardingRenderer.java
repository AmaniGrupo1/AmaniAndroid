package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes21.dex */
public class ForwardingRenderer implements Renderer {
    private final Renderer renderer;

    public ForwardingRenderer(Renderer renderer) {
        this.renderer = renderer;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int messageType, Object message) throws ExoPlaybackException {
        this.renderer.handleMessage(messageType, message);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return this.renderer.getName();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public int getTrackType() {
        return this.renderer.getTrackType();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public RendererCapabilities getCapabilities() {
        return this.renderer.getCapabilities();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void init(int index, PlayerId playerId, Clock clock) {
        this.renderer.init(index, playerId, clock);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return this.renderer.getMediaClock();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public int getState() {
        return this.renderer.getState();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enable(RendererConfiguration configuration, Format[] formats, SampleStream stream, long positionUs, boolean joining, boolean mayRenderStartOfStream, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.enable(configuration, formats, stream, positionUs, joining, mayRenderStartOfStream, startPositionUs, offsetUs, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void start() throws ExoPlaybackException {
        this.renderer.start();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void replaceStream(Format[] formats, SampleStream stream, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.replaceStream(formats, stream, startPositionUs, offsetUs, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public SampleStream getStream() {
        return this.renderer.getStream();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean hasReadStreamToEnd() {
        return this.renderer.hasReadStreamToEnd();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long getReadingPositionUs() {
        return this.renderer.getReadingPositionUs();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long getDurationToProgressUs(long positionUs, long elapsedRealtimeUs) {
        return this.renderer.getDurationToProgressUs(positionUs, elapsedRealtimeUs);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setCurrentStreamFinal() {
        this.renderer.setCurrentStreamFinal();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isCurrentStreamFinal() {
        return this.renderer.isCurrentStreamFinal();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void maybeThrowStreamError() throws IOException {
        this.renderer.maybeThrowStreamError();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void resetPosition(long positionUs, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        this.renderer.resetPosition(positionUs, sampleStreamIsResetToKeyFrame);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean supportsResetPositionWithoutKeyFrameReset(long positionUs) {
        return this.renderer.supportsResetPositionWithoutKeyFrameReset(positionUs);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float currentPlaybackSpeed, float targetPlaybackSpeed) throws ExoPlaybackException {
        this.renderer.setPlaybackSpeed(currentPlaybackSpeed, targetPlaybackSpeed);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        this.renderer.enableMayRenderStartOfStream();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setTimeline(Timeline timeline) {
        this.renderer.setTimeline(timeline);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        this.renderer.render(positionUs, elapsedRealtimeUs);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.renderer.isReady();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.renderer.isEnded();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void stop() {
        this.renderer.stop();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void disable() {
        this.renderer.disable();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void reset() {
        this.renderer.reset();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void release() {
        this.renderer.release();
    }
}
