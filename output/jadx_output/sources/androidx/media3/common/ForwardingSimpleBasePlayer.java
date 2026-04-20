package androidx.media3.common;

import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes21.dex */
public class ForwardingSimpleBasePlayer extends SimpleBasePlayer {
    private Metadata lastTimedMetadata;
    private LivePositionSuppliers livePositionSuppliers;
    private int pendingDiscontinuityReason;
    private boolean pendingFirstFrameRendered;
    private long pendingPositionDiscontinuityNewPositionMs;
    private int playWhenReadyChangeReason;
    private Player player;
    private final Player.Listener playerListener;

    public ForwardingSimpleBasePlayer(Player player) {
        super(player.getApplicationLooper());
        initializeForwardingState(player);
        this.playerListener = new PlayerListener();
        player.addListener(this.playerListener);
    }

    protected final void setPlayer(Player newPlayer) {
        Player oldPlayer = this.player;
        if (oldPlayer == newPlayer) {
            return;
        }
        if (newPlayer.getApplicationLooper() != oldPlayer.getApplicationLooper()) {
            throw new IllegalArgumentException("Trying to swap players with non-matching loopers.");
        }
        oldPlayer.removeListener(this.playerListener);
        newPlayer.addListener(this.playerListener);
        initializeForwardingState(newPlayer);
        this.pendingPositionDiscontinuityNewPositionMs = newPlayer.getCurrentPosition();
        invalidateState();
    }

