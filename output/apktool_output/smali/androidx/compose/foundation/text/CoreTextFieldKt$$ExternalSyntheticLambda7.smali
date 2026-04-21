.class public final synthetic Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/CoreTextFieldKt;"
    method = "CoreTextField$lambda$24$0"
    proto = "(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic f$1:Landroidx/compose/ui/graphics/Brush;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;->f$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;->f$1:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;->f$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;->f$1:Landroidx/compose/ui/graphics/Brush;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->$r8$lambda$9KNCD21yNbw2PIgUYnn3xSauY0M(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
