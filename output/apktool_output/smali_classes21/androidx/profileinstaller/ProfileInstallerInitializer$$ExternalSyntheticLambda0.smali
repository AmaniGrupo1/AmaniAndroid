.class public final synthetic Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/profileinstaller/ProfileInstallerInitializer;"
    method = "lambda$create$0"
    proto = "(Landroid/content/Context;J)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;->f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iput-object p2, p0, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;->f$0:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object v1, p0, Landroidx/profileinstaller/ProfileInstallerInitializer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/profileinstaller/ProfileInstallerInitializer;->lambda$create$0$androidx-profileinstaller-ProfileInstallerInitializer(Landroid/content/Context;J)V

    return-void
.end method
