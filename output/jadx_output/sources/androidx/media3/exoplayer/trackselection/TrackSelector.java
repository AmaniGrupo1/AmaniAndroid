package androidx.media3.exoplayer.trackselection;

import android.content.Context;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes21.dex */
public abstract class TrackSelector {
    private BandwidthMeter bandwidthMeter;
    private InvalidationListener listener;

    public interface Factory {
        TrackSelector createTrackSelector(Context context);
    }

    public abstract void onSelectionActivated(Object obj);

    public abstract TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    public interface InvalidationListener {
        void onTrackSelectionsInvalidated();

        default void onRendererCapabilitiesChanged(Renderer renderer) {
        }
    }

    public void init(InvalidationListener listener, BandwidthMeter bandwidthMeter) {
        Preconditions.checkState(this.listener == null);
        this.listener = listener;
        this.bandwidthMeter = bandwidthMeter;
    }

    public void release() {
        this.listener = null;
        this.bandwidthMeter = null;
    }

    public TrackSelectionParameters getParameters() {
        return TrackSelectionParameters.DEFAULT;
    }

    public void setParameters(TrackSelectionParameters parameters) {
    }

    public boolean isSetParametersSupported() {
        return false;
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
    }

    public RendererCapabilities.Listener getRendererCapabilitiesListener() {
        return null;
    }

    protected final void invalidate() {
        if (this.listener != null) {
            this.listener.onTrackSelectionsInvalidated();
        }
    }

    protected final void invalidateForRendererCapabilitiesChange(Renderer renderer) {
        if (this.listener != null) {
            this.listener.onRendererCapabilitiesChanged(renderer);
        }
    }

    protected final BandwidthMeter getBandwidthMeter() {
        return (BandwidthMeter) Preconditions.checkNotNull(this.bandwidthMeter);
    }
}
