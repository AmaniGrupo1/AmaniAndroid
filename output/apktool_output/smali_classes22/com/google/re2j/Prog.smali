.class final Lcom/google/re2j/Prog;
.super Ljava/lang/Object;
.source "Prog.java"


# instance fields
.field inst:[Lcom/google/re2j/Inst;

.field instSize:I

.field numCap:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/re2j/Inst;

    iput-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/Prog;->instSize:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/re2j/Prog;->numCap:I

    .line 26
    return-void
.end method


# virtual methods
.method addInst(I)V
    .locals 3
    .param p1, "op"    # I

    .line 42
    iget v0, p0, Lcom/google/re2j/Prog;->instSize:I

    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Inst;

    iput-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    iget v1, p0, Lcom/google/re2j/Prog;->instSize:I

    new-instance v2, Lcom/google/re2j/Inst;

    invoke-direct {v2, p1}, Lcom/google/re2j/Inst;-><init>(I)V

    aput-object v2, v0, v1

    .line 46
    iget v0, p0, Lcom/google/re2j/Prog;->instSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/re2j/Prog;->instSize:I

    .line 47
    return-void
.end method

.method append(II)I
    .locals 3
    .param p1, "l1"    # I
    .param p2, "l2"    # I

    .line 139
    if-nez p1, :cond_0

    .line 140
    return p2

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    return p1

    .line 145
    :cond_1
    move v0, p1

    .line 147
    .local v0, "last":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/Prog;->next(I)I

    move-result v1

    .line 148
    .local v1, "next":I
    if-nez v1, :cond_3

    .line 149
    nop

    .line 153
    .end local v1    # "next":I
    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 154
    .local v1, "i":Lcom/google/re2j/Inst;
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    .line 155
    iput p2, v1, Lcom/google/re2j/Inst;->out:I

    goto :goto_1

    .line 157
    :cond_2
    iput p2, v1, Lcom/google/re2j/Inst;->arg:I

    .line 159
    :goto_1
    return p1

    .line 151
    .local v1, "next":I
    :cond_3
    move v0, v1

    .line 152
    .end local v1    # "next":I
    goto :goto_0
.end method

.method getInst(I)Lcom/google/re2j/Inst;
    .locals 1
    .param p1, "pc"    # I

    .line 31
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v0, p1

    return-object v0
.end method

.method next(I)I
    .locals 2
    .param p1, "l"    # I

    .line 118
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    .line 119
    .local v0, "i":Lcom/google/re2j/Inst;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 120
    iget v1, v0, Lcom/google/re2j/Inst;->out:I

    return v1

    .line 122
    :cond_0
    iget v1, v0, Lcom/google/re2j/Inst;->arg:I

    return v1
.end method

.method numInst()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/re2j/Prog;->instSize:I

    return v0
.end method

.method patch(II)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "val"    # I

    .line 126
    nop

    :goto_0
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    .line 128
    .local v0, "i":Lcom/google/re2j/Inst;
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 129
    iget p1, v0, Lcom/google/re2j/Inst;->out:I

    .line 130
    iput p2, v0, Lcom/google/re2j/Inst;->out:I

    goto :goto_1

    .line 132
    :cond_0
    iget p1, v0, Lcom/google/re2j/Inst;->arg:I

    .line 133
    iput p2, v0, Lcom/google/re2j/Inst;->arg:I

    .line 135
    .end local v0    # "i":Lcom/google/re2j/Inst;
    :goto_1
    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method prefix(Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "prefix"    # Ljava/lang/StringBuilder;

    .line 64
    iget v0, p0, Lcom/google/re2j/Prog;->start:I

    invoke-virtual {p0, v0}, Lcom/google/re2j/Prog;->skipNop(I)Lcom/google/re2j/Inst;

    move-result-object v0

    .line 67
    .local v0, "i":Lcom/google/re2j/Inst;
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    invoke-static {v1}, Lcom/google/re2j/Inst;->isRuneOp(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    array-length v1, v1

    if-eq v1, v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    invoke-static {v1}, Lcom/google/re2j/Inst;->isRuneOp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    array-length v1, v1

    if-ne v1, v4, :cond_1

    iget v1, v0, Lcom/google/re2j/Inst;->arg:I

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 74
    iget v1, v0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {p0, v1}, Lcom/google/re2j/Prog;->skipNop(I)Lcom/google/re2j/Inst;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    if-ne v1, v2, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 68
    :cond_3
    :goto_1
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    if-ne v1, v2, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method

.method skipNop(I)Lcom/google/re2j/Inst;
    .locals 3
    .param p1, "pc"    # I

    .line 52
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v0, p1

    .line 53
    .local v0, "i":Lcom/google/re2j/Inst;
    :goto_0
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    return-object v0

    .line 54
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v1, p1

    .line 55
    iget p1, v0, Lcom/google/re2j/Inst;->out:I

    goto :goto_0
.end method

.method startCond()I
    .locals 4

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "flag":I
    iget v1, p0, Lcom/google/re2j/Prog;->start:I

    .line 86
    .local v1, "pc":I
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v2, v2, v1

    .line 87
    .local v2, "i":Lcom/google/re2j/Inst;
    iget v3, v2, Lcom/google/re2j/Inst;->op:I

    packed-switch v3, :pswitch_data_0

    .line 97
    :pswitch_0
    goto :goto_2

    .line 92
    :pswitch_1
    const/4 v3, -0x1

    return v3

    .line 89
    :pswitch_2
    iget v3, v2, Lcom/google/re2j/Inst;->arg:I

    or-int/2addr v0, v3

    .line 90
    goto :goto_1

    .line 95
    :pswitch_3
    nop

    .line 99
    :goto_1
    iget v1, v2, Lcom/google/re2j/Inst;->out:I

    .line 100
    .end local v2    # "i":Lcom/google/re2j/Inst;
    goto :goto_0

    .line 101
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "pc":I
    :goto_0
    iget v2, p0, Lcom/google/re2j/Prog;->instSize:I

    if-ge v1, v2, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 169
    .local v2, "len":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    iget v3, p0, Lcom/google/re2j/Prog;->start:I

    if-ne v1, v3, :cond_0

    .line 171
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v4, "        "

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .end local v2    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "pc":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
