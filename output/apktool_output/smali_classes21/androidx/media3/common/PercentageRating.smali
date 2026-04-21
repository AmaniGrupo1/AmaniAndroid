.class public final Landroidx/media3/common/PercentageRating;
.super Landroidx/media3/common/Rating;
.source "PercentageRating.java"


# static fields
.field private static final FIELD_PERCENT:Ljava/lang/String;

.field private static final TYPE:I = 0x1


# instance fields
.field private final percent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    .line 35
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 42
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    .line 43
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "percent must be in the range of [0, 100]"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    iput p1, p0, Landroidx/media3/common/PercentageRating;->percent:F

    .line 45
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/PercentageRating;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 89
    sget-object v0, Landroidx/media3/common/PercentageRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    sget-object v0, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 91
    .local v0, "percent":F
    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/media3/common/PercentageRating;

    invoke-direct {v1}, Landroidx/media3/common/PercentageRating;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/media3/common/PercentageRating;

    invoke-direct {v1, v0}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Landroidx/media3/common/PercentageRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    iget v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    move-object v2, p1

    check-cast v2, Landroidx/media3/common/PercentageRating;

    iget v2, v2, Landroidx/media3/common/PercentageRating;->percent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPercent()F
    .locals 1

    .line 57
    iget v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .locals 2

    .line 49
    iget v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/PercentageRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    sget-object v1, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/PercentageRating;->percent:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 83
    return-object v0
.end method
