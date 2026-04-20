.class final Landroidx/media3/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private backgroundColor:I

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private cueTextSizePx:F

.field private defaultTextSizePx:F

.field private edgeColor:I

.field private edgeLayout:Landroid/text/StaticLayout;

.field private edgeType:I

.field private foregroundColor:I

.field private final outlineWidth:F

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I

.field private final windowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const v0, 0x1010217

    const v1, 0x1010218

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 101
    .local v0, "viewAttr":[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 102
    .local v1, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    .line 103
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    .line 104
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 108
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 109
    .local v5, "twoDpInPx":I
    int-to-float v6, v5

    iput v6, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    .line 110
    int-to-float v6, v5

    iput v6, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 111
    int-to-float v6, v5

    iput v6, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    .line 113
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    iput-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 114
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 115
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 117
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v6, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 124
    return-void
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .line 472
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap",
            "bitmapRect"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 460
    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isTextCue"    # Z

    .line 398
    if-eqz p2, :cond_0

    .line 399
    invoke-direct {p0, p1}, Landroidx/media3/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-direct {p0, p1}, Landroidx/media3/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    .line 405
    :goto_0
    return-void
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 408
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 409
    .local v0, "textLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 410
    .local v1, "edgeLayout":Landroid/text/StaticLayout;
    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    move-object v4, p1

    goto/16 :goto_4

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 416
    .local v2, "saveCount":I
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 419
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    neg-int v3, v3

    int-to-float v5, v3

    .line 423
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    .line 424
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 420
    const/4 v6, 0x0

    move-object v4, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 418
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object v4, p1

    .line 428
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 429
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 430
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 431
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 432
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 433
    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 434
    :cond_2
    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 435
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    iget v8, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_3

    .line 436
    :cond_3
    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v7, 0x4

    if-ne p1, v7, :cond_8

    .line 438
    :cond_4
    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    if-ne p1, v6, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    .line 439
    .local v5, "raised":Z
    :goto_1
    const/4 p1, -0x1

    if-eqz v5, :cond_6

    move v6, p1

    goto :goto_2

    :cond_6
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 440
    .local v6, "colorUp":I
    :goto_2
    if-eqz v5, :cond_7

    iget p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 441
    .local p1, "colorDown":I
    :cond_7
    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 442
    .local v7, "offset":F
    iget-object v8, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 443
    iget-object v8, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 444
    iget-object v8, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    neg-float v10, v7

    neg-float v11, v7

    invoke-virtual {v8, v9, v10, v11, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 445
    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 446
    iget-object v8, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v8, v9, v7, v7, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 449
    .end local v5    # "raised":Z
    .end local v6    # "colorUp":I
    .end local v7    # "offset":F
    .end local p1    # "colorDown":I
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 450
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 451
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 452
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 454
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 455
    return-void

    .line 410
    .end local v2    # "saveCount":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .local p1, "canvas":Landroid/graphics/Canvas;
    :cond_9
    move-object v4, p1

    .line 412
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_4
    return-void
.end method

.method private setupBitmapLayout()V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 375
    .local v0, "cueBitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 376
    .local v1, "parentWidth":I
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v2, v3

    .line 377
    .local v2, "parentHeight":I
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 378
    .local v3, "anchorX":F
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    int-to-float v4, v4

    int-to-float v5, v2

    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 379
    .local v4, "anchorY":F
    int-to-float v5, v1

    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 381
    .local v5, "width":I
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 382
    int-to-float v6, v2

    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_0

    .line 383
    :cond_0
    int-to-float v6, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_0
    nop

    .line 386
    .local v6, "height":I
    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 387
    int-to-float v7, v5

    sub-float v7, v3, v7

    goto :goto_1

    .line 388
    :cond_1
    iget v7, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    if-ne v7, v8, :cond_2

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float v7, v3, v7

    goto :goto_1

    :cond_2
    move v7, v3

    .line 385
    :goto_1
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 391
    .local v7, "x":I
    iget v10, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v10, v9, :cond_3

    .line 392
    int-to-float v8, v6

    sub-float v8, v4, v8

    goto :goto_2

    .line 393
    :cond_3
    iget v9, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v9, v8, :cond_4

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v8, v4, v8

    goto :goto_2

    :cond_4
    move v8, v4

    .line 390
    :goto_2
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 394
    .local v8, "y":I
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v7, v5

    add-int v11, v8, v6

    invoke-direct {v9, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 395
    return-void
.end method

.method private setupTextLayout()V
    .locals 26
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueText"
        }
    .end annotation

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, v0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v3, v1

    .line 234
    .local v3, "cueText":Landroid/text/SpannableStringBuilder;
    iget v1, v0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    iget v2, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 235
    .local v1, "parentWidth":I
    iget v2, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    sub-int v10, v2, v4

    .line 237
    .local v10, "parentHeight":I
    iget-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 238
    iget v2, v0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v11, v2

    .line 240
    .local v11, "textPaddingX":I
    mul-int/lit8 v2, v11, 0x2

    sub-int v2, v1, v2

    .line 241
    .local v2, "availableWidth":I
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    const v12, -0x800001

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_1

    .line 242
    int-to-float v4, v2

    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    move v5, v2

    goto :goto_1

    .line 241
    :cond_1
    move v5, v2

    .line 244
    .end local v2    # "availableWidth":I
    .local v5, "availableWidth":I
    :goto_1
    const-string v13, "SubtitlePainter"

    if-gtz v5, :cond_2

    .line 245
    const-string v2, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 249
    :cond_2
    iget v2, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    const/4 v14, 0x0

    cmpl-float v2, v2, v14

    const/high16 v4, 0xff0000

    const/4 v15, 0x0

    if-lez v2, :cond_3

    .line 251
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v6, v6

    invoke-direct {v2, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 254
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 251
    invoke-virtual {v3, v2, v15, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 260
    .local v2, "cueTextEdge":Landroid/text/SpannableStringBuilder;
    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 261
    nop

    .line 262
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-class v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v15, v6, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ForegroundColorSpan;

    .line 263
    .local v6, "foregroundColorSpans":[Landroid/text/style/ForegroundColorSpan;
    array-length v8, v6

    move v9, v15

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v7, v6, v9

    .line 264
    .local v7, "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 263
    .end local v7    # "foregroundColorSpan":Landroid/text/style/ForegroundColorSpan;
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 272
    .end local v6    # "foregroundColorSpans":[Landroid/text/style/ForegroundColorSpan;
    :cond_4
    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/4 v7, 0x2

    if-lez v6, :cond_7

    .line 273
    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    if-eqz v6, :cond_6

    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    if-ne v6, v7, :cond_5

    goto :goto_3

    .line 278
    :cond_5
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 281
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 278
    invoke-virtual {v2, v6, v15, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 275
    :cond_6
    :goto_3
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v6, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 276
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 275
    invoke-virtual {v3, v6, v15, v8, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 286
    :cond_7
    :goto_4
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v4, :cond_8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_5

    :cond_8
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    :goto_5
    move-object v6, v4

    .line 287
    .local v6, "textAlignment":Landroid/text/Layout$Alignment;
    move-object/from16 v17, v2

    .end local v2    # "cueTextEdge":Landroid/text/SpannableStringBuilder;
    .local v17, "cueTextEdge":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move v8, v7

    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    move v9, v8

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    move/from16 v18, v9

    const/4 v9, 0x1

    move/from16 v16, v18

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v12

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v4, v2

    move v2, v5

    .end local v5    # "availableWidth":I
    .local v2, "availableWidth":I
    iput-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 290
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v24

    .line 291
    .local v24, "textHeight":I
    const/4 v4, 0x0

    .line 292
    .local v4, "textWidth":I
    iget-object v5, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 293
    .local v5, "lineCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    if-ge v7, v5, :cond_9

    .line 294
    iget-object v8, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 293
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 296
    .end local v7    # "i":I
    :cond_9
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    cmpl-float v7, v7, v16

    if-eqz v7, :cond_a

    if-ge v4, v2, :cond_a

    .line 297
    move v4, v2

    .line 299
    :cond_a
    mul-int/lit8 v7, v11, 0x2

    add-int/2addr v4, v7

    .line 303
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v7, v7, v16

    if-eqz v7, :cond_b

    .line 304
    int-to-float v7, v1

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v7, v8

    .line 305
    .local v7, "anchorPosition":I
    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    packed-switch v8, :pswitch_data_0

    .line 315
    move v8, v7

    .local v8, "textLeft":I
    goto :goto_7

    .line 307
    .end local v8    # "textLeft":I
    :pswitch_0
    sub-int v8, v7, v4

    .line 308
    .restart local v8    # "textLeft":I
    goto :goto_7

    .line 310
    .end local v8    # "textLeft":I
    :pswitch_1
    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v8, v4

    div-int/2addr v8, v14

    .line 311
    .restart local v8    # "textLeft":I
    nop

    .line 318
    :goto_7
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 319
    add-int v9, v8, v4

    iget v15, v0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 320
    .local v7, "textRight":I
    move v15, v7

    goto :goto_8

    .line 321
    .end local v7    # "textRight":I
    .end local v8    # "textLeft":I
    :cond_b
    sub-int v7, v1, v4

    div-int/2addr v7, v14

    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v8, v7

    .line 322
    .restart local v8    # "textLeft":I
    add-int v7, v8, v4

    move v15, v7

    .line 325
    .local v15, "textRight":I
    :goto_8
    sub-int v4, v15, v8

    .line 326
    if-gtz v4, :cond_c

    .line 327
    const-string v7, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v13, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 332
    :cond_c
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    cmpl-float v7, v7, v16

    if-eqz v7, :cond_13

    .line 333
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    if-nez v7, :cond_f

    .line 334
    int-to-float v7, v10

    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v7, v9

    .line 336
    .local v7, "anchorPosition":I
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v9, v14, :cond_d

    .line 337
    sub-int v9, v7, v24

    goto :goto_9

    .line 338
    :cond_d
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v9, v12, :cond_e

    .line 339
    mul-int/lit8 v9, v7, 0x2

    sub-int v9, v9, v24

    div-int/2addr v9, v14

    goto :goto_9

    .line 340
    :cond_e
    move v9, v7

    :goto_9
    nop

    .line 341
    .end local v7    # "anchorPosition":I
    .local v9, "textTop":I
    goto :goto_a

    .line 343
    .end local v9    # "textTop":I
    :cond_f
    iget-object v7, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v7

    iget-object v12, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v7, v9

    .line 344
    .local v7, "firstLineHeight":I
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    cmpl-float v9, v9, v18

    .line 347
    iget v12, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 344
    if-ltz v9, :cond_10

    .line 345
    int-to-float v9, v7

    mul-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v12, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v9, v12

    .restart local v9    # "textTop":I
    goto :goto_a

    .line 347
    .end local v9    # "textTop":I
    :cond_10
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v12, v9

    int-to-float v9, v7

    mul-float/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v12, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v9, v12

    sub-int v9, v9, v24

    .line 351
    .end local v7    # "firstLineHeight":I
    .restart local v9    # "textTop":I
    :goto_a
    add-int v7, v9, v24

    iget v12, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    if-le v7, v12, :cond_11

    .line 352
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    sub-int v9, v7, v24

    move v12, v9

    goto :goto_b

    .line 353
    :cond_11
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    if-ge v9, v7, :cond_12

    .line 354
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    move v12, v9

    goto :goto_b

    .line 353
    :cond_12
    move v12, v9

    goto :goto_b

    .line 357
    .end local v9    # "textTop":I
    :cond_13
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    sub-int v7, v7, v24

    int-to-float v9, v10

    iget v12, v0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v9, v12

    float-to-int v9, v9

    sub-int v9, v7, v9

    move v12, v9

    .line 361
    .local v12, "textTop":I
    :goto_b
    move v7, v2

    .end local v2    # "availableWidth":I
    .local v7, "availableWidth":I
    new-instance v2, Landroid/text/StaticLayout;

    move/from16 v19, v4

    .end local v4    # "textWidth":I
    .local v19, "textWidth":I
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move v9, v7

    .end local v7    # "availableWidth":I
    .local v9, "availableWidth":I
    iget v7, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    move v13, v8

    .end local v8    # "textLeft":I
    .local v13, "textLeft":I
    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    move v14, v9

    .end local v9    # "availableWidth":I
    .local v14, "availableWidth":I
    const/4 v9, 0x1

    move/from16 v25, v1

    move v1, v13

    move v13, v5

    move/from16 v5, v19

    .end local v19    # "textWidth":I
    .local v1, "textLeft":I
    .local v5, "textWidth":I
    .local v13, "lineCount":I
    .local v25, "parentWidth":I
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .end local v5    # "textWidth":I
    .restart local v19    # "textWidth":I
    iput-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 364
    new-instance v16, Landroid/text/StaticLayout;

    iget-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    const/16 v23, 0x1

    move-object/from16 v18, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v6

    .end local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    .local v20, "textAlignment":Landroid/text/Layout$Alignment;
    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v16

    .end local v20    # "textAlignment":Landroid/text/Layout$Alignment;
    .restart local v6    # "textAlignment":Landroid/text/Layout$Alignment;
    iput-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 367
    iput v1, v0, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    .line 368
    iput v12, v0, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    .line 369
    iput v11, v0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    .line 370
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroidx/media3/common/text/Cue;Landroidx/media3/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V
    .locals 4
    .param p1, "cue"    # Landroidx/media3/common/text/Cue;
    .param p2, "style"    # Landroidx/media3/ui/CaptionStyleCompat;
    .param p3, "defaultTextSizePx"    # F
    .param p4, "cueTextSizePx"    # F
    .param p5, "bottomPaddingFraction"    # F
    .param p6, "canvas"    # Landroid/graphics/Canvas;
    .param p7, "cueBoxLeft"    # I
    .param p8, "cueBoxTop"    # I
    .param p9, "cueBoxRight"    # I
    .param p10, "cueBoxBottom"    # I

    .line 157
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    .local v0, "isTextCue":Z
    :goto_0
    const/high16 v1, -0x1000000

    .line 159
    .local v1, "windowColor":I
    if-eqz v0, :cond_3

    .line 160
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    return-void

    .line 164
    :cond_1
    iget-boolean v2, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v2, :cond_2

    iget v2, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    goto :goto_1

    :cond_2
    iget v2, p2, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    :goto_1
    move v1, v2

    .line 166
    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroidx/media3/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 167
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    if-ne v2, v1, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    if-ne v2, p7, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    if-ne v2, p8, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    if-ne v2, p9, :cond_4

    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    if-ne v2, p10, :cond_4

    .line 190
    invoke-direct {p0, p6, v0}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    .line 191
    return-void

    .line 194
    :cond_4
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroidx/media3/ui/BidiUtils;->containsRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroidx/media3/ui/BidiUtils;->wrapText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    :goto_2
    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 195
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 196
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget v2, p1, Landroidx/media3/common/text/Cue;->line:F

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 198
    iget v2, p1, Landroidx/media3/common/text/Cue;->lineType:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    .line 199
    iget v2, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 200
    iget v2, p1, Landroidx/media3/common/text/Cue;->position:F

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    .line 201
    iget v2, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 202
    iget v2, p1, Landroidx/media3/common/text/Cue;->size:F

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 203
    iget v2, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 204
    iget v2, p2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 205
    iget v2, p2, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 206
    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    .line 207
    iget v2, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 208
    iget v2, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 209
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    iput p3, p0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 211
    iput p4, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 212
    iput p5, p0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 213
    iput p7, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 214
    iput p8, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 215
    iput p9, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 216
    iput p10, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 218
    if-eqz v0, :cond_6

    .line 219
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0}, Landroidx/media3/ui/SubtitlePainter;->setupTextLayout()V

    goto :goto_3

    .line 222
    :cond_6
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-direct {p0}, Landroidx/media3/ui/SubtitlePainter;->setupBitmapLayout()V

    .line 225
    :goto_3
    invoke-direct {p0, p6, v0}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    .line 226
    return-void
.end method
