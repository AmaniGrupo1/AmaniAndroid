.class public Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private final chunkCount:I

.field private final chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJIJLandroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V
    .locals 4
    .param p1, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media3/common/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "clippedStartTimeUs"    # J
    .param p12, "clippedEndTimeUs"    # J
    .param p14, "chunkIndex"    # J
    .param p16, "chunkCount"    # I
    .param p17, "sampleOffsetUs"    # J
    .param p19, "chunkExtractor"    # Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 80
    invoke-direct/range {p0 .. p15}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    .line 91
    move/from16 v0, p16

    iput v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 92
    move-wide/from16 v1, p17

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 93
    move-object/from16 v3, p19

    iput-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 94
    return-void
.end method

.method private maybeWriteEmptySamples(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V
    .locals 12
    .param p1, "output"    # Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    .line 174
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-le v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    .line 184
    .local v2, "trackOutput":Landroidx/media3/extractor/TrackOutput;
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->trackFormat:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->tileCountVertical:I

    mul-int/2addr v0, v3

    .line 185
    .local v0, "tileCount":I
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->endTimeUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->startTimeUs:J

    sub-long/2addr v3, v5

    int-to-long v5, v0

    div-long v9, v3, v5

    .line 187
    .local v9, "tileDurationUs":J
    const/4 v3, 0x1

    move v11, v3

    .local v11, "i":I
    :goto_0
    if-ge v11, v0, :cond_3

    .line 188
    int-to-long v3, v11

    mul-long/2addr v3, v9

    .line 189
    .local v3, "tileStartTimeUs":J
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    invoke-interface {v2, v5, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 190
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 187
    .end local v3    # "tileStartTimeUs":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 193
    .end local v11    # "i":I
    :cond_3
    return-void

    .line 180
    .end local v0    # "tileCount":I
    .end local v2    # "trackOutput":Landroidx/media3/extractor/TrackOutput;
    .end local v9    # "tileDurationUs":J
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 111
    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 98
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getNextLoadPosition()J
    .locals 2

    .line 170
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    return-wide v0
.end method

.method protected getTrackOutputProvider(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;
    .locals 0
    .param p1, "baseMediaChunkOutput"    # Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    .line 153
    return-object p1
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->getOutput()Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    move-result-object v1

    .line 117
    .local v1, "output":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 119
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 120
    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 121
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v5

    .line 122
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    move-wide v2, v6

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v2, v8

    .line 123
    :goto_0
    iget-wide v8, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v6, v8

    :goto_1
    move-wide v8, v6

    .line 120
    move-wide v6, v2

    invoke-interface/range {v4 .. v9}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 127
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/datasource/DataSpec;->subrange(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    move-object v2, v0

    .line 128
    .local v2, "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    new-instance v3, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v5, v2, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 130
    invoke-virtual {v0, v2}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    .local v3, "input":Landroidx/media3/extractor/ExtractorInput;
    :goto_2
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->read(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 134
    :cond_3
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->maybeWriteEmptySamples(Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-interface {v3}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v6, v0, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    nop

    .line 139
    .end local v2    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v3    # "input":Landroidx/media3/extractor/ExtractorInput;
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->onLoadEnded()V

    .line 140
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 141
    nop

    .line 142
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 143
    return-void

    .line 136
    .restart local v2    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v3    # "input":Landroidx/media3/extractor/ExtractorInput;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v3}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v6, v6, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 137
    nop

    .end local v1    # "output":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .end local v2    # "loadDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v3    # "input":Landroidx/media3/extractor/ExtractorInput;
    .restart local v1    # "output":Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkOutput;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->onLoadEnded()V

    .line 140
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 141
    throw v0
.end method

.method protected onLoadEnded()V
    .locals 0

    .line 161
    return-void
.end method
