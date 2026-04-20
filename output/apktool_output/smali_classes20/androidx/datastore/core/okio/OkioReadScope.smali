.class public Landroidx/datastore/core/okio/OkioReadScope;
.super Ljava/lang/Object;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/ReadScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/ReadScope<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioReadScope\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 FileSystem.kt\nokio/FileSystem\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n66#2:237\n52#2,4:239\n60#2,10:244\n56#2,3:254\n71#2,3:257\n66#2:260\n52#2,4:262\n60#2,10:267\n56#2,3:277\n71#2,3:280\n67#3:238\n68#3:243\n67#3:261\n68#3:266\n1#4:283\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioReadScope\n*L\n170#1:237\n170#1:239,4\n170#1:244,10\n170#1:254,3\n170#1:257,3\n177#1:260\n177#1:262,4\n177#1:267,10\n177#1:277,3\n177#1:280,3\n170#1:238\n170#1:243\n177#1:261\n177#1:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0013\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/datastore/core/okio/OkioReadScope;",
        "T",
        "Landroidx/datastore/core/ReadScope;",
        "fileSystem",
        "Lokio/FileSystem;",
        "path",
        "Lokio/Path;",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "<init>",
        "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V",
        "getFileSystem",
        "()Lokio/FileSystem;",
        "getPath",
        "()Lokio/Path;",
        "getSerializer",
        "()Landroidx/datastore/core/okio/OkioSerializer;",
        "closed",
        "Landroidx/datastore/core/okio/AtomicBoolean;",
        "readData",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "",
        "checkClose",
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

.field private final fileSystem:Lokio/FileSystem;

.field private final path:Lokio/Path;

.field private final serializer:Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V
    .locals 2
    .param p1, "fileSystem"    # Lokio/FileSystem;
    .param p2, "path"    # Lokio/Path;
    .param p3, "serializer"    # Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    .line 160
    iput-object p2, p0, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    .line 161
    iput-object p3, p0, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 164
    new-instance v0, Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    .line 158
    return-void
.end method

