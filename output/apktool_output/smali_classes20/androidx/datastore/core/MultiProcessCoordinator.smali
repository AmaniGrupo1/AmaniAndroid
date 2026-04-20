.class public final Landroidx/datastore/core/MultiProcessCoordinator;
.super Ljava/lang/Object;
.source "MultiProcessCoordinator.android.kt"

# interfaces
.implements Landroidx/datastore/core/InterProcessCoordinator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/MultiProcessCoordinator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiProcessCoordinator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 MutexUtils.kt\nandroidx/datastore/core/MutexUtilsKt\n*L\n1#1,207:1\n163#1,6:226\n163#1,6:232\n116#2,10:208\n32#3,8:218\n*S KotlinDebug\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n*L\n104#1:226,6\n111#1:232,6\n43#1:208,10\n60#1:218,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 52\u00020\u0001:\u00015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J2\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u001c\u0010\u0011\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0096@\u00a2\u0006\u0002\u0010\u0015J8\u0010\u0016\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\"\u0010\u0011\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010\u001cJ\u0010\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u001fH\u0002J\u000c\u00102\u001a\u00020\u000c*\u00020\u0005H\u0002J\u000c\u00103\u001a\u00020\u000c*\u00020\u0005H\u0002J:\u00104\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102$\u0008\u0004\u0010\u0011\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020*\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0017H\u0082H\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008%\u0010\tR\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020*0)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010/*\u0004\u0008,\u0010-\u00a8\u00066"
    }
    d2 = {
        "Landroidx/datastore/core/MultiProcessCoordinator;",
        "Landroidx/datastore/core/InterProcessCoordinator;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V",
        "getFile",
        "()Ljava/io/File;",
        "updateNotifications",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getUpdateNotifications",
        "()Lkotlinx/coroutines/flow/Flow;",
        "lock",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryLock",
        "Lkotlin/Function2;",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVersion",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "incrementAndGetVersion",
        "LOCK_SUFFIX",
        "",
        "VERSION_SUFFIX",
        "LOCK_ERROR_MESSAGE",
        "inMemoryMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "lockFile",
        "getLockFile",
        "lockFile$delegate",
        "Lkotlin/Lazy;",
        "lazySharedCounter",
        "Lkotlin/Lazy;",
        "Landroidx/datastore/core/SharedCounter;",
        "sharedCounter",
        "getSharedCounter$delegate",
        "(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/Object;",
        "getSharedCounter",
        "()Landroidx/datastore/core/SharedCounter;",
        "fileWithSuffix",
        "suffix",
        "createIfNotExists",
        "createParentDirectories",
        "withLazyCounter",
        "Companion",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

.field private static final DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

.field private static final INITIAL_WAIT_MILLIS:J

.field private static final MAX_WAIT_MILLIS:J


# instance fields
.field private final LOCK_ERROR_MESSAGE:Ljava/lang/String;

.field private final LOCK_SUFFIX:Ljava/lang/String;

.field private final VERSION_SUFFIX:Ljava/lang/String;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final file:Ljava/io/File;

.field private final inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

.field private final lazySharedCounter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroidx/datastore/core/SharedCounter;",
            ">;"
        }
    .end annotation
.end field

.field private final lockFile$delegate:Lkotlin/Lazy;

