.class public final Landroidx/compose/ui/BiasAbsoluteAlignment;
.super Ljava/lang/Object;
.source "Alignment.kt"

# interfaces
.implements Landroidx/compose/ui/Alignment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlignment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Alignment.kt\nandroidx/compose/ui/BiasAbsoluteAlignment\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,284:1\n54#2:285\n59#2:287\n54#2:291\n59#2:293\n85#3:286\n90#3:288\n80#3:290\n85#3:292\n90#3:294\n80#3:297\n30#4:289\n26#5:295\n32#6:296\n*S KotlinDebug\n*F\n+ 1 Alignment.kt\nandroidx/compose/ui/BiasAbsoluteAlignment\n*L\n244#1:285\n244#1:287\n245#1:291\n246#1:293\n244#1:286\n244#1:288\n244#1:290\n245#1:292\n246#1:294\n250#1:297\n244#1:289\n250#1:295\n250#1:296\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/ui/BiasAbsoluteAlignment;",
        "Landroidx/compose/ui/Alignment;",
        "horizontalBias",
        "",
        "verticalBias",
        "<init>",
        "(FF)V",
        "getHorizontalBias",
        "()F",
        "getVerticalBias",
        "align",
        "Landroidx/compose/ui/unit/IntOffset;",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "space",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "align-KFBX0sM",
        "(JJLandroidx/compose/ui/unit/LayoutDirection;)J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Horizontal",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final horizontalBias:F

