.class Lcom/google/re2j/CharClass;
.super Ljava/lang/Object;
.source "CharClass.java"


# instance fields
.field private len:I

.field private r:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/CharClass;->len:I

    .line 34
    return-void
.end method

.method constructor <init>([I)V
    .locals 1
    .param p1, "r"    # [I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/re2j/CharClass;->r:[I

    .line 27
    array-length v0, p1

    iput v0, p0, Lcom/google/re2j/CharClass;->len:I

    .line 28
    return-void
.end method

.method static charClassToString([II)Ljava/lang/String;
    .locals 5
    .param p0, "r"    # [I
    .param p1, "len"    # I

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 337
    if-lez v1, :cond_0

    .line 338
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    aget v2, p0, v1

    .local v2, "lo":I
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    .line 343
    .local v3, "hi":I
    const-string v4, "0x"

    if-ne v2, v3, :cond_1

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v4, "-0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .end local v2    # "lo":I
    .end local v3    # "hi":I
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static cmp([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "pivotFrom"    # I
    .param p3, "pivotTo"    # I

    .line 293
    aget v0, p0, p1

    sub-int/2addr v0, p2

    .line 294
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    sub-int v1, p3, v1

    :goto_0
    return v1
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "newLen"    # I

    .line 38
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 42
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 43
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    mul-int/lit8 v0, v0, 0x2

    move p1, v0

    .line 45
    :cond_0
    new-array v0, p1, [I

    .line 46
    .local v0, "r2":[I
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    .line 49
    .end local v0    # "r2":[I
    :cond_1
    return-void
.end method

.method private static qsortIntPair([III)V
    .locals 8
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 300
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x2

    .line 301
    .local v0, "pivotIndex":I
    aget v1, p0, v0

    .local v1, "pivotFrom":I
    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    .line 302
    .local v2, "pivotTo":I
    move v3, p1

    .local v3, "i":I
    move v4, p2

    .line 304
    .local v4, "j":I
    :cond_0
    :goto_0
    if-gt v3, v4, :cond_4

    .line 305
    :goto_1
    if-ge v3, p2, :cond_1

    invoke-static {p0, v3, v1, v2}, Lcom/google/re2j/CharClass;->cmp([IIII)I

    move-result v5

    if-gez v5, :cond_1

    .line 306
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 308
    :cond_1
    :goto_2
    if-le v4, p1, :cond_2

    invoke-static {p0, v4, v1, v2}, Lcom/google/re2j/CharClass;->cmp([IIII)I

    move-result v5

    if-lez v5, :cond_2

    .line 309
    add-int/lit8 v4, v4, -0x2

    goto :goto_2

    .line 311
    :cond_2
    if-gt v3, v4, :cond_0

    .line 312
    if-eq v3, v4, :cond_3

    .line 313
    aget v5, p0, v3

    .line 314
    .local v5, "temp":I
    aget v6, p0, v4

    aput v6, p0, v3

    .line 315
    aput v5, p0, v4

    .line 316
    add-int/lit8 v6, v3, 0x1

    aget v5, p0, v6

    .line 317
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    aget v7, p0, v7

    aput v7, p0, v6

    .line 318
    add-int/lit8 v6, v4, 0x1

    aput v5, p0, v6

    .line 320
    .end local v5    # "temp":I
    :cond_3
    add-int/lit8 v3, v3, 0x2

    .line 321
    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 324
    :cond_4
    if-ge p1, v4, :cond_5

    .line 325
    invoke-static {p0, p1, v4}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    .line 327
    :cond_5
    if-ge v3, p2, :cond_6

    .line 328
    invoke-static {p0, v3, p2}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    .line 330
    :cond_6
    return-void
.end method


# virtual methods
.method appendClass([I)Lcom/google/re2j/CharClass;
    .locals 3
    .param p1, "x"    # [I

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 168
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 167
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method appendClassWithSign([II)Lcom/google/re2j/CharClass;
    .locals 1
    .param p1, "x"    # [I
    .param p2, "sign"    # I

    .line 276
    if-gez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendNegatedClass([I)Lcom/google/re2j/CharClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendClass([I)Lcom/google/re2j/CharClass;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method appendFoldedClass([I)Lcom/google/re2j/CharClass;
    .locals 3
    .param p1, "x"    # [I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    .line 176
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method appendFoldedRange(II)Lcom/google/re2j/CharClass;
    .locals 2
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 135
    const v0, 0x1044f

    const/16 v1, 0x41

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    if-lt p2, v1, :cond_6

    if-le p1, v0, :cond_1

    goto :goto_2

    .line 143
    :cond_1
    if-ge p1, v1, :cond_2

    .line 145
    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 146
    const/16 p1, 0x41

    .line 148
    :cond_2
    if-le p2, v0, :cond_3

    .line 150
    const v0, 0x10450

    invoke-virtual {p0, v0, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 151
    const p2, 0x1044f

    .line 155
    :cond_3
    move v0, p1

    .local v0, "c":I
    :goto_0
    if-gt v0, p2, :cond_5

    .line 156
    invoke-virtual {p0, v0, v0}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 157
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v1

    .local v1, "f":I
    :goto_1
    if-eq v1, v0, :cond_4

    .line 158
    invoke-virtual {p0, v1, v1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 157
    invoke-static {v1}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v1

    goto :goto_1

    .line 155
    .end local v1    # "f":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "c":I
    :cond_5
    return-object p0

    .line 141
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    return-object v0
.end method

.method appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;
    .locals 2
    .param p1, "g"    # Lcom/google/re2j/CharGroup;
    .param p2, "foldCase"    # Z

    .line 282
    iget-object v0, p1, Lcom/google/re2j/CharGroup;->cls:[I

    .line 283
    .local v0, "cls":[I
    if-eqz p2, :cond_0

    .line 284
    new-instance v1, Lcom/google/re2j/CharClass;

    invoke-direct {v1}, Lcom/google/re2j/CharClass;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/re2j/CharClass;->appendFoldedClass([I)Lcom/google/re2j/CharClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    .line 286
    :cond_0
    iget v1, p1, Lcom/google/re2j/CharGroup;->sign:I

    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/CharClass;->appendClassWithSign([II)Lcom/google/re2j/CharClass;

    move-result-object v1

    return-object v1
.end method

.method appendLiteral(II)Lcom/google/re2j/CharClass;
    .locals 1
    .param p1, "x"    # I
    .param p2, "flags"    # I

    .line 98
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method appendNegatedClass([I)Lcom/google/re2j/CharClass;
    .locals 5
    .param p1, "x"    # [I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "nextLo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 187
    aget v2, p1, v1

    .line 188
    .local v2, "lo":I
    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    .line 189
    .local v3, "hi":I
    add-int/lit8 v4, v2, -0x1

    if-gt v0, v4, :cond_0

    .line 190
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 192
    :cond_0
    add-int/lit8 v0, v3, 0x1

    .line 186
    .end local v2    # "lo":I
    .end local v3    # "hi":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_1
    const v1, 0x10ffff

    if-gt v0, v1, :cond_2

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 197
    :cond_2
    return-object p0
.end method

.method appendNegatedTable([[I)Lcom/google/re2j/CharClass;
    .locals 10
    .param p1, "table"    # [[I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "nextLo":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 221
    .local v4, "triple":[I
    aget v5, v4, v2

    .local v5, "lo":I
    const/4 v6, 0x1

    aget v7, v4, v6

    .local v7, "hi":I
    const/4 v8, 0x2

    aget v8, v4, v8

    .line 222
    .local v8, "stride":I
    if-ne v8, v6, :cond_1

    .line 223
    add-int/lit8 v6, v5, -0x1

    if-gt v0, v6, :cond_0

    .line 224
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 226
    :cond_0
    add-int/lit8 v0, v7, 0x1

    .line 227
    goto :goto_2

    .line 229
    :cond_1
    move v6, v5

    .local v6, "c":I
    :goto_1
    if-gt v6, v7, :cond_3

    .line 230
    add-int/lit8 v9, v6, -0x1

    if-gt v0, v9, :cond_2

    .line 231
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 233
    :cond_2
    add-int/lit8 v0, v6, 0x1

    .line 229
    add-int/2addr v6, v8

    goto :goto_1

    .line 220
    .end local v4    # "triple":[I
    .end local v5    # "lo":I
    .end local v6    # "c":I
    .end local v7    # "hi":I
    .end local v8    # "stride":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    :cond_4
    const v1, 0x10ffff

    if-gt v0, v1, :cond_5

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 239
    :cond_5
    return-object p0
.end method

.method appendRange(II)Lcom/google/re2j/CharClass;
    .locals 5
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 107
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    if-lez v0, :cond_3

    .line 108
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 109
    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    if-lt v1, v0, :cond_2

    .line 110
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    sub-int/2addr v2, v0

    aget v1, v1, v2

    .line 111
    .local v1, "rlo":I
    iget-object v2, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v3, p0, Lcom/google/re2j/CharClass;->len:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    .line 112
    .local v2, "rhi":I
    add-int/lit8 v3, v2, 0x1

    if-gt p1, v3, :cond_2

    add-int/lit8 v3, p2, 0x1

    if-gt v1, v3, :cond_2

    .line 113
    if-ge p1, v1, :cond_0

    .line 114
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v4, p0, Lcom/google/re2j/CharClass;->len:I

    sub-int/2addr v4, v0

    aput p1, v3, v4

    .line 116
    :cond_0
    if-le p2, v2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v4, p0, Lcom/google/re2j/CharClass;->len:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aput p2, v3, v4

    .line 119
    :cond_1
    return-object p0

    .line 108
    .end local v1    # "rlo":I
    .end local v2    # "rhi":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_3
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/re2j/CharClass;->ensureCapacity(I)V

    .line 126
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/re2j/CharClass;->len:I

    aput p1, v0, v1

    .line 127
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/re2j/CharClass;->len:I

    aput p2, v0, v1

    .line 128
    return-object p0
.end method

.method appendTable([[I)Lcom/google/re2j/CharClass;
    .locals 8
    .param p1, "table"    # [[I

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 204
    .local v3, "triple":[I
    aget v4, v3, v1

    .local v4, "lo":I
    const/4 v5, 0x1

    aget v6, v3, v5

    .local v6, "hi":I
    const/4 v7, 0x2

    aget v7, v3, v7

    .line 205
    .local v7, "stride":I
    if-ne v7, v5, :cond_0

    .line 206
    invoke-virtual {p0, v4, v6}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 207
    goto :goto_2

    .line 209
    :cond_0
    move v5, v4

    .local v5, "c":I
    :goto_1
    if-gt v5, v6, :cond_1

    .line 210
    invoke-virtual {p0, v5, v5}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 209
    add-int/2addr v5, v7

    goto :goto_1

    .line 203
    .end local v3    # "triple":[I
    .end local v4    # "lo":I
    .end local v5    # "c":I
    .end local v6    # "hi":I
    .end local v7    # "stride":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_2
    return-object p0
.end method

.method appendTableWithSign([[II)Lcom/google/re2j/CharClass;
    .locals 1
    .param p1, "table"    # [[I
    .param p2, "sign"    # I

    .line 245
    if-gez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendNegatedTable([[I)Lcom/google/re2j/CharClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method cleanClass()Lcom/google/re2j/CharClass;
    .locals 6

    .line 67
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 68
    return-object p0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    .line 75
    const/4 v0, 0x2

    .line 76
    .local v0, "w":I
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    if-ge v1, v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/google/re2j/CharClass;->r:[I

    aget v2, v2, v1

    .line 78
    .local v2, "lo":I
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    .line 79
    .local v3, "hi":I
    iget-object v4, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 87
    iget-object v5, p0, Lcom/google/re2j/CharClass;->r:[I

    .line 79
    if-gt v2, v4, :cond_1

    .line 81
    add-int/lit8 v4, v0, -0x1

    aget v4, v5, v4

    if-le v3, v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v5, v0, -0x1

    aput v3, v4, v5

    goto :goto_1

    .line 87
    :cond_1
    aput v2, v5, v0

    .line 88
    iget-object v4, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v5, v0, 0x1

    aput v3, v4, v5

    .line 89
    add-int/lit8 v0, v0, 0x2

    .line 76
    .end local v2    # "lo":I
    .end local v3    # "hi":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_3
    iput v0, p0, Lcom/google/re2j/CharClass;->len:I

    .line 93
    return-object p0
.end method

.method negateClass()Lcom/google/re2j/CharClass;
    .locals 8

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "nextLo":I
    const/4 v1, 0x0

    .line 252
    .local v1, "w":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/google/re2j/CharClass;->len:I

    if-ge v2, v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    aget v3, v3, v2

    .local v3, "lo":I
    iget-object v4, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 254
    .local v4, "hi":I
    add-int/lit8 v5, v3, -0x1

    if-gt v0, v5, :cond_0

    .line 255
    iget-object v5, p0, Lcom/google/re2j/CharClass;->r:[I

    aput v0, v5, v1

    .line 256
    iget-object v5, p0, Lcom/google/re2j/CharClass;->r:[I

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v3, -0x1

    aput v7, v5, v6

    .line 257
    add-int/lit8 v1, v1, 0x2

    .line 259
    :cond_0
    add-int/lit8 v0, v4, 0x1

    .line 252
    .end local v3    # "lo":I
    .end local v4    # "hi":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_1
    iput v1, p0, Lcom/google/re2j/CharClass;->len:I

    .line 263
    const v2, 0x10ffff

    if-gt v0, v2, :cond_2

    .line 266
    iget v3, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/re2j/CharClass;->ensureCapacity(I)V

    .line 267
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v4, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/re2j/CharClass;->len:I

    aput v0, v3, v4

    .line 268
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v4, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/re2j/CharClass;->len:I

    aput v2, v3, v4

    .line 270
    :cond_2
    return-object p0
.end method

.method toArray()[I
    .locals 4

    .line 55
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    return-object v0

    .line 58
    :cond_0
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    new-array v0, v0, [I

    .line 59
    .local v0, "r2":[I
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    invoke-static {v0, v1}, Lcom/google/re2j/CharClass;->charClassToString([II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
