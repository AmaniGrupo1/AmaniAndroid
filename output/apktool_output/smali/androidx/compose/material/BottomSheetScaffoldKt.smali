.class public final Landroidx/compose/material/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,625:1\n77#2:626\n77#2:660\n1223#3,6:627\n1223#3,6:633\n1223#3,6:639\n1223#3,3:650\n1226#3,3:656\n1223#3,6:662\n1223#3,6:668\n1223#3,6:674\n1223#3,6:688\n488#4:645\n487#4,4:646\n491#4,2:653\n495#4:659\n487#5:655\n1#6:661\n170#7:680\n168#7,7:681\n78#7,6:694\n85#7,4:709\n89#7,2:719\n93#7:724\n176#7:725\n368#8,9:700\n377#8,3:721\n4032#9,6:713\n148#10:726\n148#10:727\n148#10:728\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n*L\n237#1:626\n410#1:660\n245#1:627,6\n276#1:633,6\n278#1:639,6\n409#1:650,3\n409#1:656,3\n416#1:662,6\n437#1:668,6\n510#1:674,6\n502#1:688,6\n409#1:645\n409#1:646,4\n409#1:653,2\n409#1:659\n409#1:655\n502#1:680\n502#1:681,7\n502#1:694,6\n502#1:709,4\n502#1:719,2\n502#1:724\n502#1:725\n502#1:700,9\n502#1:721,3\n502#1:713,6\n622#1:726\n623#1:727\n624#1:728\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ar\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u001c\u0010\u0014\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00060\u0015\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u0018H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u0080\u0002\u0010\u001b\u001a\u00020\u00062\u001c\u0010\u001c\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00060\u0015\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\u0015\u0008\u0002\u0010\u001f\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010 \u00a2\u0006\u0002\u0008\u00172\u0019\u0008\u0002\u0010!\u001a\u0013\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u00060\u0015\u00a2\u0006\u0002\u0008\u00172\u0015\u0008\u0002\u0010#\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010 \u00a2\u0006\u0002\u0008\u00172\u0008\u0008\u0002\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00012\u0008\u0008\u0002\u0010&\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\'\u001a\u00020\u000f2\u0017\u0010\u0014\u001a\u0013\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00060\u0015\u00a2\u0006\u0002\u0008\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001a\u009b\u0001\u0010+\u001a\u00020\u00062\u0013\u0010\u001f\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010 \u00a2\u0006\u0002\u0008\u00172\u0011\u0010,\u001a\r\u0012\u0004\u0012\u00020\u00060 \u00a2\u0006\u0002\u0008\u00172\u0011\u0010-\u001a\r\u0012\u0004\u0012\u00020\u00060 \u00a2\u0006\u0002\u0008\u00172\u0013\u0010#\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0018\u00010 \u00a2\u0006\u0002\u0008\u00172\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00060 \u00a2\u0006\u0002\u0008\u00172\u0006\u0010\u0011\u001a\u00020\u00012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0 2\u0006\u0010$\u001a\u00020%2\u0006\u00100\u001a\u00020\u0008H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u00102\u001a\u001c\u00103\u001a\u0002042\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u0003052\u0006\u00106\u001a\u000207H\u0002\u001a!\u00108\u001a\u00020\u001e2\u0008\u0008\u0002\u00109\u001a\u00020\u00082\u0008\u0008\u0002\u0010:\u001a\u00020\"H\u0007\u00a2\u0006\u0002\u0010;\u001a;\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020>2\u000e\u0008\u0002\u0010?\u001a\u0008\u0012\u0004\u0012\u00020/0@2\u0014\u0008\u0002\u0010A\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020\n0\u0015H\u0007\u00a2\u0006\u0002\u0010B\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C"
    }
    d2 = {
        "BottomSheetScaffoldPositionalThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "BottomSheetScaffoldVelocityThreshold",
        "FabSpacing",
        "BottomSheet",
        "",
        "state",
        "Landroidx/compose/material/BottomSheetState;",
        "sheetGesturesEnabled",
        "",
        "sheetShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "sheetElevation",
        "sheetBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "sheetContentColor",
        "sheetPeekHeight",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "BottomSheet-dAqlCkY",
        "(Landroidx/compose/material/BottomSheetState;ZLandroidx/compose/ui/graphics/Shape;FJJFLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "BottomSheetScaffold",
        "sheetContent",
        "scaffoldState",
        "Landroidx/compose/material/BottomSheetScaffoldState;",
        "topBar",
        "Lkotlin/Function0;",
        "snackbarHost",
        "Landroidx/compose/material/SnackbarHostState;",
        "floatingActionButton",
        "floatingActionButtonPosition",
        "Landroidx/compose/material/FabPosition;",
        "backgroundColor",
        "contentColor",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "BottomSheetScaffold-HnlDQGw",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "BottomSheetScaffoldLayout",
        "body",
        "bottomSheet",
        "sheetOffset",
        "",
        "sheetState",
        "BottomSheetScaffoldLayout-HJHHjMs",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "rememberBottomSheetScaffoldState",
        "bottomSheetState",
        "snackbarHostState",
        "(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;",
        "rememberBottomSheetState",
        "initialValue",
        "Landroidx/compose/material/BottomSheetValue;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "confirmStateChange",
        "(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;",
        "material_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BottomSheetScaffoldPositionalThreshold:F

.field private static final BottomSheetScaffoldVelocityThreshold:F

.field private static final FabSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 622
    const/16 v0, 0x10

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 726
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 622
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    .line 623
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 727
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 623
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldPositionalThreshold:F

    .line 624
    const/16 v0, 0x7d

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 728
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 624
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldVelocityThreshold:F

    return-void
.end method

.method private static final BottomSheet-dAqlCkY(Landroidx/compose/material/BottomSheetState;ZLandroidx/compose/ui/graphics/Shape;FJJFLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "state"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "sheetGesturesEnabled"    # Z
    .param p2, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p3, "sheetElevation"    # F
    .param p4, "sheetBackgroundColor"    # J
    .param p6, "sheetContentColor"    # J
    .param p8, "sheetPeekHeight"    # F
    .param p9, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p10, "content"    # Lkotlin/jvm/functions/Function3;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJF",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 408
    move-object/from16 v1, p0

    move/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    const v0, -0x18938cfa

    move-object/from16 v2, p11

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(BottomSheet)P(8,5,7,4:c#ui.unit.Dp,2:c#ui.graphics.Color,3:c#ui.graphics.Color,6:c#ui.unit.Dp,1)408@16519L24,*409@16585L7,415@16779L792,436@17795L893,461@18852L29,410@16625L2262:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p12

    .local v3, "$dirty":I
    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v12, 0x6

    if-nez v4, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_2
    :goto_1
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    move/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_5

    move/from16 v4, p1

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_3

    :cond_5
    move/from16 v4, p1

    :goto_3
    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v7, v13, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v3, v3, 0xc00

    move/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0xc00

    if-nez v7, :cond_b

    move/from16 v7, p3

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v3, v8

    goto :goto_7

    :cond_b
    move/from16 v7, p3

    :goto_7
    and-int/lit8 v8, v13, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-wide/from16 v14, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v12, 0x6000

    if-nez v8, :cond_e

    move-wide/from16 v14, p4

    invoke-interface {v2, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v3, v8

    goto :goto_9

    :cond_e
    move-wide/from16 v14, p4

    :goto_9
    and-int/lit8 v8, v13, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_f

    or-int/2addr v3, v10

    move-wide/from16 v5, p6

    goto :goto_b

    :cond_f
    and-int v8, v12, v10

    if-nez v8, :cond_11

    move-wide/from16 v5, p6

    invoke-interface {v2, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_10

    const/high16 v8, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v8, 0x10000

    :goto_a
    or-int/2addr v3, v8

    goto :goto_b

    :cond_11
    move-wide/from16 v5, p6

    :goto_b
    and-int/lit8 v8, v13, 0x40

    const/high16 v10, 0x180000

    if-eqz v8, :cond_12

    or-int/2addr v3, v10

    goto :goto_d

    :cond_12
    and-int v8, v12, v10

    if-nez v8, :cond_14

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_13

    const/high16 v8, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v8, 0x80000

    :goto_c
    or-int/2addr v3, v8

    :cond_14
    :goto_d
    and-int/lit16 v8, v13, 0x80

    const/high16 v16, 0xc00000

    if-eqz v8, :cond_15

    or-int v3, v3, v16

    move/from16 v23, v10

    move-object/from16 v10, p9

    goto :goto_f

    :cond_15
    and-int v16, v12, v16

    if-nez v16, :cond_17

    move/from16 v23, v10

    move-object/from16 v10, p9

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v3, v3, v16

    goto :goto_f

    :cond_17
    move/from16 v23, v10

    move-object/from16 v10, p9

    :goto_f
    and-int/lit16 v0, v13, 0x100

    const/high16 v17, 0x6000000

    if-eqz v0, :cond_18

    or-int v3, v3, v17

    goto :goto_11

    :cond_18
    and-int v0, v12, v17

    if-nez v0, :cond_1a

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v3, v0

    :cond_1a
    :goto_11
    move v0, v3

    .end local v3    # "$dirty":I
    .local v0, "$dirty":I
    const v3, 0x2492493

    and-int/2addr v3, v0

    const v4, 0x2492492

    if-ne v3, v4, :cond_1c

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 464
    :cond_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v26, v0

    move-object/from16 v18, v2

    goto/16 :goto_1b

    .line 408
    :cond_1c
    :goto_12
    if-eqz v8, :cond_1d

    .line 406
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p9    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_13

    .line 408
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p9    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1d
    move-object v3, v10

    .line 406
    .end local p9    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 408
    const/4 v4, -0x1

    const-string/jumbo v8, "androidx.compose.material.BottomSheet (BottomSheetScaffold.kt:407)"

    const v10, -0x18938cfa

    invoke-static {v10, v0, v4, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1e
    nop

    .line 409
    const/4 v4, 0x0

    move v8, v4

    .local v8, "$changed$iv":I
    const/4 v10, 0x0

    .line 645
    .local v10, "$i$f$rememberCoroutineScope":I
    const v4, 0x2e20b340

    move/from16 v26, v0

    .end local v0    # "$dirty":I
    .local v26, "$dirty":I
    const-string v0, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 646
    nop

    .line 648
    move-object v0, v2

    .line 649
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    const v4, -0x38e26dd0

    const-string v5, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    move-object v5, v2

    .local v5, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 650
    .local v6, "$i$f$cache":I
    move/from16 v16, v4

    .end local v4    # "invalid$iv$iv":Z
    .local v16, "invalid$iv$iv":Z
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 651
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v6

    .end local v6    # "$i$f$cache":I
    .local v19, "$i$f$cache":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1f

    .line 652
    const/4 v6, 0x0

    .line 653
    .local v6, "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 654
    const/16 v18, 0x0

    .line 655
    .local v18, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v18, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 654
    .end local v18    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v20, v4

    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .local v20, "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v4, v18

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 653
    move-object/from16 v18, v0

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .local v18, "composer$iv":Landroidx/compose/runtime/Composer;
    new-instance v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v0, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 652
    .end local v6    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 656
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 657
    nop

    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_14

    .line 658
    .end local v18    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v4    # "it$iv$iv":Ljava/lang/Object;
    :cond_1f
    move-object/from16 v18, v0

    move-object/from16 v20, v4

    .end local v0    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .restart local v18    # "composer$iv":Landroidx/compose/runtime/Composer;
    .restart local v20    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v20

    .line 651
    :goto_14
    nop

    .line 650
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v20    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 649
    .end local v5    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v19    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .local v0, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 659
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 645
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 659
    nop

    .line 409
    .end local v0    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v8    # "$changed$iv":I
    .end local v10    # "$i$f$rememberCoroutineScope":I
    .end local v18    # "composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 410
    .local v4, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x0

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .line 660
    .local v6, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v2, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 410
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$getCurrent":I
    move-object v0, v8

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 661
    .local v0, "$this$BottomSheet_dAqlCkY_u24lambda_u243":Landroidx/compose/ui/unit/Density;
    const/4 v5, 0x0

    .line 410
    .local v5, "$i$a$-with-BottomSheetScaffoldKt$BottomSheet$peekHeightPx$1":I
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 412
    .end local v5    # "$i$a$-with-BottomSheetScaffoldKt$BottomSheet$peekHeightPx$1":I
    .local v0, "peekHeightPx":F
    nop

    .line 414
    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v5

    .line 415
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 416
    const v8, -0x546fa8ba

    const-string v10, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {v2, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v8

    and-int/lit8 v7, v26, 0xe

    move/from16 v16, v8

    const/4 v8, 0x4

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    goto :goto_15

    :cond_20
    const/4 v7, 0x0

    :goto_15
    or-int v7, v16, v7

    .local v7, "invalid$iv":Z
    move-object v8, v2

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 662
    .local v16, "$i$f$cache":I
    move/from16 v17, v7

    .end local v7    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 663
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v17, :cond_22

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_21

    goto :goto_16

    .line 667
    :cond_21
    move-object/from16 v19, v7

    goto :goto_17

    .line 664
    :cond_22
    :goto_16
    const/4 v9, 0x0

    .line 416
    .local v9, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    move-object/from16 v19, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v19, "it$iv":Ljava/lang/Object;
    new-instance v7, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$1$1;

    invoke-direct {v7, v1, v0}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$1$1;-><init>(Landroidx/compose/material/BottomSheetState;F)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 664
    .end local v9    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$1":I
    nop

    .line 665
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 666
    nop

    .line 663
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 662
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    nop

    .line 416
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 413
    invoke-static {v3, v5, v6, v7}, Landroidx/compose/material/AnchoredDraggableKt;->draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 433
    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v15

    .line 434
    sget-object v16, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 435
    nop

    .line 432
    const/16 v21, 0x38

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, p1

    move-object v14, v5

    invoke-static/range {v14 .. v22}, Landroidx/compose/material/AnchoredDraggableKt;->anchoredDraggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 437
    const v6, -0x546f2955

    invoke-static {v2, v6, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v6, v26, 0xe

    const/4 v8, 0x4

    if-ne v6, v8, :cond_23

    const/4 v6, 0x1

    goto :goto_18

    :cond_23
    const/4 v6, 0x0

    :goto_18
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .local v6, "invalid$iv":Z
    move-object v7, v2

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 668
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 669
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v6, :cond_25

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v9, v14, :cond_24

    goto :goto_19

    .line 673
    :cond_24
    move-object v15, v9

    goto :goto_1a

    .line 670
    :cond_25
    :goto_19
    const/4 v14, 0x0

    .line 437
    .local v14, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$2":I
    new-instance v15, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$2$1;

    invoke-direct {v15, v1, v4}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$2$1;-><init>(Landroidx/compose/material/BottomSheetState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 670
    .end local v14    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheet$2":I
    nop

    .line 671
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 672
    nop

    .line 669
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 668
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 437
    .end local v6    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v7, v15, v8, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 458
    nop

    .line 460
    nop

    .line 461
    nop

    .line 459
    nop

    .line 462
    new-instance v5, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$3;

    invoke-direct {v5, v11}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$3;-><init>(Lkotlin/jvm/functions/Function3;)V

    const/16 v6, 0x36

    const v7, 0x7a878e4a

    invoke-static {v7, v8, v5, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v26, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int v5, v5, v23

    shr-int/lit8 v6, v26, 0x6

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    shr-int/lit8 v6, v26, 0x6

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v5, v6

    const/high16 v6, 0x70000

    shl-int/lit8 v7, v26, 0x6

    and-int/2addr v6, v7

    or-int v24, v5, v6

    .line 411
    const/16 v20, 0x0

    const/16 v25, 0x10

    move-object/from16 v15, p2

    move/from16 v21, p3

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    move-object/from16 v23, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v14 .. v25}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v18, v23

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 464
    .end local v0    # "peekHeightPx":F
    .end local v4    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_26
    move-object v10, v3

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    :goto_1b
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_27

    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$4;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheet$4;-><init>(Landroidx/compose/material/BottomSheetState;ZLandroidx/compose/ui/graphics/Shape;FJJFLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void
.end method

.method public static final BottomSheetScaffold-HnlDQGw(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p0, "sheetContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "scaffoldState"    # Landroidx/compose/material/BottomSheetScaffoldState;
    .param p3, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p5, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p6, "floatingActionButtonPosition"    # I
    .param p7, "sheetGesturesEnabled"    # Z
    .param p8, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p9, "sheetElevation"    # F
    .param p10, "sheetBackgroundColor"    # J
    .param p12, "sheetContentColor"    # J
    .param p14, "sheetPeekHeight"    # F
    .param p15, "backgroundColor"    # J
    .param p17, "contentColor"    # J
    .param p19, "content"    # Lkotlin/jvm/functions/Function3;
    .param p20, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p21, "$changed"    # I
    .param p22, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;IZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJFJJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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

    .line 348
    move/from16 v0, p21

    move/from16 v1, p22

    move/from16 v2, p23

    const v3, -0x19385210

    move-object/from16 v4, p20

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .end local p20    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(BottomSheetScaffold)P(8,5,6,15,14,3,4:c#material.FabPosition,11,13,10:c#ui.unit.Dp,7:c#ui.graphics.Color,9:c#ui.graphics.Color,12:c#ui.unit.Dp,0:c#ui.graphics.Color,2:c#ui.graphics.Color)333@13308L34,339@13677L6,341@13808L6,342@13855L37,344@14008L6,345@14053L32,353@14273L1864,348@14144L1993:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p21

    .local v4, "$dirty":I
    move/from16 v5, p22

    .local v5, "$dirty1":I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v4, v4, 0x6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v0, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    :goto_1
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_3

    or-int/lit8 v4, v4, 0x30

    move-object/from16 v12, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v12, v0, 0x30

    if-nez v12, :cond_5

    move-object/from16 v12, p1

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x20

    goto :goto_2

    :cond_4
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v4, v13

    goto :goto_3

    :cond_5
    move-object/from16 v12, p1

    :goto_3
    and-int/lit16 v13, v0, 0x180

    if-nez v13, :cond_8

    and-int/lit8 v13, v2, 0x4

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v13, p2

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v4, v4, v16

    goto :goto_5

    :cond_8
    move-object/from16 v13, p2

    :goto_5
    and-int/lit8 v16, v2, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v4, v4, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v0, 0xc00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_6

    :cond_a
    move/from16 v19, v18

    :goto_6
    or-int v4, v4, v19

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v19, v2, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    if-eqz v19, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move-object/from16 v8, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v8, v0, 0x6000

    if-nez v8, :cond_e

    move-object/from16 v8, p4

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v20

    goto :goto_8

    :cond_d
    move/from16 v23, v21

    :goto_8
    or-int v4, v4, v23

    goto :goto_9

    :cond_e
    move-object/from16 v8, p4

    :goto_9
    and-int/lit8 v23, v2, 0x20

    const/high16 v24, 0x30000

    if-eqz v23, :cond_f

    or-int v4, v4, v24

    move-object/from16 v10, p5

    goto :goto_b

    :cond_f
    and-int v25, v0, v24

    if-nez v25, :cond_11

    move-object/from16 v10, p5

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v26, 0x10000

    :goto_a
    or-int v4, v4, v26

    goto :goto_b

    :cond_11
    move-object/from16 v10, p5

    :goto_b
    and-int/lit8 v26, v2, 0x40

    const/high16 v27, 0x180000

    if-eqz v26, :cond_12

    or-int v4, v4, v27

    move/from16 v11, p6

    goto :goto_d

    :cond_12
    and-int v28, v0, v27

    if-nez v28, :cond_14

    move/from16 v11, p6

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v4, v4, v29

    goto :goto_d

    :cond_14
    move/from16 v11, p6

    :goto_d
    and-int/lit16 v14, v2, 0x80

    const/high16 v30, 0xc00000

    if-eqz v14, :cond_15

    or-int v4, v4, v30

    move/from16 v15, p7

    goto :goto_f

    :cond_15
    and-int v30, v0, v30

    if-nez v30, :cond_17

    move/from16 v15, p7

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v31, 0x400000

    :goto_e
    or-int v4, v4, v31

    goto :goto_f

    :cond_17
    move/from16 v15, p7

    :goto_f
    const/high16 v31, 0x6000000

    and-int v31, v0, v31

    if-nez v31, :cond_1a

    and-int/lit16 v0, v2, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v4, v4, v31

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    const/high16 v31, 0x30000000

    and-int v31, p21, v31

    if-nez v31, :cond_1d

    and-int/lit16 v0, v2, 0x200

    if-nez v0, :cond_1b

    move/from16 v0, p9

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1b
    move/from16 v0, p9

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v4, v4, v31

    goto :goto_13

    :cond_1d
    move/from16 v0, p9

    :goto_13
    and-int/lit8 v31, v1, 0x6

    if-nez v31, :cond_20

    and-int/lit16 v0, v2, 0x400

    if-nez v0, :cond_1e

    move v0, v5

    move-wide/from16 v5, p10

    .end local v5    # "$dirty1":I
    .local v0, "$dirty1":I
    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v22, 0x4

    goto :goto_14

    .end local v0    # "$dirty1":I
    .restart local v5    # "$dirty1":I
    :cond_1e
    move v0, v5

    move-wide/from16 v5, p10

    .end local v5    # "$dirty1":I
    .restart local v0    # "$dirty1":I
    :cond_1f
    const/16 v22, 0x2

    :goto_14
    or-int v0, v0, v22

    goto :goto_15

    .end local v0    # "$dirty1":I
    .restart local v5    # "$dirty1":I
    :cond_20
    move v0, v5

    move-wide/from16 v5, p10

    .end local v5    # "$dirty1":I
    .restart local v0    # "$dirty1":I
    :goto_15
    and-int/lit8 v22, v1, 0x30

    if-nez v22, :cond_23

    move/from16 p20, v0

    .end local v0    # "$dirty1":I
    .local p20, "$dirty1":I
    and-int/lit16 v0, v2, 0x800

    if-nez v0, :cond_21

    move-wide/from16 v5, p12

    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v25, 0x20

    goto :goto_16

    :cond_21
    move-wide/from16 v5, p12

    :cond_22
    const/16 v25, 0x10

    :goto_16
    or-int v0, p20, v25

    .end local p20    # "$dirty1":I
    .restart local v0    # "$dirty1":I
    goto :goto_17

    :cond_23
    move-wide/from16 v5, p12

    move/from16 p20, v0

    :goto_17
    move/from16 p20, v0

    .end local v0    # "$dirty1":I
    .restart local p20    # "$dirty1":I
    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_26

    and-int/lit16 v0, v2, 0x1000

    if-nez v0, :cond_24

    move/from16 v0, p14

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v29, 0x100

    goto :goto_18

    :cond_24
    move/from16 v0, p14

    :cond_25
    const/16 v29, 0x80

    :goto_18
    or-int v22, p20, v29

    .end local p20    # "$dirty1":I
    .local v22, "$dirty1":I
    goto :goto_19

    .end local v22    # "$dirty1":I
    .restart local p20    # "$dirty1":I
    :cond_26
    move/from16 v0, p14

    move/from16 v22, p20

    .end local p20    # "$dirty1":I
    .restart local v22    # "$dirty1":I
    :goto_19
    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_29

    and-int/lit16 v0, v2, 0x2000

    if-nez v0, :cond_27

    move-wide/from16 v5, p15

    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_1a

    :cond_27
    move-wide/from16 v5, p15

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v22, v22, v17

    goto :goto_1b

    :cond_29
    move-wide/from16 v5, p15

    :goto_1b
    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_2c

    and-int/lit16 v0, v2, 0x4000

    if-nez v0, :cond_2a

    move-wide/from16 v0, p17

    invoke-interface {v3, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_1c

    :cond_2a
    move-wide/from16 v0, p17

    :cond_2b
    move/from16 v20, v21

    :goto_1c
    or-int v22, v22, v20

    goto :goto_1d

    :cond_2c
    move-wide/from16 v0, p17

    :goto_1d
    const v17, 0x8000

    and-int v17, v2, v17

    if-eqz v17, :cond_2d

    or-int v22, v22, v24

    move-object/from16 v0, p19

    goto :goto_1f

    :cond_2d
    and-int v17, p22, v24

    if-nez v17, :cond_2f

    move-object/from16 v0, p19

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/high16 v1, 0x20000

    goto :goto_1e

    :cond_2e
    const/high16 v1, 0x10000

    :goto_1e
    or-int v22, v22, v1

    goto :goto_1f

    :cond_2f
    move-object/from16 v0, p19

    :goto_1f
    const v1, 0x12492493

    and-int/2addr v1, v4

    const v0, 0x12492492

    if-ne v1, v0, :cond_31

    const v0, 0x12493

    and-int v0, v22, v0

    const v1, 0x12492

    if-ne v0, v1, :cond_31

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_20

    .line 394
    :cond_30
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v9, p8

    move-wide/from16 v18, p17

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-wide/from16 v16, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v10

    move v7, v11

    move-object v2, v12

    move-object v3, v13

    move v8, v15

    move/from16 v26, v22

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    goto/16 :goto_2b

    .line 348
    :cond_31
    :goto_20
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p21, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_21

    .line 346
    :cond_32
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_33

    and-int/lit16 v4, v4, -0x381

    :cond_33
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_34

    const v0, -0xe000001

    and-int/2addr v4, v0

    :cond_34
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_35

    const v0, -0x70000001

    and-int/2addr v4, v0

    :cond_35
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_36

    and-int/lit8 v22, v22, -0xf

    :cond_36
    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_37

    and-int/lit8 v22, v22, -0x71

    :cond_37
    move/from16 v0, v22

    .end local v22    # "$dirty1":I
    .restart local v0    # "$dirty1":I
    and-int/lit16 v9, v2, 0x1000

    if-eqz v9, :cond_38

    and-int/lit16 v0, v0, -0x381

    :cond_38
    and-int/lit16 v9, v2, 0x2000

    if-eqz v9, :cond_39

    and-int/lit16 v0, v0, -0x1c01

    :cond_39
    and-int/lit16 v9, v2, 0x4000

    if-eqz v9, :cond_3a

    const v9, -0xe001

    and-int/2addr v0, v9

    :cond_3a
    move/from16 v14, p9

    move-wide/from16 v16, p12

    move/from16 v1, p14

    move-wide/from16 v20, p17

    move v9, v0

    move-wide/from16 v18, v5

    move-object/from16 v0, p8

    move v6, v4

    move-wide/from16 v4, p10

    goto/16 :goto_29

    .line 348
    .end local v0    # "$dirty1":I
    .restart local v22    # "$dirty1":I
    :cond_3b
    :goto_21
    if-eqz v9, :cond_3c

    .line 333
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v12, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    :cond_3c
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_3d

    .line 334
    const/4 v0, 0x0

    const/4 v9, 0x3

    invoke-static {v1, v1, v3, v0, v9}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetScaffoldState(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;

    move-result-object v0

    .end local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v0, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    and-int/lit16 v4, v4, -0x381

    move-object v13, v0

    .end local v0    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v13, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    :cond_3d
    if-eqz v16, :cond_3e

    .line 335
    const/4 v0, 0x0

    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local v0, "topBar":Lkotlin/jvm/functions/Function2;
    goto :goto_22

    .line 334
    .end local v0    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    :cond_3e
    move-object v0, v7

    .line 335
    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "topBar":Lkotlin/jvm/functions/Function2;
    :goto_22
    if-eqz v19, :cond_3f

    sget-object v7, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v8, v7

    .end local p4    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v8, "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_3f
    if-eqz v23, :cond_40

    .line 337
    const/4 v7, 0x0

    move-object v10, v7

    .end local p5    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v10, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :cond_40
    if-eqz v26, :cond_41

    .line 338
    sget-object v7, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v7}, Landroidx/compose/material/FabPosition$Companion;->getEnd-5ygKITE()I

    move-result v7

    move v11, v7

    .end local p6    # "floatingActionButtonPosition":I
    .local v11, "floatingActionButtonPosition":I
    :cond_41
    if-eqz v14, :cond_42

    .line 339
    const/4 v7, 0x1

    move v15, v7

    .end local p7    # "sheetGesturesEnabled":Z
    .local v15, "sheetGesturesEnabled":Z
    :cond_42
    and-int/lit16 v7, v2, 0x100

    const/4 v9, 0x6

    if-eqz v7, :cond_43

    .line 340
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v7, v3, v9}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Shape;

    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    const v14, -0xe000001

    and-int/2addr v4, v14

    goto :goto_23

    .line 339
    .end local v7    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :cond_43
    move-object/from16 v7, p8

    .line 340
    .end local p8    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v7    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :goto_23
    and-int/lit16 v14, v2, 0x200

    if-eqz v14, :cond_44

    .line 341
    sget-object v14, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v14}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetElevation-D9Ej5fM()F

    move-result v14

    .end local p9    # "sheetElevation":F
    .local v14, "sheetElevation":F
    const v16, -0x70000001

    and-int v4, v4, v16

    goto :goto_24

    .line 340
    .end local v14    # "sheetElevation":F
    .restart local p9    # "sheetElevation":F
    :cond_44
    move/from16 v14, p9

    .line 341
    .end local p9    # "sheetElevation":F
    .restart local v14    # "sheetElevation":F
    :goto_24
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_45

    .line 342
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v1, v3, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v16

    .end local p10    # "sheetBackgroundColor":J
    .local v16, "sheetBackgroundColor":J
    and-int/lit8 v22, v22, -0xf

    move-object/from16 p1, v10

    move-wide/from16 v9, v16

    goto :goto_25

    .line 341
    .end local v16    # "sheetBackgroundColor":J
    .restart local p10    # "sheetBackgroundColor":J
    :cond_45
    move-object/from16 p1, v10

    move-wide/from16 v9, p10

    .line 342
    .end local v10    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local p10    # "sheetBackgroundColor":J
    .local v9, "sheetBackgroundColor":J
    .local p1, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    :goto_25
    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_46

    .line 343
    and-int/lit8 v1, v22, 0xe

    invoke-static {v9, v10, v3, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    .end local p12    # "sheetContentColor":J
    .local v16, "sheetContentColor":J
    and-int/lit8 v22, v22, -0x71

    move/from16 v1, v22

    goto :goto_26

    .line 342
    .end local v16    # "sheetContentColor":J
    .restart local p12    # "sheetContentColor":J
    :cond_46
    move-wide/from16 v16, p12

    move/from16 v1, v22

    .line 343
    .end local v22    # "$dirty1":I
    .end local p12    # "sheetContentColor":J
    .local v1, "$dirty1":I
    .restart local v16    # "sheetContentColor":J
    :goto_26
    move-object/from16 p3, v0

    .end local v0    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    and-int/lit16 v0, v2, 0x1000

    if-eqz v0, :cond_47

    .line 344
    sget-object v0, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getSheetPeekHeight-D9Ej5fM()F

    move-result v0

    .end local p14    # "sheetPeekHeight":F
    .local v0, "sheetPeekHeight":F
    and-int/lit16 v1, v1, -0x381

    goto :goto_27

    .line 343
    .end local v0    # "sheetPeekHeight":F
    .restart local p14    # "sheetPeekHeight":F
    :cond_47
    move/from16 v0, p14

    .line 344
    .end local p14    # "sheetPeekHeight":F
    .restart local v0    # "sheetPeekHeight":F
    :goto_27
    move/from16 p4, v0

    .end local v0    # "sheetPeekHeight":F
    .local p4, "sheetPeekHeight":F
    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_48

    .line 345
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p5, v4

    const/4 v4, 0x6

    .end local v4    # "$dirty":I
    .local p5, "$dirty":I
    invoke-virtual {v0, v3, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getBackground-0d7_KjU()J

    move-result-wide v4

    .end local p15    # "backgroundColor":J
    .local v4, "backgroundColor":J
    and-int/lit16 v1, v1, -0x1c01

    goto :goto_28

    .line 344
    .end local p5    # "$dirty":I
    .local v4, "$dirty":I
    .restart local p15    # "backgroundColor":J
    :cond_48
    move/from16 p5, v4

    .end local v4    # "$dirty":I
    .restart local p5    # "$dirty":I
    move-wide v4, v5

    .line 345
    .end local p15    # "backgroundColor":J
    .local v4, "backgroundColor":J
    :goto_28
    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_49

    .line 346
    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v4, v5, v3, v0}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    .end local p17    # "contentColor":J
    .local v18, "contentColor":J
    const v0, -0xe001

    and-int/2addr v0, v1

    move/from16 v1, p4

    move/from16 v6, p5

    move-wide/from16 v20, v18

    move-wide/from16 v18, v4

    move-wide v4, v9

    move-object/from16 v10, p1

    move v9, v0

    move-object v0, v7

    move-object/from16 v7, p3

    .end local v1    # "$dirty1":I
    .local v0, "$dirty1":I
    goto :goto_29

    .line 345
    .end local v0    # "$dirty1":I
    .end local v18    # "contentColor":J
    .restart local v1    # "$dirty1":I
    .restart local p17    # "contentColor":J
    :cond_49
    move/from16 v6, p5

    move-wide/from16 v20, p17

    move-wide/from16 v18, v4

    move-object v0, v7

    move-wide v4, v9

    move-object/from16 v10, p1

    move-object/from16 v7, p3

    move v9, v1

    move/from16 v1, p4

    .line 346
    .end local p1    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local p4    # "sheetPeekHeight":F
    .end local p5    # "$dirty":I
    .end local p17    # "contentColor":J
    .local v0, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v1, "sheetPeekHeight":F
    .local v4, "sheetBackgroundColor":J
    .local v6, "$dirty":I
    .local v7, "topBar":Lkotlin/jvm/functions/Function2;
    .local v9, "$dirty1":I
    .restart local v10    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v18, "backgroundColor":J
    .local v20, "contentColor":J
    :goto_29
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v22

    if-eqz v22, :cond_4a

    .line 348
    move-object/from16 p9, v0

    .end local v0    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local p9, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    const v0, -0x19385210

    move/from16 p5, v1

    .end local v1    # "sheetPeekHeight":F
    .local p5, "sheetPeekHeight":F
    const-string/jumbo v1, "androidx.compose.material.BottomSheetScaffold (BottomSheetScaffold.kt:347)"

    invoke-static {v0, v6, v9, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2a

    .line 346
    .end local p5    # "sheetPeekHeight":F
    .end local p9    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v1    # "sheetPeekHeight":F
    :cond_4a
    move-object/from16 p9, v0

    move/from16 p5, v1

    .line 350
    .end local v0    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local v1    # "sheetPeekHeight":F
    .restart local p5    # "sheetPeekHeight":F
    .restart local p9    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    :goto_2a
    nop

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v12, v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 352
    nop

    .line 353
    nop

    .line 354
    new-instance v2, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;

    move-object/from16 p15, p0

    move-object/from16 p7, p19

    move-object/from16 p1, v2

    move-wide/from16 p11, v4

    move-object/from16 p3, v7

    move-object/from16 p16, v8

    move-object/from16 p4, v10

    move/from16 p6, v11

    move-object/from16 p2, v13

    move/from16 p10, v14

    move/from16 p8, v15

    move-wide/from16 p13, v16

    .end local v4    # "sheetBackgroundColor":J
    .end local v7    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local v10    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local v11    # "floatingActionButtonPosition":I
    .end local v13    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .end local v14    # "sheetElevation":F
    .end local v15    # "sheetGesturesEnabled":Z
    .end local v16    # "sheetContentColor":J
    .restart local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .restart local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .local p4, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local p6    # "floatingActionButtonPosition":I
    .local p8, "sheetGesturesEnabled":Z
    .local p10, "sheetElevation":F
    .local p11, "sheetBackgroundColor":J
    .local p13, "sheetContentColor":J
    .local p16, "snackbarHost":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {p1 .. p16}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;-><init>(Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FILkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    move/from16 v5, p5

    move-object/from16 v4, p9

    move-wide/from16 v16, p11

    move-wide/from16 v22, p13

    move-object/from16 p1, v0

    .end local p2    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .end local p3    # "topBar":Lkotlin/jvm/functions/Function2;
    .end local p4    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .end local p5    # "sheetPeekHeight":F
    .end local p6    # "floatingActionButtonPosition":I
    .end local p8    # "sheetGesturesEnabled":Z
    .end local p9    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .end local p10    # "sheetElevation":F
    .end local p11    # "sheetBackgroundColor":J
    .end local p13    # "sheetContentColor":J
    .end local p16    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v4, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v5, "sheetPeekHeight":F
    .restart local v7    # "topBar":Lkotlin/jvm/functions/Function2;
    .restart local v8    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v10    # "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .restart local v11    # "floatingActionButtonPosition":I
    .restart local v13    # "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .restart local v14    # "sheetElevation":F
    .restart local v15    # "sheetGesturesEnabled":Z
    .local v16, "sheetBackgroundColor":J
    .local v22, "sheetContentColor":J
    const/16 v0, 0x36

    move-object/from16 p13, v4

    .end local v4    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local p13, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    const v4, -0x7d05ecc

    invoke-static {v4, v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v9, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v1, v1, v27

    shr-int/lit8 v2, v9, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    .line 349
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x32

    move-object/from16 p9, v0

    move/from16 p11, v1

    move-object/from16 p2, v2

    move-object/from16 p10, v3

    move-object/from16 p7, v4

    move-wide/from16 p3, v18

    move-wide/from16 p5, v20

    move/from16 p8, v24

    move/from16 p12, v25

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "backgroundColor":J
    .end local v20    # "contentColor":J
    .local p3, "backgroundColor":J
    .local p5, "contentColor":J
    .local p10, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p1 .. p12}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-wide/from16 v0, p3

    move-wide/from16 v18, p5

    move-object/from16 v24, p10

    .end local p3    # "backgroundColor":J
    .end local p5    # "contentColor":J
    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "backgroundColor":J
    .local v18, "contentColor":J
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 394
    :cond_4b
    move v2, v15

    move v15, v5

    move-object v5, v8

    move v8, v2

    move/from16 v25, v6

    move-object v4, v7

    move/from16 v26, v9

    move-object v6, v10

    move v7, v11

    move-object v2, v12

    move-object v3, v13

    move v10, v14

    move-wide/from16 v11, v16

    move-wide/from16 v13, v22

    move-object/from16 v9, p13

    move-wide/from16 v16, v0

    .end local v0    # "backgroundColor":J
    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v14    # "sheetElevation":F
    .end local v22    # "sheetContentColor":J
    .end local p13    # "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "scaffoldState":Landroidx/compose/material/BottomSheetScaffoldState;
    .local v4, "topBar":Lkotlin/jvm/functions/Function2;
    .local v5, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v6, "floatingActionButton":Lkotlin/jvm/functions/Function2;
    .local v7, "floatingActionButtonPosition":I
    .local v8, "sheetGesturesEnabled":Z
    .local v9, "sheetShape":Landroidx/compose/ui/graphics/Shape;
    .local v10, "sheetElevation":F
    .local v11, "sheetBackgroundColor":J
    .local v13, "sheetContentColor":J
    .local v15, "sheetPeekHeight":F
    .local v16, "backgroundColor":J
    .local v25, "$dirty":I
    .local v26, "$dirty1":I
    :goto_2b
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_4c

    move-object v1, v0

    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;

    move-object/from16 v20, p19

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v32, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLandroidx/compose/ui/graphics/Shape;FJJFJJLkotlin/jvm/functions/Function3;III)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_4c
    return-void
.end method

.method private static final BottomSheetScaffoldLayout-HJHHjMs(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 30
    .param p0, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .param p2, "bottomSheet"    # Lkotlin/jvm/functions/Function2;
    .param p3, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p7, "floatingActionButtonPosition"    # I
    .param p8, "sheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/material/BottomSheetState;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 501
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    const v0, 0x5426ec4d

    move-object/from16 v11, p9

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v12, "C(BottomSheetScaffoldLayout)P(8!3,7,5:c#ui.unit.Dp,4,3:c#material.FabPosition)509@20078L2668,501@19867L2879:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v12, p10

    .local v12, "$dirty":I
    and-int/lit8 v13, v10, 0x6

    if-nez v13, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    :goto_0
    or-int/2addr v12, v13

    :cond_1
    and-int/lit8 v13, v10, 0x30

    if-nez v13, :cond_3

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x20

    goto :goto_1

    :cond_2
    const/16 v13, 0x10

    :goto_1
    or-int/2addr v12, v13

    :cond_3
    and-int/lit16 v13, v10, 0x180

    const/16 p9, 0x4

    if-nez v13, :cond_5

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_2

    :cond_4
    const/16 v13, 0x80

    :goto_2
    or-int/2addr v12, v13

    :cond_5
    and-int/lit16 v13, v10, 0xc00

    if-nez v13, :cond_7

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x800

    goto :goto_3

    :cond_6
    const/16 v13, 0x400

    :goto_3
    or-int/2addr v12, v13

    :cond_7
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_9

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x4000

    goto :goto_4

    :cond_8
    const/16 v13, 0x2000

    :goto_4
    or-int/2addr v12, v13

    :cond_9
    const/high16 v13, 0x30000

    and-int/2addr v13, v10

    const/16 v16, 0x2

    if-nez v13, :cond_b

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_a

    const/high16 v13, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v13, 0x10000

    :goto_5
    or-int/2addr v12, v13

    :cond_b
    const/high16 v13, 0x180000

    and-int/2addr v13, v10

    const/high16 v14, 0x100000

    if-nez v13, :cond_d

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v13, v14

    goto :goto_6

    :cond_c
    const/high16 v13, 0x80000

    :goto_6
    or-int/2addr v12, v13

    :cond_d
    const/high16 v13, 0xc00000

    and-int/2addr v13, v10

    if-nez v13, :cond_f

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/high16 v13, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v13, 0x400000

    :goto_7
    or-int/2addr v12, v13

    :cond_f
    const/high16 v13, 0x6000000

    and-int/2addr v13, v10

    if-nez v13, :cond_11

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x4000000

    goto :goto_8

    :cond_10
    const/high16 v13, 0x2000000

    :goto_8
    or-int/2addr v12, v13

    :cond_11
    const v13, 0x2492493

    and-int/2addr v13, v12

    const v15, 0x2492492

    if-ne v13, v15, :cond_13

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_9

    .line 565
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_18

    .line 501
    :cond_13
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v13, -0x1

    const-string/jumbo v15, "androidx.compose.material.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:500)"

    invoke-static {v0, v12, v13, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 504
    :cond_14
    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_15

    sget-object v13, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v13}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    goto :goto_a

    :cond_15
    move-object v13, v1

    :goto_a
    const/4 v15, 0x0

    aput-object v13, v0, v15

    .line 505
    const/4 v13, 0x1

    aput-object v2, v0, v13

    .line 504
    nop

    .line 506
    aput-object v3, v0, v16

    .line 504
    nop

    .line 507
    if-nez v4, :cond_16

    sget-object v16, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-3$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v16

    goto :goto_b

    :cond_16
    move-object/from16 v16, v4

    :goto_b
    const/16 v21, 0x3

    aput-object v16, v0, v21

    .line 504
    nop

    .line 508
    aput-object v5, v0, p9

    .line 504
    nop

    .line 503
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 510
    const v13, 0x202cb55a

    move/from16 v16, v15

    const-string v15, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {v11, v13, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v13, 0x380000

    and-int/2addr v13, v12

    if-ne v13, v14, :cond_17

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    move/from16 v13, v16

    :goto_c
    const/high16 v14, 0x1c00000

    and-int/2addr v14, v12

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_18

    const/4 v14, 0x1

    goto :goto_d

    :cond_18
    move/from16 v14, v16

    :goto_d
    or-int/2addr v13, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v12

    const/high16 v15, 0x20000

    if-ne v14, v15, :cond_19

    const/4 v14, 0x1

    goto :goto_e

    :cond_19
    move/from16 v14, v16

    :goto_e
    or-int/2addr v13, v14

    const/high16 v14, 0xe000000

    and-int/2addr v14, v12

    const/high16 v15, 0x4000000

    if-ne v14, v15, :cond_1a

    const/4 v14, 0x1

    goto :goto_f

    :cond_1a
    move/from16 v14, v16

    :goto_f
    or-int/2addr v13, v14

    .local v13, "invalid$iv":Z
    move-object v14, v11

    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 674
    .local v15, "$i$f$cache":I
    move-object/from16 v18, v0

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 675
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v13, :cond_1c

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    goto :goto_10

    .line 679
    :cond_1b
    move-object/from16 v20, v0

    goto :goto_11

    .line 676
    :cond_1c
    :goto_10
    const/4 v1, 0x0

    .line 510
    .local v1, "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    move-object/from16 v20, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    invoke-direct {v0, v7, v8, v6, v9}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function0;IFLandroidx/compose/material/BottomSheetState;)V

    check-cast v0, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 676
    .end local v1    # "$i$a$-cache-BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1":I
    nop

    .line 677
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 678
    nop

    .line 675
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 674
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    nop

    .line 510
    .end local v13    # "invalid$iv":Z
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 502
    move/from16 v1, v16

    .local v0, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local v1, "$changed$iv":I
    .local v18, "contents$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 680
    .local v13, "$i$f$Layout":I
    const v14, 0x5365e06c

    const-string v15, "CC(Layout)P(!1,2)173@6976L62,170@6862L182:Layout.kt#80mrfh"

    invoke-static {v11, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 681
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 685
    .local v14, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v15

    .line 687
    const v2, -0x1154ad0d

    const-string v3, "CC(remember):Layout.kt#9igjgp"

    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v2, v1, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/16 v3, 0x100

    if-le v2, v3, :cond_1d

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    and-int/lit16 v2, v1, 0x180

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    move/from16 v2, v16

    .local v2, "invalid$iv$iv":Z
    :goto_12
    move-object v3, v11

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 688
    .local v17, "$i$f$cache":I
    move-object/from16 p9, v0

    .end local v0    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local p9, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 689
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_21

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v21, v1

    .end local v1    # "$changed$iv":I
    .local v21, "$changed$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_20

    goto :goto_13

    .line 693
    :cond_20
    move-object v1, v0

    goto :goto_14

    .line 689
    .end local v21    # "$changed$iv":I
    .restart local v1    # "$changed$iv":I
    :cond_21
    move/from16 v21, v1

    .line 690
    .end local v1    # "$changed$iv":I
    .restart local v21    # "$changed$iv":I
    :goto_13
    const/4 v1, 0x0

    .line 687
    .local v1, "$i$a$-cache-LayoutKt$Layout$3$iv":I
    invoke-static/range {p9 .. p9}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 690
    .end local v1    # "$i$a$-cache-LayoutKt$Layout$3$iv":I
    nop

    .line 691
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 692
    nop

    .line 689
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_14
    nop

    .line 688
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 687
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v21, 0x70

    .line 684
    nop

    .local v0, "$changed$iv$iv":I
    .local v1, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v15, "content$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 694
    .local v2, "$i$f$Layout":I
    const v3, -0x4ee9b9da

    move/from16 v17, v0

    .end local v0    # "$changed$iv$iv":I
    .local v17, "$changed$iv$iv":I
    const-string v0, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v11, v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 695
    move/from16 v0, v16

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 696
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 697
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v16, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-static {v11, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 699
    .local v0, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v19

    move/from16 v20, v2

    .end local v2    # "$i$f$Layout":I
    .local v20, "$i$f$Layout":I
    shl-int/lit8 v2, v17, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x6

    .line 698
    nop

    .local v2, "$changed$iv$iv$iv":I
    move-object/from16 v22, v19

    .local v22, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v19, 0x0

    .line 700
    .local v19, "$i$f$ReusableComposeNode":I
    move/from16 v23, v2

    .end local v2    # "$changed$iv$iv$iv":I
    .local v23, "$changed$iv$iv$iv":I
    const v2, -0x2942ffcf

    const-string v4, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 701
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 702
    :cond_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 703
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 704
    move-object/from16 v2, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v2, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    .line 706
    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_23
    move-object/from16 v2, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 708
    :goto_15
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 709
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v25, v2

    .end local v2    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 710
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 712
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v24, 0x0

    .line 713
    .local v24, "$i$f$set-impl":I
    move-object/from16 v26, v4

    .local v26, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 714
    .local v27, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v28

    if-nez v28, :cond_25

    move-object/from16 v28, v1

    .end local v1    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v28, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_16

    :cond_24
    move-object/from16 v3, v26

    goto :goto_17

    .end local v28    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v1    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_25
    move-object/from16 v28, v1

    move-object/from16 v29, v3

    .line 715
    .end local v1    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v26

    .end local v26    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 716
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 718
    :goto_17
    nop

    .line 713
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 718
    nop

    .line 719
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v24    # "$i$f$set-impl":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 720
    nop

    .line 708
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 721
    shr-int/lit8 v1, v23, 0x6

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v11, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 700
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 723
    nop

    .line 694
    .end local v19    # "$i$f$ReusableComposeNode":I
    .end local v23    # "$changed$iv$iv$iv":I
    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 724
    nop

    .line 680
    .end local v0    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v15    # "content$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "compositeKeyHash$iv$iv":I
    .end local v17    # "$changed$iv$iv":I
    .end local v20    # "$i$f$Layout":I
    .end local v28    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 725
    nop

    .end local v13    # "$i$f$Layout":I
    .end local v14    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v18    # "contents$iv":Ljava/util/List;
    .end local v21    # "$changed$iv":I
    .end local p9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 565
    :cond_26
    :goto_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_27

    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_27
    return-void
.end method

.method private static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "*>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 571
    new-instance v0, Landroidx/compose/material/BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 620
    return-object v0
.end method

.method public static final synthetic access$BottomSheet-dAqlCkY(Landroidx/compose/material/BottomSheetState;ZLandroidx/compose/ui/graphics/Shape;FJJFLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "state"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "sheetGesturesEnabled"    # Z
    .param p2, "sheetShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p3, "sheetElevation"    # F
    .param p4, "sheetBackgroundColor"    # J
    .param p6, "sheetContentColor"    # J
    .param p8, "sheetPeekHeight"    # F
    .param p9, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p10, "content"    # Lkotlin/jvm/functions/Function3;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheet-dAqlCkY(Landroidx/compose/material/BottomSheetState;ZLandroidx/compose/ui/graphics/Shape;FJJFLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$BottomSheetScaffoldLayout-HJHHjMs(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "topBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "body"    # Lkotlin/jvm/functions/Function2;
    .param p2, "bottomSheet"    # Lkotlin/jvm/functions/Function2;
    .param p3, "floatingActionButton"    # Lkotlin/jvm/functions/Function2;
    .param p4, "snackbarHost"    # Lkotlin/jvm/functions/Function2;
    .param p5, "sheetPeekHeight"    # F
    .param p6, "sheetOffset"    # Lkotlin/jvm/functions/Function0;
    .param p7, "floatingActionButtonPosition"    # I
    .param p8, "sheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-HJHHjMs(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;ILandroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBottomSheetScaffoldPositionalThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldPositionalThreshold:F

    return v0
.end method

.method public static final synthetic access$getBottomSheetScaffoldVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->BottomSheetScaffoldVelocityThreshold:F

    return v0
.end method

.method public static final synthetic access$getFabSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final rememberBottomSheetScaffoldState(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;
    .locals 8
    .param p0, "bottomSheetState"    # Landroidx/compose/material/BottomSheetState;
    .param p1, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 277
    const v0, -0x3ceed8a4

    const-string v1, "C(rememberBottomSheetScaffoldState)274@9912L35,275@9992L32,277@10066L196:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 275
    sget-object v2, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    const/4 v6, 0x6

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/BottomSheetScaffoldKt;->rememberBottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;

    move-result-object p0

    goto :goto_0

    .line 277
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_0
    move-object v5, p2

    .line 275
    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_0
    and-int/lit8 p2, p4, 0x2

    const-string p4, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    if-eqz p2, :cond_2

    .line 276
    const p2, 0xbed1aba

    invoke-static {v5, p2, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 p2, 0x0

    .local p2, "invalid$iv":Z
    move-object v1, v5

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 633
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 634
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_1

    .line 635
    const/4 v6, 0x0

    .line 276
    .local v6, "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    new-instance v7, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v7}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 635
    .end local v6    # "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$1":I
    nop

    .line 636
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 637
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 638
    :cond_1
    move-object v7, v3

    .line 634
    :goto_1
    nop

    .line 633
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 276
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    move-object p1, v7

    check-cast p1, Landroidx/compose/material/SnackbarHostState;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 277
    const/4 p2, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:276)"

    invoke-static {v0, p3, p2, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    nop

    .line 278
    const p2, 0xbed249e

    invoke-static {v5, p2, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 p2, p3, 0xe

    xor-int/lit8 p2, p2, 0x6

    const/4 p4, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-le p2, v0, :cond_4

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    and-int/lit8 p2, p3, 0x6

    if-ne p2, v0, :cond_6

    :cond_5
    move p2, v1

    goto :goto_2

    :cond_6
    move p2, p4

    :goto_2
    and-int/lit8 v0, p3, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-le v0, v2, :cond_7

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    and-int/lit8 v0, p3, 0x30

    if-ne v0, v2, :cond_9

    :cond_8
    move p4, v1

    :cond_9
    or-int/2addr p2, p4

    .restart local p2    # "invalid$iv":Z
    move-object p4, v5

    .local p4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v0, 0x0

    .line 639
    .local v0, "$i$f$cache":I
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 640
    .local v2, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p2, :cond_b

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_a

    goto :goto_3

    .line 644
    :cond_a
    move-object v4, v1

    goto :goto_4

    .line 641
    :cond_b
    :goto_3
    const/4 v3, 0x0

    .line 279
    .local v3, "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    new-instance v4, Landroidx/compose/material/BottomSheetScaffoldState;

    .line 280
    nop

    .line 281
    nop

    .line 279
    invoke-direct {v4, p0, p1}, Landroidx/compose/material/BottomSheetScaffoldState;-><init>(Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)V

    .line 641
    .end local v3    # "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetScaffoldState$2":I
    nop

    .line 642
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 643
    nop

    .line 640
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 639
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 278
    .end local v0    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    check-cast v4, Landroidx/compose/material/BottomSheetScaffoldState;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 277
    :cond_c
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 278
    return-object v4
.end method

.method public static final rememberBottomSheetState(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;
    .locals 9
    .param p0, "initialValue"    # Landroidx/compose/material/BottomSheetValue;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomSheetState;"
        }
    .end annotation

    .line 236
    const v0, 0x6bc63b00

    const-string v1, "C(rememberBottomSheetState)P(2)236@8776L7,244@9018L210,237@8795L433:BottomSheetScaffold.kt#jmzs0o"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p5, v1

    if-eqz p5, :cond_1

    .line 235
    sget-object p5, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;

    move-object p2, p5

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 236
    const/4 p5, -0x1

    const-string/jumbo v2, "androidx.compose.material.rememberBottomSheetState (BottomSheetScaffold.kt:235)"

    invoke-static {v0, p4, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 237
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p5

    check-cast p5, Landroidx/compose/runtime/CompositionLocal;

    .local p5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v2, 0x0

    .line 626
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p3, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 237
    .end local v0    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    .end local p5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p5, v3

    check-cast p5, Landroidx/compose/ui/unit/Density;

    .line 239
    .local p5, "density":Landroidx/compose/ui/unit/Density;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 240
    sget-object v0, Landroidx/compose/material/BottomSheetState;->Companion:Landroidx/compose/material/BottomSheetState$Companion;

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 240
    invoke-virtual {v0, p1, p2, p5}, Landroidx/compose/material/BottomSheetState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .line 245
    const v0, -0x7237167e

    const-string v4, "CC(remember):BottomSheetScaffold.kt#9igjgp"

    invoke-static {p3, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, p4, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v1, :cond_3

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    and-int/lit8 v0, p4, 0x6

    if-ne v0, v1, :cond_5

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    :goto_0
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v6, 0x100

    if-le v1, v6, :cond_6

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    and-int/lit16 v1, p4, 0x180

    if-ne v1, v6, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    or-int/2addr v0, v4

    .local v0, "invalid$iv":Z
    move-object v1, p3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 627
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 628
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_9

    goto :goto_1

    .line 632
    :cond_9
    move-object v8, v5

    goto :goto_2

    .line 629
    :cond_a
    :goto_1
    const/4 v7, 0x0

    .line 245
    .local v7, "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetState$2":I
    new-instance v8, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2$1;

    invoke-direct {v8, p0, p5, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2$1;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 629
    .end local v7    # "$i$a$-cache-BottomSheetScaffoldKt$rememberBottomSheetState$2":I
    nop

    .line 630
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 631
    nop

    .line 628
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 627
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 245
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 238
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/material/BottomSheetState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 236
    :cond_b
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 238
    return-object p3
.end method
