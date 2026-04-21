.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;
.super Ljava/lang/Object;
.source "TextFieldSelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 6 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 7 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 8 CommonContextMenuArea.kt\nandroidx/compose/foundation/text/CommonContextMenuAreaKt\n*L\n1#1,1487:1\n1128#2,6:1488\n1128#2,6:1494\n1128#2,6:1500\n65#3:1506\n60#4:1507\n85#4:1510\n53#4,3:1512\n22#5:1508\n54#6:1509\n30#7:1511\n190#8,7:1515\n*S KotlinDebug\n*F\n+ 1 TextFieldSelectionManager.kt\nandroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt\n*L\n1358#1:1488,6\n1361#1:1494,6\n1367#1:1500,6\n1419#1:1506\n1419#1:1507\n1439#1:1510\n1449#1:1512,3\n1419#1:1508\n1439#1:1509\n1449#1:1511\n1462#1:1515,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0010\u0008\u001a\u0014\u0010\t\u001a\u00020\u0003*\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u001f\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a3\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011\u00a2\u0006\u0002\u0008\u0013*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "TextFieldSelectionHandle",
        "",
        "isStartHandle",
        "",
        "direction",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "manager",
        "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
        "(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V",
        "isSelectionHandleInVisibleBoundDefault",
        "calculateSelectionMagnifierCenterAndroid",
        "Landroidx/compose/ui/geometry/Offset;",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "calculateSelectionMagnifierCenterAndroid-O0kMr_c",
        "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)J",
        "contextMenuBuilder",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/contextmenu/ContextMenuScope;",
        "Lkotlin/ExtensionFunctionType;",
        "contextMenuState",
        "Landroidx/compose/foundation/contextmenu/ContextMenuState;",
        "itemsAvailability",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/text/MenuItemsAvailability;",
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
.method public static synthetic $r8$lambda$7TgNYnqXAshciBc4excdDEpwVWE(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$1(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UiksigVL3SzuH7AlWA5Y_SyQnfg(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$4(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j3epNIIXttQDRCcQfI3V86-R_jg(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$3(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p34YjtOTpkMbxOzGpUm2lk2FLYo(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$2(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tVTge5KO0kG_vO6HhRA7d9nYztY(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$0(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p0, "isStartHandle"    # Z
    .param p1, "direction"    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .param p2, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1357
    move/from16 v1, p0

    move-object/from16 v11, p2

    move/from16 v12, p4

    const v0, -0x50245748

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(TextFieldSelectionHandle)N(isStartHandle,direction,manager)1357@57485L78,1360@57611L44,1366@57914L51,1359@57569L403:TextFieldSelectionManager.kt#eksfi3"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p4

    .local v2, "$dirty":I
    and-int/lit8 v3, v12, 0x6

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_5

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_2

    :cond_4
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v2, v3

    :cond_5
    move v13, v2

    .end local v2    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit16 v2, v13, 0x93

    const/16 v3, 0x92

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    move v2, v5

    :goto_3
    and-int/lit8 v3, v13, 0x1

    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.selection.TextFieldSelectionHandle (TextFieldSelectionManager.kt:1356)"

    invoke-static {v0, v13, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 1358
    :cond_7
    const v0, 0x27946ee6

    const-string v2, "CC(remember):TextFieldSelectionManager.kt#9igjgp"

    invoke-static {v8, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v13, 0xe

    if-ne v0, v4, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    move v0, v5

    :goto_4
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .local v0, "invalid$iv":Z
    move-object v3, v8

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 1488
    .local v7, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1489
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_a

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v9, v14, :cond_9

    goto :goto_5

    .line 1493
    :cond_9
    goto :goto_6

    .line 1490
    :cond_a
    :goto_5
    const/4 v14, 0x0

    .line 1358
    .local v14, "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$observer$1":I
    invoke-virtual {v11, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->handleDragObserver$foundation(Z)Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v14

    .line 1490
    .end local v14    # "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$observer$1":I
    nop

    .line 1491
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1492
    move-object v9, v14

    .line 1488
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 1358
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    move-object v14, v9

    check-cast v14, Landroidx/compose/foundation/text/TextDragObserver;

    .local v14, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1361
    const v0, 0x27947e84

    invoke-static {v8, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v3, v13, 0xe

    if-ne v3, v4, :cond_b

    move v5, v6

    :cond_b
    or-int/2addr v0, v5

    .restart local v0    # "invalid$iv":Z
    move-object v3, v8

    .restart local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1494
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1495
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_d

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_c

    goto :goto_7

    .line 1499
    :cond_c
    goto :goto_8

    .line 1496
    :cond_d
    :goto_7
    const/4 v7, 0x0

    .line 1361
    .local v7, "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$1":I
    new-instance v9, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1;

    invoke-direct {v9, v11, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    check-cast v9, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 1496
    .end local v7    # "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$1":I
    nop

    .line 1497
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1498
    move-object v5, v9

    .line 1494
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 1361
    .end local v0    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1362
    nop

    .line 1363
    nop

    .line 1364
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v3

    .line 1365
    invoke-virtual {v11, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandleLineHeight$foundation(Z)F

    move-result v6

    .line 1367
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const v5, 0x2794a46b

    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv":Z
    move-object v5, v8

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 1500
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1501
    .restart local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_f

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v9, v15, :cond_e

    goto :goto_9

    .line 1505
    :cond_e
    move-object/from16 p3, v0

    goto :goto_a

    .line 1502
    :cond_f
    :goto_9
    const/4 v15, 0x0

    .line 1367
    .local v15, "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$2":I
    move-object/from16 p3, v0

    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1;

    invoke-direct {v0, v14}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 1502
    .end local v15    # "$i$a$-cache-TextFieldSelectionManagerKt$TextFieldSelectionHandle$2":I
    nop

    .line 1503
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1504
    move-object v9, v0

    .line 1500
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_a
    nop

    .line 1367
    .end local v2    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v4, v14, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    shl-int/lit8 v0, v13, 0x3

    and-int/lit8 v0, v0, 0x70

    shl-int/lit8 v2, v13, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int v9, v0, v2

    .line 1360
    const-wide/16 v4, 0x0

    const/16 v10, 0x10

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle-wLIcFTc(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v14    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    goto :goto_b

    .line 1353
    :cond_10
    move-object/from16 v2, p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 1369
    :cond_11
    :goto_b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2, v11, v12}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda1;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method

.method static final TextFieldSelectionHandle$lambda$3(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)J
    .locals 32
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-magnifierSize$0"    # J

    .line 1399
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 1402
    .local v0, "localDragPosition":J
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-nez v4, :cond_2

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    return-wide v2

    .line 1404
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    sget-object v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/foundation/text/Handle;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-wide/from16 v18, v0

    .end local v0    # "localDragPosition":J
    .local v18, "localDragPosition":J
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1408
    .end local v18    # "localDragPosition":J
    .restart local v0    # "localDragPosition":J
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    goto :goto_3

    .line 1407
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    .line 1403
    :goto_3
    nop

    .line 1411
    .local v2, "rawTextOffset":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v4

    if-nez v4, :cond_4

    move-wide/from16 v18, v0

    goto/16 :goto_5

    .line 1412
    .local v4, "textLayoutResultProxy":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v5

    if-nez v5, :cond_5

    move-wide/from16 v18, v0

    goto/16 :goto_4

    .line 1415
    .local v5, "transformedText":Landroidx/compose/ui/text/AnnotatedString;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v6

    .line 1416
    invoke-interface {v6, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    .line 1417
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v7

    invoke-static {v6, v3, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v3

    .line 1414
    nop

    .line 1419
    .local v3, "textOffset":I
    invoke-virtual {v4, v0, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->translateDecorationToInnerCoordinates-MK-Hz9U$foundation(J)J

    move-result-wide v6

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 1506
    .local v8, "$i$f$getX-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v11, 0x0

    .line 1507
    .local v11, "$i$f$unpackFloat1":I
    const/16 v12, 0x20

    shr-long v13, v9, v12

    long-to-int v13, v13

    .local v13, "bits$iv$iv$iv":I
    const/4 v14, 0x0

    .line 1508
    .local v14, "$i$f$floatFromBits":I
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    .line 1507
    .end local v13    # "bits$iv$iv$iv":I
    .end local v14    # "$i$f$floatFromBits":I
    nop

    .line 1506
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat1":I
    nop

    .line 1419
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getX-impl":I
    nop

    .line 1421
    .local v13, "dragX":F
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v6

    .line 1422
    .local v6, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v7

    .line 1423
    .local v7, "line":I
    invoke-virtual {v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v8

    .line 1424
    .local v8, "lineStart":F
    invoke-virtual {v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v9

    .line 1425
    .local v9, "lineEnd":F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1426
    .local v10, "lineMin":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1427
    .local v11, "lineMax":F
    invoke-static {v13, v10, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v14

    .line 1438
    .local v14, "centerX":F
    nop

    .line 1439
    sget-object v15, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move/from16 v16, v12

    move/from16 v17, v13

    .end local v13    # "dragX":F
    .local v17, "dragX":F
    invoke-virtual {v15}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, p1

    .end local v0    # "localDragPosition":J
    .restart local v18    # "localDragPosition":J
    invoke-static {v0, v1, v12, v13}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v12

    if-nez v12, :cond_6

    sub-float v12, v17, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-wide/from16 v20, p1

    .local v20, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v15, 0x0

    .line 1509
    .local v15, "$i$f$getWidth-impl":I
    move-wide/from16 v22, v20

    .local v22, "value$iv$iv":J
    const/16 v24, 0x0

    .line 1510
    .local v24, "$i$f$unpackInt1":I
    move/from16 v25, v14

    const/16 v26, 0x2

    .end local v14    # "centerX":F
    .local v25, "centerX":F
    shr-long v13, v22, v16

    long-to-int v13, v13

    .line 1509
    .end local v22    # "value$iv$iv":J
    .end local v24    # "$i$f$unpackInt1":I
    nop

    .line 1439
    .end local v15    # "$i$f$getWidth-impl":I
    .end local v20    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    .line 1441
    sget-object v12, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v12

    return-wide v12

    .line 1439
    .end local v25    # "centerX":F
    .restart local v14    # "centerX":F
    :cond_6
    move/from16 v25, v14

    const/16 v26, 0x2

    .line 1445
    .end local v14    # "centerX":F
    .restart local v25    # "centerX":F
    :cond_7
    invoke-virtual {v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v12

    .line 1446
    .local v12, "top":F
    invoke-virtual {v6, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v13

    .line 1447
    .local v13, "bottom":F
    sub-float v14, v13, v12

    move/from16 v15, v26

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float/2addr v14, v12

    .line 1449
    .local v14, "centerY":F
    move v15, v14

    .local v15, "y$iv":F
    move/from16 v20, v25

    .local v20, "x$iv":F
    const/16 v21, 0x0

    .line 1511
    .local v21, "$i$f$Offset":I
    move/from16 v22, v15

    .local v22, "val2$iv$iv":F
    move/from16 v23, v20

    .local v23, "val1$iv$iv":F
    const/16 v24, 0x0

    .line 1512
    .local v24, "$i$f$packFloats":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 1513
    .local v0, "v1$iv$iv":J
    move-wide/from16 v26, v0

    .end local v0    # "v1$iv$iv":J
    .local v26, "v1$iv$iv":J
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 1514
    .local v0, "v2$iv$iv":J
    shl-long v28, v26, v16

    const-wide v30, 0xffffffffL

    and-long v30, v0, v30

    or-long v0, v28, v30

    .line 1511
    .end local v0    # "v2$iv$iv":J
    .end local v22    # "val2$iv$iv":F
    .end local v23    # "val1$iv$iv":F
    .end local v24    # "$i$f$packFloats":I
    .end local v26    # "v1$iv$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 1449
    .end local v15    # "y$iv":F
    .end local v20    # "x$iv":F
    .end local v21    # "$i$f$Offset":I
    return-wide v0

    .line 1412
    .end local v3    # "textOffset":I
    .end local v5    # "transformedText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v6    # "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v7    # "line":I
    .end local v8    # "lineStart":F
    .end local v9    # "lineEnd":F
    .end local v10    # "lineMin":F
    .end local v11    # "lineMax":F
    .end local v12    # "top":F
    .end local v13    # "bottom":F
    .end local v14    # "centerY":F
    .end local v17    # "dragX":F
    .end local v18    # "localDragPosition":J
    .end local v25    # "centerX":F
    .local v0, "localDragPosition":J
    :cond_8
    move-wide/from16 v18, v0

    .end local v0    # "localDragPosition":J
    .restart local v18    # "localDragPosition":J
    :goto_4
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1411
    .end local v4    # "textLayoutResultProxy":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    .end local v18    # "localDragPosition":J
    .restart local v0    # "localDragPosition":J
    :cond_9
    move-wide/from16 v18, v0

    .end local v0    # "localDragPosition":J
    .restart local v18    # "localDragPosition":J
    :goto_5
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1405
    .end local v2    # "rawTextOffset":I
    .end local v18    # "localDragPosition":J
    .restart local v0    # "localDragPosition":J
    :pswitch_3
    move-wide/from16 v18, v0

    .end local v0    # "localDragPosition":J
    .restart local v18    # "localDragPosition":J
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1399
    .end local v18    # "localDragPosition":J
    :cond_a
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final contextMenuBuilder(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this$contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "contextMenuState"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .param p2, "itemsAvailability"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Landroidx/compose/foundation/contextmenu/ContextMenuState;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/MenuItemsAvailability;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/contextmenu/ContextMenuScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1460
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;)V

    .line 1473
    return-object v0
.end method

.method static final contextMenuBuilder$lambda$0(Landroidx/compose/runtime/State;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lkotlin/Unit;
    .locals 4
    .param p0, "$itemsAvailability"    # Landroidx/compose/runtime/State;
    .param p1, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p2, "$contextMenuState"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .param p3, "<this>"    # Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1465
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/MenuItemsAvailability;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->unbox-impl()I

    move-result v0

    .line 1466
    .local v0, "availability":I
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Cut:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->getCanCut-impl(I)Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {p3, p2, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    .line 1467
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Copy:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->getCanCopy-impl(I)Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {p3, p2, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    .line 1468
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Paste:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->getCanPaste-impl(I)Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {p3, p2, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    .line 1469
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->SelectAll:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->getCanSelectAll-impl(I)Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {p3, p2, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    .line 1470
    invoke-static {}, Landroidx/compose/foundation/internal/PlatformUtils_androidKt;->isAutofillAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-static {v0}, Landroidx/compose/foundation/text/MenuItemsAvailability;->getCanAutofill-impl(I)Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {p3, p2, v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    .line 1473
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final contextMenuBuilder$lambda$0$0(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1466
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cut$foundation()Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$1(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1467
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->copy$foundation(Z)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$2(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1468
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->paste$foundation()Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$3(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1469
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->selectAll$foundation()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$4(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1471
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->autofill$foundation()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$textFieldItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V
    .locals 13
    .param p0, "$this"    # Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    .param p1, "$contextMenuState"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .param p2, "label"    # Landroidx/compose/foundation/text/TextContextMenuItems;
    .param p3, "enabled"    # Z
    .param p4, "operation"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/contextmenu/ContextMenuScope;",
            "Landroidx/compose/foundation/contextmenu/ContextMenuState;",
            "Landroidx/compose/foundation/text/TextContextMenuItems;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1462
    move/from16 v0, p3

    .local v0, "enabled$iv":Z
    move-object v1, p1

    .local v1, "state$iv":Landroidx/compose/foundation/contextmenu/ContextMenuState;
    move-object v2, p2

    .local v2, "label$iv":Landroidx/compose/foundation/text/TextContextMenuItems;
    move-object v3, p0

    .local v3, "$this$TextItem$iv":Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    const/4 v11, 0x0

    .line 1515
    .local v11, "$i$f$TextItem":I
    if-eqz v0, :cond_0

    .line 1516
    new-instance v4, Landroidx/compose/foundation/text/CommonContextMenuAreaKt$TextItem$1;

    invoke-direct {v4, v2}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt$TextItem$1;-><init>(Landroidx/compose/foundation/text/TextContextMenuItems;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    new-instance v5, Landroidx/compose/foundation/text/CommonContextMenuAreaKt$TextItem$2;

    move-object/from16 v12, p4

    invoke-direct {v5, v12, v1}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt$TextItem$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/contextmenu/ContextMenuState;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->item$default(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 1515
    :cond_0
    move-object/from16 v12, p4

    .line 1521
    :goto_0
    nop

    .line 1463
    .end local v0    # "enabled$iv":Z
    .end local v1    # "state$iv":Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .end local v2    # "label$iv":Landroidx/compose/foundation/text/TextContextMenuItems;
    .end local v3    # "$this$TextItem$iv":Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    .end local v11    # "$i$f$TextItem":I
    return-void
.end method

.method public static final isSelectionHandleInVisibleBoundDefault(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z
    .locals 3
    .param p0, "$this$isSelectionHandleInVisibleBoundDefault"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p1, "isStartHandle"    # Z

    .line 1379
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandlePosition-tuRUvjQ$foundation(Z)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v0

    goto :goto_0

    .line 1380
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
