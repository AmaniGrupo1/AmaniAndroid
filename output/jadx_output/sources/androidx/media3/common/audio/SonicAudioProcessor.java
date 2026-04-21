package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes21.dex */
public final class SonicAudioProcessor implements AudioProcessor {
    private static final float CLOSE_THRESHOLD = 1.0E-4f;
    private static final int MIN_BYTES_FOR_DURATION_SCALING_CALCULATION = 1024;
    public static final int SAMPLE_RATE_NO_CHANGE = -1;
    private ByteBuffer buffer;
    private AudioProcessor.AudioFormat inputAudioFormat;
    private long inputBytes;
    private boolean inputEnded;
    private AudioProcessor.AudioFormat outputAudioFormat;
    private ByteBuffer outputBuffer;
    private long outputBytes;
    private AudioProcessor.AudioFormat pendingInputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private int pendingOutputSampleRate;
    private boolean pendingSonicRecreation;
    private float pitch;
    private final boolean shouldBeActiveWithDefaultParameters;
    private Sonic sonic;
    private float speed;

    public SonicAudioProcessor() {
        this(false);
    }

    SonicAudioProcessor(boolean keepActiveWithDefaultParameters) {
        this.speed = 1.0f;
        this.pitch = 1.0f;
        this.pendingInputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.inputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.buffer = EMPTY_BUFFER;
        this.outputBuffer = EMPTY_BUFFER;
        this.pendingOutputSampleRate = -1;
        this.shouldBeActiveWithDefaultParameters = keepActiveWithDefaultParameters;
    }

    public void setSpeed(float speed) {
        Preconditions.checkArgument(speed > 0.0f);
        if (this.speed != speed) {
            this.speed = speed;
            this.pendingSonicRecreation = true;
        }
    }

    public void setPitch(float pitch) {
        Preconditions.checkArgument(pitch > 0.0f);
        if (this.pitch != pitch) {
            this.pitch = pitch;
            this.pendingSonicRecreation = true;
        }
    }

    public void setOutputSampleRateHz(int sampleRateHz) {
        Preconditions.checkArgument(sampleRateHz == -1 || sampleRateHz > 0);
        this.pendingOutputSampleRate = sampleRateHz;
    }

    public long getMediaDuration(long playoutDuration) {
        if (this.outputBytes >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            long processedInputBytes = this.inputBytes - ((long) ((Sonic) Preconditions.checkNotNull(this.sonic)).getPendingInputBytes());
            if (this.outputAudioFormat.sampleRate == this.inputAudioFormat.sampleRate) {
                return Util.scaleLargeTimestamp(playoutDuration, processedInputBytes, this.outputBytes);
            }
            return Util.scaleLargeTimestamp(playoutDuration, processedInputBytes * ((long) this.outputAudioFormat.sampleRate), ((long) this.inputAudioFormat.sampleRate) * this.outputBytes);
        }
        return (long) (((double) this.speed) * playoutDuration);
    }

    public long getPlayoutDuration(long mediaDuration) {
        if (this.outputBytes >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            long processedInputBytes = this.inputBytes - ((long) ((Sonic) Preconditions.checkNotNull(this.sonic)).getPendingInputBytes());
            int i = this.outputAudioFormat.sampleRate;
            int i2 = this.inputAudioFormat.sampleRate;
            long j = this.outputBytes;
            if (i == i2) {
                return Util.scaleLargeTimestamp(mediaDuration, j, processedInputBytes);
            }
            return Util.scaleLargeTimestamp(mediaDuration, j * ((long) this.inputAudioFormat.sampleRate), processedInputBytes * ((long) this.outputAudioFormat.sampleRate));
        }
        return (long) (mediaDuration / ((double) this.speed));
    }

    public long getProcessedInputBytes() {
        return this.inputBytes - ((long) ((Sonic) Preconditions.checkNotNull(this.sonic)).getPendingInputBytes());
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public long getDurationAfterProcessorApplied(long durationUs) {
        return getPlayoutDuration(durationUs);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat inputAudioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int outputSampleRateHz;
        if (inputAudioFormat.encoding != 2 && inputAudioFormat.encoding != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(inputAudioFormat);
        }
        if (this.pendingOutputSampleRate == -1) {
            outputSampleRateHz = inputAudioFormat.sampleRate;
        } else {
            outputSampleRateHz = this.pendingOutputSampleRate;
        }
        this.pendingInputAudioFormat = inputAudioFormat;
        this.pendingOutputAudioFormat = new AudioProcessor.AudioFormat(outputSampleRateHz, inputAudioFormat.channelCount, inputAudioFormat.encoding);
        this.pendingSonicRecreation = true;
        return this.pendingOutputAudioFormat;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.pendingOutputAudioFormat.sampleRate != -1 && (this.shouldBeActiveWithDefaultParameters || !areParametersSetToDefaultValues());
    }

    private boolean areParametersSetToDefaultValues() {
        return Math.abs(this.speed - 1.0f) < CLOSE_THRESHOLD && Math.abs(this.pitch - 1.0f) < CLOSE_THRESHOLD && this.pendingOutputAudioFormat.sampleRate == this.pendingInputAudioFormat.sampleRate;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer inputBuffer) {
        if (!inputBuffer.hasRemaining()) {
            return;
        }
        Sonic sonic = (Sonic) Preconditions.checkNotNull(this.sonic);
        int inputSize = inputBuffer.remaining();
        this.inputBytes += (long) inputSize;
        sonic.queueInput(inputBuffer);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        if (this.sonic != null) {
            this.sonic.queueEndOfStream();
        }
        this.inputEnded = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int outputSize;
        Sonic sonic = this.sonic;
        if (sonic != null && (outputSize = sonic.getOutputSize()) > 0) {
            if (this.buffer.capacity() < outputSize) {
                this.buffer = ByteBuffer.allocateDirect(outputSize).order(ByteOrder.nativeOrder());
            } else {
                this.buffer.clear();
            }
            sonic.getOutput(this.buffer);
            this.buffer.flip();
            this.outputBytes += (long) outputSize;
            this.outputBuffer = this.buffer;
        }
        ByteBuffer outputBuffer = this.outputBuffer;
        this.outputBuffer = EMPTY_BUFFER;
        return outputBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && (this.sonic == null || this.sonic.getOutputSize() == 0);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush(AudioProcessor.StreamMetadata streamMetadata) {
        if (isActive()) {
            this.inputAudioFormat = this.pendingInputAudioFormat;
            this.outputAudioFormat = this.pendingOutputAudioFormat;
            if (this.pendingSonicRecreation) {
                this.sonic = new Sonic(this.inputAudioFormat.sampleRate, this.inputAudioFormat.channelCount, this.speed, this.pitch, this.outputAudioFormat.sampleRate, this.inputAudioFormat.encoding == 4);
            } else if (this.sonic != null) {
                this.sonic.flush();
            }
        }
        this.outputBuffer = EMPTY_BUFFER;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        this.speed = 1.0f;
        this.pitch = 1.0f;
        this.pendingInputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.inputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.buffer = EMPTY_BUFFER;
        this.outputBuffer = EMPTY_BUFFER;
        this.pendingOutputSampleRate = -1;
        this.pendingSonicRecreation = false;
        this.sonic = null;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }
}
