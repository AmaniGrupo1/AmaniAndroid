package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public final class PlaybackLooperProvider {
    private HandlerThread internalPlaybackThread;
    private final Object lock;
    private Looper playbackLooper;
    private int referenceCount;

    public PlaybackLooperProvider() {
        this(null);
    }

    public PlaybackLooperProvider(Looper looper) {
        this.lock = new Object();
        this.playbackLooper = looper;
        this.internalPlaybackThread = null;
        this.referenceCount = 0;
    }

    public Looper obtainLooper() {
        Looper looper;
        synchronized (this.lock) {
            if (this.playbackLooper == null) {
                Preconditions.checkState(this.referenceCount == 0 && this.internalPlaybackThread == null);
                this.internalPlaybackThread = new HandlerThread("ExoPlayer:Playback", -16);
                this.internalPlaybackThread.start();
                this.playbackLooper = this.internalPlaybackThread.getLooper();
            }
            this.referenceCount++;
            looper = this.playbackLooper;
        }
        return looper;
    }

    public void releaseLooper() {
        synchronized (this.lock) {
            Preconditions.checkState(this.referenceCount > 0);
            this.referenceCount--;
            if (this.referenceCount == 0 && this.internalPlaybackThread != null) {
                this.internalPlaybackThread.quit();
                this.internalPlaybackThread = null;
                this.playbackLooper = null;
            }
        }
    }
}
