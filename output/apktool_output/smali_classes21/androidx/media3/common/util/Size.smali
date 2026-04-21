.class public final Landroidx/media3/common/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# static fields
.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Landroidx/media3/common/util/Size;

.field public static final ZERO:Landroidx/media3/common/util/Size;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroidx/media3/common/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/util/Size;-><init>(II)V

    sput-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 34
    new-instance v0, Landroidx/media3/common/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/util/Size;-><init>(II)V

    sput-object v0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    .line 90
    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Size;->FIELD_WIDTH:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/Size;->FIELD_HEIGHT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_1

    :cond_0
    if-eq p2, v0, :cond_2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    iput p1, p0, Landroidx/media3/common/util/Size;->width:I

    .line 51
    iput p2, p0, Landroidx/media3/common/util/Size;->height:I

    .line 52
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/util/Size;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 103
    sget-object v0, Landroidx/media3/common/util/Size;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "width":I
    sget-object v2, Landroidx/media3/common/util/Size;->FIELD_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "height":I
    new-instance v2, Landroidx/media3/common/util/Size;

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/util/Size;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 70
    return v1

    .line 72
    :cond_1
    instance-of v2, p1, Landroidx/media3/common/util/Size;

    if-eqz v2, :cond_3

    .line 73
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/util/Size;

    .line 74
    .local v2, "other":Landroidx/media3/common/util/Size;
    iget v3, p0, Landroidx/media3/common/util/Size;->width:I

    iget v4, v2, Landroidx/media3/common/util/Size;->width:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/common/util/Size;->height:I

    iget v4, v2, Landroidx/media3/common/util/Size;->height:I

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 76
    .end local v2    # "other":Landroidx/media3/common/util/Size;
    :cond_3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Landroidx/media3/common/util/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 56
    iget v0, p0, Landroidx/media3/common/util/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 87
    iget v0, p0, Landroidx/media3/common/util/Size;->height:I

    iget v1, p0, Landroidx/media3/common/util/Size;->width:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroidx/media3/common/util/Size;->width:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/util/Size;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/util/Size;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    sget-object v1, Landroidx/media3/common/util/Size;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/util/Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/common/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
