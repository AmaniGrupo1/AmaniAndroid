.class Lcom/google/re2j/MachineInput$UTF8Input;
.super Lcom/google/re2j/MachineInput;
.source "MachineInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MachineInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF8Input"
.end annotation


# instance fields
.field final b:[B

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 69
    invoke-direct {p0}, Lcom/google/re2j/MachineInput;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 72
    array-length v0, p1

    iput v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    .line 73
    return-void
.end method

.method constructor <init>([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 75
    invoke-direct {p0}, Lcom/google/re2j/MachineInput;-><init>()V

    .line 76
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    .line 81
    iput p2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 82
    iput p3, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    .line 83
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end is greater than length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method canCheckPrefix()Z
    .locals 1

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method context(I)I
    .locals 5
    .param p1, "pos"    # I

    .line 143
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p1, v0

    .line 144
    const/4 v0, -0x1

    .line 145
    .local v0, "r1":I
    iget v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    if-le p1, v1, :cond_3

    iget v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    if-gt p1, v1, :cond_3

    .line 146
    add-int/lit8 v1, p1, -0x1

    .line 147
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, v1, -0x1

    .end local v1    # "start":I
    .local v3, "start":I
    aget-byte v0, v2, v1

    .line 148
    const/16 v1, 0x80

    if-lt v0, v1, :cond_3

    .line 150
    add-int/lit8 v2, p1, -0x4

    .line 151
    .local v2, "lim":I
    iget v4, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    if-ge v2, v4, :cond_0

    .line 152
    iget v2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 154
    :cond_0
    :goto_0
    if-lt v3, v2, :cond_1

    iget-object v4, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v1, :cond_1

    .line 155
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 157
    :cond_1
    iget v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    if-ge v3, v1, :cond_2

    .line 158
    iget v3, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 160
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/re2j/MachineInput$UTF8Input;->step(I)I

    move-result v1

    shr-int/lit8 v0, v1, 0x3

    .line 163
    .end local v2    # "lim":I
    .end local v3    # "start":I
    :cond_3
    iget v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/re2j/MachineInput$UTF8Input;->step(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    .line 164
    .local v1, "r2":I
    :goto_1
    invoke-static {v0, v1}, Lcom/google/re2j/Utils;->emptyOpContext(II)I

    move-result v2

    return v2
.end method

.method endPos()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    return v0
.end method

.method index(Lcom/google/re2j/RE2;I)I
    .locals 2
    .param p1, "re2"    # Lcom/google/re2j/RE2;
    .param p2, "pos"    # I

    .line 136
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p2, v0

    .line 137
    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    iget-object v1, p1, Lcom/google/re2j/RE2;->prefixUTF8:[B

    invoke-static {v0, v1, p2}, Lcom/google/re2j/Utils;->indexOf([B[BI)I

    move-result v0

    .line 138
    .local v0, "i":I
    if-gez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sub-int v1, v0, p2

    :goto_0
    return v1
.end method

.method step(I)I
    .locals 5
    .param p1, "i"    # I

    .line 87
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    const/4 v1, -0x8

    if-lt p1, v0, :cond_0

    .line 89
    return v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "i":I
    .local v2, "i":I
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    .line 100
    .local p1, "x":I
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 101
    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x1

    return v0

    .line 102
    :cond_1
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_3

    .line 103
    and-int/lit8 p1, p1, 0x1f

    .line 104
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    if-lt v2, v0, :cond_2

    .line 105
    return v1

    .line 107
    :cond_2
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 108
    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x2

    return v0

    .line 109
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_3
    and-int/lit16 v0, p1, 0xf0

    .line 119
    iget v3, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    .line 109
    const/16 v4, 0xe0

    if-ne v0, v4, :cond_5

    .line 110
    and-int/lit8 p1, p1, 0xf

    .line 111
    add-int/lit8 v0, v2, 0x1

    if-lt v0, v3, :cond_4

    .line 112
    return v1

    .line 114
    :cond_4
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 115
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 116
    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x3

    return v0

    .line 118
    :cond_5
    and-int/lit8 p1, p1, 0x7

    .line 119
    add-int/lit8 v0, v2, 0x2

    if-lt v0, v3, :cond_6

    .line 120
    return v1

    .line 122
    :cond_6
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 123
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 124
    shl-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v0, v1

    .line 125
    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x4

    return v0
.end method
