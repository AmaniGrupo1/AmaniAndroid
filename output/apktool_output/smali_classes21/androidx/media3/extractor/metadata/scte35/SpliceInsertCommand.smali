.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 16
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p9, "programSplicePlaybackPositionUs"    # J
    .param p12, "autoReturn"    # Z
    .param p13, "breakDurationUs"    # J
    .param p15, "uniqueProgramId"    # I
    .param p16, "availNum"    # I
    .param p17, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 104
    .local p11, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 105
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 106
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 107
    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 108
    move/from16 v5, p5

    iput-boolean v5, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 109
    move/from16 v6, p6

    iput-boolean v6, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 110
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 111
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 112
    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 113
    move/from16 v11, p12

    iput-boolean v11, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 114
    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 115
    move/from16 v14, p15

    iput v14, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 116
    move/from16 v15, p16

    iput v15, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 117
    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 118
    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
    .locals 34
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;

    .line 122
    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 124
    .local v2, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    .local v1, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v6, 0x0

    .line 126
    .local v6, "outOfNetworkIndicator":Z
    const/4 v7, 0x0

    .line 127
    .local v7, "programSpliceFlag":Z
    const/4 v8, 0x0

    .line 128
    .local v8, "spliceImmediateFlag":Z
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    .local v9, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 130
    .local v11, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v12, 0x0

    .line 131
    .local v12, "uniqueProgramId":I
    const/4 v13, 0x0

    .line 132
    .local v13, "availNum":I
    const/4 v14, 0x0

    .line 133
    .local v14, "availsExpected":I
    const/4 v15, 0x0

    .line 134
    .local v15, "autoReturn":Z
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 135
    .local v16, "breakDurationUs":J
    if-nez v1, :cond_b

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 137
    .local v4, "headerByte":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v6, v5

    .line 138
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v7, v5

    .line 139
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 140
    .local v5, "durationFlag":Z
    :goto_3
    and-int/lit8 v20, v4, 0x10

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    :goto_4
    move/from16 v8, v20

    .line 141
    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    .line 142
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    move-result-wide v9

    .line 144
    :cond_5
    if-nez v7, :cond_8

    .line 145
    move/from16 v20, v1

    .end local v1    # "spliceEventCancelIndicator":Z
    .local v20, "spliceEventCancelIndicator":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 146
    .local v1, "componentCount":I
    move-wide/from16 v21, v2

    .end local v2    # "spliceEventId":J
    .local v21, "spliceEventId":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .end local v11    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v2, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 149
    .local v24, "componentTag":I
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .local v25, "componentSplicePts":J
    if-nez v8, :cond_6

    .line 151
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    move-result-wide v25

    move v11, v3

    move/from16 v30, v4

    move-wide/from16 v3, v25

    goto :goto_6

    .line 150
    :cond_6
    move v11, v3

    move/from16 v30, v4

    move-wide/from16 v3, v25

    .line 153
    .end local v4    # "headerByte":I
    .end local v25    # "componentSplicePts":J
    .local v3, "componentSplicePts":J
    .local v11, "i":I
    .local v30, "headerByte":I
    :goto_6
    new-instance v23, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 157
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v27

    const/16 v29, 0x0

    move-wide/from16 v25, v3

    .end local v3    # "componentSplicePts":J
    .restart local v25    # "componentSplicePts":J
    invoke-direct/range {v23 .. v29}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLandroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V

    .line 153
    move-object/from16 v3, v23

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v24    # "componentTag":I
    .end local v25    # "componentSplicePts":J
    add-int/lit8 v3, v11, 0x1

    move/from16 v4, v30

    .end local v11    # "i":I
    .local v3, "i":I
    goto :goto_5

    .end local v30    # "headerByte":I
    .restart local v4    # "headerByte":I
    :cond_7
    move v11, v3

    move/from16 v30, v4

    .end local v3    # "i":I
    .end local v4    # "headerByte":I
    .restart local v11    # "i":I
    .restart local v30    # "headerByte":I
    move-object v11, v2

    goto :goto_7

    .line 144
    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .end local v30    # "headerByte":I
    .local v1, "spliceEventCancelIndicator":Z
    .local v2, "spliceEventId":J
    .restart local v4    # "headerByte":I
    .local v11, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    :cond_8
    move/from16 v20, v1

    move-wide/from16 v21, v2

    move/from16 v30, v4

    .line 160
    .end local v1    # "spliceEventCancelIndicator":Z
    .end local v2    # "spliceEventId":J
    .end local v4    # "headerByte":I
    .restart local v20    # "spliceEventCancelIndicator":Z
    .restart local v21    # "spliceEventId":J
    .restart local v30    # "headerByte":I
    :goto_7
    if-eqz v5, :cond_a

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-long v1, v1

    .line 162
    .local v1, "firstByte":J
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    const-wide/16 v23, 0x0

    cmp-long v3, v3, v23

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    .line 163
    .end local v15    # "autoReturn":Z
    .local v4, "autoReturn":Z
    :goto_8
    const-wide/16 v18, 0x1

    and-long v18, v1, v18

    const/16 v3, 0x20

    shl-long v18, v18, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v23

    or-long v18, v18, v23

    .line 164
    .local v18, "breakDuration90khz":J
    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v18

    const-wide/16 v25, 0x5a

    div-long v23, v23, v25

    move v15, v4

    move-wide/from16 v16, v23

    .line 166
    .end local v1    # "firstByte":J
    .end local v4    # "autoReturn":Z
    .end local v18    # "breakDuration90khz":J
    .restart local v15    # "autoReturn":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    move v5, v6

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move/from16 v18, v14

    move/from16 v31, v12

    move-object v12, v11

    move-wide/from16 v32, v16

    move/from16 v16, v31

    move/from16 v17, v13

    move v13, v15

    move-wide/from16 v14, v32

    goto :goto_9

    .line 135
    .end local v5    # "durationFlag":Z
    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .end local v30    # "headerByte":I
    .local v1, "spliceEventCancelIndicator":Z
    .restart local v2    # "spliceEventId":J
    :cond_b
    move/from16 v20, v1

    move-wide/from16 v21, v2

    .end local v1    # "spliceEventCancelIndicator":Z
    .end local v2    # "spliceEventId":J
    .restart local v20    # "spliceEventCancelIndicator":Z
    .restart local v21    # "spliceEventId":J
    move v5, v6

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move/from16 v18, v14

    move/from16 v31, v12

    move-object v12, v11

    move-wide/from16 v32, v16

    move/from16 v16, v31

    move/from16 v17, v13

    move v13, v15

    move-wide/from16 v14, v32

    .line 170
    .end local v9    # "programSplicePts":J
    .end local v11    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v15    # "autoReturn":Z
    .local v5, "outOfNetworkIndicator":Z
    .local v6, "programSpliceFlag":Z
    .local v7, "spliceImmediateFlag":Z
    .local v8, "programSplicePts":J
    .local v12, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v13, "autoReturn":Z
    .local v14, "breakDurationUs":J
    .local v16, "uniqueProgramId":I
    .local v17, "availNum":I
    .local v18, "availsExpected":I
    :goto_9
    new-instance v1, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 177
    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    move/from16 v4, v20

    move-wide/from16 v2, v21

    .end local v20    # "spliceEventCancelIndicator":Z
    .end local v21    # "spliceEventId":J
    .restart local v2    # "spliceEventId":J
    .local v4, "spliceEventCancelIndicator":Z
    invoke-direct/range {v1 .. v18}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 170
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 SpliceInsertCommand { programSplicePts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programSplicePlaybackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
