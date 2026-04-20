.class public final Landroidx/datastore/core/FileStorageConnection;
.super Ljava/lang/Object;
.source "FileStorage.kt"

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
    value = "SMAP\nFileStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n+ 2 Closeable.kt\nandroidx/datastore/core/CloseableKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n36#2,24:233\n36#2,24:265\n116#3,8:257\n125#3,2:289\n1#4:291\n*S KotlinDebug\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n*L\n96#1:233,24\n112#1:265,24\n109#1:257,8\n109#1:289,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJX\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0001\u0010\u00152B\u0010\u0016\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0018\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0017\u00a2\u0006\u0002\u0008\u001fH\u0096@\u00a2\u0006\u0002\u0010 J=\u0010!\u001a\u00020\u000b2-\u0010\u0016\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\"\u00a2\u0006\u0002\u0008\u001fH\u0096@\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u000bH\u0016J\u0008\u0010&\u001a\u00020\u000bH\u0002J\u000c\u0010\'\u001a\u00020\u000b*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/datastore/core/FileStorageConnection;",
        "T",
        "Landroidx/datastore/core/StorageConnection;",
        "file",
        "Ljava/io/File;",
        "serializer",
        "Landroidx/datastore/core/Serializer;",
        "coordinator",
        "Landroidx/datastore/core/InterProcessCoordinator;",
        "onClose",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V",
        "getCoordinator",
        "()Landroidx/datastore/core/InterProcessCoordinator;",
        "closed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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
        "close",
        "checkNotClosed",
        "createParentDirectories",
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


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final coordinator:Landroidx/datastore/core/InterProcessCoordinator;

.field private final file:Ljava/io/File;

.field private final onClose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Landroidx/datastore/core/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Serializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transactionMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "serializer"    # Landroidx/datastore/core/Serializer;
    .param p3, "coordinator"    # Landroidx/datastore/core/InterProcessCoordinator;
    .param p4, "onClose"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/InterProcessCoordinator;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onClose"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    .line 81
    iput-object p2, p0, Landroidx/datastore/core/FileStorageConnection;->serializer:Landroidx/datastore/core/Serializer;

    .line 82
    iput-object p3, p0, Landroidx/datastore/core/FileStorageConnection;->coordinator:Landroidx/datastore/core/InterProcessCoordinator;

    .line 83
    iput-object p4, p0, Landroidx/datastore/core/FileStorageConnection;->onClose:Lkotlin/jvm/functions/Function0;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 79
    return-void
.end method

