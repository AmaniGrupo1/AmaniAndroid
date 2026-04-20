.class Lcom/google/re2j/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Parser$Pair;,
        Lcom/google/re2j/Parser$StringIterator;,
        Lcom/google/re2j/Parser$Stack;
    }
.end annotation


# static fields
.field private static final ANY_TABLE:[[I

.field private static final ERR_DUPLICATE_NAMED_CAPTURE:Ljava/lang/String; = "duplicate capture group name"

.field private static final ERR_INTERNAL_ERROR:Ljava/lang/String; = "regexp/syntax: internal error"

.field private static final ERR_INVALID_CHAR_CLASS:Ljava/lang/String; = "invalid character class"

.field private static final ERR_INVALID_CHAR_RANGE:Ljava/lang/String; = "invalid character class range"

.field private static final ERR_INVALID_ESCAPE:Ljava/lang/String; = "invalid escape sequence"

.field private static final ERR_INVALID_NAMED_CAPTURE:Ljava/lang/String; = "invalid named capture"

.field private static final ERR_INVALID_PERL_OP:Ljava/lang/String; = "invalid or unsupported Perl syntax"

.field private static final ERR_INVALID_REPEAT_OP:Ljava/lang/String; = "invalid nested repetition operator"

.field private static final ERR_INVALID_REPEAT_SIZE:Ljava/lang/String; = "invalid repeat count"

.field private static final ERR_MISSING_BRACKET:Ljava/lang/String; = "missing closing ]"

.field private static final ERR_MISSING_PAREN:Ljava/lang/String; = "missing closing )"

.field private static final ERR_MISSING_REPEAT_ARGUMENT:Ljava/lang/String; = "missing argument to repetition operator"

.field private static final ERR_TRAILING_BACKSLASH:Ljava/lang/String; = "trailing backslash at end of expression"


# instance fields
.field private flags:I

.field private free:Lcom/google/re2j/Regexp;

.field private final namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numCap:I

.field private final stack:Lcom/google/re2j/Parser$Stack;

.field private final wholeRegexp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1513
    const v0, 0x10ffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/re2j/Parser;->ANY_TABLE:[[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "wholeRegexp"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/re2j/Parser$Stack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/re2j/Parser$Stack;-><init>(Lcom/google/re2j/Parser$1;)V

    iput-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Parser;->numCap:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/google/re2j/Parser;->flags:I

    .line 67
    return-void
.end method

.method private alternate()Lcom/google/re2j/Regexp;
    .locals 2

    .line 280
    invoke-direct {p0}, Lcom/google/re2j/Parser;->popToPseudo()[Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 284
    .local v0, "subs":[Lcom/google/re2j/Regexp;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 285
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    .line 290
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 291
    sget-object v1, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1

    .line 294
    :cond_1
    sget-object v1, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1
.end method

.method private cleanAlt(Lcom/google/re2j/Regexp;)V
    .locals 7
    .param p1, "re"    # Lcom/google/re2j/Regexp;

    .line 299
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    .line 300
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/CharClass;-><init>([I)V

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 301
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v1, 0x0

    const v2, 0x10ffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    if-ne v0, v2, :cond_0

    .line 302
    iput-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 303
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    if-ne v0, v2, :cond_1

    .line 309
    iput-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 310
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 313
    :cond_1
    :goto_0
    return-void
.end method

.method private collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 10
    .param p1, "subs"    # [Lcom/google/re2j/Regexp;
    .param p2, "op"    # Lcom/google/re2j/Regexp$Op;

    .line 320
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 321
    aget-object v0, p1, v1

    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 326
    .local v0, "len":I
    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 327
    .local v5, "sub":Lcom/google/re2j/Regexp;
    iget-object v6, v5, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v6, p2, :cond_1

    iget-object v6, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v6, v6

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    add-int/2addr v0, v6

    .line 326
    .end local v5    # "sub":Lcom/google/re2j/Regexp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_2
    new-array v3, v0, [Lcom/google/re2j/Regexp;

    .line 330
    .local v3, "newsubs":[Lcom/google/re2j/Regexp;
    const/4 v4, 0x0

    .line 331
    .local v4, "i":I
    array-length v5, p1

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 332
    .local v7, "sub":Lcom/google/re2j/Regexp;
    iget-object v8, v7, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v8, p2, :cond_3

    .line 333
    iget-object v8, v7, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v9, v7, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v9, v9

    invoke-static {v8, v1, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v8, v7, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v8, v8

    add-int/2addr v4, v8

    .line 335
    invoke-direct {p0, v7}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    goto :goto_3

    .line 337
    :cond_3
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    aput-object v7, v3, v4

    move v4, v8

    .line 331
    .end local v7    # "sub":Lcom/google/re2j/Regexp;
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 340
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v5

    .line 341
    .local v5, "re":Lcom/google/re2j/Regexp;
    iput-object v3, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 343
    sget-object v6, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    if-ne p2, v6, :cond_5

    .line 344
    iget-object v6, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget v7, v5, Lcom/google/re2j/Regexp;->flags:I

    invoke-direct {p0, v6, v7}, Lcom/google/re2j/Parser;->factor([Lcom/google/re2j/Regexp;I)[Lcom/google/re2j/Regexp;

    move-result-object v6

    iput-object v6, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 345
    iget-object v6, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v6, v6

    if-ne v6, v2, :cond_5

    .line 346
    move-object v2, v5

    .line 347
    .local v2, "old":Lcom/google/re2j/Regexp;
    iget-object v6, v5, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v5, v6, v1

    .line 348
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 351
    .end local v2    # "old":Lcom/google/re2j/Regexp;
    :cond_5
    return-object v5
.end method

.method private concat()Lcom/google/re2j/Regexp;
    .locals 2

    .line 262
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    .line 265
    invoke-direct {p0}, Lcom/google/re2j/Parser;->popToPseudo()[Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 268
    .local v0, "subs":[Lcom/google/re2j/Regexp;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1

    .line 272
    :cond_0
    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1
.end method

.method private static concatRunes([I[I)[I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 1721
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1722
    .local v0, "z":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1723
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    return-object v0
.end method

.method private factor([Lcom/google/re2j/Regexp;I)[Lcom/google/re2j/Regexp;
    .locals 21
    .param p1, "array"    # [Lcom/google/re2j/Regexp;
    .param p2, "flags"    # I

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 367
    return-object v1

    .line 384
    :cond_0
    const/4 v2, 0x0

    .line 385
    .local v2, "s":I
    array-length v4, v1

    .line 386
    .local v4, "lensub":I
    const/4 v5, 0x0

    .line 391
    .local v5, "lenout":I
    const/4 v6, 0x0

    .line 392
    .local v6, "str":[I
    const/4 v7, 0x0

    .line 393
    .local v7, "strlen":I
    const/4 v8, 0x0

    .line 394
    .local v8, "strflags":I
    const/4 v9, 0x0

    .line 395
    .local v9, "start":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-gt v10, v4, :cond_b

    .line 402
    const/4 v13, 0x0

    .line 403
    .local v13, "istr":[I
    const/4 v14, 0x0

    .line 404
    .local v14, "istrlen":I
    const/4 v15, 0x0

    .line 405
    .local v15, "iflags":I
    if-ge v10, v4, :cond_6

    .line 407
    add-int v16, v2, v10

    const/16 v17, 0x1

    aget-object v12, v1, v16

    .line 408
    .local v12, "re":Lcom/google/re2j/Regexp;
    iget-object v3, v12, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    const/16 v18, 0x0

    sget-object v11, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v11, :cond_1

    iget-object v3, v12, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 409
    iget-object v3, v12, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v12, v3, v18

    .line 411
    :cond_1
    iget-object v3, v12, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v11, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v11, :cond_2

    .line 412
    iget-object v13, v12, Lcom/google/re2j/Regexp;->runes:[I

    .line 413
    iget-object v3, v12, Lcom/google/re2j/Regexp;->runes:[I

    array-length v14, v3

    .line 414
    iget v3, v12, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v15, v3, 0x1

    .line 419
    :cond_2
    if-ne v15, v8, :cond_5

    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, "same":I
    :goto_1
    if-ge v3, v7, :cond_3

    if-ge v3, v14, :cond_3

    aget v11, v6, v3

    move/from16 v19, v2

    .end local v2    # "s":I
    .local v19, "s":I
    aget v2, v13, v3

    if-ne v11, v2, :cond_4

    .line 422
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v19

    goto :goto_1

    .line 421
    .end local v19    # "s":I
    .restart local v2    # "s":I
    :cond_3
    move/from16 v19, v2

    .line 424
    .end local v2    # "s":I
    .restart local v19    # "s":I
    :cond_4
    if-lez v3, :cond_7

    .line 427
    move v2, v3

    .line 428
    .end local v7    # "strlen":I
    .local v2, "strlen":I
    move v7, v2

    goto/16 :goto_5

    .line 419
    .end local v3    # "same":I
    .end local v19    # "s":I
    .local v2, "s":I
    .restart local v7    # "strlen":I
    :cond_5
    move/from16 v19, v2

    .end local v2    # "s":I
    .restart local v19    # "s":I
    goto :goto_2

    .line 405
    .end local v12    # "re":Lcom/google/re2j/Regexp;
    .end local v19    # "s":I
    .restart local v2    # "s":I
    :cond_6
    move/from16 v19, v2

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 438
    .end local v2    # "s":I
    .restart local v19    # "s":I
    :cond_7
    :goto_2
    if-ne v10, v9, :cond_8

    goto :goto_4

    .line 440
    :cond_8
    add-int/lit8 v2, v9, 0x1

    if-ne v10, v2, :cond_9

    .line 442
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "lenout":I
    .local v2, "lenout":I
    add-int v3, v19, v9

    aget-object v3, v1, v3

    aput-object v3, v1, v5

    move v5, v2

    goto :goto_4

    .line 445
    .end local v2    # "lenout":I
    .restart local v5    # "lenout":I
    :cond_9
    sget-object v2, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 446
    .local v2, "prefix":Lcom/google/re2j/Regexp;
    iput v8, v2, Lcom/google/re2j/Regexp;->flags:I

    .line 447
    move/from16 v3, v18

    invoke-static {v6, v3, v7}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object v11

    iput-object v11, v2, Lcom/google/re2j/Regexp;->runes:[I

    .line 449
    move v3, v9

    .local v3, "j":I
    :goto_3
    if-ge v3, v10, :cond_a

    .line 450
    add-int v11, v19, v3

    add-int v12, v19, v3

    aget-object v12, v1, v12

    invoke-direct {v0, v12, v7}, Lcom/google/re2j/Parser;->removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;

    move-result-object v12

    aput-object v12, v1, v11

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 453
    .end local v3    # "j":I
    :cond_a
    add-int v3, v19, v9

    add-int v11, v19, v10

    invoke-static {v1, v3, v11}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v3

    sget-object v11, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v3, v11}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v3

    .line 454
    .local v3, "suffix":Lcom/google/re2j/Regexp;
    sget-object v11, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v11}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v11

    .line 455
    .local v11, "re":Lcom/google/re2j/Regexp;
    move-object/from16 v20, v2

    const/4 v12, 0x2

    .end local v2    # "prefix":Lcom/google/re2j/Regexp;
    .local v20, "prefix":Lcom/google/re2j/Regexp;
    new-array v2, v12, [Lcom/google/re2j/Regexp;

    const/16 v18, 0x0

    aput-object v20, v2, v18

    aput-object v3, v2, v17

    iput-object v2, v11, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 456
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "lenout":I
    .local v2, "lenout":I
    aput-object v11, v1, v5

    move v5, v2

    .line 460
    .end local v2    # "lenout":I
    .end local v3    # "suffix":Lcom/google/re2j/Regexp;
    .end local v11    # "re":Lcom/google/re2j/Regexp;
    .end local v20    # "prefix":Lcom/google/re2j/Regexp;
    .restart local v5    # "lenout":I
    :goto_4
    move v2, v10

    .line 461
    .end local v9    # "start":I
    .local v2, "start":I
    move-object v3, v13

    .line 462
    .end local v6    # "str":[I
    .local v3, "str":[I
    move v6, v14

    .line 463
    .end local v7    # "strlen":I
    .local v6, "strlen":I
    move v7, v15

    move v9, v2

    move v8, v7

    move v7, v6

    move-object v6, v3

    .line 395
    .end local v2    # "start":I
    .end local v3    # "str":[I
    .end local v13    # "istr":[I
    .end local v14    # "istrlen":I
    .end local v15    # "iflags":I
    .local v6, "str":[I
    .restart local v7    # "strlen":I
    .restart local v9    # "start":I
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v19

    const/4 v3, 0x2

    goto/16 :goto_0

    .end local v19    # "s":I
    .local v2, "s":I
    :cond_b
    move/from16 v19, v2

    const/16 v17, 0x1

    .line 466
    .end local v2    # "s":I
    .end local v10    # "i":I
    .restart local v19    # "s":I
    move v2, v5

    .line 467
    .end local v4    # "lensub":I
    .local v2, "lensub":I
    const/4 v3, 0x0

    .line 472
    .end local v19    # "s":I
    .local v3, "s":I
    const/4 v4, 0x0

    .line 473
    .end local v9    # "start":I
    .local v4, "start":I
    const/4 v5, 0x0

    .line 474
    const/4 v9, 0x0

    .line 475
    .local v9, "first":Lcom/google/re2j/Regexp;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    if-gt v10, v2, :cond_12

    .line 482
    const/4 v11, 0x0

    .line 483
    .local v11, "ifirst":Lcom/google/re2j/Regexp;
    if-ge v10, v2, :cond_d

    .line 484
    add-int v12, v3, v10

    aget-object v12, v1, v12

    invoke-static {v12}, Lcom/google/re2j/Parser;->leadingRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v11

    .line 485
    if-eqz v9, :cond_d

    .line 486
    invoke-virtual {v9, v11}, Lcom/google/re2j/Regexp;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 487
    invoke-static {v9}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v9, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v13, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    if-ne v12, v13, :cond_d

    iget v12, v9, Lcom/google/re2j/Regexp;->min:I

    iget v13, v9, Lcom/google/re2j/Regexp;->max:I

    if-ne v12, v13, :cond_d

    iget-object v12, v9, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/16 v18, 0x0

    aget-object v12, v12, v18

    .line 490
    invoke-static {v12}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 491
    nop

    .line 475
    .end local v11    # "ifirst":Lcom/google/re2j/Regexp;
    :cond_c
    move/from16 v20, v2

    const/4 v14, 0x2

    const/16 v18, 0x0

    goto/16 :goto_a

    .line 499
    .restart local v11    # "ifirst":Lcom/google/re2j/Regexp;
    :cond_d
    if-ne v10, v4, :cond_e

    move/from16 v20, v2

    const/4 v14, 0x2

    const/16 v18, 0x0

    goto :goto_9

    .line 501
    :cond_e
    add-int/lit8 v12, v4, 0x1

    if-ne v10, v12, :cond_f

    .line 503
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "lenout":I
    .local v12, "lenout":I
    add-int v13, v3, v4

    aget-object v13, v1, v13

    aput-object v13, v1, v5

    move/from16 v20, v2

    move v5, v12

    const/4 v14, 0x2

    const/16 v18, 0x0

    goto :goto_9

    .line 506
    .end local v12    # "lenout":I
    .restart local v5    # "lenout":I
    :cond_f
    move-object v12, v9

    .line 507
    .local v12, "prefix":Lcom/google/re2j/Regexp;
    move v13, v4

    .local v13, "j":I
    :goto_7
    if-ge v13, v10, :cond_11

    .line 508
    if-eq v13, v4, :cond_10

    move/from16 v14, v17

    goto :goto_8

    :cond_10
    const/4 v14, 0x0

    .line 509
    .local v14, "reuse":Z
    :goto_8
    add-int v15, v3, v13

    add-int v19, v3, v13

    move/from16 v20, v2

    .end local v2    # "lensub":I
    .local v20, "lensub":I
    aget-object v2, v1, v19

    invoke-direct {v0, v2, v14}, Lcom/google/re2j/Parser;->removeLeadingRegexp(Lcom/google/re2j/Regexp;Z)Lcom/google/re2j/Regexp;

    move-result-object v2

    aput-object v2, v1, v15

    .line 507
    .end local v14    # "reuse":Z
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v20

    goto :goto_7

    .end local v20    # "lensub":I
    .restart local v2    # "lensub":I
    :cond_11
    move/from16 v20, v2

    .line 512
    .end local v2    # "lensub":I
    .end local v13    # "j":I
    .restart local v20    # "lensub":I
    add-int v2, v3, v4

    add-int v13, v3, v10

    invoke-static {v1, v2, v13}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v2

    sget-object v13, Lcom/google/re2j/Regexp$Op;->ALTERNATE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v2, v13}, Lcom/google/re2j/Parser;->collapse([Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 513
    .local v2, "suffix":Lcom/google/re2j/Regexp;
    sget-object v13, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v13}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v13

    .line 514
    .local v13, "re":Lcom/google/re2j/Regexp;
    const/4 v14, 0x2

    new-array v15, v14, [Lcom/google/re2j/Regexp;

    const/16 v18, 0x0

    aput-object v12, v15, v18

    aput-object v2, v15, v17

    iput-object v15, v13, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 515
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "lenout":I
    .local v15, "lenout":I
    aput-object v13, v1, v5

    move v5, v15

    .line 519
    .end local v2    # "suffix":Lcom/google/re2j/Regexp;
    .end local v12    # "prefix":Lcom/google/re2j/Regexp;
    .end local v13    # "re":Lcom/google/re2j/Regexp;
    .end local v15    # "lenout":I
    .restart local v5    # "lenout":I
    :goto_9
    move v2, v10

    .line 520
    .end local v4    # "start":I
    .local v2, "start":I
    move-object v4, v11

    move-object v9, v4

    move v4, v2

    .line 475
    .end local v2    # "start":I
    .end local v11    # "ifirst":Lcom/google/re2j/Regexp;
    .restart local v4    # "start":I
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v20

    goto/16 :goto_6

    .end local v20    # "lensub":I
    .local v2, "lensub":I
    :cond_12
    move/from16 v20, v2

    .line 523
    .end local v2    # "lensub":I
    .end local v10    # "i":I
    .restart local v20    # "lensub":I
    move v2, v5

    .line 524
    .end local v20    # "lensub":I
    .restart local v2    # "lensub":I
    const/4 v3, 0x0

    .line 527
    const/4 v4, 0x0

    .line 528
    const/4 v5, 0x0

    .line 529
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    if-gt v10, v2, :cond_1b

    .line 536
    if-ge v10, v2, :cond_13

    add-int v11, v3, v10

    aget-object v11, v1, v11

    invoke-static {v11}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 537
    move/from16 v16, v3

    goto/16 :goto_f

    .line 542
    :cond_13
    if-ne v10, v4, :cond_14

    move/from16 v16, v3

    goto/16 :goto_e

    .line 544
    :cond_14
    add-int/lit8 v11, v4, 0x1

    if-ne v10, v11, :cond_15

    .line 545
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "lenout":I
    .local v11, "lenout":I
    add-int v12, v3, v4

    aget-object v12, v1, v12

    aput-object v12, v1, v5

    move/from16 v16, v3

    move v5, v11

    goto/16 :goto_e

    .line 549
    .end local v11    # "lenout":I
    .restart local v5    # "lenout":I
    :cond_15
    move v11, v4

    .line 550
    .local v11, "max":I
    add-int/lit8 v12, v4, 0x1

    .local v12, "j":I
    :goto_c
    if-ge v12, v10, :cond_18

    .line 551
    add-int v13, v3, v11

    aget-object v13, v1, v13

    .local v13, "subMax":Lcom/google/re2j/Regexp;
    add-int v14, v3, v12

    aget-object v14, v1, v14

    .line 552
    .local v14, "subJ":Lcom/google/re2j/Regexp;
    iget-object v15, v13, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v15}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "s":I
    .local v16, "s":I
    iget-object v3, v14, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v3}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v3

    if-lt v15, v3, :cond_16

    iget-object v3, v13, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget-object v15, v14, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v15, :cond_17

    iget-object v3, v13, Lcom/google/re2j/Regexp;->runes:[I

    array-length v3, v3

    iget-object v15, v14, Lcom/google/re2j/Regexp;->runes:[I

    array-length v15, v15

    if-ge v3, v15, :cond_17

    .line 554
    :cond_16
    move v3, v12

    move v11, v3

    .line 550
    .end local v13    # "subMax":Lcom/google/re2j/Regexp;
    .end local v14    # "subJ":Lcom/google/re2j/Regexp;
    :cond_17
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_c

    .end local v16    # "s":I
    .restart local v3    # "s":I
    :cond_18
    move/from16 v16, v3

    .line 558
    .end local v3    # "s":I
    .end local v12    # "j":I
    .restart local v16    # "s":I
    add-int v3, v16, v4

    aget-object v3, v1, v3

    .line 559
    .local v3, "tmp":Lcom/google/re2j/Regexp;
    add-int v12, v16, v4

    add-int v13, v16, v11

    aget-object v13, v1, v13

    aput-object v13, v1, v12

    .line 560
    add-int v12, v16, v11

    aput-object v3, v1, v12

    .line 562
    add-int/lit8 v12, v4, 0x1

    .restart local v12    # "j":I
    :goto_d
    if-ge v12, v10, :cond_19

    .line 563
    add-int v13, v16, v4

    aget-object v13, v1, v13

    add-int v14, v16, v12

    aget-object v14, v1, v14

    invoke-static {v13, v14}, Lcom/google/re2j/Parser;->mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V

    .line 564
    add-int v13, v16, v12

    aget-object v13, v1, v13

    invoke-direct {v0, v13}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 562
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 566
    .end local v12    # "j":I
    :cond_19
    add-int v12, v16, v4

    aget-object v12, v1, v12

    invoke-direct {v0, v12}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    .line 567
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "lenout":I
    .local v12, "lenout":I
    add-int v13, v16, v4

    aget-object v13, v1, v13

    aput-object v13, v1, v5

    move v5, v12

    .line 571
    .end local v3    # "tmp":Lcom/google/re2j/Regexp;
    .end local v11    # "max":I
    .end local v12    # "lenout":I
    .restart local v5    # "lenout":I
    :goto_e
    if-ge v10, v2, :cond_1a

    .line 572
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "lenout":I
    .local v3, "lenout":I
    add-int v11, v16, v10

    aget-object v11, v1, v11

    aput-object v11, v1, v5

    move v5, v3

    .line 574
    .end local v3    # "lenout":I
    .restart local v5    # "lenout":I
    :cond_1a
    add-int/lit8 v3, v10, 0x1

    move v4, v3

    .line 529
    :goto_f
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto/16 :goto_b

    .end local v16    # "s":I
    .local v3, "s":I
    :cond_1b
    move/from16 v16, v3

    .line 577
    .end local v3    # "s":I
    .end local v10    # "i":I
    .restart local v16    # "s":I
    move v2, v5

    .line 578
    const/4 v3, 0x0

    .line 581
    .end local v16    # "s":I
    .restart local v3    # "s":I
    const/4 v4, 0x0

    .line 582
    const/4 v5, 0x0

    .line 583
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_10
    if-ge v10, v2, :cond_1d

    .line 584
    add-int/lit8 v11, v10, 0x1

    if-ge v11, v2, :cond_1c

    add-int v11, v3, v10

    aget-object v11, v1, v11

    iget-object v11, v11, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v12, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v11, v12, :cond_1c

    add-int v11, v3, v10

    add-int/lit8 v11, v11, 0x1

    aget-object v11, v1, v11

    iget-object v11, v11, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v12, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v11, v12, :cond_1c

    .line 587
    goto :goto_11

    .line 589
    :cond_1c
    add-int/lit8 v11, v5, 0x1

    .end local v5    # "lenout":I
    .local v11, "lenout":I
    add-int v12, v3, v10

    aget-object v12, v1, v12

    aput-object v12, v1, v5

    move v5, v11

    .line 583
    .end local v11    # "lenout":I
    .restart local v5    # "lenout":I
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 592
    .end local v10    # "i":I
    :cond_1d
    move v2, v5

    .line 593
    const/4 v3, 0x0

    .line 595
    invoke-static {v1, v3, v2}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v10

    return-object v10
.end method

.method private static isCharClass(Lcom/google/re2j/Regexp;)Z
    .locals 3
    .param p0, "re"    # Lcom/google/re2j/Regexp;

    .line 1181
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static isValidCaptureName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1149
    return v1

    .line 1151
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1152
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1153
    .local v2, "c":C
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lcom/google/re2j/Utils;->isalnum(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1154
    return v1

    .line 1151
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1157
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static leadingRegexp(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 4
    .param p0, "re"    # Lcom/google/re2j/Regexp;

    .line 642
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 643
    return-object v2

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 647
    .local v0, "sub":Lcom/google/re2j/Regexp;
    iget-object v1, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v3, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v1, v3, :cond_1

    .line 648
    return-object v2

    .line 650
    :cond_1
    return-object v0

    .line 652
    .end local v0    # "sub":Lcom/google/re2j/Regexp;
    :cond_2
    return-object p0
.end method

.method private literal(I)V
    .locals 1
    .param p1, "r"    # I

    .line 211
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Parser;->newLiteral(II)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    .line 212
    return-void
.end method

.method private static literalRegexp(Ljava/lang/String;I)Lcom/google/re2j/Regexp;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 685
    new-instance v0, Lcom/google/re2j/Regexp;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v1}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 686
    .local v0, "re":Lcom/google/re2j/Regexp;
    iput p1, v0, Lcom/google/re2j/Regexp;->flags:I

    .line 687
    invoke-static {p0}, Lcom/google/re2j/Utils;->stringToRunes(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/re2j/Regexp;->runes:[I

    .line 688
    return-object v0
.end method

.method private static matchRune(Lcom/google/re2j/Regexp;I)Z
    .locals 5
    .param p0, "re"    # Lcom/google/re2j/Regexp;
    .param p1, "r"    # I

    .line 1189
    sget-object v0, Lcom/google/re2j/Parser$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1204
    return v1

    .line 1202
    :pswitch_0
    return v2

    .line 1200
    :pswitch_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1193
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1194
    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v3, v3, v0

    if-gt v3, p1, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Regexp;->runes:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_1

    .line 1195
    return v2

    .line 1193
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1198
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 1191
    :pswitch_3
    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeConcat(II)Z
    .locals 7
    .param p1, "r"    # I
    .param p2, "flags"    # I

    .line 155
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    .line 156
    .local v0, "n":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 157
    return v2

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/re2j/Regexp;

    .line 160
    .local v1, "re1":Lcom/google/re2j/Regexp;
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 161
    .local v3, "re2":Lcom/google/re2j/Regexp;
    iget-object v4, v1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v5, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v4, v5, :cond_3

    iget-object v4, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v5, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/google/re2j/Regexp;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    iget v6, v3, Lcom/google/re2j/Regexp;->flags:I

    and-int/2addr v6, v5

    if-eq v4, v6, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v4, v3, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v6, v1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-static {v4, v6}, Lcom/google/re2j/Parser;->concatRunes([I[I)[I

    move-result-object v4

    iput-object v4, v3, Lcom/google/re2j/Regexp;->runes:[I

    .line 171
    if-ltz p1, :cond_2

    .line 172
    filled-new-array {p1}, [I

    move-result-object v2

    iput-object v2, v1, Lcom/google/re2j/Regexp;->runes:[I

    .line 173
    iput p2, v1, Lcom/google/re2j/Regexp;->flags:I

    .line 174
    return v5

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 178
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 179
    return v2

    .line 164
    :cond_3
    :goto_0
    return v2
.end method

.method private static mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V
    .locals 4
    .param p0, "dst"    # Lcom/google/re2j/Regexp;
    .param p1, "src"    # Lcom/google/re2j/Regexp;

    .line 1224
    sget-object v0, Lcom/google/re2j/Parser$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v1}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1227
    :pswitch_0
    goto/16 :goto_0

    .line 1230
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->matchRune(Lcom/google/re2j/Regexp;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    sget-object v0, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    goto :goto_0

    .line 1236
    :pswitch_2
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v2, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v2, :cond_0

    .line 1237
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v2}, Lcom/google/re2j/CharClass;-><init>([I)V

    iget-object v2, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v2, v1

    iget v2, p1, Lcom/google/re2j/Regexp;->flags:I

    invoke-virtual {v0, v1, v2}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    goto :goto_0

    .line 1239
    :cond_0
    new-instance v0, Lcom/google/re2j/CharClass;

    iget-object v1, p0, Lcom/google/re2j/Regexp;->runes:[I

    invoke-direct {v0, v1}, Lcom/google/re2j/CharClass;-><init>([I)V

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    invoke-virtual {v0, v1}, Lcom/google/re2j/CharClass;->appendClass([I)Lcom/google/re2j/CharClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 1241
    goto :goto_0

    .line 1244
    :pswitch_3
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/re2j/Regexp;->flags:I

    iget v2, p0, Lcom/google/re2j/Regexp;->flags:I

    if-ne v0, v2, :cond_1

    .line 1245
    goto :goto_0

    .line 1247
    :cond_1
    sget-object v0, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 1248
    new-instance v0, Lcom/google/re2j/CharClass;

    invoke-direct {v0}, Lcom/google/re2j/CharClass;-><init>()V

    iget-object v2, p0, Lcom/google/re2j/Regexp;->runes:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/google/re2j/Regexp;->flags:I

    .line 1250
    invoke-virtual {v0, v2, v3}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    iget-object v2, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v2, v1

    iget v2, p1, Lcom/google/re2j/Regexp;->flags:I

    .line 1251
    invoke-virtual {v0, v1, v2}, Lcom/google/re2j/CharClass;->appendLiteral(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    .line 1252
    invoke-virtual {v0}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/re2j/Regexp;->runes:[I

    .line 1255
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static minFoldRune(I)I
    .locals 2
    .param p0, "r"    # I

    .line 195
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const v0, 0x1044f

    if-le p0, v0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    move v0, p0

    .line 199
    .local v0, "min":I
    move v1, p0

    .line 200
    .local v1, "r0":I
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result p0

    if-eq p0, v1, :cond_2

    .line 201
    if-le v0, p0, :cond_1

    .line 202
    move v0, p0

    goto :goto_0

    .line 205
    :cond_2
    return v0

    .line 196
    .end local v0    # "min":I
    .end local v1    # "r0":I
    :cond_3
    :goto_1
    return p0
.end method

.method private newLiteral(II)Lcom/google/re2j/Regexp;
    .locals 2
    .param p1, "r"    # I
    .param p2, "flags"    # I

    .line 184
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 185
    .local v0, "re":Lcom/google/re2j/Regexp;
    iput p2, v0, Lcom/google/re2j/Regexp;->flags:I

    .line 186
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {p1}, Lcom/google/re2j/Parser;->minFoldRune(I)I

    move-result p1

    .line 189
    :cond_0
    filled-new-array {p1}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/google/re2j/Regexp;->runes:[I

    .line 190
    return-object v0
.end method

.method private newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 3
    .param p1, "op"    # Lcom/google/re2j/Regexp$Op;

    .line 71
    iget-object v0, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    .line 72
    .local v0, "re":Lcom/google/re2j/Regexp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 73
    iget-object v1, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    .line 74
    invoke-virtual {v0}, Lcom/google/re2j/Regexp;->reinit()V

    .line 75
    iput-object p1, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lcom/google/re2j/Regexp;

    invoke-direct {v1, p1}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    move-object v0, v1

    .line 79
    :goto_0
    return-object v0
.end method

.method private op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;
    .locals 2
    .param p1, "op"    # Lcom/google/re2j/Regexp$Op;

    .line 217
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 218
    .local v0, "re":Lcom/google/re2j/Regexp;
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    iput v1, v0, Lcom/google/re2j/Regexp;->flags:I

    .line 219
    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1
.end method

.method static parse(Ljava/lang/String;I)Lcom/google/re2j/Regexp;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 788
    new-instance v0, Lcom/google/re2j/Parser;

    invoke-direct {v0, p0, p1}, Lcom/google/re2j/Parser;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0}, Lcom/google/re2j/Parser;->parseInternal()Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0
.end method

.method private parseClass(Lcom/google/re2j/Parser$StringIterator;)V
    .locals 13
    .param p1, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1612
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1613
    .local v0, "startPos":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1614
    sget-object v2, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 1615
    .local v2, "re":Lcom/google/re2j/Regexp;
    iget v3, p0, Lcom/google/re2j/Parser;->flags:I

    iput v3, v2, Lcom/google/re2j/Regexp;->flags:I

    .line 1616
    new-instance v3, Lcom/google/re2j/CharClass;

    invoke-direct {v3}, Lcom/google/re2j/CharClass;-><init>()V

    .line 1618
    .local v3, "cc":Lcom/google/re2j/CharClass;
    const/4 v4, 0x1

    .line 1619
    .local v4, "sign":I
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x5e

    invoke-virtual {p1, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1620
    const/4 v4, -0x1

    .line 1621
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1625
    iget v5, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_0

    .line 1626
    const/16 v5, 0xa

    invoke-virtual {v3, v5, v5}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 1630
    :cond_0
    const/4 v5, 0x1

    .line 1631
    .local v5, "first":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v6

    const/16 v7, 0x5d

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v6

    if-ne v6, v7, :cond_3

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1685
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1687
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    .line 1688
    if-gez v4, :cond_2

    .line 1689
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->negateClass()Lcom/google/re2j/CharClass;

    .line 1691
    :cond_2
    invoke-virtual {v3}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v1

    iput-object v1, v2, Lcom/google/re2j/Regexp;->runes:[I

    .line 1692
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    .line 1693
    return-void

    .line 1634
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v6

    const-string v8, "invalid character class range"

    const/16 v9, 0x2d

    if-eqz v6, :cond_5

    invoke-virtual {p1, v9}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_5

    if-nez v5, :cond_5

    .line 1635
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v6

    .line 1636
    .local v6, "s":Ljava/lang/String;
    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "-]"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .line 1637
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1638
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v8, v7}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1641
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 1643
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v6

    .line 1646
    .local v6, "beforePos":I
    const-string v10, "[:"

    invoke-virtual {p1, v10}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1647
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parseNamedClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1648
    goto :goto_0

    .line 1650
    :cond_6
    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1654
    :cond_7
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1655
    goto :goto_0

    .line 1659
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/google/re2j/Parser;->parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1660
    goto/16 :goto_0

    .line 1662
    :cond_9
    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1665
    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I

    move-result v10

    .line 1666
    .local v10, "lo":I
    move v11, v10

    .line 1667
    .local v11, "hi":I
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {p1, v9}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1668
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1669
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1, v7}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1671
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    goto :goto_3

    .line 1673
    :cond_a
    invoke-static {p1, v0}, Lcom/google/re2j/Parser;->parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I

    move-result v11

    .line 1674
    if-lt v11, v10, :cond_b

    goto :goto_3

    .line 1675
    :cond_b
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v6}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v8, v7}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1679
    :cond_c
    :goto_3
    iget v7, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/2addr v7, v1

    if-nez v7, :cond_d

    .line 1680
    invoke-virtual {v3, v10, v11}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    goto :goto_4

    .line 1682
    :cond_d
    invoke-virtual {v3, v10, v11}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    .line 1684
    .end local v6    # "beforePos":I
    .end local v10    # "lo":I
    .end local v11    # "hi":I
    :goto_4
    goto/16 :goto_0
.end method

.method private static parseClassChar(Lcom/google/re2j/Parser$StringIterator;I)I
    .locals 3
    .param p0, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .param p1, "wholeClassPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseEscape(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v0

    return v0

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v0

    return v0

    .line 1454
    :cond_1
    new-instance v0, Lcom/google/re2j/PatternSyntaxException;

    const-string v1, "missing closing ]"

    invoke-virtual {p0, p1}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static parseEscape(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 9
    .param p0, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1334
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1335
    .local v0, "startPos":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1336
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1339
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 1341
    .local v2, "c":I
    const/16 v3, 0x37

    const/16 v4, 0x30

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 1343
    invoke-static {v2}, Lcom/google/re2j/Utils;->isalnum(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1348
    return v2

    .line 1379
    .local v5, "r":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1382
    .end local v5    # "r":I
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 1383
    const/16 v1, 0x7b

    if-ne v2, v1, :cond_5

    .line 1388
    const/4 v1, 0x0

    .line 1389
    .local v1, "nhex":I
    const/4 v3, 0x0

    .line 1391
    .local v3, "r":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1394
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 1395
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_1

    .line 1396
    nop

    .line 1408
    if-eqz v1, :cond_0

    .line 1411
    return v3

    .line 1409
    :cond_0
    goto/16 :goto_4

    .line 1398
    :cond_1
    invoke-static {v2}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v4

    .line 1399
    .local v4, "v":I
    if-ltz v4, :cond_3

    .line 1402
    mul-int/lit8 v5, v3, 0x10

    add-int v3, v5, v4

    .line 1403
    const v5, 0x10ffff

    if-gt v3, v5, :cond_2

    .line 1406
    nop

    .end local v4    # "v":I
    add-int/lit8 v1, v1, 0x1

    .line 1407
    goto :goto_0

    .line 1404
    .restart local v4    # "v":I
    :cond_2
    goto/16 :goto_4

    .line 1400
    :cond_3
    goto/16 :goto_4

    .line 1392
    .end local v4    # "v":I
    :cond_4
    goto/16 :goto_4

    .line 1415
    .end local v1    # "nhex":I
    .end local v3    # "r":I
    :cond_5
    invoke-static {v2}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v1

    .line 1416
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1419
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 1420
    invoke-static {v2}, Lcom/google/re2j/Utils;->unhex(I)I

    move-result v3

    .line 1421
    .local v3, "y":I
    if-ltz v1, :cond_c

    if-ltz v3, :cond_6

    .line 1424
    mul-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v3

    return v4

    .line 1422
    :cond_6
    goto :goto_4

    .line 1417
    .end local v3    # "y":I
    :cond_7
    goto :goto_4

    .line 1380
    .end local v1    # "x":I
    .restart local v5    # "r":I
    :cond_8
    goto :goto_4

    .line 1341
    .end local v5    # "r":I
    :sswitch_1
    move v1, v5

    .line 1443
    .restart local v1    # "x":I
    .local v5, "y":I
    const/16 v3, 0xb

    return v3

    .line 1341
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_2
    move v1, v5

    .line 1441
    .restart local v1    # "x":I
    .restart local v5    # "y":I
    const/16 v3, 0x9

    return v3

    .line 1341
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_3
    move v1, v5

    .line 1439
    .restart local v1    # "x":I
    .restart local v5    # "y":I
    const/16 v3, 0xd

    return v3

    .line 1341
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_4
    move v1, v5

    .line 1437
    .restart local v1    # "x":I
    .restart local v5    # "y":I
    const/16 v3, 0xa

    return v3

    .line 1341
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_5
    move v1, v5

    .line 1435
    .restart local v1    # "x":I
    .restart local v5    # "y":I
    const/16 v3, 0xc

    return v3

    .line 1341
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_6
    move v1, v5

    .line 1433
    .restart local v1    # "x":I
    .restart local v5    # "y":I
    const/4 v3, 0x7

    return v3

    .line 1361
    .end local v1    # "x":I
    .end local v5    # "y":I
    :sswitch_7
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-lt v5, v4, :cond_c

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v5

    if-gt v5, v3, :cond_9

    goto :goto_1

    .line 1362
    :cond_9
    goto :goto_4

    .line 1367
    :goto_1
    :sswitch_8
    add-int/lit8 v5, v2, -0x30

    .line 1368
    .local v5, "r":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x3

    if-ge v6, v7, :cond_b

    .line 1369
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v7

    if-lt v7, v4, :cond_b

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v7

    if-le v7, v3, :cond_a

    .line 1370
    goto :goto_3

    .line 1372
    :cond_a
    mul-int/lit8 v7, v5, 0x8

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, -0x30

    .line 1373
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1368
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1375
    .end local v6    # "i":I
    :cond_b
    :goto_3
    return v5

    .line 1445
    .end local v5    # "r":I
    :cond_c
    :goto_4
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v3, "invalid escape sequence"

    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1337
    .end local v2    # "c":I
    :cond_d
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "trailing backslash at end of expression"

    invoke-direct {v1, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_8
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x61 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseInt(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 5
    .param p0, "t"    # Lcom/google/re2j/Parser$StringIterator;

    .line 1163
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1165
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x30

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v1

    move v4, v1

    .local v4, "c":I
    if-lt v1, v3, :cond_0

    const/16 v1, 0x39

    if-gt v4, v1, :cond_0

    .line 1166
    invoke-virtual {p0, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .end local v4    # "c":I
    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 1172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 1173
    const/4 v2, -0x2

    return v2

    .line 1175
    :cond_2
    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1170
    :cond_3
    :goto_1
    const/4 v2, -0x1

    return v2
.end method

.method private parseInternal()Lcom/google/re2j/Regexp;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 792
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    invoke-static {v0, v1}, Lcom/google/re2j/Parser;->literalRegexp(Ljava/lang/String;I)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 798
    :cond_0
    const/4 v0, -0x1

    .local v0, "lastRepeatPos":I
    const/4 v1, -0x1

    .local v1, "min":I
    const/4 v2, -0x1

    .line 799
    .local v2, "max":I
    new-instance v3, Lcom/google/re2j/Parser$StringIterator;

    iget-object v4, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/re2j/Parser$StringIterator;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    move v11, v0

    move v7, v1

    move v8, v2

    .line 800
    .end local v0    # "lastRepeatPos":I
    .end local v1    # "min":I
    .end local v2    # "max":I
    .local v7, "min":I
    .local v8, "max":I
    .local v10, "t":Lcom/google/re2j/Parser$StringIterator;
    .local v11, "lastRepeatPos":I
    :goto_0
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 801
    const/4 v0, -0x1

    .line 803
    .local v0, "repeatPos":I
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->peek()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 805
    move-object v5, p0

    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->literal(I)V

    .line 806
    goto/16 :goto_7

    .line 819
    :sswitch_0
    invoke-direct {p0}, Lcom/google/re2j/Parser;->parseVerticalBar()V

    .line 820
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 821
    move-object v5, p0

    goto/16 :goto_7

    .line 882
    :sswitch_1
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v9

    .line 883
    .end local v0    # "repeatPos":I
    .local v9, "repeatPos":I
    invoke-static {v10}, Lcom/google/re2j/Parser;->parseRepeat(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v0

    .line 884
    .local v0, "minMax":I
    if-gez v0, :cond_1

    .line 886
    invoke-virtual {v10, v9}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 887
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->literal(I)V

    .line 888
    move-object v5, p0

    move v0, v9

    goto/16 :goto_7

    .line 890
    :cond_1
    shr-int/lit8 v7, v0, 0x10

    .line 891
    const v1, 0xffff

    and-int/2addr v1, v0

    int-to-short v8, v1

    .line 892
    sget-object v6, Lcom/google/re2j/Regexp$Op;->REPEAT:Lcom/google/re2j/Regexp$Op;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/re2j/Parser;->repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V

    .line 893
    move v0, v9

    goto/16 :goto_7

    .line 829
    .end local v9    # "repeatPos":I
    .local v0, "repeatPos":I
    :sswitch_2
    move-object v5, p0

    iget v1, v5, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 830
    sget-object v1, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto :goto_1

    .line 832
    :cond_2
    sget-object v1, Lcom/google/re2j/Regexp$Op;->BEGIN_LINE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 834
    :goto_1
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 835
    goto/16 :goto_7

    .line 898
    :sswitch_3
    move-object v5, p0

    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v3

    .line 899
    .local v3, "savedPos":I
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 900
    iget v2, v5, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 901
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v2

    .line 902
    .local v2, "c":I
    sparse-switch v2, :sswitch_data_1

    .line 934
    invoke-virtual {v10, v3}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    goto :goto_3

    .line 931
    :sswitch_4
    sget-object v1, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 932
    goto/16 :goto_7

    .line 907
    :sswitch_5
    sget-object v1, Lcom/google/re2j/Regexp$Op;->WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 908
    goto/16 :goto_7

    .line 918
    :sswitch_6
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "lit":Ljava/lang/String;
    const-string v6, "\\E"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 920
    .local v9, "i":I
    if-ltz v9, :cond_3

    .line 921
    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 923
    :cond_3
    invoke-virtual {v10, v4}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v10, v6}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 925
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 926
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/re2j/Parser;->literal(I)V

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 928
    .end local v1    # "j":I
    :cond_4
    goto/16 :goto_7

    .line 914
    .end local v4    # "lit":Ljava/lang/String;
    .end local v9    # "i":I
    :sswitch_7
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v4, "invalid escape sequence"

    const-string v6, "\\C"

    invoke-direct {v1, v4, v6}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 910
    :sswitch_8
    sget-object v1, Lcom/google/re2j/Regexp$Op;->NO_WORD_BOUNDARY:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 911
    goto/16 :goto_7

    .line 904
    :sswitch_9
    sget-object v1, Lcom/google/re2j/Regexp$Op;->BEGIN_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 905
    goto/16 :goto_7

    .line 939
    .end local v2    # "c":I
    :cond_5
    :goto_3
    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    .line 940
    .local v1, "re":Lcom/google/re2j/Regexp;
    iget v2, v5, Lcom/google/re2j/Parser;->flags:I

    iput v2, v1, Lcom/google/re2j/Regexp;->flags:I

    .line 943
    const-string v2, "\\p"

    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "\\P"

    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 944
    :cond_6
    new-instance v2, Lcom/google/re2j/CharClass;

    invoke-direct {v2}, Lcom/google/re2j/CharClass;-><init>()V

    .line 945
    .local v2, "cc":Lcom/google/re2j/CharClass;
    invoke-direct {p0, v10, v2}, Lcom/google/re2j/Parser;->parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 946
    invoke-virtual {v2}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v4

    iput-object v4, v1, Lcom/google/re2j/Regexp;->runes:[I

    .line 947
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    .line 948
    goto/16 :goto_7

    .line 953
    .end local v2    # "cc":Lcom/google/re2j/CharClass;
    :cond_7
    new-instance v2, Lcom/google/re2j/CharClass;

    invoke-direct {v2}, Lcom/google/re2j/CharClass;-><init>()V

    .line 954
    .restart local v2    # "cc":Lcom/google/re2j/CharClass;
    invoke-direct {p0, v10, v2}, Lcom/google/re2j/Parser;->parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 955
    invoke-virtual {v2}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v4

    iput-object v4, v1, Lcom/google/re2j/Regexp;->runes:[I

    .line 956
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    .line 957
    goto/16 :goto_7

    .line 960
    :cond_8
    invoke-virtual {v10, v3}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 961
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 964
    invoke-static {v10}, Lcom/google/re2j/Parser;->parseEscape(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/re2j/Parser;->literal(I)V

    .line 965
    goto/16 :goto_7

    .line 856
    .end local v1    # "re":Lcom/google/re2j/Regexp;
    .end local v2    # "cc":Lcom/google/re2j/CharClass;
    .end local v3    # "savedPos":I
    :sswitch_a
    move-object v5, p0

    invoke-direct {p0, v10}, Lcom/google/re2j/Parser;->parseClass(Lcom/google/re2j/Parser$StringIterator;)V

    .line 857
    goto/16 :goto_7

    .line 847
    :sswitch_b
    move-object v5, p0

    iget v1, v5, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 848
    sget-object v1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    goto :goto_4

    .line 850
    :cond_9
    sget-object v1, Lcom/google/re2j/Regexp$Op;->ANY_CHAR_NOT_NL:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 852
    :goto_4
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 853
    goto/16 :goto_7

    .line 863
    :sswitch_c
    move-object v5, p0

    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v9

    .line 864
    .end local v0    # "repeatPos":I
    .local v9, "repeatPos":I
    const/4 v0, 0x0

    .line 865
    .local v0, "op":Lcom/google/re2j/Regexp$Op;
    invoke-virtual {v10}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    move-object v6, v0

    goto :goto_5

    .line 873
    :sswitch_d
    sget-object v0, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    move-object v6, v0

    goto :goto_5

    .line 870
    :sswitch_e
    sget-object v0, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    .line 871
    move-object v6, v0

    goto :goto_5

    .line 867
    :sswitch_f
    sget-object v0, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    .line 868
    move-object v6, v0

    .line 876
    .end local v0    # "op":Lcom/google/re2j/Regexp$Op;
    .local v6, "op":Lcom/google/re2j/Regexp$Op;
    :goto_5
    invoke-direct/range {v5 .. v11}, Lcom/google/re2j/Parser;->repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V

    .line 878
    move v0, v9

    goto :goto_7

    .line 824
    .end local v6    # "op":Lcom/google/re2j/Regexp$Op;
    .end local v9    # "repeatPos":I
    .local v0, "repeatPos":I
    :sswitch_10
    move-object v5, p0

    invoke-direct {p0}, Lcom/google/re2j/Parser;->parseRightParen()V

    .line 825
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 826
    goto :goto_7

    .line 809
    :sswitch_11
    move-object v5, p0

    iget v1, v5, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    const-string v1, "(?"

    invoke-virtual {v10, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 811
    invoke-direct {p0, v10}, Lcom/google/re2j/Parser;->parsePerlFlags(Lcom/google/re2j/Parser$StringIterator;)V

    .line 812
    goto :goto_7

    .line 814
    :cond_a
    sget-object v1, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    iget v3, v5, Lcom/google/re2j/Parser;->numCap:I

    add-int/2addr v3, v2

    iput v3, v5, Lcom/google/re2j/Parser;->numCap:I

    iput v3, v1, Lcom/google/re2j/Regexp;->cap:I

    .line 815
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 816
    goto :goto_7

    .line 838
    :sswitch_12
    move-object v5, p0

    iget v1, v5, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 839
    sget-object v1, Lcom/google/re2j/Regexp$Op;->END_TEXT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v1

    iget v3, v1, Lcom/google/re2j/Regexp;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/google/re2j/Regexp;->flags:I

    goto :goto_6

    .line 841
    :cond_b
    sget-object v1, Lcom/google/re2j/Regexp$Op;->END_LINE:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 843
    :goto_6
    invoke-virtual {v10, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 844
    nop

    .line 968
    :goto_7
    move v11, v0

    .line 969
    .end local v0    # "repeatPos":I
    goto/16 :goto_0

    .line 971
    :cond_c
    move-object v5, p0

    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 972
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 973
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 975
    :cond_d
    invoke-direct {p0}, Lcom/google/re2j/Parser;->alternate()Lcom/google/re2j/Regexp;

    .line 977
    iget-object v0, v5, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    .line 978
    .local v0, "n":I
    if-ne v0, v2, :cond_e

    .line 981
    iget-object v2, v5, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v2, v1}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    iget-object v3, v5, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    iput-object v3, v2, Lcom/google/re2j/Regexp;->namedGroups:Ljava/util/Map;

    .line 982
    iget-object v2, v5, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v2, v1}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/re2j/Regexp;

    return-object v1

    .line 979
    :cond_e
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "missing closing )"

    iget-object v3, v5, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_12
        0x28 -> :sswitch_11
        0x29 -> :sswitch_10
        0x2a -> :sswitch_c
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3f -> :sswitch_c
        0x5b -> :sswitch_a
        0x5c -> :sswitch_3
        0x5e -> :sswitch_2
        0x7b -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_9
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x51 -> :sswitch_6
        0x62 -> :sswitch_5
        0x7a -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_f
        0x2b -> :sswitch_e
        0x3f -> :sswitch_d
    .end sparse-switch
.end method

.method private parseNamedClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 7
    .param p1, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .param p2, "cc"    # Lcom/google/re2j/CharClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1496
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "cls":Ljava/lang/String;
    const-string v1, ":]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1498
    .local v1, "i":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 1499
    return v2

    .line 1501
    :cond_0
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1502
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 1503
    sget-object v4, Lcom/google/re2j/CharGroup;->POSIX_GROUPS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/re2j/CharGroup;

    .line 1504
    .local v4, "g":Lcom/google/re2j/CharGroup;
    if-eqz v4, :cond_2

    .line 1507
    iget v5, p0, Lcom/google/re2j/Parser;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v2, v6

    :cond_1
    invoke-virtual {p2, v4, v2}, Lcom/google/re2j/CharClass;->appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;

    .line 1508
    return v6

    .line 1505
    :cond_2
    new-instance v2, Lcom/google/re2j/PatternSyntaxException;

    const-string v5, "invalid character class range"

    invoke-direct {v2, v5, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private parsePerlClassEscape(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 5
    .param p1, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .param p2, "cc"    # Lcom/google/re2j/CharClass;

    .line 1471
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1472
    .local v0, "beforePos":I
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1473
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1474
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 1476
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    .line 1480
    sget-object v1, Lcom/google/re2j/CharGroup;->PERL_GROUPS:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/re2j/CharGroup;

    .line 1481
    .local v1, "g":Lcom/google/re2j/CharGroup;
    if-nez v1, :cond_1

    .line 1482
    return v2

    .line 1484
    :cond_1
    iget v3, p0, Lcom/google/re2j/Parser;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {p2, v1, v2}, Lcom/google/re2j/CharClass;->appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;

    .line 1485
    return v4

    .line 1477
    .end local v1    # "g":Lcom/google/re2j/CharGroup;
    :cond_3
    :goto_0
    return v2
.end method

.method private parsePerlFlags(Lcom/google/re2j/Parser$StringIterator;)V
    .locals 8
    .param p1, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1055
    .local v0, "startPos":I
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "s":Ljava/lang/String;
    const-string v2, "(?P<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1059
    .local v2, "end":I
    const-string v3, "invalid named capture"

    if-ltz v2, :cond_2

    .line 1062
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1063
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 1064
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1065
    invoke-static {v4}, Lcom/google/re2j/Parser;->isValidCaptureName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    sget-object v3, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v3}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v3

    .line 1071
    .local v3, "re":Lcom/google/re2j/Regexp;
    iget v5, p0, Lcom/google/re2j/Parser;->numCap:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/re2j/Parser;->numCap:I

    iput v5, v3, Lcom/google/re2j/Regexp;->cap:I

    .line 1072
    iget-object v5, p0, Lcom/google/re2j/Parser;->namedGroups:Ljava/util/Map;

    iget v6, p0, Lcom/google/re2j/Parser;->numCap:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1075
    iput-object v4, v3, Lcom/google/re2j/Regexp;->name:Ljava/lang/String;

    .line 1076
    return-void

    .line 1073
    :cond_0
    new-instance v5, Lcom/google/re2j/PatternSyntaxException;

    const-string v6, "duplicate capture group name"

    invoke-direct {v5, v6, v4}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 1066
    .end local v3    # "re":Lcom/google/re2j/Regexp;
    :cond_1
    new-instance v5, Lcom/google/re2j/PatternSyntaxException;

    .line 1067
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 1060
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/google/re2j/PatternSyntaxException;

    invoke-direct {v4, v3, v1}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1080
    .end local v2    # "end":I
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1081
    iget v2, p0, Lcom/google/re2j/Parser;->flags:I

    .line 1082
    .local v2, "flags":I
    const/4 v3, 0x1

    .line 1083
    .local v3, "sign":I
    const/4 v4, 0x0

    .line 1085
    .local v4, "sawFlag":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1086
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v5

    .line 1087
    .local v5, "c":I
    sparse-switch v5, :sswitch_data_0

    .line 1089
    goto :goto_3

    .line 1101
    :sswitch_0
    or-int/lit8 v2, v2, 0x8

    .line 1102
    const/4 v4, 0x1

    .line 1103
    goto :goto_1

    .line 1097
    :sswitch_1
    and-int/lit8 v2, v2, -0x11

    .line 1098
    const/4 v4, 0x1

    .line 1099
    goto :goto_1

    .line 1093
    :sswitch_2
    or-int/lit8 v2, v2, 0x1

    .line 1094
    const/4 v4, 0x1

    .line 1095
    goto :goto_1

    .line 1105
    :sswitch_3
    or-int/lit8 v2, v2, 0x20

    .line 1106
    const/4 v4, 0x1

    .line 1107
    goto :goto_1

    .line 1111
    :sswitch_4
    if-ltz v3, :cond_4

    .line 1114
    const/4 v3, -0x1

    .line 1117
    not-int v2, v2

    .line 1118
    const/4 v4, 0x0

    .line 1119
    nop

    .line 1137
    .end local v5    # "c":I
    :goto_1
    goto :goto_0

    .line 1112
    .restart local v5    # "c":I
    :cond_4
    goto :goto_3

    .line 1124
    :sswitch_5
    if-gez v3, :cond_6

    .line 1125
    if-eqz v4, :cond_5

    .line 1128
    not-int v2, v2

    goto :goto_2

    .line 1126
    :cond_5
    goto :goto_3

    .line 1130
    :cond_6
    :goto_2
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_7

    .line 1132
    sget-object v6, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v6}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 1134
    :cond_7
    iput v2, p0, Lcom/google/re2j/Parser;->flags:I

    .line 1135
    return-void

    .line 1139
    .end local v5    # "c":I
    :cond_8
    :goto_3
    new-instance v5, Lcom/google/re2j/PatternSyntaxException;

    const-string v6, "invalid or unsupported Perl syntax"

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_5
        0x2d -> :sswitch_4
        0x3a -> :sswitch_5
        0x55 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6d -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseRepeat(Lcom/google/re2j/Parser$StringIterator;)I
    .locals 7
    .param p0, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 997
    .local v0, "start":I
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_b

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1000
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1001
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseInt(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v3

    .line 1002
    .local v3, "min":I
    if-ne v3, v2, :cond_1

    .line 1003
    return v2

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1006
    return v2

    .line 1009
    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v4

    const/16 v5, 0x7d

    if-nez v4, :cond_3

    .line 1010
    move v4, v3

    .local v4, "max":I
    goto :goto_0

    .line 1012
    .end local v4    # "max":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1014
    return v2

    .line 1016
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1017
    const/4 v4, -0x1

    .restart local v4    # "max":I
    goto :goto_0

    .line 1018
    .end local v4    # "max":I
    :cond_5
    invoke-static {p0}, Lcom/google/re2j/Parser;->parseInt(Lcom/google/re2j/Parser$StringIterator;)I

    move-result v4

    move v6, v4

    .local v6, "max":I
    if-ne v4, v2, :cond_6

    .line 1019
    return v2

    .line 1018
    :cond_6
    move v4, v6

    .line 1022
    .end local v6    # "max":I
    .restart local v4    # "max":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 1025
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1026
    if-ltz v3, :cond_9

    const/16 v1, 0x3e8

    if-gt v3, v1, :cond_9

    const/4 v2, -0x2

    if-eq v4, v2, :cond_9

    if-gt v4, v1, :cond_9

    if-ltz v4, :cond_8

    if-gt v3, v4, :cond_9

    .line 1030
    :cond_8
    shl-int/lit8 v1, v3, 0x10

    const v2, 0xffff

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    return v1

    .line 1028
    :cond_9
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid repeat count"

    invoke-virtual {p0, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_a
    :goto_1
    return v2

    .line 998
    .end local v3    # "min":I
    .end local v4    # "max":I
    :cond_b
    :goto_2
    return v2
.end method

.method private parseRightParen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1302
    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 1303
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/google/re2j/Parser;->alternate()Lcom/google/re2j/Regexp;

    .line 1308
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    .line 1309
    .local v0, "n":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1312
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    move-result-object v1

    .line 1313
    .local v1, "re1":Lcom/google/re2j/Regexp;
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    move-result-object v2

    .line 1314
    .local v2, "re2":Lcom/google/re2j/Regexp;
    iget-object v3, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->LEFT_PAREN:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v4, :cond_2

    .line 1318
    iget v3, v2, Lcom/google/re2j/Regexp;->flags:I

    iput v3, p0, Lcom/google/re2j/Parser;->flags:I

    .line 1319
    iget v3, v2, Lcom/google/re2j/Regexp;->cap:I

    if-nez v3, :cond_1

    .line 1321
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    goto :goto_0

    .line 1323
    :cond_1
    sget-object v3, Lcom/google/re2j/Regexp$Op;->CAPTURE:Lcom/google/re2j/Regexp$Op;

    iput-object v3, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 1324
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/re2j/Regexp;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iput-object v3, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 1325
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    .line 1327
    :goto_0
    return-void

    .line 1315
    :cond_2
    new-instance v3, Lcom/google/re2j/PatternSyntaxException;

    const-string v4, "missing closing )"

    iget-object v5, p0, Lcom/google/re2j/Parser;->wholeRegexp:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1310
    .end local v1    # "re1":Lcom/google/re2j/Regexp;
    .end local v2    # "re2":Lcom/google/re2j/Regexp;
    :cond_3
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "regexp/syntax: internal error"

    const-string v3, "stack underflow"

    invoke-direct {v1, v2, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private parseUnicodeClass(Lcom/google/re2j/Parser$StringIterator;Lcom/google/re2j/CharClass;)Z
    .locals 9
    .param p1, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .param p2, "cc"    # Lcom/google/re2j/CharClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 1544
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pos()I

    move-result v0

    .line 1545
    .local v0, "startPos":I
    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const-string v1, "\\p"

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\P"

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1548
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 1550
    const/4 v3, 0x1

    .line 1551
    .local v3, "sign":I
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v4

    .line 1552
    .local v4, "c":I
    const/16 v5, 0x50

    if-ne v4, v5, :cond_1

    .line 1553
    const/4 v3, -0x1

    .line 1555
    :cond_1
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v5

    const-string v6, "invalid character class range"

    if-eqz v5, :cond_8

    .line 1559
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->pop()I

    move-result v4

    .line 1561
    const/16 v5, 0x7b

    if-eq v4, v5, :cond_2

    .line 1563
    invoke-static {v4}, Lcom/google/re2j/Utils;->runeToString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    goto :goto_0

    .line 1566
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v5

    .line 1567
    .local v5, "rest":Ljava/lang/String;
    const/16 v7, 0x7d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1568
    .local v7, "end":I
    if-ltz v7, :cond_7

    .line 1572
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1573
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {p1, v8}, Lcom/google/re2j/Parser$StringIterator;->skipString(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p1, v1}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    move-object v5, v8

    .line 1581
    .end local v7    # "end":I
    .end local v8    # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x5e

    if-ne v2, v7, :cond_3

    .line 1582
    neg-int v3, v3

    .line 1583
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1586
    :cond_3
    invoke-static {v5}, Lcom/google/re2j/Parser;->unicodeTable(Ljava/lang/String;)Lcom/google/re2j/Parser$Pair;

    move-result-object v2

    .line 1587
    .local v2, "pair":Lcom/google/re2j/Parser$Pair;, "Lcom/google/re2j/Parser$Pair<[[I[[I>;"
    if-eqz v2, :cond_6

    .line 1590
    iget-object v6, v2, Lcom/google/re2j/Parser$Pair;->first:Ljava/lang/Object;

    check-cast v6, [[I

    .line 1591
    .local v6, "tab":[[I
    iget-object v7, v2, Lcom/google/re2j/Parser$Pair;->second:Ljava/lang/Object;

    check-cast v7, [[I

    .line 1594
    .local v7, "fold":[[I
    iget v8, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    goto :goto_1

    .line 1600
    :cond_4
    new-instance v8, Lcom/google/re2j/CharClass;

    invoke-direct {v8}, Lcom/google/re2j/CharClass;-><init>()V

    invoke-virtual {v8, v6}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v8

    .line 1601
    .local v8, "tmp":[I
    invoke-virtual {p2, v8, v3}, Lcom/google/re2j/CharClass;->appendClassWithSign([II)Lcom/google/re2j/CharClass;

    goto :goto_2

    .line 1595
    .end local v8    # "tmp":[I
    :cond_5
    :goto_1
    invoke-virtual {p2, v6, v3}, Lcom/google/re2j/CharClass;->appendTableWithSign([[II)Lcom/google/re2j/CharClass;

    .line 1603
    :goto_2
    return v1

    .line 1588
    .end local v6    # "tab":[[I
    .end local v7    # "fold":[[I
    :cond_6
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1569
    .end local v2    # "pair":Lcom/google/re2j/Parser$Pair;, "Lcom/google/re2j/Parser$Pair<[[I[[I>;"
    .local v5, "rest":Ljava/lang/String;
    .local v7, "end":I
    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1570
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1556
    .end local v5    # "rest":Ljava/lang/String;
    .end local v7    # "end":I
    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/re2j/Parser$StringIterator;->rewindTo(I)V

    .line 1557
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p1}, Lcom/google/re2j/Parser$StringIterator;->rest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1546
    .end local v3    # "sign":I
    .end local v4    # "c":I
    :cond_9
    :goto_3
    return v2
.end method

.method private parseVerticalBar()V
    .locals 1

    .line 1209
    invoke-direct {p0}, Lcom/google/re2j/Parser;->concat()Lcom/google/re2j/Regexp;

    .line 1215
    invoke-direct {p0}, Lcom/google/re2j/Parser;->swapVerticalBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    sget-object v0, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->op(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    .line 1218
    :cond_0
    return-void
.end method

.method private pop()Lcom/google/re2j/Regexp;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    iget-object v1, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v1}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/re2j/Parser$Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/re2j/Regexp;

    return-object v0
.end method

.method private popToPseudo()[Lcom/google/re2j/Regexp;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    .local v0, "n":I
    move v1, v0

    .line 97
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    iget-object v2, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->isPseudo()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v2, v1, v0}, Lcom/google/re2j/Parser$Stack;->subList(II)Ljava/util/List;

    move-result-object v2

    sub-int v3, v0, v1

    new-array v3, v3, [Lcom/google/re2j/Regexp;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/re2j/Regexp;

    .line 101
    .local v2, "r":[Lcom/google/re2j/Regexp;
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v3, v1, v0}, Lcom/google/re2j/Parser$Stack;->removeRange(II)V

    .line 102
    return-object v2
.end method

.method private push(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 7
    .param p1, "re"    # Lcom/google/re2j/Regexp;

    .line 108
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-object v2

    .line 113
    :cond_0
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 114
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 115
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    goto/16 :goto_0

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    const/4 v6, 0x3

    aget v1, v1, v6

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    .line 120
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v3

    .line 121
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v5

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CHAR_CLASS:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-ne v0, v3, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    add-int/2addr v0, v4

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    .line 125
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v4

    .line 126
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_5

    .line 128
    :cond_3
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    iget v1, p0, Lcom/google/re2j/Parser;->flags:I

    or-int/2addr v1, v4

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    return-object v2

    .line 133
    :cond_4
    sget-object v0, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 134
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    aget v0, v0, v5

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 135
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    or-int/2addr v0, v4

    iput v0, p1, Lcom/google/re2j/Regexp;->flags:I

    goto :goto_0

    .line 138
    :cond_5
    const/4 v0, -0x1

    invoke-direct {p0, v0, v5}, Lcom/google/re2j/Parser;->maybeConcat(II)Z

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0, p1}, Lcom/google/re2j/Parser$Stack;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p1
.end method

.method private removeLeadingRegexp(Lcom/google/re2j/Regexp;Z)Lcom/google/re2j/Regexp;
    .locals 4
    .param p1, "re"    # Lcom/google/re2j/Regexp;
    .param p2, "reuse"    # Z

    .line 660
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 661
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 662
    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 664
    :cond_0
    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v1

    iput-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 665
    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 671
    :pswitch_0
    move-object v1, p1

    .line 672
    .local v1, "old":Lcom/google/re2j/Regexp;
    iget-object v2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p1, v2, v0

    .line 673
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    goto :goto_0

    .line 667
    .end local v1    # "old":Lcom/google/re2j/Regexp;
    :pswitch_1
    sget-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 668
    sget-object v0, Lcom/google/re2j/Regexp;->EMPTY_SUBS:[Lcom/google/re2j/Regexp;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 669
    nop

    .line 676
    :goto_0
    return-object p1

    .line 678
    :cond_1
    if-eqz p2, :cond_2

    .line 679
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 681
    :cond_2
    sget-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;
    .locals 4
    .param p1, "re"    # Lcom/google/re2j/Regexp;
    .param p2, "n"    # I

    .line 601
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 604
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/re2j/Parser;->removeLeadingString(Lcom/google/re2j/Regexp;I)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 605
    .local v0, "sub":Lcom/google/re2j/Regexp;
    iget-object v2, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aput-object v0, v2, v1

    .line 606
    iget-object v1, v0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v2, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v1, v2, :cond_0

    .line 607
    invoke-direct {p0, v0}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 608
    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v1, v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 623
    iget-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v3, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v1

    iput-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    goto :goto_0

    .line 617
    :pswitch_0
    move-object v1, p1

    .line 618
    .local v1, "old":Lcom/google/re2j/Regexp;
    iget-object v3, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object p1, v3, v2

    .line 619
    invoke-direct {p0, v1}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 620
    goto :goto_0

    .line 612
    .end local v1    # "old":Lcom/google/re2j/Regexp;
    :pswitch_1
    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object v1, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 613
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 614
    nop

    .line 627
    :cond_0
    :goto_0
    return-object p1

    .line 630
    .end local v0    # "sub":Lcom/google/re2j/Regexp;
    :cond_1
    iget-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->LITERAL:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_2

    .line 631
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    iget-object v1, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v1, v1

    invoke-static {v0, p2, v1}, Lcom/google/re2j/Utils;->subarray([III)[I

    move-result-object v0

    iput-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    .line 632
    iget-object v0, p1, Lcom/google/re2j/Regexp;->runes:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 633
    sget-object v0, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    iput-object v0, p1, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    .line 636
    :cond_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private repeat(Lcom/google/re2j/Regexp$Op;IIILcom/google/re2j/Parser$StringIterator;I)V
    .locals 6
    .param p1, "op"    # Lcom/google/re2j/Regexp$Op;
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "beforePos"    # I
    .param p5, "t"    # Lcom/google/re2j/Parser$StringIterator;
    .param p6, "lastRepeatPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/re2j/PatternSyntaxException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/google/re2j/Parser;->flags:I

    .line 231
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p5}, Lcom/google/re2j/Parser$StringIterator;->more()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {p5, v1}, Lcom/google/re2j/Parser$StringIterator;->lookingAt(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p5, v2}, Lcom/google/re2j/Parser$StringIterator;->skip(I)V

    .line 234
    xor-int/lit8 v0, v0, 0x20

    .line 236
    :cond_0
    const/4 v1, -0x1

    if-ne p6, v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v1, Lcom/google/re2j/PatternSyntaxException;

    const-string v2, "invalid nested repetition operator"

    invoke-virtual {p5, p6}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v1}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v1

    .line 244
    .local v1, "n":I
    const-string v3, "missing argument to repetition operator"

    if-eqz v1, :cond_4

    .line 247
    iget-object v4, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/re2j/Regexp;

    .line 248
    .local v4, "sub":Lcom/google/re2j/Regexp;
    iget-object v5, v4, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v5}, Lcom/google/re2j/Regexp$Op;->isPseudo()Z

    move-result v5

    if-nez v5, :cond_3

    .line 251
    invoke-direct {p0, p1}, Lcom/google/re2j/Parser;->newRegexp(Lcom/google/re2j/Regexp$Op;)Lcom/google/re2j/Regexp;

    move-result-object v3

    .line 252
    .local v3, "re":Lcom/google/re2j/Regexp;
    iput p2, v3, Lcom/google/re2j/Regexp;->min:I

    .line 253
    iput p3, v3, Lcom/google/re2j/Regexp;->max:I

    .line 254
    iput v0, v3, Lcom/google/re2j/Regexp;->flags:I

    .line 255
    new-array v2, v2, [Lcom/google/re2j/Regexp;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iput-object v2, v3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 256
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5, v3}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 249
    .end local v3    # "re":Lcom/google/re2j/Regexp;
    :cond_3
    new-instance v2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v4    # "sub":Lcom/google/re2j/Regexp;
    :cond_4
    new-instance v2, Lcom/google/re2j/PatternSyntaxException;

    invoke-virtual {p5, p4}, Lcom/google/re2j/Parser$StringIterator;->from(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/re2j/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private reuse(Lcom/google/re2j/Regexp;)V
    .locals 3
    .param p1, "re"    # Lcom/google/re2j/Regexp;

    .line 83
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    aput-object v2, v0, v1

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/re2j/Parser;->free:Lcom/google/re2j/Regexp;

    .line 87
    return-void
.end method

.method static subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;
    .locals 4
    .param p0, "array"    # [Lcom/google/re2j/Regexp;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1699
    sub-int v0, p2, p1

    new-array v0, v0, [Lcom/google/re2j/Regexp;

    .line 1700
    .local v0, "r":[Lcom/google/re2j/Regexp;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1701
    sub-int v2, v1, p1

    aget-object v3, p0, v1

    aput-object v3, v0, v2

    .line 1700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private swapVerticalBar()Z
    .locals 7

    .line 1263
    iget-object v0, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    invoke-virtual {v0}, Lcom/google/re2j/Parser$Stack;->size()I

    move-result v0

    .line 1264
    .local v0, "n":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x2

    .line 1265
    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    iget-object v3, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v4, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x1

    .line 1266
    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    invoke-static {v3}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x3

    .line 1267
    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    invoke-static {v3}, Lcom/google/re2j/Parser;->isCharClass(Lcom/google/re2j/Regexp;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1268
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    .line 1269
    .local v2, "re1":Lcom/google/re2j/Regexp;
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 1271
    .local v3, "re3":Lcom/google/re2j/Regexp;
    iget-object v4, v2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v4}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v4

    iget-object v5, v3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v5}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1272
    move-object v4, v3

    .line 1273
    .local v4, "tmp":Lcom/google/re2j/Regexp;
    move-object v3, v2

    .line 1274
    move-object v2, v4

    .line 1275
    iget-object v5, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v6, v0, -0x3

    invoke-virtual {v5, v6, v3}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .end local v4    # "tmp":Lcom/google/re2j/Regexp;
    :cond_0
    invoke-static {v3, v2}, Lcom/google/re2j/Parser;->mergeCharClass(Lcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)V

    .line 1278
    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->reuse(Lcom/google/re2j/Regexp;)V

    .line 1279
    invoke-direct {p0}, Lcom/google/re2j/Parser;->pop()Lcom/google/re2j/Regexp;

    .line 1280
    return v1

    .line 1283
    .end local v2    # "re1":Lcom/google/re2j/Regexp;
    .end local v3    # "re3":Lcom/google/re2j/Regexp;
    :cond_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    .line 1284
    iget-object v3, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/re2j/Regexp;

    .line 1285
    .local v3, "re1":Lcom/google/re2j/Regexp;
    iget-object v4, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v4, v5}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/re2j/Regexp;

    .line 1286
    .local v4, "re2":Lcom/google/re2j/Regexp;
    iget-object v5, v4, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v6, Lcom/google/re2j/Regexp$Op;->VERTICAL_BAR:Lcom/google/re2j/Regexp$Op;

    if-ne v5, v6, :cond_3

    .line 1287
    if-lt v0, v2, :cond_2

    .line 1290
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v0, -0x3

    invoke-virtual {v2, v5}, Lcom/google/re2j/Parser$Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/re2j/Regexp;

    invoke-direct {p0, v2}, Lcom/google/re2j/Parser;->cleanAlt(Lcom/google/re2j/Regexp;)V

    .line 1292
    :cond_2
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v0, -0x2

    invoke-virtual {v2, v5, v3}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v2, p0, Lcom/google/re2j/Parser;->stack:Lcom/google/re2j/Parser$Stack;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5, v4}, Lcom/google/re2j/Parser$Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1294
    return v1

    .line 1297
    .end local v3    # "re1":Lcom/google/re2j/Regexp;
    .end local v4    # "re2":Lcom/google/re2j/Regexp;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private static unicodeTable(Ljava/lang/String;)Lcom/google/re2j/Parser$Pair;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/re2j/Parser$Pair<",
            "[[I[[I>;"
        }
    .end annotation

    .line 1522
    const-string v0, "Any"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    sget-object v0, Lcom/google/re2j/Parser;->ANY_TABLE:[[I

    sget-object v1, Lcom/google/re2j/Parser;->ANY_TABLE:[[I

    invoke-static {v0, v1}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object v0

    return-object v0

    .line 1525
    :cond_0
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CATEGORIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1526
    .local v0, "table":[[I
    if-eqz v0, :cond_1

    .line 1527
    sget-object v1, Lcom/google/re2j/UnicodeTables;->FOLD_CATEGORIES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object v1

    return-object v1

    .line 1529
    :cond_1
    sget-object v1, Lcom/google/re2j/UnicodeTables;->SCRIPTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [[I

    .line 1530
    if-eqz v0, :cond_2

    .line 1531
    sget-object v1, Lcom/google/re2j/UnicodeTables;->FOLD_SCRIPT:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/re2j/Parser$Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/re2j/Parser$Pair;

    move-result-object v1

    return-object v1

    .line 1533
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