.field private final updateNotifications:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$L_8bngGeZusP1BTmRiddhZLyTRs(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter$lambda$0$0(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    .line 191
    const-string v0, "Resource deadlock would occur"

    sput-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    .line 192
    const-wide/16 v0, 0xa

    sput-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->INITIAL_WAIT_MILLIS:J

    .line 193
    const-wide/32 v0, 0xea60

    sput-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->MAX_WAIT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "file"    # Ljava/io/File;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    .line 36
    iput-object p2, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    .line 39
    sget-object v0, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    iget-object v1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe(Ljava/io/File;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->updateNotifications:Lkotlinx/coroutines/flow/Flow;

    .line 114
    const-string v0, ".lock"

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_SUFFIX:Ljava/lang/String;

    .line 115
    const-string v0, ".version"

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->VERSION_SUFFIX:Ljava/lang/String;

    .line 116
    const-string v0, "fcntl failed: EAGAIN"

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_ERROR_MESSAGE:Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 119
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda0;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lockFile$delegate:Lkotlin/Lazy;

    .line 125
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    .line 132
    nop

    .line 34
    return-void
.end method

.method public static final synthetic access$getDEADLOCK_ERROR_MESSAGE$cp()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getINITIAL_WAIT_MILLIS$cp()J
    .locals 2

    .line 34
    sget-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->INITIAL_WAIT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getMAX_WAIT_MILLIS$cp()J
    .locals 2

    .line 34
    sget-wide v0, Landroidx/datastore/core/MultiProcessCoordinator;->MAX_WAIT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getSharedCounter(Landroidx/datastore/core/MultiProcessCoordinator;)Landroidx/datastore/core/SharedCounter;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/MultiProcessCoordinator;

    .line 34
    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object v0

    return-object v0
.end method

.method private final createIfNotExists(Ljava/io/File;)V
    .locals 1
    .param p1, "$this$createIfNotExists"    # Ljava/io/File;

    .line 139
    invoke-direct {p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator;->createParentDirectories(Ljava/io/File;)V

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 143
    :cond_0
    return-void
.end method

.method private final createParentDirectories(Ljava/io/File;)V
    .locals 6
    .param p1, "$this$createParentDirectories"    # Ljava/io/File;

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    move-object v1, v0

    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$a$-let-MultiProcessCoordinator$createParentDirectories$1":I
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    nop

    .line 148
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-MultiProcessCoordinator$createParentDirectories$1":I
    goto :goto_0

    .line 151
    .restart local v1    # "it":Ljava/io/File;
    .restart local v2    # "$i$a$-let-MultiProcessCoordinator$createParentDirectories$1":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create parent directories of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-MultiProcessCoordinator$createParentDirectories$1":I
    :cond_1
    :goto_0
    return-void
.end method

.method private final fileWithSuffix(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLockFile()Ljava/io/File;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lockFile$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final getSharedCounter()Landroidx/datastore/core/SharedCounter;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/SharedCounter;

    return-object v0
.end method

.method private static getSharedCounter$delegate(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Landroidx/datastore/core/MultiProcessCoordinator;

    .line 132
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    return-object v0
.end method

.method static final lazySharedCounter$lambda$0(Landroidx/datastore/core/MultiProcessCoordinator;)Landroidx/datastore/core/SharedCounter;
    .locals 2
    .param p0, "this$0"    # Landroidx/datastore/core/MultiProcessCoordinator;

    .line 126
    sget-object v0, Landroidx/datastore/core/SharedCounter;->Factory:Landroidx/datastore/core/SharedCounter$Factory;

    new-instance v1, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/datastore/core/MultiProcessCoordinator$$ExternalSyntheticLambda2;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;)V

    invoke-virtual {v0, v1}, Landroidx/datastore/core/SharedCounter$Factory;->create$datastore_core(Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/SharedCounter;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method private static final lazySharedCounter$lambda$0$0(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/io/File;
    .locals 1
    .param p0, "this$0"    # Landroidx/datastore/core/MultiProcessCoordinator;

    .line 127
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->VERSION_SUFFIX:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/datastore/core/MultiProcessCoordinator;->fileWithSuffix(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "versionFile":Ljava/io/File;
    invoke-direct {p0, v0}, Landroidx/datastore/core/MultiProcessCoordinator;->createIfNotExists(Ljava/io/File;)V

    .line 129
    return-object v0
.end method

.method static final lockFile_delegate$lambda$0(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/io/File;
    .locals 1
    .param p0, "this$0"    # Landroidx/datastore/core/MultiProcessCoordinator;

    .line 120
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_SUFFIX:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/datastore/core/MultiProcessCoordinator;->fileWithSuffix(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "lockFile":Ljava/io/File;
    invoke-direct {p0, v0}, Landroidx/datastore/core/MultiProcessCoordinator;->createIfNotExists(Ljava/io/File;)V

    .line 122
    return-object v0
.end method

.method private final withLazyCounter(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/datastore/core/SharedCounter;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 163
    .local v0, "$i$f$withLazyCounter":I
    iget-object v1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 166
    :cond_0
    iget-object v1, p0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected final getFile()Ljava/io/File;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->file:Ljava/io/File;

    return-object v0
.end method

.method public getUpdateNotifications()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator;->updateNotifications:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/datastore/core/MultiProcessCoordinator;
    const/4 v1, 0x0

    .line 226
    .local v1, "$i$f$withLazyCounter":I
    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-direct {v0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object v2

    .local v2, "it":Landroidx/datastore/core/SharedCounter;
    move-object v3, p1

    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-withLazyCounter-MultiProcessCoordinator$getVersion$2":I
    invoke-interface {v2}, Landroidx/datastore/core/SharedCounter;->getValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 227
    .end local v2    # "it":Landroidx/datastore/core/SharedCounter;
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-withLazyCounter-MultiProcessCoordinator$getVersion$2":I
    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Landroidx/datastore/core/MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/datastore/core/MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 231
    :goto_0
    nop

    .line 104
    .end local v0    # "this_$iv":Landroidx/datastore/core/MultiProcessCoordinator;
    .end local v1    # "$i$f$withLazyCounter":I
    return-object v2
.end method

.method public incrementAndGetVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/datastore/core/MultiProcessCoordinator;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$f$withLazyCounter":I
    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator;->lazySharedCounter:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-direct {v0}, Landroidx/datastore/core/MultiProcessCoordinator;->getSharedCounter()Landroidx/datastore/core/SharedCounter;

    move-result-object v2

    .local v2, "it":Landroidx/datastore/core/SharedCounter;
    move-object v3, p1

    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-withLazyCounter-MultiProcessCoordinator$incrementAndGetVersion$2":I
    invoke-interface {v2}, Landroidx/datastore/core/SharedCounter;->incrementAndGetValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 233
    .end local v2    # "it":Landroidx/datastore/core/SharedCounter;
    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-withLazyCounter-MultiProcessCoordinator$incrementAndGetVersion$2":I
    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, v0, Landroidx/datastore/core/MultiProcessCoordinator;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Landroidx/datastore/core/MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/datastore/core/MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    :goto_0
    nop

    .line 111
    .end local v0    # "this_$iv":Landroidx/datastore/core/MultiProcessCoordinator;
    .end local v1    # "$i$f$withLazyCounter":I
    return-object v2
.end method

.method public lock(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    instance-of v0, v1, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    iget v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v5, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v5, 0x0

    .local v5, "$i$f$withLock":I
    const/4 v7, 0x0

    .local v7, "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    const/4 v8, 0x0

    .local v8, "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/nio/channels/FileLock;

    .local v9, "lock":Ljava/nio/channels/FileLock;
    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;

    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v8

    move-object v8, v6

    move-object v6, v4

    goto/16 :goto_3

    .line 217
    :catchall_0
    move-exception v0

    .local v6, "owner$iv":Ljava/lang/Object;
    .local v11, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_5

    .line 42
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .end local v8    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    .end local v9    # "lock":Ljava/nio/channels/FileLock;
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5    # "$i$f$withLock":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    const/4 v9, 0x0

    .restart local v9    # "lock":Ljava/nio/channels/FileLock;
    iget-object v10, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/io/Closeable;

    const/4 v11, 0x0

    .local v11, "owner$iv":Ljava/lang/Object;
    iget-object v12, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    .local v12, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v13, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .local v13, "block":Lkotlin/jvm/functions/Function1;
    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v12

    move v12, v8

    move-object v8, v11

    move-object v11, v6

    move-object v6, v4

    goto :goto_2

    .line 217
    .end local v13    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v0

    move-object v6, v11

    move-object v11, v12

    goto/16 :goto_5

    .line 42
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .end local v8    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    .end local v9    # "lock":Ljava/nio/channels/FileLock;
    .end local v11    # "owner$iv":Ljava/lang/Object;
    .end local v12    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_2
    move-object/from16 v5, p0

    .local v5, "this":Landroidx/datastore/core/MultiProcessCoordinator;
    const/4 v7, 0x0

    .local v7, "$i$f$withLock":I
    const/4 v8, 0x0

    .local v8, "owner$iv":Ljava/lang/Object;
    iget-object v9, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    .local v9, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v10, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .local v10, "block":Lkotlin/jvm/functions/Function1;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v9

    move-object v13, v10

    goto :goto_1

    .end local v5    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .end local v7    # "$i$f$withLock":I
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v9    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v10    # "block":Lkotlin/jvm/functions/Function1;
    :pswitch_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    move-object/from16 v7, p1

    .line 43
    .local v7, "block":Lkotlin/jvm/functions/Function1;
    iget-object v8, v5, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 208
    .local v8, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 209
    const/4 v9, 0x0

    .line 208
    .local v9, "owner$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 213
    .local v10, "$i$f$withLock":I
    iput-object v7, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-interface {v8, v9, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_1

    .line 42
    .end local v5    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    return-object v0

    .line 213
    .restart local v5    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    :cond_1
    move-object v13, v7

    move-object v11, v8

    move-object v8, v9

    move v7, v10

    .line 214
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$withLock":I
    .local v7, "$i$f$withLock":I
    .local v8, "owner$iv":Ljava/lang/Object;
    .local v11, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v13    # "block":Lkotlin/jvm/functions/Function1;
    :goto_1
    nop

    .line 215
    const/4 v9, 0x0

    .line 44
    .local v9, "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v5}, Landroidx/datastore/core/MultiProcessCoordinator;->getLockFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v10, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .end local v5    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    :try_start_3
    move-object v5, v10

    check-cast v5, Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .local v5, "lockFileStream":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 45
    .local v12, "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    const/4 v14, 0x0

    .line 46
    .local v14, "lock":Ljava/nio/channels/FileLock;
    nop

    .line 47
    :try_start_4
    sget-object v15, Landroidx/datastore/core/MultiProcessCoordinator;->Companion:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    iput-object v13, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-static {v15, v5, v3}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;->access$getExclusiveFileLockWithRetryIfDeadlock(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .end local v5    # "lockFileStream":Ljava/io/FileOutputStream;
    if-ne v6, v0, :cond_2

    .line 42
    return-object v0

    .line 47
    :cond_2
    move v5, v7

    move v7, v9

    move-object v9, v14

    .line 42
    .end local v14    # "lock":Ljava/nio/channels/FileLock;
    .local v5, "$i$f$withLock":I
    .local v7, "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .local v9, "lock":Ljava/nio/channels/FileLock;
    :goto_2
    :try_start_5
    check-cast v6, Ljava/nio/channels/FileLock;

    move-object v9, v6

    .line 48
    iput-object v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v3, Landroidx/datastore/core/MultiProcessCoordinator$lock$1;->label:I

    invoke-interface {v13, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .end local v13    # "block":Lkotlin/jvm/functions/Function1;
    if-ne v6, v0, :cond_3

    .line 42
    return-object v0

    .line 48
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_3
    :goto_3
    nop

    .line 50
    nop

    .end local v9    # "lock":Ljava/nio/channels/FileLock;
    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 217
    .end local v12    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    :catchall_2
    move-exception v0

    .restart local v8    # "owner$iv":Ljava/lang/Object;
    move v9, v7

    move v7, v5

    move-object v5, v0

    .restart local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto :goto_7

    .line 48
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_4
    :goto_4
    nop

    .line 44
    const/4 v9, 0x0

    :try_start_7
    invoke-static {v10, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 217
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    invoke-interface {v11, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v6

    .restart local v5    # "$i$f$withLock":I
    :catchall_3
    move-exception v0

    .restart local v8    # "owner$iv":Ljava/lang/Object;
    move v7, v5

    .restart local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto :goto_8

    .restart local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .restart local v9    # "lock":Ljava/nio/channels/FileLock;
    .restart local v12    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    :catchall_4
    move-exception v0

    move-object v6, v8

    move v8, v12

    goto :goto_5

    .end local v5    # "$i$f$withLock":I
    .local v7, "$i$f$withLock":I
    .local v9, "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .restart local v14    # "lock":Ljava/nio/channels/FileLock;
    :catchall_5
    move-exception v0

    move v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v12

    move-object v9, v14

    .end local v9    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .end local v12    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    .end local v14    # "lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .local v7, "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .local v8, "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    :goto_5
    if-eqz v9, :cond_5

    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_6

    .end local v8    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    :catchall_6
    move-exception v0

    move-object v8, v6

    move v9, v7

    move v7, v5

    move-object v5, v0

    goto :goto_7

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$i$a$-use-MultiProcessCoordinator$lock$2$1":I
    :cond_5
    :goto_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v7, "$i$f$withLock":I
    .local v8, "owner$iv":Ljava/lang/Object;
    .restart local v9    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .restart local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_7
    move-exception v0

    move-object v5, v0

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$withLock":I
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_7
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v7    # "$i$f$withLock":I
    .restart local v8    # "owner$iv":Ljava/lang/Object;
    .restart local v9    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .restart local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_8
    move-exception v0

    :try_start_a
    invoke-static {v10, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$withLock":I
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .end local v9    # "$i$a$-withLock$default-MultiProcessCoordinator$lock$2":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v7    # "$i$f$withLock":I
    .restart local v8    # "owner$iv":Ljava/lang/Object;
    .restart local v11    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_9
    move-exception v0

    :goto_8
    invoke-interface {v11, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tryLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    instance-of v0, v1, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    iget v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;-><init>(Landroidx/datastore/core/MultiProcessCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 59
    iget v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    const/4 v6, 0x0

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
    const/4 v5, 0x0

    .local v5, "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    const/4 v7, 0x0

    .local v7, "$i$f$withTryLock":I
    const/4 v8, 0x0

    .local v8, "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    iget-boolean v9, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/nio/channels/FileLock;

    .local v10, "lock":Ljava/nio/channels/FileLock;
    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/io/Closeable;

    iget-object v0, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    move-object/from16 v20, v0

    goto/16 :goto_7

    .line 225
    :catchall_0
    move-exception v0

    .local v6, "owner$iv":Ljava/lang/Object;
    .local v9, "locked$iv":Z
    move-object/from16 v20, v4

    .local v12, "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_9

    .line 59
    .end local v5    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$withTryLock":I
    .end local v8    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .end local v9    # "locked$iv":Z
    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_1
    const/4 v5, 0x0

    .local v5, "$i$f$withTryLock":I
    const/4 v0, 0x0

    .local v0, "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    iget-boolean v7, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iget-object v8, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    goto :goto_1

    .line 224
    .end local v0    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    :catchall_1
    move-exception v0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .local v7, "locked$iv":Z
    move-object/from16 v20, v4

    .local v8, "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_c

    .line 59
    .end local v5    # "$i$f$withTryLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "locked$iv":Z
    .end local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .local v7, "this":Landroidx/datastore/core/MultiProcessCoordinator;
    move-object/from16 v8, p1

    .line 60
    .local v8, "block":Lkotlin/jvm/functions/Function2;
    iget-object v12, v7, Landroidx/datastore/core/MultiProcessCoordinator;->inMemoryMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 218
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v9, 0x0

    .local v9, "owner$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 220
    .local v10, "$i$f$withTryLock":I
    invoke-interface {v12, v9}, Lkotlinx/coroutines/sync/Mutex;->tryLock(Ljava/lang/Object;)Z

    move-result v11

    .line 221
    .local v11, "locked$iv":Z
    nop

    .line 222
    move v0, v11

    .local v0, "it":Z
    const/4 v13, 0x0

    .line 61
    .local v13, "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_3

    .line 62
    .end local v0    # "it":Z
    .end local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    :try_start_2
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v12, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    iput-boolean v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    iput v14, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    invoke-interface {v8, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v8    # "block":Lkotlin/jvm/functions/Function2;
    if-ne v0, v5, :cond_1

    .line 59
    return-object v5

    .line 62
    :cond_1
    move-object v6, v9

    move v7, v11

    move-object v8, v12

    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$withTryLock":I
    .end local v11    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    :goto_1
    nop

    .line 224
    if-eqz v7, :cond_2

    .line 225
    invoke-interface {v8, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :cond_2
    return-object v0

    .line 224
    .restart local v9    # "owner$iv":Ljava/lang/Object;
    .restart local v10    # "$i$f$withTryLock":I
    .restart local v11    # "locked$iv":Z
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v4

    move-object v6, v9

    move v5, v10

    move v7, v11

    move-object v8, v12

    goto/16 :goto_c

    .line 64
    .restart local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .restart local v8    # "block":Lkotlin/jvm/functions/Function2;
    .restart local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v7}, Landroidx/datastore/core/MultiProcessCoordinator;->getLockFile()Ljava/io/File;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    check-cast v14, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    :try_start_4
    move-object v0, v14

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .local v0, "lockFileStream":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 65
    .local v16, "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    const/16 v17, 0x0

    .line 66
    .local v17, "lock":Ljava/nio/channels/FileLock;
    nop

    .line 67
    nop

    .line 71
    nop

    .line 69
    nop

    .line 70
    .end local v0    # "lockFileStream":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 71
    const-wide/16 v19, 0x0

    const-wide v21, 0x7fffffffffffffffL

    const/16 v23, 0x1

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    nop

    .end local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .end local v17    # "lock":Ljava/nio/channels/FileLock;
    .local v0, "lock":Ljava/nio/channels/FileLock;
    move-object v1, v0

    move-object/from16 v20, v4

    move v4, v15

    const/4 v2, 0x1

    goto/16 :goto_5

    .line 225
    .end local v0    # "lock":Ljava/nio/channels/FileLock;
    .end local v8    # "block":Lkotlin/jvm/functions/Function2;
    .restart local v17    # "lock":Ljava/nio/channels/FileLock;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v4

    move-object v6, v9

    move v7, v10

    move v9, v11

    move v5, v13

    move-object v11, v14

    move/from16 v8, v16

    move-object/from16 v10, v17

    goto/16 :goto_9

    .line 76
    .restart local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .restart local v8    # "block":Lkotlin/jvm/functions/Function2;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/io/IOException;
    nop

    .line 86
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v15, v7, Landroidx/datastore/core/MultiProcessCoordinator;->LOCK_ERROR_MESSAGE:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object/from16 v20, v4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .end local v4    # "$result":Ljava/lang/Object;
    .local v20, "$result":Ljava/lang/Object;
    :try_start_7
    invoke-static {v6, v15, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    const/4 v1, 0x1

    if-ne v6, v1, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    .line 225
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .end local v8    # "block":Lkotlin/jvm/functions/Function2;
    :catchall_4
    move-exception v0

    move-object v6, v9

    move v7, v10

    move v9, v11

    move v5, v13

    move-object v11, v14

    move/from16 v8, v16

    move-object/from16 v10, v17

    goto/16 :goto_9

    .line 86
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    .restart local v8    # "block":Lkotlin/jvm/functions/Function2;
    :cond_4
    move-object/from16 v20, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v20    # "$result":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x0

    .end local v7    # "this":Landroidx/datastore/core/MultiProcessCoordinator;
    :goto_2
    if-nez v4, :cond_9

    .line 87
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/datastore/core/MultiProcessCoordinator;->DEADLOCK_ERROR_MESSAGE:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v1, v2, v4, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    move v1, v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_7
    move v1, v4

    :goto_3
    if-eqz v1, :cond_8

    goto :goto_4

    .line 89
    .end local v8    # "block":Lkotlin/jvm/functions/Function2;
    :cond_8
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$withTryLock":I
    .end local v11    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v16    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .end local v17    # "lock":Ljava/nio/channels/FileLock;
    .end local v20    # "$result":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 86
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "block":Lkotlin/jvm/functions/Function2;
    .restart local v9    # "owner$iv":Ljava/lang/Object;
    .restart local v10    # "$i$f$withTryLock":I
    .restart local v11    # "locked$iv":Z
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local v16    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .restart local v17    # "lock":Ljava/nio/channels/FileLock;
    .restart local v20    # "$result":Ljava/lang/Object;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_9
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 92
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_4
    move-object/from16 v1, v17

    .end local v17    # "lock":Ljava/nio/channels/FileLock;
    .local v1, "lock":Ljava/nio/channels/FileLock;
    :goto_5
    if-eqz v1, :cond_a

    goto :goto_6

    .end local v8    # "block":Lkotlin/jvm/functions/Function2;
    :cond_a
    move v2, v4

    :goto_6
    :try_start_8
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v12, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->L$2:Ljava/lang/Object;

    iput-boolean v11, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->Z$0:Z

    const/4 v6, 0x2

    iput v6, v3, Landroidx/datastore/core/MultiProcessCoordinator$tryLock$1;->label:I

    invoke-interface {v8, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v0, v5, :cond_b

    .line 59
    return-object v5

    .line 92
    :cond_b
    move-object v6, v9

    move v7, v10

    move v9, v11

    move v5, v13

    move-object v11, v14

    move/from16 v8, v16

    move-object v10, v1

    .end local v1    # "lock":Ljava/nio/channels/FileLock;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v11    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v16    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .local v5, "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .local v7, "$i$f$withTryLock":I
    .local v8, "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .local v10, "lock":Ljava/nio/channels/FileLock;
    :goto_7
    nop

    .line 94
    nop

    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    if-eqz v10, :cond_c

    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    .line 225
    .end local v8    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    :catchall_5
    move-exception v0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .local v9, "locked$iv":Z
    move-object v1, v0

    move v13, v5

    move v5, v7

    move v7, v9

    move-object v14, v11

    move-object v8, v12

    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_b

    .line 92
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v9    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_c
    :goto_8
    nop

    .line 64
    const/4 v2, 0x0

    :try_start_a
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 224
    .end local v5    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v7    # "$i$f$withTryLock":I
    if-eqz v9, :cond_d

    .line 225
    invoke-interface {v12, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    :cond_d
    return-object v0

    .line 224
    .restart local v7    # "$i$f$withTryLock":I
    :catchall_6
    move-exception v0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v9    # "locked$iv":Z
    move-object v8, v12

    move v5, v7

    move v7, v9

    .local v8, "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    goto/16 :goto_c

    .line 225
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$withTryLock":I
    .end local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v1    # "lock":Ljava/nio/channels/FileLock;
    .local v9, "owner$iv":Ljava/lang/Object;
    .local v10, "$i$f$withTryLock":I
    .restart local v11    # "locked$iv":Z
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local v16    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    :catchall_7
    move-exception v0

    move-object v6, v9

    move v7, v10

    move v9, v11

    move v5, v13

    move-object v11, v14

    move/from16 v8, v16

    move-object v10, v1

    goto :goto_9

    .end local v1    # "lock":Ljava/nio/channels/FileLock;
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v17    # "lock":Ljava/nio/channels/FileLock;
    :catchall_8
    move-exception v0

    move-object/from16 v20, v4

    move-object v6, v9

    move v7, v10

    move v9, v11

    move v5, v13

    move-object v11, v14

    move/from16 v8, v16

    move-object/from16 v10, v17

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v10    # "$i$f$withTryLock":I
    .end local v11    # "locked$iv":Z
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v16    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .end local v17    # "lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$withTryLock":I
    .local v8, "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .local v9, "locked$iv":Z
    .restart local v20    # "$result":Ljava/lang/Object;
    :goto_9
    if-eqz v10, :cond_e

    :try_start_b
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_a

    .end local v8    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    :catchall_9
    move-exception v0

    move-object v1, v0

    move v13, v5

    move v5, v7

    move v7, v9

    move-object v14, v11

    move-object v8, v12

    goto :goto_b

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$withTryLock":I
    .end local v9    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "$result":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    :cond_e
    :goto_a
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .end local v8    # "$i$a$-use-MultiProcessCoordinator$tryLock$2$1":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .local v9, "owner$iv":Ljava/lang/Object;
    .restart local v10    # "$i$f$withTryLock":I
    .restart local v11    # "locked$iv":Z
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_a
    move-exception v0

    move-object/from16 v20, v4

    move-object v1, v0

    move-object v6, v9

    move v5, v10

    move v7, v11

    move-object v8, v12

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$withTryLock":I
    .end local v11    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_b
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v5, "$i$f$withTryLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .local v7, "locked$iv":Z
    .local v8, "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local v20    # "$result":Ljava/lang/Object;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_b
    move-exception v0

    :try_start_d
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$f$withTryLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "locked$iv":Z
    .end local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "$result":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 224
    .end local v13    # "$i$a$-withTryLock$default-MultiProcessCoordinator$tryLock$2":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "$i$f$withTryLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v7    # "locked$iv":Z
    .restart local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "$result":Ljava/lang/Object;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_c
    move-exception v0

    goto :goto_c

    .end local v5    # "$i$f$withTryLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "locked$iv":Z
    .end local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v9    # "owner$iv":Ljava/lang/Object;
    .restart local v10    # "$i$f$withTryLock":I
    .restart local v11    # "locked$iv":Z
    .restart local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :catchall_d
    move-exception v0

    move-object/from16 v20, v4

    move-object v6, v9

    move v5, v10

    move v7, v11

    move-object v8, v12

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v9    # "owner$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$withTryLock":I
    .end local v11    # "locked$iv":Z
    .end local v12    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v5    # "$i$f$withTryLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v7    # "locked$iv":Z
    .restart local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "$result":Ljava/lang/Object;
    :goto_c
    if-eqz v7, :cond_f

    .line 225
    .end local v7    # "locked$iv":Z
    invoke-interface {v8, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v8    # "$this$withTryLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_f
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
