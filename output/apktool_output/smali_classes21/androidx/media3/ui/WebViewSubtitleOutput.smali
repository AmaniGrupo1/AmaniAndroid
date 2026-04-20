.class final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# static fields
.field private static final CSS_LINE_HEIGHT:F = 1.2f

.field private static final DEFAULT_BACKGROUND_CSS_CLASS:Ljava/lang/String; = "default_bg"


# instance fields
.field private bottomPaddingFraction:F

.field private final canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private style:Landroidx/media3/ui/CaptionStyleCompat;

.field private textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 82
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 83
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 85
    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 87
    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 88
    new-instance v1, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/ui/WebViewSubtitleOutput$1;-><init>(Landroidx/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 104
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 107
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method private static anchorTypeToTranslatePercent(I)I
    .locals 1
    .param p0, "anchorType"    # I

    .line 427
    packed-switch p0, :pswitch_data_0

    .line 435
    const/4 v0, 0x0

    return v0

    .line 429
    :pswitch_0
    const/16 v0, -0x64

    return v0

    .line 431
    :pswitch_1
    const/16 v0, -0x32

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 3
    .param p0, "alignment"    # Landroid/text/Layout$Alignment;

    .line 404
    const-string v0, "center"

    if-nez p0, :cond_0

    .line 405
    return-object v0

    .line 407
    :cond_0
    sget-object v1, Landroidx/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 414
    return-object v0

    .line 411
    :pswitch_0
    const-string v0, "end"

    return-object v0

    .line 409
    :pswitch_1
    const-string/jumbo v0, "start"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertCaptionStyleToCssTextShadow(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;
    .locals 2
    .param p0, "style"    # Landroidx/media3/ui/CaptionStyleCompat;

    .line 370
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    packed-switch v0, :pswitch_data_0

    .line 387
    const-string/jumbo v0, "unset"

    return-object v0

    .line 372
    :pswitch_0
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 373
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 372
    const-string v1, "-0.05em -0.05em 0.15em %s"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :pswitch_1
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 384
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 383
    const-string v1, "0.06em 0.08em 0.15em %s"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :pswitch_2
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0.1em 0.12em 0.15em %s"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :pswitch_3
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 381
    invoke-static {v0}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 379
    const-string v1, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTextSizeToCss(IF)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I
    .param p2, "size"    # F

    .line 359
    nop

    .line 361
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 360
    invoke-static {p1, p2, v0, v1}, Landroidx/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v0

    .line 362
    .local v0, "sizePx":F
    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 363
    const-string/jumbo v1, "unset"

    return-object v1

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v0, v1

    .line 366
    .local v1, "sizeDp":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2fpx"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertVerticalTypeToCss(I)Ljava/lang/String;
    .locals 1
    .param p0, "verticalType"    # I

    .line 392
    packed-switch p0, :pswitch_data_0

    .line 399
    const-string v0, "horizontal-tb"

    return-object v0

    .line 394
    :pswitch_0
    const-string/jumbo v0, "vertical-lr"

    return-object v0

    .line 396
    :pswitch_1
    const-string/jumbo v0, "vertical-rl"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBlockShearTransformFunction(Landroidx/media3/common/text/Cue;)Ljava/lang/String;
    .locals 3
    .param p0, "cue"    # Landroidx/media3/common/text/Cue;

    .line 339
    iget v0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 341
    iget v0, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    const-string/jumbo v0, "skewX"

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    const-string/jumbo v0, "skewY"

    .line 343
    :goto_1
    nop

    .line 344
    .local v0, "direction":Ljava/lang/String;
    iget v1, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s(%.2fdeg)"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    .end local v0    # "direction":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private updateWebView()V
    .locals 33

    .line 167
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v1, "html":Ljava/lang/StringBuilder;
    iget-object v2, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v2, v2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 182
    invoke-static {v2}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 183
    invoke-direct {v0, v3, v4}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v3

    .line 184
    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 185
    invoke-static {v6}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertCaptionStyleToCssTextShadow(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    const-string v3, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v2, "cssRuleSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 189
    const-string v3, "default_bg"

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v6, v6, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 190
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "background-color:%s;"

    invoke-static {v7, v6}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v5, v6, :cond_f

    .line 192
    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/text/Cue;

    .line 193
    .local v6, "cue":Landroidx/media3/common/text/Cue;
    iget v9, v6, Landroidx/media3/common/text/Cue;->position:F

    const v10, -0x800001

    cmpl-float v9, v9, v10

    const/high16 v11, 0x42c80000    # 100.0f

    if-eqz v9, :cond_0

    iget v9, v6, Landroidx/media3/common/text/Cue;->position:F

    mul-float/2addr v9, v11

    goto :goto_1

    :cond_0
    const/high16 v9, 0x42480000    # 50.0f

    .line 194
    .local v9, "positionPercent":F
    :goto_1
    iget v12, v6, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v12}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v12

    .line 197
    .local v12, "positionAnchorTranslatePercent":I
    const/4 v13, 0x0

    .line 198
    .local v13, "lineMeasuredFromEnd":Z
    const/4 v14, 0x0

    .line 199
    .local v14, "lineAnchorTranslatePercent":I
    iget v15, v6, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v15, v15, v10

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v17, v4

    const-string v4, "%.2f%%"

    if-eqz v15, :cond_3

    .line 200
    iget v15, v6, Landroidx/media3/common/text/Cue;->lineType:I

    packed-switch v15, :pswitch_data_0

    .line 212
    move/from16 v18, v10

    iget v10, v6, Landroidx/media3/common/text/Cue;->line:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v10}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "lineValue":Ljava/lang/String;
    iget v15, v6, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v15, v8, :cond_2

    .line 216
    iget v15, v6, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v15}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v15

    neg-int v15, v15

    goto :goto_2

    .line 202
    .end local v10    # "lineValue":Ljava/lang/String;
    :pswitch_0
    iget v15, v6, Landroidx/media3/common/text/Cue;->line:F

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    move/from16 v18, v10

    const-string v10, "%.2fem"

    if-ltz v15, :cond_1

    .line 203
    iget v15, v6, Landroidx/media3/common/text/Cue;->line:F

    mul-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v10, v15}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v10

    .restart local v10    # "lineValue":Ljava/lang/String;
    goto :goto_3

    .line 205
    .end local v10    # "lineValue":Ljava/lang/String;
    :cond_1
    iget v15, v6, Landroidx/media3/common/text/Cue;->line:F

    neg-float v15, v15

    sub-float v15, v15, v16

    mul-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v10, v15}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .restart local v10    # "lineValue":Ljava/lang/String;
    const/4 v13, 0x1

    .line 208
    move-object/from16 v23, v10

    goto :goto_3

    .line 217
    :cond_2
    iget v15, v6, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v15}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v15

    :goto_2
    move v14, v15

    move-object/from16 v23, v10

    goto :goto_3

    .line 220
    .end local v10    # "lineValue":Ljava/lang/String;
    :cond_3
    move/from16 v18, v10

    iget v10, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float v16, v16, v10

    mul-float v16, v16, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v10}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 221
    .restart local v10    # "lineValue":Ljava/lang/String;
    const/16 v14, -0x64

    move-object/from16 v23, v10

    .line 225
    .end local v10    # "lineValue":Ljava/lang/String;
    .local v23, "lineValue":Ljava/lang/String;
    :goto_3
    iget v10, v6, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v10, v10, v18

    if-eqz v10, :cond_4

    .line 226
    iget v10, v6, Landroidx/media3/common/text/Cue;->size:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v10}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    goto :goto_4

    .line 227
    :cond_4
    const-string v4, "fit-content"

    move-object/from16 v25, v4

    :goto_4
    nop

    .line 229
    .local v25, "size":Ljava/lang/String;
    iget-object v4, v6, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v4}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v26

    .line 230
    .local v26, "textAlign":Ljava/lang/String;
    iget v4, v6, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-static {v4}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertVerticalTypeToCss(I)Ljava/lang/String;

    move-result-object v27

    .line 231
    .local v27, "writingMode":Ljava/lang/String;
    iget v4, v6, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v10, v6, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-direct {v0, v4, v10}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v28

    .line 233
    .local v28, "cueTextSizeCssPx":Ljava/lang/String;
    iget-boolean v4, v6, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v4, :cond_5

    iget v4, v6, Landroidx/media3/common/text/Cue;->windowColor:I

    goto :goto_5

    :cond_5
    iget-object v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v4, v4, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    :goto_5
    invoke-static {v4}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v29

    .line 237
    .local v29, "windowCssColor":Ljava/lang/String;
    iget v4, v6, Landroidx/media3/common/text/Cue;->verticalType:I

    const-string v10, "left"

    const-string/jumbo v11, "right"

    packed-switch v4, :pswitch_data_1

    .line 248
    if-eqz v13, :cond_8

    const-string v4, "bottom"

    goto :goto_7

    .line 239
    :pswitch_1
    if-eqz v13, :cond_6

    move-object v10, v11

    .line 240
    .local v10, "lineProperty":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "top"

    .line 241
    .local v4, "positionProperty":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v22, v10

    goto :goto_8

    .line 243
    .end local v4    # "positionProperty":Ljava/lang/String;
    .end local v10    # "lineProperty":Ljava/lang/String;
    :pswitch_2
    if-eqz v13, :cond_7

    goto :goto_6

    :cond_7
    move-object v10, v11

    .line 244
    .restart local v10    # "lineProperty":Ljava/lang/String;
    :goto_6
    const-string/jumbo v4, "top"

    .line 245
    .restart local v4    # "positionProperty":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v22, v10

    goto :goto_8

    .line 248
    .end local v4    # "positionProperty":Ljava/lang/String;
    .end local v10    # "lineProperty":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "top"

    :goto_7
    move-object v10, v4

    .line 249
    .restart local v10    # "lineProperty":Ljava/lang/String;
    const-string v4, "left"

    move-object/from16 v20, v4

    move-object/from16 v22, v10

    .line 255
    .end local v10    # "lineProperty":Ljava/lang/String;
    .local v20, "positionProperty":Ljava/lang/String;
    .local v22, "lineProperty":Ljava/lang/String;
    :goto_8
    iget v4, v6, Landroidx/media3/common/text/Cue;->verticalType:I

    const/4 v10, 0x2

    if-eq v4, v10, :cond_a

    iget v4, v6, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v4, v8, :cond_9

    goto :goto_9

    .line 260
    :cond_9
    const-string/jumbo v4, "width"

    .line 261
    .local v4, "sizeProperty":Ljava/lang/String;
    move v10, v12

    .line 262
    .local v10, "horizontalTranslatePercent":I
    move v11, v14

    move-object/from16 v24, v4

    .local v11, "verticalTranslatePercent":I
    goto :goto_a

    .line 256
    .end local v4    # "sizeProperty":Ljava/lang/String;
    .end local v10    # "horizontalTranslatePercent":I
    .end local v11    # "verticalTranslatePercent":I
    :cond_a
    :goto_9
    const-string v4, "height"

    .line 257
    .restart local v4    # "sizeProperty":Ljava/lang/String;
    move v10, v14

    .line 258
    .restart local v10    # "horizontalTranslatePercent":I
    move v11, v12

    move-object/from16 v24, v4

    .line 265
    .end local v4    # "sizeProperty":Ljava/lang/String;
    .restart local v11    # "verticalTranslatePercent":I
    .local v24, "sizeProperty":Ljava/lang/String;
    :goto_a
    iget-object v4, v6, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 267
    invoke-virtual {v0}, Landroidx/media3/ui/WebViewSubtitleOutput;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    .line 266
    invoke-static {v4, v15}, Landroidx/media3/ui/SpannedToHtmlConverter;->convert(Ljava/lang/CharSequence;F)Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    move-result-object v4

    .line 268
    .local v4, "htmlAndCss":Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    .line 270
    .local v8, "cssSelector":Ljava/lang/String;
    nop

    .line 271
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 272
    .local v7, "previousCssDeclarationBlock":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 274
    move-object/from16 v16, v3

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    goto :goto_d

    .line 272
    :cond_c
    move-object/from16 v16, v3

    .line 274
    :goto_c
    const/4 v3, 0x1

    .line 272
    :goto_d
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 275
    .end local v7    # "previousCssDeclarationBlock":Ljava/lang/String;
    .end local v8    # "cssSelector":Ljava/lang/String;
    move-object/from16 v3, v16

    const/4 v8, 0x1

    goto :goto_b

    .line 277
    :cond_d
    move-object/from16 v16, v3

    .line 292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 294
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    .line 303
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 304
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 305
    invoke-static {v6}, Landroidx/media3/ui/WebViewSubtitleOutput;->getBlockShearTransformFunction(Landroidx/media3/common/text/Cue;)Ljava/lang/String;

    move-result-object v32

    filled-new-array/range {v19 .. v32}, [Ljava/lang/Object;

    move-result-object v3

    .line 278
    const-string v7, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v7, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    .line 306
    const-string v8, "<span class=\'%s\'>"

    invoke-static {v8, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v3, v6, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const-string v7, "</span>"

    if-eqz v3, :cond_e

    .line 309
    iget-object v3, v6, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 312
    invoke-static {v3}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 310
    const-string v8, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v8, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 313
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 316
    :cond_e
    iget-object v3, v4, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :goto_e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "</div>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v4    # "htmlAndCss":Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    .end local v6    # "cue":Landroidx/media3/common/text/Cue;
    .end local v9    # "positionPercent":F
    .end local v10    # "horizontalTranslatePercent":I
    .end local v11    # "verticalTranslatePercent":I
    .end local v12    # "positionAnchorTranslatePercent":I
    .end local v13    # "lineMeasuredFromEnd":Z
    .end local v14    # "lineAnchorTranslatePercent":I
    .end local v20    # "positionProperty":Ljava/lang/String;
    .end local v22    # "lineProperty":Ljava/lang/String;
    .end local v23    # "lineValue":Ljava/lang/String;
    .end local v24    # "sizeProperty":Ljava/lang/String;
    .end local v25    # "size":Ljava/lang/String;
    .end local v26    # "textAlign":Ljava/lang/String;
    .end local v27    # "writingMode":Ljava/lang/String;
    .end local v28    # "cueTextSizeCssPx":Ljava/lang/String;
    .end local v29    # "windowCssColor":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_0

    .line 322
    .end local v5    # "i":I
    :cond_f
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v3, "htmlHead":Ljava/lang/StringBuilder;
    const-string v4, "<html><head><style>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 327
    .local v5, "cssSelector":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .end local v5    # "cssSelector":Ljava/lang/String;
    goto :goto_f

    .line 329
    :cond_10
    const-string v4, "</style></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 332
    const-string/jumbo v6, "text/html"

    const-string v7, "base64"

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 164
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 149
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    if-eqz p2, :cond_0

    iget-object v1, p1, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 154
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 7
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

    .line 118
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 119
    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 120
    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 121
    iput p5, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 124
    .local v2, "bitmapCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "textCues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    .line 127
    .local v3, "cue":Landroidx/media3/common/text/Cue;
    iget-object v4, v3, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v3    # "cue":Landroidx/media3/common/text/Cue;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 139
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 141
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "style":Landroidx/media3/ui/CaptionStyleCompat;
    .end local p3    # "textSize":F
    .end local p4    # "textSizeType":I
    .end local p5    # "bottomPaddingFraction":F
    .local v3, "style":Landroidx/media3/ui/CaptionStyleCompat;
    .local v4, "textSize":F
    .local v5, "textSizeType":I
    .local v6, "bottomPaddingFraction":F
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    .line 143
    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->invalidate()V

    .line 144
    return-void
.end method
