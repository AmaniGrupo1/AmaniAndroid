.class public final synthetic Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/BasicTextFieldKt;"
    method = "BasicTextField$lambda$24$0"
    proto = "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v0, v1, v2, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->$r8$lambda$vMifF5XGcyVlCJ2x61Z-nONHwyk(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
