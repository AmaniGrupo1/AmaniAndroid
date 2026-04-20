package androidx.media3.common.audio;

import android.media.AudioManager;
import com.android.tools.r8.annotations.LambdaMethod;
import com.android.tools.r8.annotations.SynthesizedClassV2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes21.dex */
@LambdaMethod(holder = "Landroidx/media3/common/audio/AudioFocusManager;", method = "handlePlatformAudioFocusChange", proto = "(I)V")
@SynthesizedClassV2(apiLevel = -2, kind = 19, versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0")
public final /* synthetic */ class AudioFocusManager$$ExternalSyntheticLambda0 implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ AudioFocusManager f$0;

    public /* synthetic */ AudioFocusManager$$ExternalSyntheticLambda0(AudioFocusManager audioFocusManager) {
        this.f$0 = audioFocusManager;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f$0.handlePlatformAudioFocusChange(i);
    }
}