.method private final checkNotClosed()V
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$a$-check-FileStorageConnection$checkNotClosed$1":I
    nop

    .end local v0    # "$i$a$-check-FileStorageConnection$checkNotClosed$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StorageConnection has already been disposed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createParentDirectories(Ljava/io/File;)V
    .locals 6
    .param p1, "$this$createParentDirectories"    # Ljava/io/File;

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    move-object v1, v0

    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 143
    .local v2, "$i$a$-let-FileStorageConnection$createParentDirectories$1":I
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    nop

    .line 142
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-FileStorageConnection$createParentDirectories$1":I
    goto :goto_0

    .line 145
    .restart local v1    # "it":Ljava/io/File;
    .restart local v2    # "$i$a$-let-FileStorageConnection$createParentDirectories$1":I
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

    .line 148
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-FileStorageConnection$createParentDirectories$1":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 131
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->onClose:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/datastore/core/FileStorageConnection;->coordinator:Landroidx/datastore/core/InterProcessCoordinator;

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

    instance-of v0, p2, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    iget v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/FileStorageConnection$readScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 91
    iget v3, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

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

    .local p1, "this":Landroidx/datastore/core/FileStorageConnection;
    const/4 v2, 0x0

    .local v2, "$i$f$use":I
    const/4 v3, 0x0

    .local v3, "$i$a$-use-FileStorageConnection$readScope$2":I
    iget-boolean v6, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->Z$0:Z

    .local v6, "lock":Z
    const/4 v7, 0x0

    .local v7, "thrown$iv":Ljava/lang/Throwable;
    iget-object v8, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/datastore/core/Closeable;

    .local v8, "$this$use$iv":Landroidx/datastore/core/Closeable;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v3

    move-object v3, p1

    move-object p1, v1

    goto :goto_2

    .line 237
    .end local v3    # "$i$a$-use-FileStorageConnection$readScope$2":I
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 91
    .end local v2    # "$i$f$use":I
    .end local v6    # "lock":Z
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    .end local v8    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .end local p1    # "this":Landroidx/datastore/core/FileStorageConnection;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 92
    .local v3, "this":Landroidx/datastore/core/FileStorageConnection;
    .local p1, "block":Lkotlin/jvm/functions/Function3;
    invoke-direct {v3}, Landroidx/datastore/core/FileStorageConnection;->checkNotClosed()V

    .line 94
    iget-object v6, v3, Landroidx/datastore/core/FileStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v6, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v6

    .line 95
    .restart local v6    # "lock":Z
    nop

    .line 96
    :try_start_1
    new-instance v7, Landroidx/datastore/core/FileReadScope;

    iget-object v8, v3, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    iget-object v9, v3, Landroidx/datastore/core/FileStorageConnection;->serializer:Landroidx/datastore/core/Serializer;

    invoke-direct {v7, v8, v9}, Landroidx/datastore/core/FileReadScope;-><init>(Ljava/io/File;Landroidx/datastore/core/Serializer;)V

    check-cast v7, Landroidx/datastore/core/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v8, v7

    .restart local v8    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    const/4 v7, 0x0

    .line 233
    .local v7, "$i$f$use":I
    const/4 v9, 0x0

    .line 235
    .local v9, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 236
    :try_start_2
    move-object v10, v8

    check-cast v10, Landroidx/datastore/core/FileReadScope;

    .local v10, "it":Landroidx/datastore/core/FileReadScope;
    const/4 v11, 0x0

    .line 96
    .local v11, "$i$a$-use-FileStorageConnection$readScope$2":I
    if-eqz v6, :cond_1

    move v12, v4

    goto :goto_1

    .end local v10    # "it":Landroidx/datastore/core/FileReadScope;
    .end local p1    # "block":Lkotlin/jvm/functions/Function3;
    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v8, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->L$0:Ljava/lang/Object;

    iput-boolean v6, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->Z$0:Z

    iput v4, v0, Landroidx/datastore/core/FileStorageConnection$readScope$1;->label:I

    invoke-interface {p1, v10, v12, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v2, :cond_2

    .line 91
    .end local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    return-object v2

    .line 96
    .restart local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    :cond_2
    move v2, v7

    move-object v7, v9

    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$use":I
    .local v7, "thrown$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 236
    .end local v11    # "$i$a$-use-FileStorageConnection$readScope$2":I
    nop

    .line 240
    nop

    .line 241
    :try_start_3
    invoke-interface {v8}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v8    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_3

    .line 242
    :catchall_1
    move-exception v8

    .line 243
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    .local v8, "t$iv":Ljava/lang/Throwable;
    nop

    .line 244
    move-object v7, v8

    .line 250
    .end local v8    # "t$iv":Ljava/lang/Throwable;
    .restart local v7    # "thrown$iv":Ljava/lang/Throwable;
    :goto_3
    if-nez v7, :cond_4

    .line 236
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 98
    .end local v2    # "$i$f$use":I
    if-eqz v6, :cond_3

    .line 99
    .end local v6    # "lock":Z
    iget-object v2, v3, Landroidx/datastore/core/FileStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 96
    .end local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    :cond_3
    return-object p1

    .line 251
    .restart local v2    # "$i$f$use":I
    .restart local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    .restart local v6    # "lock":Z
    .restart local v7    # "thrown$iv":Ljava/lang/Throwable;
    :cond_4
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    .end local v6    # "lock":Z
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 237
    .end local v2    # "$i$f$use":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    .restart local v6    # "lock":Z
    .local v7, "$i$f$use":I
    .local v8, "$this$use$iv":Landroidx/datastore/core/Closeable;
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception p1

    move-object v2, v3

    move-object v3, p1

    move-object p1, v2

    move v2, v7

    move-object v7, v9

    .line 238
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$use":I
    .local v3, "t$iv":Ljava/lang/Throwable;
    .local v7, "thrown$iv":Ljava/lang/Throwable;
    .local p1, "this":Landroidx/datastore/core/FileStorageConnection;
    :goto_4
    move-object v7, v3

    .line 240
    .end local v3    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 241
    :try_start_5
    invoke-interface {v8}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v8    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_5

    .line 242
    :catchall_3
    move-exception v3

    .line 243
    .restart local v3    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 246
    :try_start_6
    invoke-static {v7, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 250
    .end local v3    # "t$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 251
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v6    # "lock":Z
    .end local p1    # "this":Landroidx/datastore/core/FileStorageConnection;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 98
    .end local v2    # "$i$f$use":I
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v6    # "lock":Z
    .restart local p1    # "this":Landroidx/datastore/core/FileStorageConnection;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v2

    move-object v3, p1

    move-object p1, v2

    goto :goto_6

    .end local p1    # "this":Landroidx/datastore/core/FileStorageConnection;
    .local v3, "this":Landroidx/datastore/core/FileStorageConnection;
    :catchall_5
    move-exception p1

    :goto_6
    if-eqz v6, :cond_5

    .line 99
    .end local v6    # "lock":Z
    iget-object v2, v3, Landroidx/datastore/core/FileStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v2, v5, v4, v5}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .end local v3    # "this":Landroidx/datastore/core/FileStorageConnection;
    :cond_5
    throw p1

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

    instance-of v0, v1, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    iget v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/FileStorageConnection$writeScope$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/FileStorageConnection$writeScope$1;-><init>(Landroidx/datastore/core/FileStorageConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget v5, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

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
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/datastore/core/FileStorageConnection;
    const/4 v5, 0x0

    .local v5, "$i$f$withLock":I
    const/4 v6, 0x0

    .local v6, "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    const/4 v7, 0x0

    .local v7, "$i$f$use":I
    const/4 v8, 0x0

    .local v8, "$i$a$-use-FileStorageConnection$writeScope$2$1":I
    const/4 v9, 0x0

    .local v9, "thrown$iv":Ljava/lang/Throwable;
    iget-object v10, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/core/Closeable;

    .local v10, "$this$use$iv":Landroidx/datastore/core/Closeable;
    iget-object v11, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    .local v11, "scratchFile":Ljava/io/File;
    const/4 v12, 0x0

    .local v12, "owner$iv":Ljava/lang/Object;
    iget-object v13, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/sync/Mutex;

    .local v13, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    goto/16 :goto_2

    .line 269
    .end local v0    # "this":Landroidx/datastore/core/FileStorageConnection;
    .end local v8    # "$i$a$-use-FileStorageConnection$writeScope$2$1":I
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 105
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .end local v7    # "$i$f$use":I
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    .end local v11    # "scratchFile":Ljava/io/File;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :pswitch_1
    move-object/from16 v5, p0

    .local v5, "this":Landroidx/datastore/core/FileStorageConnection;
    const/4 v6, 0x0

    .local v6, "$i$f$withLock":I
    const/4 v7, 0x0

    .local v7, "owner$iv":Ljava/lang/Object;
    iget-object v8, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    .local v8, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    iget-object v9, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .local v9, "block":Lkotlin/jvm/functions/Function2;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v8

    move-object v12, v7

    goto :goto_1

    .end local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "owner$iv":Ljava/lang/Object;
    .end local v8    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v9    # "block":Lkotlin/jvm/functions/Function2;
    :pswitch_2
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    move-object/from16 v9, p1

    .line 106
    .restart local v9    # "block":Lkotlin/jvm/functions/Function2;
    invoke-direct {v5}, Landroidx/datastore/core/FileStorageConnection;->checkNotClosed()V

    .line 107
    iget-object v6, v5, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Landroidx/datastore/core/FileStorageConnection;->createParentDirectories(Ljava/io/File;)V

    .line 109
    iget-object v6, v5, Landroidx/datastore/core/FileStorageConnection;->transactionMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 257
    .local v6, "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 258
    const/4 v7, 0x0

    .line 257
    .restart local v7    # "owner$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 262
    .local v8, "$i$f$withLock":I
    iput-object v9, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object v6, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    invoke-interface {v6, v7, v3}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_1

    .line 105
    .end local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    return-object v0

    .line 262
    .restart local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    :cond_1
    move-object v13, v6

    move v6, v8

    move-object v12, v7

    .line 263
    .end local v7    # "owner$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$withLock":I
    .local v6, "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :goto_1
    nop

    .line 264
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    :try_start_1
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v11, v8

    .line 111
    .restart local v11    # "scratchFile":Ljava/io/File;
    nop

    .line 112
    :try_start_2
    new-instance v8, Landroidx/datastore/core/FileWriteScope;

    iget-object v10, v5, Landroidx/datastore/core/FileStorageConnection;->serializer:Landroidx/datastore/core/Serializer;

    invoke-direct {v8, v11, v10}, Landroidx/datastore/core/FileWriteScope;-><init>(Ljava/io/File;Landroidx/datastore/core/Serializer;)V

    check-cast v8, Landroidx/datastore/core/Closeable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v10, v8

    .restart local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    const/4 v8, 0x0

    .line 265
    .local v8, "$i$f$use":I
    const/4 v14, 0x0

    .line 267
    .local v14, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 268
    :try_start_3
    move-object v15, v10

    check-cast v15, Landroidx/datastore/core/FileWriteScope;

    .local v15, "it":Landroidx/datastore/core/FileWriteScope;
    const/16 v16, 0x0

    .line 112
    .local v16, "$i$a$-use-FileStorageConnection$writeScope$2$1":I
    iput-object v13, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v3, Landroidx/datastore/core/FileStorageConnection$writeScope$1;->label:I

    invoke-interface {v9, v15, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v9    # "block":Lkotlin/jvm/functions/Function2;
    .end local v15    # "it":Landroidx/datastore/core/FileWriteScope;
    if-ne v1, v0, :cond_2

    .line 105
    .end local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    return-object v0

    .line 112
    .restart local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    :cond_2
    move-object v9, v14

    .end local v14    # "thrown$iv":Ljava/lang/Throwable;
    .local v9, "thrown$iv":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 268
    .end local v16    # "$i$a$-use-FileStorageConnection$writeScope$2$1":I
    nop

    .line 272
    nop

    .line 273
    :try_start_5
    invoke-interface {v10}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_3

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .local v0, "t$iv":Ljava/lang/Throwable;
    nop

    .line 276
    move-object v9, v0

    .line 282
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    :goto_3
    if-nez v9, :cond_5

    .line 268
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 113
    .end local v8    # "$i$f$use":I
    :try_start_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    invoke-static {v11, v0}, Landroidx/datastore/core/FileMoves_androidKt;->atomicMoveTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 114
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to rename "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " to "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v5, Landroidx/datastore/core/FileStorageConnection;->file:Ljava/io/File;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .end local v5    # "this":Landroidx/datastore/core/FileStorageConnection;
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .end local v11    # "scratchFile":Ljava/io/File;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 127
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_4
    :goto_4
    nop

    .end local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 264
    nop

    .line 289
    invoke-interface {v13, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 290
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 263
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    nop

    .line 128
    .end local v6    # "$i$f$withLock":I
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 283
    .restart local v6    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .restart local v8    # "$i$f$use":I
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v11    # "scratchFile":Ljava/io/File;
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    :cond_5
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .end local v11    # "scratchFile":Ljava/io/File;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 121
    .end local v8    # "$i$f$use":I
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .restart local v11    # "scratchFile":Ljava/io/File;
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception v0

    goto :goto_7

    .line 269
    .restart local v8    # "$i$f$use":I
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    :catchall_2
    move-exception v0

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_5

    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v14    # "thrown$iv":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v9, v14

    .line 270
    .end local v8    # "$i$f$use":I
    .end local v14    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    .local v5, "$i$f$withLock":I
    .local v6, "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .local v7, "$i$f$use":I
    .restart local v9    # "thrown$iv":Ljava/lang/Throwable;
    :goto_5
    move-object v1, v0

    .line 272
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .end local v9    # "thrown$iv":Ljava/lang/Throwable;
    .local v1, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 273
    :try_start_9
    invoke-interface {v10}, Landroidx/datastore/core/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .end local v10    # "$this$use$iv":Landroidx/datastore/core/Closeable;
    goto :goto_6

    .line 274
    :catchall_4
    move-exception v0

    .line 275
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 278
    :try_start_a
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 282
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_6
    nop

    .line 283
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .end local v11    # "scratchFile":Ljava/io/File;
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 289
    .end local v1    # "thrown$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$use":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move v6, v5

    goto :goto_8

    .line 121
    .restart local v6    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .restart local v11    # "scratchFile":Ljava/io/File;
    :catch_1
    move-exception v0

    move v7, v6

    move v6, v5

    .line 122
    .end local v5    # "$i$f$withLock":I
    .local v0, "ex":Ljava/io/IOException;
    .local v6, "$i$f$withLock":I
    .local v7, "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    :goto_7
    :try_start_b
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 125
    .end local v11    # "scratchFile":Ljava/io/File;
    :cond_6
    nop

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$withLock":I
    .end local v12    # "owner$iv":Ljava/lang/Object;
    .end local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 289
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "$i$a$-withLock$default-FileStorageConnection$writeScope$2":I
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$withLock":I
    .restart local v12    # "owner$iv":Ljava/lang/Object;
    .restart local v13    # "$this$withLock_u24default$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_6
    move-exception v0

    :goto_8
    invoke-interface {v13, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
