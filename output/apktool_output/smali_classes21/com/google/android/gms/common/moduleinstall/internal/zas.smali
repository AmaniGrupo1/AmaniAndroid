.class final synthetic Lcom/google/android/gms/common/moduleinstall/internal/zas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field private final synthetic zab:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

.field private final synthetic zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

.field private final synthetic zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iput-object p4, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iput-object p5, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    .line 1
    new-instance v2, Lcom/google/android/gms/common/moduleinstall/internal/zam;

    iget-object v3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zac:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    invoke-direct {v2, v0, v1, p2, v3}, Lcom/google/android/gms/common/moduleinstall/internal/zam;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/internal/zaz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zad:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zas;->zae:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    invoke-virtual {p1, v2, p2, v0}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zaf(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    return-void
.end method
