.class public final Landroidx/compose/animation/SharedElementKt;
.super Ljava/lang/Object;
.source "SharedElement.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedElement.kt\nandroidx/compose/animation/SharedElementKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,198:1\n103#2:199\n35#2,5:200\n104#2:205\n30#3:206\n30#3:210\n53#4,3:207\n53#4,3:211\n*S KotlinDebug\n*F\n+ 1 SharedElement.kt\nandroidx/compose/animation/SharedElementKt\n*L\n190#1:199\n190#1:200,5\n190#1:205\n197#1:206\n195#1:210\n197#1:207,3\n195#1:211,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u001a\u0013\u0010\u0007\u001a\u00020\u0006*\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\"\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "hasVisibleContent",
        "",
        "",
        "Landroidx/compose/animation/SharedElementEntry;",
        "DefaultMomentumSpring",
        "Landroidx/compose/animation/core/SpringSpec;",
        "Landroidx/compose/ui/geometry/Offset;",
        "toOffset",
        "Landroidx/compose/ui/unit/Velocity;",
        "toOffset-TH1AsA0",
        "(J)J",
        "animation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DefaultMomentumSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 195
    const/high16 v0, 0x40400000    # 3.0f

    .local v0, "x$iv":F
    const/high16 v1, 0x40400000    # 3.0f

    .local v1, "y$iv":F
    const/4 v2, 0x0

    .line 210
    .local v2, "$i$f$Offset":I
    move v3, v1

    .local v3, "val2$iv$iv":F
    move v4, v0

    .local v4, "val1$iv$iv":F
    const/4 v5, 0x0

    .line 211
    .local v5, "$i$f$packFloats":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    .line 212
    .local v6, "v1$iv$iv":J
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 213
    .local v8, "v2$iv$iv":J
    const/16 v10, 0x20

    shl-long v10, v6, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v8

    or-long v3, v10, v12

    .line 210
    .end local v3    # "val2$iv$iv":F
    .end local v4    # "val1$iv$iv":F
    .end local v5    # "$i$f$packFloats":I
    .end local v6    # "v1$iv$iv":J
    .end local v8    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .end local v0    # "x$iv":F
    .end local v1    # "y$iv":F
    .end local v2    # "$i$f$Offset":I
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    .line 195
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/SharedElementKt;->DefaultMomentumSpring:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final synthetic access$getDefaultMomentumSpring$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/SharedElementKt;->DefaultMomentumSpring:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic access$hasVisibleContent(Ljava/util/List;)Z
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/SharedElementKt;->hasVisibleContent(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static final hasVisibleContent(Ljava/util/List;)Z
    .locals 12
    .param p0, "$this$hasVisibleContent"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;)Z"
        }
    .end annotation

    .line 190
    move-object v0, p0

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 199
    .local v1, "$i$f$fastAny":I
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 200
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 201
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 202
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 199
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/animation/SharedElementEntry;

    .local v9, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v10, 0x0

    .line 191
    .local v10, "$i$a$-fastAny-SharedElementKt$hasVisibleContent$1":I
    invoke-virtual {v9}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/animation/BoundsAnimation;->getTarget()Z

    move-result v9

    .line 199
    .end local v9    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v10    # "$i$a$-fastAny-SharedElementKt$hasVisibleContent$1":I
    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 202
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_0
    nop

    .line 200
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 205
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .line 192
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAny":I
    :goto_1
    return v5
.end method

.method public static final toOffset-TH1AsA0(J)J
    .locals 14
    .param p0, "$v$c$androidx-compose-ui-unit-Velocity$-$this$toOffset$0"    # J

    .line 197
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v0

    .local v0, "x$iv":F
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v1

    .local v1, "y$iv":F
    const/4 v2, 0x0

    .line 206
    .local v2, "$i$f$Offset":I
    move v3, v1

    .local v3, "val2$iv$iv":F
    move v4, v0

    .local v4, "val1$iv$iv":F
    const/4 v5, 0x0

    .line 207
    .local v5, "$i$f$packFloats":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    .line 208
    .local v6, "v1$iv$iv":J
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    .line 209
    .local v8, "v2$iv$iv":J
    const/16 v10, 0x20

    shl-long v10, v6, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v8

    or-long v3, v10, v12

    .line 206
    .end local v3    # "val2$iv$iv":F
    .end local v4    # "val1$iv$iv":F
    .end local v5    # "$i$f$packFloats":I
    .end local v6    # "v1$iv$iv":J
    .end local v8    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 197
    .end local v0    # "x$iv":F
    .end local v1    # "y$iv":F
    .end local v2    # "$i$f$Offset":I
    return-wide v0
.end method
