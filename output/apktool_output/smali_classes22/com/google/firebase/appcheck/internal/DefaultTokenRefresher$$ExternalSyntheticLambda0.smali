.class public final synthetic Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;"
    method = "lambda$onRefresh$0"
    proto = "(Ljava/lang/Exception;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    invoke-virtual {v0, p1}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->lambda$onRefresh$0$com-google-firebase-appcheck-internal-DefaultTokenRefresher(Ljava/lang/Exception;)V

    return-void
.end method
