.class final Lcom/google/android/gms/common/images/zab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Lcom/google/android/gms/common/images/zag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/zab;->zab:Lcom/google/android/gms/common/images/zag;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/Map;

    move-result-object v3

    .line 3
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zab(Lcom/google/android/gms/common/images/zag;)V

    :cond_0
    iget-object v1, v2, Lcom/google/android/gms/common/images/zag;->zaa:Lcom/google/android/gms/common/images/zad;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zag()Lcom/google/android/gms/internal/base/zaj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zad()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zaj;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj()Ljava/util/Map;

    move-result-object v4

    .line 6
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    cmp-long v4, v5, v7

    if-gez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zag()Lcom/google/android/gms/internal/base/zaj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zad()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zaj;Z)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj()Ljava/util/Map;

    move-result-object v4

    .line 9
    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    nop

    .line 10
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v5}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zai()Ljava/util/Map;

    move-result-object v3

    .line 11
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v3, :cond_4

    .line 12
    new-instance v3, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zai()Ljava/util/Map;

    move-result-object v4

    .line 13
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zaa(Lcom/google/android/gms/common/images/zag;)V

    instance-of v4, v2, Lcom/google/android/gms/common/images/zaf;

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zab()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zac()Ljava/util/HashSet;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zac()Ljava/util/HashSet;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zac()V

    .line 19
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
