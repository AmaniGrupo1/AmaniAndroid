.class public final Lcom/google/firebase/appcheck/internal/TokenRefreshManager;
.super Ljava/lang/Object;
.source "TokenRefreshManager.java"


# static fields
.field private static final FIVE_MINUTES_IN_MILLIS:J = 0x493e0L

.field private static final REFRESH_BUFFER_ABSOLUTE_MILLIS:J = 0xea60L

.field private static final REFRESH_BUFFER_FRACTION:D = 0.5

.field private static final UNSET_REFRESH_TIME:J = -0x1L


# instance fields
.field private final clock:Lcom/google/firebase/appcheck/internal/util/Clock;

.field private volatile currentListenerCount:I

.field private volatile isAutoRefreshEnabled:Z

.field private volatile isBackgrounded:Z

.field private volatile nextRefreshTimeMillis:J

.field private final tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/DefaultFirebaseAppCheck;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firebaseAppCheck"    # Lcom/google/firebase/appcheck/internal/DefaultFirebaseAppCheck;
    .param p3, "liteExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    nop

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    .line 56
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/appcheck/internal/DefaultFirebaseAppCheck;

    invoke-direct {v1, v2, p3, p4}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;-><init>(Lcom/google/firebase/appcheck/internal/DefaultFirebaseAppCheck;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v2, Lcom/google/firebase/appcheck/internal/util/Clock$DefaultClock;

    invoke-direct {v2}, Lcom/google/firebase/appcheck/internal/util/Clock$DefaultClock;-><init>()V

    .line 53
    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;Lcom/google/firebase/appcheck/internal/util/Clock;)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;Lcom/google/firebase/appcheck/internal/util/Clock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tokenRefresher"    # Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;
    .param p3, "clock"    # Lcom/google/firebase/appcheck/internal/util/Clock;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    .line 63
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->clock:Lcom/google/firebase/appcheck/internal/util/Clock;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;-><init>(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;Lcom/google/firebase/appcheck/internal/util/Clock;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/appcheck/internal/TokenRefreshManager;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->isBackgrounded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    .line 33
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->shouldScheduleRefresh()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    .line 33
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    return-wide v0
.end method

.method private shouldScheduleRefresh()Z
    .locals 4

    .line 129
    iget-boolean v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->isAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->isBackgrounded:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->currentListenerCount:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public maybeScheduleTokenRefresh(Lcom/google/firebase/appcheck/AppCheckToken;)V
    .locals 7
    .param p1, "token"    # Lcom/google/firebase/appcheck/AppCheckToken;

    .line 91
    instance-of v0, p1, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    .local v0, "defaultToken":Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;
    goto :goto_0

    .line 94
    .end local v0    # "defaultToken":Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->constructFromRawToken(Ljava/lang/String;)Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    move-result-object v0

    .line 98
    .restart local v0    # "defaultToken":Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;
    :goto_0
    nop

    .line 99
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->getReceivedAtTimestamp()J

    move-result-wide v1

    .line 100
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->getExpiresInMillis()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    .line 102
    iget-wide v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->getExpireTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->getExpireTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->shouldScheduleRefresh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    iget-wide v2, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    iget-object v4, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->clock:Lcom/google/firebase/appcheck/internal/util/Clock;

    invoke-interface {v4}, Lcom/google/firebase/appcheck/internal/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->scheduleRefresh(J)V

    .line 110
    :cond_2
    return-void
.end method

.method public onListenerCountChanged(I)V
    .locals 5
    .param p1, "newListenerCount"    # I

    .line 113
    iget v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->currentListenerCount:I

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 114
    iput p1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->currentListenerCount:I

    .line 115
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->shouldScheduleRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    iget-wide v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->nextRefreshTimeMillis:J

    iget-object v3, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->clock:Lcom/google/firebase/appcheck/internal/util/Clock;

    invoke-interface {v3}, Lcom/google/firebase/appcheck/internal/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->scheduleRefresh(J)V

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->currentListenerCount:I

    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->cancel()V

    .line 121
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->currentListenerCount:I

    .line 122
    return-void
.end method

.method public setIsAutoRefreshEnabled(Z)V
    .locals 0
    .param p1, "isAutoRefreshEnabled"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->isAutoRefreshEnabled:Z

    .line 126
    return-void
.end method
