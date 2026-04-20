.class Lcom/google/re2j/Machine;
.super Ljava/lang/Object;
.source "Machine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/Machine$Queue;,
        Lcom/google/re2j/Machine$Thread;
    }
.end annotation


# instance fields
.field private matchcap:[I

.field private matched:Z

.field private ncap:I

.field private pool:[Lcom/google/re2j/Machine$Thread;

.field private poolSize:I

.field private final prog:Lcom/google/re2j/Prog;

.field private final q0:Lcom/google/re2j/Machine$Queue;

.field private final q1:Lcom/google/re2j/Machine$Queue;

.field private re2:Lcom/google/re2j/RE2;


# direct methods
.method constructor <init>(Lcom/google/re2j/RE2;)V
    .locals 2
    .param p1, "re2"    # Lcom/google/re2j/RE2;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 106
    iget-object v0, p1, Lcom/google/re2j/RE2;->prog:Lcom/google/re2j/Prog;

    iput-object v0, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    .line 107
    iput-object p1, p0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    .line 108
    new-instance v0, Lcom/google/re2j/Machine$Queue;

    iget-object v1, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    invoke-virtual {v1}, Lcom/google/re2j/Prog;->numInst()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/re2j/Machine$Queue;-><init>(I)V

    iput-object v0, p0, Lcom/google/re2j/Machine;->q0:Lcom/google/re2j/Machine$Queue;

    .line 109
    new-instance v0, Lcom/google/re2j/Machine$Queue;

    iget-object v1, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    invoke-virtual {v1}, Lcom/google/re2j/Prog;->numInst()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/re2j/Machine$Queue;-><init>(I)V

    iput-object v0, p0, Lcom/google/re2j/Machine;->q1:Lcom/google/re2j/Machine$Queue;

    .line 110
    iget-object v0, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v0, v0, Lcom/google/re2j/Prog;->numCap:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v1, v0, Lcom/google/re2j/Prog;->numCap:I

    :goto_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/re2j/Machine;->matchcap:[I

    .line 111
    return-void
.end method

.method private add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;
    .locals 10
    .param p1, "q"    # Lcom/google/re2j/Machine$Queue;
    .param p2, "pc"    # I
    .param p3, "pos"    # I
    .param p4, "cap"    # [I
    .param p5, "cond"    # I
    .param p6, "t"    # Lcom/google/re2j/Machine$Thread;

    .line 365
    if-nez p2, :cond_0

    .line 366
    return-object p6

    .line 368
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/Machine$Queue;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    return-object p6

    .line 371
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/Machine$Queue;->add(I)I

    move-result v7

    .line 372
    .local v7, "d":I
    iget-object v1, p0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget-object v1, v1, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v8, v1, p2

    .line 373
    .local v8, "inst":Lcom/google/re2j/Inst;
    iget v1, v8, Lcom/google/re2j/Inst;->op:I

    packed-switch v1, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    iget v2, v8, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v2

    .line 394
    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .local v2, "t":Lcom/google/re2j/Machine$Thread;
    goto/16 :goto_2

    .line 412
    .end local v2    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local p6    # "t":Lcom/google/re2j/Machine$Thread;
    :pswitch_1
    move-object/from16 v6, p6

    if-nez v6, :cond_2

    .line 413
    invoke-direct {p0, v8}, Lcom/google/re2j/Machine;->alloc(Lcom/google/re2j/Inst;)Lcom/google/re2j/Machine$Thread;

    move-result-object v1

    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .local v1, "t":Lcom/google/re2j/Machine$Thread;
    goto :goto_0

    .line 415
    .end local v1    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local p6    # "t":Lcom/google/re2j/Machine$Thread;
    :cond_2
    iput-object v8, v6, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    move-object v1, v6

    .line 417
    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local v1    # "t":Lcom/google/re2j/Machine$Thread;
    :goto_0
    iget v2, p0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/google/re2j/Machine$Thread;->cap:[I

    if-eq v2, p4, :cond_3

    .line 418
    iget-object v2, v1, Lcom/google/re2j/Machine$Thread;->cap:[I

    iget v3, p0, Lcom/google/re2j/Machine;->ncap:I

    const/4 v5, 0x0

    invoke-static {p4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    :cond_3
    iget-object v3, p1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aput-object v1, v3, v7

    .line 421
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_2

    .line 378
    .end local v1    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local p6    # "t":Lcom/google/re2j/Machine$Thread;
    :pswitch_2
    move-object/from16 v6, p6

    goto :goto_1

    .line 387
    :pswitch_3
    move-object/from16 v6, p6

    iget v1, v8, Lcom/google/re2j/Inst;->arg:I

    not-int v3, p5

    and-int/2addr v1, v3

    if-nez v1, :cond_4

    .line 388
    iget v2, v8, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v2

    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local v2    # "t":Lcom/google/re2j/Machine$Thread;
    goto :goto_2

    .line 397
    .end local v2    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local p6    # "t":Lcom/google/re2j/Machine$Thread;
    :pswitch_4
    iget v1, v8, Lcom/google/re2j/Inst;->arg:I

    iget v2, p0, Lcom/google/re2j/Machine;->ncap:I

    if-ge v1, v2, :cond_5

    .line 398
    iget v1, v8, Lcom/google/re2j/Inst;->arg:I

    aget v9, p4, v1

    .line 399
    .local v9, "opos":I
    iget v1, v8, Lcom/google/re2j/Inst;->arg:I

    aput p3, p4, v1

    .line 400
    iget v2, v8, Lcom/google/re2j/Inst;->out:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    .line 401
    iget v0, v8, Lcom/google/re2j/Inst;->arg:I

    aput v9, p4, v0

    .line 402
    .end local v9    # "opos":I
    nop

    .line 424
    :cond_4
    :goto_1
    move-object/from16 v2, p6

    goto :goto_2

    .line 403
    :cond_5
    iget v2, v8, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v2

    .line 405
    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local v2    # "t":Lcom/google/re2j/Machine$Thread;
    goto :goto_2

    .line 382
    .end local v2    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local p6    # "t":Lcom/google/re2j/Machine$Thread;
    :pswitch_5
    iget v2, v8, Lcom/google/re2j/Inst;->out:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v6

    .line 383
    .end local p6    # "t":Lcom/google/re2j/Machine$Thread;
    .local v6, "t":Lcom/google/re2j/Machine$Thread;
    iget v2, v8, Lcom/google/re2j/Inst;->arg:I

    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v2

    .line 384
    .end local v6    # "t":Lcom/google/re2j/Machine$Thread;
    .restart local v2    # "t":Lcom/google/re2j/Machine$Thread;
    nop

    .line 424
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private alloc(Lcom/google/re2j/Inst;)Lcom/google/re2j/Machine$Thread;
    .locals 2
    .param p1, "inst"    # Lcom/google/re2j/Inst;

    .line 151
    iget v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-lez v0, :cond_0

    .line 152
    iget v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    .line 153
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    aget-object v0, v0, v1

    .local v0, "t":Lcom/google/re2j/Machine$Thread;
    goto :goto_0

    .line 155
    .end local v0    # "t":Lcom/google/re2j/Machine$Thread;
    :cond_0
    new-instance v0, Lcom/google/re2j/Machine$Thread;

    iget-object v1, p0, Lcom/google/re2j/Machine;->matchcap:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/re2j/Machine$Thread;-><init>(I)V

    .line 157
    .restart local v0    # "t":Lcom/google/re2j/Machine$Thread;
    :goto_0
    iput-object p1, v0, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    .line 158
    return-object v0
.end method

.method private free(Lcom/google/re2j/Machine$Queue;)V
    .locals 1
    .param p1, "queue"    # Lcom/google/re2j/Machine$Queue;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;I)V

    .line 164
    return-void
.end method

.method private free(Lcom/google/re2j/Machine$Queue;I)V
    .locals 6
    .param p1, "queue"    # Lcom/google/re2j/Machine$Queue;
    .param p2, "from"    # I

    .line 167
    iget v0, p1, Lcom/google/re2j/Machine$Queue;->size:I

    sub-int/2addr v0, p2

    .line 168
    .local v0, "numberOfThread":I
    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    add-int/2addr v1, v0

    .line 169
    .local v1, "requiredPoolLength":I
    iget-object v2, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget-object v3, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/re2j/Machine$Thread;

    iput-object v2, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 173
    :cond_0
    move v2, p2

    .local v2, "i":I
    :goto_0
    iget v3, p1, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge v2, v3, :cond_2

    .line 174
    iget-object v3, p1, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aget-object v3, v3, v2

    .line 175
    .local v3, "t":Lcom/google/re2j/Machine$Thread;
    if-eqz v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget v5, p0, Lcom/google/re2j/Machine;->poolSize:I

    aput-object v3, v4, v5

    .line 177
    iget v4, p0, Lcom/google/re2j/Machine;->poolSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/re2j/Machine;->poolSize:I

    .line 173
    .end local v3    # "t":Lcom/google/re2j/Machine$Thread;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/re2j/Machine$Queue;->clear()V

    .line 181
    return-void
.end method

.method private free(Lcom/google/re2j/Machine$Thread;)V
    .locals 2
    .param p1, "t"    # Lcom/google/re2j/Machine$Thread;

    .line 185
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v0, v0

    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-gt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Machine$Thread;

    iput-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    aput-object p1, v0, v1

    .line 189
    iget v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/re2j/Machine;->poolSize:I

    .line 190
    return-void
.end method

.method private initNewCap(I)V
    .locals 3
    .param p1, "ncap"    # I

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    aget-object v1, v1, v0

    .line 135
    .local v1, "t":Lcom/google/re2j/Machine$Thread;
    new-array v2, p1, [I

    iput-object v2, v1, Lcom/google/re2j/Machine$Thread;->cap:[I

    .line 133
    .end local v1    # "t":Lcom/google/re2j/Machine$Thread;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "i":I
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/re2j/Machine;->matchcap:[I

    .line 138
    return-void
.end method

.method private resetCap(I)V
    .locals 4
    .param p1, "ncap"    # I

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/re2j/Machine;->poolSize:I

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/re2j/Machine;->pool:[Lcom/google/re2j/Machine$Thread;

    aget-object v1, v1, v0

    .line 128
    .local v1, "t":Lcom/google/re2j/Machine$Thread;
    iget-object v2, v1, Lcom/google/re2j/Machine$Thread;->cap:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 126
    .end local v1    # "t":Lcom/google/re2j/Machine$Thread;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private step(Lcom/google/re2j/Machine$Queue;Lcom/google/re2j/Machine$Queue;IIIIIZ)V
    .locals 15
    .param p1, "runq"    # Lcom/google/re2j/Machine$Queue;
    .param p2, "nextq"    # Lcom/google/re2j/Machine$Queue;
    .param p3, "pos"    # I
    .param p4, "nextPos"    # I
    .param p5, "c"    # I
    .param p6, "nextCond"    # I
    .param p7, "anchor"    # I
    .param p8, "atEnd"    # Z

    .line 300
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    iget-object v3, p0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget-boolean v3, v3, Lcom/google/re2j/RE2;->longest:Z

    .line 301
    .local v3, "longest":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    iget v5, v0, Lcom/google/re2j/Machine$Queue;->size:I

    if-ge v4, v5, :cond_a

    .line 302
    iget-object v5, v0, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    aget-object v12, v5, v4

    .line 303
    .local v12, "t":Lcom/google/re2j/Machine$Thread;
    if-nez v12, :cond_0

    .line 304
    move/from16 v14, p7

    goto/16 :goto_3

    .line 306
    :cond_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v6, p0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/google/re2j/Machine;->matchcap:[I

    aget v6, v6, v5

    iget-object v7, v12, Lcom/google/re2j/Machine$Thread;->cap:[I

    aget v7, v7, v5

    if-ge v6, v7, :cond_1

    .line 307
    invoke-direct {p0, v12}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Thread;)V

    .line 308
    move/from16 v14, p7

    goto/16 :goto_3

    .line 310
    :cond_1
    iget-object v13, v12, Lcom/google/re2j/Machine$Thread;->inst:Lcom/google/re2j/Inst;

    .line 311
    .local v13, "i":Lcom/google/re2j/Inst;
    const/4 v6, 0x0

    .line 312
    .local v6, "add":Z
    iget v7, v13, Lcom/google/re2j/Inst;->op:I

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_0

    .line 346
    :pswitch_0
    move/from16 v14, p7

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "bad inst"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 342
    :pswitch_1
    const/16 v7, 0xa

    if-eq v2, v7, :cond_2

    move v5, v8

    :cond_2
    move v6, v5

    .line 343
    move/from16 v14, p7

    goto :goto_2

    .line 338
    :pswitch_2
    const/4 v6, 0x1

    .line 339
    move/from16 v14, p7

    move v5, v6

    goto :goto_2

    .line 334
    :pswitch_3
    iget-object v7, v13, Lcom/google/re2j/Inst;->runes:[I

    aget v7, v7, v5

    if-ne v2, v7, :cond_3

    move v5, v8

    :cond_3
    move v6, v5

    .line 335
    move/from16 v14, p7

    goto :goto_2

    .line 330
    :pswitch_4
    invoke-virtual {v13, v2}, Lcom/google/re2j/Inst;->matchRune(I)Z

    move-result v6

    .line 331
    move/from16 v14, p7

    move v5, v6

    goto :goto_2

    .line 314
    :pswitch_5
    const/4 v7, 0x2

    move/from16 v14, p7

    if-ne v14, v7, :cond_4

    if-nez p8, :cond_4

    .line 317
    goto :goto_1

    .line 319
    :cond_4
    iget v7, p0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v7, :cond_6

    if-eqz v3, :cond_5

    iget-boolean v7, p0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/re2j/Machine;->matchcap:[I

    aget v7, v7, v8

    if-ge v7, v1, :cond_6

    .line 320
    :cond_5
    iget-object v7, v12, Lcom/google/re2j/Machine$Thread;->cap:[I

    aput v1, v7, v8

    .line 321
    iget-object v7, v12, Lcom/google/re2j/Machine$Thread;->cap:[I

    iget-object v9, p0, Lcom/google/re2j/Machine;->matchcap:[I

    iget v10, p0, Lcom/google/re2j/Machine;->ncap:I

    invoke-static {v7, v5, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :cond_6
    if-nez v3, :cond_7

    .line 324
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v0, v5}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;I)V

    .line 326
    :cond_7
    iput-boolean v8, p0, Lcom/google/re2j/Machine;->matched:Z

    .line 327
    nop

    .line 348
    :goto_1
    move v5, v6

    .end local v6    # "add":Z
    .local v5, "add":Z
    :goto_2
    if-eqz v5, :cond_8

    .line 349
    iget v8, v13, Lcom/google/re2j/Inst;->out:I

    iget-object v10, v12, Lcom/google/re2j/Machine$Thread;->cap:[I

    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p4

    move/from16 v11, p6

    invoke-direct/range {v6 .. v12}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    move-result-object v12

    .line 351
    :cond_8
    if-eqz v12, :cond_9

    .line 352
    invoke-direct {p0, v12}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Thread;)V

    .line 353
    iget-object v6, v0, Lcom/google/re2j/Machine$Queue;->denseThreads:[Lcom/google/re2j/Machine$Thread;

    const/4 v8, 0x0

    aput-object v8, v6, v4

    .line 301
    .end local v5    # "add":Z
    .end local v12    # "t":Lcom/google/re2j/Machine$Thread;
    .end local v13    # "i":Lcom/google/re2j/Inst;
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v14, p7

    .line 356
    .end local v4    # "j":I
    invoke-virtual {v0}, Lcom/google/re2j/Machine$Queue;->clear()V

    .line 357
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method init(I)V
    .locals 1
    .param p1, "ncap"    # I

    .line 116
    iput p1, p0, Lcom/google/re2j/Machine;->ncap:I

    .line 117
    iget-object v0, p0, Lcom/google/re2j/Machine;->matchcap:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/re2j/Machine;->initNewCap(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/re2j/Machine;->resetCap(I)V

    .line 122
    :goto_0
    return-void
.end method

.method match(Lcom/google/re2j/MachineInput;II)Z
    .locals 19
    .param p1, "in"    # Lcom/google/re2j/MachineInput;
    .param p2, "pos"    # I
    .param p3, "anchor"    # I

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v7, p3

    iget-object v1, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget v10, v1, Lcom/google/re2j/RE2;->cond:I

    .line 198
    .local v10, "startCond":I
    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ne v10, v12, :cond_0

    .line 199
    return v11

    .line 201
    :cond_0
    const/4 v13, 0x1

    if-eq v7, v13, :cond_1

    const/4 v1, 0x2

    if-ne v7, v1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 202
    return v11

    .line 204
    :cond_2
    iput-boolean v11, v0, Lcom/google/re2j/Machine;->matched:Z

    .line 205
    iget-object v1, v0, Lcom/google/re2j/Machine;->matchcap:[I

    iget-object v2, v0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v2, v2, Lcom/google/re2j/Prog;->numCap:I

    invoke-static {v1, v11, v2, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 206
    iget-object v1, v0, Lcom/google/re2j/Machine;->q0:Lcom/google/re2j/Machine$Queue;

    .local v1, "runq":Lcom/google/re2j/Machine$Queue;
    iget-object v2, v0, Lcom/google/re2j/Machine;->q1:Lcom/google/re2j/Machine$Queue;

    .line 207
    .local v2, "nextq":Lcom/google/re2j/Machine$Queue;
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    .line 208
    .local v3, "r":I
    shr-int/lit8 v4, v3, 0x3

    .line 209
    .local v4, "rune":I
    and-int/lit8 v5, v3, 0x7

    .line 210
    .local v5, "width":I
    const/4 v6, -0x1

    .line 211
    .local v6, "rune1":I
    const/4 v8, 0x0

    .line 212
    .local v8, "width1":I
    const/4 v14, -0x8

    if-eq v3, v14, :cond_3

    .line 213
    add-int v14, p2, v5

    invoke-virtual {v9, v14}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    .line 214
    shr-int/lit8 v6, v3, 0x3

    .line 215
    and-int/lit8 v8, v3, 0x7

    .line 218
    :cond_3
    if-nez p2, :cond_4

    .line 219
    invoke-static {v12, v4}, Lcom/google/re2j/Utils;->emptyOpContext(II)I

    move-result v14

    move v15, v14

    move v14, v8

    move-object v8, v2

    move-object v2, v1

    move/from16 v1, p2

    .local v14, "flag":I
    goto :goto_0

    .line 221
    .end local v14    # "flag":I
    :cond_4
    invoke-virtual/range {p1 .. p2}, Lcom/google/re2j/MachineInput;->context(I)I

    move-result v14

    move v15, v14

    move v14, v8

    move-object v8, v2

    move-object v2, v1

    move/from16 v1, p2

    .line 225
    .end local p2    # "pos":I
    .local v1, "pos":I
    .local v2, "runq":Lcom/google/re2j/Machine$Queue;
    .local v8, "nextq":Lcom/google/re2j/Machine$Queue;
    .local v14, "width1":I
    .local v15, "flag":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/re2j/Machine$Queue;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 226
    and-int/lit8 v16, v10, 0x4

    if-eqz v16, :cond_5

    if-eqz v1, :cond_5

    .line 228
    goto :goto_1

    .line 230
    :cond_5
    move/from16 v16, v11

    iget-boolean v11, v0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v11, :cond_6

    .line 232
    goto :goto_1

    .line 234
    :cond_6
    iget-object v11, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget-object v11, v11, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    iget v11, v11, Lcom/google/re2j/RE2;->prefixRune:I

    if-eq v6, v11, :cond_9

    invoke-virtual {v9}, Lcom/google/re2j/MachineInput;->canCheckPrefix()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 236
    iget-object v11, v0, Lcom/google/re2j/Machine;->re2:Lcom/google/re2j/RE2;

    invoke-virtual {v9, v11, v1}, Lcom/google/re2j/MachineInput;->index(Lcom/google/re2j/RE2;I)I

    move-result v11

    .line 237
    .local v11, "advance":I
    if-gez v11, :cond_7

    .line 238
    nop

    .line 280
    .end local v11    # "advance":I
    :goto_1
    move v11, v3

    move v3, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_7

    .line 240
    .restart local v11    # "advance":I
    :cond_7
    add-int/2addr v1, v11

    .line 241
    invoke-virtual {v9, v1}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    .line 242
    shr-int/lit8 v4, v3, 0x3

    .line 243
    and-int/lit8 v5, v3, 0x7

    .line 244
    add-int v13, v1, v5

    invoke-virtual {v9, v13}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v3

    .line 245
    shr-int/lit8 v6, v3, 0x3

    .line 246
    and-int/lit8 v14, v3, 0x7

    move v11, v3

    move v13, v4

    move/from16 v17, v6

    move/from16 v18, v14

    move v3, v1

    move v14, v5

    goto :goto_2

    .line 225
    .end local v11    # "advance":I
    :cond_8
    move/from16 v16, v11

    .line 249
    :cond_9
    move v11, v3

    move v13, v4

    move/from16 v17, v6

    move/from16 v18, v14

    move v3, v1

    move v14, v5

    .end local v1    # "pos":I
    .end local v4    # "rune":I
    .end local v5    # "width":I
    .end local v6    # "rune1":I
    .local v3, "pos":I
    .local v11, "r":I
    .local v13, "rune":I
    .local v14, "width":I
    .local v17, "rune1":I
    .local v18, "width1":I
    :goto_2
    iget-boolean v1, v0, Lcom/google/re2j/Machine;->matched:Z

    if-nez v1, :cond_d

    if-eqz v3, :cond_b

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v2

    move v5, v15

    goto :goto_4

    .line 252
    :cond_b
    :goto_3
    iget v1, v0, Lcom/google/re2j/Machine;->ncap:I

    if-lez v1, :cond_c

    .line 253
    iget-object v1, v0, Lcom/google/re2j/Machine;->matchcap:[I

    aput v3, v1, v16

    .line 255
    :cond_c
    iget-object v1, v0, Lcom/google/re2j/Machine;->prog:Lcom/google/re2j/Prog;

    iget v1, v1, Lcom/google/re2j/Prog;->start:I

    iget-object v4, v0, Lcom/google/re2j/Machine;->matchcap:[I

    const/4 v6, 0x0

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    move v5, v15

    .end local v2    # "runq":Lcom/google/re2j/Machine$Queue;
    .end local v15    # "flag":I
    .local v1, "runq":Lcom/google/re2j/Machine$Queue;
    .local v5, "flag":I
    invoke-direct/range {v0 .. v6}, Lcom/google/re2j/Machine;->add(Lcom/google/re2j/Machine$Queue;II[IILcom/google/re2j/Machine$Thread;)Lcom/google/re2j/Machine$Thread;

    goto :goto_4

    .line 249
    .end local v1    # "runq":Lcom/google/re2j/Machine$Queue;
    .end local v5    # "flag":I
    .restart local v2    # "runq":Lcom/google/re2j/Machine$Queue;
    .restart local v15    # "flag":I
    :cond_d
    move-object v1, v2

    move v5, v15

    .line 257
    .end local v2    # "runq":Lcom/google/re2j/Machine$Queue;
    .end local v15    # "flag":I
    .restart local v1    # "runq":Lcom/google/re2j/Machine$Queue;
    .restart local v5    # "flag":I
    :goto_4
    add-int v4, v3, v14

    .line 258
    .local v4, "nextPos":I
    invoke-virtual {v9, v4}, Lcom/google/re2j/MachineInput;->context(I)I

    move-result v6

    .line 259
    .end local v5    # "flag":I
    .local v6, "flag":I
    invoke-virtual {v9}, Lcom/google/re2j/MachineInput;->endPos()I

    move-result v0

    move-object v2, v8

    if-ne v3, v0, :cond_e

    const/4 v8, 0x1

    goto :goto_5

    :cond_e
    move/from16 v8, v16

    .end local v8    # "nextq":Lcom/google/re2j/Machine$Queue;
    .local v2, "nextq":Lcom/google/re2j/Machine$Queue;
    :goto_5
    move-object/from16 v0, p0

    move v5, v13

    .end local v13    # "rune":I
    .local v5, "rune":I
    invoke-direct/range {v0 .. v8}, Lcom/google/re2j/Machine;->step(Lcom/google/re2j/Machine$Queue;Lcom/google/re2j/Machine$Queue;IIIIIZ)V

    .line 260
    if-nez v14, :cond_f

    .line 261
    goto :goto_6

    .line 263
    :cond_f
    iget v7, v0, Lcom/google/re2j/Machine;->ncap:I

    if-nez v7, :cond_10

    iget-boolean v7, v0, Lcom/google/re2j/Machine;->matched:Z

    if-eqz v7, :cond_10

    .line 266
    nop

    .line 280
    .end local v4    # "nextPos":I
    :goto_6
    move v4, v5

    move v15, v6

    move v5, v14

    move/from16 v6, v17

    move/from16 v14, v18

    .end local v17    # "rune1":I
    .end local v18    # "width1":I
    .local v4, "rune":I
    .local v5, "width":I
    .local v6, "rune1":I
    .local v14, "width1":I
    .restart local v15    # "flag":I
    :goto_7
    invoke-direct {v0, v2}, Lcom/google/re2j/Machine;->free(Lcom/google/re2j/Machine$Queue;)V

    .line 281
    iget-boolean v7, v0, Lcom/google/re2j/Machine;->matched:Z

    return v7

    .line 268
    .end local v15    # "flag":I
    .local v4, "nextPos":I
    .local v5, "rune":I
    .local v6, "flag":I
    .local v14, "width":I
    .restart local v17    # "rune1":I
    .restart local v18    # "width1":I
    :cond_10
    add-int/2addr v3, v14

    .line 269
    move/from16 v5, v17

    .line 270
    move/from16 v7, v18

    .line 271
    .end local v14    # "width":I
    .local v7, "width":I
    if-eq v5, v12, :cond_11

    .line 272
    add-int v8, v3, v7

    invoke-virtual {v9, v8}, Lcom/google/re2j/MachineInput;->step(I)I

    move-result v8

    .line 273
    .end local v11    # "r":I
    .local v8, "r":I
    shr-int/lit8 v11, v8, 0x3

    .line 274
    .end local v17    # "rune1":I
    .local v11, "rune1":I
    and-int/lit8 v13, v8, 0x7

    move/from16 v17, v11

    move v14, v13

    .end local v18    # "width1":I
    .local v13, "width1":I
    goto :goto_8

    .line 271
    .end local v8    # "r":I
    .end local v13    # "width1":I
    .local v11, "r":I
    .restart local v17    # "rune1":I
    .restart local v18    # "width1":I
    :cond_11
    move v8, v11

    move/from16 v14, v18

    .line 276
    .end local v11    # "r":I
    .end local v18    # "width1":I
    .restart local v8    # "r":I
    .local v14, "width1":I
    :goto_8
    move-object v11, v1

    .line 277
    .local v11, "tmpq":Lcom/google/re2j/Machine$Queue;
    move-object v1, v2

    .line 278
    nop

    .line 279
    .end local v2    # "nextq":Lcom/google/re2j/Machine$Queue;
    .end local v4    # "nextPos":I
    .local v11, "nextq":Lcom/google/re2j/Machine$Queue;
    move v1, v3

    move v4, v5

    move v15, v6

    move v5, v7

    move v3, v8

    move-object v8, v11

    move/from16 v11, v16

    move/from16 v6, v17

    const/4 v13, 0x1

    move/from16 v7, p3

    goto/16 :goto_0
.end method

.method submatches()[I
    .locals 2

    .line 141
    iget v0, p0, Lcom/google/re2j/Machine;->ncap:I

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Machine;->matchcap:[I

    iget v1, p0, Lcom/google/re2j/Machine;->ncap:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
