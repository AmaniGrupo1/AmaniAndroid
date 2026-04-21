.class public final synthetic Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/database/connection/ConnectionTokenProvider;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/database/core/Context;"
    method = "lambda$wrapTokenProvider$0"
    proto = "(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/TokenProvider;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/TokenProvider;

    iput-object p2, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final getToken(ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/core/TokenProvider;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/database/core/Context;->lambda$wrapTokenProvider$0(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    return-void
.end method
