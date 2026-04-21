.class public final synthetic Landroidx/compose/foundation/layout/WindowInsetsSizeKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/layout/WindowInsetsSizeKt;"
    method = "startCalc$lambda$0"
    proto = "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p2, Landroidx/compose/ui/unit/LayoutDirection;

    check-cast p3, Landroidx/compose/ui/unit/Density;

    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->startCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
