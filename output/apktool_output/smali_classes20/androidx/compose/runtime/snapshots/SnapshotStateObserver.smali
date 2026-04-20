.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 6 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap\n+ 7 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 8 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 9 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,618:1\n183#1:627\n184#1:637\n187#1:743\n188#1:760\n187#1:761\n188#1:778\n183#1:779\n184#1:789\n1107#2:619\n1085#2,2:620\n26#3,4:622\n33#3:626\n33#3:628\n33#3:638\n33#3:647\n33#3:663\n33#3:744\n33#3:762\n33#3:780\n33#3:799\n33#3:808\n424#4,8:629\n424#4,8:639\n742#4,15:648\n44#4:734\n742#4,15:745\n742#4,15:763\n424#4,8:781\n348#4,7:790\n643#4,2:797\n424#4,8:800\n34#5,4:664\n465#6,11:668\n476#6:683\n477#6:732\n479#6,6:737\n390#7,4:679\n395#7:733\n396#7,2:735\n496#8,7:684\n556#8:691\n504#8,34:692\n539#8:731\n149#9,5:726\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n71#1:627\n71#1:637\n282#1:743\n282#1:760\n293#1:761\n293#1:778\n320#1:779\n320#1:789\n174#1:619\n174#1:620,2\n175#1:622,4\n65#1:626\n71#1:628\n183#1:638\n187#1:647\n226#1:663\n282#1:744\n293#1:762\n320#1:780\n85#1:799\n165#1:808\n71#1:629,8\n183#1:639,8\n187#1:648,15\n248#1:734\n282#1:745,15\n293#1:763,15\n320#1:781,8\n331#1:790,7\n334#1:797,2\n89#1:800,8\n233#1:664,4\n248#1:668,11\n248#1:683\n248#1:732\n248#1:737,6\n248#1:679,4\n248#1:733\n248#1:735,2\n248#1:684,7\n248#1:691\n248#1:692,34\n248#1:731\n248#1:726,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\u0008\u0007\u0018\u00002\u00020\u0001:\u0001<B0\u0012\'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J\u0008\u0010\u0016\u001a\u00020\u0005H\u0002J\u0016\u0010\u0017\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0013H\u0002J\u0010\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013H\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u001d\u0010#\u001a\u00020\u00052\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\u0008J\u001d\u0010%\u001a\u00020\u00052\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00100\u0003H\u0082\u0008J?\u0010,\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010-*\u00020\u00012\u0006\u0010.\u001a\u0002H-2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u00100J\u0016\u00101\u001a\u00020\u00052\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u000e\u00102\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\u0001J)\u00103\u001a\u00020\u00052!\u00104\u001a\u001d\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(.\u0012\u0004\u0012\u00020\u00100\u0003J\u0006\u00105\u001a\u00020\u0005J\u0006\u00106\u001a\u00020\u0005J\u001e\u00107\u001a\u00020\u00052\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u00109\u001a\u00020\u0014H\u0007J\u0006\u00102\u001a\u00020\u0005J&\u0010:\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010-*\u00020\u00012\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u00020\u00050\u0003H\u0002R/\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0011\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u00060\u0001j\u0002`!X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "",
        "onChangedExecutor",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "pendingChanges",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroidx/compose/runtime/internal/AtomicReference;",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "sendingNotifications",
        "",
        "applyObserver",
        "Lkotlin/Function2;",
        "",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "drainChanges",
        "sendNotifications",
        "addChanges",
        "set",
        "removeChanges",
        "report",
        "",
        "readObserver",
        "observedScopeMaps",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
        "observedScopeMapsLock",
        "Landroidx/compose/runtime/platform/SynchronizedObject;",
        "Ljava/lang/Object;",
        "forEachScopeMap",
        "block",
        "removeScopeMapIf",
        "applyUnsubscribe",
        "Landroidx/compose/runtime/snapshots/ObserverHandle;",
        "isPaused",
        "currentMap",
        "currentMapThreadId",
        "",
        "observeReads",
        "T",
        "scope",
        "onValueChangedForScope",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "withNoObservations",
        "clear",
        "clearIf",
        "predicate",
        "start",
        "stop",
        "notifyChanges",
        "changes",
        "snapshot",
        "ensureMap",
        "onChanged",
        "ObservedScopeMap",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final applyObserver:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

