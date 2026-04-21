.class public final Landroidx/media3/common/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/FlagSet$Builder;
    }
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0
    .param p1, "flags"    # Landroid/util/SparseBooleanArray;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Landroidx/media3/common/FlagSet$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/SparseBooleanArray;
    .param p2, "x1"    # Landroidx/media3/common/FlagSet$1;

    .line 36
    invoke-direct {p0, p1}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 181
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public containsAny(Landroidx/media3/common/FlagSet;)Z
    .locals 2
    .param p1, "other"    # Landroidx/media3/common/FlagSet;

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 207
    invoke-virtual {p1, v0}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    return v1

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public varargs containsAny([I)Z
    .locals 5
    .param p1, "flags"    # [I

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 192
    .local v3, "flag":I
    invoke-virtual {p0, v3}, Landroidx/media3/common/FlagSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 191
    .end local v3    # "flag":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 233
    if-ne p0, p1, :cond_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/FlagSet;

    if-nez v0, :cond_1

    .line 237
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/common/FlagSet;

    .line 240
    .local v0, "that":Landroidx/media3/common/FlagSet;
    nop

    .line 252
    iget-object v1, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object v2, v0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 227
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 228
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 258
    nop

    .line 266
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
