package androidx.media3.common.audio;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioFocusRequestCompat {
    private final boolean acceptsDelayedFocusGain;
    private final AudioAttributes audioAttributes;
    private final Handler focusChangeHandler;
    private final int focusGain;
    private final Object frameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
    private final boolean pauseOnDuck;

    AudioFocusRequestCompat(int focusGain, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler focusChangeHandler, AudioAttributes audioFocusRequestCompat, boolean pauseOnDuck, boolean acceptsDelayedFocusGain) {
        this.focusGain = focusGain;
        this.focusChangeHandler = focusChangeHandler;
        this.audioAttributes = audioFocusRequestCompat;
        this.pauseOnDuck = pauseOnDuck;
        this.acceptsDelayedFocusGain = acceptsDelayedFocusGain;
        if (Build.VERSION.SDK_INT < 26) {
            this.onAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, focusChangeHandler);
        } else {
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.frameworkAudioFocusRequest = new AudioFocusRequest.Builder(focusGain).setAudioAttributes(this.audioAttributes.getPlatformAudioAttributes()).setWillPauseWhenDucked(pauseOnDuck).setOnAudioFocusChangeListener(onAudioFocusChangeListener, focusChangeHandler).setAcceptsDelayedFocusGain(acceptsDelayedFocusGain).build();
        } else {
            this.frameworkAudioFocusRequest = null;
        }
    }

    public int getFocusGain() {
        return this.focusGain;
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public boolean willPauseWhenDucked() {
        return this.pauseOnDuck;
    }

    public boolean acceptsDelayedFocusGain() {
        return this.acceptsDelayedFocusGain;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.onAudioFocusChangeListener;
    }

    public Handler getFocusChangeHandler() {
        return this.focusChangeHandler;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat that = (AudioFocusRequestCompat) o;
        return this.focusGain == that.focusGain && this.pauseOnDuck == that.pauseOnDuck && Objects.equals(this.onAudioFocusChangeListener, that.onAudioFocusChangeListener) && Objects.equals(this.focusChangeHandler, that.focusChangeHandler) && Objects.equals(this.audioAttributes, that.audioAttributes);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.focusGain), this.onAudioFocusChangeListener, this.focusChangeHandler, this.audioAttributes, Boolean.valueOf(this.pauseOnDuck));
    }

    AudioFocusRequest getAudioFocusRequest() {
        return (AudioFocusRequest) Preconditions.checkNotNull(this.frameworkAudioFocusRequest);
    }

    public static final class Builder {
        private boolean acceptsDelayedFocusGain;
        private AudioAttributes audioAttributes;
        private Handler focusChangeHandler;
        private int focusGain;
        private AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        private boolean pauseOnDuck;

        public Builder(int focusGain) {
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.focusGain = focusGain;
        }

        private Builder(AudioFocusRequestCompat other) {
            this.focusGain = other.getFocusGain();
            this.onAudioFocusChangeListener = other.getOnAudioFocusChangeListener();
            this.focusChangeHandler = other.getFocusChangeHandler();
            this.audioAttributes = other.getAudioAttributes();
            this.pauseOnDuck = other.willPauseWhenDucked();
        }

        public Builder setFocusGain(int focusGain) {
            Preconditions.checkArgument(isValidFocusGain(focusGain));
            this.focusGain = focusGain;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener listener) {
            return setOnAudioFocusChangeListener(listener, new Handler(Looper.getMainLooper()));
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener listener, Handler handler) {
            Preconditions.checkNotNull(listener);
            Preconditions.checkNotNull(handler);
            this.onAudioFocusChangeListener = listener;
            this.focusChangeHandler = handler;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes attributes) {
            Preconditions.checkNotNull(attributes);
            this.audioAttributes = attributes;
            return this;
        }

        public Builder setWillPauseWhenDucked(boolean pauseOnDuck) {
            this.pauseOnDuck = pauseOnDuck;
            return this;
        }

        public Builder setAcceptsDelayedFocusGain(boolean acceptsDelayedFocusGain) {
            this.acceptsDelayedFocusGain = acceptsDelayedFocusGain;
            return this;
        }

        public AudioFocusRequestCompat build() {
            if (this.onAudioFocusChangeListener == null) {
                throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
            }
            return new AudioFocusRequestCompat(this.focusGain, this.onAudioFocusChangeListener, (Handler) Preconditions.checkNotNull(this.focusChangeHandler), this.audioAttributes, this.pauseOnDuck, this.acceptsDelayedFocusGain);
        }

        private static boolean isValidFocusGain(int focusGain) {
            switch (focusGain) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return true;
                default:
                    return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class OnAudioFocusChangeListenerHandlerCompat implements AudioManager.OnAudioFocusChangeListener {
        private final Handler handler;
        private final AudioManager.OnAudioFocusChangeListener listener;

        OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener listener, Handler handler) {
            this.listener = listener;
            this.handler = Util.createHandler(handler.getLooper(), null);
        }

        /* JADX INFO: renamed from: lambda$onAudioFocusChange$0$androidx-media3-common-audio-AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat, reason: not valid java name */
        /* synthetic */ void m7834xd2a61c9d(int focusChange) {
            this.listener.onAudioFocusChange(focusChange);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int focusChange) {
            Util.postOrRun(this.handler, new Runnable() { // from class: androidx.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7834xd2a61c9d(focusChange);
                }
            });
        }
    }
}
