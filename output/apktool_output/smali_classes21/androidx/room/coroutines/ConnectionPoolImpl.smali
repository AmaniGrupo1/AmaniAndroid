.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "ConnectionPoolImpl.kt"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionPoolImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,537:1\n168#1,8:539\n1#2:538\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionPoolImpl\n*L\n132#1:539,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0006\u0010\u000bJ@\u0010\"\u001a\u0002H#\"\u0004\u0008\u0000\u0010#2\u0006\u0010$\u001a\u00020\u00192\"\u0010%\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\'\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H#0(\u0012\u0006\u0012\u0004\u0018\u00010)0&H\u0096@\u00a2\u0006\u0002\u0010*J\"\u0010+\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010-\u0012\u0006\u0012\u0004\u0018\u00010.0,*\u00020\rH\u0082H\u00a2\u0006\u0002\u0010/J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0011H\u0002J\u0010\u00103\u001a\u0002042\u0006\u0010$\u001a\u00020\u0019H\u0002J\u0008\u00105\u001a\u000206H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\u0008\u0012\u0004\u0012\u00020\u0011`\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001aR\u001c\u0010\u001b\u001a\u00020\u001cX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u00067"
    }
    d2 = {
        "Landroidx/room/coroutines/ConnectionPoolImpl;",
        "Landroidx/room/coroutines/ConnectionPool;",
        "driver",
        "Landroidx/sqlite/SQLiteDriver;",
        "fileName",
        "",
        "<init>",
        "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V",
        "maxNumOfReaders",
        "",
        "maxNumOfWriters",
        "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V",
        "readers",
        "Landroidx/room/coroutines/Pool;",
        "writers",
        "threadLocal",
        "Ljava/lang/ThreadLocal;",
        "Landroidx/room/coroutines/PooledConnectionImpl;",
        "Landroidx/room/concurrent/ThreadLocal;",
        "Ljava/lang/ThreadLocal;",
        "_isClosed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Landroidx/room/concurrent/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isClosed",
        "",
        "()Z",
        "timeout",
        "Lkotlin/time/Duration;",
        "getTimeout-UwyO8pc$room_runtime_release",
        "()J",
        "setTimeout-LRDsOJo$room_runtime_release",
        "(J)V",
        "J",
        "useConnection",
        "R",
        "isReadOnly",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/room/Transactor;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireWithTimeout",
        "Lkotlin/Pair;",
        "Landroidx/room/coroutines/ConnectionWithLock;",
        "",
        "(Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createConnectionContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "connection",
        "throwTimeoutException",
        "",
        "close",
        "",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final driver:Landroidx/sqlite/SQLiteDriver;

.field private final readers:Landroidx/room/coroutines/Pool;

.field private final threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/room/coroutines/PooledConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J

.field private final writers:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V
    .locals 3
    .param p1, "driver"    # Landroidx/sqlite/SQLiteDriver;
    .param p2, "fileName"    # Ljava/lang/String;

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 67
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 68
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 69
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V
    .locals 4
    .param p1, "driver"    # Landroidx/sqlite/SQLiteDriver;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "maxNumOfReaders"    # I
    .param p4, "maxNumOfWriters"    # I

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 78
    const/4 v0, 0x1

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 79
    if-lez p4, :cond_1

    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 80
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 81
    nop

    .line 82
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 83
    nop

    .line 84
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    .line 82
    invoke-direct {v0, p3, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 81
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 91
    nop

    .line 92
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    invoke-direct {v0, p4, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 91
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 93
    return-void

    .line 538
    :cond_2
    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-require-ConnectionPoolImpl$3":I
    nop

    .end local v0    # "$i$a$-require-ConnectionPoolImpl$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of writers must be greater than 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_3
    const/4 v0, 0x0

    .line 78
    .local v0, "$i$a$-require-ConnectionPoolImpl$2":I
    nop

    .end local v0    # "$i$a$-require-ConnectionPoolImpl$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum number of readers must be greater than 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final _init_$lambda$0(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 1
    .param p0, "$driver"    # Landroidx/sqlite/SQLiteDriver;
    .param p1, "$fileName"    # Ljava/lang/String;

    .line 68
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method static final _init_$lambda$4(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 4
    .param p0, "$driver"    # Landroidx/sqlite/SQLiteDriver;
    .param p1, "$fileName"    # Ljava/lang/String;

    .line 85
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    move-object v1, v0

    .local v1, "newConnection":Landroidx/sqlite/SQLiteConnection;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$a$-also-ConnectionPoolImpl$4$1":I
    const-string v3, "PRAGMA query_only = 1"

    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 88
    nop

    .line 85
    .end local v1    # "newConnection":Landroidx/sqlite/SQLiteConnection;
    .end local v2    # "$i$a$-also-ConnectionPoolImpl$4$1":I
    nop

    .line 88
    return-object v0
.end method

.method static final _init_$lambda$5(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 1
    .param p0, "$driver"    # Landroidx/sqlite/SQLiteDriver;
    .param p1, "$fileName"    # Ljava/lang/String;

    .line 92
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method private final acquireWithTimeout(Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$this$acquireWithTimeout"    # Landroidx/room/coroutines/Pool;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/Pool;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/room/coroutines/ConnectionWithLock;",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    .local v0, "$i$f$acquireWithTimeout":I
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 169
    .local v1, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v2, 0x0

    .line 170
    .local v2, "exceptionThrown":Ljava/lang/Throwable;
    nop

    .line 171
    :try_start_0
    iget-wide v3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    new-instance v5, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p1, v6}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4, v5, p2}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v3

    .line 173
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v2, v3

    .line 175
    .end local v3    # "ex":Ljava/lang/Throwable;
    :goto_0
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    return-object v3
.end method

.method private final createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 2
    .param p1, "connection"    # Landroidx/room/coroutines/PooledConnectionImpl;

    .line 179
    new-instance v0, Landroidx/room/coroutines/ConnectionElement;

    invoke-direct {v0, p1}, Landroidx/room/coroutines/ConnectionElement;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-static {v1, p1}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Landroidx/room/coroutines/ConnectionElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method private final isClosed()Z
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private final throwTimeoutException(Z)Ljava/lang/Void;
    .locals 6
    .param p1, "isReadOnly"    # Z

    .line 182
    if-eqz p1, :cond_0

    const-string/jumbo v0, "reader"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "writer"

    .line 183
    .local v0, "readOrWrite":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    .local v2, "$this$throwTimeoutException_u24lambda_u248":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$a$-buildString-ConnectionPoolImpl$throwTimeoutException$message$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timed out attempting to acquire a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connection."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const-string v4, "Writer pool:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v4, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    invoke-virtual {v4, v2}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 188
    const-string v4, "Reader pool:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    iget-object v4, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    invoke-virtual {v4, v2}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 190
    nop

    .line 183
    .end local v2    # "$this$throwTimeoutException_u24lambda_u248":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-ConnectionPoolImpl$throwTimeoutException$message$1":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-static {v2, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 198
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 200
    :cond_0
    return-void
.end method

.method public final getTimeout-UwyO8pc$room_runtime_release()J
    .locals 2

    .line 64
    iget-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    return-wide v0
.end method

.method public final setTimeout-LRDsOJo$room_runtime_release(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 64
    iput-wide p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    return-void
.end method

.method public useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p3

    instance-of v0, v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    iget v2, v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 95
    iget v0, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v5, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v6, 0x0

    .local v6, "exception":Ljava/lang/Throwable;
    iget-object v0, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/Pool;

    .local v0, "pool":Landroidx/room/coroutines/Pool;
    move-object v7, v0

    .end local v0    # "pool":Landroidx/room/coroutines/Pool;
    .local v7, "pool":Landroidx/room/coroutines/Pool;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 148
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_d

    .line 95
    .end local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v7    # "pool":Landroidx/room/coroutines/Pool;
    :pswitch_1
    const/4 v8, 0x0

    .local v8, "$i$f$acquireWithTimeout":I
    iget-boolean v9, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .local v9, "isReadOnly":Z
    const/4 v0, 0x0

    .local v0, "exceptionThrown$iv":Ljava/lang/Throwable;
    iget-object v10, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v10, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v11, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    .local v11, "currentContext":Lkotlin/coroutines/CoroutineContext;
    iget-object v12, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v12, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v13, 0x0

    .local v13, "exception":Ljava/lang/Throwable;
    iget-object v14, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    check-cast v14, Landroidx/room/coroutines/Pool;

    .local v14, "pool":Landroidx/room/coroutines/Pool;
    iget-object v15, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .local v15, "block":Lkotlin/jvm/functions/Function2;
    iget-object v7, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/room/coroutines/ConnectionPoolImpl;

    .local v7, "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v4

    goto/16 :goto_6

    .line 543
    .end local v0    # "exceptionThrown$iv":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_7

    .line 95
    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v8    # "$i$f$acquireWithTimeout":I
    .end local v9    # "isReadOnly":Z
    .end local v10    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "currentContext":Lkotlin/coroutines/CoroutineContext;
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v13    # "exception":Ljava/lang/Throwable;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_3

    :pswitch_4
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    move-object/from16 v15, p2

    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    move/from16 v9, p1

    .line 99
    .restart local v9    # "isReadOnly":Z
    invoke-direct {v7}, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 103
    iget-object v0, v7, Landroidx/room/coroutines/ConnectionPoolImpl;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    if-nez v0, :cond_2

    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v8, Landroidx/room/coroutines/ConnectionElement;->Key:Landroidx/room/coroutines/ConnectionElement$Key;

    check-cast v8, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v8}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Landroidx/room/coroutines/ConnectionElement;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 102
    :cond_2
    :goto_1
    nop

    .line 104
    .local v0, "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    if-eqz v0, :cond_8

    .line 105
    if-nez v9, :cond_4

    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    .line 107
    .end local v0    # "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v9    # "isReadOnly":Z
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    :cond_3
    nop

    .line 108
    nop

    .line 106
    const-string v0, "Cannot upgrade connection from reader to writer"

    invoke-static {v6, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 111
    .restart local v0    # "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    :cond_4
    :goto_2
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    sget-object v9, Landroidx/room/coroutines/ConnectionElement;->Key:Landroidx/room/coroutines/ConnectionElement$Key;

    check-cast v9, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v8, v9}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v8

    if-nez v8, :cond_6

    .line 114
    invoke-direct {v7, v0}, Landroidx/room/coroutines/ConnectionPoolImpl;->createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    new-instance v9, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    const/4 v10, 0x0

    invoke-direct {v9, v15, v0, v10}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput v6, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-static {v8, v9, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    if-ne v0, v5, :cond_5

    .line 95
    return-object v5

    .line 114
    :cond_5
    :goto_3
    goto :goto_4

    .line 118
    .restart local v0    # "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    :cond_6
    const/4 v6, 0x2

    iput v6, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-interface {v15, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "confinedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    if-ne v0, v5, :cond_7

    .line 95
    return-object v5

    .line 111
    :cond_7
    :goto_4
    return-object v0

    .line 122
    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v9    # "isReadOnly":Z
    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    :cond_8
    if-eqz v9, :cond_9

    .line 123
    iget-object v0, v7, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    goto :goto_5

    .line 125
    :cond_9
    iget-object v0, v7, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 122
    :goto_5
    nop

    .line 121
    move-object v8, v0

    .line 127
    .local v8, "pool":Landroidx/room/coroutines/Pool;
    nop

    .line 128
    const/4 v10, 0x0

    .line 129
    .local v10, "exception":Ljava/lang/Throwable;
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v0

    .line 130
    .local v11, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 131
    :try_start_2
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    move-object v12, v0

    .line 132
    .local v12, "currentContext":Lkotlin/coroutines/CoroutineContext;
    move-object v0, v8

    .local v0, "$this$acquireWithTimeout$iv":Landroidx/room/coroutines/Pool;
    move-object v13, v7

    .local v13, "this_$iv":Landroidx/room/coroutines/ConnectionPoolImpl;
    const/4 v14, 0x0

    .line 539
    .local v14, "$i$f$acquireWithTimeout":I
    new-instance v16, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object/from16 p1, v16

    .line 540
    .local p1, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/16 v16, 0x0

    .line 541
    .local v16, "exceptionThrown$iv":Ljava/lang/Throwable;
    nop

    .line 542
    move-object/from16 v17, v7

    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local v17, "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    :try_start_3
    iget-wide v6, v13, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v2, p1

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "$result":Ljava/lang/Object;
    .end local p1    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v18, "$result":Ljava/lang/Object;
    :try_start_4
    invoke-direct {v1, v2, v0, v4}, Landroidx/room/coroutines/ConnectionPoolImpl$acquireWithTimeout$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v4, v17

    .end local v17    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local v4, "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    :try_start_5
    iput-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    iput-boolean v9, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    move-object/from16 p1, v0

    .end local v0    # "$this$acquireWithTimeout$iv":Landroidx/room/coroutines/Pool;
    .local p1, "$this$acquireWithTimeout$iv":Landroidx/room/coroutines/Pool;
    const/4 v0, 0x3

    iput v0, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-static {v6, v7, v1, v3}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v13    # "this_$iv":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local p1    # "$this$acquireWithTimeout$iv":Landroidx/room/coroutines/Pool;
    if-ne v0, v5, :cond_a

    .line 95
    return-object v5

    .line 542
    :cond_a
    move v0, v14

    move-object v14, v8

    move v8, v0

    move-object v0, v12

    move-object v12, v11

    move-object v11, v0

    move-object v7, v4

    move-object v13, v10

    move-object/from16 v0, v16

    move-object v10, v2

    .end local v2    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v16    # "exceptionThrown$iv":Ljava/lang/Throwable;
    .local v0, "exceptionThrown$iv":Ljava/lang/Throwable;
    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local v8, "$i$f$acquireWithTimeout":I
    .local v10, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v11, "currentContext":Lkotlin/coroutines/CoroutineContext;
    .local v12, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v13, "exception":Ljava/lang/Throwable;
    .local v14, "pool":Landroidx/room/coroutines/Pool;
    :goto_6
    move-object v6, v13

    goto :goto_8

    .line 543
    .end local v0    # "exceptionThrown$iv":Ljava/lang/Throwable;
    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v13    # "exception":Ljava/lang/Throwable;
    .restart local v2    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v4    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local v8, "pool":Landroidx/room/coroutines/Pool;
    .local v10, "exception":Ljava/lang/Throwable;
    .local v11, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v12, "currentContext":Lkotlin/coroutines/CoroutineContext;
    .local v14, "$i$f$acquireWithTimeout":I
    :catchall_2
    move-exception v0

    move v7, v14

    move-object v14, v8

    move v8, v7

    move-object v7, v12

    move-object v12, v11

    move-object v11, v7

    move-object v7, v4

    move-object v13, v10

    move-object v10, v2

    goto :goto_7

    .end local v4    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v17    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    :catchall_3
    move-exception v0

    move-object/from16 v4, v17

    move v7, v14

    move-object v14, v8

    move v8, v7

    move-object v7, v12

    move-object v12, v11

    move-object v11, v7

    move-object v7, v4

    move-object v13, v10

    move-object v10, v2

    .end local v17    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v4    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    goto :goto_7

    .end local v2    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v18    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v17    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local p1, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_4
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move v7, v14

    move-object v14, v8

    move v8, v7

    move-object v7, v12

    move-object v12, v11

    move-object v11, v7

    move-object v7, v4

    move-object v13, v10

    move-object v10, v2

    .line 544
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v17    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local p1    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "ex$iv":Ljava/lang/Throwable;
    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .local v8, "$i$f$acquireWithTimeout":I
    .local v10, "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v11, "currentContext":Lkotlin/coroutines/CoroutineContext;
    .local v12, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v13    # "exception":Ljava/lang/Throwable;
    .local v14, "pool":Landroidx/room/coroutines/Pool;
    .restart local v18    # "$result":Ljava/lang/Object;
    :goto_7
    move-object v1, v0

    move-object v0, v1

    move-object v6, v13

    .line 546
    .end local v13    # "exception":Ljava/lang/Throwable;
    .local v0, "exceptionThrown$iv":Ljava/lang/Throwable;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :goto_8
    :try_start_6
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 132
    .end local v0    # "exceptionThrown$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$f$acquireWithTimeout":I
    .end local v10    # "connection$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/coroutines/ConnectionWithLock;

    .local v0, "acquiredConnection":Landroidx/room/coroutines/ConnectionWithLock;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 134
    .local v1, "acquireError":Ljava/lang/Throwable;
    nop

    .line 135
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .local v0, "it":Landroidx/room/coroutines/ConnectionWithLock;
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$a$-let-ConnectionPoolImpl$useConnection$3":I
    new-instance v8, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 137
    invoke-virtual {v0, v11}, Landroidx/room/coroutines/ConnectionWithLock;->markAcquired(Lkotlin/coroutines/CoroutineContext;)Landroidx/room/coroutines/ConnectionWithLock;

    move-result-object v10

    .line 138
    .end local v0    # "it":Landroidx/room/coroutines/ConnectionWithLock;
    .end local v11    # "currentContext":Lkotlin/coroutines/CoroutineContext;
    iget-object v0, v7, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    iget-object v11, v7, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    if-eq v0, v11, :cond_b

    if-eqz v9, :cond_b

    const/4 v0, 0x1

    goto :goto_9

    :cond_b
    move v0, v2

    .line 136
    :goto_9
    invoke-direct {v8, v10, v0}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 139
    nop

    .line 135
    .end local v4    # "$i$a$-let-ConnectionPoolImpl$useConnection$3":I
    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    .line 134
    :goto_a
    iput-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    instance-of v0, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v0, :cond_e

    .line 142
    .end local v1    # "acquireError":Ljava/lang/Throwable;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    if-eqz v9, :cond_d

    const/4 v2, 0x1

    nop

    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v9    # "isReadOnly":Z
    :cond_d
    invoke-direct {v7, v2}, Landroidx/room/coroutines/ConnectionPoolImpl;->throwTimeoutException(Z)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .end local v18    # "$result":Ljava/lang/Object;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0

    .line 143
    .restart local v1    # "acquireError":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    .restart local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_e
    if-nez v1, :cond_12

    .line 146
    .end local v1    # "acquireError":Ljava/lang/Throwable;
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-direct {v7, v0}, Landroidx/room/coroutines/ConnectionPoolImpl;->createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    const/4 v4, 0x0

    invoke-direct {v1, v15, v12, v4}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v14, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    if-ne v0, v5, :cond_f

    .line 95
    return-object v5

    .line 147
    :cond_f
    move-object v5, v12

    move-object v7, v14

    .line 95
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "pool":Landroidx/room/coroutines/Pool;
    :goto_b
    move-object v1, v0

    .line 152
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 153
    :try_start_7
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .end local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_10

    .local v0, "usedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$a$-let-ConnectionPoolImpl$useConnection$5":I
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->markRecycled()V

    .line 155
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/coroutines/ConnectionWithLock;->markReleased()Landroidx/room/coroutines/ConnectionWithLock;

    .line 156
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 157
    .end local v7    # "pool":Landroidx/room/coroutines/Pool;
    nop

    .line 153
    .end local v0    # "usedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .end local v2    # "$i$a$-let-ConnectionPoolImpl$useConnection$5":I
    goto :goto_c

    .end local v6    # "exception":Ljava/lang/Throwable;
    :cond_10
    goto :goto_c

    .line 158
    .restart local v6    # "exception":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    .line 159
    .local v0, "error":Ljava/lang/Throwable;
    nop

    .line 161
    .end local v0    # "error":Ljava/lang/Throwable;
    .end local v6    # "exception":Ljava/lang/Throwable;
    :goto_c
    nop

    .line 162
    return-object v1

    .line 146
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    .local v7, "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .restart local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v15    # "block":Lkotlin/jvm/functions/Function2;
    :cond_11
    :try_start_8
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .end local v18    # "$result":Ljava/lang/Object;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1

    .line 144
    .end local v7    # "this":Landroidx/room/coroutines/ConnectionPoolImpl;
    .end local v15    # "block":Lkotlin/jvm/functions/Function2;
    .local v1, "acquireError":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    .restart local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_12
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .end local v18    # "$result":Ljava/lang/Object;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 148
    .end local v1    # "acquireError":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    .restart local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_6
    move-exception v0

    move-object v5, v12

    move-object v7, v14

    goto :goto_d

    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v12    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "pool":Landroidx/room/coroutines/Pool;
    .end local v18    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .local v8, "pool":Landroidx/room/coroutines/Pool;
    .local v10, "exception":Ljava/lang/Throwable;
    .local v11, "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_7
    move-exception v0

    move-object/from16 v18, v4

    move-object v7, v8

    move-object v6, v10

    move-object v5, v11

    .line 149
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v8    # "pool":Landroidx/room/coroutines/Pool;
    .end local v10    # "exception":Ljava/lang/Throwable;
    .end local v11    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "exception":Ljava/lang/Throwable;
    .local v7, "pool":Landroidx/room/coroutines/Pool;
    .restart local v18    # "$result":Ljava/lang/Object;
    :goto_d
    move-object v1, v0

    .line 150
    .end local v6    # "exception":Ljava/lang/Throwable;
    .local v1, "exception":Ljava/lang/Throwable;
    nop

    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "pool":Landroidx/room/coroutines/Pool;
    .end local v18    # "$result":Ljava/lang/Object;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 152
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "exception":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "pool":Landroidx/room/coroutines/Pool;
    .restart local v18    # "$result":Ljava/lang/Object;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 153
    :try_start_a
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .end local v5    # "connection":Lkotlin/jvm/internal/Ref$ObjectRef;
    if-eqz v0, :cond_13

    .local v0, "usedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    const/4 v4, 0x0

    .line 154
    .local v4, "$i$a$-let-ConnectionPoolImpl$useConnection$5":I
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->markRecycled()V

    .line 155
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/room/coroutines/ConnectionWithLock;->markReleased()Landroidx/room/coroutines/ConnectionWithLock;

    .line 156
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 157
    .end local v7    # "pool":Landroidx/room/coroutines/Pool;
    nop

    .line 153
    .end local v0    # "usedConnection":Landroidx/room/coroutines/PooledConnectionImpl;
    .end local v4    # "$i$a$-let-ConnectionPoolImpl$useConnection$5":I
    goto :goto_e

    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_13
    goto :goto_e

    .line 158
    .restart local v1    # "exception":Ljava/lang/Throwable;
    :catchall_9
    move-exception v0

    .line 159
    .local v0, "error":Ljava/lang/Throwable;
    nop

    .end local v1    # "exception":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "error":Ljava/lang/Throwable;
    :goto_e
    throw v2

    .line 100
    .end local v18    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :cond_14
    const/16 v0, 0x15

    const-string v1, "Connection pool is closed"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
