.class final Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
.super Ljava/lang/Object;
.source "SsaDialogueFormat.java"


# instance fields
.field public final endTimeIndex:I

.field public final layerIndex:I

.field public final length:I

.field public final startTimeIndex:I

.field public final styleIndex:I

.field public final textIndex:I


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 0
    .param p1, "layerIndex"    # I
    .param p2, "startTimeIndex"    # I
    .param p3, "endTimeIndex"    # I
    .param p4, "styleIndex"    # I
    .param p5, "textIndex"    # I
    .param p6, "length"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->layerIndex:I

    .line 50
    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    .line 51
    iput p3, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    .line 52
    iput p4, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    .line 53
    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    .line 54
    iput p6, p0, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    .line 55
    return-void
.end method

.method public static fromFormatLine(Ljava/lang/String;)Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;
    .locals 14
    .param p0, "formatLine"    # Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    .line 65
    .local v0, "layerIndex":I
    const/4 v1, -0x1

    .line 66
    .local v1, "startTimeIndex":I
    const/4 v2, -0x1

    .line 67
    .local v2, "endTimeIndex":I
    const/4 v3, -0x1

    .line 68
    .local v3, "styleIndex":I
    const/4 v4, -0x1

    .line 69
    .local v4, "textIndex":I
    const-string v5, "Format:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "keys":[Ljava/lang/String;
    const/4 v6, 0x0

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    .end local v0    # "layerIndex":I
    .end local v1    # "startTimeIndex":I
    .end local v2    # "endTimeIndex":I
    .end local v3    # "styleIndex":I
    .end local v4    # "textIndex":I
    .local v6, "i":I
    .local v8, "layerIndex":I
    .local v9, "startTimeIndex":I
    .local v10, "endTimeIndex":I
    .local v11, "styleIndex":I
    .local v12, "textIndex":I
    :goto_0
    array-length v0, v5

    const/4 v1, -0x1

    if-ge v6, v0, :cond_1

    .line 72
    aget-object v0, v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "layer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 86
    :pswitch_0
    move v0, v6

    move v12, v0

    .end local v12    # "textIndex":I
    .local v0, "textIndex":I
    goto :goto_2

    .line 83
    .end local v0    # "textIndex":I
    .restart local v12    # "textIndex":I
    :pswitch_1
    move v0, v6

    .line 84
    .end local v11    # "styleIndex":I
    .local v0, "styleIndex":I
    move v11, v0

    goto :goto_2

    .line 80
    .end local v0    # "styleIndex":I
    .restart local v11    # "styleIndex":I
    :pswitch_2
    move v0, v6

    .line 81
    .end local v10    # "endTimeIndex":I
    .local v0, "endTimeIndex":I
    move v10, v0

    goto :goto_2

    .line 77
    .end local v0    # "endTimeIndex":I
    .restart local v10    # "endTimeIndex":I
    :pswitch_3
    move v0, v6

    .line 78
    .end local v9    # "startTimeIndex":I
    .local v0, "startTimeIndex":I
    move v9, v0

    goto :goto_2

    .line 74
    .end local v0    # "startTimeIndex":I
    .restart local v9    # "startTimeIndex":I
    :pswitch_4
    move v0, v6

    .line 75
    .end local v8    # "layerIndex":I
    .local v0, "layerIndex":I
    move v8, v0

    .line 71
    .end local v0    # "layerIndex":I
    .restart local v8    # "layerIndex":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v6    # "i":I
    :cond_1
    if-eq v9, v1, :cond_2

    if-eq v10, v1, :cond_2

    if-eq v12, v1, :cond_2

    .line 93
    new-instance v7, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;

    array-length v13, v5

    invoke-direct/range {v7 .. v13}, Landroidx/media3/extractor/text/ssa/SsaDialogueFormat;-><init>(IIIIII)V

    goto :goto_3

    .line 95
    :cond_2
    const/4 v7, 0x0

    .line 90
    :goto_3
    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_4
        0x36452d -> :sswitch_3
        0x61fd551 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
