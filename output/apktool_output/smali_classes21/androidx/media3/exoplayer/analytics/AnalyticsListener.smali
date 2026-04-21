.class public interface abstract Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventFlags;,
        Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x14

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x405

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f0

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f4

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f5

.field public static final EVENT_AUDIO_ENABLED:I = 0x3ef

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f1

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f2

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x15

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3f6

.field public static final EVENT_AUDIO_TRACK_INITIALIZED:I = 0x407

.field public static final EVENT_AUDIO_TRACK_RELEASED:I = 0x408

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f3

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee

.field public static final EVENT_CUES:I = 0x1b

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x1d

.field public static final EVENT_DEVICE_VOLUME_CHANGED:I = 0x1e

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x3ff

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x402

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x401

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x3fe

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x400

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x403

.field public static final EVENT_DROPPED_SEEKS_WHILE_SCRUBBING:I = 0x40a

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3fa

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9

.field public static final EVENT_LOAD_ERROR:I = 0x3eb

.field public static final EVENT_LOAD_STARTED:I = 0x3e8

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe

.field public static final EVENT_METADATA:I = 0x1c

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6

.field public static final EVENT_PLAYER_ERROR:I = 0xa

.field public static final EVENT_PLAYER_RELEASED:I = 0x404

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x1a

.field public static final EVENT_RENDERER_READY_CHANGED:I = 0x409

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x17

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x18

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0

.field public static final EVENT_TRACKS_CHANGED:I = 0x2

.field public static final EVENT_TRACK_SELECTION_PARAMETERS_CHANGED:I = 0x13

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x406

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3f8

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x3fb

.field public static final EVENT_VIDEO_DISABLED:I = 0x3fc

.field public static final EVENT_VIDEO_ENABLED:I = 0x3f7

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x3fd

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3f9

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x19

.field public static final EVENT_VOLUME_CHANGED:I = 0x16


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1094
    return-void
.end method

.method public onAudioCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioCodecError"    # Ljava/lang/Exception;

    .line 1138
    return-void
.end method

.method public onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1019
    return-void
.end method

.method public onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 1011
    return-void
.end method

.method public onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1076
    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 995
    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1034
    return-void
.end method

.method public onAudioPositionAdvancing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playoutStartSystemTimeMs"    # J

    .line 1045
    return-void
.end method

.method public onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSessionId"    # I

    .line 1085
    return-void
.end method

.method public onAudioSinkError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioSinkError"    # Ljava/lang/Exception;

    .line 1121
    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 1149
    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 1160
    return-void
.end method

.method public onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "bufferSize"    # I
    .param p3, "bufferSizeMs"    # J
    .param p5, "elapsedSinceLastFeedMs"    # J

    .line 1058
    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "availableCommands"    # Landroidx/media3/common/Player$Commands;

    .line 783
    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "totalLoadTimeMs"    # I
    .param p3, "totalBytesLoaded"    # J
    .param p5, "bitrateEstimate"    # J

    .line 950
    return-void
.end method

.method public onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "cueGroup"    # Landroidx/media3/common/text/CueGroup;

    .line 985
    return-void
.end method

.method public onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "deviceInfo"    # Landroidx/media3/common/DeviceInfo;

    .line 1178
    return-void
.end method

.method public onDeviceVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # I
    .param p3, "muted"    # Z

    .line 1188
    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 928
    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    .line 1381
    return-void
.end method

.method public onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1413
    return-void
.end method

.method public onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1405
    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1356
    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 1365
    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 1397
    return-void
.end method

.method public onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1421
    return-void
.end method

.method public onDroppedSeeksWhileScrubbing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedSeeks"    # I

    .line 1452
    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "droppedFrames"    # I
    .param p3, "elapsedMs"    # J

    .line 1249
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 1490
    return-void
.end method

.method public onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z

    .line 767
    return-void
.end method

.method public onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isPlaying"    # Z

    .line 647
    return-void
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 895
    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 884
    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 919
    return-void
.end method

.method public onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 857
    return-void
.end method

.method public onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "loadEventInfo"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "retryCount"    # I

    .line 873
    return-void
.end method

.method public onLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "maxSeekToPreviousPositionMs"    # J

    .line 740
    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "reason"    # I

    .line 669
    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 839
    return-void
.end method

.method public onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "metadata"    # Landroidx/media3/common/Metadata;

    .line 959
    return-void
.end method

.method public onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "reason"    # I

    .line 628
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 711
    return-void
.end method

.method public onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "state"    # I

    .line 617
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playbackSuppressionReason"    # I

    .line 638
    return-void
.end method

.method public onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media3/common/PlaybackException;

    .line 795
    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "error"    # Landroidx/media3/common/PlaybackException;

    .line 807
    return-void
.end method

.method public onPlayerReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1460
    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playWhenReady"    # Z
    .param p3, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "playlistMetadata"    # Landroidx/media3/common/MediaMetadata;

    .line 848
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p4, "reason"    # I

    .line 692
    return-void
.end method

.method public onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "output"    # Ljava/lang/Object;
    .param p3, "renderTimeMs"    # J

    .line 1315
    return-void
.end method

.method public onRendererReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "rendererIndex"    # I
    .param p3, "rendererTrackType"    # I
    .param p4, "isRendererReady"    # Z

    .line 1437
    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "repeatMode"    # I

    .line 749
    return-void
.end method

.method public onSeekBackIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "seekBackIncrementMs"    # J

    .line 720
    return-void
.end method

.method public onSeekForwardIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "seekForwardIncrementMs"    # J

    .line 729
    return-void
.end method

.method public onSeekStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "shuffleModeEnabled"    # Z

    .line 758
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "skipSilenceEnabled"    # Z

    .line 1103
    return-void
.end method

.method public onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1349
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "reason"    # I

    .line 656
    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "trackSelectionParameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 826
    return-void
.end method

.method public onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "tracks"    # Landroidx/media3/common/Tracks;

    .line 816
    return-void
.end method

.method public onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 938
    return-void
.end method

.method public onVideoCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "videoCodecError"    # Ljava/lang/Exception;

    .line 1303
    return-void
.end method

.method public onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializationDurationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1222
    return-void
.end method

.method public onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 1214
    return-void
.end method

.method public onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderName"    # Ljava/lang/String;

    .line 1258
    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1267
    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "decoderCounters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 1198
    return-void
.end method

.method public onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "totalProcessingOffsetUs"    # J
    .param p4, "frameCount"    # I

    .line 1286
    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1237
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "unappliedRotationDegrees"    # I
    .param p5, "pixelWidthHeightRatio"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1337
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1325
    return-void
.end method

.method public onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "volume"    # F

    .line 1169
    return-void
.end method
