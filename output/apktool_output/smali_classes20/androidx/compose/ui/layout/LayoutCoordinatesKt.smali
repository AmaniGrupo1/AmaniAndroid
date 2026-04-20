.class public final Landroidx/compose/ui/layout/LayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "LayoutCoordinates.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutCoordinates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutCoordinates.kt\nandroidx/compose/ui/layout/LayoutCoordinatesKt\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 7 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,282:1\n54#2:283\n59#2:285\n54#2:371\n59#2:373\n85#3:284\n90#3:286\n53#3,3:328\n53#3,3:332\n53#3,3:336\n53#3,3:340\n60#3:344\n60#3:347\n60#3:350\n60#3:353\n70#3:358\n70#3:361\n70#3:364\n70#3:367\n85#3:372\n90#3:374\n65#4,10:287\n65#4,10:297\n65#4,10:307\n65#4,10:317\n46#4:355\n56#4:356\n46#4:369\n56#4:370\n30#5:327\n30#5:331\n30#5:335\n30#5:339\n65#6:343\n65#6:346\n65#6:349\n65#6:352\n69#6:357\n69#6:360\n69#6:363\n69#6:366\n22#7:345\n22#7:348\n22#7:351\n22#7:354\n22#7:359\n22#7:362\n22#7:365\n22#7:368\n*S KotlinDebug\n*F\n+ 1 LayoutCoordinates.kt\nandroidx/compose/ui/layout/LayoutCoordinatesKt\n*L\n211#1:283\n212#1:285\n259#1:371\n259#1:373\n211#1:284\n212#1:286\n224#1:328,3\n225#1:332,3\n226#1:336,3\n227#1:340,3\n229#1:344\n230#1:347\n231#1:350\n232#1:353\n237#1:358\n238#1:361\n239#1:364\n240#1:367\n259#1:372\n259#1:374\n215#1:287,10\n216#1:297,10\n217#1:307,10\n218#1:317,10\n234#1:355\n235#1:356\n242#1:369\n243#1:370\n224#1:327\n225#1:331\n226#1:335\n227#1:339\n229#1:343\n230#1:346\n231#1:349\n232#1:352\n237#1:357\n238#1:360\n239#1:363\n240#1:366\n229#1:345\n230#1:348\n231#1:351\n232#1:354\n237#1:359\n238#1:362\n239#1:365\n240#1:368\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u000f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\u000f\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\u000f\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0002\u001a\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0002H\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0007*\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a\u000f\u0010\u000b\u001a\u00020\u0001*\u00020\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\n\u0010\u000c\u001a\u00020\u0007*\u00020\u0002\u001a\n\u0010\r\u001a\u00020\u0002*\u00020\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "positionInRoot",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)J",
        "positionInWindow",
        "positionOnScreen",
        "boundsInRoot",
        "Landroidx/compose/ui/geometry/Rect;",
        "boundsInWindow",
        "clipBounds",
        "",
        "positionInParent",
        "boundsInParent",
        "findRootCoordinates",
        "ui"
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
.method public static final boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 10
    .param p0, "$this$boundsInParent"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 258
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 371
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 372
    .local v6, "$i$f$unpackInt1":I
    const/16 v7, 0x20

    shr-long v7, v4, v7

    long-to-int v4, v7

    .line 371
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackInt1":I
    nop

    .line 259
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    int-to-float v1, v4

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 373
    .local v4, "$i$f$getHeight-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 374
    .local v7, "$i$f$unpackInt2":I
    const-wide v8, 0xffffffffL

    and-long/2addr v8, v5

    long-to-int v5, v8

    .line 373
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt2":I
    nop

    .line 259
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getHeight-impl":I
    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :cond_1
    return-object v0
.end method

