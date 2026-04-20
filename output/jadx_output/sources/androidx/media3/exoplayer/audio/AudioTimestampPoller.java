package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;

/* JADX INFO: loaded from: classes21.dex */
final class AudioTimestampPoller {
    private static final int ERROR_POLL_INTERVAL_US = 500000;
    private static final int FAST_POLL_INTERVAL_US = 10000;
    private static final int INITIALIZING_DURATION_US = 500000;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_POSITION_DRIFT_ADVANCING_TIMESTAMP_US = 1000;
    private static final int SLOW_POLL_INTERVAL_US = 10000000;
    private static final int STATE_ERROR = 4;
    private static final int STATE_INITIALIZING = 0;
    private static final int STATE_NO_TIMESTAMP = 3;
    private static final int STATE_TIMESTAMP = 1;
    private static final int STATE_TIMESTAMP_ADVANCING = 2;
    private static final int WAIT_FOR_ADVANCE_DURATION_US = 2000000;
    private final AudioTimestampWrapper audioTimestamp;
    private final AudioTrackPositionTracker.Listener errorListener;
    private long initialTimestampPositionFrames;
    private long initialTimestampSystemTimeUs;
    private long initializeSystemTimeUs;
    private long lastTimestampSampleTimeUs;
    private long sampleIntervalUs;
    private final int sampleRate;
    private int state;

    public AudioTimestampPoller(AudioTrack audioTrack, AudioTrackPositionTracker.Listener errorListener) {
        this.audioTimestamp = new AudioTimestampWrapper(audioTrack);
        this.sampleRate = audioTrack.getSampleRate();
        this.errorListener = errorListener;
        reset();
    }

