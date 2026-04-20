package androidx.media3.common.util;

import androidx.media3.common.C;
import androidx.media3.common.audio.SpeedProvider;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Floats;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes21.dex */
public class SpeedProviderUtil {
    private SpeedProviderUtil() {
    }

    public static long getDurationAfterSpeedProviderApplied(SpeedProvider speedProvider, long durationUs) {
        long speedChangeTimeUs = 0;
        double outputDurationUs = 0.0d;
        while (speedChangeTimeUs < durationUs) {
            long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(speedChangeTimeUs);
            if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
                nextSpeedChangeTimeUs = Long.MAX_VALUE;
            }
            Preconditions.checkState(nextSpeedChangeTimeUs > speedChangeTimeUs);
            outputDurationUs += (Math.min(nextSpeedChangeTimeUs, durationUs) - speedChangeTimeUs) / ((double) speedProvider.getSpeed(speedChangeTimeUs));
            speedChangeTimeUs = nextSpeedChangeTimeUs;
        }
        return (long) Math.floor(outputDurationUs);
    }

    public static float getSampleAlignedSpeed(SpeedProvider speedProvider, long samplePosition, int sampleRate) {
        Preconditions.checkArgument(samplePosition >= 0);
        Preconditions.checkArgument(sampleRate > 0);
        long durationUs = Util.sampleCountToDurationUs(samplePosition, sampleRate);
        return speedProvider.getSpeed(durationUs);
    }

    public static long getNextSpeedChangeSamplePosition(SpeedProvider speedProvider, long samplePosition, int sampleRate) {
        Preconditions.checkArgument(samplePosition >= 0);
        Preconditions.checkArgument(sampleRate > 0);
        long durationUs = Util.sampleCountToDurationUs(samplePosition, sampleRate);
        long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(durationUs);
        if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
            return -1L;
        }
        return Util.durationUsToSampleCount(nextSpeedChangeTimeUs, sampleRate);
    }

    public static final class SpeedProviderMapper {
        private final long[] inputSegmentStartTimesUs;
        private final long[] outputSegmentStartTimesUs;
        private final float[] speeds;

        public SpeedProviderMapper(SpeedProvider speedProvider) {
            LongArray outputSegmentStartTimesUs = new LongArray();
            LongArray inputSegmentStartTimesUs = new LongArray();
            List<Float> speeds = new ArrayList<>();
            long lastOutputSegmentStartTimeUs = 0;
            long lastInputSegmentStartTimeUs = 0;
            float lastSpeed = speedProvider.getSpeed(0L);
            outputSegmentStartTimesUs.add(0L);
            inputSegmentStartTimesUs.add(0L);
            speeds.add(Float.valueOf(lastSpeed));
            long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(0L);
            float f = 0.0f;
            Preconditions.checkState(lastSpeed > 0.0f);
            while (nextSpeedChangeTimeUs != C.TIME_UNSET) {
                Preconditions.checkState(nextSpeedChangeTimeUs > lastInputSegmentStartTimeUs);
                Preconditions.checkState(lastSpeed > f);
                lastOutputSegmentStartTimeUs += Util.getPlayoutDurationForMediaDuration(nextSpeedChangeTimeUs - lastInputSegmentStartTimeUs, lastSpeed);
                lastInputSegmentStartTimeUs = nextSpeedChangeTimeUs;
                lastSpeed = speedProvider.getSpeed(lastInputSegmentStartTimeUs);
                outputSegmentStartTimesUs.add(lastOutputSegmentStartTimeUs);
                inputSegmentStartTimesUs.add(lastInputSegmentStartTimeUs);
                speeds.add(Float.valueOf(lastSpeed));
                nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(lastInputSegmentStartTimeUs);
                f = 0.0f;
            }
            this.outputSegmentStartTimesUs = outputSegmentStartTimesUs.toArray();
            this.inputSegmentStartTimesUs = inputSegmentStartTimesUs.toArray();
            this.speeds = Floats.toArray(speeds);
        }

        public long getAdjustedTimeUs(long originalTimeUs) {
            Preconditions.checkArgument((originalTimeUs == C.TIME_UNSET || originalTimeUs == Long.MIN_VALUE) ? false : true);
            Preconditions.checkArgument(originalTimeUs >= 0);
            int index = Util.binarySearchFloor(this.inputSegmentStartTimesUs, originalTimeUs, true, true);
            return this.outputSegmentStartTimesUs[index] + Util.getPlayoutDurationForMediaDuration(originalTimeUs - this.inputSegmentStartTimesUs[index], this.speeds[index]);
        }

        public long getOriginalTimeUs(long adjustedTimeUs) {
            Preconditions.checkArgument((adjustedTimeUs == C.TIME_UNSET || adjustedTimeUs == Long.MIN_VALUE) ? false : true);
            Preconditions.checkArgument(adjustedTimeUs >= 0);
            int index = Util.binarySearchFloor(this.outputSegmentStartTimesUs, adjustedTimeUs, true, true);
            return this.inputSegmentStartTimesUs[index] + Util.getMediaDurationForPlayoutDuration(adjustedTimeUs - this.outputSegmentStartTimesUs[index], this.speeds[index]);
        }
    }
}
