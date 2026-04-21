.class final Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;
.super Ljava/lang/Object;
.source "MediaExtractorCompatInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleMetadataQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    }
.end annotation


# instance fields
.field private final sampleMetadataPool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleMetadataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    .line 1065
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    .line 1066
    return-void
.end method

.method private obtainSampleMetadata(JII)Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "trackIndex"    # I

    .line 1116
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    new-instance v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;-><init>(JII)V

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    :goto_0
    nop

    .line 1119
    .local v0, "metadata":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;->set(JII)V

    .line 1120
    return-object v0
.end method


# virtual methods
.method public addLast(JII)V
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "trackIndex"    # I

    .line 1077
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->obtainSampleMetadata(JII)Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    move-result-object v0

    .line 1078
    .local v0, "metadata":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1079
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1103
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    .line 1104
    .local v1, "metadata":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1105
    .end local v1    # "metadata":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    goto :goto_0

    .line 1106
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1107
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1111
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    .locals 1

    .line 1098
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    return-object v0
.end method

.method public removeFirst()Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    .locals 2

    .line 1086
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;

    .line 1087
    .local v0, "metadata":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue$SampleMetadata;
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$SampleMetadataQueue;->sampleMetadataPool:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1088
    return-object v0
.end method
