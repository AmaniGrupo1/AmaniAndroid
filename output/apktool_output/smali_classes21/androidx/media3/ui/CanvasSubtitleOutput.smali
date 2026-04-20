.class final Landroidx/media3/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "CanvasSubtitleOutput.java"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Landroidx/media3/ui/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 54
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 55
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 56
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 57
    return-void
.end method

.method private static repositionVerticalCue(Landroidx/media3/common/text/Cue;)Landroidx/media3/common/text/Cue;
    .locals 4
    .param p0, "cue"    # Landroidx/media3/common/text/Cue;

    .line 147
    nop

    .line 148
    invoke-virtual {p0}, Landroidx/media3/common/text/Cue;->buildUpon()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 149
    const v1, -0x800001

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 150
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 153
    .local v0, "cueBuilder":Landroidx/media3/common/text/Cue$Builder;
    iget v1, p0, Landroidx/media3/common/text/Cue;->lineType:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 154
    iget v1, p0, Landroidx/media3/common/text/Cue;->line:F

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    goto :goto_0

    .line 156
    :cond_0
    iget v1, p0, Landroidx/media3/common/text/Cue;->line:F

    neg-float v1, v1

    sub-float/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 158
    :goto_0
    iget v1, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {v0, v2}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 161
    goto :goto_1

    .line 163
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 164
    nop

    .line 170
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 82
    .local v1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getHeight()I

    move-result v2

    .line 89
    .local v2, "rawViewHeight":I
    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getPaddingLeft()I

    move-result v10

    .line 90
    .local v10, "left":I
    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getPaddingTop()I

    move-result v11

    .line 91
    .local v11, "top":I
    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getPaddingRight()I

    move-result v4

    sub-int v12, v3, v4

    .line 92
    .local v12, "right":I
    invoke-virtual {v0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getPaddingBottom()I

    move-result v3

    sub-int v13, v2, v3

    .line 93
    .local v13, "bottom":I
    if-le v13, v11, :cond_5

    if-gt v12, v10, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    sub-int v14, v13, v11

    .line 99
    .local v14, "viewHeightMinusPadding":I
    iget v3, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    iget v4, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 100
    invoke-static {v3, v4, v2, v14}, Landroidx/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v6

    .line 102
    .local v6, "defaultViewTextSizePx":F
    const/4 v3, 0x0

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_2

    .line 104
    return-void

    .line 107
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .line 108
    .local v15, "cueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v15, :cond_4

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/text/Cue;

    .line 110
    .local v4, "cue":Landroidx/media3/common/text/Cue;
    iget v5, v4, Landroidx/media3/common/text/Cue;->verticalType:I

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_3

    .line 111
    invoke-static {v4}, Landroidx/media3/ui/CanvasSubtitleOutput;->repositionVerticalCue(Landroidx/media3/common/text/Cue;)Landroidx/media3/common/text/Cue;

    move-result-object v4

    .line 113
    :cond_3
    iget v5, v4, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v7, v4, Landroidx/media3/common/text/Cue;->textSize:F

    .line 114
    invoke-static {v5, v7, v2, v14}, Landroidx/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v7

    .line 116
    .local v7, "cueTextSizePx":F
    iget-object v5, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/ui/SubtitlePainter;

    .line 117
    .local v5, "painter":Landroidx/media3/ui/SubtitlePainter;
    move v8, v3

    move-object v3, v5

    .end local v5    # "painter":Landroidx/media3/ui/SubtitlePainter;
    .local v3, "painter":Landroidx/media3/ui/SubtitlePainter;
    .local v8, "i":I
    iget-object v5, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    iget v8, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    move/from16 v16, v9

    move-object/from16 v9, p1

    .end local v9    # "i":I
    .local v16, "i":I
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/ui/SubtitlePainter;->draw(Landroidx/media3/common/text/Cue;Landroidx/media3/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    .line 108
    .end local v3    # "painter":Landroidx/media3/ui/SubtitlePainter;
    .end local v4    # "cue":Landroidx/media3/common/text/Cue;
    .end local v7    # "cueTextSizePx":F
    add-int/lit8 v3, v16, 0x1

    .end local v16    # "i":I
    .local v3, "i":I
    goto :goto_0

    .line 129
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 95
    .end local v6    # "defaultViewTextSizePx":F
    .end local v14    # "viewHeightMinusPadding":I
    .end local v15    # "cueCount":I
    :cond_5
    :goto_1
    return-void
.end method

.method public update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 3
    .param p2, "style"    # Landroidx/media3/ui/CaptionStyleCompat;
    .param p3, "textSize"    # F
    .param p4, "textSizeType"    # I
    .param p5, "bottomPaddingFraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;",
            "Landroidx/media3/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 66
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 67
    iput-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 68
    iput p3, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 69
    iput p4, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 70
    iput p5, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 72
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    new-instance v1, Landroidx/media3/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroidx/media3/ui/CanvasSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/CanvasSubtitleOutput;->invalidate()V

    .line 77
    return-void
.end method
