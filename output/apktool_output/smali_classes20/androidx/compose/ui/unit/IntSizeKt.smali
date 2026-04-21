.class public final Landroidx/compose/ui/unit/IntSizeKt;
.super Ljava/lang/Object;
.source "IntSize.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 4 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n+ 5 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 6 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,122:1\n80#2:123\n85#2:125\n90#2:127\n53#2,3:129\n60#2:133\n70#2,11:136\n60#2:148\n70#2,11:155\n54#3:124\n59#3:126\n33#4:128\n57#5:132\n61#5:135\n57#5:147\n61#5:154\n22#6:134\n22#6,5:149\n*S KotlinDebug\n*F\n+ 1 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n*L\n30#1:123\n107#1:125\n107#1:127\n107#1:129,3\n113#1:133\n113#1:136,11\n121#1:148\n121#1:155,11\n107#1:124\n107#1:126\n107#1:128\n113#1:132\n113#1:135\n121#1:147\n121#1:154\n113#1:134\n121#1:149,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\u0008\u00a2\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0001H\u0087\n\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u000b*\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u0013\u0010\u0014\u001a\u00020\u0015*\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0013\u001a\u0013\u0010\u0017\u001a\u00020\u0001*\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0013\u001a\u0013\u0010\u0019\u001a\u00020\u0001*\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u0013\"\u001e\u0010\u000e\u001a\u00020\u000f*\u00020\u00018FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "IntSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "width",
        "",
        "height",
        "(II)J",
        "times",
        "size",
        "times-O0kMr_c",
        "(IJ)J",
        "toIntRect",
        "Landroidx/compose/ui/unit/IntRect;",
        "toIntRect-ozmzZPI",
        "(J)Landroidx/compose/ui/unit/IntRect;",
        "center",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getCenter-ozmzZPI$annotations",
        "(J)V",
        "getCenter-ozmzZPI",
        "(J)J",
        "toSize",
        "Landroidx/compose/ui/geometry/Size;",
        "toSize-ozmzZPI",
        "toIntSize",
        "toIntSize-uvyYCjk",
        "roundToIntSize",
        "roundToIntSize-uvyYCjk",
        "ui-unit"
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
.method public static final IntSize(II)J
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$IntSize":I
    move v1, p1

    .local v1, "val2$iv":I
    move v2, p0

    .local v2, "val1$iv":I
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$packInts":I
    int-to-long v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long v1, v4, v6

    .line 30
    .end local v1    # "val2$iv":I
    .end local v2    # "val1$iv":I
    .end local v3    # "$i$f$packInts":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final getCenter-ozmzZPI(J)J
    .locals 7
    .param p0, "$v$c$androidx-compose-ui-unit-IntSize$-$this$center$0"    # J

    .line 100
    const/16 v0, 0x21

    shr-long v1, p0, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    .line 103
    shl-long v3, p0, v3

    shr-long/2addr v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 100
    or-long v0, v1, v3

    .line 98
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    .line 104
    return-wide v0
.end method

