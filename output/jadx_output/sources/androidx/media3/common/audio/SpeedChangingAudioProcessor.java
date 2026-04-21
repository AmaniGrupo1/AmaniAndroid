package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.SpeedProviderUtil;
import androidx.media3.common.util.TimestampConsumer;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes21.dex */
public final class SpeedChangingAudioProcessor implements AudioProcessor {
    private final boolean areInputTimestampsAdjusted;
    private float currentSpeed;
    private boolean endOfStreamQueuedToSonic;
    private long framesRead;
    private AudioProcessor.AudioFormat inputAudioFormat;
    private boolean inputEnded;
    private final Object lock;
    private final LongArrayQueue pendingCallbackInputTimesUs;
    private final Queue<TimestampConsumer> pendingCallbacks;
    private AudioProcessor.AudioFormat pendingInputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private final SynchronizedSonicAudioProcessor sonicAudioProcessor;
    private final SpeedProvider speedProvider;
    private final SpeedProviderUtil.SpeedProviderMapper speedProviderMapper;

    public SpeedChangingAudioProcessor(SpeedProvider speedProvider) {
        this(speedProvider, false);
    }

    public SpeedChangingAudioProcessor(SpeedProvider speedProvider, boolean areInputTimestampsAdjusted) {
        this.pendingInputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.inputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.speedProvider = speedProvider;
        this.speedProviderMapper = new SpeedProviderUtil.SpeedProviderMapper(speedProvider);
        this.lock = new Object();
        this.sonicAudioProcessor = new SynchronizedSonicAudioProcessor(this.lock, true);
        this.pendingCallbackInputTimesUs = new LongArrayQueue();
        this.pendingCallbacks = new ArrayDeque();
        this.currentSpeed = 1.0f;
        this.areInputTimestampsAdjusted = areInputTimestampsAdjusted;
    }

