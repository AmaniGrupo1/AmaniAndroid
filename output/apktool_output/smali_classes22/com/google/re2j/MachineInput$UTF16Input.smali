.class Lcom/google/re2j/MachineInput$UTF16Input;
.super Lcom/google/re2j/MachineInput;
.source "MachineInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MachineInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF16Input"
.end annotation


# instance fields
.field final end:I

.field final start:I

.field final str:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 179
    invoke-direct {p0}, Lcom/google/re2j/MachineInput;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    .line 181
    iput p2, p0, Lcom/google/re2j/MachineInput$UTF16Input;->start:I

    .line 182
    iput p3, p0, Lcom/google/re2j/MachineInput$UTF16Input;->end:I

    .line 183
    return-void
.end method

.method private indexOf(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 1
    .param p1, "hayStack"    # Ljava/lang/CharSequence;
    .param p2, "needle"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .line 222
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 225
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 226
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 228
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/re2j/MachineInput$UTF16Input;->indexOfFallback(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private indexOfFallback(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 9
    .param p1, "hayStack"    # Ljava/lang/CharSequence;
    .param p2, "needle"    # Ljava/lang/String;
    .param p3, "fromIndex"    # I

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lt p3, v0, :cond_1

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 236
    :cond_1
    if-gez p3, :cond_2

    .line 237
    const/4 p3, 0x0

    .line 239
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    return p3

    .line 243
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, "first":C
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    .line 246
    .local v1, "max":I
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-gt v3, v1, :cond_7

    .line 248
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_4

    .line 249
    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v1, :cond_4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_4

    goto :goto_2

    .line 253
    :cond_4
    if-gt v3, v1, :cond_6

    .line 254
    add-int/lit8 v4, v3, 0x1

    .line 255
    .local v4, "j":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 256
    .local v5, "end":I
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_3
    if-ge v4, v5, :cond_5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 258
    .end local v6    # "k":I
    :cond_5
    if-ne v4, v5, :cond_6

    .line 260
    return v3

    .line 246
    .end local v4    # "j":I
    .end local v5    # "end":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .end local v3    # "i":I
    :cond_7
    return v2
.end method


# virtual methods
.method canCheckPrefix()Z
    .locals 1

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method context(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 210
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->start:I

    add-int/2addr p1, v0

    .line 211
    const/4 v0, -0x1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 212
    .local v1, "r1":I
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 213
    .local v0, "r2":I
    :cond_1
    invoke-static {v1, v0}, Lcom/google/re2j/Utils;->emptyOpContext(II)I

    move-result v2

    return v2
.end method

.method endPos()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->end:I

    return v0
.end method

.method index(Lcom/google/re2j/RE2;I)I
    .locals 2
    .param p1, "re2"    # Lcom/google/re2j/RE2;
    .param p2, "pos"    # I

    .line 203
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->start:I

    add-int/2addr p2, v0

    .line 204
    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/google/re2j/RE2;->prefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/re2j/MachineInput$UTF16Input;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v0

    .line 205
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
    .locals 3
    .param p1, "pos"    # I

    .line 187
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->start:I

    add-int/2addr p1, v0

    .line 188
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->end:I

    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF16Input;->str:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 190
    .local v0, "rune":I
    shl-int/lit8 v1, v0, 0x3

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    or-int/2addr v1, v2

    return v1

    .line 192
    .end local v0    # "rune":I
    :cond_0
    const/4 v0, -0x8

    return v0
.end method
