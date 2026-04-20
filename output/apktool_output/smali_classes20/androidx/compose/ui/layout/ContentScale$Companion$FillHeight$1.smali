.class public final Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;
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
    value = "SMAP\nContentScale.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentScale.kt\nandroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1\n+ 2 ContentScale.kt\nandroidx/compose/ui/layout/ContentScaleKt\n+ 3 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactorKt\n*L\n1#1,160:1\n159#2:161\n61#3:162\n70#4:163\n53#4,3:167\n22#5:164\n1#6:165\n31#7:166\n*S KotlinDebug\n*F\n+ 1 ContentScale.kt\nandroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1\n*L\n79#1:161\n79#1:162\n79#1:163\n79#1:167,3\n79#1:164\n79#1:166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "androidx/compose/ui/layout/ContentScale$Companion$FillHeight$1",
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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeScaleFactor-H7hwNQA(JJ)J
    .locals 16
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-srcSize$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Size$-dstSize$0"    # J

    .line 79
    move-wide/from16 v0, p3

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-dstSize$0$iv":J
    move-wide/from16 v2, p1

    .local v2, "$v$c$androidx-compose-ui-geometry-Size$-srcSize$0$iv":J
    const/4 v4, 0x0

    .line 161
    .local v4, "$i$f$computeFillHeight-iLBOSCw":I
    move-wide v5, v0

    .local v5, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    const/4 v7, 0x0

    .line 162
    .local v7, "$i$f$getHeight-impl":I
    move-wide v8, v5

    .local v8, "value$iv$iv$iv":J
    const/4 v10, 0x0

    .line 163
    .local v10, "$i$f$unpackFloat2":I
    const-wide v11, 0xffffffffL

    and-long v13, v8, v11

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv$iv":I
    const/4 v14, 0x0

    .line 164
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 163
    .end local v13    # "bits$iv$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 162
    .end local v8    # "value$iv$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 161
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    move-wide v5, v2

    .restart local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    const/4 v7, 0x0

    .line 162
    .restart local v7    # "$i$f$getHeight-impl":I
    move-wide v8, v5

    .restart local v8    # "value$iv$iv$iv":J
    const/4 v10, 0x0

    .line 163
    .restart local v10    # "$i$f$unpackFloat2":I
    and-long v14, v8, v11

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv$iv":I
    const/4 v15, 0x0

    .line 164
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 163
    .end local v14    # "bits$iv$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 162
    .end local v8    # "value$iv$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 161
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    div-float/2addr v13, v14

    .line 79
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-dstSize$0$iv":J
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Size$-srcSize$0$iv":J
    .end local v4    # "$i$f$computeFillHeight-iLBOSCw":I
    nop

    .line 165
    .local v13, "it":F
    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-let-ContentScale$Companion$FillHeight$1$computeScaleFactor$1":I
    move v1, v13

    .local v1, "scaleY$iv":F
    move v2, v13

    .local v2, "scaleX$iv":F
    const/4 v3, 0x0

    .line 166
    .local v3, "$i$f$ScaleFactor":I
    move v4, v1

    .local v4, "val2$iv$iv":F
    move v5, v2

    .local v5, "val1$iv$iv":F
    const/4 v6, 0x0

    .line 167
    .local v6, "$i$f$packFloats":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    .line 168
    .local v7, "v1$iv$iv":J
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    .line 169
    .local v9, "v2$iv$iv":J
    const/16 v14, 0x20

    shl-long v14, v7, v14

    and-long/2addr v11, v9

    or-long v4, v14, v11

    .line 166
    .end local v4    # "val2$iv$iv":F
    .end local v5    # "val1$iv$iv":F
    .end local v6    # "$i$f$packFloats":I
    .end local v7    # "v1$iv$iv":J
    .end local v9    # "v2$iv$iv":J
    invoke-static {v4, v5}, Landroidx/compose/ui/layout/ScaleFactor;->constructor-impl(J)J

    move-result-wide v1

    .line 79
    .end local v1    # "scaleY$iv":F
    .end local v2    # "scaleX$iv":F
    .end local v3    # "$i$f$ScaleFactor":I
    nop

    .end local v0    # "$i$a$-let-ContentScale$Companion$FillHeight$1$computeScaleFactor$1":I
    .end local v13    # "it":F
    return-wide v1
.end method
