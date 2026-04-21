.class public final synthetic Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/window/layout/adapter/sidecar/SidecarCompat;"
    method = "registerConfigurationChangeListener$lambda$0"
    proto = "(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {v0, v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->registerConfigurationChangeListener$lambda$0(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method
