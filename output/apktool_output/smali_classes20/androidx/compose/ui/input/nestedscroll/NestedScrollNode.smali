.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "NestedScrollNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\'\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0018\u0010,\u001a\u00020-2\u0006\u0010#\u001a\u00020-H\u0096@\u00a2\u0006\u0004\u0008.\u0010/J \u00100\u001a\u00020-2\u0006\u0010)\u001a\u00020-2\u0006\u0010#\u001a\u00020-H\u0096@\u00a2\u0006\u0004\u00081\u00102J\u0012\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u00106\u001a\u000204H\u0016J\u0008\u00107\u001a\u000204H\u0016J\u0008\u00108\u001a\u000204H\u0002J\u0008\u00109\u001a\u000204H\u0002J\u001f\u0010:\u001a\u0002042\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0008;R\u001a\u0010\u0004\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00008@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006<"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "Landroidx/compose/ui/node/TraversableNode;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroidx/compose/ui/Modifier$Node;",
        "connection",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "<init>",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V",
        "getConnection",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "setConnection",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "resolvedDispatcher",
        "lastKnownParentNode",
        "getLastKnownParentNode$ui",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "setLastKnownParentNode$ui",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V",
        "parentNestedScrollNode",
        "getParentNestedScrollNode$ui",
        "parentConnection",
        "getParentConnection",
        "traverseKey",
        "",
        "getTraverseKey",
        "()Ljava/lang/Object;",
        "nestedCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getNestedCoroutineScope$annotations",
        "()V",
        "getNestedCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "onPreScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "onPostScroll",
        "consumed",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPreFling",
        "Landroidx/compose/ui/unit/Velocity;",
        "onPreFling-QWom1Mo",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPostFling",
        "onPostFling-RZ2iAVY",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateDispatcher",
        "",
        "newDispatcher",
        "onAttach",
        "onDetach",
        "updateDispatcherFields",
        "resetDispatcherFields",
        "updateNode",
        "updateNode$ui",
        "ui"
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
.field private connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

