.class public final Landroidx/compose/runtime/internal/RememberEventDispatcher;
.super Ljava/lang/Object;
.source "RememberEventDispatcher.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRememberEventDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n*L\n1#1,296:1\n290#1,4:318\n294#1:323\n290#1,4:336\n294#1:341\n1107#2:297\n1085#2,2:298\n1107#2:300\n1085#2,2:301\n1107#2:303\n1085#2,2:304\n1489#3,4:306\n643#4,2:310\n519#4:313\n472#4:317\n519#4:325\n424#4,5:331\n429#4,3:342\n519#4:345\n424#4,8:349\n424#4,8:363\n1#5:312\n1#5:322\n1#5:340\n45#6,3:314\n49#6:324\n45#6,5:326\n45#6,3:346\n49#6:357\n45#6,5:358\n*S KotlinDebug\n*F\n+ 1 RememberEventDispatcher.kt\nandroidx/compose/runtime/internal/RememberEventDispatcher\n*L\n207#1:318,4\n207#1:323\n256#1:336,4\n256#1:341\n64#1:297\n64#1:298,2\n67#1:300\n67#1:301,2\n68#1:303\n68#1:304,2\n131#1:306,4\n147#1:310,2\n202#1:313\n206#1:317\n227#1:325\n253#1:331,5\n253#1:342,3\n261#1:345\n263#1:349,8\n120#1:363,8\n207#1:322\n256#1:340\n203#1:314,3\n203#1:324\n228#1:326,5\n262#1:346,3\n262#1:357\n272#1:358,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u001f\u001a\u00020\u00132\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J:\u0010 \u001a\u00020\u00132\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00130\"\u00a2\u0006\u0002\u0008#H\u0086\u0008J\u0006\u0010$\u001a\u00020\u0013J\u0010\u0010\t\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u000bH\u0016J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u000bH\u0016J\u0016\u0010\'\u001a\u00020\u00132\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0010\u0010)\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0015H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0015H\u0016J\u0010\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0018H\u0016J\u0010\u0010,\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0018H\u0016J\u0010\u0010-\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0018H\u0016J\u0006\u0010.\u001a\u00020\u0013J\u000e\u0010/\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0015J\u0014\u00100\u001a\u00020\u00132\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001eJ\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001eJ\u0016\u00103\u001a\u00020\u00132\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0006\u00105\u001a\u00020\u0013J\u0006\u00106\u001a\u00020\u0013J\u0010\u00107\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0010H\u0002J*\u00108\u001a\u0002H9\"\u0004\u0008\u0000\u001092\u0006\u0010%\u001a\u00020\u00102\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H90\u0012H\u0082\u0008\u00a2\u0006\u0002\u0010:R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Landroidx/compose/runtime/internal/RememberEventDispatcher;",
        "Landroidx/compose/runtime/RememberManager;",
        "<init>",
        "()V",
        "abandoning",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "traceContext",
        "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
        "remembering",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/runtime/RememberObserverHolder;",
        "rememberSet",
        "Landroidx/collection/MutableScatterSet;",
        "currentRememberingList",
        "leaving",
        "",
        "sideEffects",
        "Lkotlin/Function0;",
        "",
        "releasing",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "pausedPlaceholders",
        "Landroidx/collection/MutableScatterMap;",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "Landroidx/compose/runtime/internal/PausedCompositionRemembers;",
        "nestedRemembersLists",
        "Landroidx/compose/runtime/Stack;",
        "Ljava/util/ArrayList;",
        "ignoreLeavingSet",
        "Landroidx/collection/ScatterSet;",
        "prepare",
        "use",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "clear",
        "instance",
        "forgetting",
        "sideEffect",
        "effect",
        "deactivating",
        "rememberPausingScope",
        "scope",
        "startResumingScope",
        "endResumingScope",
        "dispatchRememberObservers",
        "dispatchOnDeactivateIfNecessary",
        "ignoreForgotten",
        "ignoreSet",
        "extractRememberSet",
        "dispatchRememberList",
        "list",
        "dispatchSideEffects",
        "dispatchAbandons",
        "recordLeaving",
        "withComposeStackTrace",
        "T",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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
