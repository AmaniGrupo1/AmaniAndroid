.class public final Landroidx/compose/foundation/text/selection/SelectionRegistrarImplKt;
.super Ljava/lang/Object;
.source "SelectionRegistrarImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionRegistrarImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionRegistrarImpl.kt\nandroidx/compose/foundation/text/selection/SelectionRegistrarImplKt\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,300:1\n69#2:301\n65#2:304\n69#2:307\n65#2:310\n69#2:313\n69#2:316\n65#2:319\n65#2:322\n70#3:302\n60#3:305\n70#3:308\n60#3:311\n70#3:314\n70#3:317\n60#3:320\n60#3:323\n22#4:303\n22#4:306\n22#4:309\n22#4:312\n22#4:315\n22#4:318\n22#4:321\n22#4:324\n*S KotlinDebug\n*F\n+ 1 SelectionRegistrarImpl.kt\nandroidx/compose/foundation/text/selection/SelectionRegistrarImplKt\n*L\n271#1:301\n272#1:304\n274#1:307\n275#1:310\n279#1:313\n280#1:316\n284#1:319\n285#1:322\n271#1:302\n272#1:305\n274#1:308\n275#1:311\n279#1:314\n280#1:317\n284#1:320\n285#1:323\n271#1:303\n272#1:306\n274#1:309\n275#1:312\n279#1:315\n280#1:318\n284#1:321\n285#1:324\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "inARow",
        "",
        "boxATopLeft",
        "Landroidx/compose/ui/geometry/Offset;",
        "boxABottomRight",
        "boxBTopLeft",
        "boxBBottomRight",
        "inARow-zwwh4xc",
        "(JJJJ)Z",
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
.method public static final inARow-zwwh4xc(JJJJ)Z
    .locals 19
    .param p0, "$v$c$androidx-compose-ui-geometry-Offset$-boxATopLeft$0"    # J
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-boxABottomRight$0"    # J
    .param p4, "$v$c$androidx-compose-ui-geometry-Offset$-boxBTopLeft$0"    # J
    .param p6, "$v$c$androidx-compose-ui-geometry-Offset$-boxBBottomRight$0"    # J

    .line 271
    move-wide/from16 v0, p2

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 301
    .local v2, "$i$f$getY-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 302
    .local v5, "$i$f$unpackFloat2":I
    const-wide v6, 0xffffffffL

    and-long v8, v3, v6

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 303
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 302
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 301
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 271
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    move-wide/from16 v0, p0

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 301
    .restart local v2    # "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 302
    .restart local v5    # "$i$f$unpackFloat2":I
    and-long v9, v3, v6

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 303
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 302
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 301
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 271
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    sub-float/2addr v8, v9

    .line 272
    .local v8, "heightA":F
    move-wide/from16 v0, p2

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 304
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 305
    .local v5, "$i$f$unpackFloat1":I
    const/16 v9, 0x20

    shr-long v10, v3, v9

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 306
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 305
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 304
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 272
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    move-wide/from16 v0, p0

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 304
    .restart local v2    # "$i$f$getX-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 305
    .restart local v5    # "$i$f$unpackFloat1":I
    shr-long v11, v3, v9

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 306
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 305
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 304
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 272
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    sub-float/2addr v10, v11

    .line 274
    .local v10, "widthA":F
    move-wide/from16 v0, p6

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 307
    .local v2, "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 308
    .local v5, "$i$f$unpackFloat2":I
    and-long v11, v3, v6

    long-to-int v11, v11

    .restart local v11    # "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 309
    .restart local v12    # "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 308
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 307
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 274
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    move-wide/from16 v0, p4

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 307
    .restart local v2    # "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 308
    .restart local v5    # "$i$f$unpackFloat2":I
    and-long v12, v3, v6

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 309
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 308
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 307
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 274
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    sub-float/2addr v11, v12

    .line 275
    .local v11, "heightB":F
    move-wide/from16 v0, p6

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 310
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 311
    .local v5, "$i$f$unpackFloat1":I
    shr-long v12, v3, v9

    long-to-int v12, v12

    .restart local v12    # "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 312
    .restart local v13    # "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 311
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 310
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 275
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    move-wide/from16 v0, p4

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 310
    .restart local v2    # "$i$f$getX-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 311
    .restart local v5    # "$i$f$unpackFloat1":I
    shr-long v13, v3, v9

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 312
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 311
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 310
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 275
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    sub-float/2addr v12, v13

    .line 279
    .local v12, "widthB":F
    move-wide/from16 v0, p0

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 313
    .local v2, "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 314
    .local v5, "$i$f$unpackFloat2":I
    and-long v13, v3, v6

    long-to-int v13, v13

    .restart local v13    # "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 315
    .restart local v14    # "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 314
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 313
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 279
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    move-wide/from16 v0, p4

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 313
    .restart local v2    # "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 314
    .restart local v5    # "$i$f$unpackFloat2":I
    and-long v14, v3, v6

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 315
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 314
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 313
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 279
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 280
    .local v0, "vertInterTop":F
    move-wide/from16 v1, p2

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 316
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v13, 0x0

    .line 317
    .local v13, "$i$f$unpackFloat2":I
    and-long v14, v4, v6

    long-to-int v14, v14

    .restart local v14    # "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 318
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 317
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 316
    .end local v4    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 280
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    move-wide/from16 v1, p6

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 316
    .restart local v3    # "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 317
    .restart local v13    # "$i$f$unpackFloat2":I
    and-long/2addr v6, v4

    long-to-int v6, v6

    .local v6, "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 318
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 317
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 316
    .end local v4    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat2":I
    nop

    .line 280
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 281
    .local v1, "vertInterBottom":F
    sub-float v2, v1, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 284
    .local v2, "vertIntersection":F
    move-wide/from16 v4, p0

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 319
    .local v6, "$i$f$getX-impl":I
    move-wide v13, v4

    .local v13, "value$iv$iv":J
    const/4 v7, 0x0

    .line 320
    .local v7, "$i$f$unpackFloat1":I
    move v15, v9

    move/from16 v16, v10

    .end local v10    # "widthA":F
    .local v16, "widthA":F
    shr-long v9, v13, v15

    long-to-int v9, v9

    .restart local v9    # "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 321
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 320
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 319
    .end local v7    # "$i$f$unpackFloat1":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 284
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    move-wide/from16 v4, p4

    .restart local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 319
    .restart local v6    # "$i$f$getX-impl":I
    move-wide v13, v4

    .restart local v13    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 320
    .restart local v7    # "$i$f$unpackFloat1":I
    move-wide/from16 v17, v4

    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v17, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    shr-long v3, v13, v15

    long-to-int v3, v3

    .local v3, "bits$iv$iv$iv":I
    const/4 v4, 0x0

    .line 321
    .local v4, "$i$f$floatFromBits":I
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 320
    .end local v3    # "bits$iv$iv$iv":I
    .end local v4    # "$i$f$floatFromBits":I
    nop

    .line 319
    .end local v7    # "$i$f$unpackFloat1":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 284
    .end local v6    # "$i$f$getX-impl":I
    .end local v17    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 285
    .local v3, "horzInterLeft":F
    move-wide/from16 v4, p2

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 322
    .restart local v6    # "$i$f$getX-impl":I
    move-wide v13, v4

    .restart local v13    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 323
    .restart local v7    # "$i$f$unpackFloat1":I
    move v9, v11

    .end local v11    # "heightB":F
    .local v9, "heightB":F
    shr-long v10, v13, v15

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 324
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 323
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 322
    .end local v7    # "$i$f$unpackFloat1":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 285
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    move-wide/from16 v4, p6

    .restart local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 322
    .restart local v6    # "$i$f$getX-impl":I
    move-wide v13, v4

    .restart local v13    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 323
    .restart local v7    # "$i$f$unpackFloat1":I
    move v11, v0

    move/from16 v18, v1

    .end local v0    # "vertInterTop":F
    .end local v1    # "vertInterBottom":F
    .local v11, "vertInterTop":F
    .local v18, "vertInterBottom":F
    shr-long v0, v13, v15

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 323
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 322
    .end local v7    # "$i$f$unpackFloat1":I
    .end local v13    # "value$iv$iv":J
    nop

    .line 285
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 286
    .local v0, "horzInterRight":F
    sub-float v1, v0, v3

    const/4 v10, 0x0

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 291
    .local v1, "horzIntersection":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v8, v4

    cmpl-float v5, v2, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    mul-float v5, v9, v4

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v7

    .line 290
    :goto_1
    nop

    .line 296
    .local v5, "isVerticallyAligned":Z
    mul-float v10, v16, v4

    cmpg-float v10, v1, v10

    if-gez v10, :cond_2

    mul-float/2addr v4, v12

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    .line 295
    :goto_2
    nop

    .line 298
    .local v4, "isHorizontallyDistinct":Z
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v6, v7

    :cond_3
    return v6
.end method
