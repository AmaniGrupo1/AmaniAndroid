.class public Lkotlinx/serialization/json/internal/ReaderJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "ReaderJsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderJsonLexer.kt\nkotlinx/serialization/json/internal/ReaderJsonLexer\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,221:1\n158#2:222\n158#2:223\n158#2:224\n*S KotlinDebug\n*F\n+ 1 ReaderJsonLexer.kt\nkotlinx/serialization/json/internal/ReaderJsonLexer\n*L\n66#1:222\n133#1:223\n150#1:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0010\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\rH\u0016J\u0018\u0010$\u001a\u00020 2\u0006\u0010#\u001a\u00020\r2\u0006\u0010%\u001a\u00020\rH\u0016J\u0018\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020\rH\u0014J\u001a\u0010)\u001a\u0004\u0018\u00010 2\u0006\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u0013H\u0016J\u0006\u0010,\u001a\u00020\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\r8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006-"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "reader",
        "Lkotlinx/serialization/json/internal/InternalJsonReader;",
        "buffer",
        "",
        "<init>",
        "(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V",
        "getReader",
        "()Lkotlinx/serialization/json/internal/InternalJsonReader;",
        "getBuffer",
        "()[C",
        "threshold",
        "",
        "source",
        "Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "getSource",
        "()Lkotlinx/serialization/json/internal/ArrayAsSequence;",
        "canConsumeValue",
        "",
        "preload",
        "",
        "unprocessedCount",
        "prefetchOrEof",
        "position",
        "consumeNextToken",
        "",
        "expected",
        "",
        "skipWhitespaces",
        "ensureHaveChars",
        "consumeKeyString",
        "",
        "indexOf",
        "char",
        "startPos",
        "substring",
        "endPos",
        "appendRange",
        "fromIndex",
        "toIndex",
        "peekLeadingMatchingValue",
        "keyToMatch",
        "isLenient",
        "release",
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
.field private final buffer:[C

.field private final reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

.field private final source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

.field protected threshold:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V
    .locals 2
    .param p1, "reader"    # Lkotlinx/serialization/json/internal/InternalJsonReader;
    .param p2, "buffer"    # [C

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    .line 45
    iput-object p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    .line 46
    iput-object p2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    .line 50
    const/16 v0, 0x80

    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    .line 52
    new-instance v0, Lkotlinx/serialization/json/internal/ArrayAsSequence;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;-><init>([C)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    .line 56
    nop

    .line 44
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[CILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 44
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 46
    sget-object p2, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->take()[C

    move-result-object p2

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;-><init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V

    .line 47
    return-void
.end method

.method private final preload(I)V
    .locals 7
    .param p1, "unprocessedCount"    # I

    .line 78
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getBuffer$kotlinx_serialization_json()[C

    move-result-object v0

    .line 79
    .local v0, "buffer":[C
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 80
    iget v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    add-int/2addr v3, p1

    invoke-static {v0, v0, v1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([C[CIII)[C

    .line 82
    :cond_0
    move v2, p1

    .line 83
    .local v2, "filledCount":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v3

    .line 84
    .local v3, "sizeTotal":I
    :goto_0
    if-eq v2, v3, :cond_2

    .line 85
    iget-object v4, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    sub-int v5, v3, v2

    invoke-interface {v4, v0, v2, v5}, Lkotlinx/serialization/json/internal/InternalJsonReader;->read([CII)I

    move-result v4

    .line 86
    .local v4, "actual":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 88
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v6

    invoke-virtual {v6, v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->trim(I)V

    .line 89
    iput v5, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    add-int/2addr v2, v4

    .end local v4    # "actual":I
    goto :goto_0

    .line 94
    :cond_2
    :goto_1
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 95
    return-void
.end method


# virtual methods
.method protected appendRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 211
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getEscapedString()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getBuffer$kotlinx_serialization_json()[C

    move-result-object v1

    sub-int v2, p2, p1

    invoke-virtual {v0, v1, p1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "append(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public canConsumeValue()Z
    .locals 7

    .line 59
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 60
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 61
    .local v0, "current":I
    :goto_0
    nop

    .line 62
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 63
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 64
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 66
    .local v1, "c":C
    move-object v3, p0

    check-cast v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v3, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    move v4, v1

    .local v4, "$this$isWs$iv":C
    const/4 v5, 0x0

    .line 222
    .local v5, "$i$f$isWs":I
    const/16 v6, 0x20

    if-eq v4, v6, :cond_0

    const/16 v6, 0xa

    if-eq v4, v6, :cond_0

    const/16 v6, 0xd

    if-eq v4, v6, :cond_0

    const/16 v6, 0x9

    if-ne v4, v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 66
    .end local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v4    # "$this$isWs$iv":C
    .end local v5    # "$i$f$isWs":I
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 71
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->isValidValueStart(C)Z

    move-result v2

    return v2

    .line 73
    .end local v1    # "c":C
    :cond_3
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 74
    return v2
.end method

.method public consumeKeyString()Ljava/lang/String;
    .locals 7

    .line 176
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeNextToken(C)V

    .line 177
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 178
    .local v1, "current":I
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->indexOf(CI)I

    move-result v0

    .line 179
    .local v0, "closingQuote":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 181
    if-eq v1, v2, :cond_0

    .line 185
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    invoke-virtual {p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    :cond_0
    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    .line 188
    :cond_1
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    .line 191
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget v4, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    invoke-virtual {p0, v3, v4, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 195
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public consumeNextToken()B
    .locals 5

    .line 106
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 107
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 108
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 109
    .local v1, "cpos":I
    :goto_0
    nop

    .line 110
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 111
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 112
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cpos":I
    .local v2, "cpos":I
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 113
    .local v1, "ch":C
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v3

    .line 114
    .local v3, "tc":B
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 116
    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 117
    nop

    .line 113
    .end local v3    # "tc":B
    return v3

    .line 114
    .restart local v3    # "tc":B
    :cond_0
    move v1, v2

    goto :goto_0

    .line 121
    .end local v2    # "cpos":I
    .end local v3    # "tc":B
    .local v1, "cpos":I
    :cond_1
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 122
    const/16 v2, 0xa

    return v2
.end method

.method public consumeNextToken(C)V
    .locals 7
    .param p1, "expected"    # C

    .line 126
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 127
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 128
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 129
    .local v1, "cpos":I
    :goto_0
    nop

    .line 130
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    .line 131
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 132
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cpos":I
    .local v2, "cpos":I
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 133
    .local v1, "c":C
    move-object v3, p0

    check-cast v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v3, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    move v4, v1

    .local v4, "$this$isWs$iv":C
    const/4 v5, 0x0

    .line 223
    .local v5, "$i$f$isWs":I
    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    const/16 v6, 0x9

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    .line 133
    .end local v3    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v4    # "$this$isWs$iv":C
    .end local v5    # "$i$f$isWs":I
    :goto_2
    if-nez v6, :cond_3

    .line 134
    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 135
    if-ne v1, p1, :cond_2

    return-void

    .line 136
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->unexpectedToken(C)V

    .line 129
    .end local v1    # "c":C
    :cond_3
    move v1, v2

    goto :goto_0

    .line 138
    .end local v2    # "cpos":I
    .local v1, "cpos":I
    :cond_4
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 139
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->unexpectedToken(C)V

    .line 140
    return-void
.end method

.method public ensureHaveChars()V
    .locals 4

    .line 161
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 162
    .local v0, "cur":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    .line 163
    .local v1, "oldSize":I
    sub-int v2, v1, v0

    .line 164
    .local v2, "spaceLeft":I
    iget v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    if-le v2, v3, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    .line 168
    return-void
.end method

.method public final getBuffer()[C
    .locals 1

    .line 46
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    return-object v0
.end method

.method public final getReader()Lkotlinx/serialization/json/internal/InternalJsonReader;
    .locals 1

    .line 45
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    return-object v0
.end method

.method public bridge synthetic getSource()Ljava/lang/CharSequence;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    return-object v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "char"    # C
    .param p2, "startPos"    # I

    .line 199
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 200
    .local v0, "src":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    move v1, p2

    .local v1, "i":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 201
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "keyToMatch"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public prefetchOrEof(I)I
    .locals 2
    .param p1, "position"    # I

    .line 98
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    .line 99
    :cond_0
    iput p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 100
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 101
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 102
    :cond_2
    return v1

    .line 101
    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public final release()V
    .locals 2

    .line 218
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->release([C)V

    .line 219
    return-void
.end method

.method public skipWhitespaces()I
    .locals 6

    .line 143
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 145
    .local v0, "current":I
    :goto_0
    nop

    .line 146
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    .line 147
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 148
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 150
    .local v1, "c":C
    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    move v3, v1

    .local v3, "$this$isWs$iv":C
    const/4 v4, 0x0

    .line 224
    .local v4, "$i$f$isWs":I
    const/16 v5, 0x20

    if-eq v3, v5, :cond_1

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    const/16 v5, 0xd

    if-eq v3, v5, :cond_1

    const/16 v5, 0x9

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 150
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v3    # "$this$isWs$iv":C
    .end local v4    # "$i$f$isWs":I
    :goto_2
    if-eqz v5, :cond_2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    nop

    .line 156
    .end local v1    # "c":C
    :cond_3
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->currentPosition:I

    .line 157
    return v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 207
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
