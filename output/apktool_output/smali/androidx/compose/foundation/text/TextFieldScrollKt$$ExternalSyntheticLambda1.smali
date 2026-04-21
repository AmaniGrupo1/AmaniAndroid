.class public final synthetic Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/TextFieldScrollKt;"
    method = "textFieldScrollable$lambda$1"
    proto = "(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic f$3:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iput-boolean p2, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p4, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-boolean v1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable$lambda$1(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method
