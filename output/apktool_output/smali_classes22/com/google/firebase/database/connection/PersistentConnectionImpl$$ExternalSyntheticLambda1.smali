.class public final synthetic Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/database/connection/PersistentConnectionImpl;"
    method = "lambda$get$0"
    proto = "(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lambda$get$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V

    return-void
.end method
