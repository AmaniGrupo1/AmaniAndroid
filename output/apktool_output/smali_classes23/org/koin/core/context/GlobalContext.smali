.class public final Lorg/koin/core/context/GlobalContext;
.super Ljava/lang/Object;
.source "GlobalContext.kt"

# interfaces
.implements Lorg/koin/core/context/KoinContext;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016J%\u0010\u000f\u001a\u00020\u00072\u001b\u0010\u0010\u001a\u0017\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u0011j\u0002`\u0013\u00a2\u0006\u0002\u0008\u0012H\u0016J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001e\u0010\u0014\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u001b\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001aH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/koin/core/context/GlobalContext;",
        "Lorg/koin/core/context/KoinContext;",
        "<init>",
        "()V",
        "_koin",
        "Lorg/koin/core/Koin;",
        "_koinApplication",
        "Lorg/koin/core/KoinApplication;",
        "get",
        "getOrNull",
        "getKoinApplicationOrNull",
        "register",
        "",
        "koinApplication",
        "stopKoin",
        "startKoin",
        "appDeclaration",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "Lorg/koin/dsl/KoinAppDeclaration;",
        "loadKoinModules",
        "module",
        "Lorg/koin/core/module/Module;",
        "createEagerInstances",
        "",
        "modules",
        "",
        "unloadKoinModules",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/koin/core/context/GlobalContext;

.field private static _koin:Lorg/koin/core/Koin;

.field private static _koinApplication:Lorg/koin/core/KoinApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/core/context/GlobalContext;

    invoke-direct {v0}, Lorg/koin/core/context/GlobalContext;-><init>()V

    sput-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final register(Lorg/koin/core/KoinApplication;)V
    .locals 2
    .param p1, "koinApplication"    # Lorg/koin/core/KoinApplication;

    .line 43
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-nez v0, :cond_0

    .line 46
    sput-object p1, Lorg/koin/core/context/GlobalContext;->_koinApplication:Lorg/koin/core/KoinApplication;

    .line 47
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    sput-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 48
    return-void

    .line 44
    :cond_0
    new-instance v0, Lorg/koin/core/error/KoinApplicationAlreadyStartedException;

    const-string v1, "A Koin Application has already been started"

    invoke-direct {v0, v1}, Lorg/koin/core/error/KoinApplicationAlreadyStartedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get()Lorg/koin/core/Koin;
    .locals 2

    .line 36
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KoinApplication has not been started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getKoinApplicationOrNull()Lorg/koin/core/KoinApplication;
    .locals 1

    .line 40
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koinApplication:Lorg/koin/core/KoinApplication;

    return-object v0
.end method

.method public getOrNull()Lorg/koin/core/Koin;
    .locals 1

    .line 38
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public loadKoinModules(Ljava/util/List;Z)V
    .locals 8
    .param p1, "modules"    # Ljava/util/List;
    .param p2, "createEagerInstances"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-synchronized-GlobalContext$loadKoinModules$2":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v1}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p2

    .end local p1    # "modules":Ljava/util/List;
    .end local p2    # "createEagerInstances":Z
    .local v3, "modules":Ljava/util/List;
    .local v5, "createEagerInstances":Z
    :try_start_1
    invoke-static/range {v2 .. v7}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 75
    nop

    .end local v0    # "$i$a$-synchronized-GlobalContext$loadKoinModules$2":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "modules":Ljava/util/List;
    .end local v5    # "createEagerInstances":Z
    .restart local p1    # "modules":Ljava/util/List;
    .restart local p2    # "createEagerInstances":Z
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v5, p2

    move-object p1, v0

    .end local p1    # "modules":Ljava/util/List;
    .end local p2    # "createEagerInstances":Z
    .restart local v3    # "modules":Ljava/util/List;
    .restart local v5    # "createEagerInstances":Z
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public loadKoinModules(Lorg/koin/core/module/Module;Z)V
    .locals 8
    .param p1, "module"    # Lorg/koin/core/module/Module;
    .param p2, "createEagerInstances"    # Z

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    monitor-enter p0

    const/4 v0, 0x0

    .line 70
    .local v0, "$i$a$-synchronized-GlobalContext$loadKoinModules$1":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v1}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v5, p2

    .end local p2    # "createEagerInstances":Z
    .local v5, "createEagerInstances":Z
    :try_start_1
    invoke-static/range {v2 .. v7}, Lorg/koin/core/Koin;->loadModules$default(Lorg/koin/core/Koin;Ljava/util/List;ZZILjava/lang/Object;)V

    .line 71
    nop

    .end local v0    # "$i$a$-synchronized-GlobalContext$loadKoinModules$1":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v5    # "createEagerInstances":Z
    .restart local p2    # "createEagerInstances":Z
    :catchall_1
    move-exception v0

    move v5, p2

    move-object p2, v0

    .end local p2    # "createEagerInstances":Z
    .restart local v5    # "createEagerInstances":Z
    :goto_0
    monitor-exit p0

    throw p2
.end method

.method public startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .locals 3
    .param p1, "appDeclaration"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    .line 66
    nop

    .line 61
    const-string v0, "appDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    .line 62
    .local v0, "$i$a$-synchronized-GlobalContext$startKoin$2":I
    :try_start_0
    sget-object v1, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    invoke-virtual {v1}, Lorg/koin/core/KoinApplication$Companion;->init()Lorg/koin/core/KoinApplication;

    move-result-object v1

    .line 63
    .local v1, "koinApplication":Lorg/koin/core/KoinApplication;
    sget-object v2, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-direct {v2, v1}, Lorg/koin/core/context/GlobalContext;->register(Lorg/koin/core/KoinApplication;)V

    .line 64
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v1}, Lorg/koin/core/KoinApplication;->createEagerInstances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 61
    .end local v0    # "$i$a$-synchronized-GlobalContext$startKoin$2":I
    .end local v1    # "koinApplication":Lorg/koin/core/KoinApplication;
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startKoin(Lorg/koin/core/KoinApplication;)Lorg/koin/core/KoinApplication;
    .locals 2
    .param p1, "koinApplication"    # Lorg/koin/core/KoinApplication;

    .line 58
    nop

    .line 55
    const-string v0, "koinApplication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    .line 56
    .local v0, "$i$a$-synchronized-GlobalContext$startKoin$1":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-direct {v1, p1}, Lorg/koin/core/context/GlobalContext;->register(Lorg/koin/core/KoinApplication;)V

    .line 57
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->createEagerInstances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    nop

    .line 55
    .end local v0    # "$i$a$-synchronized-GlobalContext$startKoin$1":I
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopKoin()V
    .locals 2

    .line 50
    monitor-enter p0

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$a$-synchronized-GlobalContext$stopKoin$1":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/koin/core/Koin;->close()V

    .line 52
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 53
    nop

    .end local v0    # "$i$a$-synchronized-GlobalContext$stopKoin$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unloadKoinModules(Ljava/util/List;)V
    .locals 2
    .param p1, "modules"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-synchronized-GlobalContext$unloadKoinModules$2":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v1}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)V

    .line 83
    nop

    .end local v0    # "$i$a$-synchronized-GlobalContext$unloadKoinModules$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unloadKoinModules(Lorg/koin/core/module/Module;)V
    .locals 3
    .param p1, "module"    # Lorg/koin/core/module/Module;

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$a$-synchronized-GlobalContext$unloadKoinModules$1":I
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-virtual {v1}, Lorg/koin/core/context/GlobalContext;->get()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/koin/core/Koin;->unloadModules(Ljava/util/List;)V

    .line 79
    nop

    .end local v0    # "$i$a$-synchronized-GlobalContext$unloadKoinModules$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
