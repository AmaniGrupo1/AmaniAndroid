.class final Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Landroidx/media3/exoplayer/SuitableOutputChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImplApi35"
.end annotation


# static fields
.field private static final EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field private controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field private isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/BackgroundThreadStateHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private routeCallback:Landroid/media/MediaRouter2$RouteCallback;

.field private router:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic $r8$lambda$D_k4FOka0P2tSMEB-krWatLt8yk(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 83
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;

    .line 79
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Landroid/media/MediaRouter2;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    .line 79
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaRouter2;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaRouter2;

    .line 79
    invoke-static {p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Landroidx/media3/common/util/BackgroundThreadStateHandler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    .line 79
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    return-object v0
.end method

.method private static isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z
    .locals 4
    .param p0, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p1, "transferReason"    # I
    .param p2, "wasTransferInitiatedBySelf"    # Z

    .line 160
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getSuitabilityStatus()I

    move-result v0

    .line 162
    .local v0, "suitabilityStatus":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 163
    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 168
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z
    .locals 5
    .param p0, "router"    # Landroid/media/MediaRouter2;

    .line 145
    nop

    .line 146
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v0

    .line 147
    .local v0, "transferReason":I
    nop

    .line 148
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->wasTransferInitiatedBySelf()Z

    move-result v1

    .line 149
    .local v1, "wasTransferInitiatedBySelf":Z
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 150
    .local v3, "routeInfo":Landroid/media/MediaRoute2Info;
    invoke-static {v3, v0, v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v2, 0x1

    return v2

    .line 154
    .end local v3    # "routeInfo":Landroid/media/MediaRoute2Info;
    :cond_0
    goto :goto_0

    .line 155
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$enable$0(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "callback"    # Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;
    .param p1, "oldState"    # Ljava/lang/Boolean;
    .param p2, "newState"    # Ljava/lang/Boolean;

    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;->onSelectedOutputSuitabilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    .line 131
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 6
    .param p1, "callback"    # Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callbackLooper"    # Landroid/os/Looper;
    .param p4, "backgroundLooper"    # Landroid/os/Looper;
    .param p5, "clock"    # Landroidx/media3/common/util/Clock;

    .line 98
    new-instance v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 100
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v5, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    .end local p3    # "callbackLooper":Landroid/os/Looper;
    .end local p4    # "backgroundLooper":Landroid/os/Looper;
    .end local p5    # "clock":Landroidx/media3/common/util/Clock;
    .local v2, "backgroundLooper":Landroid/os/Looper;
    .local v3, "callbackLooper":Landroid/os/Looper;
    .local v4, "clock":Landroidx/media3/common/util/Clock;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 106
    iget-object p3, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance p4, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method synthetic lambda$disable$2$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi35()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 135
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    .line 136
    return-void
.end method

.method synthetic lambda$enable$1$androidx-media3-exoplayer-DefaultSuitableOutputChecker$ImplApi35(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    .line 110
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 111
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;)V

    .line 112
    .local v1, "backgroundExecutor":Ljava/util/concurrent/Executor;
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    sget-object v3, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 114
    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 123
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    .line 124
    invoke-static {v2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
