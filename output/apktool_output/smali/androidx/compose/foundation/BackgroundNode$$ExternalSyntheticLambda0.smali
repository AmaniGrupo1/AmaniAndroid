.class public final synthetic Landroidx/compose/foundation/BackgroundNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/BackgroundNode;"
    method = "getOutline$lambda$0"
    proto = "(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/BackgroundNode;

.field public final synthetic f$1:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/BackgroundNode;

    iput-object p2, p0, Landroidx/compose/foundation/BackgroundNode$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/BackgroundNode;

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {v0, v1}, Landroidx/compose/foundation/BackgroundNode;->getOutline$lambda$0(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
