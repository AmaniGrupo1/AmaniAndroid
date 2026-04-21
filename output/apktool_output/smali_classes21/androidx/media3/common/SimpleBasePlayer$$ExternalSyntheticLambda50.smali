.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/SimpleBasePlayer;"
    method = "lambda$setVideoSurfaceHolder$20"
    proto = "(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic f$1:Landroid/view/SurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;->f$1:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;->f$0:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;->f$1:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVideoSurfaceHolder$20(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
