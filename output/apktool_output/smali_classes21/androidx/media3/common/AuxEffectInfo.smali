.class public final Landroidx/media3/common/AuxEffectInfo;
.super Ljava/lang/Object;
.source "AuxEffectInfo.java"


# static fields
.field public static final NO_AUX_EFFECT_ID:I


# instance fields
.field public final effectId:I

.field public final sendLevel:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "effectId"    # I
    .param p2, "sendLevel"    # F

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    .line 65
    iput p2, p0, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/AuxEffectInfo;

    .line 77
    .local v2, "auxEffectInfo":Landroidx/media3/common/AuxEffectInfo;
    iget v3, p0, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    iget v4, v2, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    iget v4, p0, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 74
    .end local v2    # "auxEffectInfo":Landroidx/media3/common/AuxEffectInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 83
    const/16 v0, 0x11

    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
