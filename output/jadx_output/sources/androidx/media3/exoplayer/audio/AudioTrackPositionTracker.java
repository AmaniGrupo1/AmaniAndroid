package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.C;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.work.WorkRequest;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes21.dex */
final class AudioTrackPositionTracker {
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final long MAX_LATENCY_US = 10000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MAX_POSITION_DRIFT_FOR_SMOOTHING_US = 1000000;
    private static final int MAX_POSITION_SMOOTHING_SPEED_CHANGE_PERCENT = 10;
    private static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final long RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS = 5;
    private AudioTimestampPoller audioTimestampPoller;
    private final AudioTrack audioTrack;
    private float audioTrackPlaybackSpeed;
    private final long bufferSizeUs;
    private final Clock clock;
    private long endPlaybackHeadPosition;
    private boolean expectRawPlaybackHeadReset;
    private long forceResetWorkaroundTimeMs;
    private Method getLatencyMethod;
    private final boolean isOutputPcm;
    private long lastLatencySampleTimeUs;
    private long lastPlayheadSampleTimeUs;
    private long lastPositionUs;
    private long lastRawPlaybackHeadPositionSampleTimeMs;
    private long lastSystemTimeUs;
    private long latencyUs;
    private final Listener listener;
    private int nextPlayheadOffsetIndex;
    private long onPositionAdvancingFromPositionUs;
    private final int outputSampleRate;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private long rawPlaybackHeadPosition;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;
    private long sumRawPlaybackHeadPosition;

    public interface Listener {
        void onInvalidLatency(long j);

        void onPositionAdvancing(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);
    }