.field private currentMapThreadId:J

.field private isPaused:Z

.field private final observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            ">;"
        }
    .end annotation
.end field

.field private final observedScopeMapsLock:Ljava/lang/Object;

.field private final onChangedExecutor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final readObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private sendingNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "onChangedExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 163
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 174
    const/4 v0, 0x0

    .line 619
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 620
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 621
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 619
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 174
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 175
    nop

    .line 622
    nop

    .line 625
    const/4 v0, 0x0

    .line 622
    .local v0, "ref$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$makeSynchronizedObject":I
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 175
    .end local v0    # "ref$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$makeSynchronizedObject":I
    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 45
    return-void
.end method

.method private final addChanges(Ljava/util/Set;)V
    .locals 3
    .param p1, "set"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    nop

    :cond_0
    nop

    .line 115
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "old":Ljava/lang/Object;
    nop

    .line 118
    if-nez v0, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 119
    :cond_1
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 120
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 117
    :goto_0
    nop

    .line 116
    nop

    .line 123
    .local v1, "new":Ljava/util/Collection;
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    .end local v0    # "old":Ljava/lang/Object;
    .end local v1    # "new":Ljava/util/Collection;
    return-void

    .line 121
    .restart local v0    # "old":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method static final applyObserver$lambda$0(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)Lkotlin/Unit;
    .locals 0
    .param p0, "this$0"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .param p1, "applied"    # Ljava/util/Set;

    .line 50
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->addChanges(Ljava/util/Set;)V

    .line 51
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendNotifications()V

    .line 52
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p2
.end method

.method private final drainChanges()Z
    .locals 17

    .line 65
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 626
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 65
    .local v0, "$i$a$-synchronized-SnapshotStateObserver$drainChanges$1":I
    :try_start_0
    iget-boolean v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 626
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$drainChanges$1":I
    monitor-exit v2

    .line 65
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    const/4 v0, 0x0

    if-eqz v4, :cond_0

    return v0

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "hasValues":Z
    :goto_0
    nop

    .line 70
    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->removeChanges()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 71
    .local v3, "notifications":Ljava/util/Set;
    :cond_1
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v5, 0x0

    .line 627
    .local v5, "$i$f$forEachScopeMap":I
    iget-object v6, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v6, "lock$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 628
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v8, 0x0

    .line 627
    .local v8, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    :try_start_1
    iget-object v9, v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v9, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 629
    .local v10, "$i$f$forEach":I
    const/4 v11, 0x0

    .line 630
    .local v11, "i$iv$iv":I
    iget-object v12, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 631
    .local v12, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    .line 632
    .local v13, "size$iv$iv":I
    :goto_1
    if-ge v11, v13, :cond_4

    .line 633
    aget-object v14, v12, v11

    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v14, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v15, 0x0

    .line 72
    .local v15, "$i$a$-forEachScopeMap-SnapshotStateObserver$drainChanges$2":I
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    move-result v16

    if-nez v16, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v16, 0x1

    :goto_3
    move/from16 v2, v16

    .line 73
    nop

    .line 633
    .end local v14    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v15    # "$i$a$-forEachScopeMap-SnapshotStateObserver$drainChanges$2":I
    nop

    .line 634
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 636
    :cond_4
    nop

    .line 627
    .end local v9    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$forEach":I
    .end local v11    # "i$iv$iv":I
    .end local v12    # "content$iv$iv":[Ljava/lang/Object;
    .end local v13    # "size$iv$iv":I
    nop

    .end local v8    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    monitor-exit v6

    .line 637
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    nop

    .end local v3    # "notifications":Ljava/util/Set;
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v5    # "$i$f$forEachScopeMap":I
    goto :goto_0

    .line 628
    .restart local v3    # "notifications":Ljava/util/Set;
    .restart local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v5    # "$i$f$forEachScopeMap":I
    .restart local v6    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 626
    .end local v4    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v5    # "$i$f$forEachScopeMap":I
    .end local v6    # "lock$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    .local v2, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private final ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .locals 10
    .param p1, "onChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 790
    .local v1, "$i$f$firstOrNull":I
    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 791
    .local v2, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    .line 792
    .local v3, "size$iv":I
    const/4 v4, 0x0

    .local v4, "i$iv":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    .line 793
    aget-object v6, v2, v4

    .line 794
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v7, "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v8, 0x0

    .line 331
    .local v8, "$i$a$-firstOrNull-SnapshotStateObserver$ensureMap$scopeMap$1":I
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getOnChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move v9, v5

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 794
    .end local v7    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v8    # "$i$a$-firstOrNull-SnapshotStateObserver$ensureMap$scopeMap$1":I
    :goto_1
    if-eqz v9, :cond_1

    goto :goto_2

    .line 792
    .end local v6    # "item$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 796
    .end local v4    # "i$iv":I
    :cond_2
    const/4 v6, 0x0

    .line 331
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$firstOrNull":I
    .end local v2    # "content$iv":[Ljava/lang/Object;
    .end local v3    # "size$iv":I
    :goto_2
    move-object v0, v6

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 332
    .local v0, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    if-nez v0, :cond_3

    .line 333
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 334
    .local v1, "map":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v3, v1

    .local v3, "element$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 797
    .local v4, "$i$f$plusAssign":I
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 798
    nop

    .line 335
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$plusAssign":I
    return-object v1

    .line 337
    .end local v1    # "map":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    :cond_3
    return-object v0
