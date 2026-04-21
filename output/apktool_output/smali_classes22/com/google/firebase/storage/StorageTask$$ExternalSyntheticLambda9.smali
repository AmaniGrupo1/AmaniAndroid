.class public final synthetic Lcom/google/firebase/storage/StorageTask$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/android/gms/tasks/CancellationTokenSource;"
    method = "cancel"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$ExternalSyntheticLambda9;->f$0:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$ExternalSyntheticLambda9;->f$0:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageTask;->$r8$lambda$U9iLvOIOqEg8mlKCGh6mbxc7h3E(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    return-void
.end method
