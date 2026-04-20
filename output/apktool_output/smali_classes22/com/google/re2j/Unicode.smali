.class Lcom/google/re2j/Unicode;
.super Ljava/lang/Object;
.source "Unicode.java"


# static fields
.field static final MAX_ASCII:I = 0x7f

.field static final MAX_FOLD:I = 0x1044f

.field static final MAX_LATIN1:I = 0xff

.field static final MAX_RUNE:I = 0x10ffff

.field static final MIN_FOLD:I = 0x41


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static is([[II)Z
    .locals 6
    .param p0, "ranges"    # [[I
    .param p1, "r"    # I

    .line 56
    const/16 v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_4

    .line 57
    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 58
    .local v4, "range":[I
    aget v5, v4, v1

    if-le p1, v5, :cond_0

    .line 59
    nop

    .line 57
    .end local v4    # "range":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .restart local v4    # "range":[I
    :cond_0
    aget v0, v4, v2

    if-ge p1, v0, :cond_1

    .line 62
    return v2

    .line 64
    :cond_1
    aget v0, v4, v2

    sub-int v0, p1, v0

    const/4 v3, 0x2

    aget v3, v4, v3

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 66
    .end local v4    # "range":[I
    :cond_3
    return v2

    .line 68
    :cond_4
    array-length v0, p0

    if-lez v0, :cond_5

    aget-object v0, p0, v2

    aget v0, v0, v2

    if-lt p1, v0, :cond_5

    invoke-static {p0, p1}, Lcom/google/re2j/Unicode;->is32([[II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method private static is32([[II)Z
    .locals 8
    .param p0, "ranges"    # [[I
    .param p1, "r"    # I

    .line 38
    const/4 v0, 0x0

    .local v0, "lo":I
    array-length v1, p0

    .local v1, "hi":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 39
    sub-int v3, v1, v0

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 40
    .local v3, "m":I
    aget-object v5, p0, v3

    .line 41
    .local v5, "range":[I
    aget v6, v5, v2

    if-gt v6, p1, :cond_1

    const/4 v6, 0x1

    aget v7, v5, v6

    if-gt p1, v7, :cond_1

    .line 42
    aget v7, v5, v2

    sub-int v7, p1, v7

    aget v4, v5, v4

    rem-int/2addr v7, v4

    if-nez v7, :cond_0

    move v2, v6

    :cond_0
    return v2

    .line 44
    :cond_1
    aget v2, v5, v2

    if-ge p1, v2, :cond_2

    .line 45
    move v1, v3

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 49
    .end local v3    # "m":I
    .end local v5    # "range":[I
    :goto_1
    goto :goto_0

    .line 50
    .end local v0    # "lo":I
    .end local v1    # "hi":I
    :cond_3
    return v2
.end method

.method static isPrint(I)Z
    .locals 3
    .param p0, "r"    # I

    .line 82
    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_3

    .line 83
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_2

    const/16 v0, 0xad

    if-eq p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 85
    :cond_3
    sget-object v0, Lcom/google/re2j/UnicodeTables;->L:[[I

    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/re2j/UnicodeTables;->M:[[I

    .line 86
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/re2j/UnicodeTables;->N:[[I

    .line 87
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/re2j/UnicodeTables;->P:[[I

    .line 88
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/re2j/UnicodeTables;->S:[[I

    .line 89
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method static isUpper(I)Z
    .locals 1
    .param p0, "r"    # I

    .line 74
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 75
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    sget-object v0, Lcom/google/re2j/UnicodeTables;->Upper:[[I

    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    return v0
.end method

.method static simpleFold(I)I
    .locals 2
    .param p0, "r"    # I

    .line 111
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    aget-char v0, v0, p0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    aget-char v0, v0, p0

    return v0

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/google/re2j/Characters;->toLowerCase(I)I

    move-result v0

    .line 119
    .local v0, "l":I
    if-eq v0, p0, :cond_1

    .line 120
    return v0

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/google/re2j/Characters;->toUpperCase(I)I

    move-result v1

    return v1
.end method
