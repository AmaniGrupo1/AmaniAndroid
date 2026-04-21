.class public final synthetic Lcom/google/firebase/storage/StorageRegistrar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/storage/StorageRegistrar;"
    method = "lambda$getComponents$0"
    proto = "(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/storage/FirebaseStorageComponent;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/StorageRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/StorageRegistrar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageRegistrar$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/storage/StorageRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageRegistrar$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/storage/StorageRegistrar;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageRegistrar;->lambda$getComponents$0$com-google-firebase-storage-StorageRegistrar(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/storage/FirebaseStorageComponent;

    move-result-object p1

    return-object p1
.end method
