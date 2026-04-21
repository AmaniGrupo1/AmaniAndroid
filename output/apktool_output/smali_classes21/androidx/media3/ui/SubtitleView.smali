.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/SubtitleView$Output;,
        Landroidx/media3/ui/SubtitleView$ViewType;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field public static final VIEW_TYPE_CANVAS:I = 0x1

.field public static final VIEW_TYPE_WEB:I = 0x2


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

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

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private innerSubtitleView:Landroid/view/View;

.field private output:Landroidx/media3/ui/SubtitleView$Output;

.field private style:Landroidx/media3/ui/CaptionStyleCompat;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    .line 139
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    .line 141
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    .line 142
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 144
    iput-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 146
    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, "canvasSubtitleOutput":Landroidx/media3/ui/CanvasSubtitleOutput;
    iput-object v1, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    .line 148
    iput-object v1, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 149
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/media3/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 150
    iput v0, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    .line 151
    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 366
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    return-object v0

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v0, "strippedCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 371
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/text/Cue;

    invoke-direct {p0, v2}, Landroidx/media3/ui/SubtitleView;->removeEmbeddedStyling(Landroidx/media3/common/text/Cue;)Landroidx/media3/common/text/Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    .line 321
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 322
    return v1

    .line 325
    :cond_0
    nop

    .line 326
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 327
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    goto :goto_0

    .line 329
    :cond_1
    nop

    .line 327
    :goto_0
    return v1
.end method

.method private getUserCaptionStyle()Landroidx/media3/ui/CaptionStyleCompat;
    .locals 2

    .line 333
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    return-object v0

    .line 337
    :cond_0
    nop

    .line 338
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 339
    .local v0, "captioningManager":Landroid/view/accessibility/CaptioningManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/ui/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media3/ui/CaptionStyleCompat;

    move-result-object v1

    goto :goto_0

    .line 341
    :cond_1
    sget-object v1, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    .line 339
    :goto_0
    return-object v1
.end method

.method private removeEmbeddedStyling(Landroidx/media3/common/text/Cue;)Landroidx/media3/common/text/Cue;
    .locals 2
    .param p1, "cue"    # Landroidx/media3/common/text/Cue;

    .line 377
    invoke-virtual {p1}, Landroidx/media3/common/text/Cue;->buildUpon()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 378
    .local v0, "strippedCue":Landroidx/media3/common/text/Cue$Builder;
    iget-boolean v1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-nez v1, :cond_0

    .line 379
    invoke-static {v0}, Landroidx/media3/ui/SubtitleViewUtils;->removeAllEmbeddedStyling(Landroidx/media3/common/text/Cue$Builder;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-boolean v1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-nez v1, :cond_1

    .line 381
    invoke-static {v0}, Landroidx/media3/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Landroidx/media3/common/text/Cue$Builder;)V

    .line 383
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    return-object v1
.end method

.method private setTextSize(IF)V
    .locals 0
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .line 259
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    .line 260
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    .line 261
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 262
    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/media3/ui/SubtitleView$Output;",
            ">(TT;)V"
        }
    .end annotation

    .line 189
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    instance-of v0, v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    check-cast v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    invoke-virtual {v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->destroy()V

    .line 193
    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 194
    move-object v0, p1

    check-cast v0, Landroidx/media3/ui/SubtitleView$Output;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    .line 195
    invoke-virtual {p0, p1}, Landroidx/media3/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method private updateOutput()V
    .locals 6

    .line 345
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    .line 346
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v3, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    iget v4, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    iget v5, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    .line 345
    invoke-interface/range {v0 .. v5}, Landroidx/media3/ui/SubtitleView$Output;->update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    .line 351
    return-void
.end method


# virtual methods
.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0
    .param p1, "applyEmbeddedFontSizes"    # Z

    .line 282
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 283
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 284
    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0
    .param p1, "applyEmbeddedStyles"    # Z

    .line 271
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 272
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 273
    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0
    .param p1, "bottomPaddingFraction"    # F

    .line 316
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    .line 317
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 318
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    .line 160
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 161
    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 207
    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 209
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 212
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    nop

    .line 216
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 214
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Landroidx/media3/ui/SubtitleView;->setTextSize(IF)V

    .line 217
    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1
    .param p1, "fractionOfHeight"    # F

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(FZ)V

    .line 239
    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 1
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .line 251
    nop

    .line 252
    if-eqz p2, :cond_0

    .line 253
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/SubtitleView;->setTextSize(IF)V

    .line 256
    return-void
.end method

.method public setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V
    .locals 0
    .param p1, "style"    # Landroidx/media3/ui/CaptionStyleCompat;

    .line 302
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 303
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    .line 304
    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 1

    .line 293
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Landroidx/media3/ui/CaptionStyleCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V

    .line 294
    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    .line 226
    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 227
    return-void
.end method

.method public setViewType(I)V
    .locals 2
    .param p1, "viewType"    # I

    .line 172
    iget v0, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    if-ne v0, p1, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 180
    :pswitch_0
    new-instance v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 181
    goto :goto_0

    .line 177
    :pswitch_1
    new-instance v0, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 178
    nop

    .line 185
    :goto_0
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    .line 186
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
