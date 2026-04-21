.class final Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TtmlRenderUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/Spannable;IILandroidx/media3/extractor/text/ttml/TtmlStyle;Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;I)V
    .locals 9
    .param p0, "builder"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .param p4, "parent"    # Landroidx/media3/extractor/text/ttml/TtmlNode;
    .param p6, "verticalType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;I)V"
        }
    .end annotation

    .line 94
    .local p5, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;>;"
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getStyle()I

    move-result v0

    const/16 v1, 0x21

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 95
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 96
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getStyle()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 95
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    :cond_2
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 107
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 105
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 112
    :cond_3
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 115
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 113
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 120
    :cond_4
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 121
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 123
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 128
    :cond_5
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getTextEmphasis()Landroidx/media3/extractor/text/ttml/TextEmphasis;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 129
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getTextEmphasis()Landroidx/media3/extractor/text/ttml/TextEmphasis;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;

    .line 132
    .local v0, "textEmphasis":Landroidx/media3/extractor/text/ttml/TextEmphasis;
    iget v4, v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markShape:I

    if-ne v4, v2, :cond_8

    .line 137
    const/4 v4, 0x2

    if-eq p6, v4, :cond_7

    if-ne p6, v3, :cond_6

    goto :goto_0

    .line 139
    :cond_6
    move v4, v3

    goto :goto_1

    .line 138
    :cond_7
    :goto_0
    const/4 v4, 0x3

    .line 139
    :goto_1
    nop

    .line 140
    .local v4, "markShape":I
    const/4 v5, 0x1

    .local v5, "markFill":I
    goto :goto_2

    .line 142
    .end local v4    # "markShape":I
    .end local v5    # "markFill":I
    :cond_8
    iget v4, v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markShape:I

    .line 143
    .restart local v4    # "markShape":I
    iget v5, v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->markFill:I

    .line 147
    .restart local v5    # "markFill":I
    :goto_2
    iget v6, v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->position:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_9

    .line 150
    const/4 v6, 0x1

    .local v6, "position":I
    goto :goto_3

    .line 152
    .end local v6    # "position":I
    :cond_9
    iget v6, v0, Landroidx/media3/extractor/text/ttml/TextEmphasis;->position:I

    .line 155
    .restart local v6    # "position":I
    :goto_3
    new-instance v7, Landroidx/media3/common/text/TextEmphasisSpan;

    invoke-direct {v7, v4, v5, v6}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    invoke-static {p0, v7, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 162
    .end local v0    # "textEmphasis":Landroidx/media3/extractor/text/ttml/TextEmphasis;
    .end local v4    # "markShape":I
    .end local v5    # "markFill":I
    .end local v6    # "position":I
    :cond_a
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getRubyType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 210
    :pswitch_0
    new-instance v0, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    invoke-direct {v0}, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;-><init>()V

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 211
    goto :goto_6

    .line 165
    :pswitch_1
    invoke-static {p4, p5}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->findRubyContainerNode(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    .line 166
    .local v0, "containerNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    if-nez v0, :cond_b

    .line 168
    goto :goto_6

    .line 170
    :cond_b
    invoke-static {v0, p5}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->findRubyTextNode(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v4

    .line 171
    .local v4, "textNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    if-nez v4, :cond_c

    .line 173
    goto :goto_6

    .line 176
    :cond_c
    invoke-virtual {v4}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getChildCount()I

    move-result v5

    if-ne v5, v3, :cond_10

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getChild(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/extractor/text/ttml/TtmlNode;->text:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 177
    invoke-virtual {v4, v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getChild(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/extractor/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, "rubyText":Ljava/lang/String;
    iget-object v6, v4, Landroidx/media3/extractor/text/ttml/TtmlNode;->style:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v4}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p5}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->resolveStyle(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v6

    .line 189
    .local v6, "textStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result v7

    goto :goto_4

    :cond_d
    move v7, v2

    .line 191
    .local v7, "rubyPosition":I
    :goto_4
    if-ne v7, v2, :cond_f

    .line 194
    iget-object v2, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->style:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 195
    invoke-virtual {v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, p5}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->resolveStyle(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v2

    .line 196
    .local v2, "containerStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getRubyPosition()I

    move-result v8

    goto :goto_5

    :cond_e
    move v8, v7

    :goto_5
    move v7, v8

    .line 199
    .end local v2    # "containerStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :cond_f
    new-instance v2, Landroidx/media3/common/text/RubySpan;

    invoke-direct {v2, v5, v7}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 201
    goto :goto_6

    .line 179
    .end local v5    # "rubyText":Ljava/lang/String;
    .end local v6    # "textStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .end local v7    # "rubyPosition":I
    :cond_10
    const-string v2, "TtmlRenderUtil"

    const-string v5, "Skipping rubyText node without exactly one text child."

    invoke-static {v2, v5}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    nop

    .line 218
    .end local v0    # "containerNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    .end local v4    # "textNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    :goto_6
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getTextCombine()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 219
    new-instance v0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v0}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 226
    :cond_11
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_7

    .line 244
    :pswitch_2
    nop

    .line 245
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontSize()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 244
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addInheritedRelativeSizeSpan(Landroid/text/Spannable;FIII)V

    .line 246
    goto :goto_7

    .line 236
    :pswitch_3
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 238
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 236
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 242
    goto :goto_7

    .line 228
    :pswitch_4
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 230
    invoke-virtual {p3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getFontSize()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 228
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 234
    nop

    .line 251
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .line 310
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "out":Ljava/lang/String;
    const-string v2, " *\n *"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .line 293
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 294
    .local v0, "position":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 297
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 298
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 300
    :cond_1
    return-void
.end method

.method private static findRubyContainerNode(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 3
    .param p0, "node"    # Landroidx/media3/extractor/text/ttml/TtmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;"
        }
    .end annotation

    .line 276
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;>;"
    nop

    :goto_0
    if-eqz p0, :cond_1

    .line 277
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->style:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->resolveStyle(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    .line 278
    .local v0, "style":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getRubyType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 279
    return-object p0

    .line 281
    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlNode;->parent:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 282
    .end local v0    # "style":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findRubyTextNode(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlNode;
    .locals 5
    .param p0, "rubyContainerNode"    # Landroidx/media3/extractor/text/ttml/TtmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;"
        }
    .end annotation

    .line 256
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 257
    .local v0, "childNodesStack":Ljava/util/Deque;, "Ljava/util/Deque<Landroidx/media3/extractor/text/ttml/TtmlNode;>;"
    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 258
    :goto_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 261
    .local v1, "childNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    iget-object v2, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->style:Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v1}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getStyleIds()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroidx/media3/extractor/text/ttml/TtmlRenderUtil;->resolveStyle(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v2

    .line 262
    .local v2, "style":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->getRubyType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 263
    return-object v1

    .line 265
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 266
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->getChild(I)Landroidx/media3/extractor/text/ttml/TtmlNode;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 265
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 268
    .end local v1    # "childNode":Landroidx/media3/extractor/text/ttml/TtmlNode;
    .end local v2    # "style":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static resolveStyle(Landroidx/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .locals 5
    .param p0, "style"    # Landroidx/media3/extractor/text/ttml/TtmlStyle;
    .param p1, "styleIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;"
        }
    .end annotation

    .line 53
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/media3/extractor/text/ttml/TtmlStyle;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    .line 54
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    array-length v2, p1

    if-ne v2, v1, :cond_1

    .line 59
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    return-object v0

    .line 60
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_6

    .line 62
    new-instance v1, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-direct {v1}, Landroidx/media3/extractor/text/ttml/TtmlStyle;-><init>()V

    .line 63
    .local v1, "chainedStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 64
    .local v3, "id":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 63
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    return-object v1

    .line 69
    .end local v1    # "chainedStyle":Landroidx/media3/extractor/text/ttml/TtmlStyle;
    :cond_3
    if-eqz p1, :cond_4

    array-length v2, p1

    if-ne v2, v1, :cond_4

    .line 71
    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0

    .line 72
    :cond_4
    if-eqz p1, :cond_6

    array-length v2, p1

    if-le v2, v1, :cond_6

    .line 74
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 75
    .local v2, "id":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/ttml/TtmlStyle;

    invoke-virtual {p0, v3}, Landroidx/media3/extractor/text/ttml/TtmlStyle;->chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)Landroidx/media3/extractor/text/ttml/TtmlStyle;

    .line 74
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_5
    return-object p0

    .line 81
    :cond_6
    return-object p0
.end method
