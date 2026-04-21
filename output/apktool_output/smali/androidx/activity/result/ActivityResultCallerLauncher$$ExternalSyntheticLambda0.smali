.class public final synthetic Landroidx/activity/result/ActivityResultCallerLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/activity/result/ActivityResultCallerLauncher;"
    method = "resultContract_delegate$lambda$0"
    proto = "(Landroidx/activity/result/ActivityResultCallerLauncher;)Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/activity/result/ActivityResultCallerLauncher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultCallerLauncher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultCallerLauncher$$ExternalSyntheticLambda0;->f$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultCallerLauncher$$ExternalSyntheticLambda0;->f$0:Landroidx/activity/result/ActivityResultCallerLauncher;

    invoke-static {v0}, Landroidx/activity/result/ActivityResultCallerLauncher;->resultContract_delegate$lambda$0(Landroidx/activity/result/ActivityResultCallerLauncher;)Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;

    move-result-object v0

    return-object v0
.end method
