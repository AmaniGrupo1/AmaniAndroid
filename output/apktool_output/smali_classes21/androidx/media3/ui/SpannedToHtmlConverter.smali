.class final Landroidx/media3/ui/SpannedToHtmlConverter;
.super Ljava/lang/Object;
.source "SpannedToHtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;,
        Landroidx/media3/ui/SpannedToHtmlConverter$Transition;,
        Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    }
.end annotation


# static fields
.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "(&#13;)?&#10;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/CharSequence;F)Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;
    .locals 13
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "displayDensity"    # F

    .line 84
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 85
    new-instance v1, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    const-string v2, ""

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    return-object v1

    .line 87
    :cond_0
    instance-of v1, p0, Landroid/text/Spanned;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {p0}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    return-object v1

    .line 90
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 93
    .local v1, "spanned":Landroid/text/Spanned;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v2, "backgroundColors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Landroid/text/style/BackgroundColorSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/BackgroundColorSpan;

    array-length v4, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 96
    .local v6, "backgroundColorSpan":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v6    # "backgroundColorSpan":Landroid/text/style/BackgroundColorSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v3, "cssRuleSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 100
    .local v5, "backgroundColor":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bg_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-static {v5}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "background-color:%s;"

    invoke-static {v8, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v5    # "backgroundColor":I
    goto :goto_1

    .line 105
    :cond_3
    invoke-static {v1, p1}, Landroidx/media3/ui/SpannedToHtmlConverter;->findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    move-result-object v4

    .line 106
    .local v4, "spanTransitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/ui/SpannedToHtmlConverter$Transition;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v5, "html":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 108
    .local v6, "previousTransition":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 109
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 110
    .local v8, "index":I
    invoke-interface {v1, v6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 113
    .local v9, "transition":Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$200()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 115
    .local v11, "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    iget-object v12, v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .end local v11    # "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    goto :goto_3

    .line 117
    :cond_4
    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-static {}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->access$400()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    .line 119
    .restart local v11    # "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    iget-object v12, v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v11    # "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    goto :goto_4

    .line 121
    :cond_5
    move v6, v8

    .line 108
    .end local v8    # "index":I
    .end local v9    # "transition":Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 124
    .end local v7    # "i":I
    :cond_6
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v7, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3, v0}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    return-object v7
.end method

.method private static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 303
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "escaped":Ljava/lang/String;
    sget-object v1, Landroidx/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findSpanTransitions(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .locals 11
    .param p0, "spanned"    # Landroid/text/Spanned;
    .param p1, "displayDensity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "F)",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 133
    .local v0, "spanTransitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/ui/SpannedToHtmlConverter$Transition;>;"
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 134
    .local v4, "span":Ljava/lang/Object;
    invoke-static {v4, p1}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "openingTag":Ljava/lang/String;
    invoke-static {v4}, Landroidx/media3/ui/SpannedToHtmlConverter;->getClosingTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "closingTag":Ljava/lang/String;
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 137
    .local v6, "spanStart":I
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 138
    .local v7, "spanEnd":I
    if-eqz v8, :cond_0

    .line 139
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v5, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroidx/media3/ui/SpannedToHtmlConverter$1;)V

    .line 141
    .local v5, "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    invoke-static {v0, v6}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$300(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v0, v7}, Landroidx/media3/ui/SpannedToHtmlConverter;->getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->access$100(Landroidx/media3/ui/SpannedToHtmlConverter$Transition;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4    # "span":Ljava/lang/Object;
    .end local v5    # "spanInfo":Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    .end local v8    # "openingTag":Ljava/lang/String;
    .end local v9    # "closingTag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return-object v0
.end method

