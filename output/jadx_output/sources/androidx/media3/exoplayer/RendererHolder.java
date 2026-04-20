package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
class RendererHolder {
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_PRIMARY = 0;
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_SECONDARY = 1;
    static final int RENDERER_PREWARMING_STATE_PREWARMING_PRIMARY = 2;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_PRIMARY = 4;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_SECONDARY = 3;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_COMPLETED = 1;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_DISABLE_OFFLOAD_SCHEDULING = 2;
    private final int index;
    private final Renderer primaryRenderer;
    private final Renderer secondaryRenderer;
    private int prewarmingState = 0;
    private boolean primaryRequiresReset = false;
    private boolean secondaryRequiresReset = false;

    public RendererHolder(Renderer renderer, Renderer secondaryRenderer, int index) {
        this.primaryRenderer = renderer;
        this.index = index;
        this.secondaryRenderer = secondaryRenderer;
    }

    public boolean hasSecondary() {
        return this.secondaryRenderer != null;
    }

    public void startPrewarming() {
        int i;
        Preconditions.checkState(!isPrewarming());
        if (isRendererEnabled(this.primaryRenderer)) {
            i = 3;
        } else if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            i = 4;
        } else {
            i = 2;
        }
        this.prewarmingState = i;
    }

    public boolean isPrewarming() {
        return isPrimaryRendererPrewarming() || isSecondaryRendererPrewarming();
    }

    private boolean isPrimaryRendererPrewarming() {
        return this.prewarmingState == 2 || this.prewarmingState == 4;
    }

    private boolean isSecondaryRendererPrewarming() {
        return this.prewarmingState == 3;
    }

    public int getEnabledRendererCount() {
        return 0 + (isRendererEnabled(this.primaryRenderer) ? 1 : 0) + ((this.secondaryRenderer == null || !isRendererEnabled(this.secondaryRenderer)) ? 0 : 1);
    }

    public int getTrackType() {
        return this.primaryRenderer.getTrackType();
    }

    public long getReadingPositionUs(MediaPeriodHolder period) {
        return ((Renderer) Objects.requireNonNull(getRendererReadingFromPeriod(period))).getReadingPositionUs();
    }

    public boolean hasReadPeriodToEnd(MediaPeriodHolder mediaPeriodHolder) {
        Renderer renderer = (Renderer) Preconditions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder));
        return renderer.hasReadStreamToEnd();
    }

    public void setCurrentStreamFinal(MediaPeriodHolder mediaPeriodHolder, long streamEndPositionUs) {
        Renderer renderer = (Renderer) Preconditions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder));
        setCurrentStreamFinalInternal(renderer, streamEndPositionUs);
    }

    public void maybeSetOldStreamToFinal(TrackSelectorResult oldTrackSelectorResult, TrackSelectorResult newTrackSelectorResult, long streamEndPositionUs) {
        boolean oldRendererEnabled = oldTrackSelectorResult.isRendererEnabled(this.index);
        boolean newRendererEnabled = newTrackSelectorResult.isRendererEnabled(this.index);
        boolean isPrimaryOldRenderer = this.secondaryRenderer == null || this.prewarmingState == 3 || (this.prewarmingState == 0 && isRendererEnabled(this.primaryRenderer));
        Renderer oldRenderer = isPrimaryOldRenderer ? this.primaryRenderer : (Renderer) Preconditions.checkNotNull(this.secondaryRenderer);
        if (oldRendererEnabled && !oldRenderer.isCurrentStreamFinal()) {
            boolean isNoSampleRenderer = getTrackType() == -2;
            RendererConfiguration oldConfig = oldTrackSelectorResult.rendererConfigurations[this.index];
            RendererConfiguration newConfig = newTrackSelectorResult.rendererConfigurations[this.index];
            if (!newRendererEnabled || !Objects.equals(newConfig, oldConfig) || isNoSampleRenderer || isPrewarming()) {
                setCurrentStreamFinalInternal(oldRenderer, streamEndPositionUs);
            }
        }
    }

    public void setAllNonPrewarmingRendererStreamsFinal(long streamEndPositionUs) {
        if (isRendererEnabled(this.primaryRenderer) && this.prewarmingState != 4 && this.prewarmingState != 2) {
            setCurrentStreamFinalInternal(this.primaryRenderer, streamEndPositionUs);
        }
        if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer) && this.prewarmingState != 3) {
            setCurrentStreamFinalInternal(this.secondaryRenderer, streamEndPositionUs);
        }
    }

    private void setCurrentStreamFinalInternal(Renderer renderer, long streamEndPositionUs) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof TextRenderer) {
            ((TextRenderer) renderer).setFinalStreamEndPositionUs(streamEndPositionUs);
        }
    }

    public long getMinDurationToProgressUs(long rendererPositionUs, long rendererPositionElapsedRealtimeUs) {
        long minDurationToProgress;
        if (isRendererEnabled(this.primaryRenderer)) {
            minDurationToProgress = this.primaryRenderer.getDurationToProgressUs(rendererPositionUs, rendererPositionElapsedRealtimeUs);
        } else {
            minDurationToProgress = Long.MAX_VALUE;
        }
        if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            return Math.min(minDurationToProgress, this.secondaryRenderer.getDurationToProgressUs(rendererPositionUs, rendererPositionElapsedRealtimeUs));
        }
        return minDurationToProgress;
    }

    public void enableMayRenderStartOfStream() {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.enableMayRenderStartOfStream();
        } else if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            this.secondaryRenderer.enableMayRenderStartOfStream();
        }
    }

    public void setPlaybackSpeed(float currentPlaybackSpeed, float targetPlaybackSpeed) throws ExoPlaybackException {
        this.primaryRenderer.setPlaybackSpeed(currentPlaybackSpeed, targetPlaybackSpeed);
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.setPlaybackSpeed(currentPlaybackSpeed, targetPlaybackSpeed);
        }
    }

    public void setTimeline(Timeline timeline) {
        this.primaryRenderer.setTimeline(timeline);
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.setTimeline(timeline);
        }
    }

    public boolean isEnded() {
        boolean renderersEnded = isRendererEnabled(this.primaryRenderer) ? true & this.primaryRenderer.isEnded() : true;
        if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            return renderersEnded & this.secondaryRenderer.isEnded();
        }
        return renderersEnded;
    }

    public boolean isReadingFromPeriod(MediaPeriodHolder period) {
        return getRendererReadingFromPeriod(period) != null;
    }

    public boolean isPrewarmingPeriod(MediaPeriodHolder period) {
        boolean isPrimaryRendererPrewarming = isPrimaryRendererPrewarming() && getRendererReadingFromPeriod(period) == this.primaryRenderer;
        boolean isSecondaryRendererPrewarming = isSecondaryRendererPrewarming() && getRendererReadingFromPeriod(period) == this.secondaryRenderer;
        return isPrimaryRendererPrewarming || isSecondaryRendererPrewarming;
    }

    public boolean hasFinishedReadingFromPeriod(MediaPeriodHolder periodHolder) {
        return hasFinishedReadingFromPeriodInternal(periodHolder, this.primaryRenderer) && hasFinishedReadingFromPeriodInternal(periodHolder, this.secondaryRenderer);
    }

    private boolean hasFinishedReadingFromPeriodInternal(MediaPeriodHolder readingPeriodHolder, Renderer renderer) {
        if (renderer == null) {
            return true;
        }
        SampleStream sampleStream = readingPeriodHolder.sampleStreams[this.index];
        if (renderer.getStream() == null || (renderer.getStream() == sampleStream && (sampleStream == null || renderer.hasReadStreamToEnd() || hasReachedServerSideInsertedAdsTransition(renderer, readingPeriodHolder)))) {
            return true;
        }
        MediaPeriodHolder followingPeriod = readingPeriodHolder.getNext();
        return followingPeriod != null && followingPeriod.sampleStreams[this.index] == renderer.getStream();
    }

    private boolean hasReachedServerSideInsertedAdsTransition(Renderer renderer, MediaPeriodHolder reading) {
        MediaPeriodHolder nextPeriod = reading.getNext();
        return reading.info.isFollowedByTransitionToSameStream && nextPeriod != null && nextPeriod.prepared && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.getReadingPositionUs() >= nextPeriod.getStartPositionRendererTime());
    }

    public void render(long rendererPositionUs, long rendererPositionElapsedRealtimeUs) throws ExoPlaybackException {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.render(rendererPositionUs, rendererPositionElapsedRealtimeUs);
        }
        if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            this.secondaryRenderer.render(rendererPositionUs, rendererPositionElapsedRealtimeUs);
        }
    }

    public boolean allowsPlayback(MediaPeriodHolder playingPeriodHolder) {
        Renderer renderer = getRendererReadingFromPeriod(playingPeriodHolder);
        return renderer == null || renderer.hasReadStreamToEnd() || renderer.isReady() || renderer.isEnded();
    }

    public void maybeThrowStreamError(MediaPeriodHolder mediaPeriodHolder) throws IOException {
        ((Renderer) Preconditions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).maybeThrowStreamError();
    }

    public void start() throws ExoPlaybackException {
        if (this.primaryRenderer.getState() == 1 && this.prewarmingState != 4) {
            this.primaryRenderer.start();
        } else if (this.secondaryRenderer != null && this.secondaryRenderer.getState() == 1 && this.prewarmingState != 3) {
            this.secondaryRenderer.start();
        }
    }

    public void stop() {
        if (isRendererEnabled(this.primaryRenderer)) {
            ensureStopped(this.primaryRenderer);
        }
        if (this.secondaryRenderer != null && isRendererEnabled(this.secondaryRenderer)) {
            ensureStopped(this.secondaryRenderer);
        }
    }

    private void ensureStopped(Renderer renderer) {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    public void enable(RendererConfiguration configuration, ExoTrackSelection trackSelection, SampleStream stream, long positionUs, boolean joining, boolean mayRenderStartOfStream, long startPositionUs, long offsetUs, MediaSource.MediaPeriodId mediaPeriodId, DefaultMediaClock mediaClock) throws ExoPlaybackException {
        Format[] formats = getFormats(trackSelection);
        boolean enablePrimary = this.prewarmingState == 0 || this.prewarmingState == 2 || this.prewarmingState == 4;
        if (enablePrimary) {
            this.primaryRequiresReset = true;
            this.primaryRenderer.enable(configuration, formats, stream, positionUs, joining, mayRenderStartOfStream, startPositionUs, offsetUs, mediaPeriodId);
            mediaClock.onRendererEnabled(this.primaryRenderer);
        } else {
            this.secondaryRequiresReset = true;
            ((Renderer) Preconditions.checkNotNull(this.secondaryRenderer)).enable(configuration, formats, stream, positionUs, joining, mayRenderStartOfStream, startPositionUs, offsetUs, mediaPeriodId);
            mediaClock.onRendererEnabled(this.secondaryRenderer);
        }
    }

    public void handleMessage(int messageType, Object message, MediaPeriodHolder mediaPeriod) throws ExoPlaybackException {
        Renderer renderer = (Renderer) Preconditions.checkNotNull(getRendererReadingFromPeriod(mediaPeriod));
        renderer.handleMessage(messageType, message);
    }

    public void setScrubbingMode(ScrubbingModeParameters scrubbingModeParameters) throws ExoPlaybackException {
        this.primaryRenderer.handleMessage(18, scrubbingModeParameters);
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.handleMessage(18, scrubbingModeParameters);
        }
    }

    public void disable(DefaultMediaClock mediaClock) throws ExoPlaybackException {
        disableRenderer(this.primaryRenderer, mediaClock);
        if (this.secondaryRenderer != null) {
            boolean shouldTransferResources = isRendererEnabled(this.secondaryRenderer) && this.prewarmingState != 3;
            disableRenderer(this.secondaryRenderer, mediaClock);
            maybeResetRenderer(false);
            if (shouldTransferResources) {
                transferResources(true);
            }
        }
        this.prewarmingState = 0;
    }

    public void maybeHandlePrewarmingTransition() throws ExoPlaybackException {
        if (this.prewarmingState == 3 || this.prewarmingState == 4) {
            transferResources(this.prewarmingState == 4);
            this.prewarmingState = this.prewarmingState != 4 ? 1 : 0;
        } else if (this.prewarmingState == 2) {
            this.prewarmingState = 0;
        }
    }

    private void transferResources(boolean transferToPrimary) throws ExoPlaybackException {
        if (transferToPrimary) {
            ((Renderer) Preconditions.checkNotNull(this.secondaryRenderer)).handleMessage(17, this.primaryRenderer);
        } else {
            this.primaryRenderer.handleMessage(17, Preconditions.checkNotNull(this.secondaryRenderer));
        }
    }

    public void disablePrewarming(DefaultMediaClock mediaClock) {
        if (!isPrewarming()) {
            return;
        }
        boolean isPrewarmingPrimary = this.prewarmingState == 4 || this.prewarmingState == 2;
        boolean isSecondaryActiveRenderer = this.prewarmingState == 4;
        disableRenderer(isPrewarmingPrimary ? this.primaryRenderer : (Renderer) Preconditions.checkNotNull(this.secondaryRenderer), mediaClock);
        maybeResetRenderer(isPrewarmingPrimary);
        this.prewarmingState = isSecondaryActiveRenderer ? 1 : 0;
    }

    public void maybeDisableOrResetPosition(SampleStream sampleStream, DefaultMediaClock mediaClock, long rendererPositionUs, boolean streamReset) throws ExoPlaybackException {
        maybeDisableOrResetPositionInternal(this.primaryRenderer, sampleStream, mediaClock, rendererPositionUs, streamReset);
        if (this.secondaryRenderer != null) {
            maybeDisableOrResetPositionInternal(this.secondaryRenderer, sampleStream, mediaClock, rendererPositionUs, streamReset);
        }
    }

    private void maybeDisableOrResetPositionInternal(Renderer renderer, SampleStream sampleStream, DefaultMediaClock mediaClock, long rendererPositionUs, boolean streamReset) throws ExoPlaybackException {
        if (isRendererEnabled(renderer)) {
            if (sampleStream != renderer.getStream()) {
                disableRenderer(renderer, mediaClock);
            } else if (streamReset) {
                renderer.resetPosition(rendererPositionUs, true);
            }
        }
    }

    private void disableRenderer(Renderer renderer, DefaultMediaClock mediaClock) {
        Preconditions.checkState(this.primaryRenderer == renderer || this.secondaryRenderer == renderer);
        if (!isRendererEnabled(renderer)) {
            return;
        }
        mediaClock.onRendererDisabled(renderer);
        ensureStopped(renderer);
        renderer.disable();
    }

    public void resetPosition(MediaPeriodHolder playingPeriod, long positionUs, boolean sampleStreamIsResetToKeyFrame) throws ExoPlaybackException {
        Renderer renderer = getRendererReadingFromPeriod(playingPeriod);
        if (renderer != null) {
            renderer.resetPosition(positionUs, sampleStreamIsResetToKeyFrame);
        }
    }

    public boolean supportsResetPositionWithoutKeyFrameReset(MediaPeriodHolder playingPeriod, long positionUs) {
        Renderer renderer = getRendererReadingFromPeriod(playingPeriod);
        return renderer != null && renderer.supportsResetPositionWithoutKeyFrameReset(positionUs);
    }

    public void reset() {
        if (!isRendererEnabled(this.primaryRenderer)) {
            maybeResetRenderer(true);
        }
        if (this.secondaryRenderer != null && !isRendererEnabled(this.secondaryRenderer)) {
            maybeResetRenderer(false);
        }
    }

    private void maybeResetRenderer(boolean resetPrimary) {
        if (resetPrimary) {
            if (this.primaryRequiresReset) {
                this.primaryRenderer.reset();
                this.primaryRequiresReset = false;
                return;
            }
            return;
        }
        if (this.secondaryRequiresReset) {
            ((Renderer) Preconditions.checkNotNull(this.secondaryRenderer)).reset();
            this.secondaryRequiresReset = false;
        }
    }

    public int replaceStreamsOrDisableRendererForTransition(MediaPeriodHolder readingPeriodHolder, TrackSelectorResult newTrackSelectorResult, DefaultMediaClock mediaClock) throws ExoPlaybackException {
        int primaryRendererResult = replaceStreamsOrDisableRendererForTransitionInternal(this.primaryRenderer, readingPeriodHolder, newTrackSelectorResult, mediaClock);
        int secondaryRendererResult = replaceStreamsOrDisableRendererForTransitionInternal(this.secondaryRenderer, readingPeriodHolder, newTrackSelectorResult, mediaClock);
        if (primaryRendererResult == 1) {
            return secondaryRendererResult;
        }
        return primaryRendererResult;
    }

    private int replaceStreamsOrDisableRendererForTransitionInternal(Renderer renderer, MediaPeriodHolder readingPeriodHolder, TrackSelectorResult newTrackSelectorResult, DefaultMediaClock mediaClock) throws ExoPlaybackException {
        if (renderer == null || !isRendererEnabled(renderer) || ((renderer == this.primaryRenderer && isPrimaryRendererPrewarming()) || (renderer == this.secondaryRenderer && isSecondaryRendererPrewarming()))) {
            return 1;
        }
        boolean rendererIsReadingOldStream = renderer.getStream() != readingPeriodHolder.sampleStreams[this.index];
        boolean rendererShouldBeEnabled = newTrackSelectorResult.isRendererEnabled(this.index);
        if (rendererShouldBeEnabled && !rendererIsReadingOldStream) {
            return 1;
        }
        if (!renderer.isCurrentStreamFinal()) {
            Format[] formats = getFormats(newTrackSelectorResult.selections[this.index]);
            renderer.replaceStream(formats, (SampleStream) Preconditions.checkNotNull(readingPeriodHolder.sampleStreams[this.index]), readingPeriodHolder.getStartPositionRendererTime(), readingPeriodHolder.getRendererOffset(), readingPeriodHolder.info.id);
            return 3;
        }
        if (!renderer.isEnded()) {
            return 0;
        }
        disableRenderer(renderer, mediaClock);
        if (!rendererShouldBeEnabled || isPrewarming()) {
            maybeResetRenderer(renderer == this.primaryRenderer);
        }
        return 1;
    }

    private static Format[] getFormats(ExoTrackSelection newSelection) {
        int length = newSelection != null ? newSelection.length() : 0;
        Format[] formats = new Format[length];
        for (int i = 0; i < length; i++) {
            formats[i] = ((ExoTrackSelection) Preconditions.checkNotNull(newSelection)).getFormat(i);
        }
        return formats;
    }

    public void release() {
        this.primaryRenderer.release();
        this.primaryRequiresReset = false;
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.release();
            this.secondaryRequiresReset = false;
        }
    }

    public void setVideoOutput(Object videoOutput) throws ExoPlaybackException {
        if (getTrackType() != 2) {
            return;
        }
        if (this.prewarmingState == 4 || this.prewarmingState == 1) {
            ((Renderer) Preconditions.checkNotNull(this.secondaryRenderer)).handleMessage(1, videoOutput);
        } else {
            this.primaryRenderer.handleMessage(1, videoOutput);
        }
    }

    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) throws ExoPlaybackException {
        if (getTrackType() != 2 && getTrackType() != 4) {
            return;
        }
        this.primaryRenderer.handleMessage(7, videoFrameMetadataListener);
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.handleMessage(7, videoFrameMetadataListener);
        }
    }

    public void setVolume(float volume) throws ExoPlaybackException {
        if (getTrackType() != 1) {
            return;
        }
        this.primaryRenderer.handleMessage(2, Float.valueOf(volume));
        if (this.secondaryRenderer != null) {
            this.secondaryRenderer.handleMessage(2, Float.valueOf(volume));
        }
    }

    public boolean isRendererEnabled() {
        boolean checkPrimary = this.prewarmingState == 0 || this.prewarmingState == 2 || this.prewarmingState == 4;
        if (checkPrimary) {
            return isRendererEnabled(this.primaryRenderer);
        }
        return isRendererEnabled((Renderer) Preconditions.checkNotNull(this.secondaryRenderer));
    }

    private static boolean isRendererEnabled(Renderer renderer) {
        return renderer.getState() != 0;
    }

    private Renderer getRendererReadingFromPeriod(MediaPeriodHolder period) {
        if (period == null || period.sampleStreams[this.index] == null) {
            return null;
        }
        if (this.primaryRenderer.getStream() == period.sampleStreams[this.index]) {
            return this.primaryRenderer;
        }
        if (this.secondaryRenderer == null || this.secondaryRenderer.getStream() != period.sampleStreams[this.index]) {
            return null;
        }
        return this.secondaryRenderer;
    }
}
