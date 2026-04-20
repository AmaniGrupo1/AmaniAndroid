.class public final Landroidx/datastore/core/okio/OkioStorageConnection;
.super Ljava/lang/Object;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/StorageConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/StorageConnection<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorageConnection\n+ 2 Closeable.kt\nandroidx/datastore/core/CloseableKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n36#2,24:237\n36#2,24:269\n116#3,8:261\n125#3,2:293\n1#4:295\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorageConnection\n*L\n112#1:237,24\n131#1:269,24\n127#1:261,8\n127#1:293,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJX\u0010\u0016\u001a\u0002H\u0017\"\u0004\u0008\u0001\u0010\u00172B\u0010\u0018\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001a\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00170\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0\u0019\u00a2\u0006\u0002\u0008!H\u0096@\u00a2\u0006\u0002\u0010\"J=\u0010#\u001a\u00020\r2-\u0010\u0018\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000%\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0$\u00a2\u0006\u0002\u0008!H\u0096@\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\rH\u0002J\u0008\u0010(\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/datastore/core/okio/OkioStorageConnection;",
        "T",
        "Landroidx/datastore/core/StorageConnection;",
        "fileSystem",
        "Lokio/FileSystem;",
        "path",
        "Lokio/Path;",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "coordinator",
        "Landroidx/datastore/core/InterProcessCoordinator;",
        "onClose",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V",
        "getCoordinator",
        "()Landroidx/datastore/core/InterProcessCoordinator;",
        "closed",
        "Landroidx/datastore/core/okio/AtomicBoolean;",
        "transactionMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "readScope",
        "R",
        "block",
        "Lkotlin/Function3;",
        "Landroidx/datastore/core/ReadScope;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "locked",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeScope",
        "Lkotlin/Function2;",
        "Landroidx/datastore/core/WriteScope;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkNotClosed",
        "close",
        "datastore-core-okio"
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
.field private final closed:Landroidx/datastore/core/okio/AtomicBoolean;

.field private final coordinator:Landroidx/datastore/core/InterProcessCoordinator;

.field private final fileSystem:Lokio/FileSystem;

.field private final onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lokio/Path;

.field private final serializer:Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transactionMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "fileSystem"    # Lokio/FileSystem;
    .param p2, "path"    # Lokio/Path;
    .param p3, "serializer"    # Landroidx/datastore/core/okio/OkioSerializer;
    .param p4, "coordinator"    # Landroidx/datastore/core/InterProcessCoordinator;
    .param p5, "onClose"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;",
            "Landroidx/datastore/core/InterProcessCoordinator;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onClose"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    .line 95
    iput-object p2, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->path:Lokio/Path;

    .line 96
    iput-object p3, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 97
    iput-object p4, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->coordinator:Landroidx/datastore/core/InterProcessCoordinator;

    .line 98
    iput-object p5, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->onClose:Lkotlin/jvm/functions/Function0;

    .line 101
    new-instance v0, Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    .line 104
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 93
    return-void
.end method

.method private final checkNotClosed()V
    .locals 2

    .line 149
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    invoke-virtual {v0}, Landroidx/datastore/core/okio/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 149
    .local v0, "$i$a$-check-OkioStorageConnection$checkNotClosed$1":I
    nop

    .end local v0    # "$i$a$-check-OkioStorageConnection$checkNotClosed$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StorageConnection has already been disposed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 153
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->onClose:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorageConnection;->coordinator:Landroidx/datastore/core/InterProcessCoordinator;

    return-object v0
.end method

