.class public final Landroidx/media3/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataReader:Landroidx/media3/common/DataReader;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "media3.extractor"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/DataReader;JJ)V
    .locals 1
    .param p1, "dataReader"    # Landroidx/media3/common/DataReader;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->dataReader:Landroidx/media3/common/DataReader;

    .line 59
    iput-wide p2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    .line 60
    iput-wide p4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    .line 61
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 62
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    .line 63
    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .line 314
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 315
    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    .line 317
    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 4
    .param p1, "length"    # I

    .line 218
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 219
    .local v0, "requiredLength":I
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v3, v0

    .line 221
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    .line 225
    .local v1, "newPeekCapacity":I
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 227
    .end local v1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private readFromPeekBuffer([BII)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 250
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    return v1

    .line 253
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 254
    .local v0, "peekBytes":I
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-direct {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 256
    return v0
.end method

.method private readFromUpstream([BIIIZ)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->dataReader:Landroidx/media3/common/DataReader;

    add-int v1, p2, p4

    sub-int v2, p3, p4

    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v0

    .line 299
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 300
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 301
    return v1

    .line 303
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 305
    :cond_1
    add-int v1, p4, v0

    return v1

    .line 296
    .end local v0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1
    .param p1, "length"    # I

    .line 236
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 238
    return v0
.end method

.method private updatePeekBuffer(I)V
    .locals 5
    .param p1, "bytesConsumed"    # I

    .line 265
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 267
    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 268
    .local v1, "newPeekBuffer":[B
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget-object v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v3, v3

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 269
    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 271
    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p1, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iput-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 273
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 179
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 7
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 163
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    .line 164
    .local v5, "bytesPeeked":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 165
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 166
    move-object v1, p0

    move v4, p1

    move v6, p2

    .end local p1    # "length":I
    .end local p2    # "allowEndOfInput":Z
    .local v4, "length":I
    .local v6, "allowEndOfInput":Z
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    .line 167
    const/4 p1, -0x1

    if-ne v5, p1, :cond_0

    .line 168
    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    iget p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, v5

    iput p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    move p1, v4

    move p2, v6

    goto :goto_0

    .line 172
    .end local v4    # "length":I
    .end local v6    # "allowEndOfInput":Z
    .restart local p1    # "length":I
    .restart local p2    # "allowEndOfInput":Z
    :cond_1
    move-object v1, p0

    move v4, p1

    .end local p1    # "length":I
    .restart local v4    # "length":I
    iget p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, v4

    iput p1, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 173
    const/4 p1, 0x1

    return p1
.end method

.method public getDataReader()Landroidx/media3/common/DataReader;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->dataReader:Landroidx/media3/common/DataReader;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 198
    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 188
    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peek([BII)I
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p3}, Landroidx/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 123
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    .line 125
    .local v0, "peekBufferRemainingBytes":I
    if-nez v0, :cond_1

    .line 126
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 127
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .end local p3    # "length":I
    .local v4, "length":I
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p3

    .line 133
    .local p3, "bytesPeeked":I
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    .line 134
    return v2

    .line 136
    :cond_0
    iget v2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v2, p3

    iput v2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    .line 138
    .end local v4    # "length":I
    .local p3, "length":I
    :cond_1
    move-object v1, p0

    move v4, p3

    .end local p3    # "length":I
    .restart local v4    # "length":I
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 140
    .local p3, "bytesPeeked":I
    :goto_0
    iget-object v2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v2, p3

    iput v2, v1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 142
    return p3
.end method

.method public peekFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 158
    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 2
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p3, p4}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    .line 68
    .local v0, "bytesRead":I
    if-nez v0, :cond_0

    .line 69
    nop

    .line 70
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "buffer":[B
    .local v3, "offset":I
    .local v4, "length":I
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_0

    .line 68
    .end local v2    # "buffer":[B
    .end local v3    # "offset":I
    .end local v4    # "length":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 73
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "offset":I
    .restart local v4    # "length":I
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 74
    return v0
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 91
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    .line 81
    .local v5, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    .line 82
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .end local p1    # "target":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "allowEndOfInput":Z
    .local v2, "target":[B
    .local v3, "offset":I
    .local v4, "length":I
    .local v6, "allowEndOfInput":Z
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 81
    .end local v2    # "target":[B
    .end local v3    # "offset":I
    .end local v4    # "length":I
    .end local v6    # "allowEndOfInput":Z
    .restart local p1    # "target":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "allowEndOfInput":Z
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 84
    .end local p1    # "target":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "allowEndOfInput":Z
    .restart local v2    # "target":[B
    .restart local v3    # "offset":I
    .restart local v4    # "length":I
    .restart local v6    # "allowEndOfInput":Z
    invoke-direct {p0, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 85
    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 184
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 2
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 204
    iput-wide p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    .line 205
    throw p3
.end method

.method public skip(I)I
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    .line 96
    .local v0, "bytesSkipped":I
    if-nez v0, :cond_0

    .line 97
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_0

    .line 96
    :cond_0
    move-object v1, p0

    .line 99
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 100
    return v0
.end method

.method public skipFully(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 118
    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    .line 106
    .local v5, "bytesSkipped":I
    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 108
    .local v4, "minLength":I
    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    .line 109
    move-object v1, p0

    move v6, p2

    .end local p2    # "allowEndOfInput":Z
    .local v6, "allowEndOfInput":Z
    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    .line 110
    .end local v4    # "minLength":I
    goto :goto_0

    .line 106
    .end local v6    # "allowEndOfInput":Z
    .restart local p2    # "allowEndOfInput":Z
    :cond_0
    move-object v1, p0

    move v6, p2

    .line 111
    .end local p2    # "allowEndOfInput":Z
    .restart local v6    # "allowEndOfInput":Z
    invoke-direct {p0, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 112
    if-eq v5, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return p2
.end method
