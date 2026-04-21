.class public final synthetic Landroidx/compose/foundation/text/LinksTextMeasurePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/LinksTextMeasurePolicy;"
    method = "measure_3p2s80s$lambda$0"
    proto = "(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->measure_3p2s80s$lambda$0(Ljava/util/List;Landroidx/compose/foundation/text/LinksTextMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
