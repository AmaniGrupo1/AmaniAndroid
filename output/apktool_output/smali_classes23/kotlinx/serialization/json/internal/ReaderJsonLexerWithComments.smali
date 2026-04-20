.class public final Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;
.super Lkotlinx/serialization/json/internal/ReaderJsonLexer;
.source "CommentLexers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentLexers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/ReaderJsonLexerWithComments\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,219:1\n158#2:220\n*S KotlinDebug\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/ReaderJsonLexerWithComments\n*L\n204#1:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u0008\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;",
        "Lkotlinx/serialization/json/internal/ReaderJsonLexer;",
        "reader",
        "Lkotlinx/serialization/json/internal/InternalJsonReader;",
        "buffer",
        "",
        "<init>",
        "(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V",
        "consumeNextToken",
        "",
        "expected",
        "",
        "canConsumeValue",
        "",
        "",
        "peekNextToken",
        "handleComment",
        "Lkotlin/Pair;",
        "",
        "position",
        "prefetchWithinThreshold",
        "skipWhitespaces",
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


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V
    .locals 1
    .param p1, "reader"    # Lkotlinx/serialization/json/internal/InternalJsonReader;
    .param p2, "buffer"    # [C

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;-><init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V

    return-void
.end method

.method private final handleComment(I)Lkotlin/Pair;
    .locals 16
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 141
    .local v1, "current":I
    add-int/lit8 v2, v1, 0x2

    .line 142
    .local v2, "startIndex":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 154
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 142
    sparse-switch v3, :sswitch_data_0

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    return-object v3

    .line 142
    :sswitch_0
    move v9, v2

    .line 144
    .end local v2    # "startIndex":I
    .local v9, "startIndex":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 145
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0xa

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 146
    if-ne v1, v4, :cond_0

    .line 147
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->prefetchOrEof(I)I

    move-result v1

    .line 148
    move v9, v1

    goto :goto_0

    .line 150
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    return-object v2

    .line 154
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    return-object v2

    .line 158
    .end local v9    # "startIndex":I
    .restart local v2    # "startIndex":I
    :sswitch_1
    const/4 v3, 0x0

    move v9, v2

    .line 159
    .end local v2    # "startIndex":I
    .local v3, "rareCaseHit":Z
    .restart local v9    # "startIndex":I
    :goto_1
    if-eq v1, v4, :cond_5

    .line 160
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "*/"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 161
    if-eq v1, v4, :cond_2

    .line 162
    add-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    return-object v2

    .line 163
    :cond_2
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v7

    invoke-virtual {v7}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v2, v7}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_3

    .line 164
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->prefetchOrEof(I)I

    move-result v1

    .line 165
    move v9, v1

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->prefetchWithinThreshold(I)I

    move-result v1

    .line 173
    if-nez v3, :cond_4

    .line 176
    const/4 v3, 0x1

    .line 177
    move v9, v1

    goto :goto_1

    .line 174
    :cond_4
    nop

    .line 181
    :cond_5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    iput v2, v0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 182
    move-object v10, v0

    check-cast v10, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const-string v11, "Expected end of the block comment: \"*/\", but had EOF instead"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private final prefetchWithinThreshold(I)I
    .locals 2
    .param p1, "position"    # I

    .line 189
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->threshold:I

    if-le v0, v1, :cond_0

    return p1

    .line 190
    :cond_0
    iput p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 191
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->ensureHaveChars()V

    .line 192
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

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

    .line 193
    :cond_2
    return v1

    .line 192
    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public canConsumeValue()Z
    .locals 2

    .line 113
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->ensureHaveChars()V

    .line 114
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->skipWhitespaces()I

    move-result v0

    .line 116
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->isValidValueStart(C)Z

    move-result v1

    return v1

    .line 116
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public consumeNextToken()B
    .locals 3

    .line 121
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->ensureHaveChars()V

    .line 122
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 123
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 124
    .local v1, "cpos":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 126
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    return v2

    .line 124
    :cond_1
    :goto_0
    const/16 v2, 0xa

    return v2
.end method

.method public consumeNextToken(C)V
    .locals 4
    .param p1, "expected"    # C

    .line 98
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->ensureHaveChars()V

    .line 99
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 100
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 102
    .local v1, "current":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 103
    :cond_0
    iput v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 104
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->unexpectedToken(C)V

    .line 106
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v2

    .line 107
    .local v2, "c":C
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 108
    if-ne v2, p1, :cond_2

    return-void

    .line 109
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->unexpectedToken(C)V

    .line 110
    return-void
.end method

.method public peekNextToken()B
    .locals 3

    .line 130
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->ensureHaveChars()V

    .line 131
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 132
    .local v0, "source":Lkotlinx/serialization/json/internal/ArrayAsSequence;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 134
    .local v1, "cpos":I
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 136
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    return v2

    .line 134
    :cond_1
    :goto_0
    const/16 v2, 0xa

    return v2
.end method

.method public skipWhitespaces()I
    .locals 6

    .line 197
    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 199
    .local v0, "current":I
    :cond_0
    :goto_0
    nop

    .line 200
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->prefetchOrEof(I)I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 202
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 204
    .local v1, "c":C
    move-object v2, p0

    check-cast v2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v2, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    move v3, v1

    .local v3, "$this$isWs$iv":C
    const/4 v4, 0x0

    .line 220
    .local v4, "$i$f$isWs":I
    const/16 v5, 0x20

    if-eq v3, v5, :cond_2

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    const/16 v5, 0xd

    if-eq v3, v5, :cond_2

    const/16 v5, 0x9

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 204
    .end local v2    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v3    # "$this$isWs$iv":C
    .end local v4    # "$i$f$isWs":I
    :goto_2
    if-eqz v5, :cond_3

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 209
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->handleComment(I)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .local v3, "new":I
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 210
    .local v2, "cont":Z
    move v0, v3

    .line 211
    if-nez v2, :cond_0

    .line 213
    .end local v2    # "cont":Z
    .end local v3    # "new":I
    :cond_4
    nop

    .line 215
    .end local v1    # "c":C
    :cond_5
    iput v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;->currentPosition:I

    .line 216
    return v0
.end method
