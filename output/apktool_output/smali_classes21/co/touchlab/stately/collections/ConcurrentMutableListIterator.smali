.class public final Lco/touchlab/stately/collections/ConcurrentMutableListIterator;
.super Lco/touchlab/stately/collections/ConcurrentMutableIterator;
.source "ConcurrentMutableMap.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lco/touchlab/stately/collections/ConcurrentMutableIterator<",
        "TE;>;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentMutableMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentMutableMap.kt\nco/touchlab/stately/collections/ConcurrentMutableListIterator\n+ 2 Synchronizable.kt\nco/touchlab/stately/concurrency/SynchronizableKt\n*L\n1#1,119:1\n5#2:120\n5#2:121\n5#2:122\n5#2:123\n5#2:124\n5#2:125\n*S KotlinDebug\n*F\n+ 1 ConcurrentMutableMap.kt\nco/touchlab/stately/collections/ConcurrentMutableListIterator\n*L\n72#1:120\n74#1:121\n76#1:122\n78#1:123\n81#1:124\n85#1:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010+\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001f\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\r\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u0015\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000cR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lco/touchlab/stately/collections/ConcurrentMutableListIterator;",
        "E",
        "Lco/touchlab/stately/collections/ConcurrentMutableIterator;",
        "",
        "root",
        "",
        "Lco/touchlab/stately/concurrency/Synchronizable;",
        "del",
        "(Ljava/lang/Object;Ljava/util/ListIterator;)V",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "hasPrevious",
        "",
        "nextIndex",
        "",
        "previous",
        "()Ljava/lang/Object;",
        "previousIndex",
        "set",
        "stately-concurrent-collections"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final del:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final root:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/ListIterator;)V
    .locals 1
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "del"    # Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "del"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v0, p2

    check-cast v0, Ljava/util/Iterator;

    invoke-direct {p0, p1, v0}, Lco/touchlab/stately/collections/ConcurrentMutableIterator;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    .line 67
    iput-object p1, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->del:Ljava/util/ListIterator;

    .line 66
    return-void
.end method

.method public static final synthetic access$getDel$p(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;)Ljava/util/ListIterator;
    .locals 1
    .param p0, "$this"    # Lco/touchlab/stately/collections/ConcurrentMutableListIterator;

    .line 66
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->del:Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$add$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$add$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 124
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 82
    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    return-void

    .line 124
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public hasPrevious()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$hasPrevious$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$hasPrevious$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    return v0

    .line 120
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public nextIndex()I
    .locals 4

    .line 74
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$nextIndex$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$nextIndex$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 121
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 74
    return v0

    .line 121
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$previous$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$previous$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 76
    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    return-object v3

    .line 122
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public previousIndex()I
    .locals 4

    .line 78
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$previousIndex$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$previousIndex$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 123
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 78
    return v0

    .line 123
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableListIterator;->root:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$set$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableListIterator$set$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableListIterator;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 86
    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    return-void

    .line 125
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method