.field private final verticalBias:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "horizontalBias"    # F
    .param p2, "verticalBias"    # F

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p1, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    iput p2, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/BiasAbsoluteAlignment;FFILjava/lang/Object;)Landroidx/compose/ui/BiasAbsoluteAlignment;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/BiasAbsoluteAlignment;->copy(FF)Landroidx/compose/ui/BiasAbsoluteAlignment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 20
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-space$0"    # J
    .param p5, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 244
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 285
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 286
    .local v6, "$i$f$unpackInt1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v4, v8

    .line 285
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackInt1":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    move-wide/from16 v1, p1

    .restart local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 285
    .restart local v3    # "$i$f$getWidth-impl":I
    move-wide v5, v1

    .local v5, "value$iv$iv":J
    const/4 v8, 0x0

    .line 286
    .local v8, "$i$f$unpackInt1":I
    shr-long v9, v5, v7

    long-to-int v5, v9

    .line 285
    .end local v5    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt1":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    sub-int/2addr v4, v5

    move-wide/from16 v1, p3

    .restart local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$getHeight-impl":I
    move-wide v5, v1

    .restart local v5    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 288
    .local v8, "$i$f$unpackInt2":I
    const-wide v9, 0xffffffffL

    and-long v11, v5, v9

    long-to-int v5, v11

    .line 287
    .end local v5    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt2":I
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    move-wide/from16 v1, p1

    .restart local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 287
    .restart local v3    # "$i$f$getHeight-impl":I
    move-wide v11, v1

    .local v11, "value$iv$iv":J
    const/4 v6, 0x0

    .line 288
    .local v6, "$i$f$unpackInt2":I
    and-long v13, v11, v9

    long-to-int v6, v13

    .line 287
    .end local v6    # "$i$f$unpackInt2":I
    .end local v11    # "value$iv$iv":J
    nop

    .line 244
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getHeight-impl":I
    sub-int/2addr v5, v6

    .local v4, "width$iv":I
    .local v5, "height$iv":I
    const/4 v1, 0x0

    .line 289
    .local v1, "$i$f$IntSize":I
    move v2, v5

    .local v2, "val2$iv$iv":I
    move v3, v4

    .local v3, "val1$iv$iv":I
    const/4 v6, 0x0

    .line 290
    .local v6, "$i$f$packInts":I
    int-to-long v11, v3

    shl-long/2addr v11, v7

    int-to-long v13, v2

    and-long/2addr v13, v9

    or-long v2, v11, v13

    .line 289
    .end local v2    # "val2$iv$iv":I
    .end local v3    # "val1$iv$iv":I
    .end local v6    # "$i$f$packInts":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v1

    .line 244
    .end local v1    # "$i$f$IntSize":I
    .end local v4    # "width$iv":I
    .end local v5    # "height$iv":I
    nop

    .line 245
    .local v1, "remaining":J
    move-wide v3, v1

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v5, 0x0

    .line 291
    .local v5, "$i$f$getWidth-impl":I
    move-wide v11, v3

    .restart local v11    # "value$iv$iv":J
    const/4 v6, 0x0

    .line 292
    .local v6, "$i$f$unpackInt1":I
    shr-long v13, v11, v7

    long-to-int v6, v13

    .line 291
    .end local v6    # "$i$f$unpackInt1":I
    .end local v11    # "value$iv$iv":J
    nop

    .line 245
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v5    # "$i$f$getWidth-impl":I
    int-to-float v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 246
    .local v3, "centerX":F
    move-wide v5, v1

    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v8, 0x0

    .line 293
    .local v8, "$i$f$getHeight-impl":I
    move-wide v11, v5

    .restart local v11    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 294
    .local v13, "$i$f$unpackInt2":I
    and-long v14, v11, v9

    long-to-int v11, v14

    .line 293
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackInt2":I
    nop

    .line 246
    .end local v5    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v8    # "$i$f$getHeight-impl":I
    int-to-float v5, v11

    div-float/2addr v5, v4

    .line 248
    .local v5, "centerY":F
    const/4 v4, 0x1

    int-to-float v4, v4

    iget v6, v0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    add-float/2addr v6, v4

    mul-float/2addr v6, v3

    .line 249
    .local v6, "x":F
    iget v8, v0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    add-float/2addr v4, v8

    mul-float/2addr v4, v5

    .line 250
    .local v4, "y":F
    move v8, v6

    .local v8, "$this$fastRoundToInt$iv":F
    const/4 v11, 0x0

    .line 295
    .local v11, "$i$f$fastRoundToInt":I
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 250
    .end local v8    # "$this$fastRoundToInt$iv":F
    .end local v11    # "$i$f$fastRoundToInt":I
    move v11, v4

    .local v11, "$this$fastRoundToInt$iv":F
    const/4 v12, 0x0

    .line 295
    .local v12, "$i$f$fastRoundToInt":I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 250
    .end local v11    # "$this$fastRoundToInt$iv":F
    .end local v12    # "$i$f$fastRoundToInt":I
    nop

    .local v8, "x$iv":I
    .local v11, "y$iv":I
    const/4 v12, 0x0

    .line 296
    .local v12, "$i$f$IntOffset":I
    move v13, v11

    .local v13, "val2$iv$iv":I
    move v14, v8

    .local v14, "val1$iv$iv":I
    const/4 v15, 0x0

    .line 297
    .local v15, "$i$f$packInts":I
    move/from16 v16, v7

    move/from16 v17, v8

    .end local v8    # "x$iv":I
    .local v17, "x$iv":I
    int-to-long v7, v14

    shl-long v7, v7, v16

    move-wide/from16 v18, v9

    int-to-long v9, v13

    and-long v9, v9, v18

    or-long/2addr v7, v9

    .line 296
    .end local v13    # "val2$iv$iv":I
    .end local v14    # "val1$iv$iv":I
    .end local v15    # "$i$f$packInts":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v7

    .line 250
    .end local v11    # "y$iv":I
    .end local v12    # "$i$f$IntOffset":I
    .end local v17    # "x$iv":I
    return-wide v7
.end method

.method public final component1()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    return v0
.end method

.method public final copy(FF)Landroidx/compose/ui/BiasAbsoluteAlignment;
    .locals 1

    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/BiasAbsoluteAlignment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/BiasAbsoluteAlignment;

    iget v3, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    iget v4, v1, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    iget v1, v1, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHorizontalBias()F
    .locals 1

    .line 236
    iget v0, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    return v0
.end method

.method public final getVerticalBias()F
    .locals 1

    .line 236
    iget v0, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiasAbsoluteAlignment(horizontalBias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->horizontalBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalBias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/BiasAbsoluteAlignment;->verticalBias:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
