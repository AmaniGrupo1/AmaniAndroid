.class public final Landroidx/compose/ui/text/TextRangeKt;
.super Ljava/lang/Object;
.source "TextRange.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextRange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRange.kt\nandroidx/compose/ui/text/TextRangeKt\n+ 2 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/text/internal/InlineClassHelperKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,123:1\n101#2,10:124\n101#2,10:134\n118#3,4:144\n80#4:148\n*S KotlinDebug\n*F\n+ 1 TextRange.kt\nandroidx/compose/ui/text/TextRangeKt\n*L\n109#1:124,10\n110#1:134,10\n118#1:144,4\n121#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\t\n\u0000\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001b\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000b\u001a\u0013\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0002\u0010\r\u001a!\u0010\u000e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "substring",
        "",
        "",
        "range",
        "Landroidx/compose/ui/text/TextRange;",
        "substring-FDrldGo",
        "(Ljava/lang/CharSequence;J)Ljava/lang/String;",
        "TextRange",
        "start",
        "",
        "end",
        "(II)J",
        "index",
        "(I)J",
        "coerceIn",
        "minimumValue",
        "maximumValue",
        "coerceIn-8ffj60Q",
        "(JII)J",
        "packWithCheck",
        "",
        "ui-text"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final TextRange(I)J
    .locals 2
    .param p0, "index"    # I

    .line 97
    invoke-static {p0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final TextRange(II)J
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 41
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->packWithCheck(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final coerceIn-8ffj60Q(JII)J
    .locals 8
    .param p0, "$v$c$androidx-compose-ui-text-TextRange$-$this$coerceIn$0"    # J
    .param p2, "minimumValue"    # I
    .param p3, "maximumValue"    # I

    .line 109
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    .local v0, "$this$fastCoerceIn$iv":I
    move v1, p3

    .local v1, "maximumValue$iv":I
    move v2, p2

    .local v2, "minimumValue$iv":I
    const/4 v3, 0x0

    .line 124
    .local v3, "$i$f$fastCoerceIn":I
    move v4, v2

    .local v4, "minimumValue$iv$iv":I
    move v5, v0

    .local v5, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v6, 0x0

    .line 128
    .local v6, "$i$f$fastCoerceAtLeast":I
    if-ge v5, v4, :cond_0

    move v5, v4

    .line 124
    .end local v4    # "minimumValue$iv$iv":I
    .end local v5    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v6    # "$i$f$fastCoerceAtLeast":I
    :cond_0
    move v4, v1

    .local v4, "maximumValue$iv$iv":I
    .local v5, "$this$fastCoerceAtMost$iv$iv":I
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$f$fastCoerceAtMost":I
    if-le v5, v4, :cond_1

    move v5, v4

    .line 124
    .end local v4    # "maximumValue$iv$iv":I
    .end local v5    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v6    # "$i$f$fastCoerceAtMost":I
    :cond_1
    nop

    .line 109
    .end local v0    # "$this$fastCoerceIn$iv":I
    .end local v1    # "maximumValue$iv":I
    .end local v2    # "minimumValue$iv":I
    .end local v3    # "$i$f$fastCoerceIn":I
    nop

    .line 110
    .local v5, "newStart":I
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    .restart local v0    # "$this$fastCoerceIn$iv":I
    move v1, p3

    .restart local v1    # "maximumValue$iv":I
    move v2, p2

    .restart local v2    # "minimumValue$iv":I
    const/4 v3, 0x0

    .line 134
    .restart local v3    # "$i$f$fastCoerceIn":I
    move v4, v2

    .local v4, "minimumValue$iv$iv":I
    move v6, v0

    .local v6, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v7, 0x0

    .line 138
    .local v7, "$i$f$fastCoerceAtLeast":I
    if-ge v6, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v6

    .line 134
    .end local v4    # "minimumValue$iv$iv":I
    .end local v6    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v7    # "$i$f$fastCoerceAtLeast":I
    :goto_0
    move v6, v1

    .local v4, "$this$fastCoerceAtMost$iv$iv":I
    .local v6, "maximumValue$iv$iv":I
    const/4 v7, 0x0

    .line 143
    .local v7, "$i$f$fastCoerceAtMost":I
    if-le v4, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v4

    .line 134
    .end local v4    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v6    # "maximumValue$iv$iv":I
    .end local v7    # "$i$f$fastCoerceAtMost":I
    :goto_1
    nop

    .line 110
    .end local v0    # "$this$fastCoerceIn$iv":I
    .end local v1    # "maximumValue$iv":I
    .end local v2    # "minimumValue$iv":I
    .end local v3    # "$i$f$fastCoerceIn":I
    nop

    .line 111
    .local v6, "newEnd":I
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    if-ne v5, v0, :cond_5

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    if-eq v6, v0, :cond_4

    goto :goto_2

    .line 114
    :cond_4
    return-wide p0

    .line 112
    :cond_5
    :goto_2
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final packWithCheck(II)J
    .locals 9
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 118
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 119
    .local v2, "$i$a$-requirePrecondition-TextRangeKt$packWithCheck$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start and end cannot be negative. [start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .end local v2    # "$i$a$-requirePrecondition-TextRangeKt$packWithCheck$1":I
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 147
    :cond_1
    nop

    .line 121
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    move v0, p1

    .local v0, "val2$iv":I
    move v1, p0

    .local v1, "val1$iv":I
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$f$packInts":I
    int-to-long v3, v1

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long v0, v3, v5

    .line 121
    .end local v0    # "val2$iv":I
    .end local v1    # "val1$iv":I
    .end local v2    # "$i$f$packInts":I
    return-wide v0
.end method

.method public static final substring-FDrldGo(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 2
    .param p0, "$this$substring_u2dFDrldGo"    # Ljava/lang/CharSequence;
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-range$0"    # J

    .line 28
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
