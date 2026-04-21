.class public final Landroidx/compose/animation/SharedTransitionStateMachine;
.super Ljava/lang/Object;
.source "SharedTransitionStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SharedTransitionStateMachine$State;,
        Landroidx/compose/animation/SharedTransitionStateMachine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedTransitionStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedTransitionStateMachine.kt\nandroidx/compose/animation/SharedTransitionStateMachine\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,619:1\n85#2:620\n117#2,2:621\n78#3:623\n111#3,2:624\n78#3:626\n111#3,2:627\n103#4:629\n35#4,5:630\n104#4:635\n118#4:636\n35#4,5:637\n119#4:642\n118#4:643\n35#4,5:644\n119#4:649\n118#4:650\n35#4,5:651\n119#4:656\n*S KotlinDebug\n*F\n+ 1 SharedTransitionStateMachine.kt\nandroidx/compose/animation/SharedTransitionStateMachine\n*L\n99#1:620\n99#1:621,2\n104#1:623\n104#1:624,2\n131#1:626\n131#1:627,2\n174#1:629\n174#1:630,5\n174#1:635\n222#1:636\n222#1:637,5\n222#1:642\n250#1:643\n250#1:644,5\n250#1:649\n252#1:650\n252#1:651,5\n252#1:656\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0001BB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010 \u001a\u00020!J\u000e\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020\u001fJ\u0006\u00102\u001a\u00020!J\u000e\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\tJ\u0006\u00105\u001a\u00020!J\r\u00106\u001a\u00020!H\u0000\u00a2\u0006\u0002\u00087J\u0008\u00108\u001a\u0004\u0018\u000109J%\u0010:\u001a\u00020!2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>\u00a2\u0006\u0004\u0008@\u0010AR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\u00168B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0#8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010&R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010+\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\u00168B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u001d\u001a\u0004\u0008,\u0010\u0019\"\u0004\u0008-\u0010\u001bR\u000e\u0010/\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Landroidx/compose/animation/SharedTransitionStateMachine;",
        "",
        "sharedElement",
        "Landroidx/compose/animation/SharedElement;",
        "<init>",
        "(Landroidx/compose/animation/SharedElement;)V",
        "getSharedElement",
        "()Landroidx/compose/animation/SharedElement;",
        "activeMatchDeferred",
        "",
        "getActiveMatchDeferred",
        "()Z",
        "<set-?>",
        "Landroidx/compose/animation/SharedTransitionStateMachine$State;",
        "state",
        "getState",
        "()Landroidx/compose/animation/SharedTransitionStateMachine$State;",
        "setState",
        "(Landroidx/compose/animation/SharedTransitionStateMachine$State;)V",
        "state$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "lastHandledRequestId",
        "",
        "requestId",
        "getRequestId",
        "()I",
        "setRequestId",
        "(I)V",
        "requestId$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "requestToBeHandled",
        "Landroidx/compose/animation/StateChangeRequest;",
        "resetState",
        "",
        "allEntries",
        "",
        "Landroidx/compose/animation/SharedElementEntry;",
        "getAllEntries",
        "()Ljava/util/List;",
        "enabledEntries",
        "getEnabledEntries",
        "targetBoundsProvider",
        "Landroidx/compose/animation/BoundsProvider;",
        "targetBoundsProviderUpdateRequestId",
        "getTargetBoundsProviderUpdateRequestId",
        "setTargetBoundsProviderUpdateRequestId",
        "targetBoundsProviderUpdateRequestId$delegate",
        "lastHandledTargetProviderUpdateRequestId",
        "deferRequest",
        "request",
        "processPendingRequest",
        "checkForAndDeferStateUpdates",
        "hasVisibleContent",
        "invalidateTargetBoundsProvider",
        "updateTargetBoundsProvider",
        "updateTargetBoundsProvider$animation",
        "tryInitializingCurrentBounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "configureActiveMatch",
        "lookaheadSize",
        "Landroidx/compose/ui/geometry/Size;",
        "topLeft",
        "Landroidx/compose/ui/geometry/Offset;",
        "structuralOffset",
        "configureActiveMatch-L7TYDSY",
        "(JJJ)V",
        "State",
        "animation"
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
.field private lastHandledRequestId:I

