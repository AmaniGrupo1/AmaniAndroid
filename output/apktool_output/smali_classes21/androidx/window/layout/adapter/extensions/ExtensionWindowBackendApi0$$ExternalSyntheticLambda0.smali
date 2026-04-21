.class public final synthetic Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;"
    method = "registerLayoutChangeCallback$lambda$0"
    proto = "(Landroidx/core/util/Consumer;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Consumer;

    invoke-static {v0}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;->registerLayoutChangeCallback$lambda$0(Landroidx/core/util/Consumer;)V

    return-void
.end method
