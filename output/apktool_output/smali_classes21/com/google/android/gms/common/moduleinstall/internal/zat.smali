.class final synthetic Lcom/google/android/gms/common/moduleinstall/internal/zat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field private final synthetic zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zat;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zat;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zat;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    .line 1
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/zan;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zan;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/internal/zaz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zat;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zai(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    return-void
.end method
