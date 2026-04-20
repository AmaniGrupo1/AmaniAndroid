.class public final Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;
.super Ljava/lang/Object;
.source "Av1SampleDependencyParser.java"


# static fields
.field private static final MAX_BYTES_FROM_KEYFRAME_TO_READ:I = 0x1f4

.field private static final MAX_OBU_COUNT_FOR_PARTIAL_SKIP:I = 0x8


# instance fields
.field private final delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

.field private sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method private canSkipObu(Landroidx/media3/container/ObuParser$Obu;Z)Z
    .locals 5
    .param p1, "obu"    # Landroidx/media3/container/ObuParser$Obu;
    .param p2, "skipFrameHeaders"    # Z

    .line 152
    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 156
    return v3

    .line 158
    :cond_1
    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    invoke-static {v0, p1}, Landroidx/media3/container/ObuParser$FrameHeader;->parse(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$FrameHeader;

    move-result-object v0

    .line 160
    .local v0, "frameHeader":Landroidx/media3/container/ObuParser$FrameHeader;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    .line 162
    .end local v0    # "frameHeader":Landroidx/media3/container/ObuParser$FrameHeader;
    :cond_4
    return v3

    .line 153
    :cond_5
    :goto_1
    return v2
.end method

.method private emptyDelayedKeyFrameTruncatedSample()V
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    return-void
.end method

.method private updateSequenceHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/ObuParser$Obu;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "obuList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/ObuParser$Obu;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/ObuParser$Obu;

    iget v1, v1, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/ObuParser$Obu;

    invoke-static {v1}, Landroidx/media3/container/ObuParser$SequenceHeader;->parse(Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$SequenceHeader;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public queueInputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "sample"    # Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 134
    .local v0, "samplePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 135
    .local v1, "sampleLimit":I
    add-int/lit16 v2, v0, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 139
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 141
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    return-void
.end method

.method public reset()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 148
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->emptyDelayedKeyFrameTruncatedSample()V

    .line 149
    return-void
.end method

.method public sampleLimitAfterSkippingNonReferenceFrame(Ljava/nio/ByteBuffer;Z)I
    .locals 6
    .param p1, "sample"    # Ljava/nio/ByteBuffer;
    .param p2, "skipFrameHeaders"    # Z

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 94
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->emptyDelayedKeyFrameTruncatedSample()V

    .line 96
    :cond_0
    invoke-static {p1}, Landroidx/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "obuList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/container/ObuParser$Obu;>;"
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "skippedFramesCount":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 100
    .local v2, "last":I
    :goto_0
    if-ltz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    invoke-direct {p0, v4, p2}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->canSkipObu(Landroidx/media3/container/ObuParser$Obu;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    iget v4, v4, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    iget v4, v4, Landroidx/media3/container/ObuParser$Obu;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 106
    :cond_3
    if-gt v1, v3, :cond_6

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_4

    goto :goto_1

    .line 109
    :cond_4
    if-ltz v2, :cond_5

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/ObuParser$Obu;

    iget-object v3, v3, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    return v3

    .line 112
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    return v3

    .line 107
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    return v3
.end method
