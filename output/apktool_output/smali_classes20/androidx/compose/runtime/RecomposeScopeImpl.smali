.class public final Landroidx/compose/runtime/RecomposeScopeImpl;
.super Ljava/lang/Object;
.source "RecomposeScopeImpl.kt"

# interfaces
.implements Landroidx/compose/runtime/ScopeUpdateScope;
.implements Landroidx/compose/runtime/RecomposeScope;
.implements Landroidx/compose/runtime/tooling/IdentifiableRecomposeScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/RecomposeScopeImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ObjectIntMap.kt\nandroidx/collection/ObjectIntMap\n+ 6 ObjectIntMap.kt\nandroidx/collection/MutableObjectIntMap\n*L\n1#1,447:1\n410#1:448\n414#1,8:449\n410#1:457\n414#1,8:458\n410#1:466\n414#1,8:467\n410#1:475\n414#1,8:476\n410#1:484\n414#1,8:485\n410#1:493\n414#1,8:494\n410#1:502\n414#1,8:503\n410#1:511\n414#1,8:512\n410#1:520\n414#1,8:521\n410#1:529\n414#1,8:530\n410#1:538\n414#1,8:539\n1#2:547\n256#3,2:548\n231#3,3:550\n200#3,7:553\n211#3,3:561\n214#3,9:565\n234#3:574\n258#3:575\n1399#4:560\n1270#4:564\n1399#4:586\n1270#4:590\n1399#4:612\n1270#4:616\n1399#4:635\n1270#4:639\n395#5,4:576\n367#5,6:580\n377#5,3:587\n380#5,9:591\n399#5:600\n423#5:601\n395#5,4:602\n367#5,6:606\n377#5,3:613\n380#5,9:617\n399#5:626\n424#5:627\n367#5,6:629\n377#5,3:636\n380#5,2:640\n383#5,6:646\n775#6:628\n777#6,4:642\n781#6:652\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImpl\n*L\n119#1:448\n121#1:449,8\n129#1:457\n131#1:458,8\n139#1:466\n141#1:467,8\n146#1:475\n148#1:476,8\n153#1:484\n155#1:485,8\n165#1:493\n167#1:494,8\n175#1:502\n177#1:503,8\n186#1:511\n188#1:512,8\n253#1:520\n255#1:521,8\n264#1:529\n266#1:530,8\n271#1:538\n273#1:539,8\n344#1:548,2\n344#1:550,3\n344#1:553,7\n344#1:561,3\n344#1:565,9\n344#1:574\n344#1:575\n344#1:560\n344#1:564\n366#1:586\n366#1:590\n386#1:612\n386#1:616\n393#1:635\n393#1:639\n366#1:576,4\n366#1:580,6\n366#1:587,3\n366#1:591,9\n366#1:600\n386#1:601\n386#1:602,4\n386#1:606,6\n386#1:613,3\n386#1:617,9\n386#1:626\n386#1:627\n393#1:629,6\n393#1:636,3\n393#1:640,2\n393#1:646,6\n393#1:628\n393#1:642,4\n393#1:652\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001fB\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020;J\u0010\u0010?\u001a\u00020@2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014J\u0006\u0010A\u001a\u00020<J\u000e\u0010B\u001a\u00020<2\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010C\u001a\u00020<H\u0016J\"\u0010D\u001a\u00020<2\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020<0:H\u0016J\u000e\u0010T\u001a\u00020<2\u0006\u0010U\u001a\u00020\u000cJ\u0006\u0010V\u001a\u00020<J\u000e\u0010W\u001a\u00020\u001a2\u0006\u0010X\u001a\u00020\u0014J\u001c\u0010Y\u001a\u00020<2\n\u0010X\u001a\u0006\u0012\u0002\u0008\u00030J2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014J\u0010\u0010[\u001a\u00020\u001a2\u0008\u0010\\\u001a\u0004\u0018\u00010\u0014J*\u0010]\u001a\u00020\u001a*\u0006\u0012\u0002\u0008\u00030J2\u0018\u0010^\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030J\u0012\u0006\u0012\u0004\u0018\u00010\u00140IH\u0002J\u0006\u0010_\u001a\u00020<J\u001c\u0010`\u001a\u0010\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020<\u0018\u00010a2\u0006\u0010U\u001a\u00020\u000cJ\u0011\u0010c\u001a\u00020\u001a2\u0006\u0010d\u001a\u00020\u000cH\u0082\u0008J\u0019\u0010e\u001a\u00020<2\u0006\u0010d\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001aH\u0082\u0008R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR$\u0010 \u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010#R$\u0010$\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u001c\"\u0004\u0008&\u0010#R$\u0010\'\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010\u001c\"\u0004\u0008)\u0010#R$\u0010*\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\u001c\"\u0004\u0008,\u0010#R$\u0010-\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u001c\"\u0004\u0008/\u0010#R$\u00100\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\u001c\"\u0004\u00082\u0010#R$\u00103\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u0010\u001c\"\u0004\u00085\u0010#R$\u00106\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\u001c\"\u0004\u00088\u0010#R\"\u00109\u001a\u0016\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020<\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010GX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010H\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030J\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010K\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008L\u0010\u001c\"\u0004\u0008M\u0010#R$\u0010N\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008O\u0010\u001c\"\u0004\u0008P\u0010#R$\u0010Q\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u001a8@@BX\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008R\u0010\u001c\"\u0004\u0008S\u0010#R\u0011\u0010Z\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010\u001c\u00a8\u0006g"
    }
    d2 = {
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "Landroidx/compose/runtime/ScopeUpdateScope;",
        "Landroidx/compose/runtime/RecomposeScope;",
        "Landroidx/compose/runtime/tooling/IdentifiableRecomposeScope;",
        "owner",
        "Landroidx/compose/runtime/RecomposeScopeOwner;",
        "<init>",
        "(Landroidx/compose/runtime/RecomposeScopeOwner;)V",
        "getOwner$runtime",
        "()Landroidx/compose/runtime/RecomposeScopeOwner;",
        "setOwner$runtime",
        "flags",
        "",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "getAnchor",
        "()Landroidx/compose/runtime/Anchor;",
        "setAnchor",
        "(Landroidx/compose/runtime/Anchor;)V",
        "identity",
        "",
        "getIdentity$annotations",
        "()V",
        "getIdentity",
        "()Ljava/lang/Object;",
        "valid",
        "",
        "getValid",
        "()Z",
        "canRecompose",
        "getCanRecompose",
        "value",
        "used",
        "getUsed",
        "setUsed",
        "(Z)V",
        "reusing",
        "getReusing",
        "setReusing",
        "resetReusing",
        "getResetReusing",
        "setResetReusing",
        "paused",
        "getPaused",
        "setPaused",
        "resuming",
        "getResuming",
        "setResuming",
        "defaultsInScope",
        "getDefaultsInScope",
        "setDefaultsInScope",
        "defaultsInvalid",
        "getDefaultsInvalid",
        "setDefaultsInvalid",
        "requiresRecompose",
        "getRequiresRecompose",
        "setRequiresRecompose",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/runtime/Composer;",
        "",
        "compose",
        "composer",
        "invalidateForResult",
        "Landroidx/compose/runtime/InvalidationResult;",
        "release",
        "adoptedBy",
        "invalidate",
        "updateScope",
        "currentToken",
        "trackedInstances",
        "Landroidx/collection/MutableObjectIntMap;",
        "trackedDependencies",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/runtime/DerivedState;",
        "rereading",
        "getRereading",
        "setRereading",
        "forcedRecompose",
        "getForcedRecompose",
        "setForcedRecompose",
        "skipped",
        "getSkipped$runtime",
        "setSkipped",
        "start",
        "token",
        "scopeSkipped",
        "recordRead",
        "instance",
        "recordDerivedStateValue",
        "isConditional",
        "isInvalidFor",
        "instances",
        "checkDerivedStateChanged",
        "dependencies",
        "rereadTrackedInstances",
        "end",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composition;",
        "getFlag",
        "flag",
        "setFlag",
        "Companion",
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

.field public static final Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;


# instance fields
.field private anchor:Landroidx/compose/runtime/Anchor;

.field private block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentToken:I

.field private flags:I

.field private owner:Landroidx/compose/runtime/RecomposeScopeOwner;

.field private trackedDependencies:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private trackedInstances:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dbiKKStJ0dvmAsxppAz0YmLcayE(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;Landroidx/compose/runtime/Composition;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/RecomposeScopeImpl;->end$lambda$0$1(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;Landroidx/compose/runtime/Composition;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/RecomposeScopeImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 0
    .param p1, "owner"    # Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    return-void
.end method

.method private final checkDerivedStateChanged(Landroidx/compose/runtime/DerivedState;Landroidx/collection/MutableScatterMap;)Z
    .locals 3
    .param p1, "$this$checkDerivedStateChanged"    # Landroidx/compose/runtime/DerivedState;
    .param p2, "dependencies"    # Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 356
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {p1}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    .line 358
    .local v0, "policy":Landroidx/compose/runtime/SnapshotMutationPolicy;
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static final end$lambda$0$1(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;Landroidx/compose/runtime/Composition;)Lkotlin/Unit;
    .locals 22
    .param p0, "this$0"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p1, "$token"    # I
    .param p2, "$instances"    # Landroidx/collection/MutableObjectIntMap;
    .param p3, "composition"    # Landroidx/compose/runtime/Composition;

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 389
    iget v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    if-ne v3, v1, :cond_c

    .line 390
    iget-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 391
    instance-of v3, v2, Landroidx/compose/runtime/CompositionImpl;

    if-eqz v3, :cond_c

    .line 393
    move-object/from16 v3, p2

    .local v3, "this_$iv":Landroidx/collection/MutableObjectIntMap;
    const/4 v5, 0x0

    .line 628
    .local v5, "$i$f$removeIf":I
    move-object v6, v3

    check-cast v6, Landroidx/collection/ObjectIntMap;

    .local v6, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v7, 0x0

    .line 629
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 630
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 632
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_9

    .line 633
    :goto_0
    aget-wide v11, v8, v10

    .line 634
    .local v11, "slot$iv$iv":J
    move-wide v13, v11

    .local v13, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v15, 0x0

    .line 635
    .local v15, "$i$f$maskEmptyOrDeleted":I
    move/from16 v16, v5

    .end local v5    # "$i$f$removeIf":I
    .local v16, "$i$f$removeIf":I
    not-long v4, v13

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v13

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v17

    .line 634
    .end local v13    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v15    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v4, v17

    if-eqz v4, :cond_8

    .line 636
    sub-int v4, v10, v9

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 637
    .local v4, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v4, :cond_7

    .line 638
    const-wide/16 v14, 0xff

    and-long/2addr v14, v11

    .local v14, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 639
    .local v17, "$i$f$isFull":I
    const-wide/16 v18, 0x80

    cmp-long v18, v14, v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-gez v18, :cond_0

    move/from16 v14, v20

    goto :goto_2

    :cond_0
    move/from16 v14, v19

    .line 638
    .end local v14    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_6

    .line 640
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 641
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v17, 0x0

    .line 642
    .local v17, "$i$a$-forEachIndexed-MutableObjectIntMap$removeIf$1$iv":I
    move/from16 v18, v5

    iget-object v5, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v15

    .local v5, "instance":Ljava/lang/Object;
    iget-object v2, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v2, v2, v15

    .local v2, "instanceToken":I
    const/16 v21, 0x0

    .line 394
    .local v21, "$i$a$-removeIf-RecomposeScopeImpl$end$1$2$1":I
    if-eq v2, v1, :cond_1

    move/from16 v19, v20

    .line 395
    .local v19, "shouldRemove":Z
    :cond_1
    if-eqz v19, :cond_3

    .line 396
    move-object/from16 v1, p3

    check-cast v1, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v1, v5, v0}, Landroidx/compose/runtime/CompositionImpl;->removeObservation$runtime(Ljava/lang/Object;Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 397
    instance-of v1, v5, Landroidx/compose/runtime/DerivedState;

    if-eqz v1, :cond_2

    .line 398
    move-object/from16 v1, p3

    check-cast v1, Landroidx/compose/runtime/CompositionImpl;

    move/from16 v20, v2

    .end local v2    # "instanceToken":I
    .local v20, "instanceToken":I
    move-object v2, v5

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/CompositionImpl;->removeDerivedStateObservation$runtime(Landroidx/compose/runtime/DerivedState;)V

    .line 399
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 397
    .end local v20    # "instanceToken":I
    .restart local v2    # "instanceToken":I
    :cond_2
    move/from16 v20, v2

    .end local v2    # "instanceToken":I
    .restart local v20    # "instanceToken":I
    goto :goto_3

    .line 395
    .end local v20    # "instanceToken":I
    .restart local v2    # "instanceToken":I
    :cond_3
    move/from16 v20, v2

    .line 402
    .end local v2    # "instanceToken":I
    .restart local v20    # "instanceToken":I
    :cond_4
    :goto_3
    nop

    .line 642
    .end local v5    # "instance":Ljava/lang/Object;
    .end local v19    # "shouldRemove":Z
    .end local v20    # "instanceToken":I
    .end local v21    # "$i$a$-removeIf-RecomposeScopeImpl$end$1$2$1":I
    if-eqz v19, :cond_5

    .line 643
    invoke-virtual {v3, v15}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 645
    :cond_5
    nop

    .line 641
    .end local v15    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-MutableObjectIntMap$removeIf$1$iv":I
    goto :goto_4

    .line 638
    .end local v14    # "index$iv$iv":I
    :cond_6
    move/from16 v18, v5

    .line 646
    :goto_4
    shr-long v11, v11, v18

    .line 637
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v5, v18

    goto :goto_1

    :cond_7
    move/from16 v18, v5

    .line 648
    .end local v13    # "j$iv$iv":I
    move/from16 v1, v18

    if-ne v4, v1, :cond_b

    .line 632
    .end local v4    # "bitCount$iv$iv":I
    .end local v11    # "slot$iv$iv":J
    :cond_8
    if-eq v10, v9, :cond_a

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move/from16 v5, v16

    goto/16 :goto_0

    .end local v16    # "$i$f$removeIf":I
    .local v5, "$i$f$removeIf":I
    :cond_9
    move/from16 v16, v5

    .line 651
    .end local v5    # "$i$f$removeIf":I
    .end local v10    # "i$iv$iv":I
    .restart local v16    # "$i$f$removeIf":I
    :cond_a
    nop

    .line 652
    .end local v6    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_b
    nop

    .line 405
    .end local v3    # "this_$iv":Landroidx/collection/MutableObjectIntMap;
    .end local v16    # "$i$f$removeIf":I
    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final getFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    const/4 v0, 0x0

    .line 410
    .local v0, "$i$f$getFlag":I
    iget v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic getIdentity$annotations()V
    .locals 0

    return-void
.end method

.method private final getRereading()Z
    .locals 4

    .line 253
    const/16 v0, 0x20

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 520
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 253
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method private final setFlag(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    const/4 v0, 0x0

    .line 414
    .local v0, "$i$f$setFlag":I
    iget v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 415
    .local v1, "existingFlags":I
    nop

    .line 416
    if-eqz p2, :cond_0

    .line 417
    or-int v2, v1, p1

    goto :goto_0

    .line 419
    :cond_0
    not-int v2, p1

    and-int/2addr v2, v1

    .line 415
    :goto_0
    iput v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 421
    return-void
.end method

.method private final setRereading(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 255
    const/16 v0, 0x20

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 521
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 522
    .local v4, "existingFlags$iv":I
    nop

    .line 523
    if-eqz v1, :cond_0

    .line 524
    or-int v5, v4, v0

    goto :goto_0

    .line 526
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 522
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 528
    nop

    .line 256
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method private final setSkipped(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 273
    const/16 v0, 0x10

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 539
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 540
    .local v4, "existingFlags$iv":I
    nop

    .line 541
    if-eqz v1, :cond_0

    .line 542
    or-int v5, v4, v0

    goto :goto_0

    .line 544
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 540
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 546
    nop

    .line 274
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method


# virtual methods
.method public final adoptedBy(Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 0
    .param p1, "owner"    # Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 228
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 229
    return-void
.end method

.method public final compose(Landroidx/compose/runtime/Composer;)V
    .locals 2
    .param p1, "composer"    # Landroidx/compose/runtime/Composer;

    .line 201
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid restart scope"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final end(I)Lkotlin/jvm/functions/Function1;
    .locals 31
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/Composition;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v2, :cond_b

    .local v2, "instances":Landroidx/collection/MutableObjectIntMap;
    const/4 v4, 0x0

    .line 386
    .local v4, "$i$a$-let-RecomposeScopeImpl$end$1":I
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getSkipped$runtime()Z

    move-result v5

    if-nez v5, :cond_9

    move-object v5, v2

    check-cast v5, Landroidx/collection/ObjectIntMap;

    .local v5, "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v6, 0x0

    .line 601
    .local v6, "$i$f$any":I
    move-object v7, v5

    .local v7, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v8, 0x0

    .line 602
    .local v8, "$i$f$forEach":I
    iget-object v9, v7, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 603
    .local v9, "k$iv$iv":[Ljava/lang/Object;
    iget-object v10, v7, Landroidx/collection/ObjectIntMap;->values:[I

    .line 605
    .local v10, "v$iv$iv":[I
    move-object v11, v7

    .local v11, "this_$iv$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v12, 0x0

    .line 606
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 607
    .local v13, "m$iv$iv$iv":[J
    array-length v14, v13

    add-int/lit8 v14, v14, -0x2

    .line 609
    .local v14, "lastIndex$iv$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv$iv":I
    const/16 v16, 0x0

    if-gt v15, v14, :cond_6

    .line 610
    :goto_0
    aget-wide v17, v13, v15

    .line 611
    .local v17, "slot$iv$iv$iv":J
    move-wide/from16 v19, v17

    .local v19, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v21, 0x0

    .line 612
    .local v21, "$i$f$maskEmptyOrDeleted":I
    move/from16 v22, v4

    move-wide/from16 v3, v19

    move-object/from16 v19, v5

    move/from16 v20, v6

    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .end local v5    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v6    # "$i$f$any":I
    .local v3, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v19, "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v20, "$i$f$any":I
    .local v22, "$i$a$-let-RecomposeScopeImpl$end$1":I
    not-long v5, v3

    const/16 v23, 0x7

    shl-long v5, v5, v23

    and-long/2addr v5, v3

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v5, v23

    .line 611
    .end local v3    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v21    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v3, v3, v23

    if-eqz v3, :cond_5

    .line 613
    sub-int v3, v15, v14

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    .line 614
    .local v3, "bitCount$iv$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv$iv":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 615
    const-wide/16 v23, 0xff

    and-long v23, v17, v23

    .local v23, "value$iv$iv$iv$iv":J
    const/4 v6, 0x0

    .line 616
    .local v6, "$i$f$isFull":I
    const-wide/16 v25, 0x80

    cmp-long v21, v23, v25

    const/16 v25, 0x1

    if-gez v21, :cond_0

    move/from16 v6, v25

    goto :goto_2

    :cond_0
    move/from16 v6, v16

    .line 615
    .end local v6    # "$i$f$isFull":I
    .end local v23    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v6, :cond_3

    .line 617
    shl-int/lit8 v6, v15, 0x3

    add-int/2addr v6, v5

    .line 618
    .local v6, "index$iv$iv$iv":I
    move/from16 v21, v6

    .local v21, "index$iv$iv":I
    const/16 v23, 0x0

    .line 605
    .local v23, "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv$iv":I
    aget-object v24, v9, v21

    .local v24, "key$iv":Ljava/lang/Object;
    aget v26, v10, v21

    .local v26, "value$iv":I
    const/16 v27, 0x0

    .line 601
    .local v27, "$i$a$-forEach-ObjectIntMap$any$1$iv":I
    move/from16 v28, v26

    .local v28, "instanceToken":I
    const/16 v29, 0x0

    .line 386
    .local v29, "$i$a$-any-RecomposeScopeImpl$end$1$1":I
    move/from16 v30, v4

    move/from16 v4, v28

    .end local v28    # "instanceToken":I
    .local v4, "instanceToken":I
    if-eq v4, v1, :cond_1

    move/from16 v4, v25

    goto :goto_3

    :cond_1
    move/from16 v4, v16

    .line 601
    .end local v4    # "instanceToken":I
    .end local v29    # "$i$a$-any-RecomposeScopeImpl$end$1$1":I
    :goto_3
    if-eqz v4, :cond_2

    move/from16 v16, v25

    goto :goto_5

    .line 605
    .end local v24    # "key$iv":Ljava/lang/Object;
    .end local v26    # "value$iv":I
    .end local v27    # "$i$a$-forEach-ObjectIntMap$any$1$iv":I
    :cond_2
    nop

    .line 618
    .end local v21    # "index$iv$iv":I
    .end local v23    # "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv$iv":I
    goto :goto_4

    .line 615
    .end local v6    # "index$iv$iv$iv":I
    :cond_3
    move/from16 v30, v4

    .line 620
    :goto_4
    shr-long v17, v17, v30

    .line 614
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v30

    goto :goto_1

    :cond_4
    move/from16 v30, v4

    .line 622
    .end local v5    # "j$iv$iv$iv":I
    if-ne v3, v4, :cond_8

    .line 609
    .end local v3    # "bitCount$iv$iv$iv":I
    .end local v17    # "slot$iv$iv$iv":J
    :cond_5
    if-eq v15, v14, :cond_7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v4, v22

    goto :goto_0

    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v20    # "$i$f$any":I
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .local v4, "$i$a$-let-RecomposeScopeImpl$end$1":I
    .local v5, "this_$iv":Landroidx/collection/ObjectIntMap;
    .local v6, "$i$f$any":I
    :cond_6
    move/from16 v22, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    .line 625
    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .end local v5    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v6    # "$i$f$any":I
    .end local v15    # "i$iv$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v20    # "$i$f$any":I
    .restart local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_7
    nop

    .line 626
    .end local v11    # "this_$iv$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv$iv":I
    :cond_8
    nop

    .line 627
    .end local v7    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv$iv":[I
    nop

    .line 386
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v20    # "$i$f$any":I
    :goto_5
    if-eqz v16, :cond_a

    .line 387
    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V

    goto :goto_6

    .line 386
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .restart local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_9
    move/from16 v22, v4

    .line 406
    .end local v4    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    .restart local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :cond_a
    const/4 v3, 0x0

    .line 380
    .end local v2    # "instances":Landroidx/collection/MutableObjectIntMap;
    .end local v22    # "$i$a$-let-RecomposeScopeImpl$end$1":I
    :goto_6
    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    return-object v3
.end method

.method public final getAnchor()Landroidx/compose/runtime/Anchor;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    return-object v0
.end method

.method public final getCanRecompose()Z
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDefaultsInScope()Z
    .locals 4

    .line 165
    const/4 v0, 0x2

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 493
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 165
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getDefaultsInvalid()Z
    .locals 4

    .line 175
    const/4 v0, 0x4

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 502
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 175
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getForcedRecompose()Z
    .locals 4

    .line 264
    const/16 v0, 0x40

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 529
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 264
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public getIdentity()Ljava/lang/Object;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    return-object v0
.end method

.method public final getOwner$runtime()Landroidx/compose/runtime/RecomposeScopeOwner;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    return-object v0
.end method

.method public final getPaused()Z
    .locals 4

    .line 146
    const/16 v0, 0x100

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 475
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 146
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getRequiresRecompose()Z
    .locals 4

    .line 186
    const/16 v0, 0x8

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 511
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 186
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getResetReusing()Z
    .locals 4

    .line 139
    const/16 v0, 0x400

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 466
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 139
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getResuming()Z
    .locals 4

    .line 153
    const/16 v0, 0x200

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 484
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 153
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getReusing()Z
    .locals 4

    .line 129
    const/16 v0, 0x80

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 457
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 129
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getSkipped$runtime()Z
    .locals 4

    .line 271
    const/16 v0, 0x10

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 538
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 271
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getUsed()Z
    .locals 4

    .line 119
    const/4 v0, 0x1

    .local v0, "flag$iv":I
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v2, 0x0

    .line 448
    .local v2, "$i$f$getFlag":I
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 119
    .end local v0    # "flag$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v2    # "$i$f$getFlag":I
    :goto_0
    return v3
.end method

.method public final getValid()Z
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public invalidate()V
    .locals 2

    .line 238
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 239
    :cond_0
    return-void
.end method

.method public final invalidateForResult(Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroidx/compose/runtime/RecomposeScopeOwner;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/runtime/InvalidationResult;->IGNORED:Landroidx/compose/runtime/InvalidationResult;

    :cond_1
    return-object v0
.end method

.method public final isConditional()Z
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInvalidFor(Ljava/lang/Object;)Z
    .locals 27
    .param p1, "instances"    # Ljava/lang/Object;

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 336
    :cond_0
    iget-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v3, :cond_1

    return v2

    .line 338
    .local v3, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_1
    nop

    .line 339
    instance-of v4, v1, Landroidx/compose/runtime/DerivedState;

    if-eqz v4, :cond_2

    .line 340
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedState;Landroidx/collection/MutableScatterMap;)Z

    move-result v2

    goto/16 :goto_8

    .line 342
    :cond_2
    instance-of v4, v1, Landroidx/collection/ScatterSet;

    if-eqz v4, :cond_e

    .line 343
    move-object v4, v1

    check-cast v4, Landroidx/collection/ScatterSet;

    invoke-virtual {v4}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 344
    move-object v4, v1

    check-cast v4, Landroidx/collection/ScatterSet;

    .local v4, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v6, 0x0

    .line 548
    .local v6, "$i$f$any":I
    nop

    .line 549
    move-object v7, v4

    .local v7, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v8, 0x0

    .line 550
    .local v8, "$i$f$forEach":I
    nop

    .line 551
    iget-object v9, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 552
    .local v9, "elements$iv$iv":[Ljava/lang/Object;
    move-object v10, v7

    .local v10, "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v11, 0x0

    .line 553
    .local v11, "$i$f$forEachIndex":I
    nop

    .line 554
    iget-object v12, v10, Landroidx/collection/ScatterSet;->metadata:[J

    .line 555
    .local v12, "m$iv$iv$iv":[J
    array-length v13, v12

    add-int/lit8 v13, v13, -0x2

    .line 557
    .local v13, "lastIndex$iv$iv$iv":I
    const/4 v14, 0x0

    .local v14, "i$iv$iv$iv":I
    if-gt v14, v13, :cond_a

    .line 558
    :goto_0
    aget-wide v15, v12, v14

    .line 559
    .local v15, "slot$iv$iv$iv":J
    move-wide/from16 v17, v15

    .local v17, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    const/16 v19, 0x0

    .line 560
    .local v19, "$i$f$maskEmptyOrDeleted":I
    move/from16 v20, v6

    move-wide/from16 v5, v17

    move-object/from16 v17, v3

    .end local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .end local v6    # "$i$f$any":I
    .local v5, "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .local v17, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .local v20, "$i$f$any":I
    not-long v2, v5

    const/16 v21, 0x7

    shl-long v2, v2, v21

    and-long/2addr v2, v5

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v21

    .line 559
    .end local v5    # "$this$maskEmptyOrDeleted$iv$iv$iv$iv":J
    .end local v19    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v2, v2, v21

    if-eqz v2, :cond_9

    .line 561
    sub-int v2, v14, v13

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 562
    .local v2, "bitCount$iv$iv$iv":I
    const/4 v5, 0x0

    .local v5, "j$iv$iv$iv":I
    :goto_1
    if-ge v5, v2, :cond_8

    .line 563
    const-wide/16 v21, 0xff

    and-long v21, v15, v21

    .local v21, "value$iv$iv$iv$iv":J
    const/4 v6, 0x0

    .line 564
    .local v6, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v19, v21, v23

    if-gez v19, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 563
    .end local v6    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv$iv":J
    :goto_2
    if-eqz v6, :cond_7

    .line 565
    shl-int/lit8 v6, v14, 0x3

    add-int/2addr v6, v5

    .line 566
    .local v6, "index$iv$iv$iv":I
    move/from16 v19, v6

    .local v19, "index$iv$iv":I
    const/16 v21, 0x0

    .line 552
    .local v21, "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    aget-object v22, v9, v19

    .local v22, "element$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 549
    .local v23, "$i$a$-forEach-ScatterSet$any$2$iv":I
    move-object/from16 v24, v22

    .local v24, "it":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 345
    .local v25, "$i$a$-any-RecomposeScopeImpl$isInvalidFor$1":I
    move/from16 v26, v3

    move-object/from16 v3, v24

    .end local v24    # "it":Ljava/lang/Object;
    .local v3, "it":Ljava/lang/Object;
    instance-of v1, v3, Landroidx/compose/runtime/DerivedState;

    if-eqz v1, :cond_5

    move-object v1, v3

    check-cast v1, Landroidx/compose/runtime/DerivedState;

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    .end local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .local v3, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v24    # "it":Ljava/lang/Object;
    invoke-direct {v0, v1, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedState;Landroidx/collection/MutableScatterMap;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .end local v24    # "it":Ljava/lang/Object;
    .local v3, "it":Ljava/lang/Object;
    .restart local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_5
    move-object/from16 v24, v3

    move-object/from16 v3, v17

    .end local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .local v3, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v24    # "it":Ljava/lang/Object;
    :goto_3
    const/4 v1, 0x1

    .line 549
    .end local v24    # "it":Ljava/lang/Object;
    .end local v25    # "$i$a$-any-RecomposeScopeImpl$isInvalidFor$1":I
    :goto_4
    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    .line 552
    .end local v22    # "element$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-ScatterSet$any$2$iv":I
    :cond_6
    nop

    .line 566
    .end local v19    # "index$iv$iv":I
    .end local v21    # "$i$a$-forEachIndex-ScatterSet$forEach$2$iv$iv":I
    goto :goto_5

    .line 563
    .end local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .end local v6    # "index$iv$iv$iv":I
    .restart local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_7
    move/from16 v26, v3

    move-object/from16 v3, v17

    .line 568
    .end local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :goto_5
    shr-long v15, v15, v26

    .line 562
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move/from16 v3, v26

    goto :goto_1

    .end local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_8
    move/from16 v26, v3

    move-object/from16 v3, v17

    .line 570
    .end local v5    # "j$iv$iv$iv":I
    .end local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    move/from16 v1, v26

    if-ne v2, v1, :cond_c

    goto :goto_6

    .line 559
    .end local v2    # "bitCount$iv$iv$iv":I
    .end local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :cond_9
    move-object/from16 v3, v17

    .line 557
    .end local v15    # "slot$iv$iv$iv":J
    .end local v17    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    .restart local v3    # "trackedDependencies":Landroidx/collection/MutableScatterMap;
    :goto_6
    if-eq v14, v13, :cond_b

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v20

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v20    # "$i$f$any":I
    .local v6, "$i$f$any":I
    :cond_a
    move/from16 v20, v6

    .line 573
    .end local v6    # "$i$f$any":I
    .end local v14    # "i$iv$iv$iv":I
    .restart local v20    # "$i$f$any":I
    :cond_b
    nop

    .line 574
    .end local v10    # "this_$iv$iv$iv":Landroidx/collection/ScatterSet;
    .end local v11    # "$i$f$forEachIndex":I
    .end local v12    # "m$iv$iv$iv":[J
    .end local v13    # "lastIndex$iv$iv$iv":I
    :cond_c
    nop

    .line 575
    .end local v7    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "elements$iv$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 344
    .end local v4    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v20    # "$i$f$any":I
    :goto_7
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 348
    :cond_e
    const/4 v2, 0x1

    .line 338
    :goto_8
    return v2
.end method

.method public final recordDerivedStateValue(Landroidx/compose/runtime/DerivedState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "instance"    # Landroidx/compose/runtime/DerivedState;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroidx/collection/MutableScatterMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .line 547
    .local v1, "it":Landroidx/collection/MutableScatterMap;
    const/4 v2, 0x0

    .line 314
    .local v2, "$i$a$-also-RecomposeScopeImpl$recordDerivedStateValue$trackedDependencies$1":I
    iput-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 313
    .end local v1    # "it":Landroidx/collection/MutableScatterMap;
    .end local v2    # "$i$a$-also-RecomposeScopeImpl$recordDerivedStateValue$trackedDependencies$1":I
    :cond_0
    nop

    .line 312
    nop

    .line 316
    .local v0, "trackedDependencies":Landroidx/collection/MutableScatterMap;
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public final recordRead(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "instance"    # Ljava/lang/Object;

    .line 298
    invoke-direct {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getRereading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v0

    .line 547
    .local v3, "it":Landroidx/collection/MutableObjectIntMap;
    const/4 v4, 0x0

    .line 301
    .local v4, "$i$a$-also-RecomposeScopeImpl$recordRead$trackedInstances$1":I
    iput-object v3, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 300
    .end local v3    # "it":Landroidx/collection/MutableObjectIntMap;
    .end local v4    # "$i$a$-also-RecomposeScopeImpl$recordRead$trackedInstances$1":I
    :cond_1
    nop

    .line 303
    .local v0, "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    iget v3, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v3, v4}, Landroidx/collection/MutableObjectIntMap;->put(Ljava/lang/Object;II)I

    move-result v3

    .line 304
    .local v3, "token":I
    iget v4, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    if-ne v3, v4, :cond_2

    .line 305
    return v2

    .line 308
    :cond_2
    return v1
.end method

.method public final release()V
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/RecomposeScopeOwner;->recomposeScopeReleased(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 218
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 219
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 220
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 221
    return-void
.end method

.method public final rereadTrackedInstances()V
    .locals 25

    .line 362
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v0, :cond_8

    move-object v2, v0

    .local v2, "owner":Landroidx/compose/runtime/RecomposeScopeOwner;
    const/4 v3, 0x0

    .line 363
    .local v3, "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1":I
    iget-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v0, :cond_7

    move-object v4, v0

    .local v4, "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    const/4 v5, 0x0

    .line 364
    .local v5, "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 365
    nop

    .line 366
    :try_start_0
    move-object v7, v4

    check-cast v7, Landroidx/collection/ObjectIntMap;

    .local v7, "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v8, 0x0

    .line 576
    .local v8, "$i$f$forEach":I
    iget-object v9, v7, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    .line 577
    .local v9, "k$iv":[Ljava/lang/Object;
    iget-object v10, v7, Landroidx/collection/ObjectIntMap;->values:[I

    .line 579
    .local v10, "v$iv":[I
    move-object v11, v7

    .local v11, "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    const/4 v12, 0x0

    .line 580
    .local v12, "$i$f$forEachIndexed":I
    iget-object v13, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    .line 581
    .local v13, "m$iv$iv":[J
    array-length v14, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v14, v14, -0x2

    .line 583
    .local v14, "lastIndex$iv$iv":I
    const/4 v15, 0x0

    .local v15, "i$iv$iv":I
    if-gt v15, v14, :cond_4

    .line 584
    :goto_0
    :try_start_1
    aget-wide v16, v13, v15

    .line 585
    .local v16, "slot$iv$iv":J
    move-wide/from16 v18, v16

    .local v18, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v20, 0x0

    .line 586
    .local v20, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v0, v18

    move-object/from16 v19, v7

    .end local v7    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v18    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v0, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v19, "this_$iv":Landroidx/collection/ObjectIntMap;
    not-long v6, v0

    const/16 v21, 0x7

    shl-long v6, v6, v21

    and-long/2addr v6, v0

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v6, v21

    .line 585
    .end local v0    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v20    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v0, v0, v21

    if-eqz v0, :cond_3

    .line 587
    sub-int v0, v15, v14

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 588
    .local v0, "bitCount$iv$iv":I
    const/4 v6, 0x0

    .local v6, "j$iv$iv":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 589
    const-wide/16 v21, 0xff

    and-long v21, v16, v21

    .local v21, "value$iv$iv$iv":J
    const/4 v7, 0x0

    .line 590
    .local v7, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v20, v21, v23

    if-gez v20, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    .line 589
    .end local v7    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v7, :cond_1

    .line 591
    shl-int/lit8 v7, v15, 0x3

    add-int/2addr v7, v6

    .line 592
    .local v7, "index$iv$iv":I
    move/from16 v20, v7

    .local v20, "index$iv":I
    const/16 v21, 0x0

    .line 579
    .local v21, "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv":I
    aget-object v22, v9, v20

    aget v23, v10, v20

    move-object/from16 v23, v22

    .local v23, "value":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 366
    .local v22, "$i$a$-forEach-RecomposeScopeImpl$rereadTrackedInstances$1$1$1":I
    move/from16 v24, v1

    move-object/from16 v1, v23

    .end local v23    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->recordReadOf(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    .end local v1    # "value":Ljava/lang/Object;
    .end local v22    # "$i$a$-forEach-RecomposeScopeImpl$rereadTrackedInstances$1$1$1":I
    nop

    .line 592
    .end local v20    # "index$iv":I
    .end local v21    # "$i$a$-forEachIndexed-ObjectIntMap$forEach$1$iv":I
    goto :goto_3

    .line 589
    .end local v7    # "index$iv$iv":I
    :cond_1
    move/from16 v24, v1

    .line 594
    :goto_3
    shr-long v16, v16, v24

    .line 588
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v24

    goto :goto_1

    :cond_2
    move/from16 v24, v1

    .line 596
    .end local v6    # "j$iv$iv":I
    if-ne v0, v1, :cond_6

    .line 583
    .end local v0    # "bitCount$iv$iv":I
    .end local v16    # "slot$iv$iv":J
    :cond_3
    if-eq v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, v19

    goto :goto_0

    .line 368
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv":[I
    .end local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv":I
    .end local v15    # "i$iv$iv":I
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    .line 583
    .local v7, "this_$iv":Landroidx/collection/ObjectIntMap;
    .restart local v8    # "$i$f$forEach":I
    .restart local v9    # "k$iv":[Ljava/lang/Object;
    .restart local v10    # "v$iv":[I
    .restart local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .restart local v12    # "$i$f$forEachIndexed":I
    .restart local v13    # "m$iv$iv":[J
    .restart local v14    # "lastIndex$iv$iv":I
    .restart local v15    # "i$iv$iv":I
    :cond_4
    move-object/from16 v19, v7

    .line 599
    .end local v7    # "this_$iv":Landroidx/collection/ObjectIntMap;
    .end local v15    # "i$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    :cond_5
    nop

    .line 600
    .end local v11    # "this_$iv$iv":Landroidx/collection/ObjectIntMap;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "m$iv$iv":[J
    .end local v14    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 368
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "v$iv":[I
    .end local v19    # "this_$iv":Landroidx/collection/ObjectIntMap;
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 369
    nop

    .line 370
    nop

    .line 363
    .end local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .end local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    goto :goto_5

    .line 368
    .restart local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .restart local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    :catchall_1
    move-exception v0

    :goto_4
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    throw v0

    .line 370
    .end local v4    # "trackedInstances":Landroidx/collection/MutableObjectIntMap;
    .end local v5    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1$1":I
    :cond_7
    :goto_5
    nop

    .line 362
    .end local v2    # "owner":Landroidx/compose/runtime/RecomposeScopeOwner;
    .end local v3    # "$i$a$-let-RecomposeScopeImpl$rereadTrackedInstances$1":I
    nop

    .line 372
    :cond_8
    return-void
.end method

.method public final scopeSkipped()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getReusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setSkipped(Z)V

    .line 290
    :cond_0
    return-void
.end method

.method public final setAnchor(Landroidx/compose/runtime/Anchor;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/Anchor;

    .line 95
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    return-void
.end method

.method public final setDefaultsInScope(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 167
    const/4 v0, 0x2

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 494
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 495
    .local v4, "existingFlags$iv":I
    nop

    .line 496
    if-eqz v1, :cond_0

    .line 497
    or-int v5, v4, v0

    goto :goto_0

    .line 499
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 495
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 501
    nop

    .line 168
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setDefaultsInvalid(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 177
    const/4 v0, 0x4

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 503
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 504
    .local v4, "existingFlags$iv":I
    nop

    .line 505
    if-eqz v1, :cond_0

    .line 506
    or-int v5, v4, v0

    goto :goto_0

    .line 508
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 504
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 510
    nop

    .line 178
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setForcedRecompose(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 266
    const/16 v0, 0x40

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 530
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 531
    .local v4, "existingFlags$iv":I
    nop

    .line 532
    if-eqz v1, :cond_0

    .line 533
    or-int v5, v4, v0

    goto :goto_0

    .line 535
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 531
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 537
    nop

    .line 267
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setOwner$runtime(Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 85
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    return-void
.end method

.method public final setPaused(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 148
    const/16 v0, 0x100

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 476
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 477
    .local v4, "existingFlags$iv":I
    nop

    .line 478
    if-eqz v1, :cond_0

    .line 479
    or-int v5, v4, v0

    goto :goto_0

    .line 481
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 477
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 483
    nop

    .line 149
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setRequiresRecompose(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 188
    const/16 v0, 0x8

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 512
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 513
    .local v4, "existingFlags$iv":I
    nop

    .line 514
    if-eqz v1, :cond_0

    .line 515
    or-int v5, v4, v0

    goto :goto_0

    .line 517
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 513
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 519
    nop

    .line 189
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setResetReusing(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 141
    const/16 v0, 0x400

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 467
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 468
    .local v4, "existingFlags$iv":I
    nop

    .line 469
    if-eqz v1, :cond_0

    .line 470
    or-int v5, v4, v0

    goto :goto_0

    .line 472
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 468
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 474
    nop

    .line 142
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setResuming(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 155
    const/16 v0, 0x200

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 485
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 486
    .local v4, "existingFlags$iv":I
    nop

    .line 487
    if-eqz v1, :cond_0

    .line 488
    or-int v5, v4, v0

    goto :goto_0

    .line 490
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 486
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 492
    nop

    .line 156
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setReusing(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 131
    const/16 v0, 0x80

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 458
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 459
    .local v4, "existingFlags$iv":I
    nop

    .line 460
    if-eqz v1, :cond_0

    .line 461
    or-int v5, v4, v0

    goto :goto_0

    .line 463
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 459
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 465
    nop

    .line 132
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final setUsed(Z)V
    .locals 6
    .param p1, "value"    # Z

    .line 121
    const/4 v0, 0x1

    .local v0, "flag$iv":I
    move v1, p1

    .local v1, "value$iv":Z
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    const/4 v3, 0x0

    .line 449
    .local v3, "$i$f$setFlag":I
    iget v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 450
    .local v4, "existingFlags$iv":I
    nop

    .line 451
    if-eqz v1, :cond_0

    .line 452
    or-int v5, v4, v0

    goto :goto_0

    .line 454
    :cond_0
    not-int v5, v0

    and-int/2addr v5, v4

    .line 450
    :goto_0
    iput v5, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 456
    nop

    .line 122
    .end local v0    # "flag$iv":I
    .end local v1    # "value$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/runtime/RecomposeScopeImpl;
    .end local v3    # "$i$f$setFlag":I
    .end local v4    # "existingFlags$iv":I
    return-void
.end method

.method public final start(I)V
    .locals 1
    .param p1, "token"    # I

    .line 282
    iput p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->setSkipped(Z)V

    .line 284
    return-void
.end method

.method public updateScope(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 247
    return-void
.end method
