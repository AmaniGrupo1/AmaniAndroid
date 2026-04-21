.class public final Landroidx/compose/runtime/PausedCompositionImpl;
.super Ljava/lang/Object;
.source "PausableComposition.kt"

# interfaces
.implements Landroidx/compose/runtime/PausedComposition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/PausedCompositionImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPausableComposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/PausedCompositionImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 4 Trace.kt\nandroidx/compose/runtime/internal/TraceKt\n+ 5 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,592:1\n351#1:594\n352#1:597\n354#1:599\n351#1:600\n352#1:603\n354#1:605\n351#1:606\n352#1:609\n354#1:611\n351#1:612\n352#1:615\n354#1:617\n351#1:618\n352#1:621\n354#1:623\n351#1:624\n352#1:627\n354#1:629\n1#2:593\n49#3,2:595\n52#3:598\n49#3,2:601\n52#3:604\n49#3,2:607\n52#3:610\n49#3,2:613\n52#3:616\n49#3,2:619\n52#3:622\n49#3,2:625\n52#3:628\n49#3,4:635\n45#4,3:630\n49#4:634\n33#5:633\n*S KotlinDebug\n*F\n+ 1 PausableComposition.kt\nandroidx/compose/runtime/PausedCompositionImpl\n*L\n245#1:594\n245#1:597\n245#1:599\n252#1:600\n252#1:603\n252#1:605\n263#1:606\n263#1:609\n263#1:611\n263#1:612\n263#1:615\n263#1:617\n297#1:618\n297#1:621\n297#1:623\n330#1:624\n330#1:627\n330#1:629\n245#1:595,2\n245#1:598\n252#1:601,2\n252#1:604\n263#1:607,2\n263#1:610\n263#1:613,2\n263#1:616\n297#1:619,2\n297#1:622\n330#1:625,2\n330#1:628\n351#1:635,4\n334#1:630,3\n334#1:634\n335#1:633\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u00002\u00020\u0001B`\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0011\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0008\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0012\u0012\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010?\u001a\u00020\u00102\u0006\u0010@\u001a\u00020AH\u0016J\u0008\u0010B\u001a\u00020\rH\u0016J\u0008\u0010C\u001a\u00020\rH\u0016J\r\u0010D\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008EJ\u0008\u0010F\u001a\u00020\rH\u0002J\u0008\u0010G\u001a\u00020\rH\u0002J\u0019\u0010H\u001a\u00020\r2\u0006\u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020*H\u0082\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0015\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0017\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R \u0010(\u001a\u0012\u0012\u0004\u0012\u00020*0)j\u0008\u0012\u0004\u0012\u00020*`+X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u000203X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u001c\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001407X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u0014\u0010:\u001a\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\"R\u0014\u0010<\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\"R\u0014\u0010=\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\"R\u0014\u0010>\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010\"\u00a8\u0006K"
    }
    d2 = {
        "Landroidx/compose/runtime/PausedCompositionImpl;",
        "Landroidx/compose/runtime/PausedComposition;",
        "composition",
        "Landroidx/compose/runtime/CompositionImpl;",
        "context",
        "Landroidx/compose/runtime/CompositionContext;",
        "composer",
        "Landroidx/compose/runtime/ComposerImpl;",
        "abandonSet",
        "",
        "Landroidx/compose/runtime/RememberObserver;",
        "content",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "reusable",
        "",
        "applier",
        "Landroidx/compose/runtime/Applier;",
        "lock",
        "",
        "Landroidx/compose/runtime/platform/SynchronizedObject;",
        "<init>",
        "(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/ComposerImpl;Ljava/util/Set;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Applier;Ljava/lang/Object;)V",
        "getComposition",
        "()Landroidx/compose/runtime/CompositionImpl;",
        "getContext",
        "()Landroidx/compose/runtime/CompositionContext;",
        "getComposer",
        "()Landroidx/compose/runtime/ComposerImpl;",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "getReusable",
        "()Z",
        "getApplier",
        "()Landroidx/compose/runtime/Applier;",
        "getLock",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "state",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroidx/compose/runtime/PausedCompositionState;",
        "Landroidx/compose/runtime/internal/AtomicReference;",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "owningThread",
        "",
        "invalidScopes",
        "Landroidx/collection/ScatterSet;",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "rememberManager",
        "Landroidx/compose/runtime/internal/RememberEventDispatcher;",
        "getRememberManager$runtime",
        "()Landroidx/compose/runtime/internal/RememberEventDispatcher;",
        "pausableApplier",
        "Landroidx/compose/runtime/RecordingApplier;",
        "getPausableApplier$runtime",
        "()Landroidx/compose/runtime/RecordingApplier;",
        "isRecomposing",
        "isRecomposing$runtime",
        "isComplete",
        "isApplied",
        "isCancelled",
        "resume",
        "shouldPause",
        "Landroidx/compose/runtime/ShouldPauseCallback;",
        "apply",
        "cancel",
        "markIncomplete",
        "markIncomplete$runtime",
        "markComplete",
        "applyChanges",
        "updateState",
        "from",
        "to",
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
.field private final applier:Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation
.end field

.field private final composer:Landroidx/compose/runtime/ComposerImpl;

.field private final composition:Landroidx/compose/runtime/CompositionImpl;

.field private final content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroidx/compose/runtime/CompositionContext;

.field private invalidScopes:Landroidx/collection/ScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ScatterSet<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private owningThread:J

.field private final pausableApplier:Landroidx/compose/runtime/RecordingApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/RecordingApplier<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

.field private final reusable:Z

.field private state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/runtime/PausedCompositionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/PausedCompositionImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/ComposerImpl;Ljava/util/Set;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Applier;Ljava/lang/Object;)V
    .locals 4
    .param p1, "composition"    # Landroidx/compose/runtime/CompositionImpl;
    .param p2, "context"    # Landroidx/compose/runtime/CompositionContext;
    .param p3, "composer"    # Landroidx/compose/runtime/ComposerImpl;
    .param p4, "abandonSet"    # Ljava/util/Set;
    .param p5, "content"    # Lkotlin/jvm/functions/Function2;
    .param p6, "reusable"    # Z
    .param p7, "applier"    # Landroidx/compose/runtime/Applier;
    .param p8, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionImpl;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/ComposerImpl;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/RememberObserver;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 207
    iput-object p2, p0, Landroidx/compose/runtime/PausedCompositionImpl;->context:Landroidx/compose/runtime/CompositionContext;

    .line 208
    iput-object p3, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    .line 210
    iput-object p5, p0, Landroidx/compose/runtime/PausedCompositionImpl;->content:Lkotlin/jvm/functions/Function2;

    .line 211
    iput-boolean p6, p0, Landroidx/compose/runtime/PausedCompositionImpl;->reusable:Z

    .line 212
    iput-object p7, p0, Landroidx/compose/runtime/PausedCompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    .line 213
    iput-object p8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->lock:Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->InitialPending:Landroidx/compose/runtime/PausedCompositionState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J

    .line 217
    invoke-static {}, Landroidx/collection/ScatterSetKt;->emptyScatterSet()Landroidx/collection/ScatterSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;

    .line 219
    new-instance v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-direct {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;-><init>()V

    .line 593
    move-object v1, v0

    .local v1, "$this$rememberManager_u24lambda_u240":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    const/4 v2, 0x0

    .line 219
    .local v2, "$i$a$-apply-PausedCompositionImpl$rememberManager$1":I
    iget-object v3, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/tooling/CompositionErrorContext;

    invoke-virtual {v1, p4, v3}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->prepare(Ljava/util/Set;Landroidx/compose/runtime/tooling/CompositionErrorContext;)V

    .end local v1    # "$this$rememberManager_u24lambda_u240":Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .end local v2    # "$i$a$-apply-PausedCompositionImpl$rememberManager$1":I
    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 220
    new-instance v0, Landroidx/compose/runtime/RecordingApplier;

    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    invoke-interface {v1}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RecordingApplier;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->pausableApplier:Landroidx/compose/runtime/RecordingApplier;

    .line 205
    return-void
.end method

.method private final applyChanges()V
    .locals 11

    .line 334
    const-string v0, "PausedComposition:applyChanges"

    .local v0, "sectionName$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 630
    .local v1, "$i$f$trace":I
    sget-object v2, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/internal/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 631
    .local v2, "token$iv":Ljava/lang/Object;
    nop

    .line 632
    const/4 v3, 0x0

    .line 335
    .local v3, "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/PausedCompositionImpl;->lock:Ljava/lang/Object;

    .local v4, "lock$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 633
    .local v5, "$i$f$synchronized":I
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    .line 337
    .local v6, "$i$a$-synchronized-PausedCompositionImpl$applyChanges$1$1":I
    nop

    .line 338
    const/4 v7, 0x0

    :try_start_1
    iget-object v8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->pausableApplier:Landroidx/compose/runtime/RecordingApplier;

    iget-object v9, p0, Landroidx/compose/runtime/PausedCompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    const-string/jumbo v10, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v8, v9, v10}, Landroidx/compose/runtime/RecordingApplier;->playTo(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V

    .line 339
    iget-object v8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v8}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchRememberObservers()V

    .line 340
    iget-object v8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v8}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchSideEffects()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :try_start_2
    iget-object v8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v8}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    .line 343
    iget-object v8, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/CompositionImpl;->pausedCompositionFinished$runtime(Landroidx/collection/ScatterSet;)V

    .line 344
    nop

    .line 345
    nop

    .end local v6    # "$i$a$-synchronized-PausedCompositionImpl$applyChanges$1$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 633
    :try_start_3
    monitor-exit v4

    .line 346
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    nop

    .end local v3    # "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 632
    nop

    .line 634
    sget-object v3, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    .line 632
    nop

    .line 347
    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    return-void

    .line 342
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v3    # "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local v6    # "$i$a$-synchronized-PausedCompositionImpl$applyChanges$1$1":I
    :catchall_0
    move-exception v8

    :try_start_4
    iget-object v9, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v9}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    .line 343
    iget-object v9, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/CompositionImpl;->pausedCompositionFinished$runtime(Landroidx/collection/ScatterSet;)V

    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    .end local v6    # "$i$a$-synchronized-PausedCompositionImpl$applyChanges$1$1":I
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v3    # "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v4

    .end local v0    # "sectionName$iv":Ljava/lang/String;
    .end local v1    # "$i$f$trace":I
    .end local v2    # "token$iv":Ljava/lang/Object;
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 634
    .end local v3    # "$i$a$-trace-PausedCompositionImpl$applyChanges$1":I
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .restart local v0    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "$i$f$trace":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    :catchall_2
    move-exception v3

    sget-object v4, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/internal/Trace;->endSection(Ljava/lang/Object;)V

    throw v3
