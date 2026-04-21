package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;

/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public class DefaultAudioTrackProvider implements DefaultAudioSink.AudioTrackProvider {
    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackProvider
    public final AudioTrack getAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int audioSessionId, Context context) {
        AudioFormat audioFormat = Util.getAudioFormat(audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding);
        android.media.AudioAttributes audioTrackAttributes = getAudioTrackAttributes(audioAttributes, audioTrackConfig.tunneling);
        AudioTrack.Builder audioTrackBuilder = new AudioTrack.Builder().setAudioAttributes(audioTrackAttributes).setAudioFormat(audioFormat).setTransferMode(1).setBufferSizeInBytes(audioTrackConfig.bufferSize).setSessionId(audioSessionId);
        if (Build.VERSION.SDK_INT >= 29) {
            setOffloadedPlaybackV29(audioTrackBuilder, audioTrackConfig.offload);
        }
        if (Build.VERSION.SDK_INT >= 34 && context != null) {
            audioTrackBuilder.setContext(context);
        }
        return customizeAudioTrackBuilder(audioTrackBuilder).build();
    }

    private void setOffloadedPlaybackV29(AudioTrack.Builder audioTrackBuilder, boolean isOffloaded) {
        audioTrackBuilder.setOffloadedPlayback(isOffloaded);
    }

    protected AudioTrack.Builder customizeAudioTrackBuilder(AudioTrack.Builder audioTrackBuilder) {
        return audioTrackBuilder;
    }

    private android.media.AudioAttributes getAudioTrackAttributes(AudioAttributes audioAttributes, boolean tunneling) {
        if (tunneling) {
            return getAudioTrackTunnelingAttributes();
        }
        return audioAttributes.getPlatformAudioAttributes();
    }

    private android.media.AudioAttributes getAudioTrackTunnelingAttributes() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }
}
