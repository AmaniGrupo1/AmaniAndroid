.class public final Landroidx/media3/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO:F = 1.0f

.field private static final DEFAULT_WIDTH:I

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Landroidx/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroidx/media3/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/VideoSize;-><init>(II)V

    sput-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 126
    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    .line 129
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    .line 67
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelWidthHeightRatio"    # F

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroidx/media3/common/VideoSize;->width:I

    .line 84
    iput p2, p0, Landroidx/media3/common/VideoSize;->height:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    .line 86
    iput p3, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    .line 87
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    .line 101
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/VideoSize;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 149
    sget-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "width":I
    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "height":I
    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 152
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 153
    .local v2, "pixelWidthHeightRatio":F
    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/common/VideoSize;-><init>(IIF)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 109
    move-object v1, p1

    check-cast v1, Landroidx/media3/common/VideoSize;

    .line 110
    .local v1, "other":Landroidx/media3/common/VideoSize;
    iget v3, p0, Landroidx/media3/common/VideoSize;->width:I

    iget v4, v1, Landroidx/media3/common/VideoSize;->width:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroidx/media3/common/VideoSize;->height:I

    iget v4, v1, Landroidx/media3/common/VideoSize;->height:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget v4, v1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 114
    .end local v1    # "other":Landroidx/media3/common/VideoSize;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 119
    const/4 v0, 0x7

    .line 120
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/VideoSize;->width:I

    add-int/2addr v1, v2

    .line 121
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/VideoSize;->height:I

    add-int/2addr v0, v2

    .line 122
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    :cond_0
    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    if-eqz v1, :cond_1

    .line 138
    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_1
    iget v1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 141
    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 143
    :cond_2
    return-object v0
.end method
