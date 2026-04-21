.class public final Landroidx/media3/common/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "NetworkTypeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/NetworkTypeObserver$Listener;,
        Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;,
        Landroidx/media3/common/util/NetworkTypeObserver$Receiver;,
        Landroidx/media3/common/util/NetworkTypeObserver$Api31;
    }
.end annotation


# static fields
.field private static staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private isInitialized:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private networkType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Landroidx/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    .line 102
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/util/NetworkTypeObserver;

    .line 54
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/common/util/NetworkTypeObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroidx/media3/common/util/NetworkTypeObserver;->handleConnectivityActionBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/common/util/NetworkTypeObserver;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/common/util/NetworkTypeObserver;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Landroidx/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroidx/media3/common/util/NetworkTypeObserver;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 88
    :cond_0
    sget-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 84
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getMobileNetworkType(Landroid/net/NetworkInfo;)I
    .locals 2
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 222
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 243
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 245
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 241
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 239
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 225
    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    nop

    .line 192
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    return v1

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    nop

    .line 202
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 217
    :pswitch_0
    const/16 v2, 0x8

    return v2

    .line 215
    :pswitch_1
    const/4 v2, 0x7

    return v2

    .line 209
    :pswitch_2
    const/4 v2, 0x5

    return v2

    .line 207
    :pswitch_3
    const/4 v2, 0x2

    return v2

    .line 213
    :pswitch_4
    invoke-static {v1}, Landroidx/media3/common/util/NetworkTypeObserver;->getMobileNetworkType(Landroid/net/NetworkInfo;)I

    move-result v2

    return v2

    .line 203
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 198
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/SecurityException;
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleConnectivityActionBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    invoke-static {p1}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I

    move-result v0

    .line 163
    .local v0, "networkType":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 165
    invoke-static {p1, p0}, Landroidx/media3/common/util/NetworkTypeObserver$Api31;->disambiguate4gAnd5gNsa(Landroid/content/Context;Landroidx/media3/common/util/NetworkTypeObserver;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media3/common/util/NetworkTypeObserver;->updateNetworkType(I)V

    .line 169
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/common/util/NetworkTypeObserver$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private removeClearedReferences()V
    .locals 3

    .line 154
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 155
    .local v1, "listener":Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
    invoke-virtual {v1}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->canBeRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    .end local v1    # "listener":Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    return-void
.end method

.method public static declared-synchronized resetForTests()V
    .locals 2

    const-class v0, Landroidx/media3/common/util/NetworkTypeObserver;

    monitor-enter v0

    .line 94
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 93
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateNetworkType(I)V
    .locals 2
    .param p1, "networkType"    # I

    .line 172
    invoke-direct {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->removeClearedReferences()V

    .line 174
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    .line 179
    iput p1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    .line 180
    iget-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "currentListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-virtual {v0}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->callOnNetworkTypeChanged()V

    goto :goto_0

    .line 185
    :cond_1
    return-void

    .line 181
    .end local v1    # "currentListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getNetworkType()I
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v0

    return v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$new$0$androidx-media3-common-util-NetworkTypeObserver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Landroidx/media3/common/util/NetworkTypeObserver;->init(Landroid/content/Context;)V

    return-void
.end method

.method public register(Landroidx/media3/common/util/NetworkTypeObserver$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/common/util/NetworkTypeObserver$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/common/util/NetworkTypeObserver$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/util/NetworkTypeObserver;->register(Landroidx/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V

    .line 114
    return-void
.end method

.method public register(Landroidx/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Landroidx/media3/common/util/NetworkTypeObserver$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 125
    invoke-direct {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->removeClearedReferences()V

    .line 127
    new-instance v0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V

    .line 128
    .local v0, "listenerHolder":Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
    iget-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-boolean v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->isInitialized:Z

    .line 131
    .local v2, "isInitialized":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v0}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->callOnNetworkTypeChanged()V

    .line 137
    :cond_0
    return-void

    .line 131
    .end local v2    # "isInitialized":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
