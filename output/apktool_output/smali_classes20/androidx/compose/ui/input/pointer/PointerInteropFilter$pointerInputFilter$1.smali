.class public final Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;
.super Landroidx/compose/ui/input/pointer/PointerInputFilter;
.source "PointerInteropFilter.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInteropFilter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,394:1\n88#2:395\n35#2,5:396\n89#2:401\n88#2:402\n35#2,5:403\n89#2:408\n103#2:409\n35#2,5:410\n104#2:415\n35#2,5:416\n88#2:421\n35#2,5:422\n89#2:427\n103#2:428\n35#2,5:429\n104#2:434\n35#2,5:435\n103#2:440\n35#2,5:441\n104#2:446\n35#2,5:447\n*S KotlinDebug\n*F\n+ 1 PointerInteropFilter.android.kt\nandroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1\n*L\n223#1:395\n223#1:396,5\n223#1:401\n227#1:402\n227#1:403,5\n227#1:408\n235#1:409\n235#1:410,5\n235#1:415\n255#1:416,5\n270#1:421\n270#1:422,5\n270#1:427\n278#1:428\n278#1:429,5\n278#1:434\n281#1:435,5\n319#1:440\n319#1:441,5\n319#1:446\n345#1:447,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "androidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1",
        "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
        "state",
        "Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;",
        "shareWithSiblings",
        "",
        "getShareWithSiblings",
        "()Z",
        "lastEventDispatchedToInitialPass",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "onPointerEvent",
        "",
        "pointerEvent",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onCancel",
        "reset",
        "dispatchToView",
        "shouldConsume",
        "stopDispatching",
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


# instance fields
.field private lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

.field private state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

.field final synthetic this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V
    .locals 1
    .param p1, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 202
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;-><init>()V

    .line 204
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Unknown:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 202
    return-void
.end method

