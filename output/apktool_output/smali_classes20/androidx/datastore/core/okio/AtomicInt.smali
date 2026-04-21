.class public final Landroidx/datastore/core/okio/AtomicInt;
.super Ljava/lang/Object;
.source "Atomic.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\u0003J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/datastore/core/okio/AtomicInt;",
        "",
        "initialValue",
        "",
        "<init>",
        "(I)V",
        "delegate",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getAndIncrement",
        "decrementAndGet",
        "get",
        "incrementAndGet",
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
.field private final delegate:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialValue"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/datastore/core/okio/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    return-void
.end method


# virtual methods
.method public final decrementAndGet()I
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public final get()I
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getAndIncrement()I
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final incrementAndGet()I
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
