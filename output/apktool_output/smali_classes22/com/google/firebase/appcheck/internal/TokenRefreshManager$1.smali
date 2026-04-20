.class Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;
.super Ljava/lang/Object;
.source "TokenRefreshManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/appcheck/internal/TokenRefreshManager;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;Lcom/google/firebase/appcheck/internal/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

.field final synthetic val$clock:Lcom/google/firebase/appcheck/internal/util/Clock;

.field final synthetic val$tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;


# direct methods
.method constructor <init>(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;Lcom/google/firebase/appcheck/internal/util/Clock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    .line 69
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->this$0:Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->val$tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->val$clock:Lcom/google/firebase/appcheck/internal/util/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStateChanged(Z)V
    .locals 5
    .param p1, "background"    # Z

    .line 72
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->this$0:Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->access$002(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;Z)Z

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->val$tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->cancel()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->this$0:Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    invoke-static {v0}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->access$100(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->val$tokenRefresher:Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;

    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->this$0:Lcom/google/firebase/appcheck/internal/TokenRefreshManager;

    .line 78
    invoke-static {v1}, Lcom/google/firebase/appcheck/internal/TokenRefreshManager;->access$200(Lcom/google/firebase/appcheck/internal/TokenRefreshManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/firebase/appcheck/internal/TokenRefreshManager$1;->val$clock:Lcom/google/firebase/appcheck/internal/util/Clock;

    invoke-interface {v3}, Lcom/google/firebase/appcheck/internal/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/appcheck/internal/DefaultTokenRefresher;->scheduleRefresh(J)V

    .line 81
    :cond_1
    :goto_0
    return-void
.end method
