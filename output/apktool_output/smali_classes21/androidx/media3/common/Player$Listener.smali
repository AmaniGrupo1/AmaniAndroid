.class public interface abstract Landroidx/media3/common/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1149
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .line 1139
    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 948
    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0
    .param p1, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 1249
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1238
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1179
    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 0
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1190
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 858
    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .line 930
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0
    .param p1, "isPlaying"    # Z

    .line 1012
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 0
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 1128
    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "reason"    # I

    .line 890
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 912
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 1260
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 991
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1097
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0
    .param p1, "playbackState"    # I

    .line 976
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0
    .param p1, "playbackSuppressionReason"    # I

    .line 1002
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1047
    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "error"    # Landroidx/media3/common/PlaybackException;

    .line 1060
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 920
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1067
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 1084
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 1223
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 1022
    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 0
    .param p1, "seekBackIncrementMs"    # J

    .line 1107
    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 0
    .param p1, "seekForwardIncrementMs"    # J

    .line 1117
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0
    .param p1, "shuffleModeEnabled"    # Z

    .line 1032
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0
    .param p1, "skipSilenceEnabled"    # Z

    .line 1169
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1214
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "reason"    # I

    .line 874
    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 958
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;

    .line 900
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1200
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 0
    .param p1, "volume"    # F

    .line 1159
    return-void
.end method
