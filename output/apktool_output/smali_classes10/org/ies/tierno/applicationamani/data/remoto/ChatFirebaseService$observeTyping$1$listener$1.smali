.class public final Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1;
.super Ljava/lang/Object;
.source "ChatFirebaseService.kt"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFirebaseService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1807#2,3:306\n*S KotlinDebug\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1\n*L\n200#1:306,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "org/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1",
        "Lcom/google/firebase/database/ValueEventListener;",
        "onDataChange",
        "",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
        "onCancelled",
        "error",
        "Lcom/google/firebase/database/DatabaseError;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .param p1, "$$this$callbackFlow"    # Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/google/firebase/database/DatabaseError;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/ProducerScope;->close(Ljava/lang/Throwable;)Z

    .line 208
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 10
    .param p1, "snapshot"    # Lcom/google/firebase/database/DataSnapshot;

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    const-string v1, "getChildren(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$any\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 306
    .local v1, "$i$f$any\\1\\200":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element\\1":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/google/firebase/database/DataSnapshot;

    .local v5, "child\\2":Lcom/google/firebase/database/DataSnapshot;
    const/4 v6, 0x0

    .line 201
    .local v6, "$i$a$-any-ChatFirebaseService$observeTyping$1$listener$1$onDataChange$hasTyping$1\\2\\307\\0":I
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 307
    .end local v5    # "child\\2":Lcom/google/firebase/database/DataSnapshot;
    .end local v6    # "$i$a$-any-ChatFirebaseService$observeTyping$1$listener$1$onDataChange$hasTyping$1\\2\\307\\0":I
    if-eqz v5, :cond_1

    move v3, v8

    goto :goto_0

    .line 308
    .end local v4    # "element\\1":Ljava/lang/Object;
    :cond_2
    nop

    .line 200
    .end local v0    # "$this$any\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any\\1\\200":I
    :goto_0
    nop

    .line 203
    .local v3, "hasTyping":Z
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method