.field private resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private final traverseKey:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1
    .param p1, "connection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p2, "dispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 43
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 51
    nop

    .line 52
    if-nez p2, :cond_0

    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 53
    nop

    .line 63
    const-string v0, "androidx.compose.ui.input.nestedscroll.NestedScrollNode"

    iput-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->traverseKey:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public static final synthetic access$getNestedCoroutineScope(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 43
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private final getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 4

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentNestedScrollNode$ui()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getNestedCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "parentCoroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_0
    nop

    .line 72
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 74
    move-object v1, v0

    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getScope$ui()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    :goto_1
    return-object v1

    .line 77
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 78
    nop

    .line 77
    const-string v2, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static synthetic getNestedCoroutineScope$annotations()V
    .locals 0

    return-void
.end method

.method private final getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentNestedScrollNode$ui()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final resetDispatcherFields()V
    .locals 2

    .line 172
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getNestedScrollNode$ui()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setNestedScrollNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    .line 173
    :cond_0
    return-void
.end method

.method private final updateDispatcher(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 1
    .param p1, "newDispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 124
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resetDispatcherFields()V

    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcherFields()V

    .line 137
    :cond_2
    return-void
.end method

.method private final updateDispatcherFields()V
    .locals 2

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setNestedScrollNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setLastKnownParentNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    .line 164
    iput-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 165
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    new-instance v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$updateDispatcherFields$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setCalculateNestedScrollScope$ui(Lkotlin/jvm/functions/Function0;)V

    .line 166
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setScope$ui(Lkotlinx/coroutines/CoroutineScope;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final getConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public final getLastKnownParentNode$ui()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    return-object v0
.end method

.method public final getParentNestedScrollNode$ui()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/TraversableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/TraversableNodeKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->traverseKey:Ljava/lang/Object;

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    .line 144
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcherFields()V

    .line 145
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 150
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/TraversableNode;

    invoke-static {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->access$findNearestAttachedAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    iput-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 151
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resolvedDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object v1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->setLastKnownParentNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V

    .line 152
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->resetDispatcherFields()V

    .line 153
    return-void
.end method

.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    iget v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 112
    iget v3, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide v3, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    .local v3, "selfConsumed":J
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v15, v3

    move-object v3, v1

    goto :goto_3

    .end local v3    # "selfConsumed":J
    :pswitch_1
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    iget-wide v4, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    .local v4, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    iget-wide v6, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    .local v6, "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-object v3, v1

    goto :goto_1

    .end local v3    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .end local v4    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .end local v6    # "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .local v10, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    move-wide/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    move-wide/from16 v6, p3

    .line 113
    .local v6, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    iget-object v3, v10, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-wide v4, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    iput-wide v6, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$1:J

    const/4 v11, 0x1

    iput v11, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_1

    .line 112
    .end local v10    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    return-object v9

    .line 113
    .restart local v10    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    :cond_1
    move-wide v13, v4

    move-wide v11, v6

    .end local v4    # "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    .end local v6    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .local v11, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .local v13, "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    :goto_1
    check-cast v3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v3

    .line 116
    .local v3, "selfConsumed":J
    invoke-virtual {v10}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {v10}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v5

    goto :goto_2

    :cond_2
    iget-object v5, v10, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    check-cast v5, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 118
    .end local v10    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .local v5, "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    :goto_2
    if-eqz v5, :cond_4

    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v6

    move-wide v15, v6

    invoke-static {v11, v12, v3, v4}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v6

    iput-wide v3, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->J$0:J

    const/4 v10, 0x2

    iput v10, v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPostFling$1;->label:I

    move-wide/from16 v17, v3

    move-object v3, v5

    move-wide v4, v15

    move-wide/from16 v15, v17

    .end local v5    # "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v3, "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .local v15, "selfConsumed":J
    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .end local v11    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .end local v13    # "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    if-ne v3, v9, :cond_3

    .line 112
    return-object v9

    .line 118
    :cond_3
    :goto_3
    check-cast v3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v3

    :goto_4
    move-wide v5, v15

    goto :goto_5

    .end local v15    # "selfConsumed":J
    .local v3, "selfConsumed":J
    .restart local v5    # "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .restart local v11    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .restart local v13    # "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    :cond_4
    move-wide v15, v3

    move-object v3, v5

    .end local v3    # "selfConsumed":J
    .end local v5    # "parent":Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .end local v11    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .end local v13    # "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0":J
    .restart local v15    # "selfConsumed":J
    sget-object v3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v3

    goto :goto_4

    .line 117
    .end local v15    # "selfConsumed":J
    .local v5, "selfConsumed":J
    :goto_5
    nop

    .line 119
    .local v3, "parentConsumed":J
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v7

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-consumed$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p5, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 95
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v6

    .line 97
    .local v6, "selfConsumed":J
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1, p2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 99
    move-wide v8, p3

    invoke-static {p3, p4, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 100
    nop

    .line 97
    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v0

    goto :goto_0

    .line 101
    :cond_0
    move-wide v8, p3

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    .line 97
    :goto_0
    nop

    .line 96
    nop

    .line 102
    .local v0, "parentConsumed":J
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 105
    iget v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    .local p1, "parentPreConsumed":J
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v5, p1

    move-object p1, v1

    goto :goto_3

    .end local p1    # "parentPreConsumed":J
    :pswitch_1
    move-object p1, p0

    .local p1, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    iget-wide v3, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    .local v3, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v1

    goto :goto_1

    .end local v3    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .end local p1    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 106
    .local v3, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .local p1, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    invoke-direct {v3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-wide p1, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {v4, p1, p2, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 105
    .end local v3    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    return-object v2

    .line 106
    .restart local v3    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    :cond_1
    move-wide v10, p1

    move-object p1, v3

    move-object p2, v4

    move-wide v3, v10

    .local v3, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    .local p1, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v5

    move-wide v10, v3

    move-object v3, p1

    move-wide p1, v10

    goto :goto_2

    .local v3, "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .local p1, "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    :cond_2
    sget-object v4, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v5

    .line 107
    .local v5, "parentPreConsumed":J
    :goto_2
    iget-object v4, v3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {p1, p2, v5, v6}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v7

    iput-wide v5, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->J$0:J

    const/4 v9, 0x2

    iput v9, v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode$onPreFling$1;->label:I

    invoke-interface {v4, v7, v8, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "this":Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;
    .end local p1    # "$v$c$androidx-compose-ui-unit-Velocity$-available$0":J
    if-ne p1, v2, :cond_3

    .line 105
    return-object v2

    .line 107
    :cond_3
    :goto_3
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p1

    .line 108
    .local p1, "selfPreConsumed":J
    invoke-static {v5, v6, p1, p2}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p3, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 85
    invoke-direct {p0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->getParentConnection()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    .line 86
    .local v0, "parentPreConsumed":J
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide v2

    .line 87
    .local v2, "selfPreConsumed":J
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public final setConnection(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 44
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public final setLastKnownParentNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 55
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->lastKnownParentNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    return-void
.end method

.method public final updateNode$ui(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
    .locals 0
    .param p1, "connection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p2, "dispatcher"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 179
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->connection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 180
    invoke-direct {p0, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->updateDispatcher(Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    .line 181
    return-void
.end method
