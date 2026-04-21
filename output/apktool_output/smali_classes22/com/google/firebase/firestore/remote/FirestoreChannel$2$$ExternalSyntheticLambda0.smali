.class public final synthetic Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/ClientCall;"
    method = "halfClose"
    proto = "()V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lio/grpc/ClientCall;

    invoke-static {p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;->$r8$lambda$QGYI3k3cUVEndQVPk3Rl6l4YrOg(Lio/grpc/ClientCall;)V

    return-void
.end method
