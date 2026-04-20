.class final Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/TrackAwareSeekMap;
.implements Landroidx/media3/extractor/ChunkIndexProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatroskaSeekMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    }
.end annotation


# instance fields
.field private final chunkIndex:Landroidx/media3/extractor/ChunkIndex;

.field private final durationUs:J

.field private final perTrackCues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final primarySeekTrackNumber:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;JIJJ)V
    .locals 1
    .param p2, "durationUs"    # J
    .param p4, "primarySeekTrackNumber"    # I
    .param p5, "segmentContentPosition"    # J
    .param p7, "segmentContentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
            ">;>;JIJJ)V"
        }
    .end annotation

    .line 2918
    .local p1, "perTrackCues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->perTrackCues:Landroid/util/SparseArray;

    .line 2920
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->durationUs:J

    .line 2921
    iput p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->primarySeekTrackNumber:I

    .line 2922
    nop

    .line 2923
    invoke-static/range {p1 .. p8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->buildChunkIndex(Landroid/util/SparseArray;JIJJ)Landroidx/media3/extractor/ChunkIndex;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    .line 2929
    return-void
.end method

.method private static buildChunkIndex(Landroid/util/SparseArray;JIJJ)Landroidx/media3/extractor/ChunkIndex;
    .locals 11
    .param p1, "durationUs"    # J
    .param p3, "primarySeekTrackNumber"    # I
    .param p4, "segmentContentPosition"    # J
    .param p6, "segmentContentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;",
            ">;>;JIJJ)",
            "Landroidx/media3/extractor/ChunkIndex;"
        }
    .end annotation

    .line 3003
    .local p0, "perTrackCues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;>;"
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3004
    .local v0, "primaryTrackCuePoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 3008
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3009
    .local v1, "cuePointsSize":I
    new-array v2, v1, [I

    .line 3010
    .local v2, "sizes":[I
    new-array v3, v1, [J

    .line 3011
    .local v3, "offsets":[J
    new-array v4, v1, [J

    .line 3012
    .local v4, "durationsUs":[J
    new-array v5, v1, [J

    .line 3014
    .local v5, "timesUs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 3015
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 3016
    .local v7, "cue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    invoke-static {v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 3017
    invoke-static {v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v8

    aput-wide v8, v3, v6

    .line 3014
    .end local v7    # "cue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3020
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_2

    .line 3021
    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v3, v7

    aget-wide v9, v3, v6

    sub-long/2addr v7, v9

    long-to-int v7, v7

    aput v7, v2, v6

    .line 3022
    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v5, v7

    aget-wide v9, v5, v6

    sub-long/2addr v7, v9

    aput-wide v7, v4, v6

    .line 3020
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3026
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v1, -0x1

    .line 3027
    .local v6, "lastValidIndex":I
    :goto_2
    if-lez v6, :cond_3

    aget-wide v7, v5, v6

    cmp-long v7, v7, p1

    if-ltz v7, :cond_3

    .line 3028
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3032
    :cond_3
    add-long v7, p4, p6

    aget-wide v9, v3, v6

    sub-long/2addr v7, v9

    long-to-int v7, v7

    aput v7, v2, v6

    .line 3034
    aget-wide v7, v5, v6

    sub-long v7, p1, v7

    aput-wide v7, v4, v6

    .line 3037
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_4

    .line 3038
    const-string v7, "MatroskaExtractor"

    const-string v8, "Discarding trailing cue points with timestamps greater than total duration."

    invoke-static {v7, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 3040
    add-int/lit8 v7, v6, 0x1

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 3041
    add-int/lit8 v7, v6, 0x1

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 3042
    add-int/lit8 v7, v6, 0x1

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 3045
    :cond_4
    new-instance v7, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v7, v2, v3, v4, v5}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v7

    .line 3005
    .end local v1    # "cuePointsSize":I
    .end local v2    # "sizes":[I
    .end local v3    # "offsets":[J
    .end local v4    # "durationsUs":[J
    .end local v5    # "timesUs":[J
    .end local v6    # "lastValidIndex":I
    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
    .locals 1

    .line 2993
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 2945
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 2
    .param p1, "timeUs"    # J

    .line 2950
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ChunkIndex;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    return-object v0

    .line 2953
    :cond_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object v1, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v0
.end method

.method public getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 10
    .param p1, "timeUs"    # J
    .param p3, "trackId"    # I

    .line 2958
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->perTrackCues:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2959
    .local v0, "cuePoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->primarySeekTrackNumber:I

    if-eq p3, v1, :cond_1

    .line 2960
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->perTrackCues:Landroid/util/SparseArray;

    iget v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->primarySeekTrackNumber:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 2962
    :cond_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v3, p1

    goto :goto_0

    .line 2966
    :cond_2
    new-instance v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-wide/16 v5, -0x1

    move-wide v3, p1

    .end local p1    # "timeUs":J
    .local v3, "timeUs":J
    invoke-direct/range {v2 .. v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;-><init>(JJJLandroidx/media3/extractor/mkv/MatroskaExtractor$1;)V

    .line 2967
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, v2, p1, p2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 2973
    .local p1, "bestIndex":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 2974
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2975
    .local p2, "bestCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-static {p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v5

    invoke-static {p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v7

    invoke-direct {v1, v5, v6, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 2977
    .local v1, "firstPoint":Landroidx/media3/extractor/SeekPoint;
    invoke-static {p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-gez v2, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2978
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2979
    .local v2, "nextCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    new-instance v5, Landroidx/media3/extractor/SeekPoint;

    invoke-static {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v6

    invoke-static {v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 2980
    .local v5, "secondPoint":Landroidx/media3/extractor/SeekPoint;
    new-instance v6, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v6, v1, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v6

    .line 2982
    .end local v2    # "nextCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    .end local v5    # "secondPoint":Landroidx/media3/extractor/SeekPoint;
    :cond_3
    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v2

    .line 2985
    .end local v1    # "firstPoint":Landroidx/media3/extractor/SeekPoint;
    .end local p2    # "bestCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    .line 2986
    .local p2, "firstCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-static {p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$900(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v5

    invoke-static {p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->access$1000(Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;)J

    move-result-wide v7

    invoke-direct {v2, v5, v6, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    .line 2962
    .end local v3    # "timeUs":J
    .end local p2    # "firstCue":Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;
    .local p1, "timeUs":J
    :cond_5
    move-wide v3, p1

    .line 2963
    .end local p1    # "timeUs":J
    .restart local v3    # "timeUs":J
    :goto_0
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object p2, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 2934
    iget v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->primarySeekTrackNumber:I

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->isSeekable(I)Z

    move-result v0

    return v0
.end method

.method public isSeekable(I)Z
    .locals 2
    .param p1, "trackId"    # I

    .line 2939
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;->perTrackCues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2940
    .local v0, "cuePoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