.field private abandoning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;"
        }
    .end annotation
.end field

.field private currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreLeavingSet:Landroidx/collection/ScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final leaving:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nestedRemembersLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private pausedPlaceholders:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Landroidx/compose/runtime/internal/PausedCompositionRemembers;",
            ">;"
        }
    .end annotation
.end field

.field private releasing:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private rememberSet:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final remembering:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final sideEffects:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    .line 297
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 298
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/runtime/RememberObserverHolder;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 297
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 64
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    .line 65
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    .line 66
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    .line 67
    const/4 v0, 0x0

    .line 300
    .restart local v0    # "$i$f$mutableVectorOf":I
    nop

    .line 301
    const/16 v1, 0x10

    .restart local v1    # "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 302
    .restart local v2    # "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 300
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 67
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    .line 68
    const/4 v0, 0x0

    .line 303
    .restart local v0    # "$i$f$mutableVectorOf":I
    nop

    .line 304
    const/16 v1, 0x10

    .restart local v1    # "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 305
    .restart local v2    # "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 303
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 68
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    return-void
.end method

.method private final dispatchRememberList(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 17
    .param p1, "list"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;)V"
        }
    .end annotation

    .line 252
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v2, v0

    .line 253
    .local v2, "abandoning":Ljava/util/Set;
    move-object/from16 v3, p1

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 331
    .local v4, "$i$f$forEach":I
    const/4 v0, 0x0

    .line 332
    .local v0, "i$iv":I
    iget-object v5, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 333
    .local v5, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    move v7, v0

    .line 334
    .end local v0    # "i$iv":I
    .local v6, "size$iv":I
    .local v7, "i$iv":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 335
    aget-object v0, v5, v7

    move-object v8, v0

    check-cast v8, Landroidx/compose/runtime/RememberObserverHolder;

    .local v8, "instance":Landroidx/compose/runtime/RememberObserverHolder;
    const/4 v9, 0x0

    .line 254
    .local v9, "$i$a$-forEach-RememberEventDispatcher$dispatchRememberList$1":I
    invoke-virtual {v8}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v10

    .line 255
    .local v10, "wrapped":Landroidx/compose/runtime/RememberObserver;
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    move-object v11, v8

    .local v11, "instance$iv":Ljava/lang/Object;
    move-object/from16 v12, p0

    .local v12, "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    const/4 v13, 0x0

    .line 336
    .local v13, "$i$f$withComposeStackTrace":I
    nop

    .line 337
    const/4 v0, 0x0

    .line 256
    .local v0, "$i$a$-withComposeStackTrace-RememberEventDispatcher$dispatchRememberList$1$1":I
    :try_start_0
    invoke-interface {v10}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    .end local v0    # "$i$a$-withComposeStackTrace-RememberEventDispatcher$dispatchRememberList$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    nop

    .line 341
    nop

    .line 257
    .end local v11    # "instance$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .end local v13    # "$i$f$withComposeStackTrace":I
    nop

    .line 335
    .end local v8    # "instance":Landroidx/compose/runtime/RememberObserverHolder;
    .end local v9    # "$i$a$-forEach-RememberEventDispatcher$dispatchRememberList$1":I
    .end local v10    # "wrapped":Landroidx/compose/runtime/RememberObserver;
    nop

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 338
    .restart local v8    # "instance":Landroidx/compose/runtime/RememberObserverHolder;
    .restart local v9    # "$i$a$-forEach-RememberEventDispatcher$dispatchRememberList$1":I
    .restart local v10    # "wrapped":Landroidx/compose/runtime/RememberObserver;
    .restart local v11    # "instance$iv":Ljava/lang/Object;
    .restart local v12    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .restart local v13    # "$i$f$withComposeStackTrace":I
    :catchall_0
    move-exception v0

    .line 339
    .local v0, "e$iv":Ljava/lang/Throwable;
    move-object v14, v0

    .line 340
    .local v14, "it$iv":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 339
    .local v15, "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1$iv":I
    iget-object v1, v12, Landroidx/compose/runtime/internal/RememberEventDispatcher;->traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    if-eqz v1, :cond_1

    .line 340
    .local v1, "$this$withComposeStackTrace_u24lambda_u240_u240$iv":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    const/16 v16, 0x0

    .line 339
    .local v16, "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1$iv":I
    invoke-interface {v1, v0, v11}, Landroidx/compose/runtime/tooling/CompositionErrorContext;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .end local v1    # "$this$withComposeStackTrace_u24lambda_u240_u240$iv":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .end local v14    # "it$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1$iv":I
    .end local v16    # "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1$iv":I
    :cond_1
    throw v0

    .line 344
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v8    # "instance":Landroidx/compose/runtime/RememberObserverHolder;
    .end local v9    # "$i$a$-forEach-RememberEventDispatcher$dispatchRememberList$1":I
    .end local v10    # "wrapped":Landroidx/compose/runtime/RememberObserver;
    .end local v11    # "instance$iv":Ljava/lang/Object;
    .end local v12    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .end local v13    # "$i$f$withComposeStackTrace":I
    :cond_2
    nop

    .line 258
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    .end local v6    # "size$iv":I
    .end local v7    # "i$iv":I
    return-void
