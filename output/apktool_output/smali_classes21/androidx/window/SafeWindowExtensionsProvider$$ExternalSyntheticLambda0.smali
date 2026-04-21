.class public final synthetic Landroidx/window/SafeWindowExtensionsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/window/SafeWindowExtensionsProvider;"
    method = "isWindowExtensionsPresent$lambda$1"
    proto = "(Landroidx/window/SafeWindowExtensionsProvider;)Ljava/lang/Class;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/window/SafeWindowExtensionsProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/SafeWindowExtensionsProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/SafeWindowExtensionsProvider$$ExternalSyntheticLambda0;->f$0:Landroidx/window/SafeWindowExtensionsProvider;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/window/SafeWindowExtensionsProvider$$ExternalSyntheticLambda0;->f$0:Landroidx/window/SafeWindowExtensionsProvider;

    invoke-static {v0}, Landroidx/window/SafeWindowExtensionsProvider;->isWindowExtensionsPresent$lambda$1(Landroidx/window/SafeWindowExtensionsProvider;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
