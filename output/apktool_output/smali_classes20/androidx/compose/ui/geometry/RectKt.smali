.class public final Landroidx/compose/ui/geometry/RectKt;
.super Ljava/lang/Object;
.source "Rect.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rect.kt\nandroidx/compose/ui/geometry/RectKt\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 Size.kt\nandroidx/compose/ui/geometry/Size\n*L\n1#1,288:1\n65#2:289\n69#2:292\n65#2:299\n69#2:302\n65#2:304\n69#2:307\n60#3:290\n70#3:293\n60#3:300\n70#3:303\n60#3:305\n70#3:308\n22#4:291\n22#4:301\n22#4:306\n57#5,5:294\n*S KotlinDebug\n*F\n+ 1 Rect.kt\nandroidx/compose/ui/geometry/RectKt\n*L\n244#1:289\n244#1:292\n255#1:299\n255#1:302\n265#1:304\n265#1:307\n244#1:290\n244#1:293\n255#1:300\n255#1:303\n265#1:305\n265#1:308\n244#1:291\n255#1:301\n265#1:306\n244#1:294,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u0007\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\rH\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "Rect-tz77jQw",
        "(JJ)Landroidx/compose/ui/geometry/Rect;",
        "topLeft",
        "bottomRight",
        "Rect-0a9Yr6o",
        "center",
        "radius",
        "",
        "Rect-3MmeM6k",
        "(JF)Landroidx/compose/ui/geometry/Rect;",
        "lerp",
        "start",
        "stop",
        "fraction",
        "ui-geometry"
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
.method public static final Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 14
    .param p0, "$v$c$androidx-compose-ui-geometry-Offset$-topLeft$0"    # J
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-bottomRight$0"    # J

    .line 255
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 299
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 300
    .local v6, "$i$f$unpackFloat1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 301
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 300
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 299
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 255
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    nop

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 302
    .local v3, "$i$f$getY-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 303
    .local v6, "$i$f$unpackFloat2":I
    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 301
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 303
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 302
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 255
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    move-wide/from16 v1, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 299
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 300
    .local v6, "$i$f$unpackFloat1":I
    shr-long v12, v4, v7

    long-to-int v7, v12

    .local v7, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 301
    .restart local v12    # "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 300
    .end local v7    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 299
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 255
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    nop

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 302
    .local v3, "$i$f$getY-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 303
    .local v6, "$i$f$unpackFloat2":I
    and-long/2addr v9, v4

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 301
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 303
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 302
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 255
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    invoke-direct {v0, v8, v11, v7, v9}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final Rect-3MmeM6k(JF)Landroidx/compose/ui/geometry/Rect;
    .locals 14
    .param p0, "$v$c$androidx-compose-ui-geometry-Offset$-center$0"    # J
    .param p2, "radius"    # F

    .line 265
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 305
    .local v6, "$i$f$unpackFloat1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 306
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 305
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 304
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 265
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    sub-float v8, v8, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 307
    .local v3, "$i$f$getY-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 308
    .local v6, "$i$f$unpackFloat2":I
    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 306
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 308
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 307
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 265
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    sub-float v11, v11, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$f$getX-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 305
    .local v6, "$i$f$unpackFloat1":I
    shr-long v12, v4, v7

    long-to-int v7, v12

    .local v7, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 306
    .restart local v12    # "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 305
    .end local v7    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 304
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 265
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    add-float v7, v7, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 307
    .local v3, "$i$f$getY-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 308
    .local v6, "$i$f$unpackFloat2":I
    and-long/2addr v9, v4

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 306
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 308
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 307
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 265
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    add-float v9, v9, p2

    invoke-direct {v0, v8, v11, v7, v9}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 15
    .param p0, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J
    .param p2, "$v$c$androidx-compose-ui-geometry-Size$-size$0"    # J

    .line 244
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 289
    .local v3, "$i$f$getX-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 290
    .local v6, "$i$f$unpackFloat1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 291
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 290
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 289
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    nop

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 292
    .local v3, "$i$f$getY-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 293
    .local v6, "$i$f$unpackFloat2":I
    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 291
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 293
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 292
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    nop

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 289
    .local v3, "$i$f$getX-impl":I
    nop

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 290
    .local v6, "$i$f$unpackFloat1":I
    shr-long v12, v4, v7

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 291
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 290
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 289
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getX-impl":I
    move-wide/from16 v1, p2

    .local v1, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v3, 0x0

    .line 294
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 290
    .restart local v6    # "$i$f$unpackFloat1":I
    shr-long v13, v4, v7

    long-to-int v7, v13

    .local v7, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 291
    .restart local v13    # "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 290
    .end local v7    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 294
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    add-float/2addr v12, v7

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v3, 0x0

    .line 292
    .local v3, "$i$f$getY-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 293
    .local v6, "$i$f$unpackFloat2":I
    and-long v13, v4, v9

    long-to-int v7, v13

    .restart local v7    # "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 291
    .restart local v13    # "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 293
    .end local v7    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 292
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v3    # "$i$f$getY-impl":I
    move-wide/from16 v1, p2

    .local v1, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$f$getHeight-impl":I
    move-wide v4, v1

    .restart local v4    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 293
    .restart local v6    # "$i$f$unpackFloat2":I
    and-long/2addr v9, v4

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 291
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 293
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 298
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat2":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    add-float/2addr v7, v9

    invoke-direct {v0, v8, v11, v12, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final lerp(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;F)Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .param p0, "start"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "stop"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "fraction"    # F

    .line 282
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 283
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    .line 284
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-static {v2, v3, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    .line 285
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-static {v3, v4, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    .line 286
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-static {v4, v5, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    .line 282
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 287
    return-object v0
.end method
