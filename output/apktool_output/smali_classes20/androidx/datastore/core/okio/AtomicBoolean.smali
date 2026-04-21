.class public final Landroidx/datastore/core/okio/AtomicBoolean;
.super Ljava/lang/Object;
.source "Atomic.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/datastore/core/okio/AtomicBoolean;",
        "",
        "initialValue",
        "",
        "<init>",
        "(Z)V",
        "delegate",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "get",
        "set",
        "",
        "value",
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
.field private final delegate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "initialValue"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/core/okio/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final set(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 44
    iget-object v0, p0, Landroidx/datastore/core/okio/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    return-void
.end method
