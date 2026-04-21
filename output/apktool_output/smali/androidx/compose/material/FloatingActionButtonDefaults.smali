.class public final Landroidx/compose/material/FloatingActionButtonDefaults;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,415:1\n148#2:416\n148#2:417\n148#2:418\n148#2:419\n148#2:420\n148#2:421\n148#2:422\n148#2:423\n1223#3,6:424\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonDefaults\n*L\n221#1:416\n222#1:417\n226#1:418\n227#1:419\n245#1:420\n246#1:421\n247#1:422\n248#1:423\n250#1:424,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ:\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/material/FloatingActionButtonDefaults;",
        "",
        "()V",
        "elevation",
        "Landroidx/compose/material/FloatingActionButtonElevation;",
        "defaultElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "pressedElevation",
        "elevation-ixp7dh8",
        "(FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;",
        "hoveredElevation",
        "focusedElevation",
        "elevation-xZ9-QkE",
        "(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/FloatingActionButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material/FloatingActionButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic elevation-ixp7dh8(FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;
    .locals 9
    .param p1, "defaultElevation"    # F
    .param p2, "pressedElevation"    # F
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use another overload of elevation"
    .end annotation

    .line 223
    const v0, -0x26fd465c

    const-string v1, "C(elevation)P(0:c#ui.unit.Dp,1:c#ui.unit.Dp)222@9683L134:FloatingActionButton.kt#jmzs0o"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x6

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 416
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    move v2, p1

    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    goto :goto_0

    .line 223
    :cond_0
    move v2, p1

    .line 416
    .end local p1    # "defaultElevation":F
    .local v2, "defaultElevation":F
    :goto_0
    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 222
    const/16 p1, 0xc

    .local p1, "$this$dp$iv":I
    const/4 p5, 0x0

    .line 417
    .local p5, "$i$f$getDp":I
    int-to-float v1, p1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    move v3, p2

    .end local p1    # "$this$dp$iv":I
    .end local p5    # "$i$f$getDp":I
    goto :goto_1

    .line 416
    :cond_1
    move v3, p2

    .line 417
    .end local p2    # "pressedElevation":F
    .local v3, "pressedElevation":F
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    const/4 p1, -0x1

    const-string/jumbo p2, "androidx.compose.material.FloatingActionButtonDefaults.elevation (FloatingActionButton.kt:222)"

    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 224
    :cond_2
    nop

    .line 225
    nop

    .line 226
    const/16 p1, 0x8

    .restart local p1    # "$this$dp$iv":I
    const/4 p2, 0x0

    .line 418
    .local p2, "$i$f$getDp":I
    int-to-float p5, p1

    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 227
    .end local p1    # "$this$dp$iv":I
    .end local p2    # "$i$f$getDp":I
    const/16 p1, 0x8

    .restart local p1    # "$this$dp$iv":I
    const/4 p2, 0x0

    .line 419
    .restart local p2    # "$i$f$getDp":I
    int-to-float p5, p1

    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .end local p1    # "$this$dp$iv":I
    .end local p2    # "$i$f$getDp":I
    and-int/lit8 p1, p4, 0xe

    or-int/lit16 p1, p1, 0xd80

    and-int/lit8 p2, p4, 0x70

    or-int/2addr p1, p2

    shl-int/lit8 p2, p4, 0x6

    const p5, 0xe000

    and-int/2addr p2, p5

    or-int v7, p1, p2

    .line 223
    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object p1
.end method

