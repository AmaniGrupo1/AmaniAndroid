.class Lcom/google/re2j/Simplify;
.super Ljava/lang/Object;
.source "Simplify.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 10
    .param p0, "re"    # Lcom/google/re2j/Regexp;

    .line 25
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    sget-object v1, Lcom/google/re2j/Simplify$1;->$SwitchMap$com$google$re2j$Regexp$Op:[I

    iget-object v2, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    invoke-virtual {v2}, Lcom/google/re2j/Regexp$Op;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 136
    return-object p0

    .line 61
    :pswitch_0
    iget v1, p0, Lcom/google/re2j/Regexp;->min:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/re2j/Regexp;->max:I

    if-nez v1, :cond_1

    .line 62
    new-instance v0, Lcom/google/re2j/Regexp;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v1}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    return-object v0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    .line 69
    .local v1, "sub":Lcom/google/re2j/Regexp;
    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    .line 71
    iget v2, p0, Lcom/google/re2j/Regexp;->min:I

    if-nez v2, :cond_2

    .line 72
    sget-object v2, Lcom/google/re2j/Regexp$Op;->STAR:Lcom/google/re2j/Regexp$Op;

    iget v3, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v2, v3, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 76
    :cond_2
    iget v2, p0, Lcom/google/re2j/Regexp;->min:I

    if-ne v2, v5, :cond_3

    .line 77
    sget-object v2, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    iget v3, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v2, v3, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    return-object v0

    .line 81
    :cond_3
    new-instance v2, Lcom/google/re2j/Regexp;

    sget-object v3, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v2, v3}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 82
    .local v2, "nre":Lcom/google/re2j/Regexp;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/re2j/Regexp;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_4

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v4    # "i":I
    :cond_4
    sget-object v4, Lcom/google/re2j/Regexp$Op;->PLUS:Lcom/google/re2j/Regexp$Op;

    iget v5, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v4, v5, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/re2j/Regexp;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Regexp;

    iput-object v0, v2, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 88
    return-object v2

    .line 94
    .end local v2    # "nre":Lcom/google/re2j/Regexp;
    .end local v3    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/re2j/Regexp;>;"
    :cond_5
    iget v3, p0, Lcom/google/re2j/Regexp;->min:I

    if-ne v3, v5, :cond_6

    iget v3, p0, Lcom/google/re2j/Regexp;->max:I

    if-ne v3, v5, :cond_6

    .line 95
    return-object v1

    .line 103
    :cond_6
    const/4 v3, 0x0

    .line 104
    .local v3, "prefixSubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/re2j/Regexp;>;"
    iget v4, p0, Lcom/google/re2j/Regexp;->min:I

    if-lez v4, :cond_7

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 106
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    if-ge v4, v6, :cond_7

    .line 107
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    .end local v4    # "i":I
    :cond_7
    iget v4, p0, Lcom/google/re2j/Regexp;->max:I

    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    if-le v4, v6, :cond_a

    .line 113
    sget-object v4, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    iget v6, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v4, v6, v1, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v4

    .line 114
    .local v4, "suffix":Lcom/google/re2j/Regexp;
    iget v6, p0, Lcom/google/re2j/Regexp;->min:I

    add-int/2addr v6, v5

    .local v6, "i":I
    :goto_2
    iget v7, p0, Lcom/google/re2j/Regexp;->max:I

    if-ge v6, v7, :cond_8

    .line 115
    new-instance v7, Lcom/google/re2j/Regexp;

    sget-object v8, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v7, v8}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 116
    .local v7, "nre2":Lcom/google/re2j/Regexp;
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/re2j/Regexp;

    aput-object v1, v8, v2

    aput-object v4, v8, v5

    iput-object v8, v7, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 117
    sget-object v8, Lcom/google/re2j/Regexp$Op;->QUEST:Lcom/google/re2j/Regexp$Op;

    iget v9, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v8, v9, v7, v0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v4

    .line 114
    .end local v7    # "nre2":Lcom/google/re2j/Regexp;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v6    # "i":I
    :cond_8
    if-nez v3, :cond_9

    .line 120
    return-object v4

    .line 122
    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "suffix":Lcom/google/re2j/Regexp;
    :cond_a
    if-eqz v3, :cond_b

    .line 125
    new-instance v0, Lcom/google/re2j/Regexp;

    sget-object v2, Lcom/google/re2j/Regexp$Op;->CONCAT:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v2}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 126
    .local v0, "prefix":Lcom/google/re2j/Regexp;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/re2j/Regexp;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/re2j/Regexp;

    iput-object v2, v0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 127
    return-object v0

    .line 132
    .end local v0    # "prefix":Lcom/google/re2j/Regexp;
    :cond_b
    new-instance v0, Lcom/google/re2j/Regexp;

    sget-object v2, Lcom/google/re2j/Regexp$Op;->NO_MATCH:Lcom/google/re2j/Regexp$Op;

    invoke-direct {v0, v2}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    return-object v0

    .line 54
    .end local v1    # "sub":Lcom/google/re2j/Regexp;
    .end local v3    # "prefixSubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/re2j/Regexp;>;"
    :pswitch_1
    iget-object v0, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v0

    .line 55
    .local v0, "sub":Lcom/google/re2j/Regexp;
    iget-object v1, p0, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    iget v2, p0, Lcom/google/re2j/Regexp;->flags:I

    invoke-static {v1, v2, v0, p0}, Lcom/google/re2j/Simplify;->simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v1

    return-object v1

    .line 34
    .end local v0    # "sub":Lcom/google/re2j/Regexp;
    :pswitch_2
    move-object v1, p0

    .line 35
    .local v1, "nre":Lcom/google/re2j/Regexp;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v4, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v4, v4

    if-ge v3, v4, :cond_e

    .line 36
    iget-object v4, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v4, v4, v3

    .line 37
    .local v4, "sub":Lcom/google/re2j/Regexp;
    invoke-static {v4}, Lcom/google/re2j/Simplify;->simplify(Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;

    move-result-object v5

    .line 38
    .local v5, "nsub":Lcom/google/re2j/Regexp;
    if-ne v1, p0, :cond_c

    if-eq v5, v4, :cond_c

    .line 40
    new-instance v6, Lcom/google/re2j/Regexp;

    invoke-direct {v6, p0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp;)V

    .line 41
    .end local v1    # "nre":Lcom/google/re2j/Regexp;
    .local v6, "nre":Lcom/google/re2j/Regexp;
    iput-object v0, v6, Lcom/google/re2j/Regexp;->runes:[I

    .line 42
    iget-object v1, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    iget-object v7, p0, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    array-length v7, v7

    invoke-static {v1, v2, v7}, Lcom/google/re2j/Parser;->subarray([Lcom/google/re2j/Regexp;II)[Lcom/google/re2j/Regexp;

    move-result-object v1

    iput-object v1, v6, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    move-object v1, v6

    .line 44
    .end local v6    # "nre":Lcom/google/re2j/Regexp;
    .restart local v1    # "nre":Lcom/google/re2j/Regexp;
    :cond_c
    if-eq v1, p0, :cond_d

    .line 45
    iget-object v6, v1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aput-object v5, v6, v3

    .line 35
    .end local v4    # "sub":Lcom/google/re2j/Regexp;
    .end local v5    # "nsub":Lcom/google/re2j/Regexp;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 48
    .end local v3    # "i":I
    :cond_e
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static simplify1(Lcom/google/re2j/Regexp$Op;ILcom/google/re2j/Regexp;Lcom/google/re2j/Regexp;)Lcom/google/re2j/Regexp;
    .locals 3
    .param p0, "op"    # Lcom/google/re2j/Regexp$Op;
    .param p1, "flags"    # I
    .param p2, "sub"    # Lcom/google/re2j/Regexp;
    .param p3, "re"    # Lcom/google/re2j/Regexp;

    .line 157
    iget-object v0, p2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    sget-object v1, Lcom/google/re2j/Regexp$Op;->EMPTY_MATCH:Lcom/google/re2j/Regexp$Op;

    if-ne v0, v1, :cond_0

    .line 158
    return-object p2

    .line 161
    :cond_0
    iget-object v0, p2, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p1, 0x20

    iget v1, p2, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-ne v0, v1, :cond_1

    .line 162
    return-object p2

    .line 164
    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/google/re2j/Regexp;->op:Lcom/google/re2j/Regexp$Op;

    if-ne v1, p0, :cond_2

    iget v1, p3, Lcom/google/re2j/Regexp;->flags:I

    and-int/lit8 v1, v1, 0x20

    and-int/lit8 v2, p1, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p3, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    aget-object v1, v1, v0

    if-ne p2, v1, :cond_2

    .line 168
    return-object p3

    .line 171
    :cond_2
    new-instance v1, Lcom/google/re2j/Regexp;

    invoke-direct {v1, p0}, Lcom/google/re2j/Regexp;-><init>(Lcom/google/re2j/Regexp$Op;)V

    .line 172
    .end local p3    # "re":Lcom/google/re2j/Regexp;
    .local v1, "re":Lcom/google/re2j/Regexp;
    iput p1, v1, Lcom/google/re2j/Regexp;->flags:I

    .line 173
    const/4 p3, 0x1

    new-array p3, p3, [Lcom/google/re2j/Regexp;

    aput-object p2, p3, v0

    iput-object p3, v1, Lcom/google/re2j/Regexp;->subs:[Lcom/google/re2j/Regexp;

    .line 174
    return-object v1
.end method
