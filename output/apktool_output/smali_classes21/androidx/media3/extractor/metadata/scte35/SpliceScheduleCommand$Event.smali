.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
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
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p7, "utcSpliceTime"    # J
    .param p9, "autoReturn"    # Z
    .param p10, "breakDurationUs"    # J
    .param p12, "uniqueProgramId"    # I
    .param p13, "availNum"    # I
    .param p14, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 95
    .local p6, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 97
    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 98
    iput-boolean p4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 99
    iput-boolean p5, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 100
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 101
    iput-wide p7, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 102
    iput-boolean p9, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 103
    iput-wide p10, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 104
    iput p12, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 105
    iput p13, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 106
    iput p14, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 107
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method private static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 28
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 112
    .local v1, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    .local v0, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v5, 0x0

    .line 114
    .local v5, "outOfNetworkIndicator":Z
    const/4 v6, 0x0

    .line 115
    .local v6, "programSpliceFlag":Z
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .local v7, "utcSpliceTime":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v9, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v10, 0x0

    .line 118
    .local v10, "uniqueProgramId":I
    const/4 v11, 0x0

    .line 119
    .local v11, "availNum":I
    const/4 v12, 0x0

    .line 120
    .local v12, "availsExpected":I
    const/4 v13, 0x0

    .line 121
    .local v13, "autoReturn":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 122
    .local v14, "breakDurationUs":J
    if-nez v0, :cond_9

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 124
    .local v3, "headerByte":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v5, v4

    .line 125
    and-int/lit8 v4, v3, 0x40

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move v6, v4

    .line 126
    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 127
    .local v4, "durationFlag":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 130
    :cond_4
    if-nez v6, :cond_6

    .line 131
    move/from16 v18, v0

    .end local v0    # "spliceEventCancelIndicator":Z
    .local v18, "spliceEventCancelIndicator":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 132
    .local v0, "componentCount":I
    move-wide/from16 v19, v1

    .end local v1    # "spliceEventId":J
    .local v19, "spliceEventId":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .end local v9    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v1, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_5

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 135
    .local v9, "componentTag":I
    move/from16 v22, v2

    move/from16 v21, v3

    .end local v2    # "i":I
    .end local v3    # "headerByte":I
    .local v21, "headerByte":I
    .local v22, "i":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    .line 136
    .local v2, "componentUtcSpliceTime":J
    move/from16 v23, v0

    .end local v0    # "componentCount":I
    .local v23, "componentCount":I
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move/from16 v24, v4

    .end local v4    # "durationFlag":Z
    .local v24, "durationFlag":Z
    const/4 v4, 0x0

    invoke-direct {v0, v9, v2, v3, v4}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLandroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v2    # "componentUtcSpliceTime":J
    .end local v9    # "componentTag":I
    add-int/lit8 v2, v22, 0x1

    move/from16 v3, v21

    move/from16 v0, v23

    move/from16 v4, v24

    .end local v22    # "i":I
    .local v2, "i":I
    goto :goto_4

    .end local v21    # "headerByte":I
    .end local v23    # "componentCount":I
    .end local v24    # "durationFlag":Z
    .restart local v0    # "componentCount":I
    .restart local v3    # "headerByte":I
    .restart local v4    # "durationFlag":Z
    :cond_5
    move/from16 v23, v0

    move/from16 v22, v2

    move/from16 v21, v3

    move/from16 v24, v4

    .end local v0    # "componentCount":I
    .end local v2    # "i":I
    .end local v3    # "headerByte":I
    .end local v4    # "durationFlag":Z
    .restart local v21    # "headerByte":I
    .restart local v22    # "i":I
    .restart local v23    # "componentCount":I
    .restart local v24    # "durationFlag":Z
    move-object v9, v1

    goto :goto_5

    .line 130
    .end local v18    # "spliceEventCancelIndicator":Z
    .end local v19    # "spliceEventId":J
    .end local v21    # "headerByte":I
    .end local v22    # "i":I
    .end local v23    # "componentCount":I
    .end local v24    # "durationFlag":Z
    .local v0, "spliceEventCancelIndicator":Z
    .local v1, "spliceEventId":J
    .restart local v3    # "headerByte":I
    .restart local v4    # "durationFlag":Z
    .local v9, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    :cond_6
    move/from16 v18, v0

    move-wide/from16 v19, v1

    move/from16 v21, v3

    move/from16 v24, v4

    .line 139
    .end local v0    # "spliceEventCancelIndicator":Z
    .end local v1    # "spliceEventId":J
    .end local v3    # "headerByte":I
    .end local v4    # "durationFlag":Z
    .restart local v18    # "spliceEventCancelIndicator":Z
    .restart local v19    # "spliceEventId":J
    .restart local v21    # "headerByte":I
    .restart local v24    # "durationFlag":Z
    :goto_5
    if-eqz v24, :cond_8

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    .line 141
    .local v0, "firstByte":J
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    .line 142
    .end local v13    # "autoReturn":Z
    .local v3, "autoReturn":Z
    :goto_6
    const-wide/16 v16, 0x1

    and-long v16, v0, v16

    const/16 v2, 0x20

    shl-long v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    or-long v16, v16, v22

    .line 143
    .local v16, "breakDuration90khz":J
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v16

    const-wide/16 v25, 0x5a

    div-long v22, v22, v25

    move v13, v3

    move-wide/from16 v14, v22

    .line 145
    .end local v0    # "firstByte":J
    .end local v3    # "autoReturn":Z
    .end local v16    # "breakDuration90khz":J
    .restart local v13    # "autoReturn":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    move v4, v5

    move v5, v6

    move-object v6, v9

    move v9, v13

    move v13, v11

    move/from16 v27, v12

    move v12, v10

    move-wide v10, v14

    move/from16 v14, v27

    goto :goto_7

    .line 122
    .end local v18    # "spliceEventCancelIndicator":Z
    .end local v19    # "spliceEventId":J
    .end local v21    # "headerByte":I
    .end local v24    # "durationFlag":Z
    .local v0, "spliceEventCancelIndicator":Z
    .restart local v1    # "spliceEventId":J
    :cond_9
    move/from16 v18, v0

    move-wide/from16 v19, v1

    .end local v0    # "spliceEventCancelIndicator":Z
    .end local v1    # "spliceEventId":J
    .restart local v18    # "spliceEventCancelIndicator":Z
    .restart local v19    # "spliceEventId":J
    move v4, v5

    move v5, v6

    move-object v6, v9

    move v9, v13

    move v13, v11

    move/from16 v27, v12

    move v12, v10

    move-wide v10, v14

    move/from16 v14, v27

    .line 149
    .end local v11    # "availNum":I
    .local v4, "outOfNetworkIndicator":Z
    .local v5, "programSpliceFlag":Z
    .local v6, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v9, "autoReturn":Z
    .local v10, "breakDurationUs":J
    .local v12, "uniqueProgramId":I
    .local v13, "availNum":I
    .local v14, "availsExpected":I
    :goto_7
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move/from16 v3, v18

    move-wide/from16 v1, v19

    .end local v18    # "spliceEventCancelIndicator":Z
    .end local v19    # "spliceEventId":J
    .restart local v1    # "spliceEventId":J
    .local v3, "spliceEventCancelIndicator":Z
    invoke-direct/range {v0 .. v14}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    .end local v3    # "spliceEventCancelIndicator":Z
    .restart local v18    # "spliceEventCancelIndicator":Z
    return-object v0
.end method
