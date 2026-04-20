.class public final Landroidx/media3/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Track$Transformation;
    }
.end annotation


# static fields
.field public static final TRANSFORMATION_CEA608_CDAT:I = 0x1

.field public static final TRANSFORMATION_NONE:I


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Landroidx/media3/common/Format;

.field public final id:I

.field public final mediaDurationUs:J

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "timescale"    # J
    .param p5, "movieTimescale"    # J
    .param p7, "durationUs"    # J
    .param p9, "mediaDurationUs"    # J
    .param p11, "format"    # Landroidx/media3/common/Format;
    .param p12, "sampleTransformation"    # I
    .param p13, "sampleDescriptionEncryptionBoxes"    # [Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .param p14, "nalUnitLengthFieldLength"    # I
    .param p15, "editListDurations"    # [J
    .param p16, "editListMediaTimes"    # [J

    .line 105
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 106
    move/from16 v1, p1

    iput v1, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    .line 107
    move/from16 v2, p2

    iput v2, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    .line 108
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    .line 109
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 110
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    .line 111
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    .line 112
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 113
    move/from16 v12, p12

    iput v12, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    .line 114
    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 115
    move/from16 v14, p14

    iput v14, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 116
    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    .line 117
    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    .line 118
    return-void
.end method


# virtual methods
.method public copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;
    .locals 18
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 135
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/extractor/mp4/Track;

    iget v2, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    iget v13, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    iget-object v14, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v15, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v12, v0, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v12

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public copyWithoutEditLists()Landroidx/media3/extractor/mp4/Track;
    .locals 18

    .line 151
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/extractor/mp4/Track;

    iget v2, v0, Landroidx/media3/extractor/mp4/Track;->id:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Track;->type:I

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-wide v6, v0, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    iget-wide v10, v0, Landroidx/media3/extractor/mp4/Track;->mediaDurationUs:J

    iget-object v12, v0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v13, v0, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    iget-object v14, v0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v15, v0, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    return-object v1
.end method

.method public getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 1
    .param p1, "sampleDescriptionIndex"    # I

    .line 129
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v0, p1

    .line 129
    :goto_0
    return-object v0
.end method