.method public readScope(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/datastore/core/ReadScope<",
            "TT;>;-",
            "Ljava/lang/Boolean;",
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

    instance-of v0, p2, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;-><init>(Landroidx/datastore/core/okio/OkioStorageConnection;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 107
    iget v3, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object p1, p0

    .local p1, "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    const/4 v2, 0x0

    .local v2, "$i$f$use":I
    const/4 v3, 0x0

    .local v3, "$i$a$-use-OkioStorageConnection$readScope$2":I
    iget-boolean v6, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->Z$0:Z

    .local v6, "lock":Z
    iget-object v7, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/core/Closeable;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p1

    move-object p1, v1

    move-object v9, v5

    goto :goto_2

    .line 241
    .end local v3    # "$i$a$-use-OkioStorageConnection$readScope$2":I
    :catchall_0
    move-exception v3

    move-object v8, v5

    .local v7, "$this$use$iv":Landroidx/datastore/core/Closeable;
    .local v8, "thrown$iv":Ljava/lang/Throwable;
    goto :goto_4

    .line 107
    .end local v2    # "$i$f$use":I
    .end local v6    # "lock":Z
    .end local v7    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .end local v8    # "thrown$iv":Ljava/lang/Throwable;
    .end local p1    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 108
    .local v3, "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .local p1, "block":Lkotlin/jvm/functions/Function3;
    invoke-direct {v3}, Landroidx/datastore/core/okio/OkioStorageConnection;->checkNotClosed()V

    .line 110
    iget-object v6, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v6, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v6

    .line 111
    .restart local v6    # "lock":Z
    nop

    .line 112
    :try_start_1
    new-instance v7, Landroidx/datastore/core/okio/OkioReadScope;

    iget-object v8, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    iget-object v9, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->path:Lokio/Path;

    iget-object v10, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    invoke-direct {v7, v8, v9, v10}, Landroidx/datastore/core/okio/OkioReadScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V

    check-cast v7, Landroidx/datastore/core/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .restart local v7    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    const/4 v8, 0x0

    .line 237
    .local v8, "$i$f$use":I
    const/4 v9, 0x0

    .line 239
    .local v9, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 240
    :try_start_2
    move-object v10, v7

    check-cast v10, Landroidx/datastore/core/okio/OkioReadScope;

    .local v10, "it":Landroidx/datastore/core/okio/OkioReadScope;
    const/4 v11, 0x0

    .line 113
    .local v11, "$i$a$-use-OkioStorageConnection$readScope$2":I
    if-eqz v6, :cond_1

    move v12, v4

    goto :goto_1

    .end local v10    # "it":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p1    # "block":Lkotlin/jvm/functions/Function3;
    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v7, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    iput-boolean v6, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->Z$0:Z

    iput v4, v0, Landroidx/datastore/core/okio/OkioStorageConnection$readScope$1;->label:I

    invoke-interface {p1, v10, v12, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v2, :cond_2

    .line 107
    .end local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    return-object v2

    .line 113
    .end local v7    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .end local v8    # "$i$f$use":I
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .end local v11    # "$i$a$-use-OkioStorageConnection$readScope$2":I
    .restart local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :cond_2
    :goto_2
    nop

    .line 244
    nop

    .line 245
    :try_start_3
    invoke-interface {v7}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 246
    :catchall_1
    move-exception v9

    .line 247
    nop

    .line 248
    nop

    .line 254
    :goto_3
    if-nez v9, :cond_4

    .line 116
    if-eqz v6, :cond_3

    .line 117
    .end local v6    # "lock":Z
    iget-object v2, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .end local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :cond_3
    return-object p1

    .line 255
    .restart local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .restart local v6    # "lock":Z
    :cond_4
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v6    # "lock":Z
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 241
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .restart local v6    # "lock":Z
    .restart local v7    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .restart local v8    # "$i$f$use":I
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception p1

    move-object v2, v3

    move-object v3, p1

    move-object p1, v2

    move v2, v8

    move-object v8, v9

    .line 242
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$use":I
    .local v3, "t$iv":Ljava/lang/Throwable;
    .local v8, "thrown$iv":Ljava/lang/Throwable;
    .local p1, "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :goto_4
    move-object v8, v3

    .line 244
    .end local v3    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 245
    :try_start_5
    invoke-interface {v7}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v7    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_5

    .line 246
    :catchall_3
    move-exception v3

    .line 247
    .restart local v3    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 250
    :try_start_6
    invoke-static {v8, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 254
    .end local v3    # "t$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 255
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v6    # "lock":Z
    .end local p1    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 116
    .end local v2    # "$i$f$use":I
    .end local v8    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "lock":Z
    .restart local p1    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v2

    move-object v3, p1

    move-object p1, v2

    goto :goto_6

    .end local p1    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .local v3, "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :catchall_5
    move-exception p1

    :goto_6
    if-eqz v6, :cond_5

    .line 117
    .end local v6    # "lock":Z
    iget-object v2, v3, Landroidx/datastore/core/okio/OkioStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .end local v3    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :cond_5
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/datastore/core/WriteScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    instance-of v0, v1, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    iget v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;-><init>(Landroidx/datastore/core/okio/OkioStorageConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget v5, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    move-object/from16 v5, p0

    .local v5, "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    const/4 v6, 0x0

    .local v6, "$i$f$withLock":I
    const/4 v7, 0x0

    .local v7, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    const/4 v8, 0x0

    .local v8, "$i$f$use":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    const/4 v9, 0x0

    .local v9, "thrown$iv":Ljava/lang/Throwable;
    iget-object v10, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/core/Closeable;

    .local v10, "$this$use$iv":Landroidx/datastore/core/Closeable;
    iget-object v11, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lokio/Path;

    .local v11, "scratchPath":Lokio/Path;
    const/4 v12, 0x0

    .local v12, "owner$iv":Ljava/lang/Object;
    iget-object v13, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    .local v13, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 273
    .end local v0    # "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 123
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .end local v8    # "$i$f$use":I
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .end local v11    # "scratchPath":Lokio/Path;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_1
    move-object/from16 v5, p0

    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    const/4 v7, 0x0

    .local v7, "$i$f$withLock":I
    const/4 v8, 0x0

    .local v8, "owner$iv":Ljava/lang/Object;
    iget-object v9, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    .local v9, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v10, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lokio/Path;

    .local v10, "parentDir":Lokio/Path;
    iget-object v11, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    .local v11, "block":Lkotlin/jvm/functions/Function2;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v9

    move-object v12, v8

    goto :goto_1

    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v7    # "$i$f$withLock":I
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v9    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v10    # "parentDir":Lokio/Path;
    .end local v11    # "block":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    move-object/from16 v11, p1

    .line 124
    .restart local v11    # "block":Lkotlin/jvm/functions/Function2;
    invoke-direct {v5}, Landroidx/datastore/core/okio/OkioStorageConnection;->checkNotClosed()V

    .line 125
    iget-object v7, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->path:Lokio/Path;

    invoke-virtual {v7}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v7

    if-eqz v7, :cond_6

    move-object v10, v7

    .line 126
    .restart local v10    # "parentDir":Lokio/Path;
    iget-object v7, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v7, v10, v6}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    .line 127
    iget-object v7, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 261
    .local v7, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 262
    const/4 v8, 0x0

    .line 261
    .restart local v8    # "owner$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 266
    .local v9, "$i$f$withLock":I
    iput-object v11, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    invoke-interface {v7, v8, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_1

    .line 123
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    return-object v0

    .line 266
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :cond_1
    move-object v13, v7

    move v7, v9

    move-object v12, v8

    .line 267
    .end local v8    # "owner$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$withLock":I
    .local v7, "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_1
    nop

    .line 268
    const/4 v8, 0x0

    .line 128
    .local v8, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->path:Lokio/Path;

    invoke-virtual {v14}, Lokio/Path;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ".tmp"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 129
    .end local v10    # "parentDir":Lokio/Path;
    .local v9, "scratchPath":Lokio/Path;
    nop

    .line 130
    :try_start_2
    iget-object v10, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v10, v9, v6}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    .line 131
    new-instance v6, Landroidx/datastore/core/okio/OkioWriteScope;

    iget-object v10, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    iget-object v14, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    invoke-direct {v6, v10, v9, v14}, Landroidx/datastore/core/okio/OkioWriteScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V

    check-cast v6, Landroidx/datastore/core/Closeable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v10, v6

    .local v10, "$this$use$iv":Landroidx/datastore/core/Closeable;
    const/4 v6, 0x0

    .line 269
    .local v6, "$i$f$use":I
    const/4 v14, 0x0

    .line 271
    .local v14, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 272
    :try_start_3
    move-object v15, v10

    check-cast v15, Landroidx/datastore/core/okio/OkioWriteScope;

    .local v15, "it":Landroidx/datastore/core/okio/OkioWriteScope;
    const/16 v16, 0x0

    .line 131
    .local v16, "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    iput-object v13, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v3, Landroidx/datastore/core/okio/OkioStorageConnection$writeScope$1;->label:I

    invoke-interface {v11, v15, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v11    # "block":Lkotlin/jvm/functions/Function2;
    .end local v15    # "it":Landroidx/datastore/core/okio/OkioWriteScope;
    if-ne v1, v0, :cond_2

    .line 123
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    return-object v0

    .line 131
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    :cond_2
    move v0, v8

    move v8, v6

    move v6, v7

    move v7, v0

    move-object v11, v9

    move-object v9, v14

    move/from16 v0, v16

    .end local v14    # "thrown$iv":Ljava/lang/Throwable;
    .end local v16    # "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    .restart local v0    # "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    .local v6, "$i$f$withLock":I
    .local v7, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .local v8, "$i$f$use":I
    .local v9, "thrown$iv":Ljava/lang/Throwable;
    .local v11, "scratchPath":Lokio/Path;
    :goto_2
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    .end local v0    # "$i$a$-use-OkioStorageConnection$writeScope$2$1":I
    nop

    .line 276
    nop

    .line 277
    :try_start_5
    invoke-interface {v10}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_3

    .line 278
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 279
    .local v0, "t$iv":Ljava/lang/Throwable;
    nop

    .line 280
    move-object v9, v0

    .line 286
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    :goto_3
    if-nez v9, :cond_4

    .line 272
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 132
    .end local v8    # "$i$f$use":I
    :try_start_6
    iget-object v0, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v0, v11}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    iget-object v1, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->path:Lokio/Path;

    invoke-virtual {v0, v11, v1}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 145
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v11    # "scratchPath":Lokio/Path;
    :cond_3
    nop

    .end local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 268
    nop

    .line 293
    invoke-interface {v13, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 294
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 267
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 146
    .end local v6    # "$i$f$withLock":I
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 287
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .restart local v6    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .restart local v8    # "$i$f$use":I
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v11    # "scratchPath":Lokio/Path;
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_4
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .end local v11    # "scratchPath":Lokio/Path;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 273
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .local v6, "$i$f$use":I
    .local v7, "$i$f$withLock":I
    .local v8, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .local v9, "scratchPath":Lokio/Path;
    .restart local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v14    # "thrown$iv":Ljava/lang/Throwable;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move v11, v8

    move v8, v6

    move v6, v7

    move v7, v11

    move-object v11, v9

    move-object v9, v14

    .line 274
    .end local v14    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    .local v6, "$i$f$withLock":I
    .local v7, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .local v8, "$i$f$use":I
    .local v9, "thrown$iv":Ljava/lang/Throwable;
    .restart local v11    # "scratchPath":Lokio/Path;
    :goto_4
    move-object v1, v0

    .line 276
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .local v1, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 277
    :try_start_9
    invoke-interface {v10}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_5

    .line 278
    :catchall_3
    move-exception v0

    .line 279
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 282
    :try_start_a
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 286
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 287
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .end local v11    # "scratchPath":Lokio/Path;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 293
    .end local v1    # "thrown$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$f$use":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move v7, v6

    goto :goto_8

    .line 135
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .restart local v7    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .restart local v11    # "scratchPath":Lokio/Path;
    :catch_0
    move-exception v0

    move v8, v7

    move-object v9, v11

    move v7, v6

    goto :goto_6

    .end local v6    # "$i$f$withLock":I
    .end local v11    # "scratchPath":Lokio/Path;
    .local v7, "$i$f$withLock":I
    .local v8, "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .local v9, "scratchPath":Lokio/Path;
    :catch_1
    move-exception v0

    :goto_6
    move-object v1, v0

    .line 136
    .local v1, "ex":Ljava/io/IOException;
    :try_start_b
    iget-object v0, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v0, v9}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_5

    .line 137
    nop

    .line 138
    :try_start_c
    iget-object v0, v5, Landroidx/datastore/core/okio/OkioStorageConnection;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v0, v9}, Lokio/FileSystem;->delete(Lokio/Path;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .end local v5    # "this":Landroidx/datastore/core/okio/OkioStorageConnection;
    .end local v9    # "scratchPath":Lokio/Path;
    goto :goto_7

    .line 139
    :catch_2
    move-exception v0

    .line 143
    :cond_5
    :goto_7
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$withLock":I
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 293
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v8    # "$i$a$-withLock$default-OkioStorageConnection$writeScope$2":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v7    # "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    :goto_8
    invoke-interface {v13, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 125
    .end local v7    # "$i$f$withLock":I
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .local v11, "block":Lkotlin/jvm/functions/Function2;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must have a parent path"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
