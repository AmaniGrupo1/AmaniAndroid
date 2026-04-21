.class public final synthetic Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/database/connection/PersistentConnectionImpl;"
    method = "lambda$tryScheduleReconnect$2"
    proto = "(JLjava/lang/Exception;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-wide v1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lambda$tryScheduleReconnect$2$com-google-firebase-database-connection-PersistentConnectionImpl(JLjava/lang/Exception;)V

    return-void
.end method
