.class final Landroidx/media3/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 40
    return-void
.end method

.method private readUint(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 6
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 93
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 94
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 95
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 97
    :cond_0
    const/16 v1, 0x80

    .line 98
    .local v1, "mask":I
    const/4 v3, 0x0

    .line 99
    .local v3, "length":I
    :goto_0
    and-int v4, v0, v1

    if-nez v4, :cond_1

    .line 100
    shr-int/lit8 v1, v1, 0x1

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    not-int v4, v1

    and-int/2addr v0, v4

    .line 104
    iget-object v4, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 105
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 106
    shl-int/lit8 v0, v0, 0x8

    .line 107
    iget-object v4, p0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 110
    int-to-long v4, v0

    return-wide v4
.end method


# virtual methods
.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 23
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    .line 47
    .local v2, "inputLength":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x400

    if-eqz v6, :cond_1

    cmp-long v6, v2, v7

    if-lez v6, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    move-wide v7, v2

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    nop

    .line 49
    :goto_1
    long-to-int v6, v7

    .line 51
    .local v6, "bytesToSearch":I
    iget-object v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {v1, v7, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 52
    iget-object v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 53
    .local v10, "tag":J
    iput v9, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    .line 54
    :goto_2
    const-wide/32 v12, 0x1a45dfa3

    cmp-long v7, v10, v12

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 55
    iget v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v7, v9

    iput v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    if-ne v7, v6, :cond_2

    .line 56
    return v8

    .line 58
    :cond_2
    iget-object v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-interface {v1, v7, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 59
    const/16 v7, 0x8

    shl-long v12, v10, v7

    const-wide/16 v14, -0x100

    and-long v9, v12, v14

    .line 60
    .end local v10    # "tag":J
    .local v9, "tag":J
    iget-object v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    or-long v10, v9, v11

    .end local v9    # "tag":J
    .restart local v10    # "tag":J
    goto :goto_2

    .line 64
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v12

    .line 65
    .local v12, "headerSize":J
    iget v7, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v14, v7

    .line 66
    .local v14, "headerStart":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v7, v12, v16

    if-eqz v7, :cond_b

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    add-long v4, v14, v12

    cmp-long v4, v4, v2

    if-ltz v4, :cond_4

    move/from16 v19, v8

    goto :goto_7

    .line 72
    :cond_4
    :goto_3
    iget v4, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v4, v4

    add-long v18, v14, v12

    cmp-long v4, v4, v18

    if-gez v4, :cond_9

    .line 73
    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 74
    .local v4, "id":J
    cmp-long v7, v4, v16

    if-nez v7, :cond_5

    .line 75
    return v8

    .line 77
    :cond_5
    move v7, v8

    invoke-direct/range {p0 .. p1}, Landroidx/media3/extractor/mkv/Sniffer;->readUint(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v8

    .line 78
    .local v8, "size":J
    const-wide/16 v19, 0x0

    cmp-long v21, v8, v19

    if-ltz v21, :cond_8

    const-wide/32 v21, 0x7fffffff

    cmp-long v21, v8, v21

    if-lez v21, :cond_6

    move/from16 v19, v7

    goto :goto_5

    .line 81
    :cond_6
    cmp-long v19, v8, v19

    if-eqz v19, :cond_7

    .line 82
    move/from16 v19, v7

    long-to-int v7, v8

    .line 83
    .local v7, "sizeInt":I
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 84
    iget v1, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_4

    .line 81
    .end local v7    # "sizeInt":I
    :cond_7
    move/from16 v19, v7

    .line 86
    .end local v4    # "id":J
    .end local v8    # "size":J
    :goto_4
    move-object/from16 v1, p1

    move/from16 v8, v19

    const/4 v9, 0x1

    goto :goto_3

    .line 78
    .restart local v4    # "id":J
    .restart local v8    # "size":J
    :cond_8
    move/from16 v19, v7

    .line 79
    :goto_5
    return v19

    .line 87
    .end local v4    # "id":J
    .end local v8    # "size":J
    :cond_9
    move/from16 v19, v8

    iget v1, v0, Landroidx/media3/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v4, v1

    add-long v7, v14, v12

    cmp-long v1, v4, v7

    if-nez v1, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    move/from16 v8, v19

    :goto_6
    return v8

    .line 66
    :cond_b
    move/from16 v19, v8

    .line 68
    :goto_7
    return v19
.end method
