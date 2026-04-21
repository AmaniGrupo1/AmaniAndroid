.class public final synthetic Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt;"
    method = "NavControllerSaver$lambda$6$NavHostControllerKt__NavHostController_androidKt"
    proto = "(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/navigation/NavHostController;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Landroidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt;->$r8$lambda$NRzncjvKyti8ZwG0GHnlY9YYsmg(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/navigation/NavHostController;

    move-result-object p1

    return-object p1
.end method
