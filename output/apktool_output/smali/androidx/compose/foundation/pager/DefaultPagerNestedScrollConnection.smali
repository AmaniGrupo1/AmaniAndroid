.class final Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;
.super Ljava/lang/Object;
.source "Pager.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n*L\n1#1,598:1\n65#2:599\n69#2:602\n65#2:605\n69#2:608\n65#2:610\n69#2:613\n60#3:600\n70#3:603\n60#3:606\n70#3:609\n60#3:611\n70#3:614\n22#4:601\n22#4:604\n22#4:607\n22#4:612\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection\n*L\n514#1:599\n515#1:602\n522#1:605\n522#1:608\n540#1:610\n540#1:613\n514#1:600\n515#1:603\n522#1:606\n522#1:609\n540#1:611\n540#1:614\n514#1:601\n515#1:604\n522#1:607\n540#1:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000c\u001a\u00020\r*\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u0018*\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ \u0010\u001f\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008 \u0010!J\u0013\u0010\"\u001a\u00020\u0018*\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008#\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "<init>",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)V",
        "getState",
        "()Landroidx/compose/foundation/pager/PagerState;",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "consumeOnOrientation",
        "Landroidx/compose/ui/unit/Velocity;",
        "consumeOnOrientation-QWom1Mo",
        "(JLandroidx/compose/foundation/gestures/Orientation;)J",
        "onPreScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "available",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "toFloat",
        "",
        "toFloat-k-4lQ0M",
        "(J)F",
        "onPostScroll",
        "consumed",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPostFling",
        "onPostFling-RZ2iAVY",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mainAxis",
        "mainAxis-k-4lQ0M",
        "foundation"
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
.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    .line 473
    iput-object p2, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 471
    return-void
.end method

.method private final mainAxis-k-4lQ0M(J)F
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-$this$mainAxis$0"    # J

    .line 540
    iget-object v0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 610
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 611
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v6, v6

    .local v6, "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 612
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 611
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 610
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    goto :goto_0

    .line 540
    :cond_0
    move-wide v0, p1

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 613
    .local v2, "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 614
    .local v5, "$i$f$unpackFloat2":I
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v3

    long-to-int v6, v6

    .restart local v6    # "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 612
    .restart local v7    # "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 614
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 613
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 540
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    :goto_0
    return v6
.end method

.method private final toFloat-k-4lQ0M(J)F
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-$this$toFloat$0"    # J

    .line 522
    iget-object v0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 605
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 606
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v6, v6

    .local v6, "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 607
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 606
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 605
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    goto :goto_0

    .line 522
    :cond_0
    move-wide v0, p1

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 608
    .local v2, "$i$f$getY-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 609
    .local v5, "$i$f$unpackFloat2":I
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v3

    long-to-int v6, v6

    .restart local v6    # "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 607
    .restart local v7    # "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 609
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 608
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 522
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    :goto_0
    return v6
.end method


# virtual methods
.method public final consumeOnOrientation-QWom1Mo(JLandroidx/compose/foundation/gestures/Orientation;)J
    .locals 7
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0"    # J
    .param p3, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 477
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p3, v0, :cond_0

    .line 478
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v1, p1

    .end local p1    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    .local v1, "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFILjava/lang/Object;)J

    move-result-wide p1

    move-wide v0, v1

    .end local v1    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    .local v0, "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    goto :goto_0

    .line 480
    .end local v0    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    .restart local p1    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    :cond_0
    move-wide v0, p1

    .end local p1    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    .restart local v0    # "$v$c$androidx-compose-ui-unit-Velocity$-$this$consumeOnOrientation$0":J
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFILjava/lang/Object;)J

    move-result-wide p1

    .line 477
    :goto_0
    return-wide p1
.end method

.method public final getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method

.method public final getState()Landroidx/compose/foundation/pager/PagerState;
    .locals 1

    .line 472
    iget-object v0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    return-object v0
.end method

