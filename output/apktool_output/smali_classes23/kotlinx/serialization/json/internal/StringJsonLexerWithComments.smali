.class public final Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;
.super Lkotlinx/serialization/json/internal/StringJsonLexer;
.source "CommentLexers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentLexers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/StringJsonLexerWithComments\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,219:1\n158#2:220\n*S KotlinDebug\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/StringJsonLexerWithComments\n*L\n66#1:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u0006\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;",
        "Lkotlinx/serialization/json/internal/StringJsonLexer;",
        "source",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "consumeNextToken",
        "",
        "canConsumeValue",
        "",
        "",
        "expected",
        "",
        "peekNextToken",
        "skipWhitespaces",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canConsumeValue()Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v0

    .line 32
    .local v0, "current":I
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->isValidValueStart(C)Z

    move-result v1

    return v1

    .line 32
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public consumeNextToken()B
    .locals 3

    .line 23
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 25
    .local v1, "cpos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    return v2

    .line 25
    :cond_1
    :goto_0
    const/16 v2, 0xa

    return v2
.end method

.method public consumeNextToken(C)V
    .locals 4
    .param p1, "expected"    # C

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 39
    .local v1, "current":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 40
    :cond_0
    iput v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 41
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->unexpectedToken(C)V

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 44
    .local v2, "c":C
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 45
    if-ne v2, p1, :cond_2

    return-void

    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->unexpectedToken(C)V

    .line 47
    return-void
.end method

.method public peekNextToken()B
    .locals 3

    .line 50
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 53
    .local v1, "cpos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    return v2

    .line 53
    :cond_1
    :goto_0
    const/16 v2, 0xa

    return v2
.end method

.method public skipWhitespaces()I
    .locals 11

    .line 59
    iget v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 60
    .local v0, "current":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "source":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 66
    .local v3, "c":C
    move-object v4, p0

    check-cast v4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    .local v4, "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    move v5, v3

    .local v5, "$this$isWs$iv":C
    const/4 v6, 0x0

    .line 220
    .local v6, "$i$f$isWs":I
    const/16 v7, 0x20

    if-eq v5, v7, :cond_2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_2

    const/16 v7, 0xd

    if-eq v5, v7, :cond_2

    const/16 v7, 0x9

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 66
    .end local v4    # "this_$iv":Lkotlinx/serialization/json/internal/AbstractJsonLexer;
    .end local v5    # "$this$isWs$iv":C
    .end local v6    # "$i$f$isWs":I
    :goto_2
    if-eqz v7, :cond_3

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_6

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 71
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_4

    .line 73
    :sswitch_0
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    add-int/lit8 v7, v0, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v6, 0xa

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 74
    if-ne v0, v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 75
    :goto_3
    goto :goto_0

    .line 78
    :sswitch_1
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "*/"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 79
    if-eq v0, v1, :cond_5

    .line 83
    add-int/lit8 v0, v0, 0x2

    .line 85
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 81
    move-object v4, p0

    check-cast v4, Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "Expected end of the block comment: \"*/\", but had EOF instead"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 89
    :cond_6
    :goto_4
    nop

    .line 91
    .end local v3    # "c":C
    :cond_7
    iput v0, p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->currentPosition:I

    .line 92
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method
