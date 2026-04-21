.class public final Landroidx/compose/foundation/ScrollKt;
.super Ljava/lang/Object;
.source "Scroll.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,521:1\n1128#2,6:522\n*S KotlinDebug\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n*L\n72#1:522,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a2\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u001a<\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u001a2\u0010\u000f\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u001a<\u0010\u000f\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u001aJ\u0010\u0010\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "rememberScrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "initial",
        "",
        "(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;",
        "verticalScroll",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "enabled",
        "",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "reverseScrolling",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "horizontalScroll",
        "scroll",
        "isScrollable",
        "isVertical",
        "useLocalOverscrollFactory",
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
.method public static synthetic $r8$lambda$MvjEdKN_U2wrNSiUXmYsThAugWY(I)Landroidx/compose/foundation/ScrollState;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState$lambda$0$0(I)Landroidx/compose/foundation/ScrollState;

    move-result-object p0

    return-object p0
.end method

.method public static final horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 8
    .param p0, "$this$horizontalScroll"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p3, "enabled"    # Z
    .param p4, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p5, "reverseScrolling"    # Z

    .line 346
    nop

    .line 347
    nop

    .line 349
    nop

    .line 350
    nop

    .line 348
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 346
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v4, p3

    move-object v3, p4

    move v2, p5

    .end local p0    # "$this$horizontalScroll":Landroidx/compose/ui/Modifier;
    .end local p1    # "state":Landroidx/compose/foundation/ScrollState;
    .end local p2    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local p3    # "enabled":Z
    .end local p4    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p5    # "reverseScrolling":Z
    .local v0, "$this$horizontalScroll":Landroidx/compose/ui/Modifier;
    .local v1, "state":Landroidx/compose/foundation/ScrollState;
    .local v2, "reverseScrolling":Z
    .local v3, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v4, "enabled":Z
    .local v7, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ScrollKt;->scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 354
    return-object p0
.end method

.method public static final horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0, "$this$horizontalScroll"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "enabled"    # Z
    .param p3, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p4, "reverseScrolling"    # Z

    .line 311
    nop

    .line 312
    nop

    .line 314
    nop

    .line 315
    nop

    .line 313
    nop

    .line 316
    nop

    .line 317
    nop

    .line 311
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v3, p3

    move v2, p4

    .end local p0    # "$this$horizontalScroll":Landroidx/compose/ui/Modifier;
    .end local p1    # "state":Landroidx/compose/foundation/ScrollState;
    .end local p2    # "enabled":Z
    .end local p3    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p4    # "reverseScrolling":Z
    .local v0, "$this$horizontalScroll":Landroidx/compose/ui/Modifier;
    .local v1, "state":Landroidx/compose/foundation/ScrollState;
    .local v2, "reverseScrolling":Z
    .local v3, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v4, "enabled":Z
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ScrollKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 318
    return-object p0
.end method

.method public static synthetic horizontalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 339
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 342
    const/4 p3, 0x1

    move v3, p3

    goto :goto_0

    .line 339
    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 343
    const/4 p4, 0x0

    move-object v4, p4

    goto :goto_1

    .line 339
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 344
    const/4 p5, 0x0

    move v5, p5

    goto :goto_2

    .line 339
    :cond_2
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ScrollKt;->horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic horizontalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 305
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 307
    const/4 p2, 0x1

    .line 305
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 308
    const/4 p3, 0x0

    .line 305
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 309
    const/4 p4, 0x0

    .line 305
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;
    .locals 9
    .param p0, "initial"    # I
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 71
    const v0, -0x5746c6c7

    const-string v1, "C(rememberScrollState)N(initial)71@3346L34,71@3302L78:Scroll.kt#71ulvw"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.rememberScrollState (Scroll.kt:70)"

    invoke-static {v0, p2, p3, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    .line 72
    sget-object v2, Landroidx/compose/foundation/ScrollState;->Companion:Landroidx/compose/foundation/ScrollState$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/ScrollState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    const v3, 0x5f4fdd1b

    const-string v4, "CC(remember):Scroll.kt#9igjgp"

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, p2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    and-int/lit8 v3, p2, 0x6

    if-ne v3, v4, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v1, p3

    .local v1, "invalid$iv":Z
    :goto_0
    move-object v3, p1

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 522
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 523
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_6

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_5

    goto :goto_1

    .line 527
    :cond_5
    goto :goto_2

    .line 524
    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-cache-ScrollKt$rememberScrollState$1":I
    new-instance v8, Landroidx/compose/foundation/ScrollKt$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroidx/compose/foundation/ScrollKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 524
    .end local v7    # "$i$a$-cache-ScrollKt$rememberScrollState$1":I
    nop

    .line 525
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 526
    move-object v5, v8

    .line 522
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 72
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v2, v5, p1, p3}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/ScrollState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 71
    :cond_7
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 72
    return-object p3
.end method