.field private lastHandledTargetProviderUpdateRequestId:I

.field private final requestId$delegate:Landroidx/compose/runtime/MutableIntState;

.field private requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

.field private final sharedElement:Landroidx/compose/animation/SharedElement;

.field private final state$delegate:Landroidx/compose/runtime/MutableState;

.field private targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

.field private final targetBoundsProviderUpdateRequestId$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/SharedTransitionStateMachine;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/SharedElement;)V
    .locals 3
    .param p1, "sharedElement"    # Landroidx/compose/animation/SharedElement;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    .line 99
    sget-object v0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->state$delegate:Landroidx/compose/runtime/MutableState;

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestId$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 106
    sget-object v1, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    .line 131
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProviderUpdateRequestId$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 54
    return-void
.end method

.method private final getAllEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getEnabledEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/animation/SharedElementEntry;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getRequestId()I
    .locals 4

    .line 104
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestId$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 623
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 104
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private final getTargetBoundsProviderUpdateRequestId()I
    .locals 4

    .line 131
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProviderUpdateRequestId$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 626
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 131
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method private final setRequestId(I)V
    .locals 5
    .param p1, "<set-?>"    # I

    .line 104
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestId$delegate:Landroidx/compose/runtime/MutableIntState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move v2, p1

    .local v2, "value$iv":I
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 624
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 625
    nop

    .line 104
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":I
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setState(Landroidx/compose/animation/SharedTransitionStateMachine$State;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedTransitionStateMachine$State;

    .line 99
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->state$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 621
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 622
    nop

    .line 99
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setTargetBoundsProviderUpdateRequestId(I)V
    .locals 5
    .param p1, "<set-?>"    # I

    .line 131
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProviderUpdateRequestId$delegate:Landroidx/compose/runtime/MutableIntState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move v2, p1

    .local v2, "value$iv":I
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 627
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 628
    nop

    .line 131
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":I
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public final checkForAndDeferStateUpdates(Z)V
    .locals 2
    .param p1, "hasVisibleContent"    # Z

    .line 198
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 199
    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->MatchFound:Landroidx/compose/animation/StateChangeRequest;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->deferRequest(Landroidx/compose/animation/StateChangeRequest;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    if-nez p1, :cond_2

    .line 202
    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->VisibleContentAbsentDuringTransition:Landroidx/compose/animation/StateChangeRequest;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->deferRequest(Landroidx/compose/animation/StateChangeRequest;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->resetState()V

    .line 210
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->invalidateTargetBoundsProvider()V

    .line 211
    return-void
.end method

.method public final configureActiveMatch-L7TYDSY(JJJ)V
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-lookaheadSize$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-topLeft$0"    # J
    .param p5, "$v$c$androidx-compose-ui-geometry-Offset$-structuralOffset$0"    # J

    .line 276
    nop

    .line 277
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    .line 278
    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    .line 279
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 277
    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Size$-lookaheadSize$0":J
    .end local p3    # "$v$c$androidx-compose-ui-geometry-Offset$-topLeft$0":J
    .end local p5    # "$v$c$androidx-compose-ui-geometry-Offset$-structuralOffset$0":J
    .local v3, "$v$c$androidx-compose-ui-geometry-Size$-lookaheadSize$0":J
    .local v5, "$v$c$androidx-compose-ui-geometry-Offset$-topLeft$0":J
    .local v7, "$v$c$androidx-compose-ui-geometry-Offset$-structuralOffset$0":J
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->configureActiveMatch-38uP1EE(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;JJJ)Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Landroidx/compose/animation/SharedTransitionStateMachine;->setState(Landroidx/compose/animation/SharedTransitionStateMachine$State;)V

    .line 284
    return-void
.end method

.method public final deferRequest(Landroidx/compose/animation/StateChangeRequest;)V
    .locals 1
    .param p1, "request"    # Landroidx/compose/animation/StateChangeRequest;

    .line 145
    nop

    .line 150
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    .line 151
    iget v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledRequestId:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->setRequestId(I)V

    .line 152
    return-void
.end method

.method public final getActiveMatchDeferred()Z
    .locals 2

    .line 97
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    sget-object v1, Landroidx/compose/animation/StateChangeRequest;->MatchFound:Landroidx/compose/animation/StateChangeRequest;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSharedElement()Landroidx/compose/animation/SharedElement;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    return-object v0
.end method

.method public final getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 4

    .line 99
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->state$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 620
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SharedTransitionStateMachine$State;

    .line 99
    return-object v0
.end method

.method public final invalidateTargetBoundsProvider()V
    .locals 12

    .line 222
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 636
    .local v1, "$i$f$fastFirstOrNull":I
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 637
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 638
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 639
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 636
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/animation/SharedElementEntry;

    .local v10, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v11, 0x0

    .line 222
    .local v11, "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$invalidateTargetBoundsProvider$target$1":I
    invoke-virtual {v10}, Landroidx/compose/animation/SharedElementEntry;->getTarget()Z

    move-result v10

    .line 636
    .end local v10    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v11    # "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$invalidateTargetBoundsProvider$target$1":I
    if-eqz v10, :cond_0

    goto :goto_1

    .line 639
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_0
    nop

    .line 637
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 642
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move-object v8, v6

    .line 222
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFirstOrNull":I
    :goto_1
    move-object v0, v8

    check-cast v0, Landroidx/compose/animation/SharedElementEntry;

    .line 223
    .local v0, "target":Landroidx/compose/animation/SharedElementEntry;
    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    if-nez v1, :cond_2

    return-void

    .line 224
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v6

    :cond_3
    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 230
    :cond_4
    iget v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledTargetProviderUpdateRequestId:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroidx/compose/animation/SharedTransitionStateMachine;->setTargetBoundsProviderUpdateRequestId(I)V

    .line 231
    return-void
.end method

.method public final processPendingRequest()V
    .locals 13

    .line 163
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getRequestId()I

    move-result v0

    iget v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledRequestId:I

    if-eq v0, v1, :cond_3

    .line 164
    nop

    .line 167
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getRequestId()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledRequestId:I

    .line 168
    nop

    .line 169
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    sget-object v1, Landroidx/compose/animation/SharedTransitionStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/animation/StateChangeRequest;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 174
    :pswitch_0
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 629
    .local v1, "$i$f$fastAny":I
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 630
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 631
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 632
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 629
    .local v8, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/animation/SharedElementEntry;

    .local v9, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v10, 0x0

    .line 174
    .local v10, "$i$a$-fastAny-SharedTransitionStateMachine$processPendingRequest$1":I
    invoke-virtual {v9}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v11

    iget-object v12, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 629
    .end local v9    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v10    # "$i$a$-fastAny-SharedTransitionStateMachine$processPendingRequest$1":I
    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 632
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_0
    nop

    .line 630
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 634
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 635
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .line 174
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAny":I
    :goto_1
    if-eqz v5, :cond_2

    .line 176
    sget-object v0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    check-cast v0, Landroidx/compose/animation/SharedTransitionStateMachine$State;

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->onVisibleContentRemovedDuringTransition()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_2

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->onMatchFound(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_2

    .line 171
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_2

    .line 170
    :pswitch_3
    sget-object v0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    check-cast v0, Landroidx/compose/animation/SharedTransitionStateMachine$State;

    .line 168
    :goto_2
    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->setState(Landroidx/compose/animation/SharedTransitionStateMachine$State;)V

    .line 182
    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    .line 184
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->updateTargetBoundsProvider$animation()V

    .line 185
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetState()V
    .locals 1

    .line 110
    nop

    .line 113
    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->requestToBeHandled:Landroidx/compose/animation/StateChangeRequest;

    .line 114
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getRequestId()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledRequestId:I

    .line 115
    sget-object v0, Landroidx/compose/animation/NoMatchFound;->INSTANCE:Landroidx/compose/animation/NoMatchFound;

    check-cast v0, Landroidx/compose/animation/SharedTransitionStateMachine$State;

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->setState(Landroidx/compose/animation/SharedTransitionStateMachine$State;)V

    .line 116
    return-void
.end method

.method public final tryInitializingCurrentBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 264
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->processPendingRequest()V

    .line 265
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getState()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->initializeCurrentBounds(Landroidx/compose/animation/SharedElement;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    move-object v1, v0

    .local v1, "it":Landroidx/compose/ui/geometry/Rect;
    const/4 v2, 0x0

    .line 266
    .local v2, "$i$a$-also-SharedTransitionStateMachine$tryInitializingCurrentBounds$1":I
    nop

    .line 272
    nop

    .line 265
    .end local v1    # "it":Landroidx/compose/ui/geometry/Rect;
    .end local v2    # "$i$a$-also-SharedTransitionStateMachine$tryInitializingCurrentBounds$1":I
    return-object v0
.end method

.method public final updateTargetBoundsProvider$animation()V
    .locals 12

    .line 247
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getTargetBoundsProviderUpdateRequestId()I

    move-result v0

    iget v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledTargetProviderUpdateRequestId:I

    if-eq v0, v1, :cond_7

    .line 249
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->sharedElement:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 250
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getEnabledEntries()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 643
    .local v2, "$i$f$fastFirstOrNull":I
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 644
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 645
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 646
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 643
    .local v9, "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/animation/SharedElementEntry;

    .local v10, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v11, 0x0

    .line 250
    .local v11, "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$updateTargetBoundsProvider$newTargetBoundsProvider$1":I
    invoke-virtual {v10}, Landroidx/compose/animation/SharedElementEntry;->getTarget()Z

    move-result v10

    .line 643
    .end local v10    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v11    # "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$updateTargetBoundsProvider$newTargetBoundsProvider$1":I
    if-eqz v10, :cond_0

    goto :goto_1

    .line 646
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_0
    nop

    .line 644
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 648
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 649
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v8, v1

    .line 250
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_1
    check-cast v8, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v1

    goto :goto_4

    .line 252
    :cond_2
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getAllEntries()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 650
    .restart local v2    # "$i$f$fastFirstOrNull":I
    move-object v3, v0

    .restart local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 651
    .restart local v4    # "$i$f$fastForEach":I
    const/4 v5, 0x0

    .restart local v5    # "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_4

    .line 652
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 653
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .restart local v8    # "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 650
    .restart local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/animation/SharedElementEntry;

    .restart local v10    # "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v11, 0x0

    .line 252
    .local v11, "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$updateTargetBoundsProvider$newTargetBoundsProvider$2":I
    invoke-virtual {v10}, Landroidx/compose/animation/SharedElementEntry;->getTarget()Z

    move-result v10

    .line 650
    .end local v10    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v11    # "$i$a$-fastFirstOrNull-SharedTransitionStateMachine$updateTargetBoundsProvider$newTargetBoundsProvider$2":I
    if-eqz v10, :cond_3

    goto :goto_3

    .line 653
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-ListUtilsKt$fastFirstOrNull$1$iv":I
    :cond_3
    nop

    .line 651
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 655
    .end local v5    # "index$iv$iv":I
    :cond_4
    nop

    .line 656
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v8, v1

    .line 252
    .end local v0    # "$this$fastFirstOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastFirstOrNull":I
    :goto_3
    check-cast v8, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroidx/compose/animation/SharedElementEntry;->getBoundsProvider()Landroidx/compose/animation/BoundsProvider;

    move-result-object v1

    .line 249
    :cond_5
    :goto_4
    nop

    .line 248
    nop

    .line 255
    .local v1, "newTargetBoundsProvider":Landroidx/compose/animation/BoundsProvider;
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 256
    iput-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->targetBoundsProvider:Landroidx/compose/animation/BoundsProvider;

    .line 258
    :cond_6
    invoke-direct {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->getTargetBoundsProviderUpdateRequestId()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->lastHandledTargetProviderUpdateRequestId:I

    .line 260
    .end local v1    # "newTargetBoundsProvider":Landroidx/compose/animation/BoundsProvider;
    :cond_7
    return-void
.end method
