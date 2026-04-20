.class public final Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;
.super Ljava/lang/Object;
.source "ContentScale.kt"

# interfaces
.implements Landroidx/compose/ui/layout/ContentScale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentScale.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentScale.kt\nandroidx/compose/ui/layout/ContentScale$Companion$Inside$1\n+ 2 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactorKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n57#2:161\n61#2:164\n60#3:162\n70#3:165\n53#3,3:167\n53#3,3:172\n22#4:163\n31#5:166\n31#5:171\n1#6:170\n*S KotlinDebug\n*F\n+ 1 ContentScale.kt\nandroidx/compose/ui/layout/ContentScale$Companion$Inside$1\n*L\n108#1:161\n108#1:164\n108#1:162\n108#1:165\n109#1:167,3\n111#1:172,3\n108#1:163\n109#1:166\n111#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "androidx/compose/ui/layout/ContentScale$Companion$Inside$1",
        "Landroidx/compose/ui/layout/ContentScale;",
        "computeScaleFactor",
        "Landroidx/compose/ui/layout/ScaleFactor;",
        "srcSize",
        "Landroidx/compose/ui/geometry/Size;",
        "dstSize",
        "computeScaleFactor-H7hwNQA",
        "(JJ)J",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeScaleFactor-H7hwNQA(JJ)J
    .locals 17
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-srcSize$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Size$-dstSize$0"    # J

    .line 108
    move-wide/from16 v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 161
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 162
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 163
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 162
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 161
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 108
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    move-wide/from16 v0, p3

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 161
    .restart local v2    # "$i$f$getWidth-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 162
    .restart local v5    # "$i$f$unpackFloat1":I
    shr-long v8, v3, v6

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 162
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 161
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 108
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    cmpg-float v0, v7, v8

    const-wide v1, 0xffffffffL

    if-gtz v0, :cond_0

    move-wide/from16 v3, p1

    .local v3, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v0, 0x0

    .line 164
    .local v0, "$i$f$getHeight-impl":I
    move-wide v7, v3

    .local v7, "value$iv$iv":J
    const/4 v5, 0x0

    .line 165
    .local v5, "$i$f$unpackFloat2":I
    and-long v9, v7, v1

    long-to-int v9, v9

    .local v9, "bits$iv$iv$iv":I
    const/4 v10, 0x0

    .line 163
    .local v10, "$i$f$floatFromBits":I
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 165
    .end local v9    # "bits$iv$iv$iv":I
    .end local v10    # "$i$f$floatFromBits":I
    nop

    .line 164
    .end local v5    # "$i$f$unpackFloat2":I
    .end local v7    # "value$iv$iv":J
    nop

    .line 108
    .end local v0    # "$i$f$getHeight-impl":I
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    move-wide/from16 v3, p3

    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v0, 0x0

    .line 164
    .restart local v0    # "$i$f$getHeight-impl":I
    move-wide v7, v3

    .restart local v7    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 165
    .restart local v5    # "$i$f$unpackFloat2":I
    and-long v10, v7, v1

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 163
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 165
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 164
    .end local v5    # "$i$f$unpackFloat2":I
    .end local v7    # "value$iv$iv":J
    nop

    .line 108
    .end local v0    # "$i$f$getHeight-impl":I
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    cmpg-float v0, v9, v10

    if-gtz v0, :cond_0

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "scaleX$iv":F
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "scaleY$iv":F
    const/4 v4, 0x0

    .line 166
    .local v4, "$i$f$ScaleFactor":I
    move v5, v3

    .local v5, "val2$iv$iv":F
    move v7, v0

    .local v7, "val1$iv$iv":F
    const/4 v8, 0x0

    .line 167
    .local v8, "$i$f$packFloats":I
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    .line 168
    .local v9, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 169
    .local v11, "v2$iv$iv":J
    shl-long v13, v9, v6

    and-long/2addr v1, v11

    or-long/2addr v1, v13

    .line 166
    .end local v5    # "val2$iv$iv":F
    .end local v7    # "val1$iv$iv":F
    .end local v8    # "$i$f$packFloats":I
    .end local v9    # "v1$iv$iv":J
    .end local v11    # "v2$iv$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide v0

    .end local v0    # "scaleX$iv":F
    .end local v3    # "scaleY$iv":F
    .end local v4    # "$i$f$ScaleFactor":I
    goto :goto_0

    .line 111
    :cond_0
    invoke-static/range {p1 .. p4}, Landroidx/compose/ui/layout/ContentScaleKt;->access$computeFillMinDimension-iLBOSCw(JJ)F

    move-result v0

    .line 170
    .local v0, "it":F
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$a$-let-ContentScale$Companion$Inside$1$computeScaleFactor$1":I
    move v4, v0

    .local v4, "scaleY$iv":F
    move v5, v0

    .local v5, "scaleX$iv":F
    const/4 v7, 0x0

    .line 171
    .local v7, "$i$f$ScaleFactor":I
    move v8, v4

    .local v8, "val2$iv$iv":F
    move v9, v5

    .local v9, "val1$iv$iv":F
    const/4 v10, 0x0

    .line 172
    .local v10, "$i$f$packFloats":I
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 173
    .local v11, "v1$iv$iv":J
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 174
    .local v13, "v2$iv$iv":J
    shl-long v15, v11, v6

    and-long/2addr v1, v13

    or-long/2addr v1, v15

    .line 171
    .end local v8    # "val2$iv$iv":F
    .end local v9    # "val1$iv$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v1, v2}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide v1

    .line 111
    .end local v4    # "scaleY$iv":F
    .end local v5    # "scaleX$iv":F
    .end local v7    # "$i$f$ScaleFactor":I
    move-wide v0, v1

    .line 108
    .end local v0    # "it":F
    .end local v3    # "$i$a$-let-ContentScale$Companion$Inside$1$computeScaleFactor$1":I
    :goto_0
    return-wide v0
.end method
