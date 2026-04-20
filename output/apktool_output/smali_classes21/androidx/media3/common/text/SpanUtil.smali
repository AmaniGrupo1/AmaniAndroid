.class public final Landroidx/media3/common/text/SpanUtil;
.super Ljava/lang/Object;
.source "SpanUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInheritedRelativeSizeSpan(Landroid/text/Spannable;FIII)V
    .locals 5
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "size"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanFlags"    # I

    .line 76
    const-class v0, Landroid/text/style/RelativeSizeSpan;

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/RelativeSizeSpan;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    .local v3, "existingSpan":Landroid/text/style/RelativeSizeSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gt v4, p2, :cond_0

    .line 78
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-lt v4, p3, :cond_0

    .line 79
    invoke-virtual {v3}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v4

    mul-float/2addr p1, v4

    .line 81
    :cond_0
    invoke-static {p0, v3, p2, p3, p4}, Landroidx/media3/common/text/SpanUtil;->removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 76
    .end local v3    # "existingSpan":Landroid/text/style/RelativeSizeSpan;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p0, v0, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    return-void
.end method

.method public static addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .locals 4
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanFlags"    # I

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "existingSpans":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 48
    .local v3, "existingSpan":Ljava/lang/Object;
    invoke-static {p0, v3, p2, p3, p4}, Landroidx/media3/common/text/SpanUtil;->removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47
    .end local v3    # "existingSpan":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 51
    return-void
.end method

.method private static removeIfStartEndAndFlagsMatch(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .locals 1
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanFlags"    # I

    .line 88
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 89
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 90
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p4, :cond_0

    .line 91
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
