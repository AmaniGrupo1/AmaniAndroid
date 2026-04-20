package androidx.media3.exoplayer.mediacodec;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.os.Bundle;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes21.dex */
public final class LoudnessCodecController {
    private android.media.LoudnessCodecController loudnessCodecController;
    private final HashSet<MediaCodec> mediaCodecs;
    private final LoudnessParameterUpdateListener updateListener;

    public interface LoudnessParameterUpdateListener {
        public static final LoudnessParameterUpdateListener DEFAULT = new LoudnessParameterUpdateListener() { // from class: androidx.media3.exoplayer.mediacodec.LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener
            public final Bundle onLoudnessParameterUpdate(Bundle bundle) {
                return LoudnessCodecController.LoudnessParameterUpdateListener.lambda$static$0(bundle);
            }
        };

        Bundle onLoudnessParameterUpdate(Bundle bundle);

        static /* synthetic */ Bundle lambda$static$0(Bundle bundle) {
            return bundle;
        }
    }

    public LoudnessCodecController() {
        this(LoudnessParameterUpdateListener.DEFAULT);
    }

    public LoudnessCodecController(LoudnessParameterUpdateListener updateListener) {
        this.mediaCodecs = new HashSet<>();
        this.updateListener = updateListener;
    }

    public void setAudioSessionId(int audioSessionId) {
        if (this.loudnessCodecController != null) {
            this.loudnessCodecController.close();
            this.loudnessCodecController = null;
        }
        android.media.LoudnessCodecController loudnessCodecController = android.media.LoudnessCodecController.create(audioSessionId, MoreExecutors.directExecutor(), new LoudnessCodecController.OnLoudnessCodecUpdateListener() { // from class: androidx.media3.exoplayer.mediacodec.LoudnessCodecController.1
            public Bundle onLoudnessCodecUpdate(MediaCodec codec, Bundle parameters) {
                return LoudnessCodecController.this.updateListener.onLoudnessParameterUpdate(parameters);
            }
        });
        this.loudnessCodecController = loudnessCodecController;
        Iterator<MediaCodec> it = this.mediaCodecs.iterator();
        while (it.hasNext()) {
            boolean registered = loudnessCodecController.addMediaCodec(it.next());
            if (!registered) {
                it.remove();
            }
        }
    }

    public void addMediaCodec(MediaCodec mediaCodec) {
        if (this.loudnessCodecController != null && !this.loudnessCodecController.addMediaCodec(mediaCodec)) {
            return;
        }
        Preconditions.checkState(this.mediaCodecs.add(mediaCodec));
    }

    public void removeMediaCodec(MediaCodec mediaCodec) {
        boolean removedCodec = this.mediaCodecs.remove(mediaCodec);
        if (removedCodec && this.loudnessCodecController != null) {
            this.loudnessCodecController.removeMediaCodec(mediaCodec);
        }
    }

    public void release() {
        this.mediaCodecs.clear();
        if (this.loudnessCodecController != null) {
            this.loudnessCodecController.close();
        }
    }
}