.method private static getClosingTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "span"    # Ljava/lang/Object;

    .line 218
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    const-string v1, "</span>"

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 227
    move-object v0, p0

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    return-object v1

    .line 229
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_2
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_3

    .line 230
    move-object v0, p0

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    goto :goto_1

    :pswitch_0
    const-string v0, "</i></b>"

    return-object v0

    .line 234
    :pswitch_1
    const-string v0, "</i>"

    return-object v0

    .line 232
    :pswitch_2
    const-string v0, "</b>"

    return-object v0

    .line 238
    :cond_3
    instance-of v0, p0, Landroidx/media3/common/text/RubySpan;

    if-eqz v0, :cond_4

    .line 239
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/text/RubySpan;

    .line 240
    .local v0, "rubySpan":Landroidx/media3/common/text/RubySpan;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<rt>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rt></ruby>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    .end local v0    # "rubySpan":Landroidx/media3/common/text/RubySpan;
    :cond_4
    instance-of v0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_5

    .line 242
    const-string v0, "</u>"

    return-object v0

    .line 244
    :cond_5
    :goto_1
    return-object v2

    .line 225
    :cond_6
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOpeningTag(Ljava/lang/Object;F)Ljava/lang/String;
    .locals 5
    .param p0, "span"    # Ljava/lang/Object;
    .param p1, "displayDensity"    # F

    .line 151
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "<span style=\'text-decoration:line-through;\'>"

    return-object v0

    .line 153
    :cond_0
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_1

    .line 154
    move-object v0, p0

    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 155
    .local v0, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    nop

    .line 156
    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 155
    const-string v2, "<span style=\'color:%s;\'>"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 157
    .end local v0    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_1
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_2

    .line 158
    move-object v0, p0

    check-cast v0, Landroid/text/style/BackgroundColorSpan;

    .line 159
    .local v0, "colorSpan":Landroid/text/style/BackgroundColorSpan;
    invoke-virtual {v0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<span class=\'bg_%s\'>"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "colorSpan":Landroid/text/style/BackgroundColorSpan;
    :cond_2
    instance-of v0, p0, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "<span style=\'text-combine-upright:all;\'>"

    return-object v0

    .line 162
    :cond_3
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_5

    .line 163
    move-object v0, p0

    check-cast v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 165
    .local v0, "absoluteSizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {v0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    :goto_0
    nop

    .line 168
    .local v1, "sizeCssPx":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 169
    .end local v0    # "absoluteSizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    .end local v1    # "sizeCssPx":F
    :cond_5
    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-eqz v0, :cond_6

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/text/style/RelativeSizeSpan;

    .line 171
    invoke-virtual {v0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    const-string v1, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_6
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 173
    move-object v0, p0

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 175
    const-string v1, "<span style=\'font-family:\"%s\";\'>"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 176
    :cond_7
    nop

    .line 174
    :goto_1
    return-object v1

    .line 177
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_8
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_9

    .line 178
    move-object v0, p0

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    return-object v1

    .line 184
    :pswitch_0
    const-string v0, "<b><i>"

    return-object v0

    .line 182
    :pswitch_1
    const-string v0, "<i>"

    return-object v0

    .line 180
    :pswitch_2
    const-string v0, "<b>"

    return-object v0

    .line 188
    :cond_9
    instance-of v0, p0, Landroidx/media3/common/text/RubySpan;

    if-eqz v0, :cond_a

    .line 189
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/text/RubySpan;

    .line 190
    .local v0, "rubySpan":Landroidx/media3/common/text/RubySpan;
    iget v2, v0, Landroidx/media3/common/text/RubySpan;->position:I

    packed-switch v2, :pswitch_data_1

    .line 198
    :pswitch_3
    return-object v1

    .line 194
    :pswitch_4
    const-string v1, "<ruby style=\'ruby-position:under;\'>"

    return-object v1

    .line 192
    :pswitch_5
    const-string v1, "<ruby style=\'ruby-position:over;\'>"

    return-object v1

    .line 196
    :pswitch_6
    const-string v1, "<ruby style=\'ruby-position:unset;\'>"

    return-object v1

    .line 200
    .end local v0    # "rubySpan":Landroidx/media3/common/text/RubySpan;
    :cond_a
    instance-of v0, p0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_b

    .line 201
    const-string v0, "<u>"

    return-object v0

    .line 202
    :cond_b
    instance-of v0, p0, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v0, :cond_c

    .line 203
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 204
    .local v0, "textEmphasisSpan":Landroidx/media3/common/text/TextEmphasisSpan;
    iget v1, v0, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    iget v2, v0, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    invoke-static {v1, v2}, Landroidx/media3/ui/SpannedToHtmlConverter;->getTextEmphasisStyle(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "style":Ljava/lang/String;
    iget v2, v0, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    invoke-static {v2}, Landroidx/media3/ui/SpannedToHtmlConverter;->getTextEmphasisPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "position":Ljava/lang/String;
    const-string v3, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 212
    .end local v0    # "textEmphasisSpan":Landroidx/media3/common/text/TextEmphasisSpan;
    .end local v1    # "style":Ljava/lang/String;
    .end local v2    # "position":Ljava/lang/String;
    :cond_c
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static getOrCreate(Landroid/util/SparseArray;I)Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;",
            ">;I)",
            "Landroidx/media3/ui/SpannedToHtmlConverter$Transition;"
        }
    .end annotation

    .line 294
    .local p0, "transitions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/media3/ui/SpannedToHtmlConverter$Transition;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    .line 295
    .local v0, "transition":Landroidx/media3/ui/SpannedToHtmlConverter$Transition;
    if-nez v0, :cond_0

    .line 296
    new-instance v1, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v1}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    move-object v0, v1

    .line 297
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    :cond_0
    return-object v0
.end method

.method private static getTextEmphasisPosition(I)Ljava/lang/String;
    .locals 1
    .param p0, "position"    # I

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 289
    const-string/jumbo v0, "over right"

    return-object v0

    .line 285
    :pswitch_0
    const-string/jumbo v0, "under left"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextEmphasisStyle(II)Ljava/lang/String;
    .locals 2
    .param p0, "shape"    # I
    .param p1, "fill"    # I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    const-string/jumbo v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    goto :goto_0

    .line 252
    :pswitch_1
    const-string v1, "filled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    nop

    .line 262
    :goto_0
    packed-switch p0, :pswitch_data_1

    .line 276
    const-string/jumbo v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 270
    :pswitch_2
    const-string/jumbo v1, "sesame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    goto :goto_1

    .line 267
    :pswitch_3
    const-string v1, "dot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    goto :goto_1

    .line 264
    :pswitch_4
    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    goto :goto_1

    .line 273
    :pswitch_5
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    nop

    .line 279
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
