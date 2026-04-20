.class abstract Lcom/google/re2j/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final EMPTY_ALL:I = -0x1

.field static final EMPTY_BEGIN_LINE:I = 0x1

.field static final EMPTY_BEGIN_TEXT:I = 0x4

.field static final EMPTY_END_LINE:I = 0x2

.field static final EMPTY_END_TEXT:I = 0x8

.field static final EMPTY_INTS:[I

.field static final EMPTY_NO_WORD_BOUNDARY:I = 0x20

.field static final EMPTY_WORD_BOUNDARY:I = 0x10

.field private static final METACHARACTERS:Ljava/lang/String; = "\\.+*?()|[]{}^$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static emptyOpContext(II)I
    .locals 3
    .param p0, "r1"    # I
    .param p1, "r2"    # I

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "op":I
    if-gez p0, :cond_0

    .line 185
    or-int/lit8 v0, v0, 0x5

    .line 187
    :cond_0
    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    .line 188
    or-int/lit8 v0, v0, 0x1

    .line 190
    :cond_1
    if-gez p1, :cond_2

    .line 191
    or-int/lit8 v0, v0, 0xa

    .line 193
    :cond_2
    if-ne p1, v1, :cond_3

    .line 194
    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_3
    invoke-static {p0}, Lcom/google/re2j/Utils;->isWordRune(I)Z

    move-result v1

    invoke-static {p1}, Lcom/google/re2j/Utils;->isWordRune(I)Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 197
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 199
    :cond_4
    or-int/lit8 v0, v0, 0x20

    .line 201
    :goto_0
    return v0
.end method

.method static escapeRune(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "rune"    # I

    .line 40
    invoke-static {p1}, Lcom/google/re2j/Unicode;->isPrint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "\\.+*?()|[]{}^$"

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 42
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 45
    return-void

    .line 48
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x100

    if-ge p1, v1, :cond_3

    .line 74
    const-string v1, "\\x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 76
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    .end local v0    # "s":Ljava/lang/String;
    :sswitch_0
    const-string v0, "\\\\"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    goto :goto_1

    .line 50
    :sswitch_1
    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_1

    .line 68
    :sswitch_3
    const-string v0, "\\f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    goto :goto_1

    .line 59
    :sswitch_4
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    goto :goto_1

    .line 56
    :sswitch_5
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_1

    .line 65
    :sswitch_6
    const-string v0, "\\b"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1

    .line 78
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 80
    :cond_3
    const-string v1, "\\x{"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    nop

    .line 85
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static indexOf([B[BI)I
    .locals 9
    .param p0, "source"    # [B
    .param p1, "target"    # [B
    .param p2, "fromIndex"    # I

    .line 128
    array-length v0, p0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 129
    array-length v0, p1

    if-nez v0, :cond_0

    array-length v1, p0

    :cond_0
    return v1

    .line 131
    :cond_1
    if-gez p2, :cond_2

    .line 132
    const/4 p2, 0x0

    .line 134
    :cond_2
    array-length v0, p1

    if-nez v0, :cond_3

    .line 135
    return p2

    .line 138
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 139
    .local v0, "first":B
    move v2, p2

    .local v2, "i":I
    array-length v3, p0

    array-length v4, p1

    sub-int/2addr v3, v4

    .local v3, "max":I
    :goto_0
    if-gt v2, v3, :cond_7

    .line 141
    aget-byte v4, p0, v2

    if-eq v4, v0, :cond_4

    .line 142
    :goto_1
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_4

    aget-byte v4, p0, v2

    if-eq v4, v0, :cond_4

    goto :goto_1

    .line 146
    :cond_4
    if-gt v2, v3, :cond_6

    .line 147
    add-int/lit8 v4, v2, 0x1

    .line 148
    .local v4, "j":I
    array-length v5, p1

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 149
    .local v5, "end":I
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-byte v7, p0, v4

    aget-byte v8, p1, v6

    if-ne v7, v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 151
    .end local v6    # "k":I
    :cond_5
    if-ne v4, v5, :cond_6

    .line 152
    return v2

    .line 139
    .end local v4    # "j":I
    .end local v5    # "end":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    .end local v3    # "max":I
    :cond_7
    return v1
.end method

.method static isWordRune(I)Z
    .locals 1
    .param p0, "r"    # I

    .line 163
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isalnum(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 18
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static runeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "r"    # I

    .line 103
    int-to-char v0, p0

    .line 104
    .local v0, "c":C
    if-ne p0, v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object v1
.end method

.method static stringToRunes(Ljava/lang/String;)[I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "charlen":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 91
    .local v1, "runelen":I
    new-array v2, v1, [I

    .line 92
    .local v2, "runes":[I
    const/4 v3, 0x0

    .local v3, "r":I
    const/4 v4, 0x0

    .line 93
    .local v4, "c":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 95
    .local v5, "rune":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "r":I
    .local v6, "r":I
    aput v5, v2, v3

    .line 96
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 97
    .end local v5    # "rune":I
    move v3, v6

    goto :goto_0

    .line 98
    .end local v6    # "r":I
    .restart local v3    # "r":I
    :cond_0
    return-object v2
.end method

.method static subarray([BII)[B
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 118
    sub-int v0, p2, p1

    new-array v0, v0, [B

    .line 119
    .local v0, "r":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 120
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static subarray([III)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 109
    sub-int v0, p2, p1

    new-array v0, v0, [I

    .line 110
    .local v0, "r":[I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 111
    sub-int v2, v1, p1

    aget v3, p0, v1

    aput v3, v0, v2

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static unhex(I)I
    .locals 1
    .param p0, "c"    # I

    .line 23
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 24
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 26
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 27
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 29
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 30
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 32
    :cond_2
    const/4 v0, -0x1

    return v0
.end method