.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-unit-Velocity$-consumed$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-Velocity$-available$0"    # J
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

    .line 536
    iget-object v0, p0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0, p3, p4, v0}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->consumeOnOrientation-QWom1Mo(JLandroidx/compose/foundation/gestures/Orientation;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-consumed$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p5, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 529
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getSideEffect-WNlRxjI()I

    move-result v0

    invoke-static {p5, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->mainAxis-k-4lQ0M(J)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 530
    :cond_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Scroll cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_2
    :goto_1
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 20
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-available$0"    # J
    .param p3, "$v$c$androidx-compose-ui-input-nestedscroll-NestedScrollSource$-source$0"    # I

    .line 485
    move-object/from16 v0, p0

    .line 487
    sget-object v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getUserInput-WNlRxjI()I

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    iget-object v1, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    .line 490
    invoke-direct/range {p0 .. p2}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->toFloat-k-4lQ0M(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 493
    iget-object v1, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v1

    iget-object v4, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    .line 494
    .local v1, "currentPageOffset":F
    iget-object v4, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSize()I

    move-result v4

    iget-object v5, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getPageSpacing()I

    move-result v5

    add-int/2addr v4, v5

    .line 496
    .local v4, "pageAvailableSpace":I
    int-to-float v5, v4

    iget-object v6, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 495
    nop

    .line 498
    .local v5, "nextClosestPageOffset":F
    const/4 v6, 0x0

    .line 499
    .local v6, "minBound":F
    const/4 v7, 0x0

    .line 501
    .local v7, "maxBound":F
    iget-object v8, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v8}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v8

    cmpl-float v3, v8, v3

    if-lez v3, :cond_0

    .line 502
    move v3, v5

    .line 503
    .end local v6    # "minBound":F
    .local v3, "minBound":F
    move v6, v1

    .end local v7    # "maxBound":F
    .local v6, "maxBound":F
    goto :goto_0

    .line 505
    .end local v3    # "minBound":F
    .local v6, "minBound":F
    .restart local v7    # "maxBound":F
    :cond_0
    move v3, v1

    .line 506
    .end local v6    # "minBound":F
    .restart local v3    # "minBound":F
    move v6, v5

    .line 509
    .end local v7    # "maxBound":F
    .local v6, "maxBound":F
    :goto_0
    invoke-direct/range {p0 .. p2}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->toFloat-k-4lQ0M(J)F

    move-result v7

    .line 510
    .local v7, "delta":F
    invoke-static {v7, v3, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v8

    .line 512
    .local v8, "coerced":F
    iget-object v9, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->state:Landroidx/compose/foundation/pager/PagerState;

    neg-float v10, v8

    invoke-virtual {v9, v10}, Landroidx/compose/foundation/pager/PagerState;->dispatchRawDelta(F)F

    move-result v9

    neg-float v9, v9

    .line 513
    .local v9, "consumed":F
    nop

    .line 514
    iget-object v10, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v10, v11, :cond_1

    move/from16 v17, v1

    move v1, v9

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p1

    .local v10, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v12, 0x0

    .line 599
    .local v12, "$i$f$getX-impl":I
    move-wide v13, v10

    .local v13, "value$iv$iv":J
    const/4 v15, 0x0

    .line 600
    .local v15, "$i$f$unpackFloat1":I
    const/16 v16, 0x20

    move/from16 v17, v1

    .end local v1    # "currentPageOffset":F
    .local v17, "currentPageOffset":F
    shr-long v1, v13, v16

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 601
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 600
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 599
    .end local v13    # "value$iv$iv":J
    .end local v15    # "$i$f$unpackFloat1":I
    nop

    .line 515
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v12    # "$i$f$getX-impl":I
    :goto_1
    iget-object v2, v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v10, :cond_2

    move/from16 v18, v3

    move v2, v9

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p1

    .restart local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 602
    .local v2, "$i$f$getY-impl":I
    move-wide v12, v10

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 603
    .local v14, "$i$f$unpackFloat2":I
    const-wide v15, 0xffffffffL

    move/from16 v19, v2

    move/from16 v18, v3

    .end local v2    # "$i$f$getY-impl":I
    .end local v3    # "minBound":F
    .local v18, "minBound":F
    .local v19, "$i$f$getY-impl":I
    and-long v2, v12, v15

    long-to-int v2, v2

    .local v2, "bits$iv$iv$iv":I
    const/4 v3, 0x0

    .line 604
    .local v3, "$i$f$floatFromBits":I
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 603
    .end local v2    # "bits$iv$iv$iv":I
    .end local v3    # "$i$f$floatFromBits":I
    nop

    .line 602
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackFloat2":I
    nop

    .line 513
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v19    # "$i$f$getY-impl":I
    :goto_2
    move-wide/from16 v10, p1

    invoke-static {v10, v11, v1, v2}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU(JFF)J

    move-result-wide v1

    .end local v4    # "pageAvailableSpace":I
    .end local v5    # "nextClosestPageOffset":F
    .end local v6    # "maxBound":F
    .end local v7    # "delta":F
    .end local v8    # "coerced":F
    .end local v9    # "consumed":F
    .end local v17    # "currentPageOffset":F
    .end local v18    # "minBound":F
    goto :goto_4

    .line 490
    :cond_3
    move-wide/from16 v10, p1

    goto :goto_3

    .line 488
    :cond_4
    move-wide/from16 v10, p1

    goto :goto_3

    .line 487
    :cond_5
    move-wide/from16 v10, p1

    .line 518
    :goto_3
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    .line 485
    :goto_4
    return-wide v1
.end method
