.class public final Landroidx/media3/extractor/ExtractorUtil;
.super Ljava/lang/Object;
.source "ExtractorUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainerInput(ZLjava/lang/String;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 39
    if-eqz p0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static getMaximumEncodedRateBytesPerSecond(I)I
    .locals 1
    .param p0, "encoding"    # I

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 178
    :pswitch_0
    const v0, -0x7fffffff

    return v0

    .line 163
    :pswitch_1
    const v0, 0xf906

    return v0

    .line 154
    :pswitch_2
    const v0, 0x52080

    return v0

    .line 145
    :pswitch_3
    const v0, 0x3e800

    return v0

    .line 147
    :pswitch_4
    const/16 v0, 0x1f40

    return v0

    .line 161
    :pswitch_5
    const v0, 0x2ebae4

    return v0

    .line 143
    :pswitch_6
    const/16 v0, 0x1b58

    return v0

    .line 141
    :pswitch_7
    const/16 v0, 0x3e80

    return v0

    .line 139
    :pswitch_8
    const v0, 0x186a0

    return v0

    .line 137
    :pswitch_9
    const v0, 0x9c40

    return v0

    .line 159
    :pswitch_a
    const v0, 0x225510

    return v0

    .line 156
    :pswitch_b
    const v0, 0x2ee00

    return v0

    .line 152
    :pswitch_c
    const v0, 0xbb800

    return v0

    .line 149
    :pswitch_d
    const v0, 0x13880

    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static peekFullyQuietly(Landroidx/media3/extractor/ExtractorInput;[BIIZ)Z
    .locals 2
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/EOFException;
    if-eqz p4, :cond_0

    .line 120
    const/4 v1, 0x0

    return v1

    .line 122
    :cond_0
    throw v0
.end method

.method public static peekToLength(Landroidx/media3/extractor/ExtractorInput;[BII)I
    .locals 3
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "totalBytesPeeked":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 61
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-interface {p0, p1, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peek([BII)I

    move-result v1

    .line 62
    .local v1, "bytesPeeked":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 63
    goto :goto_1

    .line 65
    :cond_0
    add-int/2addr v0, v1

    .line 66
    .end local v1    # "bytesPeeked":I
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    return v0
.end method

.method public static readFullyQuietly(Landroidx/media3/extractor/ExtractorInput;[BII)Z
    .locals 2
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    const/4 v0, 0x1

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    return v1
.end method

.method public static skipFullyQuietly(Landroidx/media3/extractor/ExtractorInput;I)Z
    .locals 2
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    const/4 v0, 0x1

    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    return v1
.end method
