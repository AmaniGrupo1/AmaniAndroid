package androidx.media3.common.audio;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioFocusRequestCompat;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioFocusManager {
    private static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 2;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 3;
    private static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 4;
    private static final int AUDIO_FOCUS_STATE_NOT_REQUESTED = 0;
    private static final int AUDIO_FOCUS_STATE_NO_FOCUS = 1;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    private static final String TAG = "AudioFocusManager";
    private static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    private static final float VOLUME_MULTIPLIER_DUCK = 0.2f;
    private AudioAttributes audioAttributes;
    private AudioFocusRequestCompat audioFocusRequest;
    private final Supplier<AudioManager> audioManager;
    private final Handler eventHandler;
    private int focusGainToRequest;
    private PlayerControl playerControl;
    private boolean rebuildAudioFocusRequest;
    private float volumeMultiplier = 1.0f;
    private int audioFocusState = 0;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerCommand {
    }

    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    public AudioFocusManager(final Context context, Looper eventLooper, PlayerControl playerControl) {
        this.audioManager = Suppliers.memoize(new Supplier() { // from class: androidx.media3.common.audio.AudioFocusManager$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return AudioManagerCompat.getAudioManager(context);
            }
        });
        this.playerControl = playerControl;
        this.eventHandler = new Handler(eventLooper);
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (!Objects.equals(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            this.focusGainToRequest = convertAudioAttributesToFocusGain(audioAttributes);
            boolean z = true;
            if (this.focusGainToRequest != 1 && this.focusGainToRequest != 0) {
                z = false;
            }
            Preconditions.checkArgument(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    public int updateAudioFocus(boolean playWhenReady, int playbackState) {
        if (!shouldHandleAudioFocus(playbackState)) {
            abandonAudioFocusIfHeld();
            setAudioFocusState(0);
            return 1;
        }
        if (playWhenReady) {
            return requestAudioFocus();
        }
        switch (this.audioFocusState) {
            case 1:
                return -1;
            case 2:
            default:
                return 1;
            case 3:
                return 0;
        }
    }

    public void release() {
        this.playerControl = null;
        abandonAudioFocusIfHeld();
        setAudioFocusState(0);
    }

    AudioManager.OnAudioFocusChangeListener getFocusListener() {
        return new AudioFocusManager$$ExternalSyntheticLambda0(this);
    }

    private boolean shouldHandleAudioFocus(int playbackState) {
        return playbackState != 1 && this.focusGainToRequest == 1;
    }

    private int requestAudioFocus() {
        if (this.audioFocusState == 2) {
            return 1;
        }
        int requestResult = requestAudioFocusInternal();
        if (requestResult == 1 || requestResult == 2) {
            setAudioFocusState(2);
            return 1;
        }
        setAudioFocusState(1);
        return -1;
    }

    private void abandonAudioFocusIfHeld() {
        if (this.audioFocusState != 1 && this.audioFocusState != 0 && this.audioFocusRequest != null) {
            AudioManagerCompat.abandonAudioFocusRequest(this.audioManager.get(), this.audioFocusRequest);
        }
    }

    private int requestAudioFocusInternal() {
        AudioFocusRequestCompat.Builder builder;
        if (this.audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            if (this.audioFocusRequest == null) {
                builder = new AudioFocusRequestCompat.Builder(this.focusGainToRequest);
            } else {
                builder = this.audioFocusRequest.buildUpon();
            }
            boolean willPauseWhenDucked = willPauseWhenDucked();
            this.audioFocusRequest = builder.setAudioAttributes((AudioAttributes) Preconditions.checkNotNull(this.audioAttributes)).setWillPauseWhenDucked(willPauseWhenDucked).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(new AudioFocusManager$$ExternalSyntheticLambda0(this), this.eventHandler).build();
            this.rebuildAudioFocusRequest = false;
        }
        return AudioManagerCompat.requestAudioFocus(this.audioManager.get(), this.audioFocusRequest);
    }

    private boolean willPauseWhenDucked() {
        return this.audioAttributes != null && this.audioAttributes.contentType == 1;
    }

    private static int convertAudioAttributesToFocusGain(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        switch (audioAttributes.usage) {
            case 0:
                Log.w(TAG, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                break;
            case 1:
            case 14:
                break;
            case 2:
            case 4:
                break;
            case 3:
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (audioAttributes.contentType == 1) {
                }
                break;
            case 15:
            default:
                Log.w(TAG, "Unidentified audio usage: " + audioAttributes.usage);
                break;
            case 16:
                break;
        }
        return 0;
    }

    private void setAudioFocusState(int audioFocusState) {
        float volumeMultiplier;
        if (this.audioFocusState == audioFocusState) {
            return;
        }
        this.audioFocusState = audioFocusState;
        if (audioFocusState == 4) {
            volumeMultiplier = 0.2f;
        } else {
            volumeMultiplier = 1.0f;
        }
        if (this.volumeMultiplier == volumeMultiplier) {
            return;
        }
        this.volumeMultiplier = volumeMultiplier;
        if (this.playerControl != null) {
            this.playerControl.setVolumeMultiplier(volumeMultiplier);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePlatformAudioFocusChange(int focusChange) {
        switch (focusChange) {
            case -3:
            case -2:
                if (focusChange == -2 || willPauseWhenDucked()) {
                    executePlayerCommand(0);
                    setAudioFocusState(3);
                } else {
                    setAudioFocusState(4);
                }
                break;
            case -1:
                executePlayerCommand(-1);
                abandonAudioFocusIfHeld();
                setAudioFocusState(1);
                break;
            case 0:
            default:
                Log.w(TAG, "Unknown focus change type: " + focusChange);
                break;
            case 1:
                setAudioFocusState(2);
                executePlayerCommand(1);
                break;
        }
    }

    private void executePlayerCommand(int playerCommand) {
        if (this.playerControl != null) {
            this.playerControl.executePlayerCommand(playerCommand);
        }
    }
}
