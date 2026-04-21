.class final Lcom/google/android/gms/common/api/internal/zaaj;
.super Lcom/google/android/gms/common/api/internal/zabb;
.source "com.google.android.gms:play-services-base@@18.9.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaal;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zab:Lcom/google/android/gms/common/api/internal/zaal;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabb;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zab:Lcom/google/android/gms/common/api/internal/zaal;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;->zao(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
