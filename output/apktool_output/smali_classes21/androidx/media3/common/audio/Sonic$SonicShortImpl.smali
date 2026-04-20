.class final Landroidx/media3/common/audio/Sonic$SonicShortImpl;
.super Ljava/lang/Object;
.source "Sonic.java"

# interfaces
.implements Landroidx/media3/common/audio/Sonic$SonicImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/Sonic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SonicShortImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/common/audio/Sonic$SonicImpl<",
        "[S>;"
    }
.end annotation


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private maxDiff:I

.field private minDiff:I

.field private outputBuffer:[S

.field private pitchBuffer:[S

.field private prevMinDiff:I

.field final synthetic this$0:Landroidx/media3/common/audio/Sonic;


# direct methods
.method constructor <init>(Landroidx/media3/common/audio/Sonic;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 927
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    .line 929
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 930
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [S

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 931
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result p1

    mul-int/2addr v0, p1

    new-array p1, v0, [S

    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 932
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "frameCount"    # I
    .param p3, "additionalFrameCount"    # I

    .line 1155
    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    div-int/2addr v0, v1

    .line 1156
    .local v0, "currentCapacityFrames":I
    add-int v1, p2, p3

    if-gt v1, v0, :cond_0

    .line 1157
    return-object p1

    .line 1159
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 1160
    .local v1, "newCapacityFrames":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v2

    return-object v2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "positionFrames"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .line 1103
    const/4 v0, 0x0

    .line 1104
    .local v0, "bestPeriod":I
    const/16 v1, 0xff

    .line 1105
    .local v1, "worstPeriod":I
    const/4 v2, 0x1

    .line 1106
    .local v2, "minDiff":I
    const/4 v3, 0x0

    .line 1107
    .local v3, "maxDiff":I
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v4}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v4

    mul-int/2addr p2, v4

    .line 1108
    move v4, p3

    .local v4, "period":I
    :goto_0
    if-gt v4, p4, :cond_3

    .line 1109
    const/4 v5, 0x0

    .line 1110
    .local v5, "diff":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 1111
    add-int v7, p2, v6

    aget-short v7, p1, v7

    .line 1112
    .local v7, "sVal":S
    add-int v8, p2, v4

    add-int/2addr v8, v6

    aget-short v8, p1, v8

    .line 1113
    .local v8, "pVal":S
    sub-int v9, v7, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v5, v9

    .line 1110
    .end local v7    # "sVal":S
    .end local v8    # "pVal":S
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1118
    .end local v6    # "i":I
    :cond_0
    mul-int v6, v5, v0

    mul-int v7, v2, v4

    if-ge v6, v7, :cond_1

    .line 1119
    move v2, v5

    .line 1120
    move v0, v4

    .line 1122
    :cond_1
    mul-int v6, v5, v1

    mul-int v7, v3, v4

    if-le v6, v7, :cond_2

    .line 1123
    move v3, v5

    .line 1124
    move v1, v4

    .line 1108
    .end local v5    # "diff":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1127
    .end local v4    # "period":I
    :cond_3
    div-int v4, v2, v0

    iput v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 1128
    div-int v4, v3, v1

    iput v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    .line 1129
    return v0
.end method

.method private interpolate([SIJJ)S
    .locals 18
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # J
    .param p5, "newSampleRate"    # J

    .line 1133
    move-object/from16 v0, p0

    aget-short v1, p1, p2

    .line 1134
    .local v1, "left":S
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    add-int v2, p2, v2

    aget-short v2, p1, v2

    .line 1135
    .local v2, "right":S
    iget-object v3, v0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$600(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, p3

    .line 1136
    .local v3, "position":J
    iget-object v5, v0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v5}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, p5

    .line 1137
    .local v5, "leftPosition":J
    iget-object v7, v0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v7}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    mul-long v7, v7, p5

    .line 1138
    .local v7, "rightPosition":J
    sub-long v9, v7, v3

    .line 1139
    .local v9, "ratio":J
    sub-long v11, v7, v5

    .line 1140
    .local v11, "width":J
    int-to-long v13, v1

    mul-long/2addr v13, v9

    sub-long v15, v11, v9

    move/from16 v17, v1

    .end local v1    # "left":S
    .local v17, "left":S
    int-to-long v0, v2

    mul-long/2addr v15, v0

    add-long/2addr v13, v15

    div-long/2addr v13, v11

    long-to-int v0, v13

    int-to-short v0, v0

    return v0
.end method

.method private overlapAdd(II[SI[SI[SI)V
    .locals 7
    .param p1, "frameCount"    # I
    .param p2, "channelCount"    # I
    .param p3, "out"    # [S
    .param p4, "outPosition"    # I
    .param p5, "rampDown"    # [S
    .param p6, "rampDownPosition"    # I
    .param p7, "rampUp"    # [S
    .param p8, "rampUpPosition"    # I

    .line 1029
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1030
    mul-int v1, p4, p2

    add-int/2addr v1, v0

    .line 1031
    .local v1, "o":I
    mul-int v2, p8, p2

    add-int/2addr v2, v0

    .line 1032
    .local v2, "u":I
    mul-int v3, p6, p2

    add-int/2addr v3, v0

    .line 1033
    .local v3, "d":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 1034
    aget-short v5, p5, v3

    sub-int v6, p1, v4

    mul-int/2addr v5, v6

    aget-short v6, p7, v2

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    div-int/2addr v5, p1

    int-to-short v5, v5

    aput-short v5, p3, v1

    .line 1035
    add-int/2addr v1, p2

    .line 1036
    add-int/2addr v3, p2

    .line 1037
    add-int/2addr v2, p2

    .line 1033
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1029
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bytesPerSample()I
    .locals 1

    .line 936
    const/4 v0, 0x2

    return v0
.end method

.method public copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesToWrite"    # I

    .line 1074
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 1075
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1076
    return-void
.end method

.method public copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "framesToRead"    # I

    .line 1080
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 1081
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->bytesPerSample()I

    move-result v1

    mul-int/2addr v1, p2

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1082
    return-void
.end method

.method public downSampleInput(II)V
    .locals 7
    .param p1, "positionFrames"    # I
    .param p2, "skip"    # I

    .line 966
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 970
    .local v0, "samples":[S
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    div-int/2addr v1, p2

    .line 971
    .local v1, "frameCount":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v2, p2

    .line 972
    .local v2, "samplesPerValue":I
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr p1, v3

    .line 973
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 974
    const/4 v4, 0x0

    .line 975
    .local v4, "value":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 976
    mul-int v6, v3, v2

    add-int/2addr v6, p1

    add-int/2addr v6, v5

    aget-short v6, v0, v6

    add-int/2addr v4, v6

    .line 975
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 978
    .end local v5    # "j":I
    :cond_0
    div-int/2addr v4, v2

    .line 979
    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    int-to-short v6, v4

    aput-short v6, v5, v3

    .line 973
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 981
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public ensureAdditionalFramesInInputBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 1049
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 1050
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 1051
    return-void
.end method

.method public ensureAdditionalFramesInOutputBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 1055
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 1056
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 1057
    return-void
.end method

.method public ensureAdditionalFramesInPitchBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 1061
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 1062
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$500(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 1063
    return-void
.end method

.method public findPitchPeriodInRangeWithDownsampleBuffer(III)I
    .locals 1
    .param p1, "positionFrames"    # I
    .param p2, "minPeriod"    # I
    .param p3, "maxPeriod"    # I

    .line 986
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->findPitchPeriodInRange([SIII)I

    move-result v0

    return v0
.end method

.method public findPitchPeriodInRangeWithInputBuffer(III)I
    .locals 1
    .param p1, "positionFrames"    # I
    .param p2, "minPeriod"    # I
    .param p3, "maxPeriod"    # I

    .line 992
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->findPitchPeriodInRange([SIII)I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .line 997
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    .line 998
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 999
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    .line 1000
    return-void
.end method

.method public bridge synthetic getInputBuffer()Ljava/lang/Object;
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getInputBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer()[S
    .locals 1

    .line 1086
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    return-object v0
.end method

.method public bridge synthetic getOutputBuffer()Ljava/lang/Object;
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getOutputBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getOutputBuffer()[S
    .locals 1

    .line 1091
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    return-object v0
.end method

.method public bridge synthetic getPitchBuffer()Ljava/lang/Object;
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getPitchBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getPitchBuffer()[S
    .locals 1

    .line 1096
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    return-object v0
.end method

.method public interpolateFrame(IJJ)V
    .locals 10
    .param p1, "positionFrames"    # I
    .param p2, "oldSampleRate"    # J
    .param p4, "newSampleRate"    # J

    .line 941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 942
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 944
    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v3, p1

    add-int v5, v3, v0

    .line 943
    move-object v3, p0

    move-wide v6, p2

    move-wide v8, p4

    .end local p2    # "oldSampleRate":J
    .end local p4    # "newSampleRate":J
    .local v6, "oldSampleRate":J
    .local v8, "newSampleRate":J
    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->interpolate([SIJJ)S

    move-result p2

    aput-short p2, v1, v2

    .line 941
    add-int/lit8 v0, v0, 0x1

    move-wide p2, v6

    goto :goto_0

    .line 946
    .end local v0    # "i":I
    .end local v6    # "oldSampleRate":J
    .end local v8    # "newSampleRate":J
    .restart local p2    # "oldSampleRate":J
    .restart local p4    # "newSampleRate":J
    :cond_0
    return-void
.end method

.method public isPreviousPeriodBetter()Z
    .locals 3

    .line 950
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$300(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    iget v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_1

    .line 955
    return v1

    .line 957
    :cond_1
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-gt v0, v2, :cond_2

    .line 959
    return v1

    .line 961
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 951
    :cond_3
    :goto_0
    return v1
.end method

.method public overlapAdd(IIIII)V
    .locals 9
    .param p1, "frameCount"    # I
    .param p2, "channelCount"    # I
    .param p3, "outPosition"    # I
    .param p4, "rampDownPosition"    # I
    .param p5, "rampUpPosition"    # I

    .line 1009
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    iget-object v7, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    move v8, p5

    .end local p1    # "frameCount":I
    .end local p2    # "channelCount":I
    .end local p3    # "outPosition":I
    .end local p4    # "rampDownPosition":I
    .end local p5    # "rampUpPosition":I
    .local v1, "frameCount":I
    .local v2, "channelCount":I
    .local v4, "outPosition":I
    .local v6, "rampDownPosition":I
    .local v8, "rampUpPosition":I
    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->overlapAdd(II[SI[SI[SI)V

    .line 1018
    return-void
.end method

.method public updatePreviousMinDiff()V
    .locals 1

    .line 1044
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    .line 1045
    return-void
.end method

.method public zeroInputBuffer(II)V
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "length"    # I

    .line 1067
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 1068
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    add-int v2, p1, v0

    const/4 v3, 0x0

    aput-short v3, v1, v2

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
