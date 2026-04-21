package androidx.media3.common.audio;

import com.google.common.base.Preconditions;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes21.dex */
final class Sonic {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private static final float MINIMUM_SLOWDOWN_RATE = 0.99999f;
    private static final float MINIMUM_SPEEDUP_RATE = 1.00001f;
    private double accumulatedSpeedAdjustmentError;
    private final int channelCount;
    private final SonicImpl<?> impl;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private int outputFrameCount;
    private final float pitch;
    private int pitchFrameCount;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    private interface SonicImpl<T> {
        int bytesPerSample();

        void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i);

        void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i);

        void downSampleInput(int i, int i2);

        void ensureAdditionalFramesInInputBuffer(int i);

        void ensureAdditionalFramesInOutputBuffer(int i);

        void ensureAdditionalFramesInPitchBuffer(int i);

        int findPitchPeriodInRangeWithDownsampleBuffer(int i, int i2, int i3);

        int findPitchPeriodInRangeWithInputBuffer(int i, int i2, int i3);

        void flush();

        T getInputBuffer();

        T getOutputBuffer();

        T getPitchBuffer();

        void interpolateFrame(int i, long j, long j2);

        boolean isPreviousPeriodBetter();

        void overlapAdd(int i, int i2, int i3, int i4, int i5);

        void updatePreviousMinDiff();

        void zeroInputBuffer(int i, int i2);
    }

    public static long getExpectedFrameCountAfterProcessorApplied(int inputSampleRateHz, int outputSampleRateHz, float speed, float pitch, long inputFrameCount) {
        BigDecimal framesAfterTimeStretching;
        float resamplingRate = (inputSampleRateHz / outputSampleRateHz) * pitch;
        double speedRate = speed / pitch;
        BigDecimal bigResamplingRate = new BigDecimal(String.valueOf(resamplingRate));
        BigDecimal length = BigDecimal.valueOf(inputFrameCount);
        if (speedRate > 1.0000100135803223d || speedRate < 0.9999899864196777d) {
            framesAfterTimeStretching = length.divide(BigDecimal.valueOf(speedRate), RoundingMode.HALF_EVEN);
        } else {
            framesAfterTimeStretching = length;
        }
        if (resamplingRate == 1.0f) {
            return framesAfterTimeStretching.longValueExact();
        }
        BigDecimal framesAfterResampling = framesAfterTimeStretching.divide(bigResamplingRate, RoundingMode.HALF_EVEN);
        return framesAfterResampling.longValueExact() - calculateAccumulatedTruncationErrorForResampling(framesAfterTimeStretching, BigDecimal.valueOf(inputSampleRateHz), bigResamplingRate);
    }

    static long calculateAccumulatedTruncationErrorForResampling(BigDecimal length, BigDecimal sampleRate, BigDecimal resamplingRate) {
        BigDecimal errorCount = length.divide(sampleRate, 20, RoundingMode.HALF_EVEN);
        BigDecimal individualError = sampleRate.divide(resamplingRate, 20, RoundingMode.HALF_EVEN);
        BigDecimal accumulatedError = errorCount.multiply(individualError.subtract(individualError.setScale(0, RoundingMode.FLOOR))).setScale(0, RoundingMode.FLOOR);
        return accumulatedError.longValueExact();
    }

    static long getExpectedInputFrameCountForOutputFrameCount(int inputSampleRateHz, int outputSampleRateHz, float speed, float pitch, long outputFrameCount) {
        float resamplingRate = inputSampleRateHz / outputSampleRateHz;
        BigDecimal bigResamplingRate = new BigDecimal(String.valueOf(resamplingRate * pitch));
        long framesBeforeResampling = getFrameCountBeforeResamplingForOutputCount(BigDecimal.valueOf(inputSampleRateHz), bigResamplingRate, BigDecimal.valueOf(outputFrameCount));
        double speedRate = speed / pitch;
        if (speedRate > 1.0000100135803223d || speedRate < 0.9999899864196777d) {
            return BigDecimal.valueOf(framesBeforeResampling).multiply(BigDecimal.valueOf(speedRate)).setScale(0, RoundingMode.FLOOR).longValueExact();
        }
        return framesBeforeResampling;
    }

    private static long getFrameCountBeforeResamplingForOutputCount(BigDecimal sampleRate, BigDecimal resamplingRate, BigDecimal outputLength) {
        BigDecimal denominator = sampleRate.divide(resamplingRate, 0, RoundingMode.FLOOR);
        BigDecimal numerator = sampleRate.multiply(outputLength);
        return numerator.divide(denominator, 0, RoundingMode.FLOOR).longValueExact();
    }

    public Sonic(int inputSampleRateHz, int channelCount, float speed, float pitch, int outputSampleRateHz, boolean useFloatSamples) {
        this.inputSampleRateHz = inputSampleRateHz;
        this.channelCount = channelCount;
        this.speed = speed;
        this.pitch = pitch;
        this.rate = inputSampleRateHz / outputSampleRateHz;
        this.minPeriod = inputSampleRateHz / 400;
        this.maxPeriod = inputSampleRateHz / MINIMUM_PITCH;
        this.maxRequiredFrameCount = this.maxPeriod * 2;
        this.impl = useFloatSamples ? new SonicFloatImpl() : new SonicShortImpl();
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    public void queueInput(ByteBuffer buffer) {
        int bytesToWrite = buffer.remaining();
        int framesToWrite = bytesToWrite / (this.channelCount * this.impl.bytesPerSample());
        this.impl.ensureAdditionalFramesInInputBuffer(framesToWrite);
        this.impl.copyBufferToInputBuffer(buffer, bytesToWrite);
        this.inputFrameCount += framesToWrite;
        processStreamInput();
    }

    public void getOutput(ByteBuffer buffer) {
        Preconditions.checkState(this.outputFrameCount >= 0);
        int framesToRead = Math.min(buffer.remaining() / (this.channelCount * this.impl.bytesPerSample()), this.outputFrameCount);
        this.impl.copyOutputToByteBuffer(buffer, framesToRead);
        this.outputFrameCount -= framesToRead;
        System.arraycopy(this.impl.getOutputBuffer(), this.channelCount * framesToRead, this.impl.getOutputBuffer(), 0, this.outputFrameCount * this.channelCount);
    }

    public void queueEndOfStream() {
        int remainingFrameCount = this.inputFrameCount;
        double s = this.speed / this.pitch;
        double r = this.rate * this.pitch;
        int adjustedRemainingFrames = remainingFrameCount - this.remainingInputToCopyFrameCount;
        int expectedOutputFrames = this.outputFrameCount + ((int) ((((((((double) adjustedRemainingFrames) / s) + ((double) this.remainingInputToCopyFrameCount)) + this.accumulatedSpeedAdjustmentError) + ((double) this.pitchFrameCount)) / r) + 0.5d));
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.impl.ensureAdditionalFramesInInputBuffer((this.maxRequiredFrameCount * 2) + remainingFrameCount);
        this.impl.zeroInputBuffer(this.channelCount * remainingFrameCount, this.maxRequiredFrameCount * 2);
        this.inputFrameCount += this.maxRequiredFrameCount * 2;
        processStreamInput();
        if (this.outputFrameCount > expectedOutputFrames) {
            this.outputFrameCount = Math.max(expectedOutputFrames, 0);
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.impl.flush();
    }

    public int getOutputSize() {
        Preconditions.checkState(this.outputFrameCount >= 0);
        return this.outputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    private void copyToOutput(int positionFrames, int frameCount) {
        this.impl.ensureAdditionalFramesInOutputBuffer(frameCount);
        System.arraycopy(this.impl.getInputBuffer(), this.channelCount * positionFrames, this.impl.getOutputBuffer(), this.outputFrameCount * this.channelCount, this.channelCount * frameCount);
        this.outputFrameCount += frameCount;
    }

    private int copyInputToOutput(int positionFrames) {
        int frameCount = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(positionFrames, frameCount);
        this.remainingInputToCopyFrameCount -= frameCount;
        return frameCount;
    }

    private int findPitchPeriod(int positionFrames) {
        int period;
        int retPeriod;
        int skip = this.inputSampleRateHz > AMDF_FREQUENCY ? this.inputSampleRateHz / AMDF_FREQUENCY : 1;
        if (this.channelCount == 1 && skip == 1) {
            period = this.impl.findPitchPeriodInRangeWithInputBuffer(positionFrames, this.minPeriod, this.maxPeriod);
        } else {
            this.impl.downSampleInput(positionFrames, skip);
            int period2 = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, this.minPeriod / skip, this.maxPeriod / skip);
            if (skip == 1) {
                period = period2;
            } else {
                int period3 = period2 * skip;
                int minP = period3 - (skip * 4);
                int maxP = (skip * 4) + period3;
                if (minP < this.minPeriod) {
                    minP = this.minPeriod;
                }
                if (maxP > this.maxPeriod) {
                    maxP = this.maxPeriod;
                }
                int i = this.channelCount;
                SonicImpl<?> sonicImpl = this.impl;
                if (i == 1) {
                    period = sonicImpl.findPitchPeriodInRangeWithInputBuffer(positionFrames, minP, maxP);
                } else {
                    sonicImpl.downSampleInput(positionFrames, 1);
                    period = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, minP, maxP);
                }
            }
        }
        if (this.impl.isPreviousPeriodBetter()) {
            retPeriod = this.prevPeriod;
        } else {
            retPeriod = period;
        }
        this.impl.updatePreviousMinDiff();
        this.prevPeriod = period;
        return retPeriod;
    }

    private void adjustRate(float rate, int originalOutputFrameCount) {
        if (this.outputFrameCount == originalOutputFrameCount) {
            return;
        }
        long newSampleRate = (long) (this.inputSampleRateHz / rate);
        long newSampleRate2 = newSampleRate;
        long oldSampleRate = this.inputSampleRateHz;
        while (newSampleRate2 != 0 && oldSampleRate != 0 && newSampleRate2 % 2 == 0 && oldSampleRate % 2 == 0) {
            newSampleRate2 /= 2;
            oldSampleRate /= 2;
        }
        moveNewSamplesToPitchBuffer(originalOutputFrameCount);
        int position = 0;
        while (true) {
            if (position < this.pitchFrameCount - 1) {
                while (((long) (this.oldRatePosition + 1)) * newSampleRate2 > ((long) this.newRatePosition) * oldSampleRate) {
                    this.impl.ensureAdditionalFramesInOutputBuffer(1);
                    this.impl.interpolateFrame(position, oldSampleRate, newSampleRate2);
                    this.newRatePosition++;
                    this.outputFrameCount++;
                }
                this.oldRatePosition++;
                if (this.oldRatePosition == oldSampleRate) {
                    this.oldRatePosition = 0;
                    Preconditions.checkState(((long) this.newRatePosition) == newSampleRate2);
                    this.newRatePosition = 0;
                }
                position++;
            } else {
                removePitchFrames(this.pitchFrameCount - 1);
                return;
            }
        }
    }

    private void moveNewSamplesToPitchBuffer(int originalOutputFrameCount) {
        int frameCount = this.outputFrameCount - originalOutputFrameCount;
        this.impl.ensureAdditionalFramesInPitchBuffer(frameCount);
        System.arraycopy(this.impl.getOutputBuffer(), this.channelCount * originalOutputFrameCount, this.impl.getPitchBuffer(), this.pitchFrameCount * this.channelCount, this.channelCount * frameCount);
        this.outputFrameCount = originalOutputFrameCount;
        this.pitchFrameCount += frameCount;
    }

    private void removePitchFrames(int frameCount) {
        if (frameCount == 0) {
            return;
        }
        System.arraycopy(this.impl.getPitchBuffer(), this.channelCount * frameCount, this.impl.getPitchBuffer(), 0, (this.pitchFrameCount - frameCount) * this.channelCount);
        this.pitchFrameCount -= frameCount;
    }

    private int skipPitchPeriod(int position, double speed, int period) {
        int newFrameCount;
        double d = this.accumulatedSpeedAdjustmentError;
        if (speed >= 2.0d) {
            double expectedFrameCount = (((double) period) / (speed - 1.0d)) + d;
            int newFrameCount2 = (int) Math.round(expectedFrameCount);
            this.accumulatedSpeedAdjustmentError = expectedFrameCount - ((double) newFrameCount2);
            newFrameCount = newFrameCount2;
        } else {
            double expectedInputToCopy = ((((double) period) * (2.0d - speed)) / (speed - 1.0d)) + d;
            this.remainingInputToCopyFrameCount = (int) Math.round(expectedInputToCopy);
            this.accumulatedSpeedAdjustmentError = expectedInputToCopy - ((double) this.remainingInputToCopyFrameCount);
            newFrameCount = period;
        }
        this.impl.ensureAdditionalFramesInOutputBuffer(newFrameCount);
        this.impl.overlapAdd(newFrameCount, this.channelCount, this.outputFrameCount, position, position + period);
        this.outputFrameCount += newFrameCount;
        return newFrameCount;
    }

    private int insertPitchPeriod(int position, double speed, int period) {
        int newFrameCount;
        double d = this.accumulatedSpeedAdjustmentError;
        if (speed < 0.5d) {
            double expectedFrameCount = ((((double) period) * speed) / (1.0d - speed)) + d;
            int newFrameCount2 = (int) Math.round(expectedFrameCount);
            this.accumulatedSpeedAdjustmentError = expectedFrameCount - ((double) newFrameCount2);
            newFrameCount = newFrameCount2;
        } else {
            double expectedInputToCopy = ((((double) period) * ((2.0d * speed) - 1.0d)) / (1.0d - speed)) + d;
            this.remainingInputToCopyFrameCount = (int) Math.round(expectedInputToCopy);
            this.accumulatedSpeedAdjustmentError = expectedInputToCopy - ((double) this.remainingInputToCopyFrameCount);
            newFrameCount = period;
        }
        this.impl.ensureAdditionalFramesInOutputBuffer(period + newFrameCount);
        System.arraycopy(this.impl.getInputBuffer(), this.channelCount * position, this.impl.getOutputBuffer(), this.outputFrameCount * this.channelCount, this.channelCount * period);
        this.impl.overlapAdd(newFrameCount, this.channelCount, this.outputFrameCount + period, position + period, position);
        this.outputFrameCount += period + newFrameCount;
        return newFrameCount;
    }

    private void changeSpeed(double speed) {
        if (this.inputFrameCount < this.maxRequiredFrameCount) {
            return;
        }
        int frameCount = this.inputFrameCount;
        int positionFrames = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                positionFrames += copyInputToOutput(positionFrames);
            } else {
                int period = findPitchPeriod(positionFrames);
                if (speed > 1.0d) {
                    positionFrames += skipPitchPeriod(positionFrames, speed, period) + period;
                } else {
                    positionFrames += insertPitchPeriod(positionFrames, speed, period);
                }
            }
        } while (this.maxRequiredFrameCount + positionFrames <= frameCount);
        removeProcessedInputFrames(positionFrames);
    }

    private void removeProcessedInputFrames(int positionFrames) {
        int remainingFrames = this.inputFrameCount - positionFrames;
        System.arraycopy(this.impl.getInputBuffer(), this.channelCount * positionFrames, this.impl.getInputBuffer(), 0, this.channelCount * remainingFrames);
        this.inputFrameCount = remainingFrames;
    }

    private void processStreamInput() {
        int originalOutputFrameCount = this.outputFrameCount;
        double s = this.speed / this.pitch;
        float r = this.rate * this.pitch;
        if (s > 1.0000100135803223d || s < 0.9999899864196777d) {
            changeSpeed(s);
        } else {
            copyToOutput(0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (r != 1.0f) {
            adjustRate(r, originalOutputFrameCount);
        }
    }

    private final class SonicFloatImpl implements SonicImpl<float[]> {
        private final float[] downSampleBuffer;
        private float[] inputBuffer;
        private double maxDiff;
        private double minDiff;
        private float[] outputBuffer;
        private float[] pitchBuffer;
        private double prevMinDiff;

        SonicFloatImpl() {
            this.downSampleBuffer = new float[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 4;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int positionFrame, long oldSampleRate, long newSampleRate) {
            int i = 0;
            while (i < Sonic.this.channelCount) {
                long oldSampleRate2 = oldSampleRate;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i] = interpolate(this.pitchBuffer, (Sonic.this.channelCount * positionFrame) + i, oldSampleRate2, newSampleRate);
                i++;
                oldSampleRate = oldSampleRate2;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            return this.minDiff != 0.0d && Sonic.this.prevPeriod != 0 && this.maxDiff <= this.minDiff * 3.0d && this.minDiff * 2.0d > this.prevMinDiff * 3.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int positionFrames, int skip) {
            int frameCount = Sonic.this.maxRequiredFrameCount / skip;
            int samplesPerValue = Sonic.this.channelCount * skip;
            int positionFrames2 = positionFrames * Sonic.this.channelCount;
            for (int i = 0; i < frameCount; i++) {
                double value = 0.0d;
                for (int j = 0; j < samplesPerValue; j++) {
                    value += (double) this.inputBuffer[(i * samplesPerValue) + positionFrames2 + j];
                }
                this.downSampleBuffer[i] = (float) (value / ((double) samplesPerValue));
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int positionFrames, int minPeriod, int maxPeriod) {
            return findPitchPeriodInRange(this.downSampleBuffer, positionFrames, minPeriod, maxPeriod);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int positionFrames, int minPeriod, int maxPeriod) {
            return findPitchPeriodInRange(this.inputBuffer, positionFrames, minPeriod, maxPeriod);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = 0.0d;
            this.minDiff = 0.0d;
            this.maxDiff = 0.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int frameCount, int channelCount, int outPosition, int rampDownPosition, int rampUpPosition) {
            overlapAdd(frameCount, channelCount, this.outputBuffer, outPosition, this.inputBuffer, rampDownPosition, this.inputBuffer, rampUpPosition);
        }

        private void overlapAdd(int frameCount, int channelCount, float[] out, int outPosition, float[] rampDown, int rampDownPosition, float[] rampUp, int rampUpPosition) {
            for (int i = 0; i < channelCount; i++) {
                int o = (outPosition * channelCount) + i;
                int u = (rampUpPosition * channelCount) + i;
                int d = (rampDownPosition * channelCount) + i;
                for (int t = 0; t < frameCount; t++) {
                    out[o] = ((rampDown[d] * (frameCount - t)) + (rampUp[u] * t)) / frameCount;
                    o += channelCount;
                    d += channelCount;
                    u += channelCount;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int additionalFrameCount) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int additionalFrameCount) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int additionalFrameCount) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int startPosition, int length) {
            for (int i = 0; i < Sonic.this.channelCount * length; i++) {
                this.inputBuffer[startPosition + i] = 0.0f;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer buffer, int bytesToWrite) {
            buffer.asFloatBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, bytesToWrite / bytesPerSample());
            buffer.position(buffer.position() + bytesToWrite);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer buffer, int framesToRead) {
            buffer.asFloatBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * framesToRead);
            buffer.position(buffer.position() + (bytesPerSample() * framesToRead * Sonic.this.channelCount));
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getPitchBuffer() {
            return this.pitchBuffer;
        }

        private float interpolate(float[] in, int inPos, long oldSampleRate, long newSampleRate) {
            float left = in[inPos];
            float right = in[inPos + Sonic.this.channelCount];
            long position = ((long) Sonic.this.newRatePosition) * oldSampleRate;
            long leftPosition = ((long) Sonic.this.oldRatePosition) * newSampleRate;
            long rightPosition = ((long) (Sonic.this.oldRatePosition + 1)) * newSampleRate;
            long ratio = rightPosition - position;
            long width = rightPosition - leftPosition;
            return ((ratio * left) + ((width - ratio) * right)) / width;
        }

        private int findPitchPeriodInRange(float[] samples, int positionFrames, int minPeriod, int maxPeriod) {
            int bestPeriod = 0;
            int worstPeriod = 255;
            double minDiff = 1.0d;
            double maxDiff = 0.0d;
            int positionFrames2 = Sonic.this.channelCount * positionFrames;
            for (int period = minPeriod; period <= maxPeriod; period++) {
                double diff = 0.0d;
                int i = 0;
                while (i < period) {
                    float sVal = samples[positionFrames2 + i];
                    float pVal = samples[positionFrames2 + period + i];
                    double minDiff2 = minDiff;
                    double minDiff3 = Math.abs(sVal - pVal);
                    diff += minDiff3;
                    i++;
                    minDiff = minDiff2;
                }
                double minDiff4 = minDiff;
                double minDiff5 = bestPeriod;
                if (minDiff5 * diff >= ((double) period) * minDiff4) {
                    minDiff = minDiff4;
                } else {
                    minDiff = diff;
                    bestPeriod = period;
                }
                if (((double) worstPeriod) * diff > ((double) period) * maxDiff) {
                    maxDiff = diff;
                    worstPeriod = period;
                }
            }
            double minDiff6 = minDiff;
            double minDiff7 = bestPeriod;
            this.minDiff = minDiff6 / minDiff7;
            this.maxDiff = maxDiff / ((double) worstPeriod);
            return bestPeriod;
        }

        private float[] ensureSpaceForAdditionalFrames(float[] buffer, int frameCount, int additionalFrameCount) {
            int currentCapacityFrames = buffer.length / Sonic.this.channelCount;
            if (frameCount + additionalFrameCount <= currentCapacityFrames) {
                return buffer;
            }
            int newCapacityFrames = ((currentCapacityFrames * 3) / 2) + additionalFrameCount;
            return Arrays.copyOf(buffer, Sonic.this.channelCount * newCapacityFrames);
        }
    }

    private final class SonicShortImpl implements SonicImpl<short[]> {
        private final short[] downSampleBuffer;
        private short[] inputBuffer;
        private int maxDiff;
        private int minDiff;
        private short[] outputBuffer;
        private short[] pitchBuffer;
        private int prevMinDiff;

        SonicShortImpl() {
            this.downSampleBuffer = new short[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 2;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int positionFrames, long oldSampleRate, long newSampleRate) {
            int i = 0;
            while (i < Sonic.this.channelCount) {
                long oldSampleRate2 = oldSampleRate;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i] = interpolate(this.pitchBuffer, (Sonic.this.channelCount * positionFrames) + i, oldSampleRate2, newSampleRate);
                i++;
                oldSampleRate = oldSampleRate2;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            return this.minDiff != 0 && Sonic.this.prevPeriod != 0 && this.maxDiff <= this.minDiff * 3 && this.minDiff * 2 > this.prevMinDiff * 3;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int positionFrames, int skip) {
            short[] samples = this.inputBuffer;
            int frameCount = Sonic.this.maxRequiredFrameCount / skip;
            int samplesPerValue = Sonic.this.channelCount * skip;
            int positionFrames2 = positionFrames * Sonic.this.channelCount;
            for (int i = 0; i < frameCount; i++) {
                int value = 0;
                for (int j = 0; j < samplesPerValue; j++) {
                    value += samples[(i * samplesPerValue) + positionFrames2 + j];
                }
                this.downSampleBuffer[i] = (short) (value / samplesPerValue);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int positionFrames, int minPeriod, int maxPeriod) {
            return findPitchPeriodInRange(this.downSampleBuffer, positionFrames, minPeriod, maxPeriod);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int positionFrames, int minPeriod, int maxPeriod) {
            return findPitchPeriodInRange(this.inputBuffer, positionFrames, minPeriod, maxPeriod);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = 0;
            this.minDiff = 0;
            this.maxDiff = 0;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int frameCount, int channelCount, int outPosition, int rampDownPosition, int rampUpPosition) {
            overlapAdd(frameCount, channelCount, this.outputBuffer, outPosition, this.inputBuffer, rampDownPosition, this.inputBuffer, rampUpPosition);
        }

        private void overlapAdd(int frameCount, int channelCount, short[] out, int outPosition, short[] rampDown, int rampDownPosition, short[] rampUp, int rampUpPosition) {
            for (int i = 0; i < channelCount; i++) {
                int o = (outPosition * channelCount) + i;
                int u = (rampUpPosition * channelCount) + i;
                int d = (rampDownPosition * channelCount) + i;
                for (int t = 0; t < frameCount; t++) {
                    out[o] = (short) (((rampDown[d] * (frameCount - t)) + (rampUp[u] * t)) / frameCount);
                    o += channelCount;
                    d += channelCount;
                    u += channelCount;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int additionalFrameCount) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int additionalFrameCount) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int additionalFrameCount) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, additionalFrameCount);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int startPosition, int length) {
            for (int i = 0; i < Sonic.this.channelCount * length; i++) {
                this.inputBuffer[startPosition + i] = 0;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer buffer, int bytesToWrite) {
            buffer.asShortBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, bytesToWrite / 2);
            buffer.position(buffer.position() + bytesToWrite);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer buffer, int framesToRead) {
            buffer.asShortBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * framesToRead);
            buffer.position(buffer.position() + (bytesPerSample() * framesToRead * Sonic.this.channelCount));
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getPitchBuffer() {
            return this.pitchBuffer;
        }

        private int findPitchPeriodInRange(short[] samples, int positionFrames, int minPeriod, int maxPeriod) {
            int bestPeriod = 0;
            int worstPeriod = 255;
            int minDiff = 1;
            int maxDiff = 0;
            int positionFrames2 = positionFrames * Sonic.this.channelCount;
            for (int period = minPeriod; period <= maxPeriod; period++) {
                int diff = 0;
                for (int i = 0; i < period; i++) {
                    short sVal = samples[positionFrames2 + i];
                    short pVal = samples[positionFrames2 + period + i];
                    diff += Math.abs(sVal - pVal);
                }
                int i2 = diff * bestPeriod;
                if (i2 < minDiff * period) {
                    minDiff = diff;
                    bestPeriod = period;
                }
                if (diff * worstPeriod > maxDiff * period) {
                    maxDiff = diff;
                    worstPeriod = period;
                }
            }
            int period2 = minDiff / bestPeriod;
            this.minDiff = period2;
            this.maxDiff = maxDiff / worstPeriod;
            return bestPeriod;
        }

        private short interpolate(short[] in, int inPos, long oldSampleRate, long newSampleRate) {
            short left = in[inPos];
            short right = in[inPos + Sonic.this.channelCount];
            long position = ((long) Sonic.this.newRatePosition) * oldSampleRate;
            long leftPosition = ((long) Sonic.this.oldRatePosition) * newSampleRate;
            long rightPosition = ((long) (Sonic.this.oldRatePosition + 1)) * newSampleRate;
            long ratio = rightPosition - position;
            long width = rightPosition - leftPosition;
            return (short) (((((long) left) * ratio) + ((width - ratio) * ((long) right))) / width);
        }

        private short[] ensureSpaceForAdditionalFrames(short[] buffer, int frameCount, int additionalFrameCount) {
            int currentCapacityFrames = buffer.length / Sonic.this.channelCount;
            if (frameCount + additionalFrameCount <= currentCapacityFrames) {
                return buffer;
            }
            int newCapacityFrames = ((currentCapacityFrames * 3) / 2) + additionalFrameCount;
            return Arrays.copyOf(buffer, Sonic.this.channelCount * newCapacityFrames);
        }
    }
}
