package androidx.media3.common.audio;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes21.dex */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    public static final int AUDIOFOCUS_NONE = 0;
    private static final String TAG = "AudioManagerCompat";
    private static Context applicationContext;
    private static AudioManager audioManager;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AudioFocusGain {
    }

    public static synchronized AudioManager getAudioManager(Context context) {
        final Context applicationContext2 = context.getApplicationContext();
        if (applicationContext != applicationContext2) {
            audioManager = null;
        }
        if (audioManager != null) {
            return audioManager;
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && myLooper != Looper.getMainLooper()) {
            final ConditionVariable audioManagerSetCondition = new ConditionVariable();
            BackgroundExecutor.get().execute(new Runnable() { // from class: androidx.media3.common.audio.AudioManagerCompat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AudioManagerCompat.lambda$getAudioManager$0(applicationContext2, audioManagerSetCondition);
                }
            });
            audioManagerSetCondition.blockUninterruptible();
            return (AudioManager) Preconditions.checkNotNull(audioManager);
        }
        audioManager = (AudioManager) applicationContext2.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        return (AudioManager) Preconditions.checkNotNull(audioManager);
    }

    static /* synthetic */ void lambda$getAudioManager$0(Context applicationContext2, ConditionVariable audioManagerSetCondition) {
        audioManager = (AudioManager) applicationContext2.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        audioManagerSetCondition.open();
    }

    public static int requestAudioFocus(AudioManager audioManager2, AudioFocusRequestCompat focusRequest) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioManager2.requestAudioFocus(focusRequest.getAudioFocusRequest());
        }
        return audioManager2.requestAudioFocus(focusRequest.getOnAudioFocusChangeListener(), focusRequest.getAudioAttributes().getVolumeControlStream(), focusRequest.getFocusGain());
    }

    public static int abandonAudioFocusRequest(AudioManager audioManager2, AudioFocusRequestCompat focusRequest) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioManager2.abandonAudioFocusRequest(focusRequest.getAudioFocusRequest());
        }
        return audioManager2.abandonAudioFocus(focusRequest.getOnAudioFocusChangeListener());
    }

    public static int getStreamMaxVolume(AudioManager audioManager2, int streamType) {
        return audioManager2.getStreamMaxVolume(streamType);
    }

    public static int getStreamMinVolume(AudioManager audioManager2, int streamType) {
        if (Build.VERSION.SDK_INT >= 28) {
            return audioManager2.getStreamMinVolume(streamType);
        }
        return 0;
    }

    public static int getStreamVolume(AudioManager audioManager2, int streamType) {
        try {
            return audioManager2.getStreamVolume(streamType);
        } catch (RuntimeException e) {
            Log.w(TAG, "Could not retrieve stream volume for stream type " + streamType, e);
            return audioManager2.getStreamMaxVolume(streamType);
        }
    }

    public static boolean isStreamMute(AudioManager audioManager2, int streamType) {
        return audioManager2.isStreamMute(streamType);
    }

    private AudioManagerCompat() {
    }
}