    protected final Player getPlayer() {
        return this.player;
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected SimpleBasePlayer.State getState() {
        Tracks tracks;
        SimpleBasePlayer.State.Builder state = new SimpleBasePlayer.State.Builder();
        LivePositionSuppliers positionSuppliers = this.livePositionSuppliers;
        if (this.player.isCommandAvailable(16)) {
            state.setAdBufferedPositionMs(positionSuppliers.bufferedPositionSupplier);
            state.setAdPositionMs(positionSuppliers.currentPositionSupplier);
        }
        if (this.player.isCommandAvailable(21)) {
            state.setAudioAttributes(this.player.getAudioAttributes());
        }
        state.setAvailableCommands(this.player.getAvailableCommands());
        if (this.player.isCommandAvailable(16)) {
            state.setContentBufferedPositionMs(positionSuppliers.contentBufferedPositionSupplier);
            state.setContentPositionMs(positionSuppliers.contentPositionSupplier);
            if (this.player.isCommandAvailable(17)) {
                state.setCurrentAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
            }
        }
        if (this.player.isCommandAvailable(28)) {
            state.setCurrentCues(this.player.getCurrentCues());
        }
        if (this.player.isCommandAvailable(17)) {
            state.setCurrentMediaItemIndex(this.player.getCurrentMediaItemIndex());
        }
        state.setDeviceInfo(this.player.getDeviceInfo());
        if (this.player.isCommandAvailable(23)) {
            state.setDeviceVolume(this.player.getDeviceVolume());
            state.setIsDeviceMuted(this.player.isDeviceMuted());
        }
        state.setIsLoading(this.player.isLoading());
        state.setMaxSeekToPreviousPositionMs(this.player.getMaxSeekToPreviousPosition());
        if (this.pendingFirstFrameRendered) {
            state.setNewlyRenderedFirstFrame(true);
            this.pendingFirstFrameRendered = false;
        }
        state.setPlaybackParameters(this.player.getPlaybackParameters());
        state.setPlaybackState(this.player.getPlaybackState());
        state.setPlaybackSuppressionReason(this.player.getPlaybackSuppressionReason());
        state.setPlayerError(this.player.getPlayerError());
        if (this.player.isCommandAvailable(17)) {
            if (this.player.isCommandAvailable(30)) {
                tracks = this.player.getCurrentTracks();
            } else {
                tracks = Tracks.EMPTY;
            }
            MediaMetadata mediaMetadata = this.player.isCommandAvailable(18) ? this.player.getMediaMetadata() : null;
            state.setPlaylist(this.player.getCurrentTimeline(), tracks, mediaMetadata);
        }
        if (this.player.isCommandAvailable(18)) {
            state.setPlaylistMetadata(this.player.getPlaylistMetadata());
        }
        state.setPlayWhenReady(this.player.getPlayWhenReady(), this.playWhenReadyChangeReason);
        if (this.pendingPositionDiscontinuityNewPositionMs != C.TIME_UNSET) {
            state.setPositionDiscontinuity(this.pendingDiscontinuityReason, this.pendingPositionDiscontinuityNewPositionMs);
            this.pendingPositionDiscontinuityNewPositionMs = C.TIME_UNSET;
        }
        state.setRepeatMode(this.player.getRepeatMode());
        state.setSeekBackIncrementMs(this.player.getSeekBackIncrement());
        state.setSeekForwardIncrementMs(this.player.getSeekForwardIncrement());
        state.setShuffleModeEnabled(this.player.getShuffleModeEnabled());
        state.setSurfaceSize(this.player.getSurfaceSize());
        state.setTimedMetadata(this.lastTimedMetadata);
        if (this.player.isCommandAvailable(16)) {
            state.setTotalBufferedDurationMs(positionSuppliers.totalBufferedPositionSupplier);
        }
        state.setTrackSelectionParameters(this.player.getTrackSelectionParameters());
        state.setVideoSize(this.player.getVideoSize());
        if (this.player.isCommandAvailable(22)) {
            state.setVolume(this.player.getVolume());
        }
        return state.build();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetPlayWhenReady(boolean playWhenReady) {
        this.player.setPlayWhenReady(playWhenReady);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handlePrepare() {
        this.player.prepare();
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleStop() {
        this.player.stop();
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleRelease() {
        this.player.release();
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetRepeatMode(int repeatMode) {
        this.player.setRepeatMode(repeatMode);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetShuffleModeEnabled(boolean shuffleModeEnabled) {
        this.player.setShuffleModeEnabled(shuffleModeEnabled);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        this.player.setTrackSelectionParameters(trackSelectionParameters);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetPlaylistMetadata(MediaMetadata playlistMetadata) {
        this.player.setPlaylistMetadata(playlistMetadata);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected final ListenableFuture<?> handleSetVolume(float volume) {
        this.player.setVolume(volume);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetVolume(float volume, int volumeOperationType) {
        if (volumeOperationType == 0) {
            this.player.setVolume(volume);
        } else if (volumeOperationType == 1) {
            this.player.mute();
        } else if (volumeOperationType == 2) {
            this.player.unmute();
        } else {
            throw new IllegalStateException("Unknown volume operation type: " + volumeOperationType);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetDeviceVolume(int deviceVolume, int flags) {
        boolean zIsCommandAvailable = this.player.isCommandAvailable(33);
        Player player = this.player;
        if (zIsCommandAvailable) {
            player.setDeviceVolume(deviceVolume, flags);
        } else {
            player.setDeviceVolume(deviceVolume);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleIncreaseDeviceVolume(int flags) {
        boolean zIsCommandAvailable = this.player.isCommandAvailable(34);
        Player player = this.player;
        if (zIsCommandAvailable) {
            player.increaseDeviceVolume(flags);
        } else {
            player.increaseDeviceVolume();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleDecreaseDeviceVolume(int flags) {
        boolean zIsCommandAvailable = this.player.isCommandAvailable(34);
        Player player = this.player;
        if (zIsCommandAvailable) {
            player.decreaseDeviceVolume(flags);
        } else {
            player.decreaseDeviceVolume();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetDeviceMuted(boolean muted, int flags) {
        boolean zIsCommandAvailable = this.player.isCommandAvailable(34);
        Player player = this.player;
        if (zIsCommandAvailable) {
            player.setDeviceMuted(muted, flags);
        } else {
            player.setDeviceMuted(muted);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetAudioAttributes(AudioAttributes audioAttributes, boolean handleAudioFocus) {
        this.player.setAudioAttributes(audioAttributes, handleAudioFocus);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetVideoOutput(Object videoOutput) {
        if (videoOutput instanceof SurfaceView) {
            this.player.setVideoSurfaceView((SurfaceView) videoOutput);
        } else if (videoOutput instanceof TextureView) {
            this.player.setVideoTextureView((TextureView) videoOutput);
        } else if (videoOutput instanceof SurfaceHolder) {
            this.player.setVideoSurfaceHolder((SurfaceHolder) videoOutput);
        } else if (videoOutput instanceof Surface) {
            this.player.setVideoSurface((Surface) videoOutput);
        } else {
            throw new IllegalStateException();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleClearVideoOutput(Object videoOutput) {
        if (videoOutput instanceof SurfaceView) {
            this.player.clearVideoSurfaceView((SurfaceView) videoOutput);
        } else if (videoOutput instanceof TextureView) {
            this.player.clearVideoTextureView((TextureView) videoOutput);
        } else if (videoOutput instanceof SurfaceHolder) {
            this.player.clearVideoSurfaceHolder((SurfaceHolder) videoOutput);
        } else if (videoOutput instanceof Surface) {
            this.player.clearVideoSurface((Surface) videoOutput);
        } else if (videoOutput == null) {
            this.player.clearVideoSurface();
        } else {
            throw new IllegalStateException();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSetMediaItems(List<MediaItem> mediaItems, int startIndex, long startPositionMs) {
        boolean useSingleItemCall = mediaItems.size() == 1 && this.player.isCommandAvailable(31);
        if (startIndex == -1) {
            Player player = this.player;
            if (useSingleItemCall) {
                player.setMediaItem(mediaItems.get(0));
            } else {
                player.setMediaItems(mediaItems);
            }
        } else {
            Player player2 = this.player;
            if (useSingleItemCall) {
                player2.setMediaItem(mediaItems.get(0), startPositionMs);
            } else {
                player2.setMediaItems(mediaItems, startIndex, startPositionMs);
            }
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleAddMediaItems(int index, List<MediaItem> mediaItems) {
        int size = mediaItems.size();
        Player player = this.player;
        if (size == 1) {
            player.addMediaItem(index, mediaItems.get(0));
        } else {
            player.addMediaItems(index, mediaItems);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleMoveMediaItems(int fromIndex, int toIndex, int newIndex) {
        int i = fromIndex + 1;
        Player player = this.player;
        if (toIndex == i) {
            player.moveMediaItem(fromIndex, newIndex);
        } else {
            player.moveMediaItems(fromIndex, toIndex, newIndex);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleReplaceMediaItems(int fromIndex, int toIndex, List<MediaItem> mediaItems) {
        if (toIndex == fromIndex + 1 && mediaItems.size() == 1) {
            this.player.replaceMediaItem(fromIndex, mediaItems.get(0));
        } else {
            this.player.replaceMediaItems(fromIndex, toIndex, mediaItems);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleRemoveMediaItems(int fromIndex, int toIndex) {
        int i = fromIndex + 1;
        Player player = this.player;
        if (toIndex == i) {
            player.removeMediaItem(fromIndex);
        } else {
            player.removeMediaItems(fromIndex, toIndex);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    protected ListenableFuture<?> handleSeek(int mediaItemIndex, long positionMs, int seekCommand) {
        switch (seekCommand) {
            case 4:
                this.player.seekToDefaultPosition();
                break;
            case 5:
                this.player.seekTo(positionMs);
                break;
            case 6:
                this.player.seekToPreviousMediaItem();
                break;
            case 7:
                this.player.seekToPrevious();
                break;
            case 8:
                this.player.seekToNextMediaItem();
                break;
            case 9:
                this.player.seekToNext();
                break;
            case 10:
                if (mediaItemIndex != -1) {
                    this.player.seekTo(mediaItemIndex, positionMs);
                }
                break;
            case 11:
                this.player.seekBack();
                break;
            case 12:
                this.player.seekForward();
                break;
            default:
                throw new IllegalStateException();
        }
        return Futures.immediateVoidFuture();
    }

    @EnsuresNonNull({"this.player", "lastTimedMetadata", "playWhenReadyChangeReason", "pendingDiscontinuityReason", "livePositionSuppliers"})
    private void initializeForwardingState(Player player) {
        this.player = player;
        this.lastTimedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
        this.playWhenReadyChangeReason = 1;
        this.pendingDiscontinuityReason = 5;
        this.livePositionSuppliers = new LivePositionSuppliers(player);
    }

    private static final class LivePositionSuppliers {
        public final SimpleBasePlayer.LivePositionSupplier bufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentBufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier currentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier totalBufferedPositionSupplier;

        public LivePositionSuppliers(final Player player) {
            Objects.requireNonNull(player);
            this.currentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda0
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return player.getCurrentPosition();
                }
            });
            Objects.requireNonNull(player);
            this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return player.getBufferedPosition();
                }
            });
            Objects.requireNonNull(player);
            this.contentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda2
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return player.getContentPosition();
                }
            });
            Objects.requireNonNull(player);
            this.contentBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda3
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return player.getContentBufferedPosition();
                }
            });
            Objects.requireNonNull(player);
            this.totalBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer$LivePositionSuppliers$$ExternalSyntheticLambda4
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    return player.getTotalBufferedDuration();
                }
            });
        }

        public void disconnect(long positionMs, long contentPositionMs) {
            this.currentPositionSupplier.disconnect(positionMs);
            this.bufferedPositionSupplier.disconnect(positionMs);
            this.contentPositionSupplier.disconnect(contentPositionMs);
            this.contentBufferedPositionSupplier.disconnect(contentPositionMs);
            this.totalBufferedPositionSupplier.disconnect(0L);
        }
    }

    private class PlayerListener implements Player.Listener {
        private PlayerListener() {
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            ForwardingSimpleBasePlayer.this.lastTimedMetadata = metadata;
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlayWhenReadyChanged(boolean playWhenReady, int reason) {
            ForwardingSimpleBasePlayer.this.playWhenReadyChangeReason = reason;
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo oldPosition, Player.PositionInfo newPosition, int reason) {
            ForwardingSimpleBasePlayer.this.pendingDiscontinuityReason = reason;
            ForwardingSimpleBasePlayer.this.pendingPositionDiscontinuityNewPositionMs = newPosition.positionMs;
            ForwardingSimpleBasePlayer.this.livePositionSuppliers.disconnect(oldPosition.positionMs, oldPosition.contentPositionMs);
            ForwardingSimpleBasePlayer.this.livePositionSuppliers = new LivePositionSuppliers(ForwardingSimpleBasePlayer.this.player);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onRenderedFirstFrame() {
            ForwardingSimpleBasePlayer.this.pendingFirstFrameRendered = true;
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            ForwardingSimpleBasePlayer.this.invalidateState();
        }
    }
}
