.class public final Lkotlinx/serialization/json/internal/CharsetReader;
.super Ljava/lang/Object;
.source "CharsetReader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0006\u0010\u0019\u001a\u00020\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/CharsetReader;",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "<init>",
        "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V",
        "decoder",
        "Ljava/nio/charset/CharsetDecoder;",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "hasLeftoverPotentiallySurrogateChar",
        "",
        "leftoverChar",
        "",
        "read",
        "",
        "array",
        "",
        "offset",
        "length",
        "doRead",
        "fillByteBuffer",
        "oneShotReadSlowPath",
        "release",
        "",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final charset:Ljava/nio/charset/Charset;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private hasLeftoverPotentiallySurrogateChar:Z

.field private final inputStream:Ljava/io/InputStream;

.field private leftoverChar:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->inputStream:Ljava/io/InputStream;

    .line 9
    iput-object p2, p0, Lkotlinx/serialization/json/internal/CharsetReader;->charset:Ljava/nio/charset/Charset;

    .line 18
    nop

    .line 19
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 20
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 21
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 22
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->take()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 23
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 24
    nop

    .line 7
    return-void
.end method

.method private final doRead([CII)I
    .locals 5
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 55
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 56
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "isEof":Z
    :goto_0
    nop

    .line 61
    iget-object v2, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 62
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    if-nez v1, :cond_5

    .line 64
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 65
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/CharsetReader;->fillByteBuffer()I

    move-result v3

    .line 66
    .local v3, "n":I
    if-gez v3, :cond_2

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    :cond_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 71
    :cond_2
    goto :goto_0

    .line 73
    .end local v3    # "n":I
    :cond_3
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 74
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    .line 75
    nop

    .line 79
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lkotlinx/serialization/json/internal/CharsetReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 80
    :cond_6
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, -0x1

    goto :goto_2

    .line 81
    :cond_7
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 80
    :goto_2
    return v2

    .line 74
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Assertion failed"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 77
    :cond_9
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_0
.end method

.method private final fillByteBuffer()I
    .locals 6

    .line 85
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 86
    nop

    .line 88
    :try_start_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 89
    .local v0, "limit":I
    iget-object v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 90
    .local v1, "position":I
    if-gt v1, v0, :cond_0

    sub-int v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 91
    .local v2, "remaining":I
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v3, "bytesRead":I
    nop

    .line 94
    iget-object v4, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 92
    if-gez v3, :cond_1

    .line 96
    .end local v0    # "limit":I
    .end local v1    # "position":I
    .end local v2    # "remaining":I
    .end local v3    # "bytesRead":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .restart local v1    # "position":I
    move v4, v3

    .line 92
    .restart local v0    # "limit":I
    .restart local v2    # "remaining":I
    .local v4, "bytesRead":I
    return v3

    .line 94
    .end local v4    # "bytesRead":I
    .restart local v3    # "bytesRead":I
    :cond_1
    :try_start_1
    const-string v5, "null cannot be cast to non-null type java.nio.Buffer"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/nio/Buffer;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v0    # "limit":I
    .end local v1    # "position":I
    .end local v2    # "remaining":I
    .end local v3    # "bytesRead":I
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    nop

    .line 98
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    throw v0
.end method

.method private final oneShotReadSlowPath()I
    .locals 5

    .line 103
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 105
    iget-char v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [C

    .line 109
    .local v2, "array":[C
    invoke-virtual {p0, v2, v1, v0}, Lkotlinx/serialization/json/internal/CharsetReader;->read([CII)I

    move-result v0

    .line 110
    .local v0, "bytesRead":I
    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unreachable state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :pswitch_1
    const/4 v3, 0x1

    aget-char v4, v2, v3

    iput-char v4, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    .line 115
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 116
    aget-char v1, v2, v1

    goto :goto_0

    .line 112
    :pswitch_2
    aget-char v1, v2, v1

    goto :goto_0

    .line 111
    :pswitch_3
    const/4 v1, -0x1

    .line 110
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final read([CII)I
    .locals 6
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 29
    :cond_0
    const/4 v1, 0x1

    if-ltz p2, :cond_1

    array-length v2, p1

    if-ge p2, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    if-ltz p3, :cond_2

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz v2, :cond_7

    .line 33
    move v2, p2

    .line 34
    .local v2, "offset":I
    move v3, p3

    .line 35
    .local v3, "length":I
    const/4 v4, 0x0

    .line 36
    .local v4, "bytesRead":I
    iget-boolean v5, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    if-eqz v5, :cond_3

    .line 37
    iget-char v5, p0, Lkotlinx/serialization/json/internal/CharsetReader;->leftoverChar:C

    aput-char v5, p1, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/CharsetReader;->hasLeftoverPotentiallySurrogateChar:Z

    .line 41
    const/4 v4, 0x1

    .line 42
    if-nez v3, :cond_3

    return v4

    .line 44
    :cond_3
    if-ne v3, v1, :cond_6

    .line 46
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/CharsetReader;->oneShotReadSlowPath()I

    move-result v0

    .line 47
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1

    .line 48
    :cond_5
    int-to-char v1, v0

    aput-char v1, p1, v2

    .line 49
    add-int/lit8 v1, v4, 0x1

    return v1

    .line 51
    .end local v0    # "c":I
    :cond_6
    invoke-direct {p0, p1, v2, v3}, Lkotlinx/serialization/json/internal/CharsetReader;->doRead([CII)I

    move-result v0

    add-int/2addr v0, v4

    return v0

    .line 29
    .end local v2    # "offset":I
    .end local v3    # "length":I
    .end local v4    # "bytesRead":I
    :cond_7
    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$-require-CharsetReader$read$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .end local v0    # "$i$a$-require-CharsetReader$read$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final release()V
    .locals 3

    .line 123
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool8k;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/CharsetReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "array(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ByteArrayPool8k;->release([B)V

    .line 124
    return-void
.end method
