.class public final Landroidx/compose/foundation/gestures/TransformableKt;
.super Ljava/lang/Object;
.source "Transformable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,399:1\n326#2:400\n1#3:401\n35#4,5:402\n103#4:407\n35#4,5:408\n104#4:413\n35#4,5:414\n103#4:419\n35#4,5:420\n104#4:425\n103#4:426\n35#4,5:427\n104#4:432\n*S KotlinDebug\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n*L\n268#1:400\n322#1:402,5\n340#1:407\n340#1:408,5\n340#1:413\n376#1:414,5\n387#1:419\n387#1:420,5\n387#1:425\n388#1:426\n388#1:427,5\n388#1:432\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u001a:\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u00082\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u001a(\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0002\u0010\u0014\u001a\u001a\u0010\u0015\u001a\u00020\t*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0002\u0010\u0017\u001a\u001c\u0010\u0018\u001a\u0004\u0018\u00010\t*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00a2\u0006\u0002\u0010\u0017\u001a<\u0010\u0019\u001a\u00020\r*\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001b\"\u000e\u0010\n\u001a\u00020\u000bX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "transformable",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/gestures/TransformableState;",
        "lockRotationOnZoomPan",
        "",
        "enabled",
        "canPan",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Offset;",
        "SCROLL_FACTOR",
        "",
        "detectZoomByCtrlMouseScroll",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/TransformEvent;",
        "scrollConfig",
        "Landroidx/compose/foundation/gestures/ScrollConfig;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFirstCtrlMouseScroll",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitCtrlMouseScrollOrNull",
        "detectZoom",
        "panZoomLock",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final SCROLL_FACTOR:F = 545.0f