    public void maybePollTimestamp(long systemTimeUs, float audioTrackPlaybackSpeed, long playbackHeadPositionEstimateUs, boolean forceUpdate) {
        float audioTrackPlaybackSpeed2;
        long systemTimeUs2;
        AudioTimestampPoller audioTimestampPoller;
        if (!forceUpdate && systemTimeUs - this.lastTimestampSampleTimeUs < this.sampleIntervalUs) {
            return;
        }
        this.lastTimestampSampleTimeUs = systemTimeUs;
        boolean updatedTimestamp = this.audioTimestamp.maybeUpdateTimestamp();
        if (updatedTimestamp) {
            checkTimestampIsPlausibleAndUpdateErrorState(systemTimeUs, audioTrackPlaybackSpeed, playbackHeadPositionEstimateUs);
            audioTrackPlaybackSpeed2 = audioTrackPlaybackSpeed;
            systemTimeUs2 = systemTimeUs;
            audioTimestampPoller = this;
        } else {
            audioTrackPlaybackSpeed2 = audioTrackPlaybackSpeed;
            systemTimeUs2 = systemTimeUs;
            audioTimestampPoller = this;
        }
        switch (audioTimestampPoller.state) {
            case 0:
                if (!updatedTimestamp) {
                    if (systemTimeUs2 - audioTimestampPoller.initializeSystemTimeUs > 500000) {
                        updateState(3);
                        return;
                    }
                    return;
                } else {
                    if (audioTimestampPoller.audioTimestamp.getTimestampSystemTimeUs() >= audioTimestampPoller.initializeSystemTimeUs) {
                        audioTimestampPoller.initialTimestampPositionFrames = audioTimestampPoller.audioTimestamp.getTimestampPositionFrames();
                        audioTimestampPoller.initialTimestampSystemTimeUs = audioTimestampPoller.audioTimestamp.getTimestampSystemTimeUs();
                        updateState(1);
                        return;
                    }
                    return;
                }
            case 1:
                if (updatedTimestamp) {
                    if (isTimestampAdvancingFromInitialTimestamp(systemTimeUs2, audioTrackPlaybackSpeed2)) {
                        updateState(2);
                        return;
                    } else if (systemTimeUs2 - audioTimestampPoller.initializeSystemTimeUs > SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US) {
                        updateState(3);
                        return;
                    } else {
                        audioTimestampPoller.initialTimestampPositionFrames = audioTimestampPoller.audioTimestamp.getTimestampPositionFrames();
                        audioTimestampPoller.initialTimestampSystemTimeUs = audioTimestampPoller.audioTimestamp.getTimestampSystemTimeUs();
                        return;
                    }
                }
                reset();
                return;
            case 2:
                if (!updatedTimestamp) {
                    reset();
                    return;
                }
                return;
            case 3:
                if (updatedTimestamp) {
                    reset();
                    return;
                }
                return;
            case 4:
                return;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean hasAdvancingTimestamp() {
        return this.state == 2;
    }

    public boolean isWaitingForAdvancingTimestamp() {
        return this.state == 0 || this.state == 1;
    }

    public void reset() {
        updateState(0);
    }

    public long getTimestampPositionUs(long systemTimeUs, float audioTrackPlaybackSpeed) {
        return computeTimestampPositionUs(systemTimeUs, audioTrackPlaybackSpeed);
    }

    public void expectTimestampFramePositionReset() {
        this.audioTimestamp.expectTimestampFramePositionReset();
    }

    private void updateState(int state) {
        this.state = state;
        switch (state) {
            case 0:
                this.lastTimestampSampleTimeUs = 0L;
                this.initialTimestampPositionFrames = -1L;
                this.initialTimestampSystemTimeUs = C.TIME_UNSET;
                this.initializeSystemTimeUs = System.nanoTime() / 1000;
                this.sampleIntervalUs = 10000L;
                return;
            case 1:
                this.sampleIntervalUs = 10000L;
                return;
            case 2:
            case 3:
                this.sampleIntervalUs = 10000000L;
                return;
            case 4:
                this.sampleIntervalUs = 500000L;
                return;
            default:
                throw new IllegalStateException();
        }
    }

    private boolean isTimestampAdvancingFromInitialTimestamp(long systemTimeUs, float audioTrackPlaybackSpeed) {
        if (this.audioTimestamp.getTimestampPositionFrames() <= this.initialTimestampPositionFrames) {
            return false;
        }
        long positionEstimateUsingInitialTimestampUs = computeTimestampPositionUs(this.initialTimestampPositionFrames, this.initialTimestampSystemTimeUs, systemTimeUs, audioTrackPlaybackSpeed);
        long positionEstimateUsingCurrentTimestampUs = computeTimestampPositionUs(systemTimeUs, audioTrackPlaybackSpeed);
        long positionDriftUs = Math.abs(positionEstimateUsingCurrentTimestampUs - positionEstimateUsingInitialTimestampUs);
        return positionDriftUs < 1000;
    }

    private long computeTimestampPositionUs(long systemTimeUs, float audioTrackPlaybackSpeed) {
        return computeTimestampPositionUs(this.audioTimestamp.getTimestampPositionFrames(), this.audioTimestamp.getTimestampSystemTimeUs(), systemTimeUs, audioTrackPlaybackSpeed);
    }

    private long computeTimestampPositionUs(long timestampPositionFrames, long timestampSystemTimeUs, long systemTimeUs, float audioTrackPlaybackSpeed) {
        long timestampPositionUs = Util.sampleCountToDurationUs(timestampPositionFrames, this.sampleRate);
        long elapsedSinceTimestampUs = systemTimeUs - timestampSystemTimeUs;
        return timestampPositionUs + Util.getMediaDurationForPlayoutDuration(elapsedSinceTimestampUs, audioTrackPlaybackSpeed);
    }

    private void checkTimestampIsPlausibleAndUpdateErrorState(long systemTimeUs, float audioTrackPlaybackSpeed, long playbackHeadPositionEstimateUs) {
        long timestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
        long timestampPositionUs = computeTimestampPositionUs(systemTimeUs, audioTrackPlaybackSpeed);
        if (Math.abs(timestampSystemTimeUs - systemTimeUs) > MAX_AUDIO_TIMESTAMP_OFFSET_US) {
            this.errorListener.onSystemTimeUsMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, systemTimeUs, playbackHeadPositionEstimateUs);
            updateState(4);
        } else if (Math.abs(timestampPositionUs - playbackHeadPositionEstimateUs) > MAX_AUDIO_TIMESTAMP_OFFSET_US) {
            this.errorListener.onPositionFramesMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, systemTimeUs, playbackHeadPositionEstimateUs);
            updateState(4);
        } else if (this.state == 4) {
            reset();
        }
    }

    private static final class AudioTimestampWrapper {
        private long accumulatedRawTimestampFramePosition;
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private final AudioTrack audioTrack;
        private boolean expectTimestampFramePositionReset;
        private long lastTimestampPositionFrames;
        private long lastTimestampRawPositionFrames;
        private long rawTimestampFramePositionWrapCount;

        public AudioTimestampWrapper(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public boolean maybeUpdateTimestamp() {
            boolean updated = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (updated) {
                long rawPositionFrames = this.audioTimestamp.framePosition;
                if (this.lastTimestampRawPositionFrames > rawPositionFrames) {
                    if (this.expectTimestampFramePositionReset) {
                        this.accumulatedRawTimestampFramePosition += this.lastTimestampRawPositionFrames;
                        this.expectTimestampFramePositionReset = false;
                    } else {
                        this.rawTimestampFramePositionWrapCount++;
                    }
                }
                this.lastTimestampRawPositionFrames = rawPositionFrames;
                this.lastTimestampPositionFrames = this.accumulatedRawTimestampFramePosition + rawPositionFrames + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return updated;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public void expectTimestampFramePositionReset() {
            this.expectTimestampFramePositionReset = true;
        }
    }
}