.method public final elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;
    .locals 7
    .param p1, "defaultElevation"    # F
    .param p2, "pressedElevation"    # F
    .param p3, "hoveredElevation"    # F
    .param p4, "focusedElevation"    # F
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 249
    const v0, 0x16ac8064

    const-string v1, "C(elevation)P(0:c#ui.unit.Dp,3:c#ui.unit.Dp,2:c#ui.unit.Dp,1:c#ui.unit.Dp)249@10645L367:FloatingActionButton.kt#jmzs0o"

    invoke-static {p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x6

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 420
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    move v2, p1

    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    goto :goto_0

    .line 249
    :cond_0
    move v2, p1

    .line 420
    .end local p1    # "defaultElevation":F
    .local v2, "defaultElevation":F
    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 246
    const/16 p1, 0xc

    .local p1, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 421
    .local v1, "$i$f$getDp":I
    int-to-float v3, p1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    move v3, p2

    .end local v1    # "$i$f$getDp":I
    .end local p1    # "$this$dp$iv":I
    goto :goto_1

    .line 420
    :cond_1
    move v3, p2

    .line 421
    .end local p2    # "pressedElevation":F
    .local v3, "pressedElevation":F
    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 247
    const/16 p1, 0x8

    .restart local p1    # "$this$dp$iv":I
    const/4 p2, 0x0

    .line 422
    .local p2, "$i$f$getDp":I
    int-to-float v1, p1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    move v4, p3

    .end local p1    # "$this$dp$iv":I
    .end local p2    # "$i$f$getDp":I
    goto :goto_2

    .line 421
    :cond_2
    move v4, p3

    .line 422
    .end local p3    # "hoveredElevation":F
    .local v4, "hoveredElevation":F
    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 248
    const/16 p1, 0x8

    .restart local p1    # "$this$dp$iv":I
    const/4 p2, 0x0

    .line 423
    .restart local p2    # "$i$f$getDp":I
    int-to-float p3, p1

    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    move v5, p4

    .end local p1    # "$this$dp$iv":I
    .end local p2    # "$i$f$getDp":I
    goto :goto_3

    .line 422
    :cond_3
    move v5, p4

    .line 423
    .end local p4    # "focusedElevation":F
    .local v5, "focusedElevation":F
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 249
    const/4 p1, -0x1

    const-string/jumbo p2, "androidx.compose.material.FloatingActionButtonDefaults.elevation (FloatingActionButton.kt:248)"

    invoke-static {v0, p6, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    nop

    .line 250
    const p1, -0x41964f3c

    const-string p2, "CC(remember):FloatingActionButton.kt#9igjgp"

    invoke-static {p5, p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 p1, p6, 0xe

    xor-int/lit8 p1, p1, 0x6

    const/4 p2, 0x4

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-le p1, p2, :cond_5

    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    and-int/lit8 p1, p6, 0x6

    if-ne p1, p2, :cond_7

    :cond_6
    move p1, p4

    goto :goto_4

    :cond_7
    move p1, p3

    :goto_4
    and-int/lit8 p2, p6, 0x70

    xor-int/lit8 p2, p2, 0x30

    const/16 p7, 0x20

    if-le p2, p7, :cond_8

    invoke-interface {p5, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    and-int/lit8 p2, p6, 0x30

    if-ne p2, p7, :cond_a

    :cond_9
    move p2, p4

    goto :goto_5

    :cond_a
    move p2, p3

    :goto_5
    or-int/2addr p1, p2

    and-int/lit16 p2, p6, 0x380

    xor-int/lit16 p2, p2, 0x180

    const/16 p7, 0x100

    if-le p2, p7, :cond_b

    invoke-interface {p5, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    and-int/lit16 p2, p6, 0x180

    if-ne p2, p7, :cond_d

    :cond_c
    move p2, p4

    goto :goto_6

    :cond_d
    move p2, p3

    :goto_6
    or-int/2addr p1, p2

    and-int/lit16 p2, p6, 0x1c00

    xor-int/lit16 p2, p2, 0xc00

    const/16 p7, 0x800

    if-le p2, p7, :cond_e

    invoke-interface {p5, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p2

    if-nez p2, :cond_f

    :cond_e
    and-int/lit16 p2, p6, 0xc00

    if-ne p2, p7, :cond_10

    :cond_f
    move p3, p4

    :cond_10
    or-int/2addr p1, p3

    .local p1, "invalid$iv":Z
    move-object p2, p5

    .local p2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 p3, 0x0

    .line 424
    .local p3, "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    .local p4, "it$iv":Ljava/lang/Object;
    const/4 p7, 0x0

    .line 425
    .local p7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p1, :cond_12

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_11

    goto :goto_7

    .line 429
    :cond_11
    move-object v1, p4

    goto :goto_8

    .line 426
    :cond_12
    :goto_7
    const/4 v0, 0x0

    .line 251
    .local v0, "$i$a$-cache-FloatingActionButtonDefaults$elevation$1":I
    new-instance v1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    .line 252
    nop

    .line 253
    nop

    .line 254
    nop

    .line 255
    nop

    .line 251
    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 426
    .end local v0    # "$i$a$-cache-FloatingActionButtonDefaults$elevation$1":I
    nop

    .line 427
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 428
    nop

    .line 425
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 424
    .end local p4    # "it$iv":Ljava/lang/Object;
    .end local p7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 250
    .end local p1    # "invalid$iv":Z
    .end local p2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p3    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 249
    :cond_13
    invoke-static {p5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v1, Landroidx/compose/material/FloatingActionButtonElevation;

    .line 250
    return-object v1
.end method
