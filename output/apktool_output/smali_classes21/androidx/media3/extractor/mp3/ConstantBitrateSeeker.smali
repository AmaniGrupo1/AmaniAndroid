.class final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media3/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field private final allowSeeksIfLengthUnknown:Z

.field private final bitrate:I

.field private final dataEndPosition:J

.field private final firstFramePosition:J

.field private final frameSize:I


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 9
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z

    .line 66
    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    .line 73
    return-void
.end method

.method private constructor <init>(JJIIZZ)V
    .locals 4
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "bitrate"    # I
    .param p6, "frameSize"    # I
    .param p7, "allowSeeksIfLengthUnknown"    # Z
    .param p8, "isEstimated"    # Z

    .line 82
    invoke-direct/range {p0 .. p8}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZZ)V

    .line 89
    move v0, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "inputLength":J
    .end local p3    # "firstFramePosition":J
    .end local p5    # "bitrate":I
    .local v0, "isEstimated":Z
    .local p2, "inputLength":J
    .local p4, "firstFramePosition":J
    .local p6, "bitrate":I
    .local p7, "frameSize":I
    .local p8, "allowSeeksIfLengthUnknown":Z
    iput-wide p4, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    .line 90
    iput p6, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    .line 91
    iput p7, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    .line 92
    iput-boolean p8, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    .line 93
    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    move-wide v1, p2

    :cond_0
    iput-wide v1, p1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    .line 94
    return-void
.end method

.method public constructor <init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V
    .locals 9
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "mpegAudioHeader"    # Landroidx/media3/extractor/MpegAudioUtil$Header;
    .param p6, "allowSeeksIfLengthUnknown"    # Z

    .line 50
    iget v5, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    .end local p1    # "inputLength":J
    .end local p3    # "firstFramePosition":J
    .end local p6    # "allowSeeksIfLengthUnknown":Z
    .local v1, "inputLength":J
    .local v3, "firstFramePosition":J
    .local v7, "allowSeeksIfLengthUnknown":Z
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    .line 57
    return-void
.end method


# virtual methods
.method public copyWithNewDataEndPosition(J)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
    .locals 9
    .param p1, "dataEndPosition"    # J

    .line 117
    new-instance v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    iget v6, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iget-boolean v7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    const/4 v8, 0x0

    move-wide v1, p1

    .end local p1    # "dataEndPosition":J
    .local v1, "dataEndPosition":J
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 113
    iget v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 108
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 2
    .param p1, "position"    # J

    .line 98
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide v0

    return-wide v0
.end method
