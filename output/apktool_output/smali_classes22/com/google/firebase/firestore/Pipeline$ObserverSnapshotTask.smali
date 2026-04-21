.class final Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;
.super Ljava/lang/Object;
.source "Pipeline.kt"

# interfaces
.implements Lcom/google/firebase/firestore/PipelineResultObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ObserverSnapshotTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J:\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;",
        "Lcom/google/firebase/firestore/PipelineResultObserver;",
        "<init>",
        "(Lcom/google/firebase/firestore/Pipeline;)V",
        "userDataWriter",
        "Lcom/google/firebase/firestore/UserDataWriter;",
        "taskCompletionSource",
        "Lcom/google/android/gms/tasks/TaskCompletionSource;",
        "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
        "results",
        "",
        "Lcom/google/firebase/firestore/PipelineResult;",
        "onDocument",
        "",
        "key",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        "data",
        "",
        "",
        "Lcom/google/firestore/v1/Value;",
        "createTime",
        "Lcom/google/firebase/Timestamp;",
        "updateTime",
        "onComplete",
        "executionTime",
        "onError",
        "exception",
        "Lcom/google/firebase/firestore/FirebaseFirestoreException;",
        "task",
        "Lcom/google/android/gms/tasks/Task;",
        "getTask",
        "()Lcom/google/android/gms/tasks/Task;",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/PipelineResult;",
            ">;"
        }
    .end annotation
.end field

.field private final taskCompletionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/firestore/Pipeline;

.field private final userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/Pipeline;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/firebase/firestore/Pipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->this$0:Lcom/google/firebase/firestore/Pipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/google/firebase/firestore/UserDataWriter;

    iget-object v1, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->this$0:Lcom/google/firebase/firestore/Pipeline;

    invoke-static {v1}, Lcom/google/firebase/firestore/Pipeline;->access$getFirestore$p(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/UserDataWriter;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;

    .line 189
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->taskCompletionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->results:Ljava/util/List;

    .line 186
    return-void
.end method


# virtual methods
.method public final getTask()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/Pipeline$Snapshot;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->taskCompletionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "getTask(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onComplete(Lcom/google/firebase/Timestamp;)V
    .locals 3
    .param p1, "executionTime"    # Lcom/google/firebase/Timestamp;

    const-string v0, "executionTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->taskCompletionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/firebase/firestore/Pipeline$Snapshot;

    iget-object v2, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->results:Ljava/util/List;

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/firestore/Pipeline$Snapshot;-><init>(Lcom/google/firebase/Timestamp;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onDocument(Lcom/google/firebase/firestore/model/DocumentKey;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V
    .locals 7
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "data"    # Ljava/util/Map;
    .param p3, "createTime"    # Lcom/google/firebase/Timestamp;
    .param p4, "updateTime"    # Lcom/google/firebase/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;",
            "Lcom/google/firebase/Timestamp;",
            "Lcom/google/firebase/Timestamp;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->results:Ljava/util/List;

    .line 198
    new-instance v1, Lcom/google/firebase/firestore/PipelineResult;

    .line 199
    iget-object v2, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->userDataWriter:Lcom/google/firebase/firestore/UserDataWriter;

    .line 200
    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v4, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->this$0:Lcom/google/firebase/firestore/Pipeline;

    invoke-static {v4}, Lcom/google/firebase/firestore/Pipeline;->access$getFirestore$p(Lcom/google/firebase/firestore/Pipeline;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 201
    :goto_0
    nop

    .line 202
    nop

    .line 203
    nop

    .line 198
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "data":Ljava/util/Map;
    .end local p3    # "createTime":Lcom/google/firebase/Timestamp;
    .end local p4    # "updateTime":Lcom/google/firebase/Timestamp;
    .local v4, "data":Ljava/util/Map;
    .local v5, "createTime":Lcom/google/firebase/Timestamp;
    .local v6, "updateTime":Lcom/google/firebase/Timestamp;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/PipelineResult;-><init>(Lcom/google/firebase/firestore/UserDataWriter;Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;Lcom/google/firebase/Timestamp;Lcom/google/firebase/Timestamp;)V

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2
    .param p1, "exception"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/firebase/firestore/Pipeline$ObserverSnapshotTask;->taskCompletionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v1, p1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 214
    return-void
.end method
