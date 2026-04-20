.class public final Lcom/google/re2j/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"


# instance fields
.field private anchorFlag:I

.field private appendPos:I

.field private final groupCount:I

.field private final groups:[I

.field private hasGroups:Z

.field private hasMatch:Z

.field private inputLength:I

.field private matcherInput:Lcom/google/re2j/MatcherInput;

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

.field private final pattern:Lcom/google/re2j/Pattern;


# direct methods
.method private constructor <init>(Lcom/google/re2j/Pattern;)V
    .locals 2
    .param p1, "pattern"    # Lcom/google/re2j/Pattern;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    .line 75
    invoke-virtual {p1}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object v0

    .line 76
    .local v0, "re2":Lcom/google/re2j/RE2;
    invoke-virtual {v0}, Lcom/google/re2j/RE2;->numberOfCapturingGroups()I

    move-result v1

    iput v1, p0, Lcom/google/re2j/Matcher;->groupCount:I

    .line 77
    iget v1, p0, Lcom/google/re2j/Matcher;->groupCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/re2j/Matcher;->groups:[I

    .line 78
    iget-object v1, v0, Lcom/google/re2j/RE2;->namedGroups:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    .line 79
    return-void

    .line 72
    .end local v0    # "re2":Lcom/google/re2j/RE2;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/google/re2j/Pattern;Lcom/google/re2j/MatcherInput;)V
    .locals 0
    .param p1, "pattern"    # Lcom/google/re2j/Pattern;
    .param p2, "input"    # Lcom/google/re2j/MatcherInput;

    .line 88
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;)V

    .line 89
    invoke-direct {p0, p2}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/google/re2j/Pattern;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pattern"    # Lcom/google/re2j/Pattern;
    .param p2, "input"    # Ljava/lang/CharSequence;

    .line 83
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;-><init>(Lcom/google/re2j/Pattern;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/google/re2j/Matcher;->reset(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    .line 85
    return-void
.end method

.method private appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "last":I
    const/4 v1, 0x0

    .line 465
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 466
    .local v2, "m":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_c

    .line 467
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 468
    if-ge v0, v1, :cond_0

    .line 469
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 472
    move v0, v1

    .line 473
    goto/16 :goto_4

    .line 475
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_b

    .line 476
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 477
    .local v3, "c":I
    const/16 v4, 0x30

    if-gt v4, v3, :cond_7

    const/16 v5, 0x39

    if-gt v3, v5, :cond_7

    .line 478
    add-int/lit8 v6, v3, -0x30

    .line 479
    .local v6, "n":I
    if-ge v0, v1, :cond_2

    .line 480
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_2
    add-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 483
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 484
    if-lt v3, v4, :cond_4

    if-gt v3, v5, :cond_4

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v7, v3

    sub-int/2addr v7, v4

    iget v8, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-le v7, v8, :cond_3

    .line 485
    goto :goto_2

    .line 487
    :cond_3
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v7, v3

    add-int/lit8 v6, v7, -0x30

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    :cond_4
    :goto_2
    iget v4, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-gt v6, v4, :cond_6

    .line 492
    invoke-virtual {p0, v6}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "group":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 494
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_5
    move v0, v1

    .line 497
    add-int/lit8 v1, v1, -0x1

    .line 498
    goto :goto_4

    .line 490
    .end local v4    # "group":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "n > number of groups: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    .end local v6    # "n":I
    :cond_7
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_b

    .line 500
    if-ge v0, v1, :cond_8

    .line 501
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 504
    add-int/lit8 v4, v1, 0x1

    .line 505
    .local v4, "j":I
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7d

    if-ge v4, v5, :cond_9

    .line 506
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_9

    .line 507
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    if-eq v5, v7, :cond_9

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 510
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_a

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_a

    .line 513
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "groupName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/re2j/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    add-int/lit8 v0, v4, 0x1

    goto :goto_4

    .line 511
    .end local v5    # "groupName":Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "named capture group is missing trailing \'}\'"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 466
    .end local v3    # "c":I
    .end local v4    # "j":I
    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 519
    :cond_c
    if-ge v0, v2, :cond_d

    .line 520
    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 522
    :cond_d
    return-void
.end method

.method private genMatch(II)Z
    .locals 8
    .param p1, "startByte"    # I
    .param p2, "anchor"    # I

    .line 351
    iget-object v0, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    iget v4, p0, Lcom/google/re2j/Matcher;->inputLength:I

    iget-object v6, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v7, 0x1

    move v3, p1

    move v5, p2

    .end local p1    # "startByte":I
    .end local p2    # "anchor":I
    .local v3, "startByte":I
    .local v5, "anchor":I
    invoke-virtual/range {v1 .. v7}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result p1

    .line 352
    .local p1, "ok":Z
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 353
    return p2

    .line 355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    .line 356
    iput-boolean p2, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    .line 357
    iput v5, p0, Lcom/google/re2j/Matcher;->anchorFlag:I

    .line 359
    return v0
.end method

.method private loadGroup(I)V
    .locals 9
    .param p1, "group"    # I

    .line 261
    if-ltz p1, :cond_5

    iget v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    if-gt p1, v0, :cond_5

    .line 264
    iget-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    if-eqz v0, :cond_4

    .line 267
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, v1

    .line 279
    .local v0, "end":I
    iget v2, p0, Lcom/google/re2j/Matcher;->inputLength:I

    if-le v0, v2, :cond_1

    .line 280
    iget v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    move v5, v0

    goto :goto_0

    .line 279
    :cond_1
    move v5, v0

    .line 283
    .end local v0    # "end":I
    .local v5, "end":I
    :goto_0
    iget-object v0, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    .line 284
    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->re2()Lcom/google/re2j/RE2;

    move-result-object v2

    iget-object v3, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v4, 0x0

    aget v4, v0, v4

    iget v6, p0, Lcom/google/re2j/Matcher;->anchorFlag:I

    iget-object v7, p0, Lcom/google/re2j/Matcher;->groups:[I

    iget v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/re2j/RE2;->match(Lcom/google/re2j/MatcherInput;III[II)Z

    move-result v0

    .line 287
    .local v0, "ok":Z
    if-eqz v0, :cond_2

    .line 290
    iput-boolean v1, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    .line 291
    return-void

    .line 288
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "inconsistency in matching group data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    .end local v0    # "ok":Z
    .end local v5    # "end":I
    :cond_3
    :goto_1
    return-void

    .line 265
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "perhaps no match attempted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group index out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 386
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x24

    if-gez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 387
    return-object p0

    .line 389
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 391
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 392
    .local v4, "c":C
    if-eq v4, v0, :cond_1

    if-ne v4, v2, :cond_2

    .line 393
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;
    .param p2, "all"    # Z

    .line 574
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    .line 575
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 576
    .local v0, "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/Matcher;

    .line 578
    if-nez p2, :cond_0

    .line 579
    nop

    .line 582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;
    .locals 2
    .param p1, "input"    # Lcom/google/re2j/MatcherInput;

    .line 131
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    .line 135
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    .line 136
    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Lcom/google/re2j/Matcher;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p2}, Lcom/google/re2j/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/Matcher;

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 426
    return-object p0
.end method

.method public appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/re2j/Matcher;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->start()I

    move-result v0

    .line 453
    .local v0, "s":I
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->end()I

    move-result v1

    .line 454
    .local v1, "e":I
    iget v2, p0, Lcom/google/re2j/Matcher;->appendPos:I

    if-ge v2, v0, :cond_0

    .line 455
    iget v2, p0, Lcom/google/re2j/Matcher;->appendPos:I

    invoke-virtual {p0, v2, v0}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    iput v1, p0, Lcom/google/re2j/Matcher;->appendPos:I

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/google/re2j/Matcher;->appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 459
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 532
    iget v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    iget v1, p0, Lcom/google/re2j/Matcher;->inputLength:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    return-object p1
.end method

.method public appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 544
    iget v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    iget v1, p0, Lcom/google/re2j/Matcher;->inputLength:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    return-object p1
.end method

.method public end()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    .line 192
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->loadGroup(I)V

    .line 193
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public end(Ljava/lang/String;)I
    .locals 4
    .param p1, "group"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, "g":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/re2j/Matcher;->end(I)I

    move-result v1

    return v1

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public find()Z
    .locals 5

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "start":I
    iget-boolean v1, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/re2j/Matcher;->groups:[I

    const/4 v3, 0x1

    aget v0, v1, v3

    .line 324
    iget-object v1, p0, Lcom/google/re2j/Matcher;->groups:[I

    aget v1, v1, v2

    iget-object v4, p0, Lcom/google/re2j/Matcher;->groups:[I

    aget v3, v4, v3

    if-ne v1, v3, :cond_0

    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 328
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v1

    return v1
.end method

.method public find(I)Z
    .locals 3
    .param p1, "start"    # I

    .line 340
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    if-gt p1, v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->reset()Lcom/google/re2j/Matcher;

    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start index out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 3
    .param p1, "group"    # I

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->start(I)I

    move-result v0

    .line 228
    .local v0, "start":I
    invoke-virtual {p0, p1}, Lcom/google/re2j/Matcher;->end(I)I

    move-result v1

    .line 229
    .local v1, "end":I
    if-gez v0, :cond_0

    if-gez v1, :cond_0

    .line 231
    const/4 v2, 0x0

    return-object v2

    .line 233
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/Matcher;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 244
    .local v0, "g":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/re2j/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public groupCount()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/google/re2j/Matcher;->groupCount:I

    return v0
.end method

.method inputLength()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    return v0
.end method

.method public lookingAt()Z
    .locals 2

    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0
.end method

.method public matches()Z
    .locals 2

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/re2j/Matcher;->genMatch(II)Z

    move-result v0

    return v0
.end method

.method public pattern()Lcom/google/re2j/Pattern;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/re2j/Matcher;->pattern:Lcom/google/re2j/Pattern;

    return-object v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "replacement"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->replace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "replacement"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Matcher;->replace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/google/re2j/Matcher;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v0}, Lcom/google/re2j/MatcherInput;->length()I

    move-result v0

    iput v0, p0, Lcom/google/re2j/Matcher;->inputLength:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Matcher;->appendPos:I

    .line 105
    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasMatch:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/re2j/Matcher;->hasGroups:Z

    .line 107
    return-object p0
.end method

.method public reset(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 117
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf16(Ljava/lang/CharSequence;)Lcom/google/re2j/MatcherInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset([B)Lcom/google/re2j/Matcher;
    .locals 1
    .param p1, "bytes"    # [B

    .line 127
    invoke-static {p1}, Lcom/google/re2j/MatcherInput;->utf8([B)Lcom/google/re2j/MatcherInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/re2j/Matcher;->reset(Lcom/google/re2j/MatcherInput;)Lcom/google/re2j/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/re2j/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/google/re2j/Matcher;->loadGroup(I)V

    .line 166
    iget-object v0, p0, Lcom/google/re2j/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public start(Ljava/lang/String;)I
    .locals 4
    .param p1, "group"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/google/re2j/Matcher;->namedGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 178
    .local v0, "g":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/re2j/Matcher;->start(I)I

    move-result v1

    return v1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 365
    iget-object v0, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    invoke-virtual {v0}, Lcom/google/re2j/MatcherInput;->getEncoding()Lcom/google/re2j/MatcherInput$Encoding;

    move-result-object v0

    sget-object v1, Lcom/google/re2j/MatcherInput$Encoding;->UTF_8:Lcom/google/re2j/MatcherInput$Encoding;

    .line 370
    iget-object v2, p0, Lcom/google/re2j/Matcher;->matcherInput:Lcom/google/re2j/MatcherInput;

    .line 365
    if-ne v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/re2j/MatcherInput;->asBytes()[B

    move-result-object v1

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {v2}, Lcom/google/re2j/MatcherInput;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