.end method

.method private static final forgetting$removeFrom(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z
    .locals 11
    .param p0, "$instance"    # Landroidx/compose/runtime/RememberObserverHolder;
    .param p1, "vector"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;)Z"
        }
    .end annotation

    .line 120
    move-object v0, p1

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 363
    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .line 364
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 365
    .local v3, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 366
    .local v4, "size$iv":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 367
    aget-object v5, v3, v2

    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    .local v5, "holder":Landroidx/compose/runtime/RememberObserverHolder;
    const/4 v6, 0x0

    .line 121
    .local v6, "$i$a$-forEach-RememberEventDispatcher$forgetting$removeFrom$1":I
    invoke-virtual {v5}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v7

    .line 122
    .local v7, "nested":Landroidx/compose/runtime/RememberObserver;
    instance-of v8, v7, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    if-eqz v8, :cond_1

    .line 123
    move-object v8, v7

    check-cast v8, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    invoke-virtual {v8}, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->getPausedRemembers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    .line 124
    .local v8, "remembers":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    return v10

    .line 125
    :cond_0
    invoke-static {p0, v8}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->forgetting$removeFrom(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    move-result v9

    if-eqz v9, :cond_1

    return v10

    .line 127
    .end local v8    # "remembers":Landroidx/compose/runtime/collection/MutableVector;
    :cond_1
    nop

    .line 367
    .end local v5    # "holder":Landroidx/compose/runtime/RememberObserverHolder;
    .end local v6    # "$i$a$-forEach-RememberEventDispatcher$forgetting$removeFrom$1":I
    .end local v7    # "nested":Landroidx/compose/runtime/RememberObserver;
    nop

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_2
    nop

    .line 128
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    .end local v4    # "size$iv":I
    const/4 v0, 0x0

    return v0
.end method

.method private final recordLeaving(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method private final withComposeStackTrace(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    .local v0, "$i$f$withComposeStackTrace":I
    nop

    .line 291
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    return-object v1

    .line 292
    :catchall_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Throwable;
    move-object v2, v1

    .line 312
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1":I
    iget-object v4, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    if-eqz v4, :cond_0

    .line 312
    .local v4, "$this$withComposeStackTrace_u24lambda_u240_u240":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    const/4 v5, 0x0

    .line 293
    .local v5, "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1":I
    invoke-interface {v4, v1, p1}, Landroidx/compose/runtime/tooling/CompositionErrorContext;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1":I
    .end local v4    # "$this$withComposeStackTrace_u24lambda_u240_u240":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .end local v5    # "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1":I
    :cond_0
    throw v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 97
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 98
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 99
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 100
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    .line 101
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 102
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 103
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 104
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    .line 105
    iput-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->nestedRemembersLists:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method public deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 0
    .param p1, "instance"    # Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 151
    invoke-direct {p0, p1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final dispatchAbandons()V
    .locals 7

    .line 270
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 271
    .local v0, "abandoning":Ljava/util/Set;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    const-string v1, "Compose:abandons"

    .local v1, "sectionName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "$i$f$trace":I
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, "token$iv":Ljava/lang/Object;
    nop

    .line 360
    const/4 v4, 0x0

    .line 273
    .local v4, "$i$a$-trace-RememberEventDispatcher$dispatchAbandons$1":I
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 276
    .local v5, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/RememberObserver;

    .line 278
    .local v6, "instance":Landroidx/compose/runtime/RememberObserver;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 279
    invoke-interface {v6}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    .end local v6    # "instance":Landroidx/compose/runtime/RememberObserver;
    goto :goto_0

    .line 281
    :cond_1
    nop

    .end local v4    # "$i$a$-trace-RememberEventDispatcher$dispatchAbandons$1":I
    .end local v5    # "iterator":Ljava/util/Iterator;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    nop

    .line 362
    sget-object v4, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 360
    goto :goto_1

    .line 362
    :catchall_0
    move-exception v4

    sget-object v5, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v4

    .line 283
    .end local v1    # "sectionName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "token$iv":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void
.end method

.method public final dispatchOnDeactivateIfNecessary(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 1
    .param p1, "instance"    # Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 233
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {p1}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    .line 237
    :cond_0
    return-void
.end method

.method public final dispatchRememberObservers()V
    .locals 17

    .line 198
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v2, v0

    .line 199
    .local v2, "abandoning":Ljava/util/Set;
    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->ignoreLeavingSet:Landroidx/collection/ScatterSet;

    .line 202
    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    .line 202
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$isNotEmpty":I
    :goto_0
    if-eqz v0, :cond_7

    .line 203
    const-string v3, "Compose:onForgotten"

    .local v3, "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 315
    .local v7, "token$iv":Ljava/lang/Object;
    nop

    .line 316
    const/4 v8, 0x0

    .line 204
    .local v8, "$i$a$-trace-RememberEventDispatcher$dispatchRememberObservers$1":I
    :try_start_0
    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    move-object v9, v0

    .line 205
    .local v9, "releasing":Landroidx/collection/MutableScatterSet;
    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    sub-int/2addr v0, v6

    move v10, v0

    .local v10, "i":I
    :goto_1
    const/4 v0, -0x1

    if-ge v0, v10, :cond_6

    .line 206
    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->leaving:Landroidx/compose/runtime/collection/MutableVector;

    move v11, v10

    .restart local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .local v11, "index$iv":I
    const/4 v12, 0x0

    .line 317
    .local v12, "$i$f$get":I
    iget-object v13, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v13, v13, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "index$iv":I
    .end local v12    # "$i$f$get":I
    nop

    .line 207
    .local v13, "instance":Ljava/lang/Object;
    move-object v0, v13

    .local v0, "instance$iv":Ljava/lang/Object;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    move-object v12, v0

    .end local v0    # "instance$iv":Ljava/lang/Object;
    .local v12, "instance$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 318
    .local v14, "$i$f$withComposeStackTrace":I
    nop

    .line 319
    const/4 v0, 0x0

    .line 208
    .local v0, "$i$a$-withComposeStackTrace-RememberEventDispatcher$dispatchRememberObservers$1$1":I
    :try_start_1
    instance-of v15, v13, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v15, :cond_2

    .line 209
    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v15}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v15

    .line 210
    .local v15, "wrapped":Landroidx/compose/runtime/RememberObserver;
    invoke-interface {v2, v15}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v15}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 213
    .end local v15    # "wrapped":Landroidx/compose/runtime/RememberObserver;
    :cond_2
    instance-of v15, v13, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v15, :cond_4

    .line 215
    if-eqz v9, :cond_3

    invoke-virtual {v9, v13}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 216
    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v15}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onRelease()V

    goto :goto_2

    .line 218
    :cond_3
    move-object v15, v13

    check-cast v15, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {v15}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onDeactivate()V

    .line 221
    :cond_4
    :goto_2
    nop

    .end local v0    # "$i$a$-withComposeStackTrace-RememberEventDispatcher$dispatchRememberObservers$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    nop

    .line 323
    nop

    .line 205
    .end local v11    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .end local v12    # "instance$iv":Ljava/lang/Object;
    .end local v13    # "instance":Ljava/lang/Object;
    .end local v14    # "$i$f$withComposeStackTrace":I
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 320
    .restart local v11    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .restart local v12    # "instance$iv":Ljava/lang/Object;
    .restart local v13    # "instance":Ljava/lang/Object;
    .restart local v14    # "$i$f$withComposeStackTrace":I
    :catchall_0
    move-exception v0

    .line 321
    .local v0, "e$iv":Ljava/lang/Throwable;
    move-object v5, v0

    .line 322
    .local v5, "it$iv":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 321
    .local v6, "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1$iv":I
    :try_start_2
    iget-object v15, v11, Landroidx/compose/runtime/internal/RememberEventDispatcher;->traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    if-eqz v15, :cond_5

    .line 322
    .local v15, "$this$withComposeStackTrace_u24lambda_u240_u240$iv":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    const/16 v16, 0x0

    .line 321
    .local v16, "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1$iv":I
    invoke-interface {v15, v0, v12}, Landroidx/compose/runtime/tooling/CompositionErrorContext;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .end local v2    # "abandoning":Ljava/util/Set;
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "it$iv":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-also-RememberEventDispatcher$withComposeStackTrace$1$iv":I
    .end local v7    # "token$iv":Ljava/lang/Object;
    .end local v15    # "$this$withComposeStackTrace_u24lambda_u240_u240$iv":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .end local v16    # "$i$a$-apply-RememberEventDispatcher$withComposeStackTrace$1$1$iv":I
    :cond_5
    throw v0

    .line 223
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    .end local v10    # "i":I
    .end local v11    # "this_$iv":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .end local v12    # "instance$iv":Ljava/lang/Object;
    .end local v13    # "instance":Ljava/lang/Object;
    .end local v14    # "$i$f$withComposeStackTrace":I
    .restart local v2    # "abandoning":Ljava/util/Set;
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v7    # "token$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v8    # "$i$a$-trace-RememberEventDispatcher$dispatchRememberObservers$1":I
    .end local v9    # "releasing":Landroidx/collection/MutableScatterSet;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    nop

    .line 324
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 316
    goto :goto_3

    .line 324
    :catchall_1
    move-exception v0

    sget-object v5, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 227
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v7    # "token$iv":Ljava/lang/Object;
    :cond_7
    :goto_3
    iget-object v0, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 325
    .local v3, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-eqz v4, :cond_8

    move v5, v6

    .line 227
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$isNotEmpty":I
    :cond_8
    if-eqz v5, :cond_9

    .line 228
    const-string v3, "Compose:onRemembered"

    .local v3, "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 326
    .restart local v4    # "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 327
    .local v5, "token$iv":Ljava/lang/Object;
    nop

    .line 328
    const/4 v0, 0x0

    .line 228
    .local v0, "$i$a$-trace-RememberEventDispatcher$dispatchRememberObservers$2":I
    :try_start_3
    iget-object v6, v1, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    invoke-direct {v1, v6}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberList(Landroidx/compose/runtime/collection/MutableVector;)V

    .end local v0    # "$i$a$-trace-RememberEventDispatcher$dispatchRememberObservers$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 328
    nop

    .line 330
    sget-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 328
    goto :goto_4

    .line 330
    :catchall_2
    move-exception v0

    sget-object v6, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 230
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    .end local v5    # "token$iv":Ljava/lang/Object;
    :cond_9
    :goto_4
    return-void
.end method

.method public final dispatchSideEffects()V
    .locals 11

    .line 261
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 345
    .local v1, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 261
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$isNotEmpty":I
    :goto_0
    if-eqz v2, :cond_2

    .line 262
    const-string v0, "Compose:sideeffects"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 346
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 348
    const/4 v3, 0x0

    .line 263
    .local v3, "$i$a$-trace-RememberEventDispatcher$dispatchSideEffects$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    .local v4, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 349
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    .line 350
    .local v6, "i$iv":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 351
    .local v7, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 352
    .local v8, "size$iv":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 353
    aget-object v9, v7, v6

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .local v9, "sideEffect":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 263
    .local v10, "$i$a$-forEach-RememberEventDispatcher$dispatchSideEffects$1$1":I
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 353
    nop

    .line 354
    .end local v9    # "sideEffect":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$a$-forEach-RememberEventDispatcher$dispatchSideEffects$1$1":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 356
    :cond_1
    nop

    .line 264
    .end local v4    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    .end local v8    # "size$iv":I
    iget-object v4, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 265
    nop

    .end local v3    # "$i$a$-trace-RememberEventDispatcher$dispatchSideEffects$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    nop

    .line 357
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 348
    goto :goto_2

    .line 357
    :catchall_0
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v3

    .line 267
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void
.end method

.method public endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 4
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 187
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    .line 188
    .local v0, "pausedPlaceholders":Landroidx/collection/MutableScatterMap;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    .line 190
    .local v1, "placeholder":Landroidx/compose/runtime/internal/PausedCompositionRemembers;
    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->nestedRemembersLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroidx/compose/runtime/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_0

    .line 312
    .local v2, "it":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 191
    .local v3, "$i$a$-let-RememberEventDispatcher$endResumingScope$1":I
    iput-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    .line 192
    .end local v2    # "it":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$a$-let-RememberEventDispatcher$endResumingScope$1":I
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v1    # "placeholder":Landroidx/compose/runtime/internal/PausedCompositionRemembers;
    :cond_1
    return-void
.end method

.method public final extractRememberSet()Landroidx/collection/ScatterSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    move-object v1, v0

    .local v1, "it":Landroidx/collection/MutableScatterSet;
    const/4 v2, 0x0

    .line 246
    .local v2, "$i$a$-also-RememberEventDispatcher$extractRememberSet$1":I
    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    .line 247
    iget-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 248
    nop

    .line 245
    .end local v1    # "it":Landroidx/collection/MutableScatterSet;
    .end local v2    # "$i$a$-also-RememberEventDispatcher$extractRememberSet$1":I
    check-cast v0, Landroidx/collection/ScatterSet;

    goto :goto_0

    .line 249
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 4
    .param p1, "instance"    # Landroidx/compose/runtime/RememberObserverHolder;

    .line 114
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 117
    .local v0, "removed":Z
    :goto_1
    if-nez v0, :cond_2

    .line 130
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->remembering:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p1, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->forgetting$removeFrom(Landroidx/compose/runtime/RememberObserverHolder;Landroidx/compose/runtime/collection/MutableVector;)Z

    move-result v1

    .line 131
    .local v1, "result":Z
    move v2, v1

    .local v2, "value$iv":Z
    const/4 v3, 0x0

    .line 306
    .local v3, "$i$f$debugRuntimeCheck":I
    nop

    .line 309
    nop

    .line 136
    .end local v1    # "result":Z
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$debugRuntimeCheck":I
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-nez v1, :cond_3

    return-void

    .line 137
    .local v1, "abandoning":Ljava/util/Set;
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v0    # "removed":Z
    .end local v1    # "abandoning":Ljava/util/Set;
    goto :goto_2

    .line 139
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->ignoreLeavingSet:Landroidx/collection/ScatterSet;

    .line 140
    .local v0, "ignoreSet":Landroidx/collection/ScatterSet;
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 141
    :cond_5
    invoke-direct {p0, p1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;)V

    .line 144
    .end local v0    # "ignoreSet":Landroidx/collection/ScatterSet;
    :cond_6
    :goto_2
    return-void
.end method

.method public final ignoreForgotten(Landroidx/collection/ScatterSet;)V
    .locals 0
    .param p1, "ignoreSet"    # Landroidx/collection/ScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RememberObserverHolder;",
            ">;)V"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->ignoreLeavingSet:Landroidx/collection/ScatterSet;

    .line 241
    return-void
.end method

.method public final prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V
    .locals 0
    .param p1, "abandoning"    # Ljava/util/Set;
    .param p2, "traceContext"    # Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 78
    iput-object p1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    .line 79
    iput-object p2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->traceContext:Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 80
    return-void
.end method

.method public releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 3
    .param p1, "instance"    # Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 156
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf()Landroidx/collection/MutableScatterSet;

    move-result-object v0

    move-object v1, v0

    .line 312
    .local v1, "it":Landroidx/collection/MutableScatterSet;
    const/4 v2, 0x0

    .line 156
    .local v2, "$i$a$-also-RememberEventDispatcher$releasing$releasing$1":I
    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    .line 155
    .end local v1    # "it":Landroidx/collection/MutableScatterSet;
    .end local v2    # "$i$a$-also-RememberEventDispatcher$releasing$releasing$1":I
    :cond_0
    nop

    .line 158
    .local v0, "releasing":Landroidx/collection/MutableScatterSet;
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, p1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 6
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 163
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->abandoning:Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 164
    .local v0, "abandoning":Ljava/util/Set;
    :cond_0
    new-instance v1, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/internal/PausedCompositionRemembers;-><init>(Ljava/util/Set;)V

    .line 165
    .local v1, "pausedPlaceholder":Landroidx/compose/runtime/internal/PausedCompositionRemembers;
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    if-nez v2, :cond_1

    .line 166
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v2

    move-object v3, v2

    .local v3, "it":Landroidx/collection/MutableScatterMap;
    const/4 v4, 0x0

    .line 167
    .local v4, "$i$a$-also-RememberEventDispatcher$rememberPausingScope$1":I
    iput-object v3, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    .line 168
    nop

    .line 166
    .end local v3    # "it":Landroidx/collection/MutableScatterMap;
    .end local v4    # "$i$a$-also-RememberEventDispatcher$rememberPausingScope$1":I
    nop

    .line 168
    :cond_1
    nop

    .line 165
    invoke-virtual {v2, p1, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    .line 170
    new-instance v3, Landroidx/compose/runtime/RememberObserverHolder;

    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/RememberObserver;

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/RememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    .line 169
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public remembering(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 1
    .param p1, "instance"    # Landroidx/compose/runtime/RememberObserverHolder;

    .line 109
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->rememberSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public sideEffect(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "effect"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->sideEffects:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v1, p1

    .local v1, "element$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 310
    .local v2, "$i$f$plusAssign":I
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 311
    nop

    .line 148
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$plusAssign":I
    return-void
.end method

.method public startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 4
    .param p1, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    iget-object v0, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->pausedPlaceholders:Landroidx/collection/MutableScatterMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/internal/PausedCompositionRemembers;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 176
    .local v0, "placeholder":Landroidx/compose/runtime/internal/PausedCompositionRemembers;
    :goto_0
    if-eqz v0, :cond_2

    .line 177
    iget-object v2, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->nestedRemembersLists:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 178
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroidx/compose/runtime/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    .local v1, "it":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 179
    .local v3, "$i$a$-also-RememberEventDispatcher$startResumingScope$1":I
    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->nestedRemembersLists:Ljava/util/ArrayList;

    .line 180
    nop

    .line 178
    .end local v1    # "it":Ljava/util/ArrayList;
    .end local v3    # "$i$a$-also-RememberEventDispatcher$startResumingScope$1":I
    nop

    .line 181
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2, v1}, Landroidx/compose/runtime/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->getPausedRemembers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    .line 184
    :cond_2
    return-void
.end method

.method public final use(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "abandoning"    # Ljava/util/Set;
    .param p2, "traceContext"    # Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/internal/RememberEventDispatcher;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    .local v0, "$i$f$use":I
    nop

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .line 89
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->clear()V

    throw v1
.end method
