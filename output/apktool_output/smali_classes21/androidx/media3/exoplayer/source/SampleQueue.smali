.class public Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;,
        Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;,
        Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private discardAllSamplesToStartTime:Z

.field private downstreamFormat:Landroidx/media3/common/Format;

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field private flags:[I

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private readEndTimeAbsoluteIndex:I

.field private readEndTimeUs:J

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

.field private sampleOffsetUs:J

.field private final sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/SpannedData<",
            "Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private sizes:[I

.field private sourceIds:[J

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Landroidx/media3/common/Format;

.field private upstreamFormat:Landroidx/media3/common/Format;

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:J


# direct methods
.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p3, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 165
    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 166
    new-instance v0, Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 167
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 168
    const/16 v0, 0x3e8

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    .line 169
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    .line 170
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 171
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 172
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 173
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 174
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array v0, v0, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 175
    new-instance v0, Landroidx/media3/exoplayer/source/SpannedData;

    new-instance v1, Landroidx/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/SpannedData;-><init>(Landroidx/media3/common/util/Consumer;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 177
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 178
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 179
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 181
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 182
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z

    .line 183
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    .line 185
    return-void
.end method

.method private declared-synchronized attemptSplice(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    monitor-enter p0

    .line 940
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 941
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    .line 943
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 944
    monitor-exit p0

    return v2

    .line 946
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result v0

    .line 947
    .local v0, "retainCount":I
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    monitor-exit p0

    return v1

    .line 939
    .end local v0    # "retainCount":I
    .end local p1    # "timeUs":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private static canDiscardAllSamplesToStartTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "codec"    # Ljava/lang/String;

    .line 1179
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1180
    .local v0, "trackType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private declared-synchronized commitSample(JIJILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 14
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide v0, p1

    monitor-enter p0

    .line 862
    :try_start_0
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 864
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 865
    .local v2, "previousSampleRelativeIndex":I
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v6, v5, v2

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v5, v5, v2

    int-to-long v8, v5

    add-long/2addr v6, v8

    cmp-long v5, v6, p4

    if-gtz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 869
    .end local v2    # "previousSampleRelativeIndex":I
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_1
    const/high16 v2, 0x20000000

    and-int v2, p3, v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 870
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 871
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_3

    .line 874
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v2, v5

    iput v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    .line 877
    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 878
    .local v2, "relativeEndIndex":I
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aput-wide v0, v5, v2

    .line 879
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aput-wide p4, v5, v2

    .line 880
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aput p6, v5, v2

    .line 881
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aput p3, v5, v2

    .line 882
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aput-object p7, v5, v2

    .line 883
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    aput-wide v6, v5, v2

    .line 885
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 886
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 887
    :cond_4
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Format;

    .line 889
    .local v5, "upstreamFormat":Landroidx/media3/common/Format;
    iget-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v6, :cond_5

    .line 890
    iget-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v6, v7, v5}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    move-result-object v6

    goto :goto_2

    .line 891
    :cond_5
    sget-object v6, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    :goto_2
    nop

    .line 893
    .local v6, "drmSessionReference":Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    iget-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 894
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v8

    new-instance v9, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v6, v10}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;Landroidx/media3/exoplayer/source/SampleQueue$1;)V

    .line 893
    invoke-virtual {v7, v8, v9}, Landroidx/media3/exoplayer/source/SpannedData;->appendSpan(ILjava/lang/Object;)V

    .line 897
    .end local v5    # "upstreamFormat":Landroidx/media3/common/Format;
    .end local v6    # "drmSessionReference":Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    :cond_6
    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 898
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne v3, v5, :cond_7

    .line 900
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit16 v3, v3, 0x3e8

    .line 901
    .local v3, "newCapacity":I
    new-array v5, v3, [J

    .line 902
    .local v5, "newSourceIds":[J
    new-array v6, v3, [J

    .line 903
    .local v6, "newOffsets":[J
    new-array v7, v3, [J

    .line 904
    .local v7, "newTimesUs":[J
    new-array v8, v3, [I

    .line 905
    .local v8, "newFlags":[I
    new-array v9, v3, [I

    .line 906
    .local v9, "newSizes":[I
    new-array v10, v3, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 907
    .local v10, "newCryptoDatas":[Landroidx/media3/extractor/TrackOutput$CryptoData;
    iget v11, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    iget v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr v11, v12

    .line 908
    .local v11, "beforeWrap":I
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v6, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v7, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v8, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v10, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    iget-object v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v12, v13, v5, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    iget v12, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 915
    .local v12, "afterWrap":I
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v13, v4, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    invoke-static {v13, v4, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    invoke-static {v13, v4, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    invoke-static {v13, v4, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v13, v4, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    iget-object v13, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    invoke-static {v13, v4, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    iput-object v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 922
    iput-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 923
    iput-object v8, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 924
    iput-object v9, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 925
    iput-object v10, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 926
    iput-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    .line 927
    iput v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 928
    iput v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    .end local v3    # "newCapacity":I
    .end local v5    # "newSourceIds":[J
    .end local v6    # "newOffsets":[J
    .end local v7    # "newTimesUs":[J
    .end local v8    # "newFlags":[I
    .end local v9    # "newSizes":[I
    .end local v10    # "newCryptoDatas":[Landroidx/media3/extractor/TrackOutput$CryptoData;
    .end local v11    # "beforeWrap":I
    .end local v12    # "afterWrap":I
    :cond_7
    monitor-exit p0

    return-void

    .line 861
    .end local v2    # "relativeEndIndex":I
    .end local p1    # "timeUs":J
    .end local p3    # "sampleFlags":I
    .end local p4    # "offset":J
    .end local p6    # "size":I
    .end local p7    # "cryptoData":Landroidx/media3/extractor/TrackOutput$CryptoData;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private countUnreadSamplesBefore(J)I
    .locals 5
    .param p1, "timeUs"    # J

    .line 1094
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 1095
    .local v0, "count":I
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 1096
    .local v1, "relativeSampleIndex":I
    :cond_0
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_1

    .line 1097
    add-int/lit8 v0, v0, -0x1

    .line 1098
    add-int/lit8 v1, v1, -0x1

    .line 1099
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1100
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 1103
    :cond_1
    return v0
.end method

.method public static createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 3
    .param p0, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p3, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 156
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue;

    .line 157
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 156
    return-object v0
.end method

.method public static createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 3
    .param p0, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p1, "drmSessionManager"    # Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .param p2, "drmEventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 140
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue;

    .line 141
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 140
    return-object v0
.end method

.method public static createWithoutDrm(Landroidx/media3/exoplayer/upstream/Allocator;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 2
    .param p0, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;

    .line 120
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method private declared-synchronized discardSampleMetadataTo(JZZ)J
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    monitor-enter p0

    .line 821
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    goto :goto_1

    .line 824
    :cond_0
    if-eqz p4, :cond_1

    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .end local p4    # "stopAtReadPosition":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_3

    .line 824
    .restart local p1    # "timeUs":J
    .restart local p3    # "toKeyframe":Z
    .restart local p4    # "stopAtReadPosition":Z
    :cond_1
    :try_start_2
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    :goto_0
    move v5, v0

    .line 825
    .local v5, "searchLength":I
    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .local v6, "timeUs":J
    .local v8, "toKeyframe":Z
    .restart local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :try_start_3
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 826
    .local p1, "discardCount":I
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 827
    monitor-exit p0

    return-wide v1

    .line 829
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-wide p2

    .line 821
    .end local v5    # "searchLength":I
    .end local v6    # "timeUs":J
    .end local v8    # "toKeyframe":Z
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .local p1, "timeUs":J
    .restart local p3    # "toKeyframe":Z
    :cond_3
    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    .line 822
    .end local p1    # "timeUs":J
    .end local p3    # "toKeyframe":Z
    .restart local v6    # "timeUs":J
    .restart local v8    # "toKeyframe":Z
    :goto_1
    monitor-exit p0

    return-wide v1

    .line 820
    .end local v6    # "timeUs":J
    .end local v8    # "toKeyframe":Z
    .end local p4    # "stopAtReadPosition":Z
    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method private declared-synchronized discardSampleMetadataToEnd()J
    .locals 2

    monitor-enter p0

    .line 840
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 841
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 843
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 839
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private discardSamples(I)J
    .locals 6
    .param p1, "discardCount"    # I

    .line 1114
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1115
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1116
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 1117
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    .line 1118
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 1119
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-lt v0, v1, :cond_0

    .line 1120
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 1122
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 1123
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-gez v0, :cond_1

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 1126
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/SpannedData;->discardTo(I)V

    .line 1128
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_3

    .line 1129
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 1130
    .local v0, "relativeLastDiscardIndex":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    return-wide v2

    .line 1132
    .end local v0    # "relativeLastDiscardIndex":I
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method private discardUpstreamSampleMetadata(I)J
    .locals 7
    .param p1, "discardFromIndex"    # I

    .line 952
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    .line 953
    .local v0, "discardCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 954
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 955
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 956
    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 957
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    if-ge p1, v1, :cond_2

    .line 958
    iput v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    .line 960
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/SpannedData;->discardFrom(I)V

    .line 961
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eqz v1, :cond_3

    .line 962
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 963
    .local v1, "relativeLastWriteIndex":I
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v3, v2, v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v2, v2, v1

    int-to-long v5, v2

    add-long/2addr v3, v5

    return-wide v3

    .line 965
    .end local v1    # "relativeLastWriteIndex":I
    :cond_3
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private findSampleAfter(IIJZ)I
    .locals 5
    .param p1, "relativeStartIndex"    # I
    .param p2, "length"    # I
    .param p3, "timeUs"    # J
    .param p5, "allowTimeBeyondBuffer"    # Z

    .line 1073
    move v0, p1

    .line 1074
    .local v0, "searchIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1075
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p3

    if-ltz v2, :cond_0

    .line 1076
    return v1

    .line 1078
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1079
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne v0, v2, :cond_1

    .line 1080
    const/4 v0, 0x0

    .line 1074
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    .end local v1    # "i":I
    :cond_2
    if-eqz p5, :cond_3

    move v1, p2

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private findSampleBefore(IIJZ)I
    .locals 6
    .param p1, "relativeStartIndex"    # I
    .param p2, "length"    # I
    .param p3, "timeUs"    # J
    .param p5, "keyframe"    # Z

    .line 1039
    const/4 v0, -0x1

    .line 1040
    .local v0, "sampleCountToTarget":I
    move v1, p1

    .line 1041
    .local v1, "searchIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    .line 1042
    if-eqz p5, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1044
    :cond_0
    move v0, v2

    .line 1045
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-nez v3, :cond_1

    .line 1048
    goto :goto_1

    .line 1051
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1052
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne v1, v3, :cond_2

    .line 1053
    const/4 v1, 0x0

    .line 1041
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return v0
.end method

.method private getLargestTimestamp(I)J
    .locals 7
    .param p1, "length"    # I

    .line 1145
    if-nez p1, :cond_0

    .line 1146
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 1148
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 1149
    .local v0, "largestTimestampUs":J
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 1150
    .local v2, "relativeSampleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 1151
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1152
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1153
    goto :goto_1

    .line 1155
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1156
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1157
    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 1150
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 1169
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 1170
    .local v0, "relativeIndex":I
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method private hasNextSample()Z
    .locals 2

    .line 969
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V
    .locals 1
    .param p0, "metadata"    # Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 176
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method

.method private mayReadSample(I)Z
    .locals 2
    .param p1, "relativeReadIndex"    # I

    .line 1017
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1018
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v0, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1020
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1017
    :goto_1
    return v0
.end method

.method private onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 6
    .param p1, "newFormat"    # Landroidx/media3/common/Format;
    .param p2, "outputFormatHolder"    # Landroidx/media3/exoplayer/FormatHolder;

    .line 980
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 982
    .local v0, "isFirstFormat":Z
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 983
    .local v1, "oldDrmInitData":Landroidx/media3/common/DrmInitData;
    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    .line 984
    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 986
    .local v2, "newDrmInitData":Landroidx/media3/common/DrmInitData;
    nop

    .line 987
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    .line 988
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v3

    goto :goto_2

    .line 989
    :cond_2
    move-object v3, p1

    :goto_2
    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 990
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 991
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-nez v3, :cond_3

    .line 993
    return-void

    .line 995
    :cond_3
    if-nez v0, :cond_4

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 997
    return-void

    .line 1001
    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1002
    .local v3, "previousSession":Landroidx/media3/exoplayer/drm/DrmSession;
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1003
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v4, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1005
    if-eqz v3, :cond_5

    .line 1006
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1008
    :cond_5
    return-void
.end method

.method private declared-synchronized peekSampleMetadata(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I
    .locals 9
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "extrasHolder"    # Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    monitor-enter p0

    .line 754
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 755
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v1

    .line 756
    .local v1, "readIndex":I
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    if-lt v1, v2, :cond_0

    move v0, v4

    .line 758
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .local v0, "readEndTimeReached":Z
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v2

    const/4 v3, -0x5

    const/4 v5, -0x3

    const/4 v6, -0x4

    if-eqz v2, :cond_7

    if-eqz v0, :cond_1

    goto :goto_1

    .line 771
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    .line 772
    .local v2, "format":Landroidx/media3/common/Format;
    if-nez p3, :cond_6

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v2, v7, :cond_2

    goto :goto_0

    .line 777
    :cond_2
    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v3

    .line 778
    .local v3, "relativeReadIndex":I
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 779
    iput-boolean v4, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return v5

    .line 783
    :cond_3
    :try_start_1
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v5, v5, v3

    invoke-virtual {p2, v5}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 784
    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v7, v4

    if-ne v5, v7, :cond_5

    if-nez p4, :cond_4

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v4, :cond_5

    .line 785
    :cond_4
    const/high16 v4, 0x20000000

    invoke-virtual {p2, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 787
    :cond_5
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v7, v4, v3

    iput-wide v7, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 788
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v4, v4, v3

    iput v4, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 789
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v7, v4, v3

    iput-wide v7, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 790
    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aget-object v4, v4, v3

    iput-object v4, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    monitor-exit p0

    return v6

    .line 773
    .end local v3    # "relativeReadIndex":I
    :cond_6
    :goto_0
    :try_start_2
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    monitor-exit p0

    return v3

    .line 759
    .end local v2    # "format":Landroidx/media3/common/Format;
    :cond_7
    :goto_1
    if-nez p4, :cond_b

    :try_start_3
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_8

    goto :goto_2

    .line 763
    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_a

    if-nez p3, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v2, v4, :cond_a

    .line 764
    :cond_9
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 765
    monitor-exit p0

    return v3

    .line 767
    :cond_a
    monitor-exit p0

    return v5

    .line 760
    :cond_b
    :goto_2
    const/4 v2, 0x4

    :try_start_4
    invoke-virtual {p2, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 761
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 762
    monitor-exit p0

    return v6

    .line 753
    .end local v0    # "readEndTimeReached":Z
    .end local v1    # "readIndex":I
    .end local p1    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local p2    # "buffer":Landroidx/media3/decoder/DecoderInputBuffer;
    .end local p3    # "formatRequired":Z
    .end local p4    # "loadingFinished":Z
    .end local p5    # "extrasHolder":Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private releaseDrmSessionReferences()V
    .locals 2

    .line 847
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 852
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    .line 854
    :cond_0
    return-void
.end method

.method private declared-synchronized rewind()V
    .locals 1

    monitor-enter p0

    .line 743
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 744
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleDataQueue;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    monitor-exit p0

    return-void

    .line 742
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized setUpstreamFormat(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;

    monitor-enter p0

    .line 796
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 797
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 801
    monitor-exit p0

    return v0

    .line 804
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 805
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    goto :goto_0

    .line 811
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 813
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 814
    invoke-static {v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->canDiscardAllSamplesToStartTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z

    .line 815
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 795
    .end local p1    # "format":Landroidx/media3/common/Format;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized discardSampleMetadataToRead()J
    .locals 2

    monitor-enter p0

    .line 833
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 834
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 836
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 832
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "toKeyframe"    # Z
    .param p4, "stopAtReadPosition"    # Z

    .line 599
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 600
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide v1

    .line 599
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 601
    return-void
.end method

.method public final discardToEnd()V
    .locals 3

    .line 610
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 611
    return-void
.end method

.method public final discardToRead()V
    .locals 3

    .line 605
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    .line 606
    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .locals 2
    .param p1, "timeUs"    # J

    .line 312
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 316
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result v0

    .line 317
    .local v0, "retainCount":I
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 318
    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .locals 3
    .param p1, "discardFromIndex"    # I

    .line 301
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    .line 302
    return-void
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 642
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    .line 643
    .local v0, "adjustedUpstreamFormat":Landroidx/media3/common/Format;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 644
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    .line 645
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->setUpstreamFormat(Landroidx/media3/common/Format;)Z

    move-result v1

    .line 646
    .local v1, "upstreamFormatChanged":Z
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 647
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Landroidx/media3/common/Format;)V

    .line 649
    :cond_0
    return-void
.end method

.method protected getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 5
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 729
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 730
    nop

    .line 732
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, v3

    .line 733
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 736
    :cond_0
    return-object p1
.end method

.method public final getFirstIndex()I
    .locals 1

    .line 344
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .locals 3

    monitor-enter p0

    .line 416
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    .line 416
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    .line 380
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 380
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .locals 4

    monitor-enter p0

    .line 398
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 398
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getReadIndex()I
    .locals 2

    .line 349
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .locals 8
    .param p1, "timeUs"    # J
    .param p3, "allowEndOfQueue"    # Z

    monitor-enter p0

    .line 562
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    move v2, v0

    .line 563
    .local v2, "relativeReadIndex":I
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    move-object v1, p0

    move-wide v4, p1

    goto :goto_0

    .line 566
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    .line 567
    :try_start_1
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 561
    .end local v2    # "relativeReadIndex":I
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "timeUs":J
    .end local p3    # "allowEndOfQueue":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_2

    .line 569
    .restart local v2    # "relativeReadIndex":I
    .restart local p1    # "timeUs":J
    .restart local p3    # "allowEndOfQueue":Z
    :cond_1
    :try_start_2
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-int v3, v0, v1

    .line 570
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .end local p1    # "timeUs":J
    .local v4, "timeUs":J
    .restart local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :try_start_3
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 571
    .local p1, "offset":I
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 572
    monitor-exit p0

    return v7

    .line 574
    :cond_2
    monitor-exit p0

    return p1

    .line 563
    .end local v4    # "timeUs":J
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .local p1, "timeUs":J
    :cond_3
    move-object v1, p0

    move-wide v4, p1

    .line 564
    .end local p1    # "timeUs":J
    .restart local v4    # "timeUs":J
    :goto_0
    monitor-exit p0

    return v7

    .line 561
    .end local v2    # "relativeReadIndex":I
    .end local v4    # "timeUs":J
    .end local p3    # "allowEndOfQueue":Z
    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized getUpstreamFormat()Landroidx/media3/common/Format;
    .locals 1

    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 366
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getWriteIndex()I
    .locals 2

    .line 291
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized hasQueuedTimestampsUpToReadEndTimeUs()Z
    .locals 2

    monitor-enter p0

    .line 388
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 388
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final invalidateUpstreamFormatAdjustment()V
    .locals 1

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 715
    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .locals 1

    monitor-enter p0

    .line 411
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 411
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .locals 4
    .param p1, "loadingFinished"    # Z

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 434
    .local v0, "readIndex":I
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 435
    monitor-exit p0

    return v3

    .line 437
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-nez v1, :cond_3

    .line 438
    if-nez p1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v3

    .line 442
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, v2, :cond_4

    .line 444
    monitor-exit p0

    return v3

    .line 446
    :cond_4
    :try_start_3
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 432
    .end local v0    # "readIndex":I
    .end local p1    # "loadingFinished":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    throw v0

    .line 340
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized peekSourceId()J
    .locals 4

    monitor-enter p0

    .line 359
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 360
    .local v0, "relativeReadIndex":I
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    aget-wide v2, v1, v0

    goto :goto_0

    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v2

    .line 358
    .end local v0    # "relativeReadIndex":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public preRelease()V
    .locals 0

    .line 325
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 326
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    .line 327
    return-void
.end method

.method public read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I
    .locals 9
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I
    .param p4, "loadingFinished"    # Z

    .line 473
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 474
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    .end local p1    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local p2    # "buffer":Landroidx/media3/decoder/DecoderInputBuffer;
    .end local p4    # "loadingFinished":Z
    .local v4, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .local v5, "buffer":Landroidx/media3/decoder/DecoderInputBuffer;
    .local v7, "loadingFinished":Z
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->peekSampleMetadata(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    .line 480
    .local p1, "result":I
    const/4 p2, -0x4

    if-ne p1, p2, :cond_4

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p2

    if-nez p2, :cond_4

    .line 481
    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_1

    move v1, v2

    .line 482
    .local v1, "peek":Z
    :cond_1
    and-int/lit8 p2, p3, 0x4

    if-nez p2, :cond_3

    .line 483
    nop

    .line 486
    iget-object p2, v3, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 483
    if-eqz v1, :cond_2

    .line 484
    iget-object p4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p2, v5, p4}, Landroidx/media3/exoplayer/source/SampleDataQueue;->peekToBuffer(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    goto :goto_1

    .line 486
    :cond_2
    iget-object p4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p2, v5, p4}, Landroidx/media3/exoplayer/source/SampleDataQueue;->readToBuffer(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    .line 489
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 490
    iget p2, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p2, v2

    iput p2, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 493
    .end local v1    # "peek":Z
    :cond_4
    return p1
.end method

.method public release()V
    .locals 1

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    .line 193
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    .line 194
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    .line 199
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "resetUpstreamFormat"    # Z

    .line 211
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleDataQueue;->reset()V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 213
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    .line 214
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 215
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 216
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 218
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 219
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 220
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 221
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 222
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SpannedData;->clear()V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    .line 225
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 226
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 227
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z

    .line 229
    :cond_0
    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/common/DataReader;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .param p4, "sampleDataPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleDataQueue;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    return v0
.end method

.method public final sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "length"    # I
    .param p3, "sampleDataPart"    # I

    .line 661
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 662
    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 13
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "cryptoData"    # Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 671
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->format(Landroidx/media3/common/Format;)V

    .line 675
    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 676
    .local v0, "isKeyframe":Z
    :goto_0
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v3, :cond_3

    .line 677
    if-nez v0, :cond_2

    .line 678
    return-void

    .line 680
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 683
    :cond_3
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long v6, p1, v3

    .line 684
    .end local p1    # "timeUs":J
    .local v6, "timeUs":J
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z

    if-eqz v3, :cond_6

    .line 685
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v3, v6, v3

    if-gez v3, :cond_4

    .line 686
    return-void

    .line 688
    :cond_4
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_6

    .line 691
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v3, :cond_5

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SampleQueue"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    .line 695
    :cond_5
    or-int/lit8 v2, p3, 0x1

    move v8, v2

    .end local p3    # "flags":I
    .local v2, "flags":I
    goto :goto_1

    .line 698
    .end local v2    # "flags":I
    .restart local p3    # "flags":I
    :cond_6
    move/from16 v8, p3

    .end local p3    # "flags":I
    .local v8, "flags":I
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    if-eqz v2, :cond_9

    .line 699
    if-eqz v0, :cond_8

    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->attemptSplice(J)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 702
    :cond_7
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    goto :goto_3

    .line 700
    :cond_8
    :goto_2
    return-void

    .line 705
    :cond_9
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v1

    move/from16 v11, p4

    int-to-long v3, v11

    sub-long/2addr v1, v3

    move/from16 v3, p5

    int-to-long v4, v3

    sub-long v9, v1, v4

    .line 706
    .local v9, "absoluteOffset":J
    move-object v5, p0

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Landroidx/media3/exoplayer/source/SampleQueue;->commitSample(JIJILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 707
    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .locals 3
    .param p1, "sampleIndex"    # I

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->rewind()V

    .line 504
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    .line 508
    monitor-exit p0

    return v1

    .line 510
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    :try_start_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 511
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 505
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 502
    .end local p1    # "sampleIndex":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 10
    .param p1, "timeUs"    # J
    .param p3, "allowTimeBeyondBuffer"    # Z

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->rewind()V

    .line 528
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    move v2, v0

    .line 530
    .local v2, "relativeReadIndex":I
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    .line 532
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 530
    if-eqz v0, :cond_0

    .line 531
    :try_start_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 526
    .end local v2    # "relativeReadIndex":I
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "timeUs":J
    .end local p3    # "allowTimeBeyondBuffer":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_4

    .line 532
    .restart local v2    # "relativeReadIndex":I
    .restart local p1    # "timeUs":J
    .restart local p3    # "allowTimeBeyondBuffer":Z
    :cond_0
    nop

    :goto_0
    move-wide v7, v3

    .line 533
    .local v7, "maxPossibleSeekTimeUs":J
    :try_start_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4

    cmp-long v0, p1, v7

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    move-object v1, p0

    move-wide v4, p1

    goto :goto_2

    .line 539
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->discardAllSamplesToStartTime:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 542
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 539
    if-eqz v0, :cond_2

    .line 540
    :try_start_3
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-int v3, v1, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    .end local p1    # "timeUs":J
    .end local p3    # "allowTimeBeyondBuffer":Z
    .local v4, "timeUs":J
    .local v6, "allowTimeBeyondBuffer":Z
    .restart local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :try_start_4
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleAfter(IIJZ)I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p2, v1

    .end local v6    # "allowTimeBeyondBuffer":Z
    .restart local p3    # "allowTimeBeyondBuffer":Z
    move-object v1, p2

    goto :goto_1

    .line 526
    .end local v2    # "relativeReadIndex":I
    .end local v4    # "timeUs":J
    .end local v7    # "maxPossibleSeekTimeUs":J
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p3    # "allowTimeBeyondBuffer":Z
    :catchall_1
    move-exception v0

    move-object p2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p2, p0

    move-object p1, v0

    move-object v1, p2

    goto :goto_4

    .line 542
    .restart local v2    # "relativeReadIndex":I
    .restart local v7    # "maxPossibleSeekTimeUs":J
    .restart local p1    # "timeUs":J
    .restart local p3    # "allowTimeBeyondBuffer":Z
    :cond_2
    move-wide v4, p1

    move-object p2, p0

    .end local p1    # "timeUs":J
    .restart local v4    # "timeUs":J
    :try_start_5
    iget p1, p2, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    sub-int v3, v1, p1

    const/4 v6, 0x1

    move-object v1, p2

    .restart local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :try_start_6
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_1
    nop

    .line 544
    .local p1, "offset":I
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 545
    monitor-exit p0

    return v9

    .line 547
    :cond_3
    :try_start_7
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 548
    iget p2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 549
    monitor-exit p0

    const/4 p2, 0x1

    return p2

    .line 526
    .end local v2    # "relativeReadIndex":I
    .end local v4    # "timeUs":J
    .end local v7    # "maxPossibleSeekTimeUs":J
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "offset":I
    .end local p3    # "allowTimeBeyondBuffer":Z
    :catchall_3
    move-exception v0

    move-object v1, p2

    goto :goto_3

    .line 533
    .restart local v2    # "relativeReadIndex":I
    .restart local v7    # "maxPossibleSeekTimeUs":J
    .local p1, "timeUs":J
    .restart local p3    # "allowTimeBeyondBuffer":Z
    :cond_4
    move-object v1, p0

    move-wide v4, p1

    .line 536
    .end local p1    # "timeUs":J
    .restart local v4    # "timeUs":J
    :goto_2
    monitor-exit p0

    return v9

    .line 526
    .end local v2    # "relativeReadIndex":I
    .end local v4    # "timeUs":J
    .end local v7    # "maxPossibleSeekTimeUs":J
    .end local p3    # "allowTimeBeyondBuffer":Z
    :catchall_4
    move-exception v0

    move-object v1, p0

    :goto_3
    move-object p1, v0

    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public final declared-synchronized setReadEndTimeUs(J)V
    .locals 9
    .param p1, "readEndTimeUs"    # J

    monitor-enter p0

    .line 254
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 255
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 258
    :try_start_1
    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 253
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "readEndTimeUs":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_3

    .line 262
    .restart local p1    # "readEndTimeUs":J
    :cond_1
    const/4 v0, -0x1

    .line 263
    .local v0, "readEndTimeRelativeIndex":I
    :try_start_2
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 264
    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    const/4 v8, 0x0

    move-object v3, p0

    move-wide v6, p1

    .end local p1    # "readEndTimeUs":J
    .local v6, "readEndTimeUs":J
    .restart local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    :try_start_3
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleAfter(IIJZ)I

    move-result p1

    move v0, p1

    goto :goto_0

    .line 263
    .end local v6    # "readEndTimeUs":J
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .restart local p1    # "readEndTimeUs":J
    :cond_2
    move-object v3, p0

    move-wide v6, p1

    .line 268
    .end local p1    # "readEndTimeUs":J
    .restart local v6    # "readEndTimeUs":J
    :goto_0
    nop

    .line 269
    if-ne v0, v1, :cond_3

    .line 270
    goto :goto_1

    .line 271
    :cond_3
    iget p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int v1, p1, v0

    :goto_1
    iput v1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeAbsoluteIndex:I

    .line 272
    iput-wide v6, v3, Landroidx/media3/exoplayer/source/SampleQueue;->readEndTimeUs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 273
    monitor-exit p0

    return-void

    .line 253
    .end local v0    # "readEndTimeRelativeIndex":I
    .end local v6    # "readEndTimeUs":J
    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public final setSampleOffsetUs(J)V
    .locals 2
    .param p1, "sampleOffsetUs"    # J

    .line 622
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 623
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    .line 624
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    .line 626
    :cond_0
    return-void
.end method

.method public final setStartTimeUs(J)V
    .locals 0
    .param p1, "startTimeUs"    # J

    .line 239
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 240
    return-void
.end method

.method public final setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    .line 635
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    .line 636
    return-void
.end method

.method public final declared-synchronized skip(I)V
    .locals 2
    .param p1, "count"    # I

    monitor-enter p0

    .line 584
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 583
    .end local p0    # "this":Landroidx/media3/exoplayer/source/SampleQueue;
    .end local p1    # "count":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 584
    .restart local p1    # "count":I
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 585
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 583
    .end local p1    # "count":I
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final sourceId(J)V
    .locals 0
    .param p1, "sourceId"    # J

    .line 281
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    .line 282
    return-void
.end method

.method public final splice()V
    .locals 1

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    .line 287
    return-void
.end method