.method public static synthetic getCenter-ozmzZPI$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final roundToIntSize-uvyYCjk(J)J
    .locals 12
    .param p0, "$v$c$androidx-compose-ui-geometry-Size$-$this$roundToIntSize$0"    # J

    .line 121
    move-wide v0, p0

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 148
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 149
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 148
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 147
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 121
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    nop

    .local v7, "$this$fastRoundToInt$iv":F
    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$fastRoundToInt":I
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 121
    .end local v0    # "$i$f$fastRoundToInt":I
    .end local v7    # "$this$fastRoundToInt$iv":F
    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v3, 0x0

    .line 154
    .local v3, "$i$f$getHeight-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v7, 0x0

    .line 155
    .local v7, "$i$f$unpackFloat2":I
    const-wide v8, 0xffffffffL

    and-long v10, v4, v8

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 149
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 155
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 154
    .end local v4    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat2":I
    nop

    .line 121
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    nop

    .local v10, "$this$fastRoundToInt$iv":F
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$fastRoundToInt":I
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 121
    .end local v1    # "$i$f$fastRoundToInt":I
    .end local v10    # "$this$fastRoundToInt$iv":F
    nop

    .local v0, "val1$iv":I
    .local v1, "val2$iv":I
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$f$packInts":I
    int-to-long v3, v0

    shl-long/2addr v3, v6

    int-to-long v5, v1

    and-long/2addr v5, v8

    or-long v0, v3, v5

    .line 121
    .end local v0    # "val1$iv":I
    .end local v1    # "val2$iv":I
    .end local v2    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final times-O0kMr_c(IJ)J
    .locals 3
    .param p0, "$this$times_u2dO0kMr_c"    # I
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$times-O0kMr_c":I
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/unit/IntSize;->times-YEO4UFw(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final toIntRect-ozmzZPI(J)Landroidx/compose/ui/unit/IntRect;
    .locals 2
    .param p0, "$v$c$androidx-compose-ui-unit-IntSize$-$this$toIntRect$0"    # J

    .line 89
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    return-object v0
.end method

.method public static final toIntSize-uvyYCjk(J)J
    .locals 12
    .param p0, "$v$c$androidx-compose-ui-geometry-Size$-$this$toIntSize$0"    # J

    .line 113
    move-wide v0, p0

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 132
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 133
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 134
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 133
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 132
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 113
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    float-to-int v0, v7

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v3, 0x0

    .line 135
    .local v3, "$i$f$getHeight-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v7, 0x0

    .line 136
    .local v7, "$i$f$unpackFloat2":I
    const-wide v8, 0xffffffffL

    and-long v10, v4, v8

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 134
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 136
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 135
    .end local v4    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat2":I
    nop

    .line 113
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    float-to-int v1, v10

    .local v0, "val1$iv":I
    .local v1, "val2$iv":I
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$f$packInts":I
    int-to-long v3, v0

    shl-long/2addr v3, v6

    int-to-long v5, v1

    and-long/2addr v5, v8

    or-long v0, v3, v5

    .line 113
    .end local v0    # "val1$iv":I
    .end local v1    # "val2$iv":I
    .end local v2    # "$i$f$packInts":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toSize-ozmzZPI(J)J
    .locals 14
    .param p0, "$v$c$androidx-compose-ui-unit-IntSize$-$this$toSize$0"    # J

    .line 107
    move-wide v0, p0

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 125
    .local v5, "$i$f$unpackInt1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v3, v7

    .line 124
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackInt1":I
    nop

    .line 107
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    int-to-float v0, v3

    move-wide v1, p0

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$f$getHeight-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v7, 0x0

    .line 127
    .local v7, "$i$f$unpackInt2":I
    const-wide v8, 0xffffffffL

    and-long v10, v4, v8

    long-to-int v4, v10

    .line 126
    .end local v4    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt2":I
    nop

    .line 107
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    int-to-float v1, v4

    .local v0, "width$iv":F
    .local v1, "height$iv":F
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$Size":I
    move v3, v1

    .local v3, "val2$iv$iv":F
    move v4, v0

    .local v4, "val1$iv$iv":F
    const/4 v5, 0x0

    .line 129
    .local v5, "$i$f$packFloats":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v10, v7

    .line 130
    .local v10, "v1$iv$iv":J
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v12, v7

    .line 131
    .local v12, "v2$iv$iv":J
    shl-long v6, v10, v6

    and-long/2addr v8, v12

    or-long v3, v6, v8

    .line 128
    .end local v3    # "val2$iv$iv":F
    .end local v4    # "val1$iv$iv":F
    .end local v5    # "$i$f$packFloats":I
    .end local v10    # "v1$iv$iv":J
    .end local v12    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    .line 107
    .end local v0    # "width$iv":F
    .end local v1    # "height$iv":F
    .end local v2    # "$i$f$Size":I
    return-wide v0
.end method