.method static synthetic readData$suspendImpl(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/core/okio/OkioReadScope<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/okio/OkioReadScope$readData$1;-><init>(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 166
    iget v3, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$-read":I
    const/4 v2, 0x0

    .local v2, "$i$f$use":I
    const/4 v3, 0x0

    .local v3, "$i$a$-use-FileSystem$read$1$iv":I
    const/4 v5, 0x0

    .local v5, "$i$a$--read-OkioReadScope$readData$3":I
    const/4 v6, 0x0

    .local v6, "thrown$iv$iv":Ljava/lang/Throwable;
    iget-object v7, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/io/Closeable;

    .local v7, "$this$use$iv$iv":Ljava/io/Closeable;
    iget-object v8, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/datastore/core/okio/OkioReadScope;

    .local v8, "$this":Landroidx/datastore/core/okio/OkioReadScope;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    goto/16 :goto_6

    .line 277
    .end local v3    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v5    # "$i$a$--read-OkioReadScope$readData$3":I
    :catchall_0
    move-exception v3

    goto/16 :goto_8

    .line 166
    .end local v2    # "$i$f$use":I
    .end local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    :pswitch_1
    const/4 p0, 0x0

    .restart local p0    # "$i$f$-read":I
    const/4 v3, 0x0

    .local v3, "$i$f$use":I
    const/4 v5, 0x0

    .local v5, "$i$a$-use-FileSystem$read$1$iv":I
    const/4 v6, 0x0

    .local v6, "$i$a$--read-OkioReadScope$readData$2":I
    const/4 v7, 0x0

    .local v7, "thrown$iv$iv":Ljava/lang/Throwable;
    iget-object v8, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/Closeable;

    .local v8, "$this$use$iv$iv":Ljava/io/Closeable;
    iget-object v9, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/datastore/core/okio/OkioReadScope;

    .local v9, "$this":Landroidx/datastore/core/okio/OkioReadScope;
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v1

    goto :goto_1

    .line 254
    .end local v5    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v6    # "$i$a$--read-OkioReadScope$readData$2":I
    :catchall_1
    move-exception v5

    goto :goto_3

    .line 166
    .end local v3    # "$i$f$use":I
    .end local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v8    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v9    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p0

    .line 167
    .restart local v9    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    invoke-virtual {v9}, Landroidx/datastore/core/okio/OkioReadScope;->checkClose()V

    .line 169
    nop

    .line 170
    :try_start_2
    iget-object p0, v9, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    iget-object v3, v9, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    .line 237
    .local v3, "file$iv":Lokio/Path;
    .local p0, "this_$iv":Lokio/FileSystem;
    const/4 v5, 0x0

    .line 238
    .local v5, "$i$f$-read":I
    invoke-virtual {p0, v3}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v6

    .end local v3    # "file$iv":Lokio/Path;
    .end local p0    # "this_$iv":Lokio/FileSystem;
    .restart local v8    # "$this$use$iv$iv":Ljava/io/Closeable;
    const/4 v3, 0x0

    .line 239
    .local v3, "$i$f$use":I
    const/4 v7, 0x0

    .line 241
    .restart local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 242
    :try_start_3
    move-object p0, v8

    check-cast p0, Lokio/BufferedSource;

    .local p0, "it$iv":Lokio/BufferedSource;
    const/4 v6, 0x0

    .line 243
    .local v6, "$i$a$-use-FileSystem$read$1$iv":I
    nop

    .local p0, "$this$readData_u24lambda_u240":Lokio/BufferedSource;
    const/4 v10, 0x0

    .line 170
    .local v10, "$i$a$--read-OkioReadScope$readData$2":I
    iget-object v11, v9, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    iput-object v9, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    invoke-interface {v11, p0, v0}, Landroidx/datastore/core/okio/OkioSerializer;->readFrom(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local p0    # "$this$readData_u24lambda_u240":Lokio/BufferedSource;
    if-ne v11, v2, :cond_1

    .line 166
    return-object v2

    .line 170
    :cond_1
    move p0, v5

    move v5, v6

    move v6, v10

    .end local v10    # "$i$a$--read-OkioReadScope$readData$2":I
    .local v5, "$i$a$-use-FileSystem$read$1$iv":I
    .local v6, "$i$a$--read-OkioReadScope$readData$2":I
    .local p0, "$i$f$-read":I
    :goto_1
    nop

    .line 243
    .end local v5    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v6    # "$i$a$--read-OkioReadScope$readData$2":I
    nop

    .line 242
    nop

    .line 244
    nop

    .line 245
    if-eqz v8, :cond_2

    :try_start_4
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 246
    .end local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v8    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_2
    move-exception v5

    .line 247
    .local v5, "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 248
    move-object v7, v5

    .restart local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 253
    .end local v5    # "t$iv$iv":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    goto :goto_5

    .line 254
    .end local p0    # "$i$f$-read":I
    .local v5, "$i$f$-read":I
    .restart local v8    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_3
    move-exception p0

    move v13, v5

    move-object v5, p0

    move p0, v13

    .line 255
    .local v5, "t$iv$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$-read":I
    :goto_3
    move-object v7, v5

    .line 256
    nop

    .line 244
    .end local v5    # "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 245
    if-eqz v8, :cond_3

    :try_start_5
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 246
    .end local v8    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_4
    move-exception v5

    .line 247
    .restart local v5    # "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 237
    :try_start_6
    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    nop

    .line 253
    .end local v5    # "t$iv$iv":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    move-object v11, v4

    .line 241
    :goto_5
    nop

    .line 257
    .local v11, "result$iv$iv":Ljava/lang/Object;
    if-nez v7, :cond_4

    .line 259
    nop

    .line 238
    .end local v3    # "$i$f$use":I
    .end local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "result$iv$iv":Ljava/lang/Object;
    nop

    .end local v9    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    goto/16 :goto_c

    .line 257
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$i$f$use":I
    .restart local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    .restart local v11    # "result$iv$iv":Ljava/lang/Object;
    .restart local p0    # "$i$f$-read":I
    :cond_4
    throw v7
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 171
    .end local v3    # "$i$f$use":I
    .end local v7    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "result$iv$iv":Ljava/lang/Object;
    .end local p0    # "$i$f$-read":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v9    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception p0

    move-object v8, v9

    .line 172
    .end local v9    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .local v8, "$this":Landroidx/datastore/core/okio/OkioReadScope;
    iget-object p0, v8, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    iget-object v3, v8, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    invoke-virtual {p0, v3}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 176
    nop

    .line 177
    :try_start_7
    iget-object p0, v8, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    iget-object v3, v8, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    .line 260
    .local v3, "file$iv":Lokio/Path;
    .local p0, "this_$iv":Lokio/FileSystem;
    const/4 v5, 0x0

    .line 261
    .local v5, "$i$f$-read":I
    invoke-virtual {p0, v3}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v7, v6

    .end local v3    # "file$iv":Lokio/Path;
    .end local p0    # "this_$iv":Lokio/FileSystem;
    .local v7, "$this$use$iv$iv":Ljava/io/Closeable;
    const/4 p0, 0x0

    .line 262
    .local p0, "$i$f$use":I
    const/4 v6, 0x0

    .line 264
    .local v6, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 265
    :try_start_8
    move-object v3, v7

    check-cast v3, Lokio/BufferedSource;

    .local v3, "it$iv":Lokio/BufferedSource;
    const/4 v9, 0x0

    .line 266
    .local v9, "$i$a$-use-FileSystem$read$1$iv":I
    nop

    .local v3, "$this$readData_u24lambda_u241":Lokio/BufferedSource;
    const/4 v10, 0x0

    .line 177
    .local v10, "$i$a$--read-OkioReadScope$readData$3":I
    iget-object v11, v8, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    iput-object v8, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    invoke-interface {v11, v3, v0}, Landroidx/datastore/core/okio/OkioSerializer;->readFrom(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .end local v3    # "$this$readData_u24lambda_u241":Lokio/BufferedSource;
    if-ne v4, v2, :cond_5

    .line 166
    return-object v2

    .line 177
    :cond_5
    move v2, p0

    move p0, v5

    move v3, v9

    move v5, v10

    .end local v9    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v10    # "$i$a$--read-OkioReadScope$readData$3":I
    .restart local v2    # "$i$f$use":I
    .local v3, "$i$a$-use-FileSystem$read$1$iv":I
    .local v5, "$i$a$--read-OkioReadScope$readData$3":I
    .local p0, "$i$f$-read":I
    :goto_6
    nop

    .line 266
    .end local v3    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v5    # "$i$a$--read-OkioReadScope$readData$3":I
    nop

    .line 265
    nop

    .line 267
    nop

    .line 268
    if-eqz v7, :cond_6

    :try_start_9
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    .line 269
    .end local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_5
    move-exception v3

    .line 270
    .local v3, "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 271
    move-object v6, v3

    .restart local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 276
    .end local v3    # "t$iv$iv":Ljava/lang/Throwable;
    :cond_6
    :goto_7
    goto :goto_9

    .line 277
    .end local v2    # "$i$f$use":I
    .local v5, "$i$f$-read":I
    .restart local v7    # "$this$use$iv$iv":Ljava/io/Closeable;
    .local p0, "$i$f$use":I
    :catchall_6
    move-exception v3

    move v2, p0

    move p0, v5

    .line 278
    .end local v5    # "$i$f$-read":I
    .restart local v2    # "$i$f$use":I
    .restart local v3    # "t$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$-read":I
    :goto_8
    move-object v6, v3

    .line 279
    nop

    .line 267
    .end local v3    # "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 268
    if-eqz v7, :cond_7

    :try_start_a
    invoke-interface {v7}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_7

    .line 269
    .end local v7    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_7
    move-exception v3

    .line 270
    .restart local v3    # "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 260
    :try_start_b
    invoke-static {v6, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 268
    .end local v3    # "t$iv$iv":Ljava/lang/Throwable;
    :cond_7
    goto :goto_7

    .line 264
    :goto_9
    nop

    .line 280
    .local v4, "result$iv$iv":Ljava/lang/Object;
    if-nez v6, :cond_8

    .line 282
    nop

    .line 261
    .end local v2    # "$i$f$use":I
    .end local v4    # "result$iv$iv":Ljava/lang/Object;
    .end local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 184
    .end local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    move-object v11, v4

    goto :goto_b

    .line 280
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$f$use":I
    .restart local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$-read":I
    :cond_8
    throw v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 178
    .end local v2    # "$i$f$use":I
    .end local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$-read":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_1
    move-exception p0

    .line 179
    .local p0, "e":Ljava/lang/Exception;
    instance-of v2, p0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_9

    .line 181
    iget-object v2, v8, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    invoke-virtual {v2}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .end local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    nop

    .line 180
    .end local p0    # "e":Ljava/lang/Exception;
    invoke-static {v2, p0}, Landroidx/datastore/core/DirectBootExceptionUtilKt;->wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    goto :goto_a

    .line 184
    .restart local p0    # "e":Ljava/lang/Exception;
    :cond_9
    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    move-object p0, v2

    .end local p0    # "e":Ljava/lang/Exception;
    :goto_a
    throw p0

    .line 188
    .restart local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    :cond_a
    iget-object p0, v8, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    invoke-interface {p0}, Landroidx/datastore/core/okio/OkioSerializer;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    .end local v8    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    :goto_b
    nop

    .line 169
    :goto_c
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final checkClose()V
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    invoke-virtual {v0}, Landroidx/datastore/core/okio/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "$i$a$-check-OkioReadScope$checkClose$1":I
    nop

    .end local v0    # "$i$a$-check-OkioReadScope$checkClose$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This scope has already been closed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 194
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;->set(Z)V

    .line 195
    return-void
.end method

.method protected final getFileSystem()Lokio/FileSystem;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    return-object v0
.end method

.method protected final getPath()Lokio/Path;
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    return-object v0
.end method

.method protected final getSerializer()Landroidx/datastore/core/okio/OkioSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    return-object v0
.end method

.method public readData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/datastore/core/okio/OkioReadScope;->readData$suspendImpl(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
