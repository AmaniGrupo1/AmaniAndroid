.class public interface abstract Landroidx/datastore/core/StorageConnection;
.super Ljava/lang/Object;
.source "StorageConnection.kt"

# interfaces
.implements Landroidx/datastore/core/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/Closeable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002JX\u0010\u0003\u001a\u0002H\u0004\"\u0004\u0008\u0001\u0010\u00042B\u0010\u0005\u001a>\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0006\u00a2\u0006\u0002\u0008\u000eH\u00a6@\u00a2\u0006\u0002\u0010\u000fJ=\u0010\u0010\u001a\u00020\u00112-\u0010\u0005\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012\u00a2\u0006\u0002\u0008\u000eH\u00a6@\u00a2\u0006\u0002\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0019\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/datastore/core/StorageConnection;",
        "T",
        "Landroidx/datastore/core/Closeable;",
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
        "",
        "Lkotlin/Function2;",
        "Landroidx/datastore/core/WriteScope;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coordinator",
        "Landroidx/datastore/core/InterProcessCoordinator;",
        "getCoordinator",
        "()Landroidx/datastore/core/InterProcessCoordinator;",
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


# virtual methods
.method public abstract getCoordinator()Landroidx/datastore/core/InterProcessCoordinator;
.end method

.method public abstract readScope(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract writeScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
