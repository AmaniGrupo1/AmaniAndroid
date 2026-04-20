.class public final Landroidx/compose/foundation/text/selection/SelectionManagerKt;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManagerKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 6 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 7 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 8 CommonContextMenuArea.kt\nandroidx/compose/foundation/text/CommonContextMenuAreaKt\n*L\n1#1,1365:1\n35#2,3:1366\n39#2:1389\n30#3:1369\n30#3:1373\n30#3:1395\n53#4,3:1370\n53#4,3:1374\n60#4:1378\n70#4:1381\n60#4:1384\n70#4:1387\n60#4:1391\n85#4:1394\n53#4,3:1396\n60#4:1400\n70#4:1403\n65#5:1377\n69#5:1380\n65#5:1383\n69#5:1386\n65#5:1390\n65#5:1399\n69#5:1402\n22#6:1379\n22#6:1382\n22#6:1385\n22#6:1388\n22#6:1392\n22#6:1401\n54#7:1393\n190#8,7:1404\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManagerKt\n*L\n1239#1:1366,3\n1239#1:1389\n1262#1:1369\n1263#1:1373\n1350#1:1395\n1262#1:1370,3\n1263#1:1374,3\n1269#1:1378\n1270#1:1381\n1271#1:1384\n1272#1:1387\n1306#1:1391\n1338#1:1394\n1350#1:1396,3\n1364#1:1400\n1364#1:1403\n1269#1:1377\n1270#1:1380\n1271#1:1383\n1272#1:1386\n1306#1:1390\n1364#1:1399\n1364#1:1402\n1269#1:1379\n1270#1:1382\n1271#1:1385\n1272#1:1388\n1306#1:1392\n1364#1:1401\n1338#1:1393\n1203#1:1404,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u001e\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u0000\u001a%\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a\u001e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u000f\"\u0004\u0008\u0000\u0010\u0010*\u0008\u0012\u0004\u0012\u0002H\u00100\u000fH\u0002\u001a*\u0010\u0011\u001a\u00020\r2\u0018\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u00130\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u001a\u001f\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a\'\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008!\u0010\"\u001a\u000c\u0010#\u001a\u00020\r*\u00020\u0016H\u0000\u001a\u001b\u0010$\u001a\u00020%*\u00020\r2\u0006\u0010&\u001a\u00020\u0018H\u0000\u00a2\u0006\u0004\u0008\'\u0010(\"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "merge",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "lhs",
        "rhs",
        "contextMenuBuilder",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/contextmenu/ContextMenuScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "state",
        "Landroidx/compose/foundation/contextmenu/ContextMenuState;",
        "invertedInfiniteRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "firstAndLast",
        "",
        "T",
        "getSelectedRegionRect",
        "selectableSubSelectionPairs",
        "Lkotlin/Pair;",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "containerCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "calculateSelectionMagnifierCenterAndroid",
        "Landroidx/compose/ui/geometry/Offset;",
        "manager",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "calculateSelectionMagnifierCenterAndroid-O0kMr_c",
        "(Landroidx/compose/foundation/text/selection/SelectionManager;J)J",
        "getMagnifierCenter",
        "anchor",
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "getMagnifierCenter-JVtK1S4",
        "(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J",
        "visibleBounds",
        "containsInclusive",
        "",
        "offset",
        "containsInclusive-Uv8p0NA",
        "(Landroidx/compose/ui/geometry/Rect;J)Z",
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
.field private static final invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method public static synthetic $r8$lambda$D9dP50ChNMff9SDFc86OTiXYFgk(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->contextMenuBuilder$lambda$0$1(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sUkbeiMEC9UDFsJu1gU0zezWsfg(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->contextMenuBuilder$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1213
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 1214
    nop

    .line 1215
    nop

    .line 1216
    nop

    .line 1217
    nop

    .line 1213
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method

.method public static final synthetic access$firstAndLast(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->firstAndLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInvertedInfiniteRect$p()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-object v0
.end method

.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/SelectionManager;J)J
    .locals 3
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-magnifierSize$0"    # J

    .line 1281
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1282
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/foundation/text/Handle;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 1285
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1286
    const-string/jumbo v2, "SelectionContainer does not support cursor"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1285
    :pswitch_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    move-result-wide v1

    goto :goto_1

    .line 1284
    :pswitch_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    move-result-wide v1

    .line 1282
    :goto_1
    return-wide v1

    .line 1283
    :pswitch_4
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    return-wide v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 12
    .param p0, "$this$containsInclusive_u2dUv8p0NA"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 1364
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    move-wide v2, p1

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 1399
    .local v4, "$i$f$getX-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 1400
    .local v7, "$i$f$unpackFloat1":I
    const/16 v8, 0x20

    shr-long v8, v5, v8

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 1401
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 1400
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 1399
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackFloat1":I
    nop

    .line 1364
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getX-impl":I
    cmpg-float v0, v0, v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_0

    cmpg-float v0, v8, v1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    move-wide v4, p1

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 1402
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v4

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 1403
    .local v9, "$i$f$unpackFloat2":I
    const-wide v10, 0xffffffffL

    and-long/2addr v10, v7

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 1401
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 1403
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 1402
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 1364
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    cmpg-float v0, v0, v10

    if-gtz v0, :cond_1

    cmpg-float v0, v10, v1

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public static final contextMenuBuilder(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this$contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "state"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            "Landroidx/compose/foundation/contextmenu/ContextMenuState;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/contextmenu/ContextMenuScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1201
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;)V

    .line 1210
    return-object v0
.end method

.method static final contextMenuBuilder$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lkotlin/Unit;
    .locals 5
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$state"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .param p2, "<this>"    # Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1207
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Unit;

    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Copy:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation()Z

    move-result v2

    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {p2, p1, v1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->contextMenuBuilder$lambda$0$selectionItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1208
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->SelectAll:Landroidx/compose/foundation/text/TextContextMenuItems;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isEntireContainerSelected$foundation()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    new-instance v4, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {p2, p1, v1, v2, v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->contextMenuBuilder$lambda$0$selectionItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v1, v0, v3

    .line 1207
    nop

    .line 1206
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$0(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 1207
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->copy$foundation()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$1(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this_contextMenuBuilder"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 1208
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->selectAll$foundation()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final contextMenuBuilder$lambda$0$selectionItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/text/TextContextMenuItems;ZLkotlin/jvm/functions/Function0;)V
    .locals 13
    .param p0, "$this"    # Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    .param p1, "$state"    # Landroidx/compose/foundation/contextmenu/ContextMenuState;
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

    .line 1203
    move/from16 v0, p3

    .local v0, "enabled$iv":Z
    move-object v1, p1

    .local v1, "state$iv":Landroidx/compose/foundation/contextmenu/ContextMenuState;
    move-object v2, p2

    .local v2, "label$iv":Landroidx/compose/foundation/text/TextContextMenuItems;
    move-object v3, p0

    .local v3, "$this$TextItem$iv":Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    const/4 v11, 0x0

    .line 1404
    .local v11, "$i$f$TextItem":I
    if-eqz v0, :cond_0

    .line 1405
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

    .line 1404
    :cond_0
    move-object/from16 v12, p4

    .line 1410
    :goto_0
    nop

    .line 1204
    .end local v0    # "enabled$iv":Z
    .end local v1    # "state$iv":Landroidx/compose/foundation/contextmenu/ContextMenuState;
    .end local v2    # "label$iv":Landroidx/compose/foundation/text/TextContextMenuItems;
    .end local v3    # "$this$TextItem$iv":Landroidx/compose/foundation/contextmenu/ContextMenuScope;
    .end local v11    # "$i$f$TextItem":I
    return-void
.end method

.method private static final firstAndLast(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "$this$firstAndLast"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1221
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1224
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1223
    :pswitch_0
    move-object v0, p0

    .line 1225
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J
    .locals 26
    .param p0, "manager"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-magnifierSize$0"    # J
    .param p3, "anchor"    # Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 1295
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    return-wide v2

    .line 1296
    .local v2, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v3

    return-wide v3

    .line 1297
    .local v3, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    return-wide v4

    .line 1298
    .local v4, "selectableCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v5

    .line 1300
    .local v5, "offset":I
    invoke-interface {v2}, Landroidx/compose/foundation/text/selection/Selectable;->getLastVisibleOffset()I

    move-result v6

    if-le v5, v6, :cond_3

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v6

    return-wide v6

    .line 1305
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v6

    invoke-interface {v4, v3, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v6

    .line 1304
    nop

    .line 1306
    .local v6, "localDragPosition":J
    move-wide v8, v6

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v10, 0x0

    .line 1390
    .local v10, "$i$f$getX-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 1391
    .local v13, "$i$f$unpackFloat1":I
    const/16 v16, 0x20

    shr-long v14, v11, v16

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 1392
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 1391
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 1390
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 1306
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v10    # "$i$f$getX-impl":I
    nop

    .line 1309
    .local v14, "dragX":F
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getRangeOfLineContaining--jx7JFs(I)J

    move-result-wide v8

    .line 1311
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    .line 1314
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getLineLeft(I)F

    move-result v10

    goto :goto_0

    .line 1316
    :cond_4
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v10

    invoke-interface {v2, v10}, Landroidx/compose/foundation/text/selection/Selectable;->getLineLeft(I)F

    move-result v10

    .line 1317
    .local v10, "lineStartX":F
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v2, v12}, Landroidx/compose/foundation/text/selection/Selectable;->getLineRight(I)F

    move-result v12

    .line 1319
    .local v12, "lineEndX":F
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1320
    .local v13, "minX":F
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 1321
    .local v15, "maxX":F
    invoke-static {v14, v13, v15}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v17

    move/from16 v10, v17

    .line 1311
    .end local v10    # "lineStartX":F
    .end local v12    # "lineEndX":F
    .end local v13    # "minX":F
    .end local v15    # "maxX":F
    :goto_0
    nop

    .line 1310
    nop

    .line 1325
    .local v10, "textConstrainedX":F
    const/high16 v12, -0x40800000    # -1.0f

    cmpg-float v13, v10, v12

    const/4 v15, 0x0

    if-nez v13, :cond_5

    move v13, v11

    goto :goto_1

    :cond_5
    move v13, v15

    :goto_1
    if-eqz v13, :cond_6

    sget-object v11, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v11

    return-wide v11

    .line 1336
    :cond_6
    nop

    .line 1337
    sget-object v13, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    move/from16 v18, v12

    invoke-virtual {v13}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v11

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11, v12}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1338
    sub-float v11, v14, v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-wide/from16 v12, p1

    .local v12, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/16 v19, 0x0

    .line 1393
    .local v19, "$i$f$getWidth-impl":I
    move-wide/from16 v20, v12

    .local v20, "value$iv$iv":J
    const/16 v22, 0x0

    .line 1394
    .local v22, "$i$f$unpackInt1":I
    shr-long v0, v20, v16

    long-to-int v0, v0

    .line 1393
    .end local v20    # "value$iv$iv":J
    .end local v22    # "$i$f$unpackInt1":I
    nop

    .line 1338
    .end local v12    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v19    # "$i$f$getWidth-impl":I
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_7

    .line 1340
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    .line 1343
    :cond_7
    invoke-interface {v2, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getCenterYForOffset(I)F

    move-result v0

    .line 1346
    .local v0, "lineCenterY":F
    cmpg-float v1, v0, v18

    if-nez v1, :cond_8

    const/4 v11, 0x1

    goto :goto_2

    :cond_8
    move v11, v15

    :goto_2
    if-eqz v11, :cond_9

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v11

    return-wide v11

    .line 1348
    :cond_9
    nop

    .line 1349
    nop

    .line 1350
    move v1, v0

    .local v1, "y$iv":F
    move v11, v10

    .local v11, "x$iv":F
    const/4 v12, 0x0

    .line 1395
    .local v12, "$i$f$Offset":I
    move v13, v1

    .local v13, "val2$iv$iv":F
    move v15, v11

    .local v15, "val1$iv$iv":F
    const/16 v17, 0x0

    .line 1396
    .local v17, "$i$f$packFloats":I
    move/from16 v18, v0

    .end local v0    # "lineCenterY":F
    .local v18, "lineCenterY":F
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move/from16 v19, v1

    .end local v1    # "y$iv":F
    .local v19, "y$iv":F
    int-to-long v0, v0

    .line 1397
    .local v0, "v1$iv$iv":J
    move-wide/from16 v20, v0

    .end local v0    # "v1$iv$iv":J
    .local v20, "v1$iv$iv":J
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 1398
    .local v0, "v2$iv$iv":J
    shl-long v22, v20, v16

    const-wide v24, 0xffffffffL

    and-long v24, v0, v24

    or-long v0, v22, v24

    .line 1395
    .end local v0    # "v2$iv$iv":J
    .end local v13    # "val2$iv$iv":F
    .end local v15    # "val1$iv$iv":F
    .end local v17    # "$i$f$packFloats":I
    .end local v20    # "v1$iv$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 1348
    .end local v11    # "x$iv":F
    .end local v12    # "$i$f$Offset":I
    .end local v19    # "y$iv":F
    invoke-interface {v3, v4, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSelectedRegionRect(Ljava/util/List;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 43
    .param p0, "selectableSubSelectionPairs"    # Ljava/util/List;
    .param p1, "containerCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/foundation/text/selection/Selectable;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ")",
            "Landroidx/compose/ui/geometry/Rect;"
        }
    .end annotation

    .line 1237
    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    return-object v1

    .line 1238
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    const/4 v2, 0x0

    .local v2, "containerLeft":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component1()F

    move-result v2

    const/4 v3, 0x0

    .local v3, "containerTop":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component2()F

    move-result v3

    const/4 v4, 0x0

    .local v4, "containerRight":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component3()F

    move-result v4

    const/4 v5, 0x0

    .local v5, "containerBottom":F
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->component4()F

    move-result v1

    .line 1239
    .end local v5    # "containerBottom":F
    .local v1, "containerBottom":F
    move-object/from16 v5, p0

    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1366
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_5

    .line 1367
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1368
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/Pair;

    const/4 v11, 0x0

    .local v11, "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/text/selection/Selectable;

    .local v12, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    invoke-virtual {v10}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/text/selection/Selection;

    .line 1240
    .local v10, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v13

    .line 1241
    .local v13, "startOffset":I
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v14

    .line 1242
    .local v14, "endOffset":I
    if-eq v13, v14, :cond_4

    .line 1243
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v15

    if-nez v15, :cond_1

    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    goto/16 :goto_3

    .line 1245
    .local v15, "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    move-object/from16 v16, v5

    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .local v16, "$this$fastForEach$iv":Ljava/util/List;
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1246
    .local v5, "minOffset":I
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1248
    .local v17, "maxOffset":I
    move/from16 v18, v6

    .end local v6    # "$i$f$fastForEach":I
    .local v18, "$i$f$fastForEach":I
    add-int/lit8 v6, v17, -0x1

    const/16 v19, 0x0

    move/from16 v20, v7

    .end local v7    # "index$iv":I
    .local v20, "index$iv":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 1249
    new-array v6, v7, [I

    aput v5, v6, v19

    goto :goto_1

    .line 1251
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v19

    add-int/lit8 v21, v17, -0x1

    aput v21, v6, v7

    .line 1248
    :goto_1
    nop

    .line 1247
    nop

    .line 1253
    .local v6, "offsets":[I
    sget-object v7, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->invertedInfiniteRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->component1()F

    move-result v21

    .local v21, "left":F
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->component2()F

    move-result v22

    .local v22, "top":F
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->component3()F

    move-result v23

    .local v23, "right":F
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->component4()F

    move-result v7

    .line 1254
    .local v7, "bottom":F
    move/from16 v24, v5

    .end local v5    # "minOffset":I
    .local v24, "minOffset":I
    array-length v5, v6

    move/from16 v42, v19

    move-object/from16 v19, v6

    move/from16 v6, v42

    move/from16 v42, v21

    move/from16 v21, v8

    move/from16 v8, v42

    move/from16 v42, v22

    move-object/from16 v22, v9

    move/from16 v9, v42

    move/from16 v42, v23

    move-object/from16 v23, v10

    move/from16 v10, v42

    .end local v6    # "offsets":[I
    .end local v21    # "left":F
    .local v8, "left":F
    .local v9, "top":F
    .local v10, "right":F
    .local v19, "offsets":[I
    .local v22, "item$iv":Ljava/lang/Object;
    .local v23, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    :goto_2
    if-ge v6, v5, :cond_3

    move/from16 v25, v5

    aget v5, v19, v6

    .line 1255
    .local v5, "i":I
    invoke-interface {v12, v5}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v26

    .line 1256
    .local v26, "rect":Landroidx/compose/ui/geometry/Rect;
    move/from16 v27, v5

    .end local v5    # "i":I
    .local v27, "i":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1257
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1258
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1259
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1254
    .end local v26    # "rect":Landroidx/compose/ui/geometry/Rect;
    .end local v27    # "i":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v25

    goto :goto_2

    .line 1262
    :cond_3
    move v5, v9

    .local v5, "y$iv":F
    move v6, v8

    .local v6, "x$iv":F
    const/16 v25, 0x0

    .line 1369
    .local v25, "$i$f$Offset":I
    move/from16 v26, v5

    .local v26, "val2$iv$iv":F
    move/from16 v27, v6

    .local v27, "val1$iv$iv":F
    const/16 v28, 0x0

    .line 1370
    .local v28, "$i$f$packFloats":I
    move/from16 v29, v5

    .end local v5    # "y$iv":F
    .local v29, "y$iv":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move/from16 v30, v6

    .end local v6    # "x$iv":F
    .local v30, "x$iv":F
    int-to-long v5, v5

    .line 1371
    .local v5, "v1$iv$iv":J
    move-wide/from16 v31, v5

    .end local v5    # "v1$iv$iv":J
    .local v31, "v1$iv$iv":J
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    .line 1372
    .local v5, "v2$iv$iv":J
    const/16 v33, 0x20

    shl-long v34, v31, v33

    const-wide v36, 0xffffffffL

    and-long v38, v5, v36

    or-long v5, v34, v38

    .line 1369
    .end local v5    # "v2$iv$iv":J
    .end local v26    # "val2$iv$iv":F
    .end local v27    # "val1$iv$iv":F
    .end local v28    # "$i$f$packFloats":I
    .end local v31    # "v1$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v5

    .line 1262
    .end local v25    # "$i$f$Offset":I
    .end local v29    # "y$iv":F
    .end local v30    # "x$iv":F
    nop

    .line 1263
    .local v5, "localTopLeft":J
    move/from16 v25, v7

    .local v25, "y$iv":F
    move/from16 v26, v10

    .local v26, "x$iv":F
    const/16 v27, 0x0

    .line 1373
    .local v27, "$i$f$Offset":I
    move/from16 v28, v25

    .local v28, "val2$iv$iv":F
    move/from16 v29, v26

    .local v29, "val1$iv$iv":F
    const/16 v30, 0x0

    .line 1374
    .local v30, "$i$f$packFloats":I
    move/from16 v31, v7

    .end local v7    # "bottom":F
    .local v31, "bottom":F
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    move/from16 v32, v8

    .end local v8    # "left":F
    .local v32, "left":F
    int-to-long v7, v7

    .line 1375
    .local v7, "v1$iv$iv":J
    move-wide/from16 v34, v7

    .end local v7    # "v1$iv$iv":J
    .local v34, "v1$iv$iv":J
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    .line 1376
    .local v7, "v2$iv$iv":J
    shl-long v38, v34, v33

    and-long v40, v7, v36

    or-long v7, v38, v40

    .line 1373
    .end local v7    # "v2$iv$iv":J
    .end local v28    # "val2$iv$iv":F
    .end local v29    # "val1$iv$iv":F
    .end local v30    # "$i$f$packFloats":I
    .end local v34    # "v1$iv$iv":J
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    .line 1263
    .end local v25    # "y$iv":F
    .end local v26    # "x$iv":F
    .end local v27    # "$i$f$Offset":I
    nop

    .line 1265
    .local v7, "localBottomRight":J
    invoke-interface {v0, v15, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v25

    .line 1267
    .local v25, "containerTopLeft":J
    invoke-interface {v0, v15, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v27

    .line 1266
    nop

    .line 1269
    .local v27, "containerBottomRight":J
    move-wide/from16 v29, v25

    .local v29, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v34, 0x0

    .line 1377
    .local v34, "$i$f$getX-impl":I
    move-wide/from16 v38, v29

    .local v38, "value$iv$iv":J
    const/16 v35, 0x0

    .line 1378
    .local v35, "$i$f$unpackFloat1":I
    move-wide/from16 v40, v5

    .end local v5    # "localTopLeft":J
    .local v40, "localTopLeft":J
    shr-long v5, v38, v33

    long-to-int v5, v5

    .local v5, "bits$iv$iv$iv":I
    const/4 v6, 0x0

    .line 1379
    .local v6, "$i$f$floatFromBits":I
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 1378
    .end local v5    # "bits$iv$iv$iv":I
    .end local v6    # "$i$f$floatFromBits":I
    nop

    .line 1377
    .end local v35    # "$i$f$unpackFloat1":I
    .end local v38    # "value$iv$iv":J
    nop

    .line 1269
    .end local v29    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v34    # "$i$f$getX-impl":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1270
    move-wide/from16 v5, v25

    .local v5, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v29, 0x0

    .line 1380
    .local v29, "$i$f$getY-impl":I
    move-wide/from16 v34, v5

    .local v34, "value$iv$iv":J
    const/16 v30, 0x0

    .line 1381
    .local v30, "$i$f$unpackFloat2":I
    move-wide/from16 v38, v5

    .end local v5    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v38, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v5, v34, v36

    long-to-int v5, v5

    .local v5, "bits$iv$iv$iv":I
    const/4 v6, 0x0

    .line 1382
    .restart local v6    # "$i$f$floatFromBits":I
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 1381
    .end local v5    # "bits$iv$iv$iv":I
    .end local v6    # "$i$f$floatFromBits":I
    nop

    .line 1380
    .end local v30    # "$i$f$unpackFloat2":I
    .end local v34    # "value$iv$iv":J
    nop

    .line 1270
    .end local v29    # "$i$f$getY-impl":I
    .end local v38    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1271
    move-wide/from16 v5, v27

    .local v5, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/16 v29, 0x0

    .line 1383
    .local v29, "$i$f$getX-impl":I
    move-wide/from16 v34, v5

    .restart local v34    # "value$iv$iv":J
    const/16 v30, 0x0

    .line 1384
    .local v30, "$i$f$unpackFloat1":I
    move/from16 v38, v2

    move/from16 v39, v3

    .end local v2    # "containerLeft":F
    .end local v3    # "containerTop":F
    .local v38, "containerLeft":F
    .local v39, "containerTop":F
    shr-long v2, v34, v33

    long-to-int v2, v2

    .local v2, "bits$iv$iv$iv":I
    const/4 v3, 0x0

    .line 1385
    .local v3, "$i$f$floatFromBits":I
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 1384
    .end local v2    # "bits$iv$iv$iv":I
    .end local v3    # "$i$f$floatFromBits":I
    nop

    .line 1383
    .end local v30    # "$i$f$unpackFloat1":I
    .end local v34    # "value$iv$iv":J
    nop

    .line 1271
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v29    # "$i$f$getX-impl":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1272
    .end local v4    # "containerRight":F
    .local v2, "containerRight":F
    move-wide/from16 v3, v27

    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v5, 0x0

    .line 1386
    .local v5, "$i$f$getY-impl":I
    move-wide/from16 v29, v3

    .local v29, "value$iv$iv":J
    const/4 v6, 0x0

    .line 1387
    .local v6, "$i$f$unpackFloat2":I
    move/from16 v33, v2

    move-wide/from16 v34, v3

    .end local v2    # "containerRight":F
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .local v33, "containerRight":F
    .local v34, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    and-long v2, v29, v36

    long-to-int v2, v2

    .local v2, "bits$iv$iv$iv":I
    const/4 v3, 0x0

    .line 1388
    .local v3, "$i$f$floatFromBits":I
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 1387
    .end local v2    # "bits$iv$iv$iv":I
    .end local v3    # "$i$f$floatFromBits":I
    nop

    .line 1386
    .end local v6    # "$i$f$unpackFloat2":I
    .end local v29    # "value$iv$iv":J
    nop

    .line 1272
    .end local v5    # "$i$f$getY-impl":I
    .end local v34    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1273
    .end local v7    # "localBottomRight":J
    .end local v9    # "top":F
    .end local v10    # "right":F
    .end local v13    # "startOffset":I
    .end local v14    # "endOffset":I
    .end local v15    # "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v17    # "maxOffset":I
    .end local v19    # "offsets":[I
    .end local v24    # "minOffset":I
    .end local v25    # "containerTopLeft":J
    .end local v27    # "containerBottomRight":J
    .end local v31    # "bottom":F
    .end local v32    # "left":F
    .end local v40    # "localTopLeft":J
    move/from16 v4, v33

    move/from16 v2, v38

    move/from16 v3, v39

    goto :goto_3

    .line 1242
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .end local v20    # "index$iv":I
    .end local v22    # "item$iv":Ljava/lang/Object;
    .end local v23    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v33    # "containerRight":F
    .end local v38    # "containerLeft":F
    .end local v39    # "containerTop":F
    .local v2, "containerLeft":F
    .local v3, "containerTop":F
    .restart local v4    # "containerRight":F
    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    .local v6, "$i$f$fastForEach":I
    .local v7, "index$iv":I
    .local v9, "item$iv":Ljava/lang/Object;
    .local v10, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v13    # "startOffset":I
    .restart local v14    # "endOffset":I
    :cond_4
    move-object/from16 v16, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 1368
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    .end local v7    # "index$iv":I
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v11    # "$i$a$-fastForEach-SelectionManagerKt$getSelectedRegionRect$1":I
    .end local v12    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v13    # "startOffset":I
    .end local v14    # "endOffset":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastForEach":I
    .restart local v20    # "index$iv":I
    .restart local v22    # "item$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 1366
    .end local v22    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v18

    move/from16 v8, v21

    .end local v20    # "index$iv":I
    .restart local v7    # "index$iv":I
    goto/16 :goto_0

    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastForEach":I
    .restart local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v6    # "$i$f$fastForEach":I
    :cond_5
    move-object/from16 v16, v5

    .line 1389
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "index$iv":I
    .restart local v16    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 1274
    .end local v6    # "$i$f$fastForEach":I
    .end local v16    # "$this$fastForEach$iv":Ljava/util/List;
    new-instance v5, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v5, v2, v3, v4, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public static final merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 1
    .param p0, "lhs"    # Landroidx/compose/foundation/text/selection/Selection;
    .param p1, "rhs"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 1188
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/Selection;->merge(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public static final visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0, "$this$visibleBounds"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1359
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow$default(Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 1360
    .local v0, "boundsInWindow":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1
.end method
