.class public final Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;
.super Ljava/lang/Object;
.source "ImeEditCommand.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImeEditCommand.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImeEditCommand.android.kt\nandroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 3 MathUtils.kt\nandroidx/compose/foundation/text/input/internal/MathUtilsKt\n+ 4 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n*L\n1#1,486:1\n97#2,4:487\n97#2,4:498\n25#3,3:491\n32#3,4:494\n101#4,10:502\n101#4,10:512\n*S KotlinDebug\n*F\n+ 1 ImeEditCommand.android.kt\nandroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt\n*L\n277#1:487,4\n323#1:498,4\n291#1:491,3\n298#1:494,4\n386#1:502,10\n387#1:512,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0000\u001a8\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001a\u0008\u0002\u0010\u000b\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u000e0\rj\u0002`\u000f\u0018\u00010\u000cH\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0000\u001a\u000c\u0010\u0014\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u001c\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u001a$\u0010\u001b\u001a\u00020\u0001*\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u001dH\u0001\u001a\u001c\u0010\u001e\u001a\u00020\u0001*\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "commitText",
        "",
        "Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;",
        "text",
        "",
        "newCursorPosition",
        "",
        "setComposingRegion",
        "start",
        "end",
        "setComposingText",
        "annotations",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
        "Landroidx/compose/foundation/text/input/PlacedAnnotation;",
        "deleteSurroundingText",
        "lengthBeforeCursor",
        "lengthAfterCursor",
        "deleteSurroundingTextInCodePoints",
        "finishComposingText",
        "setSelection",
        "isSurrogatePair",
        "",
        "high",
        "",
        "low",
        "imeReplace",
        "Landroidx/compose/foundation/text/input/TextFieldBuffer;",
        "",
        "imeDelete",
        "foundation"
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
.method public static final commitText(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Ljava/lang/String;I)V
    .locals 1
    .param p0, "$this$commitText"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I

    .line 149
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 173
    return-void
.end method

