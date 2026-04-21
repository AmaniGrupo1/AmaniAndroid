.class final Landroidx/datastore/core/FileReadScope$readData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileStorage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/FileReadScope;->readData$suspendImpl(Landroidx/datastore/core/FileReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileReadScope$readData$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n1#2:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "T"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.FileReadScope$readData$2"
    f = "FileStorage.kt"
    i = {}
    l = {
        0xa2,
        0xaa
    }
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/datastore/core/FileReadScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/FileReadScope<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/core/FileReadScope;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/FileReadScope<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/FileReadScope$readData$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-direct {v0, v1, p1}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Landroidx/datastore/core/FileReadScope;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/FileReadScope$readData$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 160
    iget v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$a$-use-FileReadScope$readData$2$2":I
    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    move-object v0, p1

    goto/16 :goto_3

    .line 170
    .end local v0    # "$i$a$-use-FileReadScope$readData$2$2":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 160
    :pswitch_1
    const/4 v1, 0x0

    .local v1, "$i$a$-use-FileReadScope$readData$2$1":I
    iget-object v3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v1

    move-object v1, p1

    goto :goto_0

    .line 162
    .end local v1    # "$i$a$-use-FileReadScope$readData$2$1":I
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 160
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 162
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-virtual {v3}, Landroidx/datastore/core/FileReadScope;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v4, v3

    check-cast v4, Ljava/io/FileInputStream;

    .line 233
    .local v4, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 162
    .local v5, "$i$a$-use-FileReadScope$readData$2$1":I
    invoke-virtual {v1}, Landroidx/datastore/core/FileReadScope;->getSerializer()Landroidx/datastore/core/Serializer;

    move-result-object v1

    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    iput-object v3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p0, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    invoke-interface {v1, v6, p0}, Landroidx/datastore/core/Serializer;->readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "stream":Ljava/io/FileInputStream;
    if-ne v1, v0, :cond_0

    .line 160
    return-object v0

    .line 162
    :cond_0
    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_0
    nop

    .end local v5    # "$i$a$-use-FileReadScope$readData$2$1":I
    :try_start_4
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 163
    :catch_0
    move-exception p1

    move-object p1, v1

    goto :goto_2

    .line 162
    .end local v1    # "$result":Ljava/lang/Object;
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v4

    :try_start_6
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 163
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 164
    :goto_2
    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-virtual {v1}, Landroidx/datastore/core/FileReadScope;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    nop

    .line 170
    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-virtual {v3}, Landroidx/datastore/core/FileReadScope;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    iget-object v3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    move-object v4, v1

    check-cast v4, Ljava/io/FileInputStream;

    .line 233
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 170
    .local v5, "$i$a$-use-FileReadScope$readData$2$2":I
    invoke-virtual {v3}, Landroidx/datastore/core/FileReadScope;->getSerializer()Landroidx/datastore/core/Serializer;

    move-result-object v3

    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    iput-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p0, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    invoke-interface {v3, v6, p0}, Landroidx/datastore/core/Serializer;->readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v4    # "stream":Ljava/io/FileInputStream;
    if-ne v3, v0, :cond_1

    .line 160
    return-object v0

    .line 170
    :cond_1
    move-object v0, p1

    move-object p1, v3

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_3
    nop

    .end local v5    # "$i$a$-use-FileReadScope$readData$2$2":I
    :try_start_9
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 178
    move-object v1, v0

    goto :goto_7

    .line 171
    :catch_2
    move-exception p1

    goto :goto_5

    .line 170
    .end local v0    # "$result":Ljava/lang/Object;
    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v2

    :try_start_b
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "$result":Ljava/lang/Object;
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 171
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 172
    .restart local v0    # "$result":Ljava/lang/Object;
    .local p1, "e":Ljava/lang/Exception;
    :goto_5
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-virtual {v1}, Landroidx/datastore/core/FileReadScope;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 175
    nop

    .line 173
    .end local p1    # "e":Ljava/lang/Exception;
    invoke-static {v1, p1}, Landroidx/datastore/core/DirectBootExceptionUtilKt;->wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_6

    .line 178
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    move-object p1, v1

    .end local p1    # "e":Ljava/lang/Exception;
    :goto_6
    throw p1

    .line 182
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Landroidx/datastore/core/FileReadScope;

    invoke-virtual {v0}, Landroidx/datastore/core/FileReadScope;->getSerializer()Landroidx/datastore/core/Serializer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/Serializer;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p1

    move-object p1, v0

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_7
    nop

    .line 184
    :goto_8
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
