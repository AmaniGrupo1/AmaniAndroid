.class public final Landroidx/compose/animation/SharedElementEntry;
.super Ljava/lang/Object;
.source "SharedElementEntry.kt"

# interfaces
.implements Landroidx/compose/animation/LayerRenderer;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedElementEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedElementEntry.kt\nandroidx/compose/animation/SharedElementEntry\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 7 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 8 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,147:1\n85#2:148\n117#2,2:149\n85#2:154\n117#2,2:155\n85#2:157\n117#2,2:158\n85#2:160\n117#2,2:161\n85#2:163\n117#2,2:164\n85#2:166\n117#2,2:167\n85#2:169\n117#2,2:170\n85#2:172\n117#2,2:173\n85#2:215\n117#2,2:216\n80#3:151\n113#3,2:152\n1#4:175\n71#5:176\n65#5:177\n73#5:180\n69#5:181\n60#6:178\n70#6:182\n22#7:179\n221#8,5:183\n249#8,9:188\n120#8,7:197\n259#8,4:204\n120#8,7:208\n*S KotlinDebug\n*F\n+ 1 SharedElementEntry.kt\nandroidx/compose/animation/SharedElementEntry\n*L\n44#1:148\n44#1:149,2\n47#1:154\n47#1:155,2\n48#1:157\n48#1:158,2\n49#1:160\n49#1:161,2\n50#1:163\n50#1:164,2\n51#1:166\n51#1:167,2\n52#1:169\n52#1:170,2\n53#1:172\n53#1:173,2\n103#1:215\n103#1:216,2\n45#1:151\n45#1:152,2\n80#1:176\n80#1:177\n80#1:180\n80#1:181\n80#1:178\n80#1:182\n80#1:179\n88#1:183,5\n88#1:188,9\n88#1:197,7\n88#1:204,4\n89#1:208,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u00080\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002BG\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010C\u001a\u00020BJ\u0010\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MH\u0016J\u0008\u0010h\u001a\u00020KH\u0016J\u0008\u0010i\u001a\u00020KH\u0016J\u0008\u0010j\u001a\u00020KH\u0016R+\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R+\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00118V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR+\u0010\r\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u001a\u001a\u0004\u0008!\u0010\u0016\"\u0004\u0008\"\u0010\u0018R+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u001a\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R+\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u001a\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R+\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00088F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00082\u0010\u001a\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R+\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00085\u0010\u001a\u001a\u0004\u00083\u0010\u0016\"\u0004\u00084\u0010\u0018R+\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u001a\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R+\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u001a\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0011\u0010@\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010\u0016R\u001c\u0010D\u001a\u0004\u0018\u00010EX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001c\u0010N\u001a\u0004\u0018\u00010\u0000X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u0011\u0010S\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010\u0016R\u001c\u0010U\u001a\u0004\u0018\u00010VX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR/\u0010\\\u001a\u0004\u0018\u00010[2\u0008\u0010\u0014\u001a\u0004\u0018\u00010[8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008a\u0010\u001a\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u0014\u0010b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u0016R\u0014\u0010d\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010\u0016R\u0011\u0010f\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u0016\u00a8\u0006k"
    }
    d2 = {
        "Landroidx/compose/animation/SharedElementEntry;",
        "Landroidx/compose/animation/LayerRenderer;",
        "Landroidx/compose/runtime/RememberObserver;",
        "sharedElement",
        "Landroidx/compose/animation/SharedElement;",
        "boundsAnimation",
        "Landroidx/compose/animation/BoundsAnimation;",
        "placeholderSize",
        "Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;",
        "renderOnlyWhenVisible",
        "",
        "overlayClip",
        "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
        "renderInOverlayDuringTransition",
        "userState",
        "Landroidx/compose/animation/SharedTransitionScope$SharedContentState;",
        "zIndex",
        "",
        "<init>",
        "(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V",
        "<set-?>",
        "isAttached",
        "()Z",
        "setAttached",
        "(Z)V",
        "isAttached$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getZIndex",
        "()F",
        "setZIndex",
        "(F)V",
        "zIndex$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "getRenderInOverlayDuringTransition",
        "setRenderInOverlayDuringTransition",
        "renderInOverlayDuringTransition$delegate",
        "getSharedElement",
        "()Landroidx/compose/animation/SharedElement;",
        "setSharedElement",
        "(Landroidx/compose/animation/SharedElement;)V",
        "sharedElement$delegate",
        "getBoundsAnimation",
        "()Landroidx/compose/animation/BoundsAnimation;",
        "setBoundsAnimation",
        "(Landroidx/compose/animation/BoundsAnimation;)V",
        "boundsAnimation$delegate",
        "getPlaceholderSize",
        "()Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;",
        "setPlaceholderSize",
        "(Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;)V",
        "placeholderSize$delegate",
        "getRenderOnlyWhenVisible",
        "setRenderOnlyWhenVisible",
        "renderOnlyWhenVisible$delegate",
        "getOverlayClip",
        "()Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
        "setOverlayClip",
        "(Landroidx/compose/animation/SharedTransitionScope$OverlayClip;)V",
        "overlayClip$delegate",
        "getUserState",
        "()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;",
        "setUserState",
        "(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)V",
        "userState$delegate",
        "isEnabled",
        "calculateTargetBounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "previousTargetBoundsBeforeLosingTarget",
        "clipPathInOverlay",
        "Landroidx/compose/ui/graphics/Path;",
        "getClipPathInOverlay$animation",
        "()Landroidx/compose/ui/graphics/Path;",
        "setClipPathInOverlay$animation",
        "(Landroidx/compose/ui/graphics/Path;)V",
        "drawInOverlay",
        "",
        "drawScope",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "parentState",
        "getParentState",
        "()Landroidx/compose/animation/SharedElementEntry;",
        "setParentState",
        "(Landroidx/compose/animation/SharedElementEntry;)V",
        "target",
        "getTarget",
        "boundsProvider",
        "Landroidx/compose/animation/BoundsProvider;",
        "getBoundsProvider",
        "()Landroidx/compose/animation/BoundsProvider;",
        "setBoundsProvider",
        "(Landroidx/compose/animation/BoundsProvider;)V",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "layer",
        "getLayer",
        "()Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "setLayer",
        "(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V",
        "layer$delegate",
        "shouldRenderAtAll",
        "getShouldRenderAtAll",
        "shouldRenderInOverlay",
        "getShouldRenderInOverlay$animation",
        "shouldRenderInPlace",
        "getShouldRenderInPlace",
        "onRemembered",
        "onForgotten",
        "onAbandoned",
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
.field private final boundsAnimation$delegate:Landroidx/compose/runtime/MutableState;

.field private boundsProvider:Landroidx/compose/animation/BoundsProvider;

.field private clipPathInOverlay:Landroidx/compose/ui/graphics/Path;

.field private final isAttached$delegate:Landroidx/compose/runtime/MutableState;

.field private final layer$delegate:Landroidx/compose/runtime/MutableState;

.field private final overlayClip$delegate:Landroidx/compose/runtime/MutableState;

.field private parentState:Landroidx/compose/animation/SharedElementEntry;

.field private final placeholderSize$delegate:Landroidx/compose/runtime/MutableState;

.field private final renderInOverlayDuringTransition$delegate:Landroidx/compose/runtime/MutableState;

.field private final renderOnlyWhenVisible$delegate:Landroidx/compose/runtime/MutableState;

.field private final sharedElement$delegate:Landroidx/compose/runtime/MutableState;

.field private final userState$delegate:Landroidx/compose/runtime/MutableState;

.field private final zIndex$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/SharedElementEntry;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V
    .locals 3
    .param p1, "sharedElement"    # Landroidx/compose/animation/SharedElement;
    .param p2, "boundsAnimation"    # Landroidx/compose/animation/BoundsAnimation;
    .param p3, "placeholderSize"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .param p4, "renderOnlyWhenVisible"    # Z
    .param p5, "overlayClip"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .param p6, "renderInOverlayDuringTransition"    # Z
    .param p7, "userState"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .param p8, "zIndex"    # F

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->isAttached$delegate:Landroidx/compose/runtime/MutableState;

    .line 45
    invoke-static {p8}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->zIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 47
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderInOverlayDuringTransition$delegate:Landroidx/compose/runtime/MutableState;

    .line 48
    invoke-static {p1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->sharedElement$delegate:Landroidx/compose/runtime/MutableState;

    .line 49
    invoke-static {p2, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->boundsAnimation$delegate:Landroidx/compose/runtime/MutableState;

    .line 50
    invoke-static {p3, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->placeholderSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 51
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderOnlyWhenVisible$delegate:Landroidx/compose/runtime/MutableState;

    .line 52
    invoke-static {p5, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->overlayClip$delegate:Landroidx/compose/runtime/MutableState;

    .line 53
    invoke-static {p7, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->userState$delegate:Landroidx/compose/runtime/MutableState;

    .line 103
    invoke-static {v1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->layer$delegate:Landroidx/compose/runtime/MutableState;

    .line 33
    return-void
.end method

.method private final getShouldRenderAtAll()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->getTarget()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getMatchIsOrHasBeenConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getActiveMatchFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getRenderOnlyWhenVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final calculateTargetBounds(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p1, "previousTargetBoundsBeforeLosingTarget"    # Landroidx/compose/ui/geometry/Rect;

    .line 59
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getUserState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->getConfig$animation()Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    move-result-object v0

    .local v0, "$this$calculateTargetBounds_u24lambda_u240":Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;
    const/4 v1, 0x0

    .line 60
    .local v1, "$i$a$-with-SharedElementEntry$calculateTargetBounds$1":I
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getUserState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    move-result-object v2

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getLookaheadRoot$animation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    .line 60
    invoke-interface {v0, v2, p1, v3, v4}, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;->alternativeTargetBoundsInTransitionScopeAfterRemoval-cSwnlzA(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 63
    nop

    .line 59
    .end local v0    # "$this$calculateTargetBounds_u24lambda_u240":Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;
    .end local v1    # "$i$a$-with-SharedElementEntry$calculateTargetBounds$1":I
    return-object v2
.end method

.method public drawInOverlay(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 29
    .param p1, "drawScope"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/SharedElementEntry;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    .line 75
    .local v1, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v2

    .line 76
    .local v2, "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    invoke-virtual {v2}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v3, v0

    .line 78
    .local v3, "currentBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/SharedElementEntry;->getShouldRenderInOverlay$animation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    move-object/from16 v4, p1

    .local v4, "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v5, 0x0

    .line 80
    .local v5, "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    move-wide v8, v6

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v0, 0x0

    .line 176
    .local v0, "$i$f$component1-impl":I
    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    const/4 v12, 0x0

    .line 177
    .local v12, "$i$f$getX-impl":I
    move-wide v13, v10

    .local v13, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 178
    .local v15, "$i$f$unpackFloat1":I
    const/16 v16, 0x20

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .end local v3    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    .local v17, "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .local v18, "currentBounds":Landroidx/compose/ui/geometry/Rect;
    shr-long v2, v13, v16

    long-to-int v2, v2

    .local v2, "bits$iv$iv$iv$iv":I
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$f$floatFromBits":I
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 178
    .end local v2    # "bits$iv$iv$iv$iv":I
    .end local v3    # "$i$f$floatFromBits":I
    nop

    .line 177
    .end local v13    # "value$iv$iv$iv":J
    .end local v15    # "$i$f$unpackFloat1":I
    nop

    .line 176
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    .end local v12    # "$i$f$getX-impl":I
    nop

    .line 80
    .end local v0    # "$i$f$component1-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .local v2, "x":F
    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v0, 0x0

    .line 180
    .local v0, "$i$f$component2-impl":I
    nop

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    const/4 v3, 0x0

    .line 181
    .local v3, "$i$f$getY-impl":I
    nop

    .local v10, "value$iv$iv$iv":J
    const/4 v12, 0x0

    .line 182
    .local v12, "$i$f$unpackFloat2":I
    const-wide v13, 0xffffffffL

    and-long/2addr v13, v10

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv$iv":I
    const/4 v14, 0x0

    .line 179
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 182
    .end local v13    # "bits$iv$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 181
    .end local v10    # "value$iv$iv$iv":J
    .end local v12    # "$i$f$unpackFloat2":I
    nop

    .line 180
    .end local v3    # "$i$f$getY-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv$iv":J
    nop

    .line 80
    .end local v0    # "$i$f$component2-impl":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    nop

    .line 81
    .local v13, "y":F
    nop

    .line 88
    move-object/from16 v3, p0

    iget-object v0, v3, Landroidx/compose/animation/SharedElementEntry;->clipPathInOverlay:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_2

    move-object v6, v0

    .line 175
    .local v6, "it":Landroidx/compose/ui/graphics/Path;
    const/4 v7, 0x0

    .line 88
    .local v7, "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    move-object v8, v6

    .local v8, "path$iv":Landroidx/compose/ui/graphics/Path;
    move-object v9, v4

    .line 183
    .local v9, "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 185
    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getIntersect-rtfAjoo()I

    move-result v10

    .line 183
    .local v10, "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    const/4 v11, 0x0

    .line 187
    .local v11, "$i$f$clipPath-KD09W0M":I
    move-object v12, v9

    .local v12, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v14, 0x0

    .line 188
    .local v14, "$i$f$withTransform":I
    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v15

    .local v15, "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/16 v16, 0x0

    .line 192
    .local v16, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    move/from16 v19, v2

    .end local v2    # "x":F
    .local v19, "x":F
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v2

    .line 193
    .local v2, "previousSize$iv$iv":J
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 194
    nop

    .line 195
    :try_start_0
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    .local v0, "$this$clipPath_KD09W0M_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/16 v20, 0x0

    .line 187
    .local v20, "$i$a$-withTransform-DrawScopeKt$clipPath$1$iv":I
    invoke-interface {v0, v8, v10}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    .line 195
    .end local v0    # "$this$clipPath_KD09W0M_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v20    # "$i$a$-withTransform-DrawScopeKt$clipPath$1$iv":I
    nop

    .line 196
    move-object/from16 v20, v12

    .local v20, "$this$drawInOverlay_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v21, 0x0

    .line 88
    .local v21, "$i$a$-clipPath-KD09W0M$default-SharedElementEntry$drawInOverlay$1$1$1":I
    move v0, v13

    .local v0, "top$iv":F
    move-object/from16 v22, v20

    .local v22, "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    move/from16 v23, v19

    .local v23, "left$iv":F
    move/from16 v24, v0

    .end local v0    # "top$iv":F
    .local v24, "top$iv":F
    const/16 v25, 0x0

    .line 197
    .local v25, "$i$f$translate":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v26, v4

    move/from16 v4, v23

    move/from16 v23, v5

    move/from16 v5, v24

    .end local v24    # "top$iv":F
    .local v4, "left$iv":F
    .local v5, "top$iv":F
    .local v23, "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .local v26, "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    :try_start_1
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    nop

    .line 199
    move-object/from16 v0, v22

    .local v0, "$this$drawInOverlay_u24lambda_u240_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v24, 0x0

    .line 88
    .local v24, "$i$a$-translate-SharedElementEntry$drawInOverlay$1$1$1$1":I
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .end local v0    # "$this$drawInOverlay_u24lambda_u240_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v24    # "$i$a$-translate-SharedElementEntry$drawInOverlay$1$1$1$1":I
    nop

    .line 201
    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v24, v6

    .end local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .local v24, "it":Landroidx/compose/ui/graphics/Path;
    neg-float v6, v4

    move/from16 v27, v7

    .end local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .local v27, "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    neg-float v7, v5

    :try_start_4
    invoke-interface {v0, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    nop

    .line 203
    nop

    .line 88
    .end local v4    # "left$iv":F
    .end local v5    # "top$iv":F
    .end local v22    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v25    # "$i$f$translate":I
    nop

    .line 196
    .end local v20    # "$this$drawInOverlay_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v21    # "$i$a$-clipPath-KD09W0M$default-SharedElementEntry$drawInOverlay$1$1$1":I
    nop

    .line 204
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 205
    invoke-interface {v15, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 206
    nop

    .line 207
    nop

    .line 188
    .end local v2    # "previousSize$iv$iv":J
    .end local v15    # "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v16    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    nop

    .line 207
    nop

    .line 187
    .end local v12    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v14    # "$i$f$withTransform":I
    nop

    .line 88
    .end local v8    # "path$iv":Landroidx/compose/ui/graphics/Path;
    .end local v9    # "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v10    # "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    .end local v11    # "$i$f$clipPath-KD09W0M":I
    nop

    .end local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    goto :goto_1

    .line 201
    .restart local v2    # "previousSize$iv$iv":J
    .restart local v4    # "left$iv":F
    .restart local v5    # "top$iv":F
    .restart local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local v8    # "path$iv":Landroidx/compose/ui/graphics/Path;
    .restart local v9    # "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v10    # "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    .restart local v11    # "$i$f$clipPath-KD09W0M":I
    .restart local v12    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v14    # "$i$f$withTransform":I
    .restart local v15    # "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .restart local v16    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .restart local v20    # "$this$drawInOverlay_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v21    # "$i$a$-clipPath-KD09W0M$default-SharedElementEntry$drawInOverlay$1$1$1":I
    .restart local v22    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v25    # "$i$f$translate":I
    :catchall_0
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v27, v7

    .end local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v6

    neg-float v7, v4

    move-object/from16 v28, v0

    neg-float v0, v5

    invoke-interface {v6, v7, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .end local v1    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .end local v2    # "previousSize$iv$iv":J
    .end local v8    # "path$iv":Landroidx/compose/ui/graphics/Path;
    .end local v9    # "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v10    # "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    .end local v11    # "$i$f$clipPath-KD09W0M":I
    .end local v12    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v13    # "y":F
    .end local v14    # "$i$f$withTransform":I
    .end local v15    # "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v16    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .end local v17    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .end local v18    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v19    # "x":F
    .end local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .end local p1    # "drawScope":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    throw v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    .end local v4    # "left$iv":F
    .end local v5    # "top$iv":F
    .end local v20    # "$this$drawInOverlay_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v21    # "$i$a$-clipPath-KD09W0M$default-SharedElementEntry$drawInOverlay$1$1$1":I
    .end local v22    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v25    # "$i$f$translate":I
    .restart local v1    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .restart local v2    # "previousSize$iv$iv":J
    .restart local v8    # "path$iv":Landroidx/compose/ui/graphics/Path;
    .restart local v9    # "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v10    # "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    .restart local v11    # "$i$f$clipPath-KD09W0M":I
    .restart local v12    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v13    # "y":F
    .restart local v14    # "$i$f$withTransform":I
    .restart local v15    # "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .restart local v16    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .restart local v17    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .restart local v18    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v19    # "x":F
    .restart local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local p1    # "drawScope":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    :catchall_2
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v27, v7

    .end local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    goto :goto_0

    .end local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .local v4, "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v5, "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    :catchall_3
    move-exception v0

    move-object/from16 v26, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v27, v7

    .end local v4    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v5    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v6    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v7    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .restart local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .restart local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    :goto_0
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 205
    invoke-interface {v15, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw v0

    .line 89
    .end local v8    # "path$iv":Landroidx/compose/ui/graphics/Path;
    .end local v9    # "$this$clipPath_u2dKD09W0M_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v10    # "$v$c$androidx-compose-ui-graphics-ClipOp$-clipOp$0$iv":I
    .end local v11    # "$i$f$clipPath-KD09W0M":I
    .end local v12    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v14    # "$i$f$withTransform":I
    .end local v15    # "$this$withTransform_u24lambda_u240$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v16    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .end local v19    # "x":F
    .end local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v24    # "it":Landroidx/compose/ui/graphics/Path;
    .end local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v27    # "$i$a$-let-SharedElementEntry$drawInOverlay$1$1":I
    .local v2, "x":F
    .restart local v4    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v5    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    :cond_2
    move/from16 v19, v2

    move-object/from16 v26, v4

    move/from16 v23, v5

    .end local v2    # "x":F
    .end local v4    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v5    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v19    # "x":F
    .restart local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    move v2, v13

    .local v2, "top$iv":F
    move/from16 v3, v19

    .local v3, "left$iv":F
    .local v4, "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v5, 0x0

    .line 208
    .local v5, "$i$f$translate":I
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 209
    nop

    .line 210
    move-object v0, v4

    .local v0, "$this$drawInOverlay_u24lambda_u240_u241":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v6, 0x0

    .line 89
    .local v6, "$i$a$-translate-SharedElementEntry$drawInOverlay$1$2":I
    :try_start_6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 210
    .end local v0    # "$this$drawInOverlay_u24lambda_u240_u241":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v6    # "$i$a$-translate-SharedElementEntry$drawInOverlay$1$2":I
    nop

    .line 212
    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float v6, v3

    neg-float v7, v2

    invoke-interface {v0, v6, v7}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 213
    nop

    .line 214
    nop

    .line 90
    .end local v2    # "top$iv":F
    .end local v3    # "left$iv":F
    .end local v4    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v5    # "$i$f$translate":I
    :goto_1
    nop

    .line 79
    .end local v13    # "y":F
    .end local v19    # "x":F
    .end local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    goto :goto_2

    .line 212
    .restart local v2    # "top$iv":F
    .restart local v3    # "left$iv":F
    .restart local v4    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .restart local v5    # "$i$f$translate":I
    .restart local v13    # "y":F
    .restart local v19    # "x":F
    .restart local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .restart local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    :catchall_4
    move-exception v0

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v6

    neg-float v7, v3

    neg-float v8, v2

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw v0

    .line 78
    .end local v4    # "$this$translate$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v5    # "$i$f$translate":I
    .end local v13    # "y":F
    .end local v17    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .end local v18    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v19    # "x":F
    .end local v23    # "$i$a$-with-SharedElementEntry$drawInOverlay$1":I
    .end local v26    # "$this$drawInOverlay_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v2, "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .local v3, "currentBounds":Landroidx/compose/ui/geometry/Rect;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 92
    .end local v2    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .end local v3    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    .restart local v17    # "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .restart local v18    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    :goto_2
    return-void
.end method

.method public final getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;
    .locals 4

    .line 49
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->boundsAnimation$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 160
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/BoundsAnimation;

    .line 49
    return-object v0
.end method

.method public final getBoundsProvider()Landroidx/compose/animation/BoundsProvider;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->boundsProvider:Landroidx/compose/animation/BoundsProvider;

    return-object v0
.end method

.method public final getClipPathInOverlay$animation()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->clipPathInOverlay:Landroidx/compose/ui/graphics/Path;

    return-object v0
.end method

.method public final getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 4

    .line 103
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->layer$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 215
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 103
    return-object v0
.end method

.method public final getOverlayClip()Landroidx/compose/animation/SharedTransitionScope$OverlayClip;
    .locals 4

    .line 52
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->overlayClip$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 169
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 52
    return-object v0
.end method

.method public getParentState()Landroidx/compose/animation/SharedElementEntry;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->parentState:Landroidx/compose/animation/SharedElementEntry;

    return-object v0
.end method

.method public final getPlaceholderSize()Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;
    .locals 4

    .line 50
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->placeholderSize$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    .line 50
    return-object v0
.end method

.method public final getRenderInOverlayDuringTransition()Z
    .locals 4

    .line 47
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderInOverlayDuringTransition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 154
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

    .line 47
    return v0
.end method

.method public final getRenderOnlyWhenVisible()Z
    .locals 4

    .line 51
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderOnlyWhenVisible$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 166
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

    .line 51
    return v0
.end method

.method public final getSharedElement()Landroidx/compose/animation/SharedElement;
    .locals 4

    .line 48
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->sharedElement$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SharedElement;

    .line 48
    return-object v0
.end method

.method public final getShouldRenderInOverlay$animation()Z
    .locals 1

    .line 117
    invoke-direct {p0}, Landroidx/compose/animation/SharedElementEntry;->getShouldRenderAtAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getBoundsTransformIsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getRenderInOverlayDuringTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getShouldRenderInPlace()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getBoundsTransformIsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getShouldRenderInOverlay$animation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/animation/SharedElementEntry;->getShouldRenderAtAll()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getTarget()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getBoundsAnimation()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->getTarget()Z

    move-result v0

    return v0
.end method

.method public final getUserState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .locals 4

    .line 53
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->userState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    .line 53
    return-object v0
.end method

.method public getZIndex()F
    .locals 4

    .line 45
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->zIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 45
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    return v0
.end method

.method public final isAttached()Z
    .locals 4

    .line 44
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->isAttached$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 148
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

    .line 44
    return v0
.end method

.method public final isEnabled()Z
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getUserState()Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    move-result-object v0

    .line 175
    .local v0, "$this$_get_isEnabled__u24lambda_u240":Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$a$-with-SharedElementEntry$isEnabled$1":I
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->isEnabledByUser$animation()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "$this$_get_isEnabled__u24lambda_u240":Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .end local v1    # "$i$a$-with-SharedElementEntry$isEnabled$1":I
    :goto_0
    return v2
.end method

.method public onAbandoned()V
    .locals 0

    .line 139
    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->onEntryRemoved$animation(Landroidx/compose/animation/SharedElementEntry;)V

    .line 136
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->invalidateTargetBoundsProvider()V

    .line 137
    return-void
.end method

.method public onRemembered()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->onEntryAdded$animation(Landroidx/compose/animation/SharedElementEntry;)V

    .line 131
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->getSharedElement()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->invalidateTargetBoundsProvider()V

    .line 132
    return-void
.end method

.method public final setAttached(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 44
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->isAttached$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 149
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 150
    nop

    .line 44
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setBoundsAnimation(Landroidx/compose/animation/BoundsAnimation;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/BoundsAnimation;

    .line 49
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->boundsAnimation$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 161
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 162
    nop

    .line 49
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setBoundsProvider(Landroidx/compose/animation/BoundsProvider;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/BoundsProvider;

    .line 99
    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->boundsProvider:Landroidx/compose/animation/BoundsProvider;

    return-void
.end method

.method public final setClipPathInOverlay$animation(Landroidx/compose/ui/graphics/Path;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/graphics/Path;

    .line 67
    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->clipPathInOverlay:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method public final setLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 103
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->layer$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 217
    nop

    .line 103
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setOverlayClip(Landroidx/compose/animation/SharedTransitionScope$OverlayClip;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    .line 52
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->overlayClip$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 170
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 171
    nop

    .line 52
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public setParentState(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedElementEntry;

    .line 94
    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->parentState:Landroidx/compose/animation/SharedElementEntry;

    return-void
.end method

.method public final setPlaceholderSize(Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    .line 50
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->placeholderSize$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 164
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 165
    nop

    .line 50
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setRenderInOverlayDuringTransition(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 47
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderInOverlayDuringTransition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 155
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 156
    nop

    .line 47
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setRenderOnlyWhenVisible(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 51
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->renderOnlyWhenVisible$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 168
    nop

    .line 51
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setSharedElement(Landroidx/compose/animation/SharedElement;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedElement;

    .line 48
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->sharedElement$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 158
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 159
    nop

    .line 48
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setUserState(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    .line 53
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->userState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 173
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 174
    nop

    .line 53
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public setZIndex(F)V
    .locals 5
    .param p1, "<set-?>"    # F

    .line 45
    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->zIndex$delegate:Landroidx/compose/runtime/MutableFloatState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move v2, p1

    .local v2, "value$iv":F
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 152
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 153
    nop

    .line 45
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":F
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method
