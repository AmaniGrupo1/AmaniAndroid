.class public final synthetic Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/core/ActivityScope;"
    method = "lambda$onFragmentActivityStopCallOnce$1"
    proto = "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/ActivityScope;->lambda$onFragmentActivityStopCallOnce$1(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V

    return-void
.end method
