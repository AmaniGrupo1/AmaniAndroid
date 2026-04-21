.class public final Landroidx/compose/animation/SharedTransitionScopeImpl;
.super Ljava/lang/Object;
.source "SharedTransitionScope.kt"

# interfaces
.implements Landroidx/compose/animation/SharedTransitionScope;
.implements Landroidx/compose/ui/layout/LookaheadScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedTransitionScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedTransitionScope.kt\nandroidx/compose/animation/SharedTransitionScopeImpl\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,1556:1\n85#2:1557\n117#2,2:1558\n188#3,3:1560\n216#3,2:1563\n216#3,2:1565\n1128#4,6:1567\n1#5:1573\n1010#6,2:1574\n360#6,7:1581\n35#7,5:1576\n*S KotlinDebug\n*F\n+ 1 SharedTransitionScope.kt\nandroidx/compose/animation/SharedTransitionScopeImpl\n*L\n989#1:1557\n989#1:1558,2\n1196#1:1560,3\n1200#1:1563,2\n1203#1:1565,2\n1312#1:1567,6\n1381#1:1574,2\n1423#1:1581,7\n1387#1:1576,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001~B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u001e\u001a\u00020\u001f*\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000bH\u0016J\"\u0010!\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000bH\u0016JD\u0010%\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0006\u0010/\u001a\u000200H\u0016J\\\u00101\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u0010*\u001a\u00020+2\u0006\u00106\u001a\u0002072\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0006\u0010/\u001a\u000200H\u0016JD\u00108\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0006\u00109\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0006\u0010/\u001a\u000200H\u0016JS\u0010:\u001a\u00020\u001f*\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0006\u00109\u001a\u00020\u00122\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020\u00122\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010/\u001a\u000200H\u0000\u00a2\u0006\u0002\u0008;J\u0010\u0010<\u001a\u0002002\u0006\u0010=\u001a\u00020>H\u0016J\r\u0010A\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008BJp\u0010C\u001a\u00020\u001f\"\u0004\u0008\u0000\u0010D*\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u000e\u0010E\u001a\n\u0012\u0004\u0012\u0002HD\u0018\u00010F2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u0002HD\u0012\u0004\u0012\u00020\u00120G2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0006\u0010H\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020#2\u0006\u0010/\u001a\u000200H\u0002JM\u0010I\u001a\u00020J2\u0006\u0010%\u001a\u00020K2\u0006\u0010L\u001a\u00020M2\u0006\u0010,\u001a\u00020-2\u0006\u0010H\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\'2\u0006\u0010/\u001a\u0002002\u0006\u0010\"\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0012H\u0003\u00a2\u0006\u0002\u0010NJ\u0010\u0010b\u001a\u00020K2\u0006\u0010c\u001a\u00020aH\u0002J\u0015\u0010d\u001a\u00020\u000c2\u0006\u0010e\u001a\u00020fH\u0000\u00a2\u0006\u0002\u0008gJ\u0015\u0010h\u001a\u00020\u000c2\u0006\u0010i\u001a\u00020JH\u0000\u00a2\u0006\u0002\u0008jJ\u0015\u0010k\u001a\u00020\u000c2\u0006\u0010i\u001a\u00020JH\u0000\u00a2\u0006\u0002\u0008lJ\u0015\u0010m\u001a\u00020\u000c2\u0006\u0010n\u001a\u00020^H\u0000\u00a2\u0006\u0002\u0008oJ\u0015\u0010p\u001a\u00020\u000c2\u0006\u0010n\u001a\u00020^H\u0000\u00a2\u0006\u0002\u0008qJ,\u0010r\u001a\u00020s*\u00020P2\u0006\u0010t\u001a\u00020P2\u0006\u0010u\u001a\u00020s2\u0006\u0010v\u001a\u00020\u0012H\u0096\u0001\u00a2\u0006\u0004\u0008w\u0010xJ\r\u0010y\u001a\u00020P*\u00020PH\u0096\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R+\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00128V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R,\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\u000eR$\u0010Q\u001a\u00020P2\u0006\u0010O\u001a\u00020P8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010V\u001a\u0004\u0018\u00010P2\u0008\u0010O\u001a\u0004\u0018\u00010P@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010SR$\u0010X\u001a\u00020P2\u0006\u0010O\u001a\u00020P8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Y\u0010S\"\u0004\u0008Z\u0010UR\u0010\u0010[\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020^0]X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010_\u001a\u000e\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020K0`X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010z\u001a\u00020P*\u00020{X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}\u00a8\u0006\u007f"
    }
    d2 = {
        "Landroidx/compose/animation/SharedTransitionScopeImpl;",
        "Landroidx/compose/animation/SharedTransitionScope;",
        "Landroidx/compose/ui/layout/LookaheadScope;",
        "lookaheadScope",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Landroidx/compose/ui/layout/LookaheadScope;Lkotlinx/coroutines/CoroutineScope;)V",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "invalidateOverlay",
        "Lkotlin/Function0;",
        "",
        "getInvalidateOverlay",
        "()Lkotlin/jvm/functions/Function0;",
        "setInvalidateOverlay",
        "(Lkotlin/jvm/functions/Function0;)V",
        "<set-?>",
        "",
        "isTransitionActive",
        "()Z",
        "setTransitionActive",
        "(Z)V",
        "isTransitionActive$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "testBlockToRun",
        "getTestBlockToRun$annotations",
        "()V",
        "getTestBlockToRun",
        "setTestBlockToRun",
        "skipToLookaheadSize",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "renderInSharedTransitionScopeOverlay",
        "zIndexInOverlay",
        "",
        "renderInOverlay",
        "sharedElement",
        "sharedContentState",
        "Landroidx/compose/animation/SharedTransitionScope$SharedContentState;",
        "animatedVisibilityScope",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "boundsTransform",
        "Landroidx/compose/animation/BoundsTransform;",
        "placeholderSize",
        "Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;",
        "renderInOverlayDuringTransition",
        "clipInOverlayDuringTransition",
        "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
        "sharedBounds",
        "enter",
        "Landroidx/compose/animation/EnterTransition;",
        "exit",
        "Landroidx/compose/animation/ExitTransition;",
        "resizeMode",
        "Landroidx/compose/animation/SharedTransitionScope$ResizeMode;",
        "sharedElementWithCallerManagedVisibility",
        "visible",
        "sharedBoundsWithCallerManagedVisibility",
        "sharedBoundsWithCallerManagedVisibility$animation",
        "OverlayClip",
        "clipShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "observeAnimatingBlock",
        "getObserveAnimatingBlock$animation",
        "updateTransitionActiveness",
        "updateTransitionActiveness$animation",
        "sharedBoundsImpl",
        "T",
        "parentTransition",
        "Landroidx/compose/animation/core/Transition;",
        "Lkotlin/Function1;",
        "renderOnlyWhenVisible",
        "rememberSharedElementState",
        "Landroidx/compose/animation/SharedElementEntry;",
        "Landroidx/compose/animation/SharedElement;",
        "boundsAnimation",
        "Landroidx/compose/animation/BoundsAnimation;",
        "(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/SharedTransitionScope$OverlayClip;FZLandroidx/compose/runtime/Composer;I)Landroidx/compose/animation/SharedElementEntry;",
        "value",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "root",
        "getRoot$animation",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setRoot$animation",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "nullableRoot",
        "getNullableRoot$animation",
        "lookaheadRoot",
        "getLookaheadRoot$animation",
        "setLookaheadRoot$animation",
        "_nullableLookaheadRoot",
        "renderers",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "Landroidx/compose/animation/LayerRenderer;",
        "sharedElements",
        "Landroidx/compose/runtime/snapshots/SnapshotStateMap;",
        "",
        "sharedElementsFor",
        "key",
        "drawInOverlay",
        "scope",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "drawInOverlay$animation",
        "onEntryRemoved",
        "sharedElementState",
        "onEntryRemoved$animation",
        "onEntryAdded",
        "onEntryAdded$animation",
        "onLayerRendererCreated",
        "renderer",
        "onLayerRendererCreated$animation",
        "onLayerRendererRemoved",
        "onLayerRendererRemoved$animation",
        "localLookaheadPositionOf",
        "Landroidx/compose/ui/geometry/Offset;",
        "sourceCoordinates",
        "relativeToSource",
        "includeMotionFrameOfReference",
        "localLookaheadPositionOf-au-aQtc",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J",
        "toLookaheadCoordinates",
        "lookaheadScopeCoordinates",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "getLookaheadScopeCoordinates",
        "(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;",
        "ShapeBasedClip",
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
.field private final synthetic $$delegate_0:Landroidx/compose/ui/layout/LookaheadScope;

