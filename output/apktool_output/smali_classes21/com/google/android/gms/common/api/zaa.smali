.class final Lcom/google/android/gms/common/api/zaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zaa;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/zaa;->zaa:Lcom/google/android/gms/common/api/Batch;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zai()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    monitor-exit v1

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/Batch;->zag(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/Batch;->zae(Z)V

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zab()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/Batch;->zac(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zab()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zaf()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->zaa(Lcom/google/android/gms/common/api/Batch;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zad()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 8
    const/16 v2, 0xd

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    :goto_1
    new-instance v2, Lcom/google/android/gms/common/api/BatchResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->zah()[Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 11
    :cond_5
    :goto_2
    monitor-exit v1

    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