.end method

.method private final markComplete()V
    .locals 9

    .line 330
    sget-object v0, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .local v0, "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->ApplyPending:Landroidx/compose/runtime/PausedCompositionState;

    .local v1, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v3, 0x0

    .line 624
    .local v3, "$i$f$updateState":I
    iget-object v4, v2, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .local v4, "value$iv$iv":Z
    const/4 v5, 0x0

    .line 625
    .local v5, "$i$f$checkPrecondition":I
    if-nez v4, :cond_0

    .line 626
    const/4 v6, 0x0

    .line 627
    .local v6, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected state change from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 626
    .end local v6    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v6}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 628
    :cond_0
    nop

    .line 629
    .end local v4    # "value$iv$iv":Z
    .end local v5    # "$i$f$checkPrecondition":I
    nop

    .line 331
    .end local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v1    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v3    # "$i$f$updateState":I
    return-void
.end method

.method private final updateState(Landroidx/compose/runtime/PausedCompositionState;Landroidx/compose/runtime/PausedCompositionState;)V
    .locals 6
    .param p1, "from"    # Landroidx/compose/runtime/PausedCompositionState;
    .param p2, "to"    # Landroidx/compose/runtime/PausedCompositionState;

    const/4 v0, 0x0

    .line 351
    .local v0, "$i$f$updateState":I
    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1, p2}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 635
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 636
    const/4 v3, 0x0

    .line 352
    .local v3, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected state change from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .end local v3    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1":I
    invoke-static {v3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 638
    :cond_0
    nop

    .line 354
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 9

    .line 289
    nop

    .line 290
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PausedCompositionState;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/runtime/PausedCompositionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_0

    .line 302
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    const-string v1, "The paused composition is invalid because of a previous exception"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 302
    const-string v1, "The paused composition has been cancelled"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 300
    const-string v1, "The paused composition has already been applied"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_3
    invoke-direct {p0}, Landroidx/compose/runtime/PausedCompositionImpl;->applyChanges()V

    .line 297
    sget-object v0, Landroidx/compose/runtime/PausedCompositionState;->ApplyPending:Landroidx/compose/runtime/PausedCompositionState;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->Applied:Landroidx/compose/runtime/PausedCompositionState;

    .local v1, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    move-object v2, p0

    .local v0, "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .local v2, "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v3, 0x0

    .line 618
    .local v3, "$i$f$updateState":I
    iget-object v4, v2, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v1}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .local v4, "value$iv$iv":Z
    const/4 v5, 0x0

    .line 619
    .local v5, "$i$f$checkPrecondition":I
    if-nez v4, :cond_0

    .line 620
    const/4 v6, 0x0

    .line 621
    .local v6, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected state change from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 620
    .end local v6    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 622
    :cond_0
    nop

    .line 623
    .end local v4    # "value$iv$iv":Z
    .end local v5    # "$i$f$checkPrecondition":I
    nop

    .line 310
    .end local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v1    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v2    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v3    # "$i$f$updateState":I
    return-void

    .line 290
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 294
    const-string v1, "The paused composition has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :goto_0
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Landroidx/compose/runtime/PausedCompositionState;->Invalid:Landroidx/compose/runtime/PausedCompositionState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 308
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 2

    .line 313
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->Cancelled:Landroidx/compose/runtime/PausedCompositionState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->extractRememberSet()Landroidx/collection/ScatterSet;

    move-result-object v0

    .line 315
    .local v0, "ignoreSet":Landroidx/collection/ScatterSet;
    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    invoke-virtual {v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->dispatchAbandons()V

    .line 316
    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/CompositionImpl;->pausedCompositionFinished$runtime(Landroidx/collection/ScatterSet;)V

    .line 317
    return-void
.end method

.method public final getApplier()Landroidx/compose/runtime/Applier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->applier:Landroidx/compose/runtime/Applier;

    return-object v0
.end method

.method public final getComposer()Landroidx/compose/runtime/ComposerImpl;
    .locals 1

    .line 208
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    return-object v0
.end method

.method public final getComposition()Landroidx/compose/runtime/CompositionImpl;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    return-object v0
.end method

.method public final getContent()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->content:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getContext()Landroidx/compose/runtime/CompositionContext;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->context:Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public final getLock()Ljava/lang/Object;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPausableApplier$runtime()Landroidx/compose/runtime/RecordingApplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/RecordingApplier<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->pausableApplier:Landroidx/compose/runtime/RecordingApplier;

    return-object v0
.end method

.method public final getRememberManager$runtime()Landroidx/compose/runtime/internal/RememberEventDispatcher;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->rememberManager:Landroidx/compose/runtime/internal/RememberEventDispatcher;

    return-object v0
.end method

.method public final getReusable()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->reusable:Z

    return v0
.end method

.method public isApplied()Z
    .locals 2

    .line 229
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->Applied:Landroidx/compose/runtime/PausedCompositionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->Cancelled:Landroidx/compose/runtime/PausedCompositionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 226
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PausedCompositionState;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->ApplyPending:Landroidx/compose/runtime/PausedCompositionState;

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/PausedCompositionState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecomposing$runtime()Z
    .locals 4

    .line 223
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->Recomposing:Landroidx/compose/runtime/PausedCompositionState;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J

    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final markIncomplete$runtime()V
    .locals 3

    .line 323
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 324
    sget-object v1, Landroidx/compose/runtime/PausedCompositionState;->ApplyPending:Landroidx/compose/runtime/PausedCompositionState;

    .line 325
    sget-object v2, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .line 323
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public resume(Landroidx/compose/runtime/ShouldPauseCallback;)Z
    .locals 14
    .param p1, "shouldPause"    # Landroidx/compose/runtime/ShouldPauseCallback;

    .line 235
    nop

    .line 236
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PausedCompositionState;

    sget-object v1, Landroidx/compose/runtime/PausedCompositionImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/runtime/PausedCompositionState;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2e

    const-string v2, " to: "

    const-string v3, "Unexpected state change from: "

    packed-switch v0, :pswitch_data_0

    :try_start_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    goto/16 :goto_1

    .line 277
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 279
    const-string v1, "The paused composition is invalid because of a previous exception"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 275
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 277
    const-string v1, "The paused composition has been cancelled"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 274
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 275
    const-string v1, "The paused composition has been applied"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 271
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 274
    const-string v1, "Pausable composition is complete and apply() should be applied"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 271
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_4
    const-string v0, "Recursive call to resume()"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 252
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_5
    nop

    .line 253
    sget-object v0, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .line 254
    sget-object v4, Landroidx/compose/runtime/PausedCompositionState;->Recomposing:Landroidx/compose/runtime/PausedCompositionState;

    .line 252
    nop

    .local v0, "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    move-object v5, p0

    .local v4, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .local v5, "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v6, 0x0

    .line 600
    .local v6, "$i$f$updateState":I
    iget-object v7, v5, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7, v0, v4}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .local v7, "value$iv$iv":Z
    const/4 v8, 0x0

    .line 601
    .local v8, "$i$f$checkPrecondition":I
    if-nez v7, :cond_0

    .line 602
    const/4 v9, 0x0

    .line 603
    .local v9, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 602
    .end local v9    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v10}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 604
    :cond_0
    nop

    .line 605
    .end local v7    # "value$iv$iv":Z
    .end local v8    # "$i$f$checkPrecondition":I
    nop

    .line 256
    .end local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v4    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v6    # "$i$f$updateState":I
    iget-wide v4, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    .local v4, "previousOwner":J
    nop

    .line 258
    :try_start_2
    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J

    .line 259
    nop

    .line 260
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->context:Landroidx/compose/runtime/CompositionContext;

    iget-object v6, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    iget-object v7, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;

    invoke-virtual {v0, v6, p1, v7}, Landroidx/compose/runtime/CompositionContext;->recomposePaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;

    move-result-object v0

    .line 259
    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :try_start_3
    iput-wide v4, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J

    .line 263
    nop

    .line 264
    sget-object v0, Landroidx/compose/runtime/PausedCompositionState;->Recomposing:Landroidx/compose/runtime/PausedCompositionState;

    .line 265
    sget-object v6, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .line 263
    nop

    .restart local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .local v6, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    move-object v7, p0

    .local v7, "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v8, 0x0

    .line 606
    .local v8, "$i$f$updateState":I
    iget-object v9, v7, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9, v0, v6}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .local v9, "value$iv$iv":Z
    const/4 v10, 0x0

    .line 607
    .local v10, "$i$f$checkPrecondition":I
    if-nez v9, :cond_1

    .line 608
    const/4 v11, 0x0

    .line 609
    .local v11, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .end local v11    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 610
    :cond_1
    nop

    .line 611
    .end local v9    # "value$iv$iv":Z
    .end local v10    # "$i$f$checkPrecondition":I
    nop

    .line 267
    .end local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v6    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v7    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v8    # "$i$f$updateState":I
    nop

    .line 268
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroidx/compose/runtime/PausedCompositionImpl;->markComplete()V

    .end local v4    # "previousOwner":J
    goto/16 :goto_0

    .line 262
    .restart local v4    # "previousOwner":J
    :catchall_0
    move-exception v0

    iput-wide v4, p0, Landroidx/compose/runtime/PausedCompositionImpl;->owningThread:J

    .line 263
    nop

    .line 264
    sget-object v6, Landroidx/compose/runtime/PausedCompositionState;->Recomposing:Landroidx/compose/runtime/PausedCompositionState;

    .line 265
    sget-object v7, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .line 263
    move-object v8, p0

    .local v6, "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .local v7, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .local v8, "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v9, 0x0

    .line 612
    .local v9, "$i$f$updateState":I
    iget-object v10, v8, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v10, v6, v7}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .local v10, "value$iv$iv":Z
    const/4 v11, 0x0

    .line 613
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_2

    .line 614
    const/4 v12, 0x0

    .line 615
    .local v12, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .end local v12    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 616
    :cond_2
    nop

    .line 617
    .end local v10    # "value$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    nop

    .end local v6    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v7    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v8    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v9    # "$i$f$updateState":I
    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0

    .line 238
    .end local v4    # "previousOwner":J
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :pswitch_6
    iget-boolean v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->reusable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReuseFromRoot()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 239
    :cond_3
    nop

    .line 240
    nop

    .line 241
    :try_start_4
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->context:Landroidx/compose/runtime/CompositionContext;

    iget-object v4, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    iget-object v5, p0, Landroidx/compose/runtime/PausedCompositionImpl;->content:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v4, p1, v5}, Landroidx/compose/runtime/CompositionContext;->composeInitialPaused$runtime(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;

    move-result-object v0

    .line 240
    iput-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    :try_start_5
    iget-boolean v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->reusable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endReuseFromRoot()V

    .line 244
    :cond_4
    nop

    .line 245
    nop

    .line 246
    sget-object v0, Landroidx/compose/runtime/PausedCompositionState;->InitialPending:Landroidx/compose/runtime/PausedCompositionState;

    .line 247
    sget-object v4, Landroidx/compose/runtime/PausedCompositionState;->RecomposePending:Landroidx/compose/runtime/PausedCompositionState;

    .line 245
    nop

    .restart local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    move-object v5, p0

    .local v4, "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    const/4 v6, 0x0

    .line 594
    .local v6, "$i$f$updateState":I
    iget-object v7, v5, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7, v0, v4}, Landroidx/compose/animation/core/MutatorMutex$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .local v7, "value$iv$iv":Z
    const/4 v8, 0x0

    .line 595
    .local v8, "$i$f$checkPrecondition":I
    if-nez v7, :cond_5

    .line 596
    const/4 v9, 0x0

    .line 597
    .local v9, "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .end local v9    # "$i$a$-checkPrecondition-PausedCompositionImpl$updateState$1$iv":I
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 598
    :cond_5
    nop

    .line 599
    .end local v7    # "value$iv$iv":Z
    .end local v8    # "$i$f$checkPrecondition":I
    nop

    .line 249
    .end local v0    # "from$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v4    # "to$iv":Landroidx/compose/runtime/PausedCompositionState;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/PausedCompositionImpl;
    .end local v6    # "$i$f$updateState":I
    iget-object v0, p0, Landroidx/compose/runtime/PausedCompositionImpl;->invalidScopes:Landroidx/collection/ScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroidx/compose/runtime/PausedCompositionImpl;->markComplete()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 285
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/PausedCompositionImpl;->isComplete()Z

    move-result v0

    return v0

    .line 243
    :catchall_1
    move-exception v0

    :try_start_6
    iget-boolean v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->reusable:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->composer:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endReuseFromRoot()V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :cond_7
    throw v0

    .line 236
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :goto_1
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 281
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/compose/runtime/PausedCompositionImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Landroidx/compose/runtime/PausedCompositionState;->Invalid:Landroidx/compose/runtime/PausedCompositionState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 283
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
