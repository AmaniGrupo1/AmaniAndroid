.class final Landroidx/media3/common/audio/Sonic$SonicFloatImpl;
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
    name = "SonicFloatImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/common/audio/Sonic$SonicImpl<",
        "[F>;"
    }
.end annotation


# instance fields
.field private final downSampleBuffer:[F

.field private inputBuffer:[F

.field private maxDiff:D

.field private minDiff:D

.field private outputBuffer:[F

.field private pitchBuffer:[F

.field private prevMinDiff:D

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

    .line 678
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

    .line 680
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 681
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 682
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result p1

    mul-int/2addr v0, p1

    new-array p1, v0, [F

    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 683
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([FII)[F
    .locals 3
    .param p1, "buffer"    # [F
    .param p2, "frameCount"    # I
    .param p3, "additionalFrameCount"    # I

    .line 904
    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    div-int/2addr v0, v1

    .line 905
    .local v0, "currentCapacityFrames":I
    add-int v1, p2, p3

    if-gt v1, v0, :cond_0

    .line 906
    return-object p1

    .line 908
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 909
    .local v1, "newCapacityFrames":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    return-object v2
.end method

.method private findPitchPeriodInRange([FIII)I
    .locals 18
    .param p1, "samples"    # [F
    .param p2, "positionFrames"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .line 866
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 867
    .local v1, "bestPeriod":I
    const/16 v2, 0xff

    .line 868
    .local v2, "worstPeriod":I
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 869
    .local v3, "minDiff":D
    const-wide/16 v5, 0x0

    .line 870
    .local v5, "maxDiff":D
    iget-object v7, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v7}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v7

    mul-int v7, v7, p2

    .line 871
    .end local p2    # "positionFrames":I
    .local v7, "positionFrames":I
    move/from16 v8, p3

    .local v8, "period":I
    :goto_0
    move/from16 v9, p4

    if-gt v8, v9, :cond_3

    .line 872
    const-wide/16 v10, 0x0

    .line 873
    .local v10, "diff":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_0

    .line 874
    add-int v13, v7, v12

    aget v13, p1, v13

    .line 875
    .local v13, "sVal":F
    add-int v14, v7, v8

    add-int/2addr v14, v12

    aget v14, p1, v14

    .line 876
    .local v14, "pVal":F
    sub-float v15, v13, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-wide/from16 v16, v3

    .end local v3    # "minDiff":D
    .local v16, "minDiff":D
    float-to-double v3, v15

    add-double/2addr v10, v3

    .line 873
    .end local v13    # "sVal":F
    .end local v14    # "pVal":F
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v16

    goto :goto_1

    .end local v16    # "minDiff":D
    .restart local v3    # "minDiff":D
    :cond_0
    move-wide/from16 v16, v3

    .line 878
    .end local v3    # "minDiff":D
    .end local v12    # "i":I
    .restart local v16    # "minDiff":D
    int-to-double v3, v1

    mul-double/2addr v3, v10

    int-to-double v12, v8

    mul-double v12, v12, v16

    cmpg-double v3, v3, v12

    if-gez v3, :cond_1

    .line 879
    move-wide v3, v10

    .line 880
    .end local v16    # "minDiff":D
    .restart local v3    # "minDiff":D
    move v1, v8

    goto :goto_2

    .line 878
    .end local v3    # "minDiff":D
    .restart local v16    # "minDiff":D
    :cond_1
    move-wide/from16 v3, v16

    .line 882
    .end local v16    # "minDiff":D
    .restart local v3    # "minDiff":D
    :goto_2
    int-to-double v12, v2

    mul-double/2addr v12, v10

    int-to-double v14, v8

    mul-double/2addr v14, v5

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 883
    move-wide v5, v10

    .line 884
    move v2, v8

    .line 871
    .end local v10    # "diff":D
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v3

    .line 887
    .end local v3    # "minDiff":D
    .end local v8    # "period":I
    .restart local v16    # "minDiff":D
    int-to-double v3, v1

    div-double v3, v16, v3

    iput-wide v3, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 888
    int-to-double v3, v2

    div-double v3, v5, v3

    iput-wide v3, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    .line 889
    return v1
.end method

.method private interpolate([FIJJ)F
    .locals 16
    .param p1, "in"    # [F
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # J
    .param p5, "newSampleRate"    # J

    .line 852
    move-object/from16 v0, p0

    aget v1, p1, p2

    .line 853
    .local v1, "left":F
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    add-int v2, p2, v2

    aget v2, p1, v2

    .line 854
    .local v2, "right":F
    iget-object v3, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$600(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, p3

    .line 855
    .local v3, "position":J
    iget-object v5, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v5}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, p5

    .line 856
    .local v5, "leftPosition":J
    iget-object v7, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v7}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    mul-long v7, v7, p5

    .line 857
    .local v7, "rightPosition":J
    sub-long v9, v7, v3

    .line 858
    .local v9, "ratio":J
    sub-long v11, v7, v5

    .line 859
    .local v11, "width":J
    long-to-float v13, v9

    mul-float/2addr v13, v1

    sub-long v14, v11, v9

    long-to-float v14, v14

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    long-to-float v14, v11

    div-float/2addr v13, v14

    return v13
.end method

.method private overlapAdd(II[FI[FI[FI)V
    .locals 8
    .param p1, "frameCount"    # I
    .param p2, "channelCount"    # I
    .param p3, "out"    # [F
    .param p4, "outPosition"    # I
    .param p5, "rampDown"    # [F
    .param p6, "rampDownPosition"    # I
    .param p7, "rampUp"    # [F
    .param p8, "rampUpPosition"    # I

    .line 779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 780
    mul-int v1, p4, p2

    add-int/2addr v1, v0

    .line 781
    .local v1, "o":I
    mul-int v2, p8, p2

    add-int/2addr v2, v0

    .line 782
    .local v2, "u":I
    mul-int v3, p6, p2

    add-int/2addr v3, v0

    .line 783
    .local v3, "d":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 784
    aget v5, p5, v3

    sub-int v6, p1, v4

    int-to-float v6, v6

    mul-float/2addr v5, v6

    aget v6, p7, v2

    int-to-float v7, v4

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v6, p1

    div-float/2addr v5, v6

    aput v5, p3, v1

    .line 785
    add-int/2addr v1, p2

    .line 786
    add-int/2addr v3, p2

    .line 787
    add-int/2addr v2, p2

    .line 783
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 779
    .end local v1    # "o":I
    .end local v2    # "u":I
    .end local v3    # "d":I
    .end local v4    # "t":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bytesPerSample()I
    .locals 1

    .line 687
    const/4 v0, 0x4

    return v0
.end method

.method public copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesToWrite"    # I

    .line 824
    nop

    .line 825
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 826
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->bytesPerSample()I

    move-result v3

    div-int v3, p2, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 827
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 828
    return-void
.end method

.method public copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "framesToRead"    # I

    .line 832
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 833
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->bytesPerSample()I

    move-result v1

    mul-int/2addr v1, p2

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 834
    return-void
.end method

.method public downSampleInput(II)V
    .locals 8
    .param p1, "positionFrames"    # I
    .param p2, "skip"    # I

    .line 720
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    div-int/2addr v0, p2

    .line 721
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v1, p2

    .line 722
    .local v1, "samplesPerValue":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    mul-int/2addr p1, v2

    .line 723
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 724
    const-wide/16 v3, 0x0

    .line 725
    .local v3, "value":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 726
    iget-object v6, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    mul-int v7, v2, v1

    add-int/2addr v7, p1

    add-int/2addr v7, v5

    aget v6, v6, v7

    float-to-double v6, v6

    add-double/2addr v3, v6

    .line 725
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 728
    .end local v5    # "j":I
    :cond_0
    int-to-double v5, v1

    div-double/2addr v3, v5

    .line 729
    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

    double-to-float v6, v3

    aput v6, v5, v2

    .line 723
    .end local v3    # "value":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public ensureAdditionalFramesInInputBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 799
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 800
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 801
    return-void
.end method

.method public ensureAdditionalFramesInOutputBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 805
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 806
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 807
    return-void
.end method

.method public ensureAdditionalFramesInPitchBuffer(I)V
    .locals 2
    .param p1, "additionalFrameCount"    # I

    .line 811
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 812
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$500(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 813
    return-void
.end method

.method public findPitchPeriodInRangeWithDownsampleBuffer(III)I
    .locals 1
    .param p1, "positionFrames"    # I
    .param p2, "minPeriod"    # I
    .param p3, "maxPeriod"    # I

    .line 736
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->findPitchPeriodInRange([FIII)I

    move-result v0

    return v0
.end method

.method public findPitchPeriodInRangeWithInputBuffer(III)I
    .locals 1
    .param p1, "positionFrames"    # I
    .param p2, "minPeriod"    # I
    .param p3, "maxPeriod"    # I

    .line 742
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->findPitchPeriodInRange([FIII)I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 2

    .line 747
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    .line 748
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 749
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    .line 750
    return-void
.end method

.method public bridge synthetic getInputBuffer()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getInputBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer()[F
    .locals 1

    .line 838
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    return-object v0
.end method

.method public bridge synthetic getOutputBuffer()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getOutputBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getOutputBuffer()[F
    .locals 1

    .line 843
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    return-object v0
.end method

.method public bridge synthetic getPitchBuffer()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getPitchBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getPitchBuffer()[F
    .locals 1

    .line 848
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    return-object v0
.end method

.method public interpolateFrame(IJJ)V
    .locals 10
    .param p1, "positionFrame"    # I
    .param p2, "oldSampleRate"    # J
    .param p4, "newSampleRate"    # J

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 693
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 695
    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v3

    mul-int/2addr v3, p1

    add-int v5, v3, v0

    .line 694
    move-object v3, p0

    move-wide v6, p2

    move-wide v8, p4

    .end local p2    # "oldSampleRate":J
    .end local p4    # "newSampleRate":J
    .local v6, "oldSampleRate":J
    .local v8, "newSampleRate":J
    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->interpolate([FIJJ)F

    move-result p2

    aput p2, v1, v2

    .line 692
    add-int/lit8 v0, v0, 0x1

    move-wide p2, v6

    goto :goto_0

    .line 697
    .end local v0    # "i":I
    .end local v6    # "oldSampleRate":J
    .end local v8    # "newSampleRate":J
    .restart local p2    # "oldSampleRate":J
    .restart local p4    # "newSampleRate":J
    :cond_0
    return-void
.end method

.method public isPreviousPeriodBetter()Z
    .locals 8

    .line 701
    iget-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$300(Landroidx/media3/common/audio/Sonic;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget-wide v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    iget-wide v4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 706
    return v1

    .line 708
    :cond_1
    iget-wide v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    mul-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2

    .line 710
    return v1

    .line 712
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 702
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

    .line 759
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    iget-object v7, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

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
    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->overlapAdd(II[FI[FI[FI)V

    .line 768
    return-void
.end method

.method public updatePreviousMinDiff()V
    .locals 2

    .line 794
    iget-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    .line 795
    return-void
.end method

.method public zeroInputBuffer(II)V
    .locals 4
    .param p1, "startPosition"    # I
    .param p2, "length"    # I

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    move-result v1

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 818
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    add-int v2, p1, v0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
