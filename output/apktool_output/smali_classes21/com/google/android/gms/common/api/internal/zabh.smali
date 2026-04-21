.class final Lcom/google/android/gms/common/api/internal/zabh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:I

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabh;->zaa:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabh;->zab:Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabh;->zab:Lcom/google/android/gms/common/api/internal/zabk;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabh;->zaa:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zau(I)V

    return-void
.end method
