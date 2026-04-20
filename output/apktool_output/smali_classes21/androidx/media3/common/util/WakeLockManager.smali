.class public final Landroidx/media3/common/util/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLockManager"

.field private static final UNREACTIVE_WAKELOCK_HANDLER_RELEASE_DELAY_MS:I = 0x3e8

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "ExoPlayer:WakeLockManager"


# instance fields
.field private enabled:Z

.field private final mainHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private stayAwake:Z

.field private final wakeLockHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final wakeLockManagerInternal:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockLooper"    # Landroid/os/Looper;
    .param p3, "clock"    # Landroidx/media3/common/util/Clock;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockManagerInternal:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 61
    const/4 v0, 0x0

    invoke-interface {p3, p2, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->mainHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 63
    return-void
.end method

.method static synthetic access$000(ZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z

    .line 39
    invoke-static {p0, p1}, Landroidx/media3/common/util/WakeLockManager;->shouldAcquireWakelock(ZZ)Z

    move-result v0

    return v0
.end method

.method private postUpdateWakeLock(ZZ)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "stayAwake"    # Z

    .line 103
    invoke-static {p1, p2}, Landroidx/media3/common/util/WakeLockManager;->shouldAcquireWakelock(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/util/WakeLockManager;ZZ)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 109
    .local v0, "emergencyReleaseNeeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Landroidx/media3/common/util/WakeLockManager;->mainHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v2, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    iget-object v1, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v2, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/media3/common/util/WakeLockManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 118
    .end local v0    # "emergencyReleaseNeeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    return-void
.end method

.method private static shouldAcquireWakelock(ZZ)Z
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "stayAwake"    # Z

    .line 121
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method synthetic lambda$postUpdateWakeLock$0$androidx-media3-common-util-WakeLockManager(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "stayAwake"    # Z

    .line 104
    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockManagerInternal:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->access$100(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;ZZ)V

    return-void
.end method

.method synthetic lambda$postUpdateWakeLock$1$androidx-media3-common-util-WakeLockManager(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "emergencyReleaseNeeded"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockManagerInternal:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-static {v0, p1}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->access$200(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method synthetic lambda$postUpdateWakeLock$2$androidx-media3-common-util-WakeLockManager(Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 1
    .param p1, "emergencyReleaseNeeded"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "enabled"    # Z
    .param p3, "stayAwake"    # Z

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->wakeLockManagerInternal:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-static {v0, p2, p3}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->access$100(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;ZZ)V

    .line 116
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 76
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WakeLockManager;->enabled:Z

    .line 80
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->stayAwake:Z

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/WakeLockManager;->postUpdateWakeLock(ZZ)V

    .line 81
    return-void
.end method

.method public setStayAwake(Z)V
    .locals 1
    .param p1, "stayAwake"    # Z

    .line 93
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->stayAwake:Z

    if-ne v0, p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WakeLockManager;->stayAwake:Z

    .line 97
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->enabled:Z

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/media3/common/util/WakeLockManager;->postUpdateWakeLock(ZZ)V

    .line 100
    :cond_1
    return-void
.end method