    public static long getSampleCountAfterProcessorApplied(SpeedProvider speedProvider, int inputSampleRateHz, long inputSamples) {
        Preconditions.checkArgument(speedProvider != null);
        Preconditions.checkArgument(inputSampleRateHz > 0);
        Preconditions.checkArgument(inputSamples >= 0);
        long outputSamples = 0;
        long positionSamples = 0;
        while (positionSamples < inputSamples) {
            long boundarySamples = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, positionSamples, inputSampleRateHz);
            if (boundarySamples == -1 || boundarySamples > inputSamples) {
                boundarySamples = inputSamples;
            }
            float speed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, positionSamples, inputSampleRateHz);
            outputSamples += Sonic.getExpectedFrameCountAfterProcessorApplied(inputSampleRateHz, inputSampleRateHz, speed, speed, boundarySamples - positionSamples);
            positionSamples = boundarySamples;
        }
        return outputSamples;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat inputAudioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        this.pendingInputAudioFormat = inputAudioFormat;
        this.pendingOutputAudioFormat = this.sonicAudioProcessor.configure(inputAudioFormat);
        return this.pendingOutputAudioFormat;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return !this.pendingOutputAudioFormat.equals(AudioProcessor.AudioFormat.NOT_SET);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public long getDurationAfterProcessorApplied(long durationUs) {
        if (this.areInputTimestampsAdjusted) {
            return durationUs;
        }
        return SpeedProviderUtil.getDurationAfterSpeedProviderApplied(this.speedProvider, durationUs);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer inputBuffer) {
        AudioProcessor.AudioFormat format;
        int bytesToNextSpeedChange;
        synchronized (this.lock) {
            format = this.inputAudioFormat;
        }
        float newSpeed = SpeedProviderUtil.getSampleAlignedSpeed(this.speedProvider, this.framesRead, format.sampleRate);
        long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(this.speedProvider, this.framesRead, format.sampleRate);
        updateSpeed(newSpeed);
        int inputBufferLimit = inputBuffer.limit();
        if (nextSpeedChangeSamplePosition != -1) {
            bytesToNextSpeedChange = (int) ((nextSpeedChangeSamplePosition - this.framesRead) * ((long) format.bytesPerFrame));
            inputBuffer.limit(Math.min(inputBufferLimit, inputBuffer.position() + bytesToNextSpeedChange));
        } else {
            bytesToNextSpeedChange = -1;
        }
        long startPosition = inputBuffer.position();
        this.sonicAudioProcessor.queueInput(inputBuffer);
        if (bytesToNextSpeedChange != -1 && ((long) inputBuffer.position()) - startPosition == bytesToNextSpeedChange) {
            this.sonicAudioProcessor.queueEndOfStream();
            this.endOfStreamQueuedToSonic = true;
        }
        long bytesRead = ((long) inputBuffer.position()) - startPosition;
        Preconditions.checkState(bytesRead % ((long) format.bytesPerFrame) == 0, "A frame was not queued completely.");
        this.framesRead += bytesRead / ((long) format.bytesPerFrame);
        inputBuffer.limit(inputBufferLimit);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        this.inputEnded = true;
        if (!this.endOfStreamQueuedToSonic) {
            this.sonicAudioProcessor.queueEndOfStream();
            this.endOfStreamQueuedToSonic = true;
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        return this.sonicAudioProcessor.getOutput();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.sonicAudioProcessor.isEnded();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush(AudioProcessor.StreamMetadata streamMetadata) {
        this.inputEnded = false;
        resetInternalState(false);
        synchronized (this.lock) {
            this.inputAudioFormat = this.pendingInputAudioFormat;
            this.sonicAudioProcessor.flush(streamMetadata);
            processPendingCallbacks();
            long positionOffsetUs = streamMetadata.positionOffsetUs;
            if (this.areInputTimestampsAdjusted) {
                positionOffsetUs = this.speedProviderMapper.getOriginalTimeUs(streamMetadata.positionOffsetUs);
            }
            this.framesRead = Util.durationUsToSampleCount(positionOffsetUs, this.inputAudioFormat.sampleRate);
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        flush(AudioProcessor.StreamMetadata.DEFAULT);
        this.pendingInputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        synchronized (this.lock) {
            this.inputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
            this.pendingCallbackInputTimesUs.clear();
            this.pendingCallbacks.clear();
        }
        resetInternalState(true);
        this.sonicAudioProcessor.reset();
    }

    public SpeedProvider getSpeedProvider() {
        return this.speedProvider;
    }

    public void getSpeedAdjustedTimeAsync(long inputTimeUs, TimestampConsumer callback) {
        synchronized (this.lock) {
            int sampleRate = this.inputAudioFormat.sampleRate;
            if (sampleRate == -1) {
                this.pendingCallbackInputTimesUs.add(inputTimeUs);
                this.pendingCallbacks.add(callback);
            } else {
                callback.onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, sampleRate, inputTimeUs));
            }
        }
    }

    public long getMediaDurationUs(long playoutDurationUs) throws Throwable {
        int sampleRate;
        synchronized (this.lock) {
            try {
                sampleRate = this.inputAudioFormat.sampleRate;
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
        if (sampleRate == -1) {
            return playoutDurationUs;
        }
        long outputSamples = Util.scaleLargeValue(playoutDurationUs, sampleRate, 1000000L, RoundingMode.HALF_EVEN);
        long inputSamples = getInputFrameCountForOutput(this.speedProvider, sampleRate, outputSamples);
        return Util.sampleCountToDurationUs(inputSamples, sampleRate);
    }

    static long getInputFrameCountForOutput(SpeedProvider speedProvider, int inputSampleRate, long outputFrameCount) {
        int i = inputSampleRate;
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(outputFrameCount >= 0);
        long outputFrameCount2 = outputFrameCount;
        long inputSampleCount = 0;
        while (outputFrameCount2 > 0) {
            long boundarySamples = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, inputSampleCount, i);
            float speed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, inputSampleCount, i);
            long outputSamplesForSection = Sonic.getExpectedFrameCountAfterProcessorApplied(i, inputSampleRate, speed, speed, boundarySamples - inputSampleCount);
            if (boundarySamples == -1 || outputSamplesForSection > outputFrameCount2) {
                inputSampleCount += Sonic.getExpectedInputFrameCountForOutputFrameCount(inputSampleRate, inputSampleRate, speed, speed, outputFrameCount2);
                outputFrameCount2 = 0;
            } else {
                outputFrameCount2 -= outputSamplesForSection;
                inputSampleCount = boundarySamples;
            }
            i = inputSampleRate;
        }
        return inputSampleCount;
    }

    private static long getDurationUsAfterProcessorApplied(SpeedProvider speedProvider, int sampleRate, long inputDurationUs) {
        long inputSamples = Util.scaleLargeValue(inputDurationUs, sampleRate, 1000000L, RoundingMode.HALF_EVEN);
        long outputSamples = getSampleCountAfterProcessorApplied(speedProvider, sampleRate, inputSamples);
        return Util.sampleCountToDurationUs(outputSamples, sampleRate);
    }

    private void processPendingCallbacks() {
        synchronized (this.lock) {
            if (this.inputAudioFormat.sampleRate == -1) {
                return;
            }
            while (!this.pendingCallbacks.isEmpty()) {
                long inputTimeUs = this.pendingCallbackInputTimesUs.remove();
                TimestampConsumer consumer = this.pendingCallbacks.remove();
                consumer.onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, this.inputAudioFormat.sampleRate, inputTimeUs));
            }
        }
    }

    private void updateSpeed(float newSpeed) {
        if (newSpeed != this.currentSpeed) {
            this.currentSpeed = newSpeed;
            this.sonicAudioProcessor.setSpeed(newSpeed);
            this.sonicAudioProcessor.setPitch(newSpeed);
            this.sonicAudioProcessor.flush(AudioProcessor.StreamMetadata.DEFAULT);
            this.endOfStreamQueuedToSonic = false;
        }
    }

    private void resetInternalState(boolean shouldResetSpeed) {
        if (shouldResetSpeed) {
            this.currentSpeed = 1.0f;
        }
        this.framesRead = 0L;
        this.endOfStreamQueuedToSonic = false;
    }
}
