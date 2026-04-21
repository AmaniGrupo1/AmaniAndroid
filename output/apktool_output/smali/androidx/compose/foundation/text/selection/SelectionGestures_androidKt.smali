.class public final Landroidx/compose/foundation/text/selection/SelectionGestures_androidKt;
.super Ljava/lang/Object;
.source "SelectionGestures.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionGestures.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionGestures.android.kt\nandroidx/compose/foundation/text/selection/SelectionGestures_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,35:1\n88#2:36\n35#2,5:37\n89#2:42\n*S KotlinDebug\n*F\n+ 1 SelectionGestures.android.kt\nandroidx/compose/foundation/text/selection/SelectionGestures_androidKt\n*L\n31#1:36\n31#1:37,5\n31#1:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "isMouseOrTouchPad",
        "",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
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


# direct methods
.method public static final isMouseOrTouchPad(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 15
    .param p0, "$this$isMouseOrTouchPad"    # Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAll$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$f$fastAll":I
    move-object v2, v0

    .local v2, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 37
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv$iv":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_1

    .line 38
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 39
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 36
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .local v11, "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    const/4 v12, 0x0

    .line 31
    .local v12, "$i$a$-fastAll-SelectionGestures_androidKt$isMouseOrTouchPad$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v13

    sget-object v14, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    move-result v14

    invoke-static {v13, v14}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v11

    .line 36
    .end local v11    # "it":Landroidx/compose/ui/input/pointer/PointerInputChange;
    .end local v12    # "$i$a$-fastAll-SelectionGestures_androidKt$isMouseOrTouchPad$1":I
    if-nez v11, :cond_0

    move v0, v6

    goto :goto_1

    .line 39
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_0
    nop

    .line 37
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v4    # "index$iv$iv":I
    :cond_1
    nop

    .line 42
    .end local v2    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    move v0, v7

    .line 31
    .end local v0    # "$this$fastAll$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastAll":I
    :goto_1
    if-nez v0, :cond_4

    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    if-nez v0, :cond_4

    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x100008

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-ne v0, v7, :cond_3

    move v0, v7

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    if-eqz v0, :cond_5

    :cond_4
    move v6, v7

    .line 31
    :cond_5
    return v6
.end method
