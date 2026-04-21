.class public final synthetic Lcom/google/firebase/storage/StorageKt$taskState$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/storage/StorageKt$taskState$1;"
    method = "invokeSuspend$lambda$4"
    proto = "(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/android/gms/tasks/Task;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageKt$taskState$1$$ExternalSyntheticLambda3;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageKt$taskState$1$$ExternalSyntheticLambda3;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageKt$taskState$1;->invokeSuspend$lambda$4(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