.method public static final boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "$this$boundsInRoot"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 190
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "$this$boundsInWindow"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of boundsInWindow with clipBounds parameter"
    .end annotation

    .line 196
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 37
    .param p0, "$this$boundsInWindow"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p1, "clipBounds"    # Z

    .line 210
    move/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .line 211
    .local v1, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$f$getWidth-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 284
    .local v7, "$i$f$unpackInt1":I
    const/16 v8, 0x20

    shr-long v9, v5, v8

    long-to-int v5, v9

    .line 283
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt1":I
    nop

    .line 211
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    int-to-float v2, v5

    .line 212
    .local v2, "rootWidth":F
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v5, 0x0

    .line 285
    .local v5, "$i$f$getHeight-impl":I
    move-wide v6, v3

    .local v6, "value$iv$iv":J
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$f$unpackInt2":I
    const-wide v10, 0xffffffffL

    and-long v12, v6, v10

    long-to-int v6, v12

    .line 285
    .end local v6    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt2":I
    nop

    .line 212
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v5    # "$i$f$getHeight-impl":I
    int-to-float v3, v6

    .line 214
    .local v3, "rootHeight":F
    move-object/from16 v4, p0

    invoke-interface {v1, v4, v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    .line 215
    .local v5, "bounds":Landroidx/compose/ui/geometry/Rect;
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    .local v6, "$this$fastCoerceIn$iv":F
    const/4 v7, 0x0

    .local v7, "minimumValue$iv":F
    move v9, v2

    .local v9, "maximumValue$iv":F
    const/4 v12, 0x0

    .line 287
    .local v12, "$i$f$fastCoerceIn":I
    move v13, v7

    .local v13, "minimumValue$iv$iv":F
    move v14, v6

    .local v14, "$this$fastCoerceAtLeast$iv$iv":F
    const/4 v15, 0x0

    .line 291
    .local v15, "$i$f$fastCoerceAtLeast":I
    cmpg-float v16, v14, v13

    if-gez v16, :cond_0

    goto :goto_0

    :cond_0
    move v13, v14

    .line 287
    .end local v13    # "minimumValue$iv$iv":F
    .end local v14    # "$this$fastCoerceAtLeast$iv$iv":F
    .end local v15    # "$i$f$fastCoerceAtLeast":I
    :goto_0
    move v14, v9

    .local v13, "$this$fastCoerceAtMost$iv$iv":F
    .local v14, "maximumValue$iv$iv":F
    const/4 v15, 0x0

    .line 296
    .local v15, "$i$f$fastCoerceAtMost":I
    cmpl-float v16, v13, v14

    if-lez v16, :cond_1

    goto :goto_1

    :cond_1
    move v14, v13

    .line 287
    .end local v13    # "$this$fastCoerceAtMost$iv$iv":F
    .end local v14    # "maximumValue$iv$iv":F
    .end local v15    # "$i$f$fastCoerceAtMost":I
    :goto_1
    nop

    .end local v6    # "$this$fastCoerceIn$iv":F
    .end local v7    # "minimumValue$iv":F
    .end local v9    # "maximumValue$iv":F
    .end local v12    # "$i$f$fastCoerceIn":I
    goto :goto_2

    .line 215
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v14

    :goto_2
    nop

    .line 216
    .local v14, "boundsLeft":F
    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    .restart local v6    # "$this$fastCoerceIn$iv":F
    const/4 v7, 0x0

    .restart local v7    # "minimumValue$iv":F
    move v9, v3

    .restart local v9    # "maximumValue$iv":F
    const/4 v12, 0x0

    .line 297
    .restart local v12    # "$i$f$fastCoerceIn":I
    move v13, v7

    .local v13, "minimumValue$iv$iv":F
    move v15, v6

    .local v15, "$this$fastCoerceAtLeast$iv$iv":F
    const/16 v16, 0x0

    .line 301
    .local v16, "$i$f$fastCoerceAtLeast":I
    cmpg-float v17, v15, v13

    if-gez v17, :cond_3

    move v15, v13

    .line 297
    .end local v13    # "minimumValue$iv$iv":F
    .end local v15    # "$this$fastCoerceAtLeast$iv$iv":F
    .end local v16    # "$i$f$fastCoerceAtLeast":I
    :cond_3
    move v13, v9

    .local v13, "maximumValue$iv$iv":F
    .local v15, "$this$fastCoerceAtMost$iv$iv":F
    const/16 v16, 0x0

    .line 306
    .local v16, "$i$f$fastCoerceAtMost":I
    cmpl-float v17, v15, v13

    if-lez v17, :cond_4

    move v15, v13

    .line 297
    .end local v13    # "maximumValue$iv$iv":F
    .end local v15    # "$this$fastCoerceAtMost$iv$iv":F
    .end local v16    # "$i$f$fastCoerceAtMost":I
    :cond_4
    nop

    .end local v6    # "$this$fastCoerceIn$iv":F
    .end local v7    # "minimumValue$iv":F
    .end local v9    # "maximumValue$iv":F
    .end local v12    # "$i$f$fastCoerceIn":I
    goto :goto_3

    .line 216
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v15

    :goto_3
    nop

    .line 217
    .local v15, "boundsTop":F
    if-eqz v0, :cond_8

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v6

    .restart local v6    # "$this$fastCoerceIn$iv":F
    const/4 v7, 0x0

    .restart local v7    # "minimumValue$iv":F
    move v9, v2

    .restart local v9    # "maximumValue$iv":F
    const/4 v12, 0x0

    .line 307
    .restart local v12    # "$i$f$fastCoerceIn":I
    move v13, v7

    .local v13, "minimumValue$iv$iv":F
    move/from16 v16, v6

    .local v16, "$this$fastCoerceAtLeast$iv$iv":F
    const/16 v17, 0x0

    .line 311
    .local v17, "$i$f$fastCoerceAtLeast":I
    cmpg-float v18, v16, v13

    if-gez v18, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v13, v16

    .line 307
    .end local v13    # "minimumValue$iv$iv":F
    .end local v16    # "$this$fastCoerceAtLeast$iv$iv":F
    .end local v17    # "$i$f$fastCoerceAtLeast":I
    :goto_4
    move/from16 v16, v9

    .local v13, "$this$fastCoerceAtMost$iv$iv":F
    .local v16, "maximumValue$iv$iv":F
    const/16 v17, 0x0

    .line 316
    .local v17, "$i$f$fastCoerceAtMost":I
    cmpl-float v18, v13, v16

    if-lez v18, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v13

    .line 307
    .end local v13    # "$this$fastCoerceAtMost$iv$iv":F
    .end local v16    # "maximumValue$iv$iv":F
    .end local v17    # "$i$f$fastCoerceAtMost":I
    :goto_5
    nop

    .end local v6    # "$this$fastCoerceIn$iv":F
    .end local v7    # "minimumValue$iv":F
    .end local v9    # "maximumValue$iv":F
    .end local v12    # "$i$f$fastCoerceIn":I
    goto :goto_6

    .line 217
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v16

    :goto_6
    nop

    .line 218
    .local v16, "boundsRight":F
    if-eqz v0, :cond_b

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    .restart local v6    # "$this$fastCoerceIn$iv":F
    const/4 v7, 0x0

    .restart local v7    # "minimumValue$iv":F
    move v9, v3

    .restart local v9    # "maximumValue$iv":F
    const/4 v12, 0x0

    .line 317
    .restart local v12    # "$i$f$fastCoerceIn":I
    move v13, v7

    .local v13, "minimumValue$iv$iv":F
    move/from16 v17, v6

    .local v17, "$this$fastCoerceAtLeast$iv$iv":F
    const/16 v18, 0x0

    .line 321
    .local v18, "$i$f$fastCoerceAtLeast":I
    cmpg-float v19, v17, v13

    if-gez v19, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v13, v17

    .line 317
    .end local v13    # "minimumValue$iv$iv":F
    .end local v17    # "$this$fastCoerceAtLeast$iv$iv":F
    .end local v18    # "$i$f$fastCoerceAtLeast":I
    :goto_7
    move/from16 v17, v9

    .local v13, "$this$fastCoerceAtMost$iv$iv":F
    .local v17, "maximumValue$iv$iv":F
    const/16 v18, 0x0

    .line 326
    .local v18, "$i$f$fastCoerceAtMost":I
    cmpl-float v19, v13, v17

    if-lez v19, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v17, v13

    .line 317
    .end local v13    # "$this$fastCoerceAtMost$iv$iv":F
    .end local v17    # "maximumValue$iv$iv":F
    .end local v18    # "$i$f$fastCoerceAtMost":I
    :goto_8
    nop

    .end local v6    # "$this$fastCoerceIn$iv":F
    .end local v7    # "minimumValue$iv":F
    .end local v9    # "maximumValue$iv":F
    .end local v12    # "$i$f$fastCoerceIn":I
    goto :goto_9

    .line 218
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v17

    :goto_9
    nop

    .line 220
    .local v17, "boundsBottom":F
    cmpg-float v6, v14, v16

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_c

    move v6, v7

    goto :goto_a

    :cond_c
    move v6, v9

    :goto_a
    if-nez v6, :cond_f

    cmpg-float v6, v15, v17

    if-nez v6, :cond_d

    goto :goto_b

    :cond_d
    move v7, v9

    :goto_b
    if-eqz v7, :cond_e

    move-object v13, v1

    move/from16 v22, v2

    move/from16 v23, v3

    goto/16 :goto_c

    .line 224
    :cond_e
    move v6, v15

    .local v6, "y$iv":F
    move v7, v14

    .local v7, "x$iv":F
    const/4 v9, 0x0

    .line 327
    .local v9, "$i$f$Offset":I
    move v12, v6

    .local v12, "val2$iv$iv":F
    move v13, v7

    .local v13, "val1$iv$iv":F
    const/16 v18, 0x0

    .line 328
    .local v18, "$i$f$packFloats":I
    move/from16 v19, v8

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move-wide/from16 v20, v10

    int-to-long v10, v8

    .line 329
    .local v10, "v1$iv$iv":J
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "rootWidth":F
    .end local v3    # "rootHeight":F
    .local v22, "rootWidth":F
    .local v23, "rootHeight":F
    int-to-long v2, v8

    .line 330
    .local v2, "v2$iv$iv":J
    shl-long v24, v10, v19

    and-long v26, v2, v20

    or-long v2, v24, v26

    .line 327
    .end local v2    # "v2$iv$iv":J
    .end local v10    # "v1$iv$iv":J
    .end local v12    # "val2$iv$iv":F
    .end local v13    # "val1$iv$iv":F
    .end local v18    # "$i$f$packFloats":I
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 224
    .end local v6    # "y$iv":F
    .end local v7    # "x$iv":F
    .end local v9    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v2

    .line 225
    .local v2, "topLeft":J
    nop

    .restart local v6    # "y$iv":F
    move/from16 v7, v16

    .restart local v7    # "x$iv":F
    const/4 v8, 0x0

    .line 331
    .local v8, "$i$f$Offset":I
    move v9, v6

    .local v9, "val2$iv$iv":F
    move v10, v7

    .local v10, "val1$iv$iv":F
    const/4 v11, 0x0

    .line 332
    .local v11, "$i$f$packFloats":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    .line 333
    .local v12, "v1$iv$iv":J
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide/from16 v24, v2

    .end local v2    # "topLeft":J
    .local v24, "topLeft":J
    int-to-long v2, v0

    .line 334
    .local v2, "v2$iv$iv":J
    shl-long v26, v12, v19

    and-long v28, v2, v20

    or-long v2, v26, v28

    .line 331
    .end local v2    # "v2$iv$iv":J
    .end local v9    # "val2$iv$iv":F
    .end local v10    # "val1$iv$iv":F
    .end local v11    # "$i$f$packFloats":I
    .end local v12    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 225
    .end local v6    # "y$iv":F
    .end local v7    # "x$iv":F
    .end local v8    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v2

    .line 226
    .local v2, "topRight":J
    move/from16 v0, v17

    .local v0, "y$iv":F
    move/from16 v6, v16

    .local v6, "x$iv":F
    const/4 v7, 0x0

    .line 335
    .local v7, "$i$f$Offset":I
    move v8, v0

    .local v8, "val2$iv$iv":F
    move v9, v6

    .local v9, "val1$iv$iv":F
    const/4 v10, 0x0

    .line 336
    .local v10, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 337
    .local v11, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    move-wide/from16 v26, v2

    .end local v2    # "topRight":J
    .local v26, "topRight":J
    int-to-long v2, v13

    .line 338
    .local v2, "v2$iv$iv":J
    shl-long v28, v11, v19

    and-long v30, v2, v20

    or-long v2, v28, v30

    .line 335
    .end local v2    # "v2$iv$iv":J
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 226
    .end local v0    # "y$iv":F
    .end local v6    # "x$iv":F
    .end local v7    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v2

    .line 227
    .local v2, "bottomRight":J
    nop

    .restart local v0    # "y$iv":F
    move v6, v14

    .restart local v6    # "x$iv":F
    const/4 v7, 0x0

    .line 339
    .restart local v7    # "$i$f$Offset":I
    nop

    .restart local v8    # "val2$iv$iv":F
    move v9, v6

    .restart local v9    # "val1$iv$iv":F
    const/4 v10, 0x0

    .line 340
    .restart local v10    # "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 341
    .restart local v11    # "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    move-wide/from16 v28, v2

    .end local v2    # "bottomRight":J
    .local v28, "bottomRight":J
    int-to-long v2, v13

    .line 342
    .local v2, "v2$iv$iv":J
    shl-long v30, v11, v19

    and-long v32, v2, v20

    or-long v2, v30, v32

    .line 339
    .end local v2    # "v2$iv$iv":J
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 227
    .end local v0    # "y$iv":F
    .end local v6    # "x$iv":F
    .end local v7    # "$i$f$Offset":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v2

    .line 229
    .local v2, "bottomLeft":J
    move-wide/from16 v6, v24

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v0, 0x0

    .line 343
    .local v0, "$i$f$getX-impl":I
    move-wide v8, v6

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 344
    .local v10, "$i$f$unpackFloat1":I
    shr-long v11, v8, v19

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 345
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 344
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 343
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 229
    .end local v0    # "$i$f$getX-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 230
    .local v11, "topLeftX":F
    move-wide/from16 v6, v26

    .restart local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v0, 0x0

    .line 346
    .restart local v0    # "$i$f$getX-impl":I
    move-wide v8, v6

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 347
    .restart local v10    # "$i$f$unpackFloat1":I
    shr-long v12, v8, v19

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 348
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 347
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 346
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 230
    .end local v0    # "$i$f$getX-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 231
    .local v12, "topRightX":F
    move-wide v6, v2

    .restart local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v0, 0x0

    .line 349
    .restart local v0    # "$i$f$getX-impl":I
    move-wide v8, v6

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 350
    .restart local v10    # "$i$f$unpackFloat1":I
    move/from16 v18, v0

    move-object v13, v1

    .end local v0    # "$i$f$getX-impl":I
    .end local v1    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v13, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v18, "$i$f$getX-impl":I
    shr-long v0, v8, v19

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 351
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 350
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 349
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 231
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v18    # "$i$f$getX-impl":I
    nop

    .line 232
    .local v0, "bottomLeftX":F
    move-wide/from16 v6, v28

    .restart local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 352
    .local v1, "$i$f$getX-impl":I
    move-wide v8, v6

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 353
    .restart local v10    # "$i$f$unpackFloat1":I
    move/from16 v18, v0

    move/from16 v30, v1

    .end local v0    # "bottomLeftX":F
    .end local v1    # "$i$f$getX-impl":I
    .local v18, "bottomLeftX":F
    .local v30, "$i$f$getX-impl":I
    shr-long v0, v8, v19

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 354
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 353
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 352
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 232
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v30    # "$i$f$getX-impl":I
    nop

    .line 234
    .local v0, "bottomRightX":F
    move v1, v0

    .local v1, "d$iv":F
    move/from16 v6, v18

    .local v6, "c$iv":F
    move v7, v12

    .local v7, "b$iv":F
    move v8, v11

    .local v8, "a$iv":F
    const/4 v9, 0x0

    .line 355
    .local v9, "$i$f$fastMinOf":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 234
    .end local v1    # "d$iv":F
    .end local v6    # "c$iv":F
    .end local v7    # "b$iv":F
    .end local v8    # "a$iv":F
    .end local v9    # "$i$f$fastMinOf":I
    nop

    .line 235
    .local v10, "left":F
    nop

    .restart local v1    # "d$iv":F
    move v6, v12

    .local v6, "b$iv":F
    move v7, v11

    .local v7, "a$iv":F
    move/from16 v8, v18

    .local v8, "c$iv":F
    const/4 v9, 0x0

    .line 356
    .local v9, "$i$f$fastMaxOf":I
    move/from16 v19, v0

    .end local v0    # "bottomRightX":F
    .local v19, "bottomRightX":F
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 235
    .end local v1    # "d$iv":F
    .end local v6    # "b$iv":F
    .end local v7    # "a$iv":F
    .end local v8    # "c$iv":F
    .end local v9    # "$i$f$fastMaxOf":I
    nop

    .line 237
    .local v0, "right":F
    move-wide/from16 v6, v24

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v1, 0x0

    .line 357
    .local v1, "$i$f$getY-impl":I
    move-wide v8, v6

    .local v8, "value$iv$iv":J
    const/16 v30, 0x0

    .line 358
    .local v30, "$i$f$unpackFloat2":I
    move-wide/from16 v31, v2

    move v3, v1

    .end local v1    # "$i$f$getY-impl":I
    .end local v2    # "bottomLeft":J
    .local v3, "$i$f$getY-impl":I
    .local v31, "bottomLeft":J
    and-long v1, v8, v20

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 359
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 358
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 357
    .end local v8    # "value$iv$iv":J
    .end local v30    # "$i$f$unpackFloat2":I
    nop

    .line 237
    .end local v3    # "$i$f$getY-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 238
    .local v1, "topLeftY":F
    move-wide/from16 v2, v26

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 360
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v2

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 361
    .local v9, "$i$f$unpackFloat2":I
    move/from16 v30, v1

    move-wide/from16 v33, v2

    .end local v1    # "topLeftY":F
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v30, "topLeftY":F
    .local v33, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v1, v7, v20

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 362
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 361
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 360
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 238
    .end local v6    # "$i$f$getY-impl":I
    .end local v33    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 239
    .local v1, "topRightY":F
    move-wide/from16 v2, v31

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 363
    .restart local v6    # "$i$f$getY-impl":I
    move-wide v7, v2

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 364
    .restart local v9    # "$i$f$unpackFloat2":I
    move/from16 v33, v1

    move-wide/from16 v34, v2

    .end local v1    # "topRightY":F
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v33, "topRightY":F
    .local v34, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v1, v7, v20

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 365
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 364
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 363
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 239
    .end local v6    # "$i$f$getY-impl":I
    .end local v34    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 240
    .local v1, "bottomLeftY":F
    move-wide/from16 v2, v28

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 366
    .restart local v6    # "$i$f$getY-impl":I
    move-wide v7, v2

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 367
    .restart local v9    # "$i$f$unpackFloat2":I
    move/from16 v34, v1

    move-wide/from16 v35, v2

    .end local v1    # "bottomLeftY":F
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v34, "bottomLeftY":F
    .local v35, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v1, v7, v20

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 368
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 367
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 366
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 240
    .end local v6    # "$i$f$getY-impl":I
    .end local v35    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 242
    .local v1, "bottomRightY":F
    move v2, v1

    .local v2, "d$iv":F
    move/from16 v3, v30

    .local v3, "a$iv":F
    move/from16 v6, v33

    .local v6, "b$iv":F
    move/from16 v7, v34

    .local v7, "c$iv":F
    const/4 v8, 0x0

    .line 369
    .local v8, "$i$f$fastMinOf":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 242
    .end local v2    # "d$iv":F
    .end local v3    # "a$iv":F
    .end local v6    # "b$iv":F
    .end local v7    # "c$iv":F
    .end local v8    # "$i$f$fastMinOf":I
    nop

    .line 243
    .local v9, "top":F
    nop

    .restart local v2    # "d$iv":F
    .restart local v3    # "a$iv":F
    .restart local v6    # "b$iv":F
    .restart local v7    # "c$iv":F
    const/4 v8, 0x0

    .line 370
    .local v8, "$i$f$fastMaxOf":I
    move/from16 v20, v1

    .end local v1    # "bottomRightY":F
    .local v20, "bottomRightY":F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 243
    .end local v2    # "d$iv":F
    .end local v3    # "a$iv":F
    .end local v6    # "b$iv":F
    .end local v7    # "c$iv":F
    .end local v8    # "$i$f$fastMaxOf":I
    nop

    .line 245
    .local v1, "bottom":F
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v2, v10, v9, v0, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v2

    .line 220
    .end local v0    # "right":F
    .end local v9    # "top":F
    .end local v10    # "left":F
    .end local v11    # "topLeftX":F
    .end local v12    # "topRightX":F
    .end local v13    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v18    # "bottomLeftX":F
    .end local v19    # "bottomRightX":F
    .end local v20    # "bottomRightY":F
    .end local v22    # "rootWidth":F
    .end local v23    # "rootHeight":F
    .end local v24    # "topLeft":J
    .end local v26    # "topRight":J
    .end local v28    # "bottomRight":J
    .end local v30    # "topLeftY":F
    .end local v31    # "bottomLeft":J
    .end local v33    # "topRightY":F
    .end local v34    # "bottomLeftY":F
    .local v1, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v2, "rootWidth":F
    .local v3, "rootHeight":F
    :cond_f
    move-object v13, v1

    move/from16 v22, v2

    move/from16 v23, v3

    .line 221
    .end local v1    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v2    # "rootWidth":F
    .end local v3    # "rootHeight":F
    .restart local v13    # "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v22    # "rootWidth":F
    .restart local v23    # "rootHeight":F
    :goto_c
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic boundsInWindow$default(Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 209
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 5
    .param p0, "$this$findRootCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 268
    move-object v0, p0

    .line 269
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .line 270
    .local v1, "parent":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_0
    if-eqz v1, :cond_0

    .line 271
    move-object v0, v1

    .line 272
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_0
    instance-of v2, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-object v0

    .line 275
    .local v2, "rootCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 276
    .local v3, "parentCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_2
    if-eqz v3, :cond_3

    .line 277
    move-object v2, v3

    .line 278
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_2

    .line 280
    :cond_3
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v4
.end method

.method public static final positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 3
    .param p0, "$this$positionInParent"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 250
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0, "$this$positionInRoot"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 178
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0, "$this$positionInWindow"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 181
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0, "$this$positionOnScreen"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 187
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToScreen-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method