.end method

.method private final forEachScopeMap(Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$forEachScopeMap":I
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 638
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 183
    .local v3, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 639
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    .line 640
    .local v6, "i$iv":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 641
    .local v7, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 642
    .local v8, "size$iv":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 643
    aget-object v9, v7, v6

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 646
    :cond_0
    nop

    .line 183
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    .end local v8    # "size$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit v1

    .line 184
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    return-void

    .line 638
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method static final readObserver$lambda$0(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .param p1, "state"    # Ljava/lang/Object;

    .line 164
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 808
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-synchronized-SnapshotStateObserver$readObserver$1$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;)V

    .end local v2    # "$i$a$-synchronized-SnapshotStateObserver$readObserver$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 167
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final removeChanges()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    nop

    :cond_0
    nop

    .line 134
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "old":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 136
    .local v1, "result":Ljava/util/Set;
    const/4 v2, 0x0

    .line 137
    .local v2, "new":Ljava/lang/Object;
    nop

    .line 138
    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 139
    :cond_1
    instance-of v4, v0, Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .line 141
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    :cond_2
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_5

    .line 144
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/Set;

    .line 146
    nop

    .line 147
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 148
    :cond_3
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_4
    nop

    .line 145
    :goto_0
    move-object v2, v3

    .line 154
    :goto_1
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    return-object v1

    .line 152
    :cond_5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->report()Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private final removeScopeMapIf(Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    .local v0, "$i$f$removeScopeMapIf":I
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 647
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 187
    .local v3, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 648
    .local v5, "$i$f$removeIf":I
    const/4 v6, 0x0

    .line 649
    .local v6, "gap$iv":I
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 650
    .local v7, "size$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 651
    iget-object v9, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v9, v9, v8

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 652
    add-int/lit8 v6, v6, 0x1

    .line 653
    goto :goto_1

    .line 656
    :cond_0
    if-lez v6, :cond_1

    .line 657
    iget-object v9, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v10, v8, v6

    iget-object v11, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v11, v11, v8

    aput-object v11, v9, v10

    .line 650
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 660
    .end local v8    # "i$iv":I
    :cond_2
    iget-object v8, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v9, 0x0

    sub-int v10, v7, v6

    invoke-static {v8, v9, v10, v7}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 661
    sub-int v8, v7, v6

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 662
    nop

    .line 187
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$removeIf":I
    .end local v6    # "gap$iv":I
    .end local v7    # "size$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit v1

    .line 188
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    return-void

    .line 647
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method private final report()Ljava/lang/Void;
    .locals 1

    .line 160
    const-string v0, "Unexpected notification"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final sendNotifications()V
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method static final sendNotifications$lambda$0(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lkotlin/Unit;
    .locals 11
    .param p0, "this$0"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 84
    nop

    :cond_0
    nop

    .line 85
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 799
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 86
    .local v2, "$i$a$-synchronized-SnapshotStateObserver$sendNotifications$1$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    if-nez v3, :cond_2

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    nop

    .line 89
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 800
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    .line 801
    .local v6, "i$iv":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 802
    .local v7, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 803
    .local v8, "size$iv":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 804
    aget-object v9, v7, v6

    check-cast v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v9, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v10, 0x0

    .line 90
    .local v10, "$i$a$-forEach-SnapshotStateObserver$sendNotifications$1$1$1":I
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->notifyInvalidatedScopes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    nop

    .line 804
    .end local v9    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v10    # "$i$a$-forEach-SnapshotStateObserver$sendNotifications$1$1$1":I
    nop

    .line 805
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 807
    :cond_1
    nop

    .line 93
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    .end local v8    # "size$iv":I
    :try_start_2
    iput-boolean v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 94
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v4

    iput-boolean v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    .end local p0    # "this$0":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    throw v4

    .line 96
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    .restart local p0    # "this$0":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    :cond_2
    :goto_1
    nop

    .end local v2    # "$i$a$-synchronized-SnapshotStateObserver$sendNotifications$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 799
    monitor-exit v0

    .line 99
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 799
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_1
    move-exception v2

    monitor-exit v0

    throw v2
.end method


# virtual methods
.method public final clear()V
    .locals 12

    .line 320
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 779
    .local v1, "$i$f$forEachScopeMap":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v2, "lock$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 780
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 779
    .local v4, "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    :try_start_0
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 781
    .local v6, "$i$f$forEach":I
    const/4 v7, 0x0

    .line 782
    .local v7, "i$iv$iv":I
    iget-object v8, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 783
    .local v8, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    .line 784
    .local v9, "size$iv$iv":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 785
    aget-object v10, v8, v7

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v10, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v11, 0x0

    .line 320
    .local v11, "$i$a$-forEachScopeMap-SnapshotStateObserver$clear$2":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clear()V

    .line 785
    .end local v10    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v11    # "$i$a$-forEachScopeMap-SnapshotStateObserver$clear$2":I
    nop

    .line 786
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 788
    :cond_0
    nop

    .line 779
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "i$iv$iv":I
    .end local v8    # "content$iv$iv":[Ljava/lang/Object;
    .end local v9    # "size$iv$iv":I
    nop

    .end local v4    # "$i$a$-synchronized-SnapshotStateObserver$forEachScopeMap$1$iv":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit v2

    .line 789
    .end local v2    # "lock$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 321
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$forEachScopeMap":I
    return-void

    .line 780
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$forEachScopeMap":I
    .restart local v2    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public final clear(Ljava/lang/Object;)V
    .locals 13
    .param p1, "scope"    # Ljava/lang/Object;

    .line 282
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 743
    .local v1, "$i$f$removeScopeMapIf":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v2, "lock$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 744
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 743
    .local v4, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    :try_start_0
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 745
    .local v6, "$i$f$removeIf":I
    const/4 v7, 0x0

    .line 746
    .local v7, "gap$iv$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 747
    .local v8, "size$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 748
    iget-object v10, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v10, "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v11, 0x0

    .line 283
    .local v11, "$i$a$-removeScopeMapIf-SnapshotStateObserver$clear$1":I
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearScopeObservations(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v12

    .line 748
    .end local v10    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v11    # "$i$a$-removeScopeMapIf-SnapshotStateObserver$clear$1":I
    if-nez v12, :cond_0

    .line 749
    add-int/lit8 v7, v7, 0x1

    .line 750
    goto :goto_1

    .line 753
    :cond_0
    if-lez v7, :cond_1

    .line 754
    iget-object v10, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v11, v9, v7

    iget-object v12, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v12, v12, v9

    aput-object v12, v10, v11

    .line 747
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 757
    .end local v9    # "i$iv$iv":I
    :cond_2
    iget-object v9, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v10, 0x0

    sub-int v11, v8, v7

    invoke-static {v9, v10, v11, v8}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 758
    sub-int v9, v8, v7

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 759
    nop

    .line 743
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$removeIf":I
    .end local v7    # "gap$iv$iv":I
    .end local v8    # "size$iv$iv":I
    nop

    .end local v4    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    monitor-exit v2

    .line 760
    .end local v2    # "lock$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 286
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$removeScopeMapIf":I
    return-void

    .line 744
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$removeScopeMapIf":I
    .restart local v2    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public final clearIf(Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 293
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    const/4 v1, 0x0

    .line 761
    .local v1, "$i$f$removeScopeMapIf":I
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v2, "lock$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 762
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 761
    .local v4, "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    :try_start_0
    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 763
    .local v6, "$i$f$removeIf":I
    const/4 v7, 0x0

    .line 764
    .local v7, "gap$iv$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 765
    .local v8, "size$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 766
    iget-object v10, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .local v10, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    const/4 v11, 0x0

    .line 294
    .local v11, "$i$a$-removeScopeMapIf-SnapshotStateObserver$clearIf$1":I
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeScopeIf(Lkotlin/jvm/functions/Function1;)V

    .line 295
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->hasScopeObservations()Z

    move-result v12

    .line 766
    .end local v10    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v11    # "$i$a$-removeScopeMapIf-SnapshotStateObserver$clearIf$1":I
    if-nez v12, :cond_0

    .line 767
    add-int/lit8 v7, v7, 0x1

    .line 768
    goto :goto_1

    .line 771
    :cond_0
    if-lez v7, :cond_1

    .line 772
    iget-object v10, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v11, v9, v7

    iget-object v12, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v12, v12, v9

    aput-object v12, v10, v11

    .line 765
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 775
    .end local v9    # "i$iv$iv":I
    :cond_2
    iget-object v9, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v10, 0x0

    sub-int v11, v8, v7

    invoke-static {v9, v10, v11, v8}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 776
    sub-int v9, v8, v7

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/collection/MutableVector;->setSize(I)V

    .line 777
    nop

    .line 761
    .end local v5    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$removeIf":I
    .end local v7    # "gap$iv$iv":I
    .end local v8    # "size$iv$iv":I
    nop

    .end local v4    # "$i$a$-synchronized-SnapshotStateObserver$removeScopeMapIf$1$iv":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    monitor-exit v2

    .line 778
    .end local v2    # "lock$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 297
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .end local v1    # "$i$f$removeScopeMapIf":I
    return-void

    .line 762
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .restart local v1    # "$i$f$removeScopeMapIf":I
    .restart local v2    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public final notifyChanges(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1, "changes"    # Ljava/util/Set;
    .param p2, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public final observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 36
    .param p1, "scope"    # Ljava/lang/Object;
    .param p2, "onValueChangedForScope"    # Lkotlin/jvm/functions/Function1;
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 226
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 663
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 226
    .local v0, "$i$a$-synchronized-SnapshotStateObserver$observeReads$scopeMap$1":I
    move-object/from16 v4, p2

    :try_start_0
    invoke-direct {v1, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 663
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$scopeMap$1":I
    monitor-exit v2

    .line 226
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    nop

    .line 228
    .local v5, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 229
    .local v2, "oldPaused":Z
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 230
    .local v3, "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    iget-wide v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 232
    .local v6, "oldThreadId":J
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    .local v0, "value$iv":Z
    :goto_0
    const/4 v10, 0x0

    .line 664
    .local v10, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 665
    const/4 v11, 0x0

    .line 234
    .local v11, "$i$a$-requirePrecondition-SnapshotStateObserver$observeReads$1":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 235
    nop

    .line 234
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 235
    const-string v13, "), currentThread={id="

    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v13

    .line 234
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    const-string v13, ", name="

    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadName()Ljava/lang/String;

    move-result-object v13

    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 236
    const-string/jumbo v13, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 239
    nop

    .line 665
    .end local v11    # "$i$a$-requirePrecondition-SnapshotStateObserver$observeReads$1":I
    invoke-static {v12}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 667
    :cond_1
    nop

    .line 243
    .end local v0    # "value$iv":Z
    .end local v10    # "$i$f$requirePrecondition":I
    :cond_2
    nop

    .line 244
    :try_start_1
    iput-boolean v9, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 245
    iput-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 246
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v10

    iput-wide v10, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 248
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    move-object/from16 v10, p3

    .local v10, "block$iv":Lkotlin/jvm/functions/Function0;
    move-object v11, v5

    .local v11, "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    move-object v12, v0

    .local v12, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v13, p1

    .local v13, "scope$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 668
    .local v14, "$i$f$observe":I
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    .line 669
    .local v15, "previousScope$iv":Ljava/lang/Object;
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    move-object/from16 v16, v0

    .line 670
    .local v16, "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I

    move-result v0

    move/from16 v17, v0

    .line 672
    .local v17, "previousToken$iv":I
    invoke-static {v11, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    .line 673
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getScopeToValues$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/MutableObjectIntMap;

    invoke-static {v11, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Landroidx/collection/MutableObjectIntMap;)V

    .line 674
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    const/16 v18, 0x1

    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 675
    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-static {v11, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 250
    .end local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "scope$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$observe":I
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v31, v5

    goto/16 :goto_a

    .line 678
    .restart local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "scope$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$observe":I
    .restart local v15    # "previousScope$iv":Ljava/lang/Object;
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getDerivedStateObserver()Landroidx/compose/runtime/DerivedStateObserver;

    move-result-object v0

    move-object v8, v0

    .local v8, "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/16 v19, 0x0

    .line 679
    .local v19, "$i$f$observeDerivedStateRecalculations":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    move-object/from16 v20, v0

    .line 680
    .local v20, "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 681
    move-object/from16 v9, v20

    .end local v20    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v9, "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :try_start_4
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 682
    const/16 v20, 0x0

    .line 683
    .local v20, "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    sget-object v21, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    const/4 v4, 0x0

    .local v4, "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v28, v10

    .local v28, "block$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v24, v12

    .local v21, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .local v24, "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    const/16 v29, 0x0

    .line 684
    .local v29, "$i$f$observeInternal$runtime":I
    if-nez v24, :cond_4

    .line 686
    :try_start_5
    invoke-interface/range {v28 .. v28}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v31, v5

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    goto/16 :goto_7

    .line 733
    .end local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    :catchall_1
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    goto/16 :goto_9

    .line 689
    .restart local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "$i$f$observeInternal$runtime":I
    :cond_4
    :try_start_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/compose/runtime/snapshots/Snapshot;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move-object/from16 v30, v22

    .line 690
    .local v30, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object/from16 v31, v5

    move-object/from16 v5, v30

    .end local v30    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v5, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .local v31, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    :try_start_7
    instance-of v0, v5, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    move/from16 v23, v0

    if-eqz v23, :cond_6

    :try_start_8
    move-object/from16 v23, v5

    check-cast v23, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .local v23, "$this$canBeReused$iv$iv$iv":Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    move-object/from16 v25, v21

    .local v25, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/16 v26, 0x0

    .line 691
    .local v26, "$i$f$getCanBeReused":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getThreadId$runtime()J

    move-result-wide v32

    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v34

    cmp-long v27, v32, v34

    if-nez v27, :cond_5

    move/from16 v23, v18

    goto :goto_2

    :cond_5
    const/16 v23, 0x0

    .line 690
    .end local v23    # "$this$canBeReused$iv$iv$iv":Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v26    # "$i$f$getCanBeReused":I
    :goto_2
    if-eqz v23, :cond_6

    .line 692
    move-object/from16 v23, v5

    check-cast v23, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getReadObserver$runtime()Lkotlin/jvm/functions/Function1;

    move-result-object v23

    move-object/from16 v25, v23

    .line 693
    .local v25, "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object/from16 v23, v5

    check-cast v23, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getWriteObserver$runtime()Lkotlin/jvm/functions/Function1;

    move-result-object v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v26, v23

    .line 695
    .local v26, "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    nop

    .line 696
    :try_start_9
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v30, v8

    .end local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .local v30, "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/4 v8, 0x4

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "scope$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$observe":I
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v10, "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v12, "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v32, "block$iv":Lkotlin/jvm/functions/Function0;
    .local v33, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .local v34, "scope$iv":Ljava/lang/Object;
    .local v35, "$i$f$observe":I
    :try_start_a
    invoke-static {v10, v12, v14, v8, v13}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 697
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 698
    move-object/from16 v8, v26

    .end local v26    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    :try_start_b
    invoke-static {v4, v8}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v13

    .line 697
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 699
    invoke-interface/range {v28 .. v28}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 701
    :try_start_c
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 702
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 699
    goto/16 :goto_7

    .line 701
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v8    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    :catchall_3
    move-exception v0

    move-object/from16 v8, v26

    .end local v26    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v8    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    goto :goto_3

    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .local v8, "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .local v10, "block$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "scope$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$observe":I
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v26    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    :catchall_4
    move-exception v0

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v8, v26

    .end local v13    # "scope$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$observe":I
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v26    # "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v8, "previousWriteObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v10, "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v12, "previousReadObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    :goto_3
    move-object v13, v5

    check-cast v13, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .line 702
    move-object v13, v5

    check-cast v13, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lkotlin/jvm/functions/Function1;)V

    .end local v2    # "oldPaused":Z
    .end local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v6    # "oldThreadId":J
    .end local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .end local v19    # "$i$f$observeDerivedStateRecalculations":I
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0

    .line 733
    .end local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    .restart local v2    # "oldPaused":Z
    .restart local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v6    # "oldThreadId":J
    .local v8, "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v10, "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .local v12, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "scope$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$observe":I
    .restart local v15    # "previousScope$iv":Ljava/lang/Object;
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    .restart local v19    # "$i$f$observeDerivedStateRecalculations":I
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_5
    move-exception v0

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "scope$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$observe":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    goto/16 :goto_9

    .line 690
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .restart local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v13    # "scope$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$observe":I
    .restart local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "$i$f$observeInternal$runtime":I
    :cond_6
    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v10, v24

    const/4 v13, 0x0

    .line 707
    .end local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v13    # "scope$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$observe":I
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v10, "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    nop

    .line 708
    if-eqz v5, :cond_8

    instance-of v0, v5, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 717
    :cond_7
    nop

    .line 721
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v25, v4

    move-object/from16 v24, v10

    goto :goto_6

    .line 733
    .end local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    :catchall_6
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v14, v17

    goto/16 :goto_9

    .line 709
    .restart local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "$i$f$observeInternal$runtime":I
    :cond_8
    :goto_4
    :try_start_d
    new-instance v22, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 710
    instance-of v0, v5, Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v0, :cond_9

    :try_start_e
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v23, v0

    goto :goto_5

    :cond_9
    move-object/from16 v23, v13

    .line 711
    :goto_5
    nop

    .line 712
    nop

    .line 713
    nop

    .line 714
    nop

    .line 709
    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v25, v4

    move-object/from16 v24, v10

    .end local v4    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v10    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .local v25, "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    :try_start_f
    invoke-direct/range {v22 .. v27}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    move-object/from16 v0, v22

    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 707
    :goto_6
    nop

    .line 706
    move-object v4, v0

    .line 724
    .local v4, "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 725
    move-object v8, v4

    .local v8, "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v10, 0x0

    .line 726
    .local v10, "$i$f$enter":I
    :try_start_10
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v12, v0

    .line 727
    .local v12, "previous$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 728
    :try_start_11
    invoke-interface/range {v28 .. v28}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 730
    :try_start_12
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 728
    nop

    .line 730
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 731
    :try_start_13
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 725
    nop

    .line 732
    .end local v4    # "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    :goto_7
    nop

    .line 682
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    nop

    .line 733
    move-object v0, v9

    .local v0, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 734
    .local v4, "$i$f$getLastIndex":I
    :try_start_14
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 733
    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$getLastIndex":I
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 735
    nop

    .line 736
    nop

    .line 737
    .end local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v19    # "$i$f$observeDerivedStateRecalculations":I
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$clearObsoleteStateReads(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    .line 739
    invoke-static {v11, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    .line 740
    move-object/from16 v13, v16

    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .local v13, "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    invoke-static {v11, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Landroidx/collection/MutableObjectIntMap;)V

    .line 741
    move/from16 v14, v17

    .end local v17    # "previousToken$iv":I
    .local v14, "previousToken$iv":I
    invoke-static {v11, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 742
    nop

    .line 250
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    iput-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 251
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 252
    iput-wide v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    .line 253
    nop

    .line 254
    return-void

    .line 730
    .local v4, "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v8    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v10    # "$i$f$enter":I
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v12    # "previous$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v15    # "previousScope$iv":Ljava/lang/Object;
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    .restart local v19    # "$i$f$observeDerivedStateRecalculations":I
    .restart local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "$i$f$observeInternal$runtime":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    :catchall_7
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .restart local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v14    # "previousToken$iv":I
    :try_start_15
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v2    # "oldPaused":Z
    .end local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v4    # "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "oldThreadId":J
    .end local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$observeDerivedStateRecalculations":I
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 731
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "$i$f$enter":I
    .end local v12    # "previous$iv$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v2    # "oldPaused":Z
    .restart local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v4    # "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v6    # "oldThreadId":J
    .restart local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v14    # "previousToken$iv":I
    .restart local v15    # "previousScope$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$observeDerivedStateRecalculations":I
    .restart local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .restart local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v25    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .restart local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v29    # "$i$f$observeInternal$runtime":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_8
    move-exception v0

    goto :goto_8

    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    :catchall_9
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .restart local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v14    # "previousToken$iv":I
    :goto_8
    :try_start_16
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .end local v2    # "oldPaused":Z
    .end local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v6    # "oldThreadId":J
    .end local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$observeDerivedStateRecalculations":I
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 733
    .end local v4    # "snapshot$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v20    # "$i$a$-observeDerivedStateRecalculations-SnapshotStateObserver$ObservedScopeMap$observe$1$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v24    # "readObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v25    # "writeObserver$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v28    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$observeInternal$runtime":I
    .restart local v2    # "oldPaused":Z
    .restart local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v6    # "oldThreadId":J
    .restart local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v14    # "previousToken$iv":I
    .restart local v15    # "previousScope$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$observeDerivedStateRecalculations":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_a
    move-exception v0

    goto :goto_9

    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    :catchall_b
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .restart local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v14    # "previousToken$iv":I
    goto :goto_9

    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .local v8, "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .local v10, "block$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .local v13, "scope$iv":Ljava/lang/Object;
    .local v14, "$i$f$observe":I
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    :catchall_c
    move-exception v0

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .local v13, "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .local v14, "previousToken$iv":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    goto :goto_9

    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .local v5, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .local v13, "scope$iv":Ljava/lang/Object;
    .local v14, "$i$f$observe":I
    .restart local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .restart local v17    # "previousToken$iv":I
    :catchall_d
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v30, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    .end local v5    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v8    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v10    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v16    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v17    # "previousToken$iv":I
    .local v13, "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .local v14, "previousToken$iv":I
    .restart local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .restart local v34    # "scope$iv":Ljava/lang/Object;
    .restart local v35    # "$i$f$observe":I
    :goto_9
    move-object v4, v9

    .local v4, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 734
    .local v5, "$i$f$getLastIndex":I
    :try_start_17
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 733
    .end local v4    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$getLastIndex":I
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .end local v2    # "oldPaused":Z
    .end local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v6    # "oldThreadId":J
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 250
    .end local v9    # "observers$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .end local v13    # "previousReads$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v14    # "previousToken$iv":I
    .end local v15    # "previousScope$iv":Ljava/lang/Object;
    .end local v19    # "$i$f$observeDerivedStateRecalculations":I
    .end local v30    # "observer$iv$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v32    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v33    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v34    # "scope$iv":Ljava/lang/Object;
    .end local v35    # "$i$f$observe":I
    .restart local v2    # "oldPaused":Z
    .restart local v3    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v6    # "oldThreadId":J
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_e
    move-exception v0

    goto :goto_a

    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .local v5, "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    :catchall_f
    move-exception v0

    move-object/from16 v31, v5

    .end local v5    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .restart local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    :goto_a
    iput-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 251
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 252
    iput-wide v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMapThreadId:J

    throw v0

    .line 663
    .end local v6    # "oldThreadId":J
    .end local v31    # "scopeMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
    .local v2, "lock$iv":Ljava/lang/Object;
    .local v3, "$i$f$synchronized":I
    :catchall_10
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final start()V
    .locals 2

    .line 301
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 302
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 306
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 307
    :cond_0
    return-void
.end method

.method public final withNoObservations(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replace with Snapshot.withoutReadObservation()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Snapshot.withoutReadObservation(block)"
            imports = {
                "androidx.compose.runtime.snapshots.Snapshot"
            }
        .end subannotation
    .end annotation

    .line 268
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 269
    .local v0, "oldPaused":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 270
    nop

    .line 271
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    throw v1
.end method
