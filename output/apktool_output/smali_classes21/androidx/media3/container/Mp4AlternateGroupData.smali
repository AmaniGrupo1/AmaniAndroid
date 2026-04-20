.class public final Landroidx/media3/container/Mp4AlternateGroupData;
.super Ljava/lang/Object;
.source "Mp4AlternateGroupData.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# instance fields
.field public final alternateGroup:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "alternateGroup"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroidx/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Landroidx/media3/container/Mp4AlternateGroupData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 38
    return v2

    .line 41
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/container/Mp4AlternateGroupData;

    .line 42
    .local v1, "other":Landroidx/media3/container/Mp4AlternateGroupData;
    iget v3, p0, Landroidx/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    iget v4, v1, Landroidx/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget v0, p0, Landroidx/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4AlternateGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
