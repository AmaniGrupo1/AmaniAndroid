.class public final synthetic Landroidx/media3/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/ui/TrackSelectionDialogBuilder$DialogCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/ui/TrackSelectionDialogBuilder;"
    method = "lambda$new$0"
    proto = "(Landroidx/media3/common/Player;IZLjava/util/Map;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/Player;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/Player;

    iput p2, p0, Landroidx/media3/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onTracksSelected(ZLjava/util/Map;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/common/Player;

    iget v1, p0, Landroidx/media3/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2}, Landroidx/media3/ui/TrackSelectionDialogBuilder;->lambda$new$0(Landroidx/media3/common/Player;IZLjava/util/Map;)V

    return-void
.end method