.method private static final rememberScrollState$lambda$0$0(I)Landroidx/compose/foundation/ScrollState;
    .locals 1
    .param p0, "$initial"    # I

    .line 72
    new-instance v0, Landroidx/compose/foundation/ScrollState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    return-object v0
.end method

.method private static final scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;
    .locals 13
    .param p0, "$this$scroll"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "reverseScrolling"    # Z
    .param p3, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p4, "isScrollable"    # Z
    .param p5, "isVertical"    # Z
    .param p6, "useLocalOverscrollFactory"    # Z
    .param p7, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;

    .line 365
    move/from16 v0, p5

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v4, v1

    .line 367
    .local v4, "orientation":Landroidx/compose/foundation/gestures/Orientation;
    if-eqz p6, :cond_1

    .line 371
    invoke-virtual {p1}, Landroidx/compose/foundation/ScrollState;->getInternalInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v8

    .line 368
    nop

    .line 369
    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 370
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 371
    nop

    .line 368
    const/16 v10, 0x40

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v5, p4

    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ScrollableAreaKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1

    .line 381
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/ScrollState;->getInternalInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 377
    nop

    .line 378
    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 379
    nop

    .line 380
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 381
    nop

    .line 377
    const/16 v11, 0x80

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v7, p2

    move-object/from16 v8, p3

    move/from16 v6, p4

    move-object/from16 v5, p7

    invoke-static/range {v2 .. v12}, Landroidx/compose/foundation/ScrollableAreaKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 367
    :goto_1
    nop

    .line 366
    nop

    .line 387
    .local v1, "scrollableArea":Landroidx/compose/ui/Modifier;
    new-instance v2, Landroidx/compose/foundation/ScrollingLayoutElement;

    invoke-direct {v2, p1, p2, v0}, Landroidx/compose/foundation/ScrollingLayoutElement;-><init>(Landroidx/compose/foundation/ScrollState;ZZ)V

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    return-object v2
.end method

.method static synthetic scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 356
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 356
    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/ScrollKt;->scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 8
    .param p0, "$this$verticalScroll"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p3, "enabled"    # Z
    .param p4, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p5, "reverseScrolling"    # Z

    .line 277
    nop

    .line 278
    nop

    .line 280
    nop

    .line 281
    nop

    .line 279
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 277
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v4, p3

    move-object v3, p4

    move v2, p5

    .end local p0    # "$this$verticalScroll":Landroidx/compose/ui/Modifier;
    .end local p1    # "state":Landroidx/compose/foundation/ScrollState;
    .end local p2    # "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    .end local p3    # "enabled":Z
    .end local p4    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p5    # "reverseScrolling":Z
    .local v0, "$this$verticalScroll":Landroidx/compose/ui/Modifier;
    .local v1, "state":Landroidx/compose/foundation/ScrollState;
    .local v2, "reverseScrolling":Z
    .local v3, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v4, "enabled":Z
    .local v7, "overscrollEffect":Landroidx/compose/foundation/OverscrollEffect;
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ScrollKt;->scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 285
    return-object p0
.end method

.method public static final verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 10
    .param p0, "$this$verticalScroll"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/ScrollState;
    .param p2, "enabled"    # Z
    .param p3, "flingBehavior"    # Landroidx/compose/foundation/gestures/FlingBehavior;
    .param p4, "reverseScrolling"    # Z

    .line 242
    nop

    .line 243
    nop

    .line 245
    nop

    .line 246
    nop

    .line 244
    nop

    .line 247
    nop

    .line 248
    nop

    .line 242
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v3, p3

    move v2, p4

    .end local p0    # "$this$verticalScroll":Landroidx/compose/ui/Modifier;
    .end local p1    # "state":Landroidx/compose/foundation/ScrollState;
    .end local p2    # "enabled":Z
    .end local p3    # "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .end local p4    # "reverseScrolling":Z
    .local v0, "$this$verticalScroll":Landroidx/compose/ui/Modifier;
    .local v1, "state":Landroidx/compose/foundation/ScrollState;
    .local v2, "reverseScrolling":Z
    .local v3, "flingBehavior":Landroidx/compose/foundation/gestures/FlingBehavior;
    .local v4, "enabled":Z
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ScrollKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZZLandroidx/compose/foundation/OverscrollEffect;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 249
    return-object p0
.end method

.method public static synthetic verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 270
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 273
    const/4 p3, 0x1

    move v3, p3

    goto :goto_0

    .line 270
    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 274
    const/4 p4, 0x0

    move-object v4, p4

    goto :goto_1

    .line 270
    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 275
    const/4 p5, 0x0

    move v5, p5

    goto :goto_2

    .line 270
    :cond_2
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ScrollKt;->verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 236
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 238
    const/4 p2, 0x1

    .line 236
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 239
    const/4 p3, 0x0

    .line 236
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 240
    const/4 p4, 0x0

    .line 236
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
