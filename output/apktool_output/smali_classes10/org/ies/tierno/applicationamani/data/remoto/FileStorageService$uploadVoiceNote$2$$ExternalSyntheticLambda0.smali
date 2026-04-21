.class public final synthetic Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;"
    method = "invokeSuspend$lambda$0"
    proto = "(Ljava/lang/String;Lcom/google/firebase/storage/StorageMetadata$Builder;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-static {v0, p1}, Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$uploadVoiceNote$2;->invokeSuspend$lambda$0(Ljava/lang/String;Lcom/google/firebase/storage/StorageMetadata$Builder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
