package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioTrackAudioOutput implements AudioOutput {
    private static final int AUDIO_TRACK_VOLUME_RAMP_TIME_MS = 20;
    private static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    private static final String TAG = "AudioTrackAudioOutput";
    private static int pendingReleaseCount;
    private static ScheduledExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();
    private final AudioTrack audioTrack;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final CapabilityChangeListener capabilityChangeListener;
    private final AudioOutputProvider.OutputConfig config;
    private int framesPerEncodedSample;
    private boolean hasBeenStopped;
    private boolean hasData;
    private final boolean isOutputPcm;
    private long lastTunnelingAvSyncPresentationTimeUs;
    private int lastUnderrunCount;
    private final ListenerSet<AudioOutput.Listener> listeners;
    private final float maxPlaybackSpeed;
    private final StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private OnRoutingChangedListenerApi24 onRoutingChangedListener;
    private final int pcmFrameSize;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    interface CapabilityChangeListener {
        void onRecoverableWriteError();

        void onRoutedDeviceChanged(AudioDeviceInfo audioDeviceInfo);
    }

    @Deprecated
    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig config, CapabilityChangeListener capabilityChangeListener, Clock clock) {
        this(audioTrack, config, capabilityChangeListener, 8.0f, clock);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, float f, Clock clock) {
        this.audioTrack = audioTrack;
        this.config = outputConfig;
        this.maxPlaybackSpeed = f;
        this.capabilityChangeListener = capabilityChangeListener;
        this.listeners = new ListenerSet<>(Thread.currentThread());
        this.isOutputPcm = Util.isEncodingLinearPcm(outputConfig.encoding);
        if (this.isOutputPcm) {
            this.pcmFrameSize = Util.getPcmFrameSize(outputConfig.encoding, Integer.bitCount(outputConfig.channelMask));
        } else {
            this.pcmFrameSize = -1;
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener(), clock, audioTrack, outputConfig.encoding, this.pcmFrameSize, outputConfig.bufferSize);
        if (capabilityChangeListener != null) {
            this.onRoutingChangedListener = new OnRoutingChangedListenerApi24(audioTrack, capabilityChangeListener);
        }
        this.offloadStreamEventCallbackV29 = isOffloadedPlayback() ? new StreamEventCallbackV29() : null;
    }

    public AudioTrack getAudioTrack() {
        return this.audioTrack;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void addListener(AudioOutput.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void removeListener(AudioOutput.Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isOffloadedPlayback() {
        return Build.VERSION.SDK_INT >= 29 && this.audioTrack.isOffloadedPlayback();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getAudioSessionId() {
        return this.audioTrack.getAudioSessionId();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getSampleRate() {
        return this.audioTrack.getSampleRate();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getBufferSizeInFrames() {
        return this.audioTrack.getBufferSizeInFrames();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getPositionUs() {
        return this.audioTrackPositionTracker.getCurrentPositionUs();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public PlaybackParameters getPlaybackParameters() {
        PlaybackParams playbackParams = this.audioTrack.getPlaybackParams();
        return new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void play() {
        this.audioTrackPositionTracker.start();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void pause() {
        this.audioTrackPositionTracker.pause();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean write(ByteBuffer buffer, int encodedAccessUnitCount, long presentationTimeUs) throws AudioOutput.WriteException {
        int bytesWrittenOrError;
        if (!this.isOutputPcm && this.framesPerEncodedSample == 0) {
            this.framesPerEncodedSample = DefaultAudioSink.getFramesPerEncodedSample(this.config.encoding, buffer);
        }
        maybeReportUnderrun();
        int bytesRemaining = buffer.remaining();
        if (this.config.isTunneling) {
            if (presentationTimeUs == Long.MIN_VALUE) {
                presentationTimeUs = this.lastTunnelingAvSyncPresentationTimeUs;
            } else {
                this.lastTunnelingAvSyncPresentationTimeUs = presentationTimeUs;
            }
            bytesWrittenOrError = writeWithAvSync(this.audioTrack, buffer, presentationTimeUs);
        } else {
            bytesWrittenOrError = this.audioTrack.write(buffer, buffer.remaining(), 1);
        }
        if (bytesWrittenOrError < 0) {
            int error = bytesWrittenOrError;
            boolean isRecoverable = isAudioTrackDeadObject(error);
            if (isRecoverable && this.capabilityChangeListener != null) {
                this.capabilityChangeListener.onRecoverableWriteError();
            }
            throw new AudioOutput.WriteException(error, isRecoverable);
        }
        int bytesWritten = bytesWrittenOrError;
        boolean fullyHandled = bytesWritten == bytesRemaining;
        if (this.isOutputPcm) {
            this.writtenPcmBytes += (long) bytesWritten;
        } else if (fullyHandled) {
            this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) encodedAccessUnitCount);
        }
        return fullyHandled;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void flush() {
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.hasBeenStopped = false;
        this.framesPerEncodedSample = 0;
        this.audioTrack.flush();
        this.audioTrackPositionTracker.reset();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void stop() {
        if (this.hasBeenStopped) {
            return;
        }
        this.hasBeenStopped = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void release() {
        if (this.audioTrackPositionTracker.isPlaying()) {
            this.audioTrack.pause();
        }
        if (Build.VERSION.SDK_INT >= 29 && isOffloadedPlayback()) {
            ((StreamEventCallbackV29) Preconditions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister();
        }
        if (this.onRoutingChangedListener != null) {
            this.onRoutingChangedListener.release();
            this.onRoutingChangedListener = null;
        }
        releaseAudioTrackAsync(this.audioTrack, this.listeners);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setVolume(float volume) {
        this.audioTrack.setVolume(volume);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        PlaybackParams playbackParams = new PlaybackParams().allowDefaults().setSpeed(Util.constrainValue(playbackParameters.speed, 0.1f, this.maxPlaybackSpeed)).setPitch(Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f)).setAudioFallbackMode(2);
        try {
            this.audioTrack.setPlaybackParams(playbackParams);
        } catch (IllegalArgumentException e) {
            Log.w(TAG, "Failed to set playback params", e);
        }
        this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(this.audioTrack.getPlaybackParams().getSpeed());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadDelayPadding(int delayInFrames, int paddingInFrames) {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        this.audioTrack.setOffloadDelayPadding(delayInFrames, paddingInFrames);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadEndOfStream() {
        if (Build.VERSION.SDK_INT < 29 || this.audioTrack.getPlayState() != 3) {
            return;
        }
        this.audioTrack.setOffloadEndOfStream();
        this.audioTrackPositionTracker.expectRawPlaybackHeadReset();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPlayerId(PlayerId playerId) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        LogSessionId logSessionId = playerId.getLogSessionId();
        if (!logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            this.audioTrack.setLogSessionId(logSessionId);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void attachAuxEffect(int effectId) {
        this.audioTrack.attachAuxEffect(effectId);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setAuxEffectSendLevel(float level) {
        this.audioTrack.setAuxEffectSendLevel(level);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPreferredDevice(AudioDeviceInfo preferredDevice) {
        this.audioTrack.setPreferredDevice(preferredDevice);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isStalled() {
        return this.audioTrackPositionTracker.isStalled(getWrittenFrames());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        return this.isOutputPcm ? Util.ceilDivide(this.writtenPcmBytes, this.pcmFrameSize) : this.writtenEncodedFrames;
    }

    private int writeWithAvSync(AudioTrack audioTrack, ByteBuffer buffer, long presentationTimeUs) {
        int size = buffer.remaining();
        if (Build.VERSION.SDK_INT >= 26) {
            return audioTrack.write(buffer, size, 1, presentationTimeUs * 1000);
        }
        if (this.avSyncHeader == null) {
            this.avSyncHeader = ByteBuffer.allocate(16);
            this.avSyncHeader.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, size);
            this.avSyncHeader.putLong(8, 1000 * presentationTimeUs);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = size;
        }
        int avSyncHeaderBytesRemaining = this.avSyncHeader.remaining();
        if (avSyncHeaderBytesRemaining > 0) {
            int result = audioTrack.write(this.avSyncHeader, avSyncHeaderBytesRemaining, 1);
            if (result < 0) {
                this.bytesUntilNextAvSync = 0;
                return result;
            }
            if (result < avSyncHeaderBytesRemaining) {
                return 0;
            }
        }
        int result2 = audioTrack.write(buffer, size, 1);
        if (result2 < 0) {
            this.bytesUntilNextAvSync = 0;
            return result2;
        }
        this.bytesUntilNextAvSync -= result2;
        return result2;
    }

    private void maybeReportUnderrun() {
        if (this.listeners.isRunningOnCorrectThread() && hasPendingAudioTrackUnderruns(getWrittenFrames())) {
            this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((AudioOutput.Listener) obj).onUnderrun();
                }
            });
        }
    }

    private boolean hasPendingAudioTrackUnderruns(long writtenFrames) {
        int underrunCount = getAudioOutputUnderrunCount(writtenFrames);
        boolean result = underrunCount > this.lastUnderrunCount;
        this.lastUnderrunCount = underrunCount;
        return result;
    }

    private int getAudioOutputUnderrunCount(long writtenFrames) {
        return this.audioTrack.getUnderrunCount();
    }

    private static void releaseAudioTrackAsync(final AudioTrack audioTrack, final ListenerSet<AudioOutput.Listener> listeners) {
        final Handler audioTrackThreadHandler = Util.createHandlerForCurrentLooper();
        synchronized (releaseExecutorLock) {
            if (releaseExecutor == null) {
                releaseExecutor = Util.newSingleThreadScheduledExecutor("ExoPlayer:AudioTrackReleaseThread");
            }
            pendingReleaseCount++;
            releaseExecutor.schedule(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$1(audioTrack, audioTrackThreadHandler, listeners);
                }
            }, 20L, TimeUnit.MILLISECONDS);
        }
    }

    static /* synthetic */ void lambda$releaseAudioTrackAsync$1(AudioTrack audioTrack, Handler audioTrackThreadHandler, final ListenerSet listeners) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (audioTrackThreadHandler.getLooper().getThread().isAlive()) {
                audioTrackThreadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$0(listeners);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                pendingReleaseCount--;
                if (pendingReleaseCount == 0) {
                    ((ScheduledExecutorService) Preconditions.checkNotNull(releaseExecutor)).shutdown();
                    releaseExecutor = null;
                }
            }
        } catch (Throwable th) {
            if (audioTrackThreadHandler.getLooper().getThread().isAlive()) {
                audioTrackThreadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$0(listeners);
                    }
                });
            }
            synchronized (releaseExecutorLock) {
                pendingReleaseCount--;
                if (pendingReleaseCount == 0) {
                    ((ScheduledExecutorService) Preconditions.checkNotNull(releaseExecutor)).shutdown();
                    releaseExecutor = null;
                }
                throw th;
            }
        }
    }

    static /* synthetic */ void lambda$releaseAudioTrackAsync$0(ListenerSet listeners) {
        if (listeners.isRunningOnCorrectThread()) {
            listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((AudioOutput.Listener) obj).onReleased();
                }
            });
        }
    }

    private static boolean isAudioTrackDeadObject(int status) {
        return status == -6 || status == ERROR_NATIVE_DEAD_OBJECT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long audioTimestampPositionFrames, long audioTimestampSystemTimeUs, long systemTimeUs, long playbackPositionUs) {
            String message = "Spurious audio timestamp (frame position mismatch): " + audioTimestampPositionFrames + ", " + audioTimestampSystemTimeUs + ", " + systemTimeUs + ", " + playbackPositionUs + ", " + AudioTrackAudioOutput.this.getWrittenFrames();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(message);
            }
            Log.w(AudioTrackAudioOutput.TAG, message);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long audioTimestampPositionFrames, long audioTimestampSystemTimeUs, long systemTimeUs, long playbackPositionUs) {
            String message = "Spurious audio timestamp (system clock mismatch): " + audioTimestampPositionFrames + ", " + audioTimestampSystemTimeUs + ", " + systemTimeUs + ", " + playbackPositionUs + ", " + AudioTrackAudioOutput.this.getWrittenFrames();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(message);
            }
            Log.w(AudioTrackAudioOutput.TAG, message);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long latencyUs) {
            Log.w(AudioTrackAudioOutput.TAG, "Ignoring impossibly large audio latency: " + latencyUs);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(final long playoutStartSystemTimeMs) {
            if (AudioTrackAudioOutput.this.listeners.isRunningOnCorrectThread()) {
                AudioTrackAudioOutput.this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$PositionTrackerListener$$ExternalSyntheticLambda0
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ((AudioOutput.Listener) obj).onPositionAdvancing(playoutStartSystemTimeMs);
                    }
                });
            }
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String message) {
            super(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class OnRoutingChangedListenerApi24 {
        private final AudioTrack audioTrack;
        private final CapabilityChangeListener capabilityChangeListener;
        private AudioRouting.OnRoutingChangedListener listener;
        private final Handler playbackThreadHandler;

        private OnRoutingChangedListenerApi24(AudioTrack audioTrack, CapabilityChangeListener capabilityChangeListener) {
            this.audioTrack = audioTrack;
            this.capabilityChangeListener = capabilityChangeListener;
            this.playbackThreadHandler = Util.createHandlerForCurrentLooper();
            this.listener = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0
                @Override // android.media.AudioRouting.OnRoutingChangedListener
                public final void onRoutingChanged(AudioRouting audioRouting) {
                    this.f$0.onRoutingChanged(audioRouting);
                }
            };
            audioTrack.addOnRoutingChangedListener(this.listener, this.playbackThreadHandler);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            this.audioTrack.removeOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) Preconditions.checkNotNull(this.listener));
            this.listener = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRoutingChanged(final AudioRouting router) {
            if (this.listener == null) {
                return;
            }
            BackgroundExecutor.get().execute(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7919xdb32c08b(router);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onRoutingChanged$1$androidx-media3-exoplayer-audio-AudioTrackAudioOutput$OnRoutingChangedListenerApi24, reason: not valid java name */
        /* synthetic */ void m7919xdb32c08b(AudioRouting router) {
            final AudioDeviceInfo routedDevice = router.getRoutedDevice();
            if (routedDevice != null) {
                this.playbackThreadHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m7918x2346530a(routedDevice);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: lambda$onRoutingChanged$0$androidx-media3-exoplayer-audio-AudioTrackAudioOutput$OnRoutingChangedListenerApi24, reason: not valid java name */
        /* synthetic */ void m7918x2346530a(AudioDeviceInfo routedDevice) {
            if (this.listener == null) {
                return;
            }
            this.capabilityChangeListener.onRoutedDeviceChanged(routedDevice);
        }
    }

    private final class StreamEventCallbackV29 {
        private final AudioTrack.StreamEventCallback callback;
        private final Handler handler;

        private StreamEventCallbackV29() {
            this.handler = Util.createHandlerForCurrentLooper();
            this.callback = new AudioTrack.StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput.StreamEventCallbackV29.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public void onDataRequest(AudioTrack track, int size) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new AudioTrackAudioOutput$StreamEventCallbackV29$1$$ExternalSyntheticLambda0());
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onPresentationEnded(AudioTrack track) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$StreamEventCallbackV29$1$$ExternalSyntheticLambda1
                        @Override // androidx.media3.common.util.ListenerSet.Event
                        public final void invoke(Object obj) {
                            ((AudioOutput.Listener) obj).onOffloadPresentationEnded();
                        }
                    });
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onTearDown(AudioTrack track) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new AudioTrackAudioOutput$StreamEventCallbackV29$1$$ExternalSyntheticLambda0());
                }
            };
            AudioTrack audioTrack = AudioTrackAudioOutput.this.audioTrack;
            final Handler handler = this.handler;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput$StreamEventCallbackV29$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.callback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unregister() {
            AudioTrackAudioOutput.this.audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }
}
