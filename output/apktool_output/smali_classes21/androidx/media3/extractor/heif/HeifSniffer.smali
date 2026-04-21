.class final Landroidx/media3/extractor/heif/HeifSniffer;
.super Ljava/lang/Object;
.source "HeifSniffer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sniff(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 12
    .param p0, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p1, "sniffMotionPhoto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 48
    .local v0, "buffer":Landroidx/media3/common/util/ParsableByteArray;
    const/4 v1, 0x1

    .line 51
    .local v1, "firstAtom":Z
    :goto_0
    const/16 v2, 0x8

    .line 52
    .local v2, "headerSize":I
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 53
    nop

    .line 54
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 53
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {p0, v3, v4, v2, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    return v4

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 62
    .local v6, "atomSize":J
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 64
    .local v3, "atomType":I
    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    const/16 v9, 0x8

    if-nez v8, :cond_2

    .line 65
    const/16 v2, 0x10

    .line 66
    nop

    .line 67
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    .line 66
    invoke-interface {p0, v8, v9, v9, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 71
    return v4

    .line 73
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 76
    :cond_2
    int-to-long v10, v2

    cmp-long v8, v6, v10

    if-gez v8, :cond_3

    .line 77
    return v4

    .line 80
    :cond_3
    int-to-long v10, v2

    sub-long v10, v6, v10

    long-to-int v8, v10

    .line 81
    .local v8, "atomDataSize":I
    if-eqz v1, :cond_8

    .line 82
    const v10, 0x66747970

    if-ne v3, v10, :cond_7

    if-ge v8, v9, :cond_4

    goto :goto_1

    .line 86
    :cond_4
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 87
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v10

    invoke-interface {p0, v10, v4, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 88
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x68656963

    if-eq v9, v10, :cond_5

    .line 89
    return v4

    .line 91
    :cond_5
    if-nez p1, :cond_6

    .line 92
    return v5

    .line 94
    :cond_6
    add-int/lit8 v4, v8, -0x4

    invoke-interface {p0, v4}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 95
    const/4 v1, 0x0

    goto :goto_2

    .line 83
    :cond_7
    :goto_1
    return v4

    .line 96
    :cond_8
    const v4, 0x6d707664

    if-ne v3, v4, :cond_9

    .line 97
    return v5

    .line 98
    :cond_9
    if-eqz v8, :cond_a

    .line 99
    invoke-interface {p0, v8}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 101
    .end local v2    # "headerSize":I
    .end local v3    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v8    # "atomDataSize":I
    :cond_a
    :goto_2
    goto :goto_0
.end method