    public AudioTrackPositionTracker(Listener listener, Clock clock, AudioTrack audioTrack, int outputEncoding, int outputPcmFrameSize, int bufferSize) {
        long jSampleCountToDurationUs;
        this.listener = (Listener) Preconditions.checkNotNull(listener);
        this.clock = clock;
        this.audioTrack = audioTrack;
        try {
            this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException e) {
        }
        this.playheadOffsets = new long[10];
        this.lastSystemTimeUs = C.TIME_UNSET;
        this.lastPositionUs = C.TIME_UNSET;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack, listener);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.isOutputPcm = Util.isEncodingLinearPcm(outputEncoding);
        if (this.isOutputPcm) {
            jSampleCountToDurationUs = Util.sampleCountToDurationUs(bufferSize / outputPcmFrameSize, this.outputSampleRate);
        } else {
            jSampleCountToDurationUs = -9223372036854775807L;
        }
        this.bufferSizeUs = jSampleCountToDurationUs;
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.expectRawPlaybackHeadReset = false;
        this.sumRawPlaybackHeadPosition = 0L;
        this.stopTimestampUs = C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
    }

    public void setAudioTrackPlaybackSpeed(float audioTrackPlaybackSpeed) {
        this.audioTrackPlaybackSpeed = audioTrackPlaybackSpeed;
        this.audioTimestampPoller.reset();
        resetSyncParams();
    }

    public long getCurrentPositionUs() {
        long playbackHeadPositionEstimateUs;
        AudioTrack audioTrack = (AudioTrack) Preconditions.checkNotNull(this.audioTrack);
        if (audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long systemTimeUs = this.clock.nanoTime() / 1000;
        boolean useGetTimestampMode = this.audioTimestampPoller.hasAdvancingTimestamp();
        if (useGetTimestampMode) {
            playbackHeadPositionEstimateUs = this.audioTimestampPoller.getTimestampPositionUs(systemTimeUs, this.audioTrackPlaybackSpeed);
        } else {
            playbackHeadPositionEstimateUs = getPlaybackHeadPositionEstimateUs(systemTimeUs);
        }
        long positionUs = playbackHeadPositionEstimateUs;
        int audioTrackPlayState = audioTrack.getPlayState();
        if (audioTrackPlayState == 3) {
            if (useGetTimestampMode || !this.audioTimestampPoller.isWaitingForAdvancingTimestamp()) {
                maybeTriggerOnPositionAdvancingCallback(positionUs);
            }
            if (this.lastSystemTimeUs != C.TIME_UNSET) {
                long elapsedSystemTimeUs = systemTimeUs - this.lastSystemTimeUs;
                long positionDiffUs = positionUs - this.lastPositionUs;
                long expectedPositionDiffUs = Util.getMediaDurationForPlayoutDuration(elapsedSystemTimeUs, this.audioTrackPlaybackSpeed);
                long expectedPositionUs = this.lastPositionUs + expectedPositionDiffUs;
                long positionDriftUs = Math.abs(expectedPositionUs - positionUs);
                if (positionDiffUs != 0 && positionDriftUs < 1000000) {
                    long maxAllowedDriftUs = (10 * expectedPositionDiffUs) / 100;
                    positionUs = Util.constrainValue(positionUs, expectedPositionUs - maxAllowedDriftUs, expectedPositionUs + maxAllowedDriftUs);
                }
            }
            this.lastSystemTimeUs = systemTimeUs;
            this.lastPositionUs = positionUs;
        } else if (audioTrackPlayState == 1) {
            maybeTriggerOnPositionAdvancingCallback(positionUs);
        }
        return positionUs;
    }

    public void start() {
        if (this.stopTimestampUs != C.TIME_UNSET) {
            this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        }
        this.onPositionAdvancingFromPositionUs = getPlaybackHeadPositionUs();
        this.audioTimestampPoller.reset();
    }

    public boolean isPlaying() {
        return ((AudioTrack) Preconditions.checkNotNull(this.audioTrack)).getPlayState() == 3;
    }

    public boolean isStalled(long writtenFrames) {
        return this.forceResetWorkaroundTimeMs != C.TIME_UNSET && writtenFrames > 0 && this.clock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS;
    }

    public void handleEndOfStream(long writtenFrames) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        this.endPlaybackHeadPosition = writtenFrames;
    }

    public void pause() {
        resetSyncParams();
        if (this.stopTimestampUs == C.TIME_UNSET) {
            this.audioTimestampPoller.reset();
        }
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
    }

    public void expectRawPlaybackHeadReset() {
        this.expectRawPlaybackHeadReset = true;
        this.audioTimestampPoller.expectTimestampFramePositionReset();
    }

    public void reset() {
        resetSyncParams();
        this.audioTimestampPoller = new AudioTimestampPoller(this.audioTrack, this.listener);
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.expectRawPlaybackHeadReset = false;
        this.sumRawPlaybackHeadPosition = 0L;
        this.stopTimestampUs = C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
    }

    private void maybeTriggerOnPositionAdvancingCallback(long positionUs) {
        if (this.onPositionAdvancingFromPositionUs == C.TIME_UNSET || positionUs < this.onPositionAdvancingFromPositionUs) {
            return;
        }
        long mediaDurationSinceResumeUs = positionUs - this.onPositionAdvancingFromPositionUs;
        long playoutDurationSinceLastPositionUs = Util.getPlayoutDurationForMediaDuration(mediaDurationSinceResumeUs, this.audioTrackPlaybackSpeed);
        long playoutStartSystemTimeMs = this.clock.currentTimeMillis() - Util.usToMs(playoutDurationSinceLastPositionUs);
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
        this.listener.onPositionAdvancing(playoutStartSystemTimeMs);
    }

    private void maybeSampleSyncParams() {
        long systemTimeUs = this.clock.nanoTime() / 1000;
        if (systemTimeUs - this.lastPlayheadSampleTimeUs >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            long playbackPositionUs = getPlaybackHeadPositionUs();
            if (playbackPositionUs == 0) {
                return;
            }
            this.playheadOffsets[this.nextPlayheadOffsetIndex] = Util.getPlayoutDurationForMediaDuration(playbackPositionUs, this.audioTrackPlaybackSpeed) - systemTimeUs;
            this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
            if (this.playheadOffsetCount < 10) {
                this.playheadOffsetCount++;
            }
            this.lastPlayheadSampleTimeUs = systemTimeUs;
            this.smoothedPlayheadOffsetUs = 0L;
            for (int i = 0; i < this.playheadOffsetCount; i++) {
                this.smoothedPlayheadOffsetUs += this.playheadOffsets[i] / ((long) this.playheadOffsetCount);
            }
        }
        boolean latencyUpdated = maybeUpdateLatency(systemTimeUs);
        this.audioTimestampPoller.maybePollTimestamp(systemTimeUs, this.audioTrackPlaybackSpeed, getPlaybackHeadPositionEstimateUs(systemTimeUs), latencyUpdated);
    }

    private boolean maybeUpdateLatency(long systemTimeUs) {
        long previousLatencyUs = this.latencyUs;
        if (this.isOutputPcm && this.getLatencyMethod != null && systemTimeUs - this.lastLatencySampleTimeUs >= 500000) {
            try {
                this.latencyUs = (((long) ((Integer) Util.castNonNull((Integer) this.getLatencyMethod.invoke(Preconditions.checkNotNull(this.audioTrack), new Object[0]))).intValue()) * 1000) - this.bufferSizeUs;
                this.latencyUs = Math.max(this.latencyUs, 0L);
                if (this.latencyUs > MAX_LATENCY_US) {
                    this.listener.onInvalidLatency(this.latencyUs);
                    this.latencyUs = 0L;
                }
            } catch (Exception e) {
                this.getLatencyMethod = null;
            }
            this.lastLatencySampleTimeUs = systemTimeUs;
        }
        return previousLatencyUs != this.latencyUs;
    }

    private long getPlaybackHeadPositionEstimateUs(long systemTimeUs) {
        long positionUs;
        if (this.playheadOffsetCount != 0) {
            long positionUs2 = this.smoothedPlayheadOffsetUs;
            positionUs = Util.getMediaDurationForPlayoutDuration(positionUs2 + systemTimeUs, this.audioTrackPlaybackSpeed);
        } else if (this.stopTimestampUs != C.TIME_UNSET) {
            positionUs = Util.sampleCountToDurationUs(getSimulatedPlaybackHeadPositionAfterStop(), this.outputSampleRate);
        } else {
            positionUs = getPlaybackHeadPositionUs();
        }
        long positionUs3 = Math.max(0L, positionUs - this.latencyUs);
        if (this.stopTimestampUs != C.TIME_UNSET) {
            return Math.min(Util.sampleCountToDurationUs(this.endPlaybackHeadPosition, this.outputSampleRate), positionUs3);
        }
        return positionUs3;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastPositionUs = C.TIME_UNSET;
        this.lastSystemTimeUs = C.TIME_UNSET;
    }

    private long getPlaybackHeadPositionUs() {
        return Util.sampleCountToDurationUs(getPlaybackHeadPosition(), this.outputSampleRate);
    }

    private long getPlaybackHeadPosition() {
        if (this.stopTimestampUs != C.TIME_UNSET) {
            long simulatedPlaybackHeadPositionAfterStop = getSimulatedPlaybackHeadPositionAfterStop();
            return Math.min(this.endPlaybackHeadPosition, simulatedPlaybackHeadPositionAfterStop);
        }
        long currentTimeMs = this.clock.elapsedRealtime();
        if (currentTimeMs - this.lastRawPlaybackHeadPositionSampleTimeMs >= RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS) {
            updateRawPlaybackHeadPosition(currentTimeMs);
            this.lastRawPlaybackHeadPositionSampleTimeMs = currentTimeMs;
        }
        return this.rawPlaybackHeadPosition + this.sumRawPlaybackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long getSimulatedPlaybackHeadPositionAfterStop() {
        if (((AudioTrack) Preconditions.checkNotNull(this.audioTrack)).getPlayState() == 2) {
            return this.stopPlaybackHeadPosition;
        }
        long elapsedTimeSinceStopUs = Util.msToUs(this.clock.elapsedRealtime()) - this.stopTimestampUs;
        long mediaTimeSinceStopUs = Util.getMediaDurationForPlayoutDuration(elapsedTimeSinceStopUs, this.audioTrackPlaybackSpeed);
        long framesSinceStop = Util.durationUsToSampleCount(mediaTimeSinceStopUs, this.outputSampleRate);
        return this.stopPlaybackHeadPosition + framesSinceStop;
    }

    private void updateRawPlaybackHeadPosition(long currentTimeMs) {
        AudioTrack audioTrack = (AudioTrack) Preconditions.checkNotNull(this.audioTrack);
        int state = audioTrack.getPlayState();
        if (state == 1) {
            return;
        }
        long rawPlaybackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (Build.VERSION.SDK_INT <= 29) {
            if (rawPlaybackHeadPosition == 0 && this.rawPlaybackHeadPosition > 0 && state == 3) {
                if (this.forceResetWorkaroundTimeMs == C.TIME_UNSET) {
                    this.forceResetWorkaroundTimeMs = currentTimeMs;
                    return;
                }
                return;
            }
            this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        }
        if (this.rawPlaybackHeadPosition > rawPlaybackHeadPosition) {
            if (this.expectRawPlaybackHeadReset) {
                this.sumRawPlaybackHeadPosition += this.rawPlaybackHeadPosition;
                this.expectRawPlaybackHeadReset = false;
            } else {
                this.rawPlaybackHeadWrapCount++;
            }
        }
        this.rawPlaybackHeadPosition = rawPlaybackHeadPosition;
    }
}