.method static final commitText$lambda$0(Ljava/lang/String;ILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 5
    .param p0, "$text"    # Ljava/lang/String;
    .param p1, "$newCursorPosition"    # I
    .param p2, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 152
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getComposition-MzsxiRA$foundation()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    .line 153
    .local v0, "compositionRange":Landroidx/compose/ui/text/TextRange;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeReplace(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v1, v2, v3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeReplace(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;)V

    .line 162
    :goto_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    .line 166
    .local v1, "newCursor":I
    if-lez p1, :cond_1

    .line 167
    add-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 169
    :cond_1
    add-int v2, v1, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 166
    :goto_1
    nop

    .line 165
    nop

    .line 172
    .local v2, "newCursorInBuffer":I
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v4

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setSelection-5zc-tL8(J)V

    .line 173
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method

.method public static final deleteSurroundingText(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 1
    .param p0, "$this$deleteSurroundingText"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "lengthBeforeCursor"    # I
    .param p2, "lengthAfterCursor"    # I

    .line 276
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda4;-><init>(IILandroidx/compose/foundation/text/input/internal/ImeEditCommandScope;)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 303
    return-void
.end method

.method static final deleteSurroundingText$lambda$0(IILandroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Landroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 12
    .param p0, "$lengthBeforeCursor"    # I
    .param p1, "$lengthAfterCursor"    # I
    .param p2, "$this_deleteSurroundingText"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p3, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 277
    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 487
    .local v2, "$i$f$requirePrecondition":I
    if-nez v1, :cond_1

    .line 488
    const/4 v3, 0x0

    .line 278
    .local v3, "$i$a$-requirePrecondition-ImeEditCommand_androidKt$deleteSurroundingText$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    nop

    .line 278
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    nop

    .line 278
    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    nop

    .line 278
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    nop

    .line 278
    const-string v5, " respectively."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    nop

    .line 488
    .end local v3    # "$i$a$-requirePrecondition-ImeEditCommand_androidKt$deleteSurroundingText$1$1":I
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 490
    :cond_1
    nop

    .line 287
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->mapToTransformed-GEjPoXI(J)J

    move-result-wide v1

    .line 291
    .local v1, "transformedSelection":J
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    .local v3, "$this$addExactOrElse$iv":I
    move v4, p1

    .local v4, "right$iv":I
    const/4 v5, 0x0

    .line 491
    .local v5, "$i$f$addExactOrElse":I
    add-int v6, v3, v4

    .line 493
    .local v6, "result$iv":I
    xor-int v7, v3, v6

    xor-int v8, v4, v6

    and-int/2addr v7, v8

    if-gez v7, :cond_2

    const/4 v7, 0x0

    .line 291
    .local v7, "$i$a$-addExactOrElse-ImeEditCommand_androidKt$deleteSurroundingText$1$end$1":I
    invoke-interface {p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->getTransformedLength()I

    move-result v7

    .line 493
    .end local v7    # "$i$a$-addExactOrElse-ImeEditCommand_androidKt$deleteSurroundingText$1$end$1":I
    move v6, v7

    .line 291
    .end local v3    # "$this$addExactOrElse$iv":I
    .end local v4    # "right$iv":I
    .end local v5    # "$i$f$addExactOrElse":I
    .end local v6    # "result$iv":I
    :cond_2
    nop

    .line 293
    .local v6, "end":I
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-interface {p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->getTransformedLength()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v3

    .line 292
    nop

    .line 294
    .local v3, "untransformedDeleteRangeAfter":J
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v5

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    invoke-static {p3, v5, v7}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeDelete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 298
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    .local v5, "$this$subtractExactOrElse$iv":I
    move v7, p0

    .local v7, "right$iv":I
    const/4 v8, 0x0

    .line 494
    .local v8, "$i$f$subtractExactOrElse":I
    sub-int v9, v5, v7

    .line 497
    .local v9, "result$iv":I
    xor-int v10, v5, v7

    xor-int v11, v5, v9

    and-int/2addr v10, v11

    if-gez v10, :cond_3

    const/4 v10, 0x0

    .line 298
    .local v10, "$i$a$-subtractExactOrElse-ImeEditCommand_androidKt$deleteSurroundingText$1$start$1":I
    nop

    .line 497
    .end local v10    # "$i$a$-subtractExactOrElse-ImeEditCommand_androidKt$deleteSurroundingText$1$start$1":I
    move v9, v0

    .line 298
    .end local v5    # "$this$subtractExactOrElse$iv":I
    .end local v7    # "right$iv":I
    .end local v8    # "$i$f$subtractExactOrElse":I
    .end local v9    # "result$iv":I
    :cond_3
    nop

    .line 300
    .local v9, "start":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v7

    invoke-interface {p2, v7, v8}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v7

    .line 299
    nop

    .line 301
    .local v7, "untransformedDeleteRangeBefore":J
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-static {p3, v0, v5}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeDelete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 302
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final deleteSurroundingTextInCodePoints(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 1
    .param p0, "$this$deleteSurroundingTextInCodePoints"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "lengthBeforeCursor"    # I
    .param p2, "lengthAfterCursor"    # I

    .line 322
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 366
    return-void
.end method

.method static final deleteSurroundingTextInCodePoints$lambda$0(IILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 8
    .param p0, "$lengthBeforeCursor"    # I
    .param p1, "$lengthAfterCursor"    # I
    .param p2, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 323
    const/4 v0, 0x1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 498
    .local v2, "$i$f$requirePrecondition":I
    if-nez v1, :cond_1

    .line 499
    const/4 v3, 0x0

    .line 324
    .local v3, "$i$a$-requirePrecondition-ImeEditCommand_androidKt$deleteSurroundingTextInCodePoints$1$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    nop

    .line 324
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    nop

    .line 324
    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    nop

    .line 324
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 325
    nop

    .line 324
    const-string v5, " respectively."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    nop

    .line 499
    .end local v3    # "$i$a$-requirePrecondition-ImeEditCommand_androidKt$deleteSurroundingTextInCodePoints$1$1":I
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 501
    :cond_1
    nop

    .line 330
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    const/4 v1, 0x0

    .line 331
    .local v1, "beforeLenInChars":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p0, :cond_4

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 333
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    if-le v3, v1, :cond_3

    .line 334
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 335
    .local v3, "lead":C
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 337
    .local v4, "trail":C
    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    nop

    .end local v3    # "lead":C
    .end local v4    # "trail":C
    add-int/lit8 v1, v1, 0x1

    .line 331
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    .line 343
    nop

    .line 347
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .line 348
    .local v2, "afterLenInChars":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_7

    .line 349
    add-int/lit8 v2, v2, 0x1

    .line 350
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 351
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 352
    .local v4, "lead":C
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v6

    add-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 354
    .local v5, "trail":C
    invoke-static {v4, v5}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 355
    nop

    .end local v4    # "lead":C
    .end local v5    # "trail":C
    add-int/lit8 v2, v2, 0x1

    .line 348
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 359
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    sub-int v2, v0, v4

    .line 360
    nop

    .line 364
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p2, v0, v3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeDelete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 365
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-static {p2, v0, v3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeDelete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 366
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final finishComposingText(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;)V
    .locals 1
    .param p0, "$this$finishComposingText"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

    .line 376
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final finishComposingText$lambda$0(Landroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 376
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->commitComposition$foundation()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final imeDelete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V
    .locals 14
    .param p0, "$this$imeDelete"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 468
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getComposition-MzsxiRA$foundation()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    .line 470
    .local v0, "initialComposition":Landroidx/compose/ui/text/TextRange;
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 471
    .local v1, "min":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 473
    .local v2, "max":I
    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->delete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 477
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v9

    .local v9, "it":J
    const/4 v11, 0x0

    .line 478
    .local v11, "$i$a$-let-ImeEditCommand_androidKt$imeDelete$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v2, v6}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->adjustTextRange-vJH6DeI(JIII)J

    move-result-wide v12

    .line 479
    .local v12, "adjustedComposition":J
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->commitComposition$foundation()V

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setComposition$foundation$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/util/List;ILjava/lang/Object;)V

    .line 484
    :goto_0
    nop

    .line 477
    .end local v9    # "it":J
    .end local v11    # "$i$a$-let-ImeEditCommand_androidKt$imeDelete$1":I
    .end local v12    # "adjustedComposition":J
    nop

    .line 485
    :cond_1
    return-void
.end method

.method public static final imeReplace(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;)V
    .locals 9
    .param p0, "$this$imeReplace"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 416
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 417
    .local v0, "min":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 434
    .local v1, "max":I
    const/4 v2, 0x0

    .line 435
    .local v2, "i":I
    move v3, v0

    .line 436
    .local v3, "cMin":I
    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 437
    add-int/lit8 v2, v2, 0x1

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 442
    .local v4, "j":I
    move v5, v1

    .line 443
    .local v5, "cMax":I
    :goto_1
    if-le v5, v3, :cond_1

    if-le v4, v2, :cond_1

    add-int/lit8 v6, v4, -0x1

    invoke-interface {p3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->asCharSequence()Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_1

    .line 444
    add-int/lit8 v4, v4, -0x1

    .line 445
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 448
    :cond_1
    if-ne v3, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_2

    .line 452
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->commitComposition$foundation()V

    .line 453
    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->clearHighlight$foundation()V

    goto :goto_3

    .line 449
    :cond_3
    :goto_2
    invoke-interface {p3, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 459
    :goto_3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setSelection-5zc-tL8(J)V

    .line 460
    return-void
.end method

.method private static final isSurrogatePair(CC)Z
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C

    .line 396
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setComposingRegion(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 1
    .param p0, "$this$setComposingRegion"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 184
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda6;-><init>(II)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 201
    return-void
.end method

.method static final setComposingRegion$lambda$0(IILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 9
    .param p0, "$start"    # I
    .param p1, "$end"    # I
    .param p2, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 187
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->hasComposition$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->commitComposition$foundation()V

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 193
    .local v3, "clampedStart":I
    invoke-virtual {p2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    .line 194
    .local v4, "clampedEnd":I
    if-eq v3, v4, :cond_2

    .line 196
    if-ge v3, v4, :cond_1

    .line 197
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    .end local p2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .local v2, "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setComposition$foundation$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .restart local p2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :cond_1
    move-object v2, p2

    .end local p2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .restart local v2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v8, v4

    move v4, v3

    move v3, v8

    .local v3, "clampedEnd":I
    .local v4, "clampedStart":I
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setComposition$foundation$default(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/util/List;ILjava/lang/Object;)V

    move v8, v4

    move v4, v3

    move v3, v8

    .local v3, "clampedStart":I
    .local v4, "clampedEnd":I
    goto :goto_0

    .line 194
    .end local v2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .restart local p2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :cond_2
    move-object v2, p2

    .line 201
    .end local p2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .restart local v2    # "$this$edit":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :goto_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method public static final setComposingText(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p0, "$this$setComposingText"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I
    .param p3, "annotations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;)V"
        }
    .end annotation

    .line 219
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p3, p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 254
    return-void
.end method

.method public static synthetic setComposingText$default(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 215
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 218
    const/4 p3, 0x0

    .line 215
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->setComposingText(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method static final setComposingText$lambda$0(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 6
    .param p0, "$text"    # Ljava/lang/String;
    .param p1, "$annotations"    # Ljava/util/List;
    .param p2, "$newCursorPosition"    # I
    .param p3, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 220
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getComposition-MzsxiRA$foundation()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    .line 221
    .local v0, "compositionRange":Landroidx/compose/ui/text/TextRange;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p3, v3, v4, v5}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeReplace(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;)V

    .line 224
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 225
    nop

    .line 226
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    .line 227
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 228
    nop

    .line 225
    invoke-virtual {p3, v3, v4, p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setComposition$foundation(IILjava/util/List;)V

    goto :goto_2

    .line 234
    :cond_1
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    .line 235
    .local v3, "initialSelectionStart":I
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p3, v3, v4, v5}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->imeReplace(Landroidx/compose/foundation/text/input/TextFieldBuffer;IILjava/lang/CharSequence;)V

    .line 236
    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p3, v3, v4, p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setComposition$foundation(IILjava/util/List;)V

    .line 243
    .end local v3    # "initialSelectionStart":I
    :cond_3
    :goto_2
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    .line 247
    .local v3, "newCursor":I
    if-lez p2, :cond_4

    .line 248
    add-int v4, v3, p2

    sub-int/2addr v4, v1

    goto :goto_3

    .line 250
    :cond_4
    add-int v1, v3, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v1, v4

    .line 247
    :goto_3
    nop

    .line 246
    nop

    .line 253
    .local v4, "newCursorInBuffer":I
    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-static {v4, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setSelection-5zc-tL8(J)V

    .line 254
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public static final setSelection(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 1
    .param p0, "$this$setSelection"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 382
    new-instance v0, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->edit(Lkotlin/jvm/functions/Function1;)V

    .line 389
    return-void
.end method

.method static final setSelection$lambda$0(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;IILandroidx/compose/foundation/text/input/TextFieldBuffer;)Lkotlin/Unit;
    .locals 10
    .param p0, "$this_setSelection"    # Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;
    .param p1, "$start"    # I
    .param p2, "$end"    # I
    .param p3, "$this$edit"    # Landroidx/compose/foundation/text/input/TextFieldBuffer;

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->mapToTransformed-GEjPoXI(J)J

    move-result-wide v0

    .line 386
    .local v0, "transformedSpaceLength":J
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    .local v2, "minimumValue$iv":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    .local v3, "maximumValue$iv":I
    move v4, p1

    .local v4, "$this$fastCoerceIn$iv":I
    const/4 v5, 0x0

    .line 502
    .local v5, "$i$f$fastCoerceIn":I
    move v6, v2

    .local v6, "minimumValue$iv$iv":I
    move v7, v4

    .local v7, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v8, 0x0

    .line 506
    .local v8, "$i$f$fastCoerceAtLeast":I
    if-ge v7, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    .line 502
    .end local v6    # "minimumValue$iv$iv":I
    .end local v7    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v8    # "$i$f$fastCoerceAtLeast":I
    :goto_0
    move v7, v3

    .local v6, "$this$fastCoerceAtMost$iv$iv":I
    .local v7, "maximumValue$iv$iv":I
    const/4 v8, 0x0

    .line 511
    .local v8, "$i$f$fastCoerceAtMost":I
    if-le v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v6

    .line 502
    .end local v6    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v7    # "maximumValue$iv$iv":I
    .end local v8    # "$i$f$fastCoerceAtMost":I
    :goto_1
    nop

    .line 386
    .end local v2    # "minimumValue$iv":I
    .end local v3    # "maximumValue$iv":I
    .end local v4    # "$this$fastCoerceIn$iv":I
    .end local v5    # "$i$f$fastCoerceIn":I
    nop

    .line 387
    .local v7, "clampedStart":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    .restart local v2    # "minimumValue$iv":I
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    .restart local v3    # "maximumValue$iv":I
    move v4, p2

    .restart local v4    # "$this$fastCoerceIn$iv":I
    const/4 v5, 0x0

    .line 512
    .restart local v5    # "$i$f$fastCoerceIn":I
    move v6, v2

    .local v6, "minimumValue$iv$iv":I
    move v8, v4

    .local v8, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v9, 0x0

    .line 516
    .local v9, "$i$f$fastCoerceAtLeast":I
    if-ge v8, v6, :cond_2

    move v8, v6

    .line 512
    .end local v6    # "minimumValue$iv$iv":I
    .end local v8    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtLeast":I
    :cond_2
    move v6, v3

    .local v6, "maximumValue$iv$iv":I
    .local v8, "$this$fastCoerceAtMost$iv$iv":I
    const/4 v9, 0x0

    .line 521
    .local v9, "$i$f$fastCoerceAtMost":I
    if-le v8, v6, :cond_3

    move v8, v6

    .line 512
    .end local v6    # "maximumValue$iv$iv":I
    .end local v8    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v9    # "$i$f$fastCoerceAtMost":I
    :cond_3
    nop

    .line 387
    .end local v2    # "minimumValue$iv":I
    .end local v3    # "maximumValue$iv":I
    .end local v4    # "$this$fastCoerceIn$iv":I
    .end local v5    # "$i$f$fastCoerceIn":I
    nop

    .line 388
    .local v8, "clampedEnd":I
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;->mapFromTransformed-GEjPoXI(J)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setSelection-5zc-tL8(J)V

    .line 389
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method