# direct methods
.method public static final synthetic access$awaitCtrlMouseScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "scrollConfig"    # Landroidx/compose/foundation/gestures/ScrollConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt;->awaitCtrlMouseScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$awaitFirstCtrlMouseScroll(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "scrollConfig"    # Landroidx/compose/foundation/gestures/ScrollConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt;->awaitFirstCtrlMouseScroll(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "panZoomLock"    # Z
    .param p2, "channel"    # Lkotlinx/coroutines/channels/Channel;
    .param p3, "canPan"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableKt;->detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$detectZoomByCtrlMouseScroll(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/Channel;
    .param p2, "scrollConfig"    # Landroidx/compose/foundation/gestures/ScrollConfig;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->detectZoomByCtrlMouseScroll(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final awaitCtrlMouseScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 309
    iget v3, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollConfig;

    .local p0, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p1, "$this$awaitCtrlMouseScrollOrNull":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    .end local p0    # "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    .end local p1    # "$this$awaitCtrlMouseScrollOrNull":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 312
    .local p0, "$this$awaitCtrlMouseScrollOrNull":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p1, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    iput-object p0, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitCtrlMouseScrollOrNull$1;->label:I

    invoke-static {p0, v4, v0, v3, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 309
    return-object v2

    .line 312
    :cond_1
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    .line 309
    .local p0, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    .local p1, "$this$awaitCtrlMouseScrollOrNull":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 313
    .local v2, "pointer":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getKeyboardModifiers-k7X9c1A()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEvent_androidKt;->isCtrlPressed-5xRPYO0(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    move-result v3

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 316
    :cond_2
    nop

    .line 401
    .local p0, "$this$awaitCtrlMouseScrollOrNull_u24lambda_u240":Landroidx/compose/foundation/gestures/ScrollConfig;
    const/4 v3, 0x0

    .line 316
    .local v3, "$i$a$-with-TransformableKt$awaitCtrlMouseScrollOrNull$scrollDelta$1":I
    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    move-result-wide v6

    invoke-interface {p0, v5, v2, v6, v7}, Landroidx/compose/foundation/gestures/ScrollConfig;->calculateMouseWheelScroll-8xgXZGE(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J

    move-result-wide p0

    .line 318
    .end local v3    # "$i$a$-with-TransformableKt$awaitCtrlMouseScrollOrNull$scrollDelta$1":I
    .end local p1    # "$this$awaitCtrlMouseScrollOrNull":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p0, "scrollDelta":J
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    invoke-static {p0, p1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    .end local v2    # "pointer":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local p0    # "scrollDelta":J
    return-object v4

    .line 322
    .restart local v2    # "pointer":Landroidx/compose/ui/input/pointer/PointerEvent;
    .restart local p0    # "scrollDelta":J
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 402
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_4

    .line 403
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 404
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v7, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v8, 0x0

    .line 322
    .local v8, "$i$a$-fastForEach-TransformableKt$awaitCtrlMouseScrollOrNull$2":I
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 404
    .end local v6    # "item$iv":Ljava/lang/Object;
    .end local v7    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v8    # "$i$a$-fastForEach-TransformableKt$awaitCtrlMouseScrollOrNull$2":I
    nop

    .line 402
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 406
    .end local v4    # "index$iv":I
    :cond_4
    nop

    .line 323
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    return-object v2

    .line 314
    .end local p0    # "scrollDelta":J
    :cond_5
    :goto_3
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final awaitFirstCtrlMouseScroll(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 294
    iget v3, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollConfig;

    .local p0, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local p1, "$this$awaitFirstCtrlMouseScroll":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    .end local p0    # "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    .end local p1    # "$this$awaitFirstCtrlMouseScroll":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    .local p0, "$this$awaitFirstCtrlMouseScroll":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local p1, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    .line 299
    .local p0, "scrollConfig":Landroidx/compose/foundation/gestures/ScrollConfig;
    .local p1, "$this$awaitFirstCtrlMouseScroll":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/compose/foundation/gestures/TransformableKt$awaitFirstCtrlMouseScroll$1;->label:I

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/gestures/TransformableKt;->awaitCtrlMouseScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 294
    return-object v2

    .line 299
    :cond_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v4

    .line 294
    .end local v1    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_2
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 300
    .local v1, "offset":Landroidx/compose/ui/geometry/Offset;
    if-eqz v1, :cond_2

    .line 301
    return-object v1

    .line 300
    :cond_2
    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Z",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v1

    .local v5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 326
    iget v2, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget v2, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$2:I

    .local v2, "canceled":Z
    iget v3, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    .local v3, "lockedToPanZoom":Z
    iget v4, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    .local v4, "touchSlop":F
    iget v6, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    .local v6, "pastTouchSlop":Z
    iget-wide v11, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    .local v11, "pan":J
    iget v7, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    .local v7, "zoom":F
    iget v13, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .local v13, "rotation":F
    iget-boolean v14, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    .local v14, "panZoomLock":Z
    iget-object v15, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerEvent;

    .local v15, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    iget-object v9, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "canPan":Lkotlin/jvm/functions/Function1;
    iget-object v10, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/Channel;

    .local v10, "channel":Lkotlinx/coroutines/channels/Channel;
    iget-object v0, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v0, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    move-object/from16 v17, v15

    move-object/from16 v0, p4

    move-object v15, v10

    move v10, v13

    move-object v13, v9

    move-object v9, v8

    move-object v8, v5

    move v5, v4

    move-object v4, v1

    goto/16 :goto_10

    .end local v0    # "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v2    # "canceled":Z
    .end local v3    # "lockedToPanZoom":Z
    .end local v4    # "touchSlop":F
    .end local v6    # "pastTouchSlop":Z
    .end local v7    # "zoom":F
    .end local v9    # "canPan":Lkotlin/jvm/functions/Function1;
    .end local v10    # "channel":Lkotlinx/coroutines/channels/Channel;
    .end local v11    # "pan":J
    .end local v13    # "rotation":F
    .end local v14    # "panZoomLock":Z
    .end local v15    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :pswitch_1
    iget v0, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    .local v0, "lockedToPanZoom":Z
    iget v2, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    .local v2, "touchSlop":F
    iget v3, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    .local v3, "pastTouchSlop":Z
    iget-wide v6, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    .local v6, "pan":J
    iget v4, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    .local v4, "zoom":F
    iget v9, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .local v9, "rotation":F
    iget-boolean v10, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    .local v10, "panZoomLock":Z
    iget-object v11, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "canPan":Lkotlin/jvm/functions/Function1;
    iget-object v12, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/Channel;

    .local v12, "channel":Lkotlinx/coroutines/channels/Channel;
    iget-object v13, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v13, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v1

    move v14, v10

    move v1, v0

    move v10, v9

    move-object/from16 v0, p4

    move-object v9, v8

    move-wide v7, v6

    move-object v6, v5

    move v5, v2

    move-object v2, v15

    goto/16 :goto_3

    .end local v0    # "lockedToPanZoom":Z
    .end local v2    # "touchSlop":F
    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .end local v6    # "pan":J
    .end local v9    # "rotation":F
    .end local v10    # "panZoomLock":Z
    .end local v11    # "canPan":Lkotlin/jvm/functions/Function1;
    .end local v12    # "channel":Lkotlinx/coroutines/channels/Channel;
    .end local v13    # "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_2
    iget v0, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    .restart local v0    # "lockedToPanZoom":Z
    iget v2, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    .restart local v2    # "touchSlop":F
    iget v3, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    .restart local v3    # "pastTouchSlop":Z
    iget-wide v6, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    .restart local v6    # "pan":J
    iget v4, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    .restart local v4    # "zoom":F
    iget v9, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    .restart local v9    # "rotation":F
    iget-boolean v10, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    .restart local v10    # "panZoomLock":Z
    iget-object v11, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .restart local v11    # "canPan":Lkotlin/jvm/functions/Function1;
    iget-object v12, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/Channel;

    .restart local v12    # "channel":Lkotlinx/coroutines/channels/Channel;
    iget-object v13, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .restart local v13    # "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "lockedToPanZoom":Z
    .end local v2    # "touchSlop":F
    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .end local v6    # "pan":J
    .end local v9    # "rotation":F
    .end local v10    # "panZoomLock":Z
    .end local v11    # "canPan":Lkotlin/jvm/functions/Function1;
    .end local v12    # "channel":Lkotlinx/coroutines/channels/Channel;
    .end local v13    # "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-object/from16 v12, p2

    .restart local v12    # "channel":Lkotlinx/coroutines/channels/Channel;
    move/from16 v10, p1

    .restart local v10    # "panZoomLock":Z
    move-object/from16 v11, p3

    .line 331
    .restart local v11    # "canPan":Lkotlin/jvm/functions/Function1;
    const/4 v9, 0x0

    .line 332
    .restart local v9    # "rotation":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 333
    .local v0, "zoom":F
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v13

    .line 334
    .local v13, "pan":J
    const/4 v15, 0x0

    .line 335
    .local v15, "pastTouchSlop":Z
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v3

    .line 336
    .local v3, "touchSlop":F
    const/4 v4, 0x0

    .line 337
    .local v4, "lockedToPanZoom":Z
    iput-object v2, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    iput-object v11, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    iput-boolean v10, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    iput v9, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iput v0, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v13, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iput v15, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v3, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v4, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    const/4 v6, 0x1

    iput v6, v5, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    move v6, v3

    .end local v3    # "touchSlop":F
    .local v6, "touchSlop":F
    const/4 v3, 0x0

    move v7, v4

    .end local v4    # "lockedToPanZoom":Z
    .local v7, "lockedToPanZoom":Z
    const/4 v4, 0x0

    move/from16 v18, v6

    .end local v6    # "touchSlop":F
    .local v18, "touchSlop":F
    const/4 v6, 0x2

    move/from16 v19, v7

    .end local v7    # "lockedToPanZoom":Z
    .local v19, "lockedToPanZoom":Z
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v8, :cond_1

    .line 326
    return-object v8

    .line 337
    :cond_1
    move v4, v0

    move-wide v6, v13

    move v3, v15

    move/from16 v0, v19

    move-object v13, v2

    move/from16 v2, v18

    .line 339
    .end local v15    # "pastTouchSlop":Z
    .end local v18    # "touchSlop":F
    .end local v19    # "lockedToPanZoom":Z
    .local v0, "lockedToPanZoom":Z
    .local v2, "touchSlop":F
    .local v3, "pastTouchSlop":Z
    .local v4, "zoom":F
    .local v6, "pan":J
    .local v13, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_1
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    move-object v9, v8

    move-wide v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    move v1, v0

    move-object/from16 v0, p4

    .end local v9    # "rotation":F
    .end local p4    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "lockedToPanZoom":Z
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "touchSlop":F
    .local v4, "pastTouchSlop":Z
    .local v5, "zoom":F
    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    .local v7, "pan":J
    .local v10, "rotation":F
    .local v11, "panZoomLock":Z
    .local v12, "canPan":Lkotlin/jvm/functions/Function1;
    .local v13, "channel":Lkotlinx/coroutines/channels/Channel;
    .local v14, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_2
    iput-object v14, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    iput-object v13, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    iput-object v12, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    iput-boolean v11, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    iput v10, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iput v5, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v7, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iput v4, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v3, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v1, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    move-object/from16 p0, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local p0, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v0, 0x2

    iput v0, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/4 v0, 0x1

    invoke-static {v14, v15, v6, v0, v15}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v9, :cond_2

    .line 326
    return-object v9

    .line 339
    :cond_2
    move v0, v5

    move v5, v3

    move v3, v4

    move v4, v0

    move-object v0, v14

    move v14, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v0

    move-object/from16 v0, p0

    .line 326
    .end local p0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "pastTouchSlop":Z
    .local v4, "zoom":F
    .local v5, "touchSlop":F
    .local v11, "canPan":Lkotlin/jvm/functions/Function1;
    .local v12, "channel":Lkotlinx/coroutines/channels/Channel;
    .local v13, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v14, "panZoomLock":Z
    :goto_3
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 340
    .local v15, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v18

    .local v18, "$this$fastAny$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 407
    .local v19, "$i$f$fastAny":I
    move-object/from16 p0, v18

    .end local v18    # "$this$fastAny$iv":Ljava/util/List;
    .local p0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 408
    .local v18, "$i$f$fastForEach":I
    const/16 v20, 0x0

    .local v20, "index$iv$iv":I
    move-object/from16 v21, p0

    check-cast v21, Ljava/util/Collection;

    move-object/from16 p1, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local p1, "$completion":Lkotlin/coroutines/Continuation;
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 p2, v1

    move/from16 v1, v20

    .end local v20    # "index$iv$iv":I
    .local v1, "index$iv$iv":I
    .local p2, "lockedToPanZoom":Z
    :goto_4
    if-ge v1, v0, :cond_4

    .line 409
    move/from16 p3, v0

    move-object/from16 v0, p0

    .end local p0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 410
    .local v20, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v20

    .local v21, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 407
    .local v22, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v23, v21

    check-cast v23, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v23, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v24, 0x0

    .line 340
    .local v24, "$i$a$-fastAny-TransformableKt$detectZoom$canceled$1":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v23

    .line 407
    .end local v23    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v24    # "$i$a$-fastAny-TransformableKt$detectZoom$canceled$1":I
    if-eqz v23, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    .line 410
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_3
    nop

    .line 408
    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 p0, v0

    move/from16 v0, p3

    goto :goto_4

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local p0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    :cond_4
    move-object/from16 v0, p0

    .line 412
    .end local v1    # "index$iv$iv":I
    .end local p0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    nop

    .line 413
    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 340
    .end local v19    # "$i$f$fastAny":I
    :goto_5
    nop

    .line 341
    .local v0, "canceled":Z
    if-nez v0, :cond_12

    .line 342
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v19

    .line 343
    .local v19, "zoomChange":F
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v1

    .line 344
    .local v1, "rotationChange":F
    move/from16 p3, v1

    move-object/from16 p0, v2

    .end local v1    # "rotationChange":F
    .end local v2    # "$result":Ljava/lang/Object;
    .local p0, "$result":Ljava/lang/Object;
    .local p3, "rotationChange":F
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v1

    .line 346
    .local v1, "panChange":J
    if-nez v3, :cond_8

    .line 347
    mul-float v4, v4, v19

    .line 348
    add-float v10, v10, p3

    .line 349
    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v7

    .line 351
    move/from16 p4, v3

    const/4 v3, 0x0

    .end local v3    # "pastTouchSlop":Z
    .local p4, "pastTouchSlop":Z
    invoke-static {v15, v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v16

    .line 352
    .local v16, "centroidSize":F
    move/from16 v17, v4

    const/4 v3, 0x1

    .end local v4    # "zoom":F
    .local v17, "zoom":F
    int-to-float v4, v3

    sub-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v4, v4, v16

    .line 353
    .local v4, "zoomMotion":F
    const v18, 0x40490fdb    # (float)Math.PI

    mul-float v18, v18, v10

    mul-float v18, v18, v16

    const/high16 v20, 0x43340000    # 180.0f

    div-float v18, v18, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 354
    .local v16, "rotationMotion":F
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v18

    .line 356
    .local v18, "panMotion":F
    nop

    .line 357
    cmpl-float v20, v4, v5

    if-gtz v20, :cond_6

    .line 358
    .end local v4    # "zoomMotion":F
    cmpl-float v4, v16, v5

    if-gtz v4, :cond_6

    .line 359
    cmpl-float v4, v18, v5

    if-lez v4, :cond_5

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v11, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    .line 367
    .end local v16    # "rotationMotion":F
    .end local v18    # "panMotion":F
    :cond_5
    move/from16 v16, p2

    move/from16 v3, p4

    move/from16 v4, v17

    goto :goto_8

    .line 361
    .end local p2    # "lockedToPanZoom":Z
    .end local p4    # "pastTouchSlop":Z
    .restart local v16    # "rotationMotion":F
    :cond_6
    :goto_6
    const/4 v4, 0x1

    .line 362
    .local v4, "pastTouchSlop":Z
    if-eqz v14, :cond_7

    cmpg-float v18, v16, v5

    if-gez v18, :cond_7

    move/from16 v16, v3

    goto :goto_7

    .end local v16    # "rotationMotion":F
    :cond_7
    const/16 v16, 0x0

    .line 363
    .local v16, "lockedToPanZoom":Z
    :goto_7
    sget-object v3, Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;

    invoke-interface {v12, v3}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move/from16 v4, v17

    goto :goto_8

    .line 346
    .end local v16    # "lockedToPanZoom":Z
    .end local v17    # "zoom":F
    .restart local v3    # "pastTouchSlop":Z
    .local v4, "zoom":F
    .restart local p2    # "lockedToPanZoom":Z
    :cond_8
    move/from16 p4, v3

    .end local v3    # "pastTouchSlop":Z
    .restart local p4    # "pastTouchSlop":Z
    move/from16 v16, p2

    .line 367
    .end local p2    # "lockedToPanZoom":Z
    .end local p4    # "pastTouchSlop":Z
    .restart local v3    # "pastTouchSlop":Z
    .restart local v16    # "lockedToPanZoom":Z
    :goto_8
    if-eqz v3, :cond_11

    .line 368
    const/16 v17, 0x0

    if-eqz v16, :cond_9

    move/from16 v22, v17

    goto :goto_9

    :cond_9
    move/from16 v22, p3

    .line 369
    .end local p3    # "rotationChange":F
    .local v22, "effectiveRotation":F
    :goto_9
    nop

    .line 370
    cmpg-float v17, v22, v17

    if-nez v17, :cond_a

    const/16 v17, 0x1

    goto :goto_a

    :cond_a
    const/16 v17, 0x0

    :goto_a
    if-eqz v17, :cond_d

    .line 371
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v19, v17

    if-nez v17, :cond_b

    const/16 v17, 0x1

    goto :goto_b

    :cond_b
    const/16 v17, 0x0

    :goto_b
    if-eqz v17, :cond_c

    .line 372
    sget-object v17, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    move/from16 p2, v3

    move/from16 p4, v4

    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .local p2, "pastTouchSlop":Z
    .local p4, "zoom":F
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v3

    invoke-interface {v11, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_c

    .line 371
    .end local p2    # "pastTouchSlop":Z
    .end local p4    # "zoom":F
    .restart local v3    # "pastTouchSlop":Z
    .restart local v4    # "zoom":F
    :cond_c
    move/from16 p2, v3

    move/from16 p4, v4

    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .restart local p2    # "pastTouchSlop":Z
    .restart local p4    # "zoom":F
    goto :goto_c

    .line 370
    .end local p2    # "pastTouchSlop":Z
    .end local p4    # "zoom":F
    .restart local v3    # "pastTouchSlop":Z
    .restart local v4    # "zoom":F
    :cond_d
    move/from16 p2, v3

    move/from16 p4, v4

    .line 374
    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .restart local p2    # "pastTouchSlop":Z
    .restart local p4    # "zoom":F
    :goto_c
    new-instance v18, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;

    const/16 v23, 0x0

    move-wide/from16 v20, v1

    .end local v1    # "panChange":J
    .local v20, "panChange":J
    invoke-direct/range {v18 .. v23}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(FJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    invoke-interface {v12, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v19    # "zoomChange":F
    .end local v20    # "panChange":J
    .end local v22    # "effectiveRotation":F
    :cond_e
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_d
    if-ge v3, v4, :cond_10

    .line 415
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 416
    .local v17, "item$iv":Ljava/lang/Object;
    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v17, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v18, 0x0

    .line 377
    .local v18, "$i$a$-fastForEach-TransformableKt$detectZoom$2":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 378
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 380
    .end local v17    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_f
    nop

    .line 416
    .end local v18    # "$i$a$-fastForEach-TransformableKt$detectZoom$2":I
    nop

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 418
    .end local v3    # "index$iv":I
    :cond_10
    nop

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    goto :goto_e

    .line 367
    .end local p2    # "pastTouchSlop":Z
    .end local p4    # "zoom":F
    .local v1, "panChange":J
    .local v3, "pastTouchSlop":Z
    .restart local v4    # "zoom":F
    .restart local v19    # "zoomChange":F
    .restart local p3    # "rotationChange":F
    :cond_11
    move-wide/from16 v20, v1

    move/from16 p2, v3

    move/from16 p4, v4

    .line 385
    .end local v1    # "panChange":J
    .end local v3    # "pastTouchSlop":Z
    .end local v4    # "zoom":F
    .end local v19    # "zoomChange":F
    .end local p3    # "rotationChange":F
    .restart local p2    # "pastTouchSlop":Z
    .restart local p4    # "zoom":F
    :goto_e
    move/from16 v1, p2

    move-object v2, v9

    move/from16 v3, v16

    move-wide v8, v7

    move/from16 v7, p4

    goto :goto_f

    .line 383
    .end local v16    # "lockedToPanZoom":Z
    .end local p0    # "$result":Ljava/lang/Object;
    .end local p4    # "zoom":F
    .local v2, "$result":Ljava/lang/Object;
    .restart local v3    # "pastTouchSlop":Z
    .restart local v4    # "zoom":F
    .local p2, "lockedToPanZoom":Z
    :cond_12
    move-object/from16 p0, v2

    move/from16 p4, v3

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "pastTouchSlop":Z
    .restart local p0    # "$result":Ljava/lang/Object;
    .local p4, "pastTouchSlop":Z
    sget-object v1, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {v12, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move/from16 v3, p2

    move/from16 v1, p4

    move-object v2, v9

    move-wide v8, v7

    move v7, v4

    .line 385
    .end local v4    # "zoom":F
    .end local p2    # "lockedToPanZoom":Z
    .end local p4    # "pastTouchSlop":Z
    .local v1, "pastTouchSlop":Z
    .local v3, "lockedToPanZoom":Z
    .local v7, "zoom":F
    .local v8, "pan":J
    :goto_f
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v13, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    iput-object v12, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    iput-object v11, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    iput-object v15, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    iput-boolean v14, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->Z$0:Z

    iput v10, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iput v7, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v8, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iput v1, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v5, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v3, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    iput v0, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$2:I

    move/from16 p2, v0

    .end local v0    # "canceled":Z
    .local p2, "canceled":Z
    const/4 v0, 0x3

    iput v0, v6, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    invoke-interface {v13, v4, v6}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_13

    .line 326
    return-object v2

    .line 385
    :cond_13
    move-object/from16 v4, p0

    move-object/from16 v16, v13

    move-object/from16 v17, v15

    move-object v13, v11

    move-object v15, v12

    move-wide v11, v8

    move-object v9, v2

    move-object v8, v6

    move/from16 v2, p2

    move v6, v1

    move-object v1, v0

    move-object/from16 v0, p1

    .line 326
    .end local v1    # "pastTouchSlop":Z
    .end local v12    # "channel":Lkotlinx/coroutines/channels/Channel;
    .end local p0    # "$result":Ljava/lang/Object;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p2    # "canceled":Z
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "canceled":Z
    .local v4, "$result":Ljava/lang/Object;
    .local v6, "pastTouchSlop":Z
    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    .local v11, "pan":J
    .local v13, "canPan":Lkotlin/jvm/functions/Function1;
    .local v15, "channel":Lkotlinx/coroutines/channels/Channel;
    .local v16, "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v17, "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    :goto_10
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 387
    .local v1, "finalEvent":Landroidx/compose/ui/input/pointer/PointerEvent;
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/16 v18, 0x0

    .line 419
    .local v18, "$i$f$fastAny":I
    nop

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/16 v19, 0x0

    .line 420
    .local v19, "$i$f$fastForEach":I
    const/16 v20, 0x0

    .local v20, "index$iv$iv":I
    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Collection;

    move-object/from16 p0, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local p0, "$completion":Lkotlin/coroutines/Continuation;
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 p1, v2

    move/from16 v2, v20

    .end local v20    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    .local p1, "canceled":Z
    :goto_11
    if-ge v2, v0, :cond_15

    .line 421
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 422
    .local v20, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v20

    .restart local v21    # "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 419
    .local v22, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v23, v21

    check-cast v23, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .restart local v23    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v25, 0x0

    .line 387
    .local v25, "$i$a$-fastAny-TransformableKt$detectZoom$finallyCanceled$1":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v23

    .line 419
    .end local v23    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v25    # "$i$a$-fastAny-TransformableKt$detectZoom$finallyCanceled$1":I
    if-eqz v23, :cond_14

    const/4 v0, 0x1

    goto :goto_12

    .line 422
    .end local v21    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_14
    nop

    .line 420
    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 424
    .end local v2    # "index$iv$iv":I
    :cond_15
    nop

    .line 425
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 387
    .end local v18    # "$i$f$fastAny":I
    :goto_12
    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    const/4 v0, 0x1

    goto :goto_13

    :cond_16
    const/4 v0, 0x0

    .line 388
    .local v0, "finallyCanceled":Z
    :goto_13
    if-nez p1, :cond_1a

    if-nez v0, :cond_1a

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .end local v17    # "event":Landroidx/compose/ui/input/pointer/PointerEvent;
    .end local p1    # "canceled":Z
    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 426
    .local v1, "$i$f$fastAny":I
    nop

    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 427
    .local v2, "$i$f$fastForEach":I
    const/16 v17, 0x0

    .local v17, "index$iv$iv":I
    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Collection;

    move/from16 p1, v1

    .end local v1    # "$i$f$fastAny":I
    .local p1, "$i$f$fastAny":I
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 p2, v2

    move/from16 v2, v17

    .end local v17    # "index$iv$iv":I
    .local v2, "index$iv$iv":I
    .local p2, "$i$f$fastForEach":I
    :goto_14
    if-ge v2, v1, :cond_18

    .line 428
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .line 429
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 426
    .local v19, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v20, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/16 v21, 0x0

    .line 388
    .local v21, "$i$a$-fastAny-TransformableKt$detectZoom$3":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v20

    .line 426
    .end local v20    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v21    # "$i$a$-fastAny-TransformableKt$detectZoom$3":I
    if-eqz v20, :cond_17

    const/4 v0, 0x1

    goto :goto_15

    .line 429
    .end local v18    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_17
    nop

    .line 427
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 431
    .end local v2    # "index$iv$iv":I
    :cond_18
    nop

    .line 432
    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local p2    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    .line 388
    .end local p1    # "$i$f$fastAny":I
    :goto_15
    if-nez v0, :cond_19

    goto :goto_16

    :cond_19
    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v8

    move-wide v7, v11

    move-object v12, v13

    move v11, v14

    move-object v13, v15

    move-object/from16 v14, v16

    goto/16 :goto_2

    .line 389
    .end local v3    # "lockedToPanZoom":Z
    .end local v5    # "touchSlop":F
    .end local v6    # "pastTouchSlop":Z
    .end local v7    # "zoom":F
    .end local v10    # "rotation":F
    .end local v11    # "pan":J
    .end local v13    # "canPan":Lkotlin/jvm/functions/Function1;
    .end local v14    # "panZoomLock":Z
    .end local v15    # "channel":Lkotlinx/coroutines/channels/Channel;
    .end local v16    # "$this$detectZoom":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_1a
    :goto_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final detectZoomByCtrlMouseScroll(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$detectZoomByCtrlMouseScroll"    # Landroidx/compose/ui/input/pointer/PointerInputScope;
    .param p1, "channel"    # Lkotlinx/coroutines/channels/Channel;
    .param p2, "scrollConfig"    # Landroidx/compose/foundation/gestures/ScrollConfig;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    .line 400
    .local v0, "$i$f$currentCoroutineContext":I
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 268
    .end local v0    # "$i$f$currentCoroutineContext":I
    nop

    .line 269
    .local v1, "currentContext":Lkotlin/coroutines/CoroutineContext;
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoomByCtrlMouseScroll$2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoomByCtrlMouseScroll$2;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p3}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 291
    return-object v0
.end method

.method public static final transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZ)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$transformable"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/gestures/TransformableState;
    .param p2, "canPan"    # Lkotlin/jvm/functions/Function1;
    .param p3, "lockRotationOnZoomPan"    # Z
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/TransformableState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Boolean;",
            ">;ZZ)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 104
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableElement;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableElement;-><init>(Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZ)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$transformable"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/gestures/TransformableState;
    .param p2, "lockRotationOnZoomPan"    # Z
    .param p3, "enabled"    # Z

    .line 75
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/TransformableKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic transformable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 99
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 102
    const/4 p3, 0x0

    .line 99
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 103
    const/4 p4, 0x1

    .line 99
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic transformable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 71
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 73
    const/4 p2, 0x0

    .line 71
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 74
    const/4 p3, 0x1

    .line 71
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method static final transformable$lambda$0(Landroidx/compose/ui/geometry/Offset;)Z
    .locals 1
    .param p0, "it"    # Landroidx/compose/ui/geometry/Offset;

    .line 75
    const/4 v0, 0x1

    return v0
.end method
