.class public final Landroidx/media3/container/Mp4OrientationData;
.super Ljava/lang/Object;
.source "Mp4OrientationData.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final orientation:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Unsupported orientation"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    iput p1, p0, Landroidx/media3/container/Mp4OrientationData;->orientation:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Landroidx/media3/container/Mp4OrientationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/container/Mp4OrientationData;

    .line 58
    .local v1, "other":Landroidx/media3/container/Mp4OrientationData;
    iget v3, p0, Landroidx/media3/container/Mp4OrientationData;->orientation:I

    iget v4, v1, Landroidx/media3/container/Mp4OrientationData;->orientation:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 63
    const/16 v0, 0x11

    .line 64
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/container/Mp4OrientationData;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 65
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/container/Mp4OrientationData;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
