.class public final Landroidx/compose/foundation/text/input/TextFieldStateKt;
.super Ljava/lang/Object;
.source "TextFieldState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldStateKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldState\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,781:1\n1128#2,6:782\n172#3,8:788\n172#3,8:796\n172#3,8:804\n519#4:812\n1#5:813\n*S KotlinDebug\n*F\n+ 1 TextFieldState.kt\nandroidx/compose/foundation/text/input/TextFieldStateKt\n*L\n661#1:782,6\n681#1:788,8\n705#1:796,8\n727#1:804,8\n744#1:812\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a#\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0012\u0010\u0008\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0003\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\u00012\u0006\u0010\n\u001a\u00020\u0003\u001a\n\u0010\u000c\u001a\u00020\t*\u00020\u0001\u001aA\u0010\r\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u00110\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u0013\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00100\u000fj\u0002`\u0011\u0018\u00010\u0014H\u0002\u00a2\u0006\u0002\u0008\u0015\u001a\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "rememberTextFieldState",
        "Landroidx/compose/foundation/text/input/TextFieldState;",
        "initialText",
        "",
        "initialSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "rememberTextFieldState-Le-punE",
        "(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text/input/TextFieldState;",
        "setTextAndPlaceCursorAtEnd",
        "",
        "text",
        "setTextAndSelectAll",
        "clearText",
        "finalizeComposingAnnotations",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
        "Landroidx/compose/foundation/text/input/PlacedAnnotation;",
        "composition",
        "annotationList",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "finalizeComposingAnnotations-itr0ztk",
        "toTextFieldBuffer",
        "Landroidx/compose/foundation/text/input/TextFieldBuffer;",
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
.method public static synthetic $r8$lambda$VwpNrlwIb0RHFBtR_sNeGlnCzfI(Ljava/lang/String;J)Landroidx/compose/foundation/text/input/TextFieldState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/input/TextFieldStateKt;->rememberTextFieldState_Le_punE$lambda$0$0(Ljava/lang/String;J)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$finalizeComposingAnnotations-itr0ztk(Landroidx/compose/ui/text/TextRange;Landroidx/compose/runtime/collection/MutableVector;)Ljava/util/List;
    .locals 1
    .param p0, "composition"    # Landroidx/compose/ui/text/TextRange;
    .param p1, "annotationList"    # Landroidx/compose/runtime/collection/MutableVector;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/TextFieldStateKt;->finalizeComposingAnnotations-itr0ztk(Landroidx/compose/ui/text/TextRange;Landroidx/compose/runtime/collection/MutableVector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final clearText(Landroidx/compose/foundation/text/input/TextFieldState;)V
    .locals 7
    .param p0, "$this$clearText"    # Landroidx/compose/foundation/text/input/TextFieldState;

    .line 727
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    const/4 v1, 0x0

    .line 804
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->startEdit()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v2

    .line 805
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    nop

    .line 806
    move-object v3, v2

    .local v3, "$this$clearText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 728
    .local v4, "$i$a$-edit-TextFieldStateKt$clearText$1":I
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->delete(Landroidx/compose/foundation/text/input/TextFieldBuffer;II)V

    .line 729
    invoke-static {v3}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->placeCursorAtEnd(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 730
    nop

    .line 806
    .end local v3    # "$this$clearText_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$clearText$1":I
    nop

    .line 807
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    .line 810
    nop

    .line 811
    nop

    .line 731
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    return-void

    .line 809
    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .restart local v1    # "$i$f$edit":I
    .restart local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    throw v3
.end method

.method private static final finalizeComposingAnnotations-itr0ztk(Landroidx/compose/ui/text/TextRange;Landroidx/compose/runtime/collection/MutableVector;)Ljava/util/List;
    .locals 24
    .param p0, "composition"    # Landroidx/compose/ui/text/TextRange;
    .param p1, "annotationList"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextRange;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;"
        }
    .end annotation

    .line 743
    nop

    .line 744
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 812
    .local v1, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 744
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$isNotEmpty":I
    :goto_0
    if-eqz v2, :cond_1

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 750
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 752
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 753
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v18

    const v22, 0xefff

    const/16 v23, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v23}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v2

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    .line 752
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 751
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 759
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 760
    :goto_1
    return-object v0
.end method

.method public static final rememberTextFieldState-Le-punE(Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/text/input/TextFieldState;
    .locals 9
    .param p0, "initialText"    # Ljava/lang/String;
    .param p1, "$v$c$androidx-compose-ui-text-TextRange$-initialSelection$0"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 661
    const v0, 0x431414ad

    const-string v1, "C(rememberTextFieldState)N(initialText,initialSelection:c#ui.text.TextRange)660@29526L49,660@29479L96:TextFieldState.kt#hp9ohv"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 658
    const-string p0, ""

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 659
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p5}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide p1

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.text.input.rememberTextFieldState (TextFieldState.kt:660)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Object;

    .line 661
    sget-object v1, Landroidx/compose/foundation/text/input/TextFieldState$Saver;->INSTANCE:Landroidx/compose/foundation/text/input/TextFieldState$Saver;

    check-cast v1, Landroidx/compose/runtime/saveable/Saver;

    const v2, -0x319e4a22

    const-string v3, "CC(remember):TextFieldState.kt#9igjgp"

    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p4, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-le v2, v3, :cond_3

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    and-int/lit8 v2, p4, 0x6

    if-ne v2, v3, :cond_5

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, p5

    :goto_0
    and-int/lit8 v3, p4, 0x70

    const/16 v5, 0x30

    xor-int/2addr v3, v5

    const/16 v6, 0x20

    if-le v3, v6, :cond_6

    invoke-interface {p3, p1, p2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    and-int/lit8 v3, p4, 0x30

    if-ne v3, v6, :cond_8

    :cond_7
    move p5, v4

    :cond_8
    or-int/2addr p5, v2

    .local p5, "invalid$iv":Z
    move-object v2, p3

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 782
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 783
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p5, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_9

    goto :goto_1

    .line 787
    :cond_9
    goto :goto_2

    .line 784
    :cond_a
    :goto_1
    const/4 v7, 0x0

    .line 661
    .local v7, "$i$a$-cache-TextFieldStateKt$rememberTextFieldState$1":I
    new-instance v8, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p1, p2}, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    .line 784
    .end local v7    # "$i$a$-cache-TextFieldStateKt$rememberTextFieldState$1":I
    nop

    .line 785
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 786
    move-object v4, v8

    .line 782
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 661
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v1, v4, p3, v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p5
.end method

