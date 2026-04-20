.class public final Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "LazyLayoutPager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,409:1\n122#2:410\n97#3,4:411\n1128#4,6:415\n1128#4,3:428\n1131#4,3:432\n1128#4,6:435\n1128#4,6:441\n1128#4,6:448\n1128#4,6:454\n599#5:421\n596#5,6:422\n597#6:431\n75#7:447\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n*L\n88#1:410\n104#1:411,4\n110#1:415,6\n114#1:428,3\n114#1:432,3\n130#1:435,6\n136#1:441,6\n140#1:448,6\n261#1:454,6\n114#1:421\n114#1:422,6\n114#1:431\n138#1:447\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00e5\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182#\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001a2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$21\u0010%\u001a-\u0012\u0004\u0012\u00020\'\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00010&\u00a2\u0006\u0002\u0008)\u00a2\u0006\u0002\u0008*H\u0001\u00a2\u0006\u0004\u0008+\u0010,\u001a\u0081\u0001\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u0010\u0004\u001a\u00020\u000521\u0010%\u001a-\u0012\u0004\u0012\u00020\'\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00010&\u00a2\u0006\u0002\u0008)\u00a2\u0006\u0002\u0008*2#\u0010\u0019\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001a2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00120.H\u0003\u00a2\u0006\u0002\u00101\u001a\u0014\u00102\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u00a8\u00063"
    }
    d2 = {
        "Pager",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
        "userScrollEnabled",
        "overscrollEffect",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "beyondViewportPageCount",
        "",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "pageNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "key",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "snapPosition",
        "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
        "pageContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "page",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "Pager-eLwUrMk",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "rememberPagerItemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "pageCount",
        "(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;",
        "dragDirectionDetector",
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
.method public static synthetic $r8$lambda$98LggfimmYMbRYvWxUjqbmoNA3E(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager_eLwUrMk$lambda$2$0(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JZ_PysSSUubzaTkSetpMuVjEjOo(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager_eLwUrMk$lambda$1$0(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PPuCBKyPKlcfjfOGB5aItnS4LnM(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->rememberPagerItemProviderLambda$lambda$0$1(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$knAdVZFQq-bpz27gDN8sXmlNFf8(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->rememberPagerItemProviderLambda$lambda$0$0(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    move-result-object p0

    return-object p0
.end method

.method public static final Pager-eLwUrMk(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 29
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p2, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p3, "reverseLayout"    # Z
    .param p4, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p5, "flingBehavior"    # Landroidx/compose/foundation/gestures/TargetedFlingBehavior;
    .param p6, "userScrollEnabled"    # Z
    .param p7, "overscrollEffect"    # Landroidx/compose/foundation/OverscrollEffect;
    .param p8, "beyondViewportPageCount"    # I
    .param p9, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0"    # F
    .param p10, "pageSize"    # Landroidx/compose/foundation/pager/PageSize;
    .param p11, "pageNestedScrollConnection"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p12, "key"    # Lkotlin/jvm/functions/Function1;
    .param p13, "horizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p14, "verticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p15, "snapPosition"    # Landroidx/compose/foundation/gestures/snapping/SnapPosition;
    .param p16, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p17, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p18, "$changed"    # I
    .param p19, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "IF",
            "Landroidx/compose/foundation/pager/PageSize;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p11

    move/from16 v11, p18

    move/from16 v12, p19

    move/from16 v13, p20

    const v3, -0x22247a99

    move-object/from16 v4, p17

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(Pager)N(modifier,state,contentPadding,reverseLayout,orientation,flingBehavior,userScrollEnabled,overscrollEffect,beyondViewportPageCount,pageSpacing:c#ui.unit.Dp,pageSize,pageNestedScrollConnection,key,horizontalAlignment,verticalAlignment,snapPosition,pageContent)109@5362L39,109@5277L124,113@5428L24,129@6071L19,116@5486L615,132@6127L70,135@6239L82,137@6381L7,139@6430L121,164@7268L301,159@7099L1450:LazyLayoutPager.kt#g6yjnt"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p18

    .local v4, "$dirty":I
    move/from16 v5, p19

    .local v5, "$dirty1":I
    and-int/lit8 v6, v11, 0x6

    if-nez v6, :cond_1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v4, v6

    :cond_1
    and-int/lit8 v6, v11, 0x30

    const/16 v16, 0x10

    if-nez v6, :cond_3

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    move/from16 v6, v16

    :goto_1
    or-int/2addr v4, v6

    :cond_3
    and-int/lit16 v6, v11, 0x180

    const/16 v18, 0x80

    const/16 v19, 0x100

    if-nez v6, :cond_5

    move-object/from16 v6, p2

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move/from16 v20, v19

    goto :goto_2

    :cond_4
    move/from16 v20, v18

    :goto_2
    or-int v4, v4, v20

    goto :goto_3

    :cond_5
    move-object/from16 v6, p2

    :goto_3
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_7

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v4, v7

    :cond_7
    and-int/lit16 v7, v11, 0x6000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_5

    :cond_8
    const/16 v7, 0x2000

    :goto_5
    or-int/2addr v4, v7

    :cond_9
    const/high16 v7, 0x30000

    and-int v20, v11, v7

    if-nez v20, :cond_b

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v20, 0x10000

    :goto_6
    or-int v4, v4, v20

    :cond_b
    const/high16 v20, 0x180000

    and-int v20, v11, v20

    if-nez v20, :cond_d

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_c

    const/high16 v20, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v20, 0x80000

    :goto_7
    or-int v4, v4, v20

    :cond_d
    const/high16 v20, 0xc00000

    and-int v20, v11, v20

    if-nez v20, :cond_f

    move-object/from16 v0, p7

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/high16 v20, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v20, 0x400000

    :goto_8
    or-int v4, v4, v20

    goto :goto_9

    :cond_f
    move-object/from16 v0, p7

    :goto_9
    and-int/lit16 v3, v13, 0x100

    const/high16 v22, 0x6000000

    if-eqz v3, :cond_10

    or-int v4, v4, v22

    move/from16 v22, v7

    move/from16 v7, p8

    goto :goto_b

    :cond_10
    and-int v22, v11, v22

    if-nez v22, :cond_12

    move/from16 v22, v7

    move/from16 v7, p8

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x4000000

    goto :goto_a

    :cond_11
    const/high16 v23, 0x2000000

    :goto_a
    or-int v4, v4, v23

    goto :goto_b

    :cond_12
    move/from16 v22, v7

    move/from16 v7, p8

    :goto_b
    and-int/lit16 v14, v13, 0x200

    const/high16 v24, 0x30000000

    if-eqz v14, :cond_13

    or-int v4, v4, v24

    move/from16 v0, p9

    goto :goto_d

    :cond_13
    and-int v24, v11, v24

    if-nez v24, :cond_15

    move/from16 v0, p9

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_14

    const/high16 v24, 0x20000000

    goto :goto_c

    :cond_14
    const/high16 v24, 0x10000000

    :goto_c
    or-int v4, v4, v24

    goto :goto_d

    :cond_15
    move/from16 v0, p9

    :goto_d
    and-int/lit8 v24, v12, 0x6

    if-nez v24, :cond_17

    move-object/from16 v0, p10

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x4

    goto :goto_e

    :cond_16
    const/16 v24, 0x2

    :goto_e
    or-int v5, v5, v24

    goto :goto_f

    :cond_17
    move-object/from16 v0, p10

    :goto_f
    and-int/lit8 v24, v12, 0x30

    if-nez v24, :cond_19

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    const/16 v16, 0x20

    :cond_18
    or-int v5, v5, v16

    :cond_19
    and-int/lit16 v0, v12, 0x180

    if-nez v0, :cond_1b

    move-object/from16 v0, p12

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    move/from16 v18, v19

    :cond_1a
    or-int v5, v5, v18

    goto :goto_10

    :cond_1b
    move-object/from16 v0, p12

    :goto_10
    and-int/lit16 v0, v12, 0xc00

    if-nez v0, :cond_1d

    move-object/from16 v0, p13

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const/16 v16, 0x800

    goto :goto_11

    :cond_1c
    const/16 v16, 0x400

    :goto_11
    or-int v5, v5, v16

    goto :goto_12

    :cond_1d
    move-object/from16 v0, p13

    :goto_12
    and-int/lit16 v0, v12, 0x6000

    if-nez v0, :cond_1f

    move-object/from16 v0, p14

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    const/16 v16, 0x4000

    goto :goto_13

    :cond_1e
    const/16 v16, 0x2000

    :goto_13
    or-int v5, v5, v16

    goto :goto_14

    :cond_1f
    move-object/from16 v0, p14

    :goto_14
    and-int v16, v12, v22

    if-nez v16, :cond_21

    move-object/from16 v0, p15

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    const/high16 v16, 0x20000

    goto :goto_15

    :cond_20
    const/high16 v16, 0x10000

    :goto_15
    or-int v5, v5, v16

    goto :goto_16

    :cond_21
    move-object/from16 v0, p15

    :goto_16
    const/high16 v16, 0x180000

    and-int v16, v12, v16

    if-nez v16, :cond_23

    move-object/from16 v0, p16

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    const/high16 v16, 0x100000

    goto :goto_17

    :cond_22
    const/high16 v16, 0x80000

    :goto_17
    or-int v5, v5, v16

    goto :goto_18

    :cond_23
    move-object/from16 v0, p16

    :goto_18
    const v16, 0x12492493

    and-int v0, v4, v16

    move/from16 v16, v3

    const v3, 0x12492492

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-ne v0, v3, :cond_25

    const v0, 0x92493

    and-int/2addr v0, v5

    const v3, 0x92492

    if-eq v0, v3, :cond_24

    goto :goto_19

    :cond_24
    move/from16 v0, v18

    goto :goto_1a

    :cond_25
    :goto_19
    move/from16 v0, v19

    :goto_1a
    and-int/lit8 v3, v4, 0x1

    invoke-interface {v15, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz v16, :cond_26

    .line 86
    const/4 v0, 0x0

    .end local p8    # "beyondViewportPageCount":I
    .local v0, "beyondViewportPageCount":I
    goto :goto_1b

    .line 103
    .end local v0    # "beyondViewportPageCount":I
    .restart local p8    # "beyondViewportPageCount":I
    :cond_26
    move v0, v7

    .line 86
    .end local p8    # "beyondViewportPageCount":I
    .restart local v0    # "beyondViewportPageCount":I
    :goto_1b
    if-eqz v14, :cond_27

    .line 88
    const/4 v3, 0x0

    .local v3, "$this$dp$iv":I
    const/4 v7, 0x0

    .line 410
    .local v7, "$i$f$getDp":I
    int-to-float v14, v3

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    move v8, v3

    .end local v7    # "$i$f$getDp":I
    .end local p9    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    .local v3, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    goto :goto_1c

    .line 86
    .end local v3    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    .restart local p9    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    :cond_27
    move/from16 v8, p9

    .line 410
    .end local p9    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    .local v8, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    :goto_1c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v3, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:102)"

    const v7, -0x22247a99

    invoke-static {v7, v4, v5, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_28
    if-ltz v0, :cond_29

    move/from16 v3, v19

    goto :goto_1d

    :cond_29
    move/from16 v3, v18

    .local v3, "value$iv":Z
    :goto_1d
    const/4 v7, 0x0

    .line 411
    .local v7, "$i$f$requirePrecondition":I
    if-nez v3, :cond_2a

    .line 412
    const/4 v14, 0x0

    .line 105
    .local v14, "$i$a$-requirePrecondition-LazyLayoutPagerKt$Pager$1":I
    move/from16 p8, v3

    .end local v3    # "value$iv":Z
    .local p8, "value$iv":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p17, v4

    .end local v4    # "$dirty":I
    .local p17, "$dirty":I
    const-string/jumbo v4, "beyondViewportPageCount should be greater than or equal to 0, you selected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    nop

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    nop

    .line 412
    .end local v14    # "$i$a$-requirePrecondition-LazyLayoutPagerKt$Pager$1":I
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_1e

    .line 411
    .end local p8    # "value$iv":Z
    .end local p17    # "$dirty":I
    .restart local v3    # "value$iv":Z
    .restart local v4    # "$dirty":I
    :cond_2a
    move/from16 p8, v3

    move/from16 p17, v4

    .line 414
    .end local v3    # "value$iv":Z
    .end local v4    # "$dirty":I
    .restart local p8    # "value$iv":Z
    .restart local p17    # "$dirty":I
    :goto_1e
    nop

    .line 110
    .end local v7    # "$i$f$requirePrecondition":I
    .end local p8    # "value$iv":Z
    const v3, -0x2aef3552

    const-string v14, "CC(remember):LazyLayoutPager.kt#9igjgp"

    invoke-static {v15, v3, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, p17, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2b

    move/from16 v3, v19

    goto :goto_1f

    :cond_2b
    move/from16 v3, v18

    .local v3, "invalid$iv":Z
    :goto_1f
    move-object v7, v15

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 415
    .local v16, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 416
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_2d

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v0

    .end local v0    # "beyondViewportPageCount":I
    .local p8, "beyondViewportPageCount":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_2c

    goto :goto_20

    .line 420
    :cond_2c
    goto :goto_21

    .line 416
    .end local p8    # "beyondViewportPageCount":I
    .restart local v0    # "beyondViewportPageCount":I
    :cond_2d
    move/from16 p8, v0

    .line 417
    .end local v0    # "beyondViewportPageCount":I
    .restart local p8    # "beyondViewportPageCount":I
    :goto_20
    const/4 v0, 0x0

    .line 110
    .local v0, "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    move/from16 p9, v0

    .end local v0    # "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    .local p9, "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 417
    .end local p9    # "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerItemProvider$1":I
    nop

    .line 418
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    move-object v4, v0

    .line 415
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_21
    nop

    .line 110
    .end local v3    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v0, p17, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v3, v5, 0xf

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v5, 0x380

    or-int v7, v0, v3

    move-object/from16 v3, p16

    move/from16 v0, p17

    move/from16 v21, v5

    move-object v6, v15

    const/16 v15, 0x20

    const/high16 v20, 0x20000

    move-object v5, v4

    move-object/from16 v4, p12

    .end local v5    # "$dirty1":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p17    # "$dirty":I
    .local v0, "$dirty":I
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$dirty1":I
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 109
    move-object v3, v5

    .line 114
    .local v3, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    move-object v4, v6

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    move/from16 v5, v18

    .local v5, "$changed$iv":I
    const/4 v7, 0x0

    .line 421
    .local v7, "$i$f$rememberCoroutineScope":I
    const v15, 0x2e20b340

    move-object/from16 p9, v3

    .end local v3    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local p9, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    const-string v3, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp"

    invoke-static {v4, v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 422
    nop

    .line 426
    move-object v3, v4

    .line 427
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    const v15, 0x28c0fdc4

    move/from16 p17, v5

    .end local v5    # "$changed$iv":I
    .local p17, "$changed$iv":I
    const-string v5, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v4, v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object v15, v4

    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 428
    .local v17, "$i$f$cache":I
    move-object/from16 v22, v4

    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v22, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 429
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v26, v5

    .end local v5    # "invalid$iv$iv":Z
    .local v26, "invalid$iv$iv":Z
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2e

    .line 430
    const/4 v5, 0x0

    .line 427
    .local v5, "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    const/16 v25, 0x0

    .line 431
    .local v25, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v25, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 427
    .end local v25    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v27, v4

    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .local v27, "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v4, v25

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 430
    .end local v5    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$2$iv":I
    nop

    .line 432
    .local v4, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 433
    nop

    .end local v4    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_22

    .line 434
    .end local v27    # "it$iv$iv":Ljava/lang/Object;
    .local v4, "it$iv$iv":Ljava/lang/Object;
    :cond_2e
    move-object/from16 v27, v4

    .line 428
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_22
    nop

    .line 427
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local v26    # "invalid$iv$iv":Z
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 421
    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 427
    nop

    .line 114
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$rememberCoroutineScope":I
    .end local v22    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local p17    # "$changed$iv":I
    nop

    .line 127
    .local v4, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    const v3, -0x2aeedcc6

    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v0, 0x70

    const/16 v15, 0x20

    if-ne v3, v15, :cond_2f

    move/from16 v3, v19

    goto :goto_23

    :cond_2f
    move/from16 v3, v18

    .local v3, "invalid$iv":Z
    :goto_23
    move-object v5, v6

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 435
    .local v7, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 436
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_31

    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p17, v3

    .end local v3    # "invalid$iv":Z
    .local p17, "invalid$iv":Z
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v15, v3, :cond_30

    goto :goto_24

    .line 440
    :cond_30
    goto :goto_25

    .line 436
    .end local p17    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_31
    move/from16 p17, v3

    .line 437
    .end local v3    # "invalid$iv":Z
    .restart local p17    # "invalid$iv":Z
    :goto_24
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    move/from16 v22, v3

    .end local v3    # "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    .local v22, "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 437
    .end local v22    # "$i$a$-cache-LazyLayoutPagerKt$Pager$measurePolicy$1":I
    nop

    .line 438
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 439
    move-object v15, v3

    .line 435
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_25
    nop

    .line 130
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    .end local p17    # "invalid$iv":Z
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v3, v0, 0x70

    and-int/lit16 v5, v0, 0x380

    or-int/2addr v3, v5

    and-int/lit16 v5, v0, 0x1c00

    or-int/2addr v3, v5

    const v5, 0xe000

    and-int/2addr v5, v0

    or-int/2addr v3, v5

    shr-int/lit8 v5, v0, 0x9

    const/high16 v22, 0x70000

    and-int v5, v5, v22

    or-int/2addr v3, v5

    shr-int/lit8 v5, v0, 0x9

    const/high16 v7, 0x380000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    shl-int/lit8 v5, v21, 0x15

    const/high16 v7, 0x1c00000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    shl-int/lit8 v5, v21, 0xf

    const/high16 v7, 0xe000000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    shl-int/lit8 v5, v21, 0xf

    const/high16 v7, 0x70000000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    shr-int/lit8 v5, v21, 0xf

    and-int/lit8 v17, v5, 0xe

    .line 117
    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move/from16 p17, v0

    move/from16 v16, v3

    move-object v13, v4

    move-object v1, v14

    move-object v14, v15

    const/16 v0, 0x20

    move-object/from16 v4, p2

    move-object v3, v2

    move-object v15, v6

    move-object/from16 v6, p4

    move-object/from16 v2, p9

    .end local v0    # "$dirty":I
    .end local v4    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p8    # "beyondViewportPageCount":I
    .end local p9    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v2, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v7, "beyondViewportPageCount":I
    .local v13, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    .local p17, "$dirty":I
    invoke-static/range {v2 .. v17}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->rememberPagerMeasurePolicy-8u0NR3k(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    move-result-object v14

    .line 116
    move-object v11, v3

    move v12, v7

    move v7, v5

    move-object v5, v6

    move-object v6, v15

    move v15, v8

    .line 133
    .end local v7    # "beyondViewportPageCount":I
    .end local v8    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    .restart local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "beyondViewportPageCount":I
    .local v14, "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .local v15, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v3, :cond_32

    move/from16 v3, v19

    goto :goto_26

    :cond_32
    move/from16 v3, v18

    :goto_26
    shr-int/lit8 v4, p17, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v11, v3, v6, v4}, Landroidx/compose/foundation/pager/PagerSemanticsKt;->rememberPagerSemanticState(Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v4

    .line 136
    .local v4, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    const v3, -0x2aeec787

    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, p17, 0x70

    if-ne v3, v0, :cond_33

    move/from16 v3, v19

    goto :goto_27

    :cond_33
    move/from16 v3, v18

    :goto_27
    and-int v8, p17, v22

    const/high16 v9, 0x20000

    if-ne v8, v9, :cond_34

    move/from16 v8, v19

    goto :goto_28

    :cond_34
    move/from16 v8, v18

    :goto_28
    or-int/2addr v3, v8

    .local v3, "invalid$iv":Z
    move-object v8, v6

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 441
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 442
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_36

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_35

    goto :goto_29

    .line 446
    :cond_35
    move-object/from16 p9, v14

    move-object/from16 v14, p5

    goto :goto_2a

    .line 443
    :cond_36
    :goto_29
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$a$-cache-LazyLayoutPagerKt$Pager$resolvedFlingBehavior$1":I
    move/from16 p8, v0

    .end local v0    # "$i$a$-cache-LazyLayoutPagerKt$Pager$resolvedFlingBehavior$1":I
    .local p8, "$i$a$-cache-LazyLayoutPagerKt$Pager$resolvedFlingBehavior$1":I
    new-instance v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    move-object/from16 p9, v14

    move-object/from16 v14, p5

    .end local v14    # "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .local p9, "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    invoke-direct {v0, v14, v11}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    .line 443
    .end local p8    # "$i$a$-cache-LazyLayoutPagerKt$Pager$resolvedFlingBehavior$1":I
    nop

    .line 444
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 445
    move-object v10, v0

    .line 441
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2a
    nop

    .line 136
    .end local v3    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 135
    move-object v0, v10

    .line 138
    .local v0, "resolvedFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    invoke-static {}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->getLocalBringIntoViewSpec()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    move-object v9, v6

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 447
    .local v10, "$i$f$getCurrent":I
    move-object/from16 p8, v0

    .end local v0    # "resolvedFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    .local p8, "resolvedFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    const v0, 0x789c5f52

    move-object/from16 v16, v2

    .end local v2    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v16, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    const-string v2, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v9, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 138
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v8    # "$changed$iv":I
    .end local v9    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 140
    .local v0, "defaultBringIntoViewSpec":Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    const v2, -0x2aeeaf80

    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p17, 0x70

    const/16 v2, 0x20

    if-ne v1, v2, :cond_37

    move/from16 v1, v19

    goto :goto_2b

    :cond_37
    move/from16 v1, v18

    :goto_2b
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "invalid$iv":Z
    move-object v2, v6

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 448
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 449
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_39

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_38

    goto :goto_2c

    .line 453
    :cond_38
    move/from16 v17, v1

    goto :goto_2d

    .line 450
    :cond_39
    :goto_2c
    const/4 v10, 0x0

    .line 141
    .local v10, "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerBringIntoViewSpec$1":I
    move/from16 v17, v1

    .end local v1    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    new-instance v1, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-direct {v1, v11, v0}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    .line 450
    .end local v10    # "$i$a$-cache-LazyLayoutPagerKt$Pager$pagerBringIntoViewSpec$1":I
    nop

    .line 451
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    move-object v8, v1

    .line 448
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_2d
    nop

    .line 140
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    check-cast v8, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 139
    move-object v1, v8

    .line 145
    .local v1, "pagerBringIntoViewSpec":Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
    if-eqz p6, :cond_3a

    const v2, -0x32e44cfd

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "147@6714L167"

    invoke-static {v6, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 146
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 149
    nop

    .line 150
    shr-int/lit8 v3, p17, 0x3

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v8, p17, 0x15

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v3, v8

    .line 148
    invoke-static {v11, v12, v6, v3}, Landroidx/compose/foundation/pager/PagerBeyondBoundsModifierKt;->rememberPagerBeyondBoundsState(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    move-result-object v3

    .line 152
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getBeyondBoundsInfo$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v8

    .line 153
    nop

    .line 154
    nop

    .line 146
    invoke-static {v2, v3, v8, v7, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 145
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2e

    .line 156
    :cond_3a
    const v2, -0x32ddbe25

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 157
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 145
    :goto_2e
    nop

    .line 144
    move-object v10, v2

    .line 162
    .local v10, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    nop

    .line 163
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getRemeasurementModifier$foundation()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 164
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getAwaitLayoutModifier$foundation()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    shr-int/lit8 v8, p17, 0x3

    and-int/lit16 v8, v8, 0x1c00

    shr-int/lit8 v9, p17, 0x6

    const v17, 0xe000

    and-int v9, v9, v17

    or-int/2addr v8, v9

    shl-int/lit8 v9, p17, 0x6

    and-int v9, v9, v22

    or-int/2addr v9, v8

    .line 165
    move-object v8, v6

    move-object/from16 v3, v16

    move/from16 v6, p6

    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v16    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v3, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 173
    move-object/from16 v17, v4

    move-object/from16 v22, v8

    .line 174
    .end local v3    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .end local v4    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v17, "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v3, :cond_3b

    move/from16 v3, v19

    goto :goto_2f

    :cond_3b
    move/from16 v3, v18

    .line 175
    :goto_2f
    nop

    .line 176
    nop

    .line 172
    invoke-static {v2, v11, v3, v13, v6}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLkotlinx/coroutines/CoroutineScope;Z)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 178
    invoke-interface {v2, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 185
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getInternalInteractionSource$foundation()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 178
    nop

    .line 180
    move-object v3, v11

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 181
    nop

    .line 186
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    move-object/from16 v8, p8

    check-cast v8, Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 185
    nop

    .line 187
    move-object v4, v10

    .end local v10    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .local v4, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    move-object v10, v1

    check-cast v10, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 179
    move/from16 v7, p3

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v5, p7

    .end local v4    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .local v18, "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/ScrollableAreaKt;->scrollableArea(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 189
    invoke-static {v2, v11}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 190
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p11

    const/4 v6, 0x2

    invoke-static {v2, v5, v3, v6, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 192
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->getPrefetchState$foundation()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v6

    .line 193
    nop

    .line 190
    nop

    .line 192
    nop

    .line 191
    nop

    .line 160
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p9

    move-object v5, v2

    move-object/from16 v4, v16

    move-object/from16 v8, v22

    .end local v16    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p9    # "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .local v4, "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .local v7, "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;II)V

    .end local v4    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v16    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 195
    .end local v0    # "defaultBringIntoViewSpec":Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .end local v1    # "pagerBringIntoViewSpec":Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
    .end local v7    # "measurePolicy":Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;
    .end local v13    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v16    # "pagerItemProvider":Lkotlin/jvm/functions/Function0;
    .end local v17    # "semanticState":Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .end local v18    # "beyondBoundsModifier":Landroidx/compose/ui/Modifier;
    .end local p8    # "resolvedFlingBehavior":Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
    :cond_3c
    move v9, v12

    move v10, v15

    goto :goto_30

    .line 68
    .end local v12    # "beyondViewportPageCount":I
    .end local v21    # "$dirty1":I
    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p17    # "$dirty":I
    .local v4, "$dirty":I
    .local v5, "$dirty1":I
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    .local p8, "beyondViewportPageCount":I
    .local p9, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    :cond_3d
    move-object v11, v2

    move/from16 p17, v4

    move/from16 v21, v5

    move-object v14, v8

    move-object/from16 v22, v15

    .end local v4    # "$dirty":I
    .end local v5    # "$dirty1":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$dirty1":I
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p17    # "$dirty":I
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v10, p9

    move v9, v7

    .line 195
    .end local p8    # "beyondViewportPageCount":I
    .end local p9    # "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    .local v9, "beyondViewportPageCount":I
    .local v10, "$v$c$androidx-compose-ui-unit-Dp$-pageSpacing$0":F
    :goto_30
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v23, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v28, v1

    move-object v2, v11

    move-object v6, v14

    move-object/from16 v1, p0

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    .end local p17    # "$dirty":I
    .local v23, "$dirty":I
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_31

    .end local v23    # "$dirty":I
    .restart local p17    # "$dirty":I
    :cond_3e
    move/from16 v23, p17

    .end local p17    # "$dirty":I
    .restart local v23    # "$dirty":I
    :goto_31
    return-void
.end method

.method private static final Pager_eLwUrMk$lambda$1$0(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 1
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;

    .line 111
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    return v0
.end method

.method private static final Pager_eLwUrMk$lambda$2$0(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 1
    .param p0, "$state"    # Landroidx/compose/foundation/pager/PagerState;

    .line 130
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    return v0
.end method

.method static final Pager_eLwUrMk$lambda$5(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 22

    or-int/lit8 v0, p17, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    invoke-static/range {p18 .. p18}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v21, p19

    move-object/from16 v18, p20

    invoke-static/range {v1 .. v21}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-eLwUrMk(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0, "$this$dragDirectionDetector"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/pager/PagerState;

    .line 282
    nop

    .line 283
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v0, p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 282
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method private static final rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 16
    .param p0, "state"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "pageContent"    # Lkotlin/jvm/functions/Function4;
    .param p2, "key"    # Lkotlin/jvm/functions/Function1;
    .param p3, "pageCount"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;"
        }
    .end annotation

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const v4, 0x3eb9cd79

    const-string v5, "C(rememberPagerItemProviderLambda)N(state,pageContent,key,pageCount)258@10763L33,259@10817L25,260@10854L742:LazyLayoutPager.kt#g6yjnt"

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.pager.rememberPagerItemProviderLambda (LazyLayoutPager.kt:257)"

    invoke-static {v4, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 259
    :cond_0
    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0xe

    move-object/from16 v5, p1

    invoke-static {v5, v2, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 260
    .local v4, "latestContent":Landroidx/compose/runtime/State;
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0xe

    move-object/from16 v7, p2

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 261
    .local v6, "latestKey":Landroidx/compose/runtime/State;
    const v8, 0x777c7fdf

    const-string v9, "CC(remember):LazyLayoutPager.kt#9igjgp"

    invoke-static {v2, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v8, v3, 0xe

    xor-int/lit8 v8, v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x4

    if-le v8, v11, :cond_1

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    and-int/lit8 v8, v3, 0x6

    if-ne v8, v11, :cond_3

    :cond_2
    move v8, v10

    goto :goto_0

    :cond_3
    move v8, v9

    :goto_0
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    and-int/lit16 v11, v3, 0x1c00

    xor-int/lit16 v11, v11, 0xc00

    const/16 v12, 0x800

    if-le v11, v12, :cond_4

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    and-int/lit16 v11, v3, 0xc00

    if-ne v11, v12, :cond_6

    :cond_5
    move v9, v10

    :cond_6
    or-int/2addr v8, v9

    .local v8, "invalid$iv":Z
    move-object/from16 v9, p4

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 454
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 455
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_8

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_7

    goto :goto_1

    .line 459
    :cond_7
    goto :goto_2

    .line 456
    :cond_8
    :goto_1
    const/4 v13, 0x0

    .line 263
    .local v13, "$i$a$-cache-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v14

    new-instance v15, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda3;

    invoke-direct {v15, v4, v6, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v14, v15}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 262
    nop

    .line 267
    .local v14, "intervalContentState":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v15

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v14, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-static {v15, v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 266
    nop

    .line 276
    .local v1, "itemProviderState":Landroidx/compose/runtime/State;
    new-instance v15, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    invoke-direct {v15, v1}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v15, Lkotlin/reflect/KProperty0;

    .line 456
    .end local v1    # "itemProviderState":Landroidx/compose/runtime/State;
    .end local v13    # "$i$a$-cache-LazyLayoutPagerKt$rememberPagerItemProviderLambda$1":I
    .end local v14    # "intervalContentState":Landroidx/compose/runtime/State;
    nop

    .line 457
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    move-object v11, v15

    .line 454
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 261
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v11, Lkotlin/reflect/KProperty0;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 258
    :cond_9
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 261
    return-object v11
.end method

.method private static final rememberPagerItemProviderLambda$lambda$0$0(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;
    .locals 4
    .param p0, "$latestContent"    # Landroidx/compose/runtime/State;
    .param p1, "$latestKey"    # Landroidx/compose/runtime/State;
    .param p2, "$pageCount"    # Lkotlin/jvm/functions/Function0;

    .line 264
    new-instance v0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V

    return-object v0
.end method

.method private static final rememberPagerItemProviderLambda$lambda$0$1(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .locals 5
    .param p0, "$intervalContentState"    # Landroidx/compose/runtime/State;
    .param p1, "$state"    # Landroidx/compose/foundation/pager/PagerState;

    .line 268
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    .line 269
    .local v0, "intervalContent":Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;
    new-instance v1, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerState;->getNearestRange$foundation()Lkotlin/ranges/IntRange;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V

    .line 270
    .local v1, "map":Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;
    new-instance v2, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 271
    nop

    .line 272
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    .line 273
    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 270
    invoke-direct {v2, p1, v3, v4}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    .line 274
    return-object v2
.end method
