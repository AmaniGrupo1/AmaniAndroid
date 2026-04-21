.class public final synthetic Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt;"
    method = "ContextMenuArea$lambda$1$0"
    proto = "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/contextmenu/ContextMenuState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuAreaKt;->$r8$lambda$kggTOENSgMwNPzBaLs7Gw7wlPE8(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