.method private static final rememberTextFieldState_Le_punE$lambda$0$0(Ljava/lang/String;J)Landroidx/compose/foundation/text/input/TextFieldState;
    .locals 2
    .param p0, "$initialText"    # Ljava/lang/String;
    .param p1, "$$v$c$androidx-compose-ui-text-TextRange$-initialSelection$0"    # J

    .line 661
    new-instance v0, Landroidx/compose/foundation/text/input/TextFieldState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/text/input/TextFieldState;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final setTextAndPlaceCursorAtEnd(Landroidx/compose/foundation/text/input/TextFieldState;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$setTextAndPlaceCursorAtEnd"    # Landroidx/compose/foundation/text/input/TextFieldState;
    .param p1, "text"    # Ljava/lang/String;

    .line 681
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    const/4 v1, 0x0

    .line 788
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->startEdit()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v2

    .line 789
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    nop

    .line 790
    move-object v3, v2

    .local v3, "$this$setTextAndPlaceCursorAtEnd_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 682
    .local v4, "$i$a$-edit-TextFieldStateKt$setTextAndPlaceCursorAtEnd$1":I
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v5

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 683
    invoke-static {v3}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->placeCursorAtEnd(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 684
    nop

    .line 790
    .end local v3    # "$this$setTextAndPlaceCursorAtEnd_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$setTextAndPlaceCursorAtEnd$1":I
    nop

    .line 791
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    .line 794
    nop

    .line 795
    nop

    .line 685
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    return-void

    .line 793
    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .restart local v1    # "$i$f$edit":I
    .restart local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    throw v3
.end method

.method public static final setTextAndSelectAll(Landroidx/compose/foundation/text/input/TextFieldState;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$setTextAndSelectAll"    # Landroidx/compose/foundation/text/input/TextFieldState;
    .param p1, "text"    # Ljava/lang/String;

    .line 705
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    const/4 v1, 0x0

    .line 796
    .local v1, "$i$f$edit":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->startEdit()Landroidx/compose/foundation/text/input/TextFieldBuffer;

    move-result-object v2

    .line 797
    .local v2, "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    nop

    .line 798
    move-object v3, v2

    .local v3, "$this$setTextAndSelectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v4, 0x0

    .line 706
    .local v4, "$i$a$-edit-TextFieldStateKt$setTextAndSelectAll$1":I
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getLength()I

    move-result v5

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5, v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->replace(IILjava/lang/CharSequence;)V

    .line 707
    invoke-static {v3}, Landroidx/compose/foundation/text/input/TextFieldBufferKt;->selectAll(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V

    .line 708
    nop

    .line 798
    .end local v3    # "$this$setTextAndSelectAll_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v4    # "$i$a$-edit-TextFieldStateKt$setTextAndSelectAll$1":I
    nop

    .line 799
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/input/TextFieldState;->commitEdit(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    .line 802
    nop

    .line 803
    nop

    .line 709
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .end local v1    # "$i$f$edit":I
    .end local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    return-void

    .line 801
    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text/input/TextFieldState;
    .restart local v1    # "$i$f$edit":I
    .restart local v2    # "mutableValue$iv":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/TextFieldState;->finishEditing()V

    throw v3
.end method

.method public static final toTextFieldBuffer(Landroidx/compose/foundation/text/input/TextFieldState;)Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .locals 7
    .param p0, "$this$toTextFieldBuffer"    # Landroidx/compose/foundation/text/input/TextFieldState;

    .line 779
    new-instance v0, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldState;->getValue$foundation()Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    move-result-object v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/input/TextFieldBuffer;-><init>(Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/ChangeTracker;Landroidx/compose/foundation/text/input/TextFieldCharSequence;Landroidx/compose/foundation/text/input/internal/OffsetMappingCalculator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 813
    .local v1, "$this$toTextFieldBuffer_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    const/4 v2, 0x0

    .line 779
    .local v2, "$i$a$-apply-TextFieldStateKt$toTextFieldBuffer$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->setCanCallAddStyle$foundation(Z)V

    .end local v1    # "$this$toTextFieldBuffer_u24lambda_u240":Landroidx/compose/foundation/text/input/TextFieldBuffer;
    .end local v2    # "$i$a$-apply-TextFieldStateKt$toTextFieldBuffer$1":I
    return-object v0
.end method
