.class public final Landroidx/compose/foundation/ClipScrollableContainerKt;
.super Ljava/lang/Object;
.source "ClipScrollableContainer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipScrollableContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipScrollableContainer.kt\nandroidx/compose/foundation/ClipScrollableContainerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,99:1\n122#2:100\n*S KotlinDebug\n*F\n+ 1 ClipScrollableContainer.kt\nandroidx/compose/foundation/ClipScrollableContainerKt\n*L\n62#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\"\u0016\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "clipScrollableContainer",
        "Landroidx/compose/ui/Modifier;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "MaxSupportedElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "getMaxSupportedElevation",
        "()F",
        "F",
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


# static fields
.field private static final MaxSupportedElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const/16 v0, 0x1e

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 62
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    return-void
.end method

.method public static final clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$clipScrollableContainer"    # Landroidx/compose/ui/Modifier;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 39
    nop

    .line 40
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_0

    .line 41
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    sget-object v1, Landroidx/compose/foundation/VerticalScrollableClipShape;->INSTANCE:Landroidx/compose/foundation/VerticalScrollableClipShape;

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    sget-object v1, Landroidx/compose/foundation/HorizontalScrollableClipShape;->INSTANCE:Landroidx/compose/foundation/HorizontalScrollableClipShape;

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static final getMaxSupportedElevation()F
    .locals 1

    .line 62
    sget v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    return v0
.end method
