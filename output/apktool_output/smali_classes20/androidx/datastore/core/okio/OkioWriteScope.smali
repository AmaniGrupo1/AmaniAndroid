.class public final Landroidx/datastore/core/okio/OkioWriteScope;
.super Landroidx/datastore/core/okio/OkioReadScope;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/WriteScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/okio/OkioReadScope<",
        "TT;>;",
        "Landroidx/datastore/core/WriteScope<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,236:1\n66#2:237\n52#2,4:238\n66#2:242\n52#2,22:243\n60#2,10:265\n56#2,3:275\n71#2,3:278\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n*L\n212#1:237\n212#1:238,4\n213#1:242\n213#1:243,22\n212#1:265,10\n212#1:275,3\n212#1:278,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/datastore/core/okio/OkioWriteScope;",
        "T",
        "Landroidx/datastore/core/okio/OkioReadScope;",
        "Landroidx/datastore/core/WriteScope;",
        "fileSystem",
        "Lokio/FileSystem;",
        "path",
        "Lokio/Path;",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "<init>",
        "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V",
        "writeData",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V
    .locals 1
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

    .line 202
    nop

    .line 206
    nop

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/okio/OkioReadScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V

    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p2

    instance-of v0, v1, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    iget v2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;-><init>(Landroidx/datastore/core/okio/OkioWriteScope;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget v5, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

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
    move-object/from16 v5, p0

    .local v5, "this":Landroidx/datastore/core/okio/OkioWriteScope;
    const/4 v7, 0x0

    .local v7, "$i$f$use":I
    const/4 v8, 0x0

    .local v8, "$i$a$-use-OkioWriteScope$writeData$2":I
    const/4 v9, 0x0

    .local v9, "$i$f$use":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-OkioWriteScope$writeData$2$1":I
    const/4 v10, 0x0

    .local v10, "thrown$iv":Ljava/lang/Throwable;
    iget-object v11, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/io/Closeable;

    .local v11, "$this$use$iv":Ljava/io/Closeable;
    iget-object v12, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lokio/FileHandle;

    .local v12, "handle":Lokio/FileHandle;
    const/4 v13, 0x0

    .local v13, "thrown$iv":Ljava/lang/Throwable;
    iget-object v14, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/io/Closeable;

    .local v14, "$this$use$iv":Ljava/io/Closeable;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 247
    .end local v0    # "$i$a$-use-OkioWriteScope$writeData$2$1":I
    .end local v12    # "handle":Lokio/FileHandle;
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 208
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    .end local v7    # "$i$f$use":I
    .end local v8    # "$i$a$-use-OkioWriteScope$writeData$2":I
    .end local v9    # "$i$f$use":I
    .end local v10    # "thrown$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$use$iv":Ljava/io/Closeable;
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    .end local v14    # "$this$use$iv":Ljava/io/Closeable;
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    move-object/from16 v7, p1

    .line 209
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioWriteScope;->checkClose()V

    .line 210
    nop

    .line 211
    :try_start_1
    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioWriteScope;->getFileSystem()Lokio/FileSystem;

    move-result-object v8

    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioWriteScope;->getPath()Lokio/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokio/FileSystem;->openReadWrite(Lokio/Path;)Lokio/FileHandle;

    move-result-object v8

    .line 212
    .local v8, "fileHandle":Lokio/FileHandle;
    move-object v9, v8

    check-cast v9, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v9

    .line 237
    .end local v8    # "fileHandle":Lokio/FileHandle;
    .restart local v14    # "$this$use$iv":Ljava/io/Closeable;
    const/4 v8, 0x0

    .line 238
    .local v8, "$i$f$use":I
    const/4 v13, 0x0

    .line 240
    .restart local v13    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 241
    :try_start_2
    move-object v9, v14

    check-cast v9, Lokio/FileHandle;

    move-object v12, v9

    .restart local v12    # "handle":Lokio/FileHandle;
    const/4 v9, 0x0

    .line 213
    .local v9, "$i$a$-use-OkioWriteScope$writeData$2":I
    const-wide/16 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v12, v10, v11, v15, v6}, Lokio/FileHandle;->sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v10

    check-cast v10, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v11, v10

    .line 242
    .restart local v11    # "$this$use$iv":Ljava/io/Closeable;
    const/4 v10, 0x0

    .line 243
    .local v10, "$i$f$use":I
    const/16 v16, 0x0

    .line 245
    .local v16, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 246
    :try_start_3
    move-object/from16 v17, v11

    check-cast v17, Lokio/BufferedSink;

    move-object/from16 p1, v17

    .local p1, "sink":Lokio/BufferedSink;
    const/16 v17, 0x0

    .line 214
    .local v17, "$i$a$-use-OkioWriteScope$writeData$2$1":I
    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioWriteScope;->getSerializer()Landroidx/datastore/core/okio/OkioSerializer;

    move-result-object v6

    iput-object v14, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$0:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$2:Ljava/lang/Object;

    iput v15, v3, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    move-object/from16 v15, p1

    .end local p1    # "sink":Lokio/BufferedSink;
    .local v15, "sink":Lokio/BufferedSink;
    invoke-interface {v6, v7, v15, v3}, Landroidx/datastore/core/okio/OkioSerializer;->writeTo(Ljava/lang/Object;Lokio/BufferedSink;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "value":Ljava/lang/Object;
    .end local v15    # "sink":Lokio/BufferedSink;
    if-ne v6, v0, :cond_1

    .line 208
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    return-object v0

    .line 214
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    :cond_1
    move v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v10, v16

    move/from16 v0, v17

    .line 215
    .end local v16    # "thrown$iv":Ljava/lang/Throwable;
    .end local v17    # "$i$a$-use-OkioWriteScope$writeData$2$1":I
    .restart local v0    # "$i$a$-use-OkioWriteScope$writeData$2$1":I
    .local v7, "$i$f$use":I
    .local v8, "$i$a$-use-OkioWriteScope$writeData$2":I
    .local v9, "$i$f$use":I
    .local v10, "thrown$iv":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    invoke-virtual {v12}, Lokio/FileHandle;->flush()V

    .line 216
    .end local v12    # "handle":Lokio/FileHandle;
    nop

    .end local v0    # "$i$a$-use-OkioWriteScope$writeData$2$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    nop

    .line 251
    nop

    .line 252
    if-eqz v11, :cond_2

    :try_start_5
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 253
    .end local v10    # "thrown$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_1
    move-exception v0

    .line 254
    .local v0, "t$iv":Ljava/lang/Throwable;
    nop

    .line 255
    move-object v10, v0

    .restart local v10    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 260
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    goto :goto_5

    .line 247
    .end local v7    # "$i$f$use":I
    .local v8, "$i$f$use":I
    .local v9, "$i$a$-use-OkioWriteScope$writeData$2":I
    .local v10, "$i$f$use":I
    .restart local v11    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v16    # "thrown$iv":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    move v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v10, v16

    .line 248
    .end local v16    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    .restart local v7    # "$i$f$use":I
    .local v8, "$i$a$-use-OkioWriteScope$writeData$2":I
    .local v9, "$i$f$use":I
    .local v10, "thrown$iv":Ljava/lang/Throwable;
    :goto_3
    move-object v10, v0

    .line 249
    nop

    .line 251
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 252
    if-eqz v11, :cond_3

    :try_start_6
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 253
    .end local v11    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_3
    move-exception v0

    .line 254
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 242
    :try_start_7
    invoke-static {v10, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 275
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-use-OkioWriteScope$writeData$2":I
    .end local v9    # "$i$f$use":I
    .end local v10    # "thrown$iv":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    move v8, v7

    goto :goto_7

    .line 260
    .restart local v8    # "$i$a$-use-OkioWriteScope$writeData$2":I
    .restart local v9    # "$i$f$use":I
    .restart local v10    # "thrown$iv":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    const/4 v6, 0x0

    .line 245
    :goto_5
    nop

    .line 262
    .local v6, "result$iv":Ljava/lang/Object;
    if-nez v10, :cond_5

    .line 264
    nop

    .line 217
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$use":I
    .end local v10    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .end local v8    # "$i$a$-use-OkioWriteScope$writeData$2":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 241
    nop

    .line 265
    nop

    .line 266
    if-eqz v14, :cond_4

    :try_start_8
    invoke-interface {v14}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    .line 267
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    .end local v14    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_5
    move-exception v0

    .line 268
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 269
    move-object v13, v0

    .restart local v13    # "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 274
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :cond_4
    :goto_6
    goto :goto_9

    .line 262
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    .end local v7    # "$i$f$use":I
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v6    # "result$iv":Ljava/lang/Object;
    .restart local v8    # "$i$a$-use-OkioWriteScope$writeData$2":I
    .restart local v9    # "$i$f$use":I
    .restart local v10    # "thrown$iv":Ljava/lang/Throwable;
    :cond_5
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 275
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$use":I
    .end local v10    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    .local v8, "$i$f$use":I
    .restart local v13    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v14    # "$this$use$iv":Ljava/io/Closeable;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_6
    move-exception v0

    .line 276
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_7
    move-object v13, v0

    .line 277
    nop

    .line 265
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 266
    if-eqz v14, :cond_6

    :try_start_a
    invoke-interface {v14}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_8

    .line 267
    .end local v14    # "$this$use$iv":Ljava/io/Closeable;
    :catchall_7
    move-exception v0

    .line 268
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    nop

    .line 237
    :try_start_b
    invoke-static {v13, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    nop

    .line 274
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :cond_6
    :goto_8
    move v7, v8

    const/4 v6, 0x0

    .line 240
    .end local v8    # "$i$f$use":I
    .restart local v7    # "$i$f$use":I
    :goto_9
    nop

    .line 278
    .restart local v6    # "result$iv":Ljava/lang/Object;
    if-nez v13, :cond_7

    .line 280
    nop

    .line 226
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$use":I
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 278
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v6    # "result$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$use":I
    .restart local v13    # "thrown$iv":Ljava/lang/Throwable;
    :cond_7
    :try_start_c
    throw v13
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 218
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$use":I
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    instance-of v6, v0, Ljava/io/FileNotFoundException;

    if-eqz v6, :cond_8

    .line 221
    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioWriteScope;->getPath()Lokio/Path;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .end local v5    # "this":Landroidx/datastore/core/okio/OkioWriteScope;
    nop

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v5, v0}, Landroidx/datastore/core/DirectBootExceptionUtilKt;->wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_a

    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    move-object v0, v5

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
