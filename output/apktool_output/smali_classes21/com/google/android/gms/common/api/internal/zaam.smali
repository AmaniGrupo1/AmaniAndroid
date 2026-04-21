.class final Lcom/google/android/gms/common/api/internal/zaam;
.super Lcom/google/android/gms/common/api/internal/zaaq;
.source "com.google.android.gms:play-services-base@@18.9.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field private final zac:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;[B)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaam;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zar()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zap()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaam;->zac:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zar()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zax()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Ljava/util/Set;

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