.field private _nullableLookaheadRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private invalidateOverlay:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final isTransitionActive$delegate:Landroidx/compose/runtime/MutableState;

.field private nullableRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final observeAnimatingBlock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/compose/animation/LayerRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/animation/SharedElement;",
            ">;"
        }
    .end annotation
.end field

.field private testBlockToRun:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/layout/LookaheadScope;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3
    .param p1, "lookaheadScope"    # Landroidx/compose/ui/layout/LookaheadScope;
    .param p2, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LookaheadScope;

    .line 985
    iput-object p2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 989
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive$delegate:Landroidx/compose/runtime/MutableState;

    .line 1191
    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;

    invoke-direct {v0, p0}, Landroidx/compose/animation/SharedTransitionScopeImpl$observeAnimatingBlock$1;-><init>(Landroidx/compose/animation/SharedTransitionScopeImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->observeAnimatingBlock:Lkotlin/jvm/functions/Function0;

    .line 1367
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 1373
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 985
    return-void
.end method

.method public static final synthetic access$getSharedElements$p(Landroidx/compose/animation/SharedTransitionScopeImpl;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/SharedTransitionScopeImpl;

    .line 983
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-object v0
.end method

.method public static final synthetic access$rememberSharedElementState(Landroidx/compose/animation/SharedTransitionScopeImpl;Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/SharedTransitionScope$OverlayClip;FZLandroidx/compose/runtime/Composer;I)Landroidx/compose/animation/SharedElementEntry;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/SharedTransitionScopeImpl;
    .param p1, "sharedElement"    # Landroidx/compose/animation/SharedElement;
    .param p2, "boundsAnimation"    # Landroidx/compose/animation/BoundsAnimation;
    .param p3, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p4, "renderOnlyWhenVisible"    # Z
    .param p5, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p6, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .param p7, "zIndexInOverlay"    # F
    .param p8, "renderInOverlayDuringTransition"    # Z
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    .line 983
    invoke-direct/range {p0 .. p10}, Landroidx/compose/animation/SharedTransitionScopeImpl;->rememberSharedElementState(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/SharedTransitionScope$OverlayClip;FZLandroidx/compose/runtime/Composer;I)Landroidx/compose/animation/SharedElementEntry;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sharedElementsFor(Landroidx/compose/animation/SharedTransitionScopeImpl;Ljava/lang/Object;)Landroidx/compose/animation/SharedElement;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/animation/SharedTransitionScopeImpl;
    .param p1, "key"    # Ljava/lang/Object;

    .line 983
    invoke-direct {p0, p1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElementsFor(Ljava/lang/Object;)Landroidx/compose/animation/SharedElement;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getTestBlockToRun$annotations()V
    .locals 0

    return-void
.end method

.method private final rememberSharedElementState(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/SharedTransitionScope$OverlayClip;FZLandroidx/compose/runtime/Composer;I)Landroidx/compose/animation/SharedElementEntry;
    .locals 17
    .param p1, "sharedElement"    # Landroidx/compose/animation/SharedElement;
    .param p2, "boundsAnimation"    # Landroidx/compose/animation/BoundsAnimation;
    .param p3, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p4, "renderOnlyWhenVisible"    # Z
    .param p5, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p6, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .param p7, "zIndexInOverlay"    # F
    .param p8, "renderInOverlayDuringTransition"    # Z
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    .line 1312
    move-object/from16 v9, p9

    const v0, 0x3385b7b6

    const-string v1, "C(rememberSharedElementState)P(6!1,2,4,5!1,7)1311@72514L504:SharedTransitionScope.kt#xbi5r1"

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.SharedTransitionScopeImpl.rememberSharedElementState (SharedTransitionScope.kt:1311)"

    move/from16 v10, p10

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v10, p10

    :goto_0
    const v0, 0x68f6d7ae

    const-string v1, "CC(remember):SharedTransitionScope.kt#9igjgp"

    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v11, 0x0

    .local v11, "invalid$iv":Z
    move-object/from16 v12, p9

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 1567
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1568
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_1

    .line 1569
    const/16 v16, 0x0

    .line 1313
    .local v16, "$i$a$-cache-SharedTransitionScopeImpl$rememberSharedElementState$1":I
    new-instance v0, Landroidx/compose/animation/SharedElementEntry;

    .line 1314
    nop

    .line 1315
    nop

    .line 1316
    nop

    .line 1317
    nop

    .line 1319
    nop

    .line 1321
    nop

    .line 1318
    nop

    .line 1320
    nop

    .line 1313
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v5, p6

    move/from16 v8, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/SharedElementEntry;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V

    .line 1322
    nop

    .line 1569
    .end local v16    # "$i$a$-cache-SharedTransitionScopeImpl$rememberSharedElementState$1":I
    nop

    .line 1570
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1571
    move-object v14, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1572
    :cond_1
    move-object/from16 v7, p5

    .line 1567
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1
    nop

    .line 1312
    .end local v11    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v14, Landroidx/compose/animation/SharedElementEntry;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1324
    move-object v0, v14

    .local v0, "it":Landroidx/compose/animation/SharedElementEntry;
    const/4 v1, 0x0

    .line 1325
    .local v1, "$i$a$-also-SharedTransitionScopeImpl$rememberSharedElementState$2":I
    invoke-virtual {v7, v0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->setInternalState$animation(Landroidx/compose/animation/SharedElementEntry;)V

    .line 1327
    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroidx/compose/animation/SharedElementEntry;->setSharedElement(Landroidx/compose/animation/SharedElement;)V

    .line 1328
    move/from16 v4, p4

    invoke-virtual {v0, v4}, Landroidx/compose/animation/SharedElementEntry;->setRenderOnlyWhenVisible(Z)V

    .line 1329
    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Landroidx/compose/animation/SharedElementEntry;->setBoundsAnimation(Landroidx/compose/animation/BoundsAnimation;)V

    .line 1330
    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Landroidx/compose/animation/SharedElementEntry;->setPlaceholderSize(Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;)V

    .line 1331
    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Landroidx/compose/animation/SharedElementEntry;->setOverlayClip(Landroidx/compose/animation/SharedTransitionScope$OverlayClip;)V

    .line 1332
    move/from16 v8, p7

    invoke-virtual {v0, v8}, Landroidx/compose/animation/SharedElementEntry;->setZIndex(F)V

    .line 1333
    move/from16 v11, p8

    invoke-virtual {v0, v11}, Landroidx/compose/animation/SharedElementEntry;->setRenderInOverlayDuringTransition(Z)V

    .line 1334
    invoke-virtual {v0, v7}, Landroidx/compose/animation/SharedElementEntry;->setUserState(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)V

    .line 1335
    nop

    .line 1324
    .end local v0    # "it":Landroidx/compose/animation/SharedElementEntry;
    .end local v1    # "$i$a$-also-SharedTransitionScopeImpl$rememberSharedElementState$2":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1312
    :cond_2
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1324
    return-object v14
.end method

.method private setTransitionActive(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 989
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1558
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1559
    nop

    .line 989
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p1, "$this$sharedBoundsImpl"    # Landroidx/compose/ui/Modifier;
    .param p2, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p3, "parentTransition"    # Landroidx/compose/animation/core/Transition;
    .param p4, "visible"    # Lkotlin/jvm/functions/Function1;
    .param p5, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;
    .param p6, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p7, "renderOnlyWhenVisible"    # Z
    .param p8, "renderInOverlayDuringTransition"    # Z
    .param p9, "zIndexInOverlay"    # F
    .param p10, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/SharedTransitionScope$SharedContentState;",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/animation/BoundsTransform;",
            "Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;",
            "ZZF",
            "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1225
    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;

    move-object v4, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v10, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move/from16 v8, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;-><init>(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/SharedTransitionScopeImpl;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;FZLandroidx/compose/animation/BoundsTransform;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1299
    return-object v0
.end method

.method static synthetic sharedBoundsImpl$default(Landroidx/compose/animation/SharedTransitionScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 12

    .line 1215
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_0

    .line 1220
    sget-object v0, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;->Companion:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;->getContentSize()Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 1215
    :cond_0
    move-object/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sharedBoundsWithCallerManagedVisibility$animation$default(Landroidx/compose/animation/SharedTransitionScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;ZLandroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 1167
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    .line 1170
    sget-object p4, Landroidx/compose/animation/SharedTransitionDefaults;->INSTANCE:Landroidx/compose/animation/SharedTransitionDefaults;

    invoke-virtual {p4}, Landroidx/compose/animation/SharedTransitionDefaults;->getBoundsTransform()Landroidx/compose/animation/BoundsTransform;

    move-result-object p4

    move-object v4, p4

    goto :goto_0

    .line 1167
    :cond_0
    move-object v4, p4

    :goto_0
    and-int/lit8 p4, p9, 0x8

    if-eqz p4, :cond_1

    .line 1171
    sget-object p4, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;->Companion:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;

    invoke-virtual {p4}, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;->getContentSize()Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 1167
    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p9, 0x10

    if-eqz p4, :cond_2

    .line 1172
    const/4 p4, 0x1

    move v6, p4

    goto :goto_2

    .line 1167
    :cond_2
    move v6, p6

    :goto_2
    and-int/lit8 p4, p9, 0x20

    if-eqz p4, :cond_3

    .line 1173
    const/4 p4, 0x0

    move v7, p4

    goto :goto_3

    .line 1167
    :cond_3
    move/from16 v7, p7

    :goto_3
    and-int/lit8 p4, p9, 0x40

    if-eqz p4, :cond_4

    .line 1174
    invoke-static {}, Landroidx/compose/animation/SharedTransitionScopeKt;->access$getParentClip$p()Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    move-result-object p4

    move-object v8, p4

    goto :goto_4

    .line 1167
    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsWithCallerManagedVisibility$animation(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;ZLandroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private final sharedElementsFor(Ljava/lang/Object;)Landroidx/compose/animation/SharedElement;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 1376
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SharedElement;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/animation/SharedElement;

    invoke-direct {v0, p1, p0}, Landroidx/compose/animation/SharedElement;-><init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V

    move-object v1, v0

    .line 1573
    .local v1, "it":Landroidx/compose/animation/SharedElement;
    const/4 v2, 0x0

    .line 1376
    .local v2, "$i$a$-also-SharedTransitionScopeImpl$sharedElementsFor$1":I
    iget-object v3, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "it":Landroidx/compose/animation/SharedElement;
    .end local v2    # "$i$a$-also-SharedTransitionScopeImpl$sharedElementsFor$1":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public OverlayClip(Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .locals 1
    .param p1, "clipShape"    # Landroidx/compose/ui/graphics/Shape;

    .line 1188
    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;

    invoke-direct {v0, p1}, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;-><init>(Landroidx/compose/ui/graphics/Shape;)V

    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    return-object v0
.end method

.method public final drawInOverlay$animation(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 8
    .param p1, "scope"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 1381
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$sortBy$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1574
    .local v1, "$i$f$sortBy":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Landroidx/compose/animation/SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1;

    invoke-direct {v2}, Landroidx/compose/animation/SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1575
    :cond_0
    nop

    .line 1387
    .end local v0    # "$this$sortBy$iv":Ljava/util/List;
    .end local v1    # "$i$f$sortBy":I
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1576
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1577
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1578
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/animation/LayerRenderer;

    .local v5, "it":Landroidx/compose/animation/LayerRenderer;
    const/4 v6, 0x0

    .line 1387
    .local v6, "$i$a$-fastForEach-SharedTransitionScopeImpl$drawInOverlay$2":I
    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {v5, v7}, Landroidx/compose/animation/LayerRenderer;->drawInOverlay(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 1578
    .end local v5    # "it":Landroidx/compose/animation/LayerRenderer;
    .end local v6    # "$i$a$-fastForEach-SharedTransitionScopeImpl$drawInOverlay$2":I
    nop

    .line 1576
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1580
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 1388
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 985
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getInvalidateOverlay()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->invalidateOverlay:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getLookaheadRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 1354
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->_nullableLookaheadRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_0

    .line 1359
    return-object v0

    .line 1354
    :cond_0
    const/4 v0, 0x0

    .line 1355
    .local v0, "$i$a$-requireNotNull-SharedTransitionScopeImpl$lookaheadRoot$1":I
    nop

    .line 1358
    nop

    .line 1354
    .end local v0    # "$i$a$-requireNotNull-SharedTransitionScopeImpl$lookaheadRoot$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/LookaheadScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public final getNullableRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 1349
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->nullableRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public final getObserveAnimatingBlock$animation()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->observeAnimatingBlock:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 1339
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->nullableRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_0

    .line 1344
    return-object v0

    .line 1339
    :cond_0
    const/4 v0, 0x0

    .line 1340
    .local v0, "$i$a$-requireNotNull-SharedTransitionScopeImpl$root$1":I
    nop

    .line 1343
    nop

    .line 1339
    .end local v0    # "$i$a$-requireNotNull-SharedTransitionScopeImpl$root$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTestBlockToRun()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 992
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->testBlockToRun:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public isTransitionActive()Z
    .locals 4

    .line 989
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1557
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 989
    return v0
.end method

.method public localLookaheadPositionOf-au-aQtc(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LookaheadScope;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/layout/LookaheadScope;->localLookaheadPositionOf-au-aQtc(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final onEntryAdded$animation(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 12
    .param p1, "sharedElementState"    # Landroidx/compose/animation/SharedElementEntry;

    .line 1419
    invoke-virtual {p1}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    .local v0, "$this$onEntryAdded_u24lambda_u240":Landroidx/compose/animation/SharedElement;
    const/4 v1, 0x0

    .line 1420
    .local v1, "$i$a$-with-SharedTransitionScopeImpl$onEntryAdded$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/animation/SharedElement;->addEntry(Landroidx/compose/animation/SharedElementEntry;)V

    .line 1421
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->updateTransitionActiveness$animation()V

    .line 1423
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v2, Ljava/util/List;

    .local v2, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1581
    .local v3, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .line 1582
    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1583
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Landroidx/compose/animation/LayerRenderer;

    .local v8, "it":Landroidx/compose/animation/LayerRenderer;
    const/4 v9, 0x0

    .line 1424
    .local v9, "$i$a$-indexOfFirst-SharedTransitionScopeImpl$onEntryAdded$1$id$1":I
    instance-of v10, v8, Landroidx/compose/animation/SharedElementEntry;

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v10, v8

    check-cast v10, Landroidx/compose/animation/SharedElementEntry;

    goto :goto_1

    :cond_0
    move-object v10, v11

    :goto_1
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v11

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v10

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 1583
    .end local v8    # "it":Landroidx/compose/animation/LayerRenderer;
    .end local v9    # "$i$a$-indexOfFirst-SharedTransitionScopeImpl$onEntryAdded$1$id$1":I
    if-eqz v8, :cond_2

    .line 1584
    goto :goto_2

    .line 1585
    :cond_2
    nop

    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1587
    :cond_3
    move v4, v7

    .line 1423
    .end local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$indexOfFirst":I
    .end local v4    # "index$iv":I
    :goto_2
    nop

    .line 1422
    nop

    .line 1426
    .local v4, "id":I
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_5

    if-ne v4, v7, :cond_4

    goto :goto_3

    .line 1429
    :cond_4
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 1427
    :cond_5
    :goto_3
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 1430
    :goto_4
    nop

    .line 1419
    .end local v0    # "$this$onEntryAdded_u24lambda_u240":Landroidx/compose/animation/SharedElement;
    .end local v1    # "$i$a$-with-SharedTransitionScopeImpl$onEntryAdded$1":I
    .end local v4    # "id":I
    nop

    .line 1432
    return-void
.end method

.method public final onEntryRemoved$animation(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 9
    .param p1, "sharedElementState"    # Landroidx/compose/animation/SharedElementEntry;

    .line 1391
    nop

    .line 1397
    invoke-virtual {p1}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    .local v0, "$this$onEntryRemoved_u24lambda_u240":Landroidx/compose/animation/SharedElement;
    const/4 v1, 0x0

    .line 1398
    .local v1, "$i$a$-with-SharedTransitionScopeImpl$onEntryRemoved$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/animation/SharedElement;->removeEntry(Landroidx/compose/animation/SharedElementEntry;)V

    .line 1399
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->updateTransitionActiveness$animation()V

    .line 1400
    iget-object v2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 1401
    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getAllEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1402
    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/animation/SharedTransitionScopeImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$1$1;

    const/4 v4, 0x0

    invoke-direct {v2, v0, p1, v4}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$1$1;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/SharedElementEntry;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1415
    :cond_0
    nop

    .line 1397
    .end local v0    # "$this$onEntryRemoved_u24lambda_u240":Landroidx/compose/animation/SharedElement;
    .end local v1    # "$i$a$-with-SharedTransitionScopeImpl$onEntryRemoved$1":I
    nop

    .line 1416
    return-void
.end method

.method public final onLayerRendererCreated$animation(Landroidx/compose/animation/LayerRenderer;)V
    .locals 1
    .param p1, "renderer"    # Landroidx/compose/animation/LayerRenderer;

    .line 1435
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 1436
    return-void
.end method

.method public final onLayerRendererRemoved$animation(Landroidx/compose/animation/LayerRenderer;)V
    .locals 1
    .param p1, "renderer"    # Landroidx/compose/animation/LayerRenderer;

    .line 1439
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->renderers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 1440
    return-void
.end method

.method public renderInSharedTransitionScopeOverlay(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p1, "$this$renderInSharedTransitionScopeOverlay"    # Landroidx/compose/ui/Modifier;
    .param p2, "zIndexInOverlay"    # F
    .param p3, "renderInOverlay"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1001
    nop

    .line 1002
    new-instance v0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;

    .line 1003
    nop

    .line 1004
    nop

    .line 1005
    nop

    .line 1002
    invoke-direct {v0, p0, p3, p2}, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;-><init>(Landroidx/compose/animation/SharedTransitionScopeImpl;Lkotlin/jvm/functions/Function0;F)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1001
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1007
    return-object v0
.end method

.method public final setInvalidateOverlay(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 988
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->invalidateOverlay:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setLookaheadRoot$animation(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1361
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->_nullableLookaheadRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1362
    return-void
.end method

.method public final setRoot$animation(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1346
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->nullableRoot:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1347
    return-void
.end method

.method public final setTestBlockToRun(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 992
    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->testBlockToRun:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public sharedBounds(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$ResizeMode;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p1, "$this$sharedBounds"    # Landroidx/compose/ui/Modifier;
    .param p2, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p3, "animatedVisibilityScope"    # Landroidx/compose/animation/AnimatedVisibilityScope;
    .param p4, "enter"    # Landroidx/compose/animation/EnterTransition;
    .param p5, "exit"    # Landroidx/compose/animation/ExitTransition;
    .param p6, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;
    .param p7, "resizeMode"    # Landroidx/compose/animation/SharedTransitionScope$ResizeMode;
    .param p8, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p9, "renderInOverlayDuringTransition"    # Z
    .param p10, "zIndexInOverlay"    # F
    .param p11, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 1044
    invoke-interface {p3}, Landroidx/compose/animation/AnimatedVisibilityScope;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v3

    .line 1042
    nop

    .line 1043
    nop

    .line 1044
    nop

    .line 1042
    sget-object v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBounds$1;->INSTANCE:Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBounds$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1046
    nop

    .line 1047
    nop

    .line 1051
    nop

    .line 1048
    nop

    .line 1049
    nop

    .line 1050
    nop

    .line 1042
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 1053
    new-instance v4, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBounds$2;

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBounds$2;-><init>(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/SharedTransitionScope$ResizeMode;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v3, v1, v4, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1080
    return-object v0
.end method

.method public final sharedBoundsWithCallerManagedVisibility$animation(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;ZLandroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;
    .locals 13
    .param p1, "$this$sharedBoundsWithCallerManagedVisibility"    # Landroidx/compose/ui/Modifier;
    .param p2, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p3, "visible"    # Z
    .param p4, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;
    .param p5, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p6, "renderInOverlayDuringTransition"    # Z
    .param p7, "zIndexInOverlay"    # F
    .param p8, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 1176
    nop

    .line 1177
    nop

    .line 1178
    nop

    .line 1176
    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsWithCallerManagedVisibility$1;

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsWithCallerManagedVisibility$1;-><init>(Z)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1180
    nop

    .line 1181
    nop

    .line 1182
    nop

    .line 1183
    nop

    .line 1184
    nop

    .line 1185
    nop

    .line 1176
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1186
    return-object v0
.end method

.method public sharedElement(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p1, "$this$sharedElement"    # Landroidx/compose/ui/Modifier;
    .param p2, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p3, "animatedVisibilityScope"    # Landroidx/compose/animation/AnimatedVisibilityScope;
    .param p4, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;
    .param p5, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p6, "renderInOverlayDuringTransition"    # Z
    .param p7, "zIndexInOverlay"    # F
    .param p8, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 1018
    nop

    .line 1019
    nop

    .line 1020
    invoke-interface {p3}, Landroidx/compose/animation/AnimatedVisibilityScope;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v3

    .line 1018
    sget-object v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedElement$1;->INSTANCE:Landroidx/compose/animation/SharedTransitionScopeImpl$sharedElement$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1022
    nop

    .line 1023
    nop

    .line 1024
    nop

    .line 1025
    nop

    .line 1026
    nop

    .line 1027
    nop

    .line 1018
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 1028
    return-object v3
.end method

.method public sharedElementWithCallerManagedVisibility(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;ZLandroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;
    .locals 13
    .param p1, "$this$sharedElementWithCallerManagedVisibility"    # Landroidx/compose/ui/Modifier;
    .param p2, "sharedContentState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p3, "visible"    # Z
    .param p4, "boundsTransform"    # Landroidx/compose/animation/BoundsTransform;
    .param p5, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p6, "renderInOverlayDuringTransition"    # Z
    .param p7, "zIndexInOverlay"    # F
    .param p8, "clipInOverlayDuringTransition"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 1091
    nop

    .line 1092
    nop

    .line 1093
    nop

    .line 1091
    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedElementWithCallerManagedVisibility$1;

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedElementWithCallerManagedVisibility$1;-><init>(Z)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1095
    nop

    .line 1096
    nop

    .line 1097
    nop

    .line 1098
    nop

    .line 1099
    nop

    .line 1100
    nop

    .line 1091
    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedBoundsImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/BoundsTransform;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZZFLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1101
    return-object v0
.end method

.method public skipToLookaheadSize(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 3
    .param p1, "$this$skipToLookaheadSize"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 995
    new-instance v0, Landroidx/compose/animation/SkipToLookaheadSizeElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2, v1}, Landroidx/compose/animation/SkipToLookaheadSizeElement;-><init>(Landroidx/compose/animation/ScaleToBoundsImpl;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->$$delegate_0:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/LookaheadScope;->toLookaheadCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public final updateTransitionActiveness$animation()V
    .locals 7

    .line 1196
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$any$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1560
    .local v1, "$i$f$any":I
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1561
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .local v5, "$i$a$-any-SharedTransitionScopeImpl$updateTransitionActiveness$isActive$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/SharedElement;

    .line 1196
    .local v6, "element":Landroidx/compose/animation/SharedElement;
    invoke-virtual {v6}, Landroidx/compose/animation/SharedElement;->isAnimating()Z

    move-result v5

    .line 1561
    .end local v5    # "$i$a$-any-SharedTransitionScopeImpl$updateTransitionActiveness$isActive$1":I
    .end local v6    # "element":Landroidx/compose/animation/SharedElement;
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 1562
    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    :cond_2
    nop

    .line 1196
    .end local v0    # "$this$any$iv":Ljava/util/Map;
    .end local v1    # "$i$f$any":I
    :goto_0
    nop

    .line 1197
    .local v3, "isActive":Z
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    if-eq v3, v0, :cond_4

    .line 1198
    invoke-direct {p0, v3}, Landroidx/compose/animation/SharedTransitionScopeImpl;->setTransitionActive(Z)V

    .line 1199
    if-nez v3, :cond_4

    .line 1200
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1563
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .restart local v4    # "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .local v5, "$i$a$-forEach-SharedTransitionScopeImpl$updateTransitionActiveness$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/SharedElement;

    .line 1200
    .restart local v6    # "element":Landroidx/compose/animation/SharedElement;
    invoke-virtual {v6}, Landroidx/compose/animation/SharedElement;->onSharedTransitionFinished()V

    .line 1563
    .end local v5    # "$i$a$-forEach-SharedTransitionScopeImpl$updateTransitionActiveness$1":I
    .end local v6    # "element":Landroidx/compose/animation/SharedElement;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 1564
    :cond_3
    nop

    .line 1203
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    :cond_4
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->sharedElements:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1565
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .restart local v4    # "element$iv":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .local v5, "$i$a$-forEach-SharedTransitionScopeImpl$updateTransitionActiveness$2":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/SharedElement;

    .line 1203
    .restart local v6    # "element":Landroidx/compose/animation/SharedElement;
    invoke-virtual {v6}, Landroidx/compose/animation/SharedElement;->updateMatch$animation()V

    .line 1565
    .end local v5    # "$i$a$-forEach-SharedTransitionScopeImpl$updateTransitionActiveness$2":I
    .end local v6    # "element":Landroidx/compose/animation/SharedElement;
    nop

    .end local v4    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_2

    .line 1566
    :cond_5
    nop

    .line 1204
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
