.class public final Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field private notifiedDownstreamFormat:Z

.field public final parent:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

.field final synthetic this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;Landroidx/media3/exoplayer/source/SampleQueue;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
    .param p3, "sampleQueue"    # Landroidx/media3/exoplayer/source/SampleQueue;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Landroidx/media3/exoplayer/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 953
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    .local p2, "parent":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 955
    iput-object p3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 956
    iput p4, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    .line 957
    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .locals 8

    .line 1013
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$500(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 1015
    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$200(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget v2, v0, v2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 1016
    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$300(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[Landroidx/media3/common/Format;

    move-result-object v0

    iget v3, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-object v3, v0, v3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 1019
    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$400(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    .line 1014
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    .line 1022
    :cond_0
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 961
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .line 988
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 993
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 994
    return v1

    .line 996
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 997
    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 998
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 1001
    return v1

    .line 1003
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 1004
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .line 1008
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$100(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1009
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$100(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1010
    return-void
.end method

.method public skipData(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 966
    .local p0, "this":Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;, "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<TT;>.EmbeddedSampleStream;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const/4 v0, 0x0

    return v0

    .line 969
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result v0

    .line 970
    .local v0, "skipCount":I
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 974
    invoke-static {v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 975
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    sub-int/2addr v1, v2

    .line 976
    .local v1, "maxSkipCount":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 978
    .end local v1    # "maxSkipCount":I
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->skip(I)V

    .line 979
    if-lez v0, :cond_2

    .line 980
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 982
    :cond_2
    return v0
.end method
