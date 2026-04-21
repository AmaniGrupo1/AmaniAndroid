.class public final synthetic Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/fragment/app/FragmentKt;"
    method = "setFragmentResultListener$lambda$0"
    proto = "(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/os/Bundle;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/fragment/app/FragmentKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
