.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/TrackAwareSeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4SeekMap"
.end annotation


# instance fields
.field private final durationUs:J

.field private final firstVideoTrackIndex:I

.field private final tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public constructor <init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V
    .locals 0
    .param p1, "durationUs"    # J
    .param p3, "tracks"    # [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    .param p4, "firstVideoTrackIndex"    # I

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->durationUs:J

    .line 1310
    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 1311
    iput p4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->firstVideoTrackIndex:I

    .line 1312
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1326
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 1331
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0
.end method

.method public getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 21
    .param p1, "timeUs"    # J
    .param p3, "trackId"    # I

    .line 1336
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 1337
    new-instance v4, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v5, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v4, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v4

    .line 1342
    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1343
    .local v4, "secondTimeUs":J
    const-wide/16 v6, -0x1

    .line 1346
    .local v6, "secondOffset":J
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    iget v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->firstVideoTrackIndex:I

    .line 1348
    .local v9, "mainTrackIndex":I
    :goto_0
    if-eq v9, v8, :cond_4

    .line 1349
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1350
    .local v10, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v10, v1, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->access$000(Landroidx/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v11

    .line 1351
    .local v11, "sampleIndex":I
    if-ne v11, v8, :cond_2

    .line 1352
    new-instance v8, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v12, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v8

    .line 1354
    :cond_2
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v13, v12, v11

    .line 1355
    .local v13, "sampleTimeUs":J
    move-wide v15, v13

    .line 1356
    .local v15, "firstTimeUs":J
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v17, v12, v11

    .line 1357
    .local v17, "firstOffset":J
    cmp-long v12, v13, v1

    if-gez v12, :cond_3

    iget v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_3

    .line 1358
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v12

    .line 1359
    .local v12, "secondSampleIndex":I
    if-eq v12, v8, :cond_3

    if-eq v12, v11, :cond_3

    .line 1360
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v8, v12

    .line 1361
    iget-object v8, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v12

    .line 1364
    .end local v10    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    .end local v11    # "sampleIndex":I
    .end local v12    # "secondSampleIndex":I
    .end local v13    # "sampleTimeUs":J
    :cond_3
    move-wide v10, v15

    goto :goto_1

    .line 1365
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    :cond_4
    move-wide/from16 v15, p1

    .line 1366
    .restart local v15    # "firstTimeUs":J
    const-wide v17, 0x7fffffffffffffffL

    move-wide v10, v15

    .line 1369
    .end local v15    # "firstTimeUs":J
    .local v10, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :goto_1
    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    .line 1371
    const/4 v8, 0x0

    move-wide/from16 v14, v17

    .end local v17    # "firstOffset":J
    .local v8, "i":I
    .local v14, "firstOffset":J
    :goto_2
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v12, v12

    if-ge v8, v12, :cond_7

    .line 1372
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->firstVideoTrackIndex:I

    if-eq v8, v12, :cond_5

    .line 1373
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v12, v12, v8

    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1374
    .local v12, "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    invoke-static {v12, v10, v11, v14, v15}, Landroidx/media3/extractor/mp4/Mp4Extractor;->access$100(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v14

    .line 1375
    cmp-long v13, v4, v19

    if-eqz v13, :cond_5

    .line 1376
    invoke-static {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor;->access$100(Landroidx/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v6

    .line 1371
    .end local v12    # "sampleTable":Landroidx/media3/extractor/mp4/TrackSampleTable;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1369
    .end local v8    # "i":I
    .end local v14    # "firstOffset":J
    .restart local v17    # "firstOffset":J
    :cond_6
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v14, v17

    .line 1382
    .end local v17    # "firstOffset":J
    .restart local v14    # "firstOffset":J
    :cond_7
    new-instance v8, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v8, v10, v11, v14, v15}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 1383
    .local v8, "firstSeekPoint":Landroidx/media3/extractor/SeekPoint;
    cmp-long v12, v4, v19

    if-nez v12, :cond_8

    .line 1384
    new-instance v12, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v12, v8}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v12

    .line 1386
    :cond_8
    new-instance v12, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v12, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 1387
    .local v12, "secondSeekPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v13, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v13, v8, v12}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v13
.end method

.method public isSeekable()Z
    .locals 1

    .line 1316
    const/4 v0, 0x1

    return v0
.end method

.method public isSeekable(I)Z
    .locals 1
    .param p1, "trackId"    # I

    .line 1321
    const/4 v0, 0x1

    return v0
.end method
