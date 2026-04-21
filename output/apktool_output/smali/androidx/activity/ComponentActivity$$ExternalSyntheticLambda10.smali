.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/activity/ComponentActivity;"
    method = "onBackPressedDispatcher_delegate$lambda$0$1$0"
    proto = "(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/activity/ComponentActivity;

.field public final synthetic f$1:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$0:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$0:Landroidx/activity/ComponentActivity;

    iget-object v1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda10;->f$1:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0, v1}, Landroidx/activity/ComponentActivity;->$r8$lambda$7IJBVrN0sHyidCAZufWEJFc7-yY(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method
