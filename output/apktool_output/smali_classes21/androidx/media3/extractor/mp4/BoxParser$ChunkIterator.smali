.class final Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

.field private final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field private nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field private remainingSamplesPerChunkChanges:I

.field private final stsc:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V
    .locals 2
    .param p1, "stsc"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "chunkOffsets"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p3, "chunkOffsetsAreLongs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 2759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2760
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    .line 2761
    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

    .line 2762
    iput-boolean p3, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsetsAreLongs:Z

    .line 2763
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2764
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    .line 2765
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2766
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 2767
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "first_chunk must be 1"

    invoke-static {v1, v0}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2768
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    .line 2769
    return-void
.end method


# virtual methods
.method public moveNext()Z
    .locals 4

    .line 2772
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->length:I

    if-ne v0, v2, :cond_0

    .line 2773
    const/4 v0, 0x0

    return v0

    .line 2775
    :cond_0
    nop

    .line 2776
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsetsAreLongs:Z

    .line 2778
    iget-object v2, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

    .line 2776
    if-eqz v0, :cond_1

    .line 2777
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0

    .line 2778
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->offset:J

    .line 2779
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_3

    .line 2780
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->numSamples:I

    .line 2781
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2782
    nop

    .line 2783
    iget v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_2

    .line 2784
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2785
    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    .line 2787
    :cond_3
    return v1
.end method
