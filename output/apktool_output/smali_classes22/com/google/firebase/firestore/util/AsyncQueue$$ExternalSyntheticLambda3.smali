.class public final synthetic Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/util/AsyncQueue;"
    method = "lambda$panic$3"
    proto = "(Ljava/lang/Throwable;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/AsyncQueue$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/AsyncQueue;->lambda$panic$3(Ljava/lang/Throwable;)V

    return-void
.end method
