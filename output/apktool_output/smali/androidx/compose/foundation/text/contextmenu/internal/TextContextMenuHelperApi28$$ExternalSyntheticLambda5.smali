.class public final synthetic Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;"
    method = "textClassificationItem$lambda$4"
    proto = "(Landroid/app/RemoteAction;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/RemoteAction;


# direct methods
.method public synthetic constructor <init>(Landroid/app/RemoteAction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$$ExternalSyntheticLambda5;->f$0:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$$ExternalSyntheticLambda5;->f$0:Landroid/app/RemoteAction;

    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem$lambda$4(Landroid/app/RemoteAction;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
