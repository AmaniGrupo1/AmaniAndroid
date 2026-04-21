.class final Lcom/google/android/gms/common/api/internal/zacq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Result;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zacs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacs;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacq;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zacs;->zad()Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/ResultTransform;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacq;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zacs;->zah()Lcom/google/android/gms/common/api/internal/zacr;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zacs;->zah()Lcom/google/android/gms/common/api/internal/zacr;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/api/internal/zacr;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/internal/zacr;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacq;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacs;->zai(Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacs;->zag()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 10
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacs;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zacs;->zah()Lcom/google/android/gms/common/api/internal/zacr;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zacs;->zah()Lcom/google/android/gms/common/api/internal/zacr;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/common/api/internal/zacr;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/api/internal/zacr;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacq;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacs;->zai(Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacs;->zag()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    :cond_0
    return-void

    .line 7
    :goto_1
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacq;->zab:Lcom/google/android/gms/common/api/internal/zacs;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacq;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zacs;->zai(Lcom/google/android/gms/common/api/Result;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacs;->zag()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 11
    :goto_2
    throw v0
.end method