.method public static final synthetic access$setState$p(Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;
    .param p1, "<set-?>"    # Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 202
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    return-void
.end method

.method private final dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;Z)V
    .locals 13
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "shouldConsume"    # Z

    .line 317
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "changes":Ljava/util/List;
    move-object v1, v0

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 440
    .local v2, "$i$f$fastAny":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 441
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 442
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 443
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 440
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v11, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v12, 0x0

    .line 319
    .local v12, "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$dispatchToView$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v11

    .line 440
    .end local v11    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v12    # "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$dispatchToView$1":I
    if-eqz v11, :cond_0

    move v3, v7

    goto :goto_1

    .line 443
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_0
    nop

    .line 441
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 445
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .line 446
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    const/4 v3, 0x0

    .line 319
    .end local v1    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_1
    if-eqz v3, :cond_2

    .line 321
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->stopDispatching(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    goto :goto_3

    .line 324
    :cond_2
    nop

    .line 325
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->getLayoutCoordinates$ui()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v1

    .line 324
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$2;

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {v3, p0, v4}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$dispatchToView$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerInteropUtils_androidKt;->toMotionEventScope-d-4ec7I(Landroidx/compose/ui/input/pointer/PointerEvent;JLkotlin/jvm/functions/Function1;)V

    .line 343
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-ne v1, v2, :cond_5

    .line 345
    if-eqz p2, :cond_4

    move-object v1, v0

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_3

    .line 448
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 449
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v6, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v8, 0x0

    .line 345
    .local v8, "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$dispatchToView$3":I
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 449
    .end local v6    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v8    # "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$dispatchToView$3":I
    nop

    .line 447
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 451
    .end local v3    # "index$iv":I
    :cond_3
    nop

    .line 347
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getInternalPointerEvent$ui()Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 348
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getDisallowIntercept$ui()Z

    move-result v2

    .line 347
    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->setSuppressMovementConsumption(Z)V

    .line 351
    :cond_5
    :goto_3
    return-void

    .line 325
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 326
    const-string/jumbo v2, "layoutCoordinates not set"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final reset()V
    .locals 2

    .line 300
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Unknown:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 301
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->setDisallowIntercept$ui(Z)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 303
    return-void
.end method

.method private final stopDispatching(Landroidx/compose/ui/input/pointer/PointerEvent;)V
    .locals 4
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 354
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-ne v0, v1, :cond_1

    .line 356
    nop

    .line 357
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->getLayoutCoordinates$ui()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    .line 356
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$stopDispatching$1;

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {v2, v3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$stopDispatching$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/input/pointer/PointerInteropUtils_androidKt;->toCancelMotionEventScope-d-4ec7I(Landroidx/compose/ui/input/pointer/PointerEvent;JLkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 358
    const-string/jumbo v1, "layoutCoordinates not set"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 364
    return-void
.end method


# virtual methods
.method public getShareWithSiblings()Z
    .locals 1

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onCancel()V
    .locals 4

    .line 290
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-ne v0, v1, :cond_0

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$onCancel$1;

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {v2, v3}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1$onCancel$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/input/pointer/PointerInteropUtils_androidKt;->emptyCancelMotionEventScope(JLkotlin/jvm/functions/Function1;)V

    .line 294
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->reset()V

    .line 296
    :cond_0
    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 20
    .param p1, "pointerEvent"    # Landroidx/compose/ui/input/pointer/PointerEvent;
    .param p2, "pass"    # Landroidx/compose/ui/input/pointer/PointerEventPass;
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-bounds$0"    # J

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "changes":Ljava/util/List;
    move-object v4, v3

    .local v4, "$this$fastAll$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 395
    .local v5, "$i$f$fastAll":I
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 396
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_2

    .line 397
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 398
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 395
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v15, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v16, 0x0

    .line 224
    .local v16, "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$isMoveEvent$1":I
    invoke-static {v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v17

    if-nez v17, :cond_0

    move v15, v11

    goto :goto_1

    :cond_0
    move v15, v10

    .line 395
    .end local v15    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v16    # "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$isMoveEvent$1":I
    :goto_1
    if-nez v15, :cond_1

    move v4, v10

    goto :goto_2

    .line 398
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_1
    nop

    .line 396
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 400
    .end local v8    # "index$iv$iv":I
    :cond_2
    nop

    .line 401
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    move v4, v11

    .line 223
    .end local v4    # "$this$fastAll$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastAll":I
    :goto_2
    nop

    .line 222
    nop

    .line 227
    .local v4, "isMoveEvent":Z
    if-eqz v4, :cond_5

    move-object v5, v3

    .local v5, "$this$fastAll$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 402
    .local v6, "$i$f$fastAll":I
    move-object v7, v5

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 403
    .local v8, "$i$f$fastForEach":I
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    move-object v12, v7

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_3
    if-ge v9, v12, :cond_4

    .line 404
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 405
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 402
    .local v15, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v16, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v17, 0x0

    .line 227
    .local v17, "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$hasUnconsumedMove$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v18

    .line 402
    .end local v16    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v17    # "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$hasUnconsumedMove$1":I
    if-eqz v18, :cond_3

    move v5, v10

    goto :goto_4

    .line 405
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_3
    nop

    .line 403
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 407
    .end local v9    # "index$iv$iv":I
    :cond_4
    nop

    .line 408
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    move v5, v11

    .line 227
    .end local v5    # "$this$fastAll$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastAll":I
    :goto_4
    if-eqz v5, :cond_5

    move v5, v11

    goto :goto_5

    :cond_5
    move v5, v10

    .line 234
    .local v5, "hasUnconsumedMove":Z
    :goto_5
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getDisallowIntercept$ui()Z

    move-result v6

    if-nez v6, :cond_b

    .line 235
    move-object v6, v3

    .local v6, "$this$fastAny$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 409
    .local v7, "$i$f$fastAny":I
    move-object v8, v6

    .local v8, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 410
    .local v9, "$i$f$fastForEach":I
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    move-object v13, v8

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v13

    :goto_6
    if-ge v12, v13, :cond_9

    .line 411
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 412
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 409
    .local v16, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v17, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v18, 0x0

    .line 236
    .local v18, "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$dispatchDuringInitialTunnel$1":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v19

    if-eqz v19, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v17, v10

    goto :goto_8

    :cond_7
    :goto_7
    move/from16 v17, v11

    .line 409
    .end local v17    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v18    # "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$dispatchDuringInitialTunnel$1":I
    :goto_8
    if-eqz v17, :cond_8

    move v6, v11

    goto :goto_9

    .line 412
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_8
    nop

    .line 410
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 414
    .end local v12    # "index$iv$iv":I
    :cond_9
    nop

    .line 415
    .end local v8    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    move v6, v10

    .line 235
    .end local v6    # "$this$fastAny$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastAny":I
    :goto_9
    if-nez v6, :cond_b

    .line 238
    if-eqz v5, :cond_a

    goto :goto_a

    :cond_a
    move v6, v10

    goto :goto_b

    :cond_b
    :goto_a
    move v6, v11

    .line 233
    :goto_b
    nop

    .line 240
    .local v6, "dispatchDuringInitialTunnel":Z
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->state:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    sget-object v8, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-eq v7, v8, :cond_11

    .line 241
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_e

    if-eqz v6, :cond_e

    .line 242
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 243
    if-eqz v4, :cond_d

    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getDisallowIntercept$ui()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_c

    :cond_c
    move v7, v10

    goto :goto_d

    :cond_d
    :goto_c
    move v7, v11

    .line 244
    .local v7, "shouldConsumeNow":Z
    :goto_d
    invoke-direct {v0, v1, v7}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;Z)V

    .line 249
    .end local v7    # "shouldConsumeNow":Z
    :cond_e
    nop

    .line 250
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_10

    .line 251
    if-eqz v4, :cond_10

    .line 252
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 253
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getDisallowIntercept$ui()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 255
    move-object v7, v3

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 416
    .local v8, "$i$f$fastForEach":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    move-object v12, v7

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    :goto_e
    if-ge v9, v12, :cond_f

    .line 417
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 418
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v14, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v15, 0x0

    .line 255
    .local v15, "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 418
    .end local v14    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v15    # "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$1":I
    nop

    .line 416
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 420
    .end local v9    # "index$iv":I
    :cond_f
    nop

    .line 258
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    :cond_10
    nop

    .line 259
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_11

    .line 260
    if-nez v6, :cond_11

    .line 262
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 264
    invoke-direct {v0, v1, v11}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;Z)V

    .line 267
    :cond_11
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_19

    .line 270
    move-object v7, v3

    .local v7, "$this$fastAll$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 421
    .local v8, "$i$f$fastAll":I
    move-object v9, v7

    .local v9, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 422
    .local v12, "$i$f$fastForEach":I
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    move-object v14, v9

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    :goto_f
    if-ge v13, v14, :cond_13

    .line 423
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 424
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 421
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v18, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v19, 0x0

    .line 270
    .local v19, "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$2":I
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v18

    .line 421
    .end local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$a$-fastAll-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$2":I
    if-nez v18, :cond_12

    move v7, v10

    goto :goto_10

    .line 424
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_12
    nop

    .line 422
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 426
    .end local v13    # "index$iv$iv":I
    :cond_13
    nop

    .line 427
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    move v7, v11

    .line 270
    .end local v7    # "$this$fastAll$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastAll":I
    :goto_10
    if-eqz v7, :cond_14

    .line 271
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->reset()V

    .line 274
    :cond_14
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->lastEventDispatchedToInitialPass:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v4, :cond_19

    .line 278
    move-object v7, v3

    .local v7, "$this$fastAny$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 428
    .local v8, "$i$f$fastAny":I
    move-object v9, v7

    .restart local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 429
    .restart local v12    # "$i$f$fastForEach":I
    const/4 v13, 0x0

    .restart local v13    # "index$iv$iv":I
    move-object v14, v9

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    :goto_11
    if-ge v13, v14, :cond_16

    .line 430
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 431
    .restart local v15    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .restart local v16    # "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 428
    .local v17, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v19, 0x0

    .line 278
    .local v19, "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$3":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v18

    .line 428
    .end local v18    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v19    # "$i$a$-fastAny-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$3":I
    if-eqz v18, :cond_15

    move v10, v11

    goto :goto_12

    .line 431
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_15
    nop

    .line 429
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 433
    .end local v13    # "index$iv$iv":I
    :cond_16
    nop

    .line 434
    .end local v9    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    nop

    .line 278
    .end local v7    # "$this$fastAny$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastAny":I
    :goto_12
    if-eqz v10, :cond_17

    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->this$0:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getDisallowIntercept$ui()Z

    move-result v7

    if-nez v7, :cond_17

    .line 279
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->stopDispatching(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    goto :goto_14

    .line 281
    :cond_17
    move-object v7, v3

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 435
    .local v8, "$i$f$fastForEach":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    move-object v10, v7

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_13
    if-ge v9, v10, :cond_18

    .line 436
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 437
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v12, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v13, 0x0

    .line 281
    .local v13, "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$4":I
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 437
    .end local v12    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v13    # "$i$a$-fastForEach-PointerInteropFilter$pointerInputFilter$1$onPointerEvent$4":I
    nop

    .line 435
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 439
    .end local v9    # "index$iv":I
    :cond_18
    nop

    .line 285
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    :cond_19
    :goto_14
    return-void
.end method
