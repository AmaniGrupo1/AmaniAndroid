.class public final Landroidx/compose/material/BackdropScaffoldKt;
.super Ljava/lang/Object;
.source "BackdropScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 9 Composer.kt\nandroidx/compose/runtime/Updater\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,732:1\n1223#2,6:733\n1223#2,6:740\n1223#2,6:747\n1223#2,6:756\n1223#2,6:763\n1223#2,6:769\n1223#2,6:813\n1223#2,6:819\n1223#2,6:865\n1223#2,6:871\n1223#2,6:921\n77#3:739\n77#3:746\n77#3:753\n77#3:755\n77#3:775\n1#4:754\n696#5:762\n71#6:776\n67#6,7:777\n74#6:812\n71#6:825\n68#6,6:826\n74#6:860\n78#6:864\n71#6:877\n68#6,6:878\n74#6:912\n78#6:916\n78#6:920\n78#7,6:784\n85#7,4:799\n89#7,2:809\n78#7,6:832\n85#7,4:847\n89#7,2:857\n93#7:863\n78#7,6:884\n85#7,4:899\n89#7,2:909\n93#7:915\n93#7:919\n368#8,9:790\n377#8:811\n368#8,9:838\n377#8:859\n378#8,2:861\n368#8,9:890\n377#8:911\n378#8,2:913\n378#8,2:917\n4032#9,6:803\n4032#9,6:851\n4032#9,6:903\n81#10:927\n81#10:928\n148#11:929\n148#11:930\n148#11:931\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n*L\n280#1:733,6\n293#1:740,6\n389#1:747,6\n409#1:756,6\n525#1:763,6\n533#1:769,6\n560#1:813,6\n567#1:819,6\n578#1:865,6\n585#1:871,6\n603#1:921,6\n282#1:739\n388#1:746\n393#1:753\n394#1:755\n555#1:775\n519#1:762\n557#1:776\n557#1:777,7\n557#1:812\n558#1:825\n558#1:826,6\n558#1:860\n558#1:864\n575#1:877\n575#1:878,6\n575#1:912\n575#1:916\n557#1:920\n557#1:784,6\n557#1:799,4\n557#1:809,2\n558#1:832,6\n558#1:847,4\n558#1:857,2\n558#1:863\n575#1:884,6\n575#1:899,4\n575#1:909,2\n575#1:915\n557#1:919\n557#1:790,9\n557#1:811\n558#1:838,9\n558#1:859\n558#1:861,2\n575#1:890,9\n575#1:911\n575#1:913,2\n557#1:917,2\n557#1:803,6\n558#1:851,6\n575#1:903,6\n520#1:927\n552#1:928\n674#1:929\n675#1:930\n676#1:931\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u001a;\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0011\u0010\t\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000b2\u0011\u0010\u000c\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000bH\u0003\u00a2\u0006\u0002\u0010\r\u001a\u00f2\u0001\u0010\u000e\u001a\u00020\u00062\u0011\u0010\t\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000b2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000b2\u0011\u0010\u0010\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0019\u0008\u0002\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00060\u0016\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u001f2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00012\u0008\u0008\u0002\u0010$\u001a\u00020\u001f2\u0008\u0008\u0002\u0010%\u001a\u00020\u001f2\u0008\u0008\u0002\u0010&\u001a\u00020\u001fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001aH\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020,2\u000e\u0008\u0002\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0014\u0008\u0002\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00190\u00162\u0008\u0008\u0002\u00101\u001a\u00020\u0017H\u0007\u001a[\u00102\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0002\u0008\u000b2\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050\u00162\u001d\u00106\u001a\u0019\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u000607\u00a2\u0006\u0002\u0008\u000bH\u0003\u00a2\u0006\u0002\u00108\u001a\u001c\u00109\u001a\u00020:2\n\u0010;\u001a\u0006\u0012\u0002\u0008\u00030<2\u0006\u0010=\u001a\u00020>H\u0000\u001a0\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u001f2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010B\u001a\u00020\u0019H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\u001aE\u0010E\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u00082\u000e\u0008\u0002\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0014\u0008\u0002\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00190\u00162\u0008\u0008\u0002\u00101\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0010G\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006H\u00b2\u0006\n\u0010I\u001a\u00020/X\u008a\u0084\u0002\u00b2\u0006\n\u0010J\u001a\u00020/X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSlideOffset",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "PositionalThreshold",
        "VelocityThreshold",
        "BackLayerTransition",
        "",
        "target",
        "Landroidx/compose/material/BackdropValue;",
        "appBar",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "BackdropScaffold",
        "backLayerContent",
        "frontLayerContent",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scaffoldState",
        "Landroidx/compose/material/BackdropScaffoldState;",
        "snackbarHost",
        "Lkotlin/Function1;",
        "Landroidx/compose/material/SnackbarHostState;",
        "gesturesEnabled",
        "",
        "peekHeight",
        "headerHeight",
        "persistentAppBar",
        "stickyFrontLayer",
        "backLayerBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "backLayerContentColor",
        "frontLayerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "frontLayerElevation",
        "frontLayerBackgroundColor",
        "frontLayerContentColor",
        "frontLayerScrimColor",
        "BackdropScaffold-0hNv9B8",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/functions/Function3;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLandroidx/compose/runtime/Composer;III)V",
        "BackdropScaffoldState",
        "initialValue",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "confirmValueChange",
        "snackbarHostState",
        "BackdropStack",
        "backLayer",
        "calculateBackLayerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "frontLayer",
        "Lkotlin/Function2;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V",
        "ConsumeSwipeNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "state",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "Scrim",
        "color",
        "onDismiss",
        "visible",
        "Scrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "rememberBackdropScaffoldState",
        "confirmStateChange",
        "(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;",
        "material_release",
        "alpha",
        "animationProgress"
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
.field private static final AnimationSlideOffset:F

.field private static final PositionalThreshold:F

.field private static final VelocityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 674
    const/16 v0, 0x14

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 929
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 674
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    .line 675
    const/16 v0, 0x7d

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 930
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 675
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BackdropScaffoldKt;->VelocityThreshold:F

    .line 676
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 931
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 676
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/BackdropScaffoldKt;->PositionalThreshold:F

    return-void
.end method

.method private static final BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 61
    .param p0, "target"    # Landroidx/compose/material/BackdropValue;
    .param p1, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, -0x38aeaa60    # -53589.625f

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BackLayerTransition)P(2)551@22995L112,*554@23157L7,556@23203L1485:BackdropScaffold.kt#jmzs0o"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_1

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v3, 0x30

    if-nez v6, :cond_3

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_5

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_2

    :cond_4
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    move v13, v5

    .end local v5    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit16 v5, v13, 0x93

    const/16 v6, 0x92

    if-ne v5, v6, :cond_7

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 594
    :cond_6
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v25, v10

    move/from16 v27, v13

    goto/16 :goto_16

    .line 549
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.BackLayerTransition (BackdropScaffold.kt:548)"

    invoke-static {v4, v13, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 553
    :cond_8
    sget-object v4, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    if-ne v0, v4, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/high16 v4, 0x40000000    # 2.0f

    :goto_4
    move v5, v4

    new-instance v14, Landroidx/compose/animation/core/TweenSpec;

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v14

    check-cast v6, Landroidx/compose/animation/core/AnimationSpec;

    .line 552
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x30

    const/16 v12, 0x1c

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 555
    .local v4, "animationProgress$delegate":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/CompositionLocal;

    .local v5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .line 775
    .local v7, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v9, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 555
    .end local v5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$getCurrent":I
    move-object v5, v8

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 754
    .local v5, "$this$BackLayerTransition_u24lambda_u2411":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 555
    .local v6, "$i$a$-with-BackdropScaffoldKt$BackLayerTransition$animationSlideOffset$1":I
    sget v7, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    invoke-interface {v5, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    .line 557
    .end local v6    # "$i$a$-with-BackdropScaffoldKt$BackLayerTransition$animationSlideOffset$1":I
    .local v5, "animationSlideOffset":F
    const/4 v6, 0x0

    move v7, v6

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .line 776
    .local v8, "$i$f$Box":I
    const v9, 0x2bb5b5d7

    const-string v11, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v10, v9, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 777
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 778
    .local v12, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v14

    .line 779
    .local v14, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v15, 0x0

    .line 782
    .local v15, "propagateMinConstraints$iv":Z
    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    .local v9, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v7, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 783
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    .line 784
    .local v17, "$i$f$Layout":I
    const v6, -0x4ee9b9da

    move/from16 v19, v7

    .end local v7    # "$changed$iv":I
    .local v19, "$changed$iv":I
    const-string v7, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v10, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 785
    const/4 v6, 0x0

    invoke-static {v10, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v21

    .line 786
    .local v21, "compositeKeyHash$iv$iv":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 787
    .local v6, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v22, v8

    .end local v8    # "$i$f$Box":I
    .local v22, "$i$f$Box":I
    invoke-static {v10, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 789
    .local v8, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v23

    move-object/from16 v24, v12

    .end local v12    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v24, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v12, v16, 0x6

    and-int/lit16 v12, v12, 0x380

    or-int/lit8 v12, v12, 0x6

    .line 788
    move-object/from16 v25, v23

    .local v12, "$changed$iv$iv$iv":I
    .local v25, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v23, 0x0

    .line 790
    .local v23, "$i$f$ReusableComposeNode":I
    move/from16 v26, v12

    .end local v12    # "$changed$iv$iv$iv":I
    .local v26, "$changed$iv$iv$iv":I
    const v12, -0x2942ffcf

    move/from16 v27, v13

    .end local v13    # "$dirty":I
    .local v27, "$dirty":I
    const-string v13, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v10, v12, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 791
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 792
    :cond_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 793
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 794
    move-object/from16 v12, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 796
    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_b
    move-object/from16 v12, v25

    .end local v25    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 798
    :goto_5
    move-object/from16 v25, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .local v10, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 799
    .local v29, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v31, v12

    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v31, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v9, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 800
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v6, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 802
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 803
    .local v30, "$i$f$set-impl":I
    move-object/from16 v32, v10

    .local v32, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 804
    .local v33, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v34

    if-nez v34, :cond_d

    move-object/from16 v34, v6

    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v34, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v35, v9

    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v35, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v9, v32

    goto :goto_7

    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_d
    move-object/from16 v34, v6

    move-object/from16 v35, v9

    .line 805
    .end local v6    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v9, v32

    .end local v32    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 806
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 808
    :goto_7
    nop

    .line 803
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 808
    nop

    .line 809
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v10, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 810
    nop

    .line 798
    .end local v10    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 811
    shr-int/lit8 v6, v26, 0x6

    and-int/lit8 v6, v6, 0xe

    .local v6, "$changed$iv":I
    move-object/from16 v9, v25

    .local v9, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 812
    .local v10, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v12, -0x7ff519f7    # -1.000876E-39f

    move/from16 v29, v6

    .end local v6    # "$changed$iv":I
    .local v29, "$changed$iv":I
    const-string v6, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v9, v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v30, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v32, v19, 0x6

    and-int/lit8 v32, v32, 0x70

    or-int/lit8 v32, v32, 0x6

    .local v32, "$changed":I
    check-cast v30, Landroidx/compose/foundation/layout/BoxScope;

    .local v30, "$this$BackLayerTransition_u24lambda_u2418":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v33, v9

    .local v33, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v36, 0x0

    .line 558
    .local v36, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1":I
    const v12, -0x447157ee

    move-object/from16 v38, v8

    .end local v8    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v38, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const-string v8, "C559@23267L351,566@23650L218,557@23217L694,577@24032L353,584@24417L221,574@23920L762:BackdropScaffold.kt#jmzs0o"

    move-object/from16 v39, v9

    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    .local v39, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v9, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 559
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 560
    const v12, -0x1afb6409

    move/from16 v33, v10

    .end local v10    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v33, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const-string v10, "CC(remember):BackdropScaffold.kt#9igjgp"

    invoke-static {v9, v12, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    .local v12, "invalid$iv":Z
    move-object/from16 v40, v9

    .local v40, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v41, 0x0

    .line 813
    .local v41, "$i$f$cache":I
    move/from16 v42, v12

    .end local v12    # "invalid$iv":Z
    .local v42, "invalid$iv":Z
    invoke-interface/range {v40 .. v40}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v43, 0x0

    .line 814
    .local v43, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v42, :cond_f

    sget-object v44, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v45, v14

    .end local v14    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v45, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_e

    goto :goto_8

    .line 818
    :cond_e
    move-object/from16 v44, v12

    move-object/from16 v14, v40

    goto :goto_9

    .line 814
    .end local v45    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v14    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :cond_f
    move-object/from16 v45, v14

    .line 815
    .end local v14    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v45    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :goto_8
    const/4 v14, 0x0

    .line 560
    .local v14, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$1":I
    move-object/from16 v44, v12

    .end local v12    # "it$iv":Ljava/lang/Object;
    .local v44, "it$iv":Ljava/lang/Object;
    new-instance v12, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$1$1;

    invoke-direct {v12, v4}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 815
    .end local v14    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$1":I
    nop

    .line 816
    .local v12, "value$iv":Ljava/lang/Object;
    move-object/from16 v14, v40

    .end local v40    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 817
    nop

    .line 814
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 813
    .end local v43    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v44    # "it$iv":Ljava/lang/Object;
    nop

    .line 560
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v41    # "$i$f$cache":I
    .end local v42    # "invalid$iv":Z
    check-cast v12, Lkotlin/jvm/functions/Function3;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v8, v12}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 567
    const v12, -0x1afb34ae

    invoke-static {v9, v12, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    or-int/2addr v12, v14

    .local v12, "invalid$iv":Z
    move-object v14, v9

    .restart local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 819
    .local v40, "$i$f$cache":I
    move/from16 v41, v12

    .end local v12    # "invalid$iv":Z
    .local v41, "invalid$iv":Z
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v42, 0x0

    .line 820
    .local v42, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v41, :cond_11

    sget-object v43, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v44, v15

    .end local v15    # "propagateMinConstraints$iv":Z
    .local v44, "propagateMinConstraints$iv":Z
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_10

    goto :goto_a

    .line 824
    :cond_10
    move-object/from16 v43, v12

    goto :goto_b

    .line 820
    .end local v44    # "propagateMinConstraints$iv":Z
    .restart local v15    # "propagateMinConstraints$iv":Z
    :cond_11
    move/from16 v44, v15

    .line 821
    .end local v15    # "propagateMinConstraints$iv":Z
    .restart local v44    # "propagateMinConstraints$iv":Z
    :goto_a
    const/4 v15, 0x0

    .line 567
    .local v15, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$2":I
    move-object/from16 v43, v12

    .end local v12    # "it$iv":Ljava/lang/Object;
    .local v43, "it$iv":Ljava/lang/Object;
    new-instance v12, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$2$1;

    invoke-direct {v12, v5, v4}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$2$1;-><init>(FLandroidx/compose/runtime/State;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 821
    .end local v15    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$2":I
    nop

    .line 822
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 823
    nop

    .line 820
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 819
    .end local v42    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v43    # "it$iv":Ljava/lang/Object;
    nop

    .line 567
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v40    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v8, v12}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 558
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v8, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v12, "$changed$iv":I
    const/4 v14, 0x0

    .line 825
    .local v14, "$i$f$Box":I
    const v15, 0x2bb5b5d7

    invoke-static {v9, v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 826
    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v15

    .line 827
    .local v15, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move/from16 v40, v12

    .end local v12    # "$changed$iv":I
    .local v40, "$changed$iv":I
    const/4 v12, 0x0

    .line 830
    .local v12, "propagateMinConstraints$iv":Z
    move/from16 v41, v14

    .end local v14    # "$i$f$Box":I
    .local v41, "$i$f$Box":I
    invoke-static {v15, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v42, v40, 0x3

    and-int/lit8 v42, v42, 0x70

    .line 831
    nop

    .local v42, "$changed$iv$iv":I
    const/16 v43, 0x0

    .line 832
    .local v43, "$i$f$Layout":I
    move/from16 v46, v12

    const v12, -0x4ee9b9da

    .end local v12    # "propagateMinConstraints$iv":Z
    .local v46, "propagateMinConstraints$iv":Z
    invoke-static {v9, v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 833
    const/4 v12, 0x0

    invoke-static {v9, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v47

    .line 834
    .local v47, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v12

    .line 835
    .local v12, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v48, v15

    .end local v15    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v48, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v9, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 837
    .local v15, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v49, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v49 .. v49}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v49

    move-object/from16 v50, v8

    .end local v8    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v50, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v8, v42, 0x6

    and-int/lit16 v8, v8, 0x380

    or-int/lit8 v8, v8, 0x6

    .line 836
    move-object/from16 v51, v49

    .local v8, "$changed$iv$iv$iv":I
    .local v51, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v49, 0x0

    .line 838
    .local v49, "$i$f$ReusableComposeNode":I
    move/from16 v52, v8

    const v8, -0x2942ffcf

    .end local v8    # "$changed$iv$iv$iv":I
    .local v52, "$changed$iv$iv$iv":I
    invoke-static {v9, v8, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 839
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 840
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 841
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 842
    move-object/from16 v8, v51

    .end local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    .line 844
    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_13
    move-object/from16 v8, v51

    .end local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 846
    :goto_c
    move-object/from16 v51, v8

    .end local v8    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .local v8, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v53, 0x0

    .line 847
    .local v53, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v54, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v54 .. v54}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v8, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 848
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v8, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 850
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v54, 0x0

    .line 851
    .local v54, "$i$f$set-impl":I
    move-object/from16 v55, v8

    .local v55, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v56, 0x0

    .line 852
    .local v56, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v57

    if-nez v57, :cond_15

    move-object/from16 v57, v12

    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v57, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v58, v14

    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v58, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_d

    :cond_14
    move-object/from16 v14, v55

    goto :goto_e

    .end local v57    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v58    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_15
    move-object/from16 v57, v12

    move-object/from16 v58, v14

    .line 853
    .end local v12    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v57    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v58    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_d
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v14, v55

    .end local v55    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v14, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 854
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 856
    :goto_e
    nop

    .line 851
    .end local v14    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v56    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 856
    nop

    .line 857
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v54    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v8, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 858
    nop

    .line 846
    .end local v8    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v53    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 859
    shr-int/lit8 v0, v52, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v8, v9

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 860
    .local v12, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v14, -0x7ff519f7    # -1.000876E-39f

    invoke-static {v8, v14, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v14, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v53, v40, 0x6

    and-int/lit8 v53, v53, 0x70

    or-int/lit8 v53, v53, 0x6

    .local v53, "$changed":I
    check-cast v14, Landroidx/compose/foundation/layout/BoxScope;

    .local v14, "$this$BackLayerTransition_u24lambda_u2418_u24lambda_u2414":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v54, v8

    .local v54, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v55, 0x0

    .line 573
    .local v55, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$3":I
    move/from16 v56, v0

    .end local v0    # "$changed$iv":I
    .local v56, "$changed$iv":I
    const v0, 0x2fa84504

    move-object/from16 v59, v8

    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v59, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v8, "C572@23893L8:BackdropScaffold.kt#jmzs0o"

    move/from16 v60, v12

    move-object/from16 v12, v54

    .end local v54    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v60, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v12, v0, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v27, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v12, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 574
    nop

    .line 860
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v14    # "$this$BackLayerTransition_u24lambda_u2418_u24lambda_u2414":Landroidx/compose/foundation/layout/BoxScope;
    .end local v53    # "$changed":I
    .end local v55    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$3":I
    invoke-static/range {v59 .. v59}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 859
    .end local v56    # "$changed$iv":I
    .end local v59    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v60    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 861
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 838
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 862
    nop

    .line 832
    .end local v49    # "$i$f$ReusableComposeNode":I
    .end local v51    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v52    # "$changed$iv$iv$iv":I
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 863
    nop

    .line 825
    .end local v15    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v42    # "$changed$iv$iv":I
    .end local v43    # "$i$f$Layout":I
    .end local v47    # "compositeKeyHash$iv$iv":I
    .end local v57    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 864
    nop

    .line 577
    .end local v40    # "$changed$iv":I
    .end local v41    # "$i$f$Box":I
    .end local v46    # "propagateMinConstraints$iv":Z
    .end local v48    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v50    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v58    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 578
    const v8, -0x1afb0467

    invoke-static {v9, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "invalid$iv":Z
    move-object v12, v9

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 865
    .local v14, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v40, 0x0

    .line 866
    .local v40, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_17

    sget-object v41, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v42, v8

    .end local v8    # "invalid$iv":Z
    .local v42, "invalid$iv":Z
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v15, v8, :cond_16

    goto :goto_f

    .line 870
    :cond_16
    move-object v8, v15

    goto :goto_10

    .line 866
    .end local v42    # "invalid$iv":Z
    .restart local v8    # "invalid$iv":Z
    :cond_17
    move/from16 v42, v8

    .line 867
    .end local v8    # "invalid$iv":Z
    .restart local v42    # "invalid$iv":Z
    :goto_f
    const/4 v8, 0x0

    .line 578
    .local v8, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$4":I
    move/from16 v41, v8

    .end local v8    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$4":I
    .local v41, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$4":I
    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$4$1;

    invoke-direct {v8, v4}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$4$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 867
    .end local v41    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$4":I
    nop

    .line 868
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 869
    nop

    .line 866
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_10
    nop

    .line 865
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v40    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 578
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    .end local v42    # "invalid$iv":Z
    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v8}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 585
    const v8, -0x1afad4cb

    invoke-static {v9, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v10

    or-int/2addr v8, v10

    .local v8, "invalid$iv":Z
    move-object v10, v9

    .local v10, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 871
    .local v12, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 872
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_19

    sget-object v40, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v41, v8

    .end local v8    # "invalid$iv":Z
    .local v41, "invalid$iv":Z
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_18

    goto :goto_11

    .line 876
    :cond_18
    move-object v8, v14

    goto :goto_12

    .line 872
    .end local v41    # "invalid$iv":Z
    .restart local v8    # "invalid$iv":Z
    :cond_19
    move/from16 v41, v8

    .line 873
    .end local v8    # "invalid$iv":Z
    .restart local v41    # "invalid$iv":Z
    :goto_11
    const/4 v8, 0x0

    .line 585
    .local v8, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$5":I
    move/from16 v40, v8

    .end local v8    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$5":I
    .local v40, "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$5":I
    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$5$1;

    invoke-direct {v8, v5, v4}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$1$5$1;-><init>(FLandroidx/compose/runtime/State;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 873
    .end local v40    # "$i$a$-cache-BackdropScaffoldKt$BackLayerTransition$1$5":I
    nop

    .line 874
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 875
    nop

    .line 872
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_12
    nop

    .line 871
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 585
    .end local v10    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    .end local v41    # "invalid$iv":Z
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v0, v8}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 575
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v8, "$changed$iv":I
    const/4 v10, 0x0

    .line 877
    .local v10, "$i$f$Box":I
    const v15, 0x2bb5b5d7

    invoke-static {v9, v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 878
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    .line 879
    .local v11, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v12, 0x0

    .line 882
    .local v12, "propagateMinConstraints$iv":Z
    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    .local v14, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v15, v8, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 883
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v40, 0x0

    .line 884
    .local v40, "$i$f$Layout":I
    move-object/from16 p3, v4

    const v4, -0x4ee9b9da

    .end local v4    # "animationProgress$delegate":Landroidx/compose/runtime/State;
    .local p3, "animationProgress$delegate":Landroidx/compose/runtime/State;
    invoke-static {v9, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 885
    const/4 v4, 0x0

    invoke-static {v9, v4}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v4

    .line 886
    .local v4, "compositeKeyHash$iv$iv":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 887
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v18, v4

    .end local v4    # "compositeKeyHash$iv$iv":I
    .local v18, "compositeKeyHash$iv$iv":I
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 889
    .local v4, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v20

    move-object/from16 v41, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v41, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v15, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 888
    move-object/from16 v42, v20

    .local v0, "$changed$iv$iv$iv":I
    .local v42, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v20, 0x0

    .line 890
    .local v20, "$i$f$ReusableComposeNode":I
    move/from16 v43, v0

    const v0, -0x2942ffcf

    .end local v0    # "$changed$iv$iv$iv":I
    .local v43, "$changed$iv$iv$iv":I
    invoke-static {v9, v0, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 891
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 892
    :cond_1a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 893
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 894
    move-object/from16 v0, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 896
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1b
    move-object/from16 v0, v42

    .end local v42    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 898
    :goto_13
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .local v13, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v28, 0x0

    .line 899
    .local v28, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v42, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v46, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v46, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v13, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 900
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v42, 0x0

    .line 903
    .local v42, "$i$f$set-impl":I
    move-object/from16 v47, v13

    .local v47, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v48, 0x0

    .line 904
    .local v48, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v49

    if-nez v49, :cond_1d

    move/from16 v49, v5

    .end local v5    # "animationSlideOffset":F
    .local v49, "animationSlideOffset":F
    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v50, v7

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v50, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_14

    :cond_1c
    move-object/from16 v7, v47

    goto :goto_15

    .end local v49    # "animationSlideOffset":F
    .end local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "animationSlideOffset":F
    .restart local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_1d
    move/from16 v49, v5

    move-object/from16 v50, v7

    .line 905
    .end local v5    # "animationSlideOffset":F
    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v49    # "animationSlideOffset":F
    .restart local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v7, v47

    .end local v47    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 906
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 908
    :goto_15
    nop

    .line 903
    .end local v7    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v48    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 908
    nop

    .line 909
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v42    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v13, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 910
    nop

    .line 898
    .end local v13    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 911
    shr-int/lit8 v0, v43, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v5, v9

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 912
    .local v7, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v13, -0x7ff519f7    # -1.000876E-39f

    invoke-static {v5, v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v13, v8, 0x6

    and-int/lit8 v13, v13, 0x70

    or-int/lit8 v13, v13, 0x6

    .local v13, "$changed":I
    check-cast v6, Landroidx/compose/foundation/layout/BoxScope;

    .local v6, "$this$BackLayerTransition_u24lambda_u2418_u24lambda_u2417":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v28, v5

    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v37, 0x0

    .line 591
    .local v37, "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$6":I
    move/from16 v42, v0

    .end local v0    # "$changed$iv":I
    .local v42, "$changed$iv":I
    const v0, 0x2fb3ece3

    move-object/from16 v47, v4

    .end local v4    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v47, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const-string v4, "C590@24663L9:BackdropScaffold.kt#jmzs0o"

    move-object/from16 v48, v5

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    .local v48, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v5, v0, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v0, v27, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 592
    nop

    .line 912
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$this$BackLayerTransition_u24lambda_u2418_u24lambda_u2417":Landroidx/compose/foundation/layout/BoxScope;
    .end local v13    # "$changed":I
    .end local v37    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1$6":I
    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 911
    .end local v7    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v42    # "$changed$iv":I
    .end local v48    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 913
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 890
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 914
    nop

    .line 884
    .end local v20    # "$i$f$ReusableComposeNode":I
    .end local v43    # "$changed$iv$iv$iv":I
    .end local v46    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 915
    nop

    .line 877
    .end local v15    # "$changed$iv$iv":I
    .end local v18    # "compositeKeyHash$iv$iv":I
    .end local v40    # "$i$f$Layout":I
    .end local v47    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v50    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 916
    nop

    .line 558
    .end local v8    # "$changed$iv":I
    .end local v10    # "$i$f$Box":I
    .end local v11    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v12    # "propagateMinConstraints$iv":Z
    .end local v14    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 593
    nop

    .line 812
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v30    # "$this$BackLayerTransition_u24lambda_u2418":Landroidx/compose/foundation/layout/BoxScope;
    .end local v32    # "$changed":I
    .end local v36    # "$i$a$-Box-BackdropScaffoldKt$BackLayerTransition$1":I
    invoke-static/range {v39 .. v39}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 811
    .end local v29    # "$changed$iv":I
    .end local v33    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v39    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 917
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 790
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 918
    nop

    .line 784
    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v26    # "$changed$iv$iv$iv":I
    .end local v31    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 919
    nop

    .line 776
    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    .end local v21    # "compositeKeyHash$iv$iv":I
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v38    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 920
    nop

    .end local v19    # "$changed$iv":I
    .end local v22    # "$i$f$Box":I
    .end local v24    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v44    # "propagateMinConstraints$iv":Z
    .end local v45    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 594
    .end local v49    # "animationSlideOffset":F
    .end local p3    # "animationProgress$delegate":Landroidx/compose/runtime/State;
    :cond_1e
    :goto_16
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v4, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;-><init>(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_17

    :cond_1f
    move-object/from16 v5, p0

    :goto_17
    return-void
.end method

.method private static final BackLayerTransition$lambda$10(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$animationProgress$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 928
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 552
    return v0
.end method

.method public static final BackdropScaffold-0hNv9B8(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/functions/Function3;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLandroidx/compose/runtime/Composer;III)V
    .locals 41
    .param p0, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p1, "backLayerContent"    # Lkotlin/jvm/functions/Function2;
    .param p2, "frontLayerContent"    # Lkotlin/jvm/functions/Function2;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "scaffoldState"    # Landroidx/compose/material/BackdropScaffoldState;
    .param p5, "snackbarHost"    # Lkotlin/jvm/functions/Function3;
    .param p6, "gesturesEnabled"    # Z
    .param p7, "peekHeight"    # F
    .param p8, "headerHeight"    # F
    .param p9, "persistentAppBar"    # Z
    .param p10, "stickyFrontLayer"    # Z
    .param p11, "backLayerBackgroundColor"    # J
    .param p13, "backLayerContentColor"    # J
    .param p15, "frontLayerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p16, "frontLayerElevation"    # F
    .param p17, "frontLayerBackgroundColor"    # J
    .param p19, "frontLayerContentColor"    # J
    .param p21, "frontLayerScrimColor"    # J
    .param p23, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p24, "$changed"    # I
    .param p25, "$changed1"    # I
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZFFZZJJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 386
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p24

    move/from16 v3, p25

    move/from16 v4, p26

    const v5, 0x6c9a1c3

    move-object/from16 v6, p23

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p23    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(BackdropScaffold)P(!1,2,5,12,15,16,10,13:c#ui.unit.Dp,11:c#ui.unit.Dp,14,17,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9,7:c#ui.unit.Dp,4:c#ui.graphics.Color,6:c#ui.graphics.Color,8:c#ui.graphics.Color)371@15931L40,378@16340L6,379@16391L41,380@16488L15,382@16634L6,383@16686L42,384@16789L20,387@16929L7,388@16952L47,388@16941L58,*392@17042L7,393@17116L7,395@17182L315,408@17568L100,418@17848L3899,415@17746L4001:BackdropScaffold.kt#jmzs0o"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p24

    .local v5, "$dirty":I
    move/from16 v6, p25

    .local v6, "$dirty1":I
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v5, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v0, 0x6

    if-nez v7, :cond_2

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v5, v7

    :cond_2
    :goto_1
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_5

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v5, v5, 0x180

    move-object/from16 v15, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_8

    move-object/from16 v15, p2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    goto :goto_5

    :cond_8
    move-object/from16 v15, p2

    :goto_5
    and-int/lit8 v7, v4, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v7, :cond_9

    or-int/lit16 v5, v5, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v18, v17

    goto :goto_6

    :cond_a
    move/from16 v18, v16

    :goto_6
    or-int v5, v5, v18

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit16 v9, v0, 0x6000

    const/16 v19, 0x2000

    if-nez v9, :cond_e

    and-int/lit8 v9, v4, 0x10

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v9, p4

    :cond_d
    move/from16 v21, v19

    :goto_8
    or-int v5, v5, v21

    goto :goto_9

    :cond_e
    move-object/from16 v9, p4

    :goto_9
    and-int/lit8 v21, v4, 0x20

    const/high16 v22, 0x20000

    const/high16 v23, 0x10000

    const/high16 v24, 0x30000

    if-eqz v21, :cond_f

    or-int v5, v5, v24

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v24, v0, v24

    if-nez v24, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move/from16 v25, v22

    goto :goto_a

    :cond_10
    move/from16 v25, v23

    :goto_a
    or-int v5, v5, v25

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    and-int/lit8 v25, v4, 0x40

    const/high16 v37, 0x180000

    if-eqz v25, :cond_12

    or-int v5, v5, v37

    move/from16 v13, p6

    goto :goto_d

    :cond_12
    and-int v26, v0, v37

    if-nez v26, :cond_14

    move/from16 v13, p6

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v5, v5, v27

    goto :goto_d

    :cond_14
    move/from16 v13, p6

    :goto_d
    const/high16 v27, 0xc00000

    and-int v27, v0, v27

    if-nez v27, :cond_17

    and-int/lit16 v11, v4, 0x80

    if-nez v11, :cond_15

    move/from16 v11, p7

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_15
    move/from16 v11, p7

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v5, v5, v28

    goto :goto_f

    :cond_17
    move/from16 v11, p7

    :goto_f
    const/high16 v28, 0x6000000

    and-int v28, v0, v28

    if-nez v28, :cond_1a

    and-int/lit16 v12, v4, 0x100

    if-nez v12, :cond_18

    move/from16 v12, p8

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_18
    move/from16 v12, p8

    :cond_19
    const/high16 v29, 0x2000000

    :goto_10
    or-int v5, v5, v29

    goto :goto_11

    :cond_1a
    move/from16 v12, p8

    :goto_11
    move/from16 v29, v7

    and-int/lit16 v7, v4, 0x200

    const/high16 v30, 0x30000000

    if-eqz v7, :cond_1b

    or-int v5, v5, v30

    move/from16 v30, v7

    move/from16 v7, p9

    goto :goto_13

    :cond_1b
    and-int v30, v0, v30

    if-nez v30, :cond_1d

    move/from16 v30, v7

    move/from16 v7, p9

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v31, 0x10000000

    :goto_12
    or-int v5, v5, v31

    goto :goto_13

    :cond_1d
    move/from16 v30, v7

    move/from16 v7, p9

    :goto_13
    and-int/lit16 v7, v4, 0x400

    if-eqz v7, :cond_1e

    or-int/lit8 v6, v6, 0x6

    move/from16 v31, v7

    move/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v31, v3, 0x6

    if-nez v31, :cond_20

    move/from16 v31, v7

    move/from16 v7, p10

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v18, 0x4

    goto :goto_14

    :cond_1f
    const/16 v18, 0x2

    :goto_14
    or-int v6, v6, v18

    goto :goto_15

    :cond_20
    move/from16 v31, v7

    move/from16 v7, p10

    :goto_15
    and-int/lit8 v18, v3, 0x30

    if-nez v18, :cond_23

    and-int/lit16 v0, v4, 0x800

    if-nez v0, :cond_21

    move-wide/from16 v7, p11

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v27, 0x20

    goto :goto_16

    :cond_21
    move-wide/from16 v7, p11

    :cond_22
    const/16 v27, 0x10

    :goto_16
    or-int v6, v6, v27

    goto :goto_17

    :cond_23
    move-wide/from16 v7, p11

    :goto_17
    and-int/lit16 v0, v3, 0x180

    if-nez v0, :cond_26

    and-int/lit16 v0, v4, 0x1000

    if-nez v0, :cond_24

    move-wide/from16 v7, p13

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v24, 0x100

    goto :goto_18

    :cond_24
    move-wide/from16 v7, p13

    :cond_25
    const/16 v24, 0x80

    :goto_18
    or-int v6, v6, v24

    goto :goto_19

    :cond_26
    move-wide/from16 v7, p13

    :goto_19
    and-int/lit16 v0, v3, 0xc00

    if-nez v0, :cond_29

    and-int/lit16 v0, v4, 0x2000

    if-nez v0, :cond_27

    move-object/from16 v0, p15

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    move/from16 v16, v17

    goto :goto_1a

    :cond_27
    move-object/from16 v0, p15

    :cond_28
    :goto_1a
    or-int v6, v6, v16

    goto :goto_1b

    :cond_29
    move-object/from16 v0, p15

    :goto_1b
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_2c

    and-int/lit16 v0, v4, 0x4000

    if-nez v0, :cond_2a

    move/from16 v0, p16

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_2b

    const/16 v19, 0x4000

    goto :goto_1c

    :cond_2a
    move/from16 v0, p16

    :cond_2b
    :goto_1c
    or-int v6, v6, v19

    goto :goto_1d

    :cond_2c
    move/from16 v0, p16

    :goto_1d
    const/high16 v16, 0x30000

    and-int v16, v3, v16

    if-nez v16, :cond_2f

    const v16, 0x8000

    and-int v16, v4, v16

    if-nez v16, :cond_2d

    move-wide/from16 v7, p17

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_2e

    move/from16 v16, v22

    goto :goto_1e

    :cond_2d
    move-wide/from16 v7, p17

    :cond_2e
    move/from16 v16, v23

    :goto_1e
    or-int v6, v6, v16

    goto :goto_1f

    :cond_2f
    move-wide/from16 v7, p17

    :goto_1f
    and-int v16, v3, v37

    if-nez v16, :cond_32

    and-int v16, v4, v23

    if-nez v16, :cond_30

    move-wide/from16 v7, p19

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_31

    const/high16 v16, 0x100000

    goto :goto_20

    :cond_30
    move-wide/from16 v7, p19

    :cond_31
    const/high16 v16, 0x80000

    :goto_20
    or-int v6, v6, v16

    goto :goto_21

    :cond_32
    move-wide/from16 v7, p19

    :goto_21
    const/high16 v16, 0xc00000

    and-int v16, v3, v16

    if-nez v16, :cond_35

    and-int v16, v4, v22

    if-nez v16, :cond_33

    move-wide/from16 v7, p21

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_34

    const/high16 v16, 0x800000

    goto :goto_22

    :cond_33
    move-wide/from16 v7, p21

    :cond_34
    const/high16 v16, 0x400000

    :goto_22
    or-int v6, v6, v16

    goto :goto_23

    :cond_35
    move-wide/from16 v7, p21

    :goto_23
    move/from16 v16, v6

    .end local v6    # "$dirty1":I
    .local v16, "$dirty1":I
    const v6, 0x12492493

    and-int/2addr v6, v5

    const v0, 0x12492492

    if-ne v6, v0, :cond_37

    const v0, 0x492493

    and-int v0, v16, v0

    const v6, 0x492492

    if-ne v0, v6, :cond_37

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_24

    .line 511
    :cond_36
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move/from16 v17, p16

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move/from16 v27, v5

    move-wide/from16 v22, v7

    move-object v5, v9

    move-object/from16 v33, v10

    move v8, v11

    move v9, v12

    move v7, v13

    move-object v6, v14

    move/from16 v28, v16

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    goto/16 :goto_3b

    .line 386
    :cond_37
    :goto_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, p24, 0x1

    const v17, -0x1c00001

    const v18, -0xe001

    if-eqz v0, :cond_43

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_25

    .line 385
    :cond_38
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_39

    and-int v5, v5, v18

    :cond_39
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_3a

    and-int v5, v5, v17

    :cond_3a
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_3b

    const v0, -0xe000001

    and-int/2addr v5, v0

    :cond_3b
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_3c

    and-int/lit8 v16, v16, -0x71

    :cond_3c
    move/from16 v0, v16

    .end local v16    # "$dirty1":I
    .local v0, "$dirty1":I
    and-int/lit16 v6, v4, 0x1000

    if-eqz v6, :cond_3d

    and-int/lit16 v0, v0, -0x381

    :cond_3d
    and-int/lit16 v6, v4, 0x2000

    if-eqz v6, :cond_3e

    and-int/lit16 v0, v0, -0x1c01

    :cond_3e
    and-int/lit16 v6, v4, 0x4000

    if-eqz v6, :cond_3f

    and-int v0, v0, v18

    :cond_3f
    const v6, 0x8000

    and-int/2addr v6, v4

    if-eqz v6, :cond_40

    const v6, -0x70001

    and-int/2addr v0, v6

    :cond_40
    and-int v6, v4, v23

    if-eqz v6, :cond_41

    const v6, -0x380001

    and-int/2addr v0, v6

    :cond_41
    and-int v6, v4, v22

    if-eqz v6, :cond_42

    and-int v0, v0, v17

    :cond_42
    move-object/from16 v16, p3

    move/from16 v20, p10

    move-object/from16 v24, p15

    move/from16 v29, p16

    move-wide/from16 v27, p19

    move v3, v0

    move-wide/from16 v34, v7

    move-object v6, v9

    move v9, v11

    move v11, v12

    move/from16 v21, v13

    move-object/from16 v36, v14

    move/from16 v12, p9

    move-wide/from16 v0, p11

    move-wide/from16 v7, p13

    move-wide/from16 v13, p17

    goto/16 :goto_34

    .line 386
    .end local v0    # "$dirty1":I
    .restart local v16    # "$dirty1":I
    :cond_43
    :goto_25
    if-eqz v29, :cond_44

    .line 371
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_26

    .line 386
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_44
    move-object/from16 v0, p3

    .line 371
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_26
    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_45

    .line 372
    sget-object v6, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    const/4 v11, 0x6

    const/16 v12, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p3, v0

    const/4 v0, 0x0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/BackdropScaffoldKt;->rememberBackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;

    move-result-object v6

    .end local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v6, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    and-int v5, v5, v18

    goto :goto_27

    .line 371
    .end local v6    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    :cond_45
    move-object/from16 p3, v0

    const/4 v0, 0x0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p3    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v6, p4

    .line 372
    .end local p4    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .restart local v6    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    :goto_27
    if-eqz v21, :cond_46

    sget-object v7, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    .end local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v7, "snackbarHost":Lkotlin/jvm/functions/Function3;
    goto :goto_28

    .end local v7    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :cond_46
    move-object v7, v14

    .end local p5    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .restart local v7    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_28
    if-eqz v25, :cond_47

    .line 374
    const/4 v8, 0x1

    .end local p6    # "gesturesEnabled":Z
    .local v8, "gesturesEnabled":Z
    goto :goto_29

    .line 372
    .end local v8    # "gesturesEnabled":Z
    .restart local p6    # "gesturesEnabled":Z
    :cond_47
    move v8, v13

    .line 374
    .end local p6    # "gesturesEnabled":Z
    .restart local v8    # "gesturesEnabled":Z
    :goto_29
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_48

    .line 375
    sget-object v9, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v9}, Landroidx/compose/material/BackdropScaffoldDefaults;->getPeekHeight-D9Ej5fM()F

    move-result v9

    .end local p7    # "peekHeight":F
    .local v9, "peekHeight":F
    and-int v5, v5, v17

    goto :goto_2a

    .line 374
    .end local v9    # "peekHeight":F
    .restart local p7    # "peekHeight":F
    :cond_48
    move/from16 v9, p7

    .line 375
    .end local p7    # "peekHeight":F
    .restart local v9    # "peekHeight":F
    :goto_2a
    and-int/lit16 v11, v4, 0x100

    if-eqz v11, :cond_49

    .line 376
    sget-object v11, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v11}, Landroidx/compose/material/BackdropScaffoldDefaults;->getHeaderHeight-D9Ej5fM()F

    move-result v11

    .end local p8    # "headerHeight":F
    .local v11, "headerHeight":F
    const v12, -0xe000001

    and-int/2addr v5, v12

    goto :goto_2b

    .line 375
    .end local v11    # "headerHeight":F
    .restart local p8    # "headerHeight":F
    :cond_49
    move/from16 v11, p8

    .line 376
    .end local p8    # "headerHeight":F
    .restart local v11    # "headerHeight":F
    :goto_2b
    if-eqz v30, :cond_4a

    .line 377
    const/4 v12, 0x1

    .end local p9    # "persistentAppBar":Z
    .local v12, "persistentAppBar":Z
    goto :goto_2c

    .line 376
    .end local v12    # "persistentAppBar":Z
    .restart local p9    # "persistentAppBar":Z
    :cond_4a
    move/from16 v12, p9

    .line 377
    .end local p9    # "persistentAppBar":Z
    .restart local v12    # "persistentAppBar":Z
    :goto_2c
    if-eqz v31, :cond_4b

    .line 378
    const/4 v13, 0x1

    .end local p10    # "stickyFrontLayer":Z
    .local v13, "stickyFrontLayer":Z
    goto :goto_2d

    .line 377
    .end local v13    # "stickyFrontLayer":Z
    .restart local p10    # "stickyFrontLayer":Z
    :cond_4b
    move/from16 v13, p10

    .line 378
    .end local p10    # "stickyFrontLayer":Z
    .restart local v13    # "stickyFrontLayer":Z
    :goto_2d
    and-int/lit16 v14, v4, 0x800

    const/4 v0, 0x6

    if-eqz v14, :cond_4c

    .line 379
    sget-object v14, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v14, v10, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v19

    .end local p11    # "backLayerBackgroundColor":J
    .local v19, "backLayerBackgroundColor":J
    and-int/lit8 v16, v16, -0x71

    move-wide/from16 v0, v19

    move/from16 v14, v16

    goto :goto_2e

    .line 378
    .end local v19    # "backLayerBackgroundColor":J
    .restart local p11    # "backLayerBackgroundColor":J
    :cond_4c
    move-wide/from16 v0, p11

    move/from16 v14, v16

    .line 379
    .end local v16    # "$dirty1":I
    .end local p11    # "backLayerBackgroundColor":J
    .local v0, "backLayerBackgroundColor":J
    .local v14, "$dirty1":I
    :goto_2e
    and-int/lit16 v3, v4, 0x1000

    if-eqz v3, :cond_4d

    .line 380
    shr-int/lit8 v3, v14, 0x3

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v10, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    .end local p13    # "backLayerContentColor":J
    .local v19, "backLayerContentColor":J
    and-int/lit16 v14, v14, -0x381

    goto :goto_2f

    .line 379
    .end local v19    # "backLayerContentColor":J
    .restart local p13    # "backLayerContentColor":J
    :cond_4d
    move-wide/from16 v19, p13

    .line 380
    .end local p13    # "backLayerContentColor":J
    .restart local v19    # "backLayerContentColor":J
    :goto_2f
    and-int/lit16 v3, v4, 0x2000

    if-eqz v3, :cond_4e

    .line 381
    sget-object v3, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move-wide/from16 v24, v0

    const/4 v0, 0x0

    .end local v0    # "backLayerBackgroundColor":J
    .local v24, "backLayerBackgroundColor":J
    invoke-virtual {v3, v10, v0}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    .end local p15    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v1, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit16 v14, v14, -0x1c01

    goto :goto_30

    .line 380
    .end local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v24    # "backLayerBackgroundColor":J
    .restart local v0    # "backLayerBackgroundColor":J
    .restart local p15    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_4e
    move-wide/from16 v24, v0

    .end local v0    # "backLayerBackgroundColor":J
    .restart local v24    # "backLayerBackgroundColor":J
    move-object/from16 v1, p15

    .line 381
    .end local p15    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_30
    and-int/lit16 v0, v4, 0x4000

    if-eqz v0, :cond_4f

    .line 382
    sget-object v0, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerElevation-D9Ej5fM()F

    move-result v0

    .end local p16    # "frontLayerElevation":F
    .local v0, "frontLayerElevation":F
    and-int v14, v14, v18

    goto :goto_31

    .line 381
    .end local v0    # "frontLayerElevation":F
    .restart local p16    # "frontLayerElevation":F
    :cond_4f
    move/from16 v0, p16

    .line 382
    .end local p16    # "frontLayerElevation":F
    .restart local v0    # "frontLayerElevation":F
    :goto_31
    const v3, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_50

    .line 383
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p5, v0

    const/4 v0, 0x6

    .end local v0    # "frontLayerElevation":F
    .local p5, "frontLayerElevation":F
    invoke-virtual {v3, v10, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v27

    .end local p17    # "frontLayerBackgroundColor":J
    .local v27, "frontLayerBackgroundColor":J
    const v0, -0x70001

    and-int/2addr v14, v0

    move-object/from16 p4, v1

    move-wide/from16 v0, v27

    goto :goto_32

    .line 382
    .end local v27    # "frontLayerBackgroundColor":J
    .end local p5    # "frontLayerElevation":F
    .restart local v0    # "frontLayerElevation":F
    .restart local p17    # "frontLayerBackgroundColor":J
    :cond_50
    move/from16 p5, v0

    .end local v0    # "frontLayerElevation":F
    .restart local p5    # "frontLayerElevation":F
    move-object/from16 p4, v1

    move-wide/from16 v0, p17

    .line 383
    .end local v1    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p17    # "frontLayerBackgroundColor":J
    .local v0, "frontLayerBackgroundColor":J
    .local p4, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_32
    and-int v3, v4, v23

    if-eqz v3, :cond_51

    .line 384
    shr-int/lit8 v3, v14, 0xf

    and-int/lit8 v3, v3, 0xe

    invoke-static {v0, v1, v10, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v27

    .end local p19    # "frontLayerContentColor":J
    .local v27, "frontLayerContentColor":J
    const v3, -0x380001

    and-int/2addr v14, v3

    goto :goto_33

    .line 383
    .end local v27    # "frontLayerContentColor":J
    .restart local p19    # "frontLayerContentColor":J
    :cond_51
    move-wide/from16 v27, p19

    .line 384
    .end local p19    # "frontLayerContentColor":J
    .restart local v27    # "frontLayerContentColor":J
    :goto_33
    and-int v3, v4, v22

    if-eqz v3, :cond_52

    .line 385
    sget-object v3, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move-wide/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "frontLayerBackgroundColor":J
    .local v21, "frontLayerBackgroundColor":J
    invoke-virtual {v3, v10, v0}, Landroidx/compose/material/BackdropScaffoldDefaults;->getFrontLayerScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v29

    .end local p21    # "frontLayerScrimColor":J
    .local v29, "frontLayerScrimColor":J
    and-int v0, v14, v17

    move-object/from16 v16, p3

    move v3, v0

    move-object/from16 v36, v7

    move-wide/from16 v0, v24

    move-wide/from16 v34, v29

    move-object/from16 v24, p4

    move/from16 v29, p5

    move-wide/from16 v39, v21

    move/from16 v21, v8

    move-wide/from16 v7, v19

    move/from16 v20, v13

    move-wide/from16 v13, v39

    .end local v14    # "$dirty1":I
    .local v0, "$dirty1":I
    goto :goto_34

    .line 384
    .end local v21    # "frontLayerBackgroundColor":J
    .end local v29    # "frontLayerScrimColor":J
    .local v0, "frontLayerBackgroundColor":J
    .restart local v14    # "$dirty1":I
    .restart local p21    # "frontLayerScrimColor":J
    :cond_52
    move-wide/from16 v21, v0

    .end local v0    # "frontLayerBackgroundColor":J
    .restart local v21    # "frontLayerBackgroundColor":J
    move-object/from16 v16, p3

    move/from16 v29, p5

    move-wide/from16 v34, p21

    move-object/from16 v36, v7

    move v3, v14

    move-wide/from16 v0, v24

    move-object/from16 v24, p4

    move-wide/from16 v39, v21

    move/from16 v21, v8

    move-wide/from16 v7, v19

    move/from16 v20, v13

    move-wide/from16 v13, v39

    .line 385
    .end local v8    # "gesturesEnabled":Z
    .end local v14    # "$dirty1":I
    .end local v19    # "backLayerContentColor":J
    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p4    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local p5    # "frontLayerElevation":F
    .end local p21    # "frontLayerScrimColor":J
    .local v0, "backLayerBackgroundColor":J
    .local v3, "$dirty1":I
    .local v7, "backLayerContentColor":J
    .local v13, "frontLayerBackgroundColor":J
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "stickyFrontLayer":Z
    .local v21, "gesturesEnabled":Z
    .local v24, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v29, "frontLayerElevation":F
    .local v34, "frontLayerScrimColor":J
    .local v36, "snackbarHost":Lkotlin/jvm/functions/Function3;
    :goto_34
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_53

    .line 386
    move-wide/from16 p5, v0

    .end local v0    # "backLayerBackgroundColor":J
    .local p5, "backLayerBackgroundColor":J
    const v0, 0x6c9a1c3

    const-string/jumbo v1, "androidx.compose.material.BackdropScaffold (BackdropScaffold.kt:385)"

    invoke-static {v0, v5, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_35

    .line 385
    .end local p5    # "backLayerBackgroundColor":J
    .restart local v0    # "backLayerBackgroundColor":J
    :cond_53
    move-wide/from16 p5, v0

    .line 388
    .end local v0    # "backLayerBackgroundColor":J
    .restart local p5    # "backLayerBackgroundColor":J
    :goto_35
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/16 v17, 0x0

    .line 746
    .local v17, "$i$f$getCurrent":I
    move/from16 p3, v1

    .end local v1    # "$changed$iv":I
    .local p3, "$changed$iv":I
    const v1, 0x789c5f52

    move/from16 p15, v3

    .end local v3    # "$dirty1":I
    .local p15, "$dirty1":I
    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 388
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v17    # "$i$f$getCurrent":I
    .end local p3    # "$changed$iv":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 389
    .local v0, "density":Landroidx/compose/ui/unit/Density;
    const v1, 0x5065c101

    const-string v3, "CC(remember):BackdropScaffold.kt#9igjgp"

    invoke-static {v10, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, 0xe000

    and-int/2addr v1, v5

    xor-int/lit16 v1, v1, 0x6000

    const/16 v3, 0x4000

    if-le v1, v3, :cond_54

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    :cond_54
    and-int/lit16 v1, v5, 0x6000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_56

    :cond_55
    const/4 v1, 0x1

    goto :goto_36

    :cond_56
    const/4 v1, 0x0

    :goto_36
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .local v1, "invalid$iv":Z
    move-object v3, v10

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 747
    .local v17, "$i$f$cache":I
    move/from16 p4, v1

    .end local v1    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 748
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p4, :cond_58

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_57

    goto :goto_37

    .line 752
    :cond_57
    move-object/from16 p7, v1

    goto :goto_38

    .line 749
    :cond_58
    :goto_37
    const/4 v4, 0x0

    .line 389
    .local v4, "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$1":I
    move-object/from16 p7, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local p7, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;

    invoke-direct {v1, v6, v0}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;Landroidx/compose/ui/unit/Density;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 749
    .end local v4    # "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$1":I
    nop

    .line 750
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 751
    nop

    .line 748
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_38
    nop

    .line 747
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 389
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 393
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 753
    .local v4, "$i$f$getCurrent":I
    move-object/from16 p16, v0

    .end local v0    # "density":Landroidx/compose/ui/unit/Density;
    .local p16, "density":Landroidx/compose/ui/unit/Density;
    const v0, 0x789c5f52

    move/from16 p4, v3

    .end local v3    # "$changed$iv":I
    .local p4, "$changed$iv":I
    const-string v3, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 393
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$i$f$getCurrent":I
    .end local p4    # "$changed$iv":I
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 754
    .local v0, "$this$BackdropScaffold_0hNv9B8_u24lambda_u244":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$peekHeightPx$1":I
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v31

    .line 394
    .end local v0    # "$this$BackdropScaffold_0hNv9B8_u24lambda_u244":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$peekHeightPx$1":I
    .local v31, "peekHeightPx":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v3, 0x0

    .line 755
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    move/from16 p4, v1

    .end local v1    # "$changed$iv":I
    .restart local p4    # "$changed$iv":I
    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 394
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$i$f$getCurrent":I
    .end local p4    # "$changed$iv":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 754
    .local v0, "$this$BackdropScaffold_0hNv9B8_u24lambda_u245":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 394
    .local v1, "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$headerHeightPx$1":I
    invoke-interface {v0, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 396
    .end local v1    # "$i$a$-with-BackdropScaffoldKt$BackdropScaffold$headerHeightPx$1":I
    .local v0, "headerHeightPx":F
    new-instance v1, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;

    move-object/from16 v3, p0

    invoke-direct {v1, v12, v6, v3, v2}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;-><init>(ZLandroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const/16 v4, 0x36

    const v2, 0x1b7de5d1

    const/4 v3, 0x1

    invoke-static {v2, v3, v1, v10, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 409
    .local v17, "backLayer":Lkotlin/jvm/functions/Function2;
    const v1, 0x50660e36

    const-string v2, "CC(remember):BackdropScaffold.kt#9igjgp"

    invoke-static {v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    .local v1, "invalid$iv":Z
    move-object v2, v10

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 756
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 757
    .restart local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_5a

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    .end local v1    # "invalid$iv":Z
    .local p4, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_59

    goto :goto_39

    .line 761
    :cond_59
    move-object v1, v4

    goto :goto_3a

    .line 757
    .end local p4    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_5a
    move/from16 p4, v1

    .line 758
    .end local v1    # "invalid$iv":Z
    .restart local p4    # "invalid$iv":Z
    :goto_39
    const/4 v1, 0x0

    .line 409
    .local v1, "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    move/from16 p7, v1

    .end local v1    # "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    .local p7, "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    new-instance v1, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;

    invoke-direct {v1, v0}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;-><init>(F)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 758
    .end local p7    # "$i$a$-cache-BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1":I
    nop

    .line 759
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 760
    nop

    .line 757
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_3a
    nop

    .line 756
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 409
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    .local v18, "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 413
    invoke-virtual {v6}, Landroidx/compose/material/BackdropScaffoldState;->getAnchoredDraggableState$material_release()Landroidx/compose/material/AnchoredDraggableState;

    move-result-object v23

    .line 417
    .local v23, "state":Landroidx/compose/material/AnchoredDraggableState;
    nop

    .line 418
    nop

    .line 419
    new-instance v15, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;

    move-object/from16 v33, p2

    move/from16 v19, v0

    move-object/from16 v22, v6

    move/from16 v32, v9

    move/from16 v30, v11

    move-wide/from16 v25, v13

    .end local v0    # "headerHeightPx":F
    .end local v6    # "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .end local v9    # "peekHeight":F
    .end local v11    # "headerHeight":F
    .end local v13    # "frontLayerBackgroundColor":J
    .local v19, "headerHeightPx":F
    .local v22, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v25, "frontLayerBackgroundColor":J
    .local v30, "headerHeight":F
    .local v32, "peekHeight":F
    invoke-direct/range {v15 .. v36}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;FZZLandroidx/compose/material/BackdropScaffoldState;Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/ui/graphics/Shape;JJFFFFLkotlin/jvm/functions/Function2;JLkotlin/jvm/functions/Function3;)V

    const/16 v0, 0x36

    const v1, 0x74ea5807

    const/4 v3, 0x1

    invoke-static {v1, v3, v15, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v1, p15, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v1, v1, v37

    shl-int/lit8 v2, p15, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    .line 416
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x33

    move-object/from16 p11, v0

    move/from16 p13, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p9, v4

    move/from16 p10, v6

    move-wide/from16 p7, v7

    move/from16 p14, v9

    move-object/from16 p12, v10

    .end local v7    # "backLayerContentColor":J
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local p7, "backLayerContentColor":J
    .local p12, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p3 .. p14}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move-object/from16 v33, p12

    .end local p5    # "backLayerBackgroundColor":J
    .end local p7    # "backLayerContentColor":J
    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "backLayerBackgroundColor":J
    .local v2, "backLayerContentColor":J
    .local v33, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 511
    .end local v17    # "backLayer":Lkotlin/jvm/functions/Function2;
    .end local v18    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .end local v19    # "headerHeightPx":F
    .end local v23    # "state":Landroidx/compose/material/AnchoredDraggableState;
    .end local v31    # "peekHeightPx":F
    .end local p16    # "density":Landroidx/compose/ui/unit/Density;
    :cond_5b
    move-wide v14, v2

    move v10, v12

    move-object/from16 v4, v16

    move/from16 v11, v20

    move/from16 v7, v21

    move-object/from16 v16, v24

    move-wide/from16 v18, v25

    move-wide/from16 v20, v27

    move/from16 v17, v29

    move/from16 v9, v30

    move/from16 v8, v32

    move-object/from16 v6, v36

    move/from16 v28, p15

    move-wide v12, v0

    move/from16 v27, v5

    move-object/from16 v5, v22

    move-wide/from16 v22, v34

    .end local v0    # "backLayerBackgroundColor":J
    .end local v2    # "backLayerContentColor":J
    .end local v21    # "gesturesEnabled":Z
    .end local v24    # "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v25    # "frontLayerBackgroundColor":J
    .end local v29    # "frontLayerElevation":F
    .end local v30    # "headerHeight":F
    .end local v32    # "peekHeight":F
    .end local v34    # "frontLayerScrimColor":J
    .end local v36    # "snackbarHost":Lkotlin/jvm/functions/Function3;
    .end local p15    # "$dirty1":I
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "scaffoldState":Landroidx/compose/material/BackdropScaffoldState;
    .local v6, "snackbarHost":Lkotlin/jvm/functions/Function3;
    .local v7, "gesturesEnabled":Z
    .local v8, "peekHeight":F
    .local v9, "headerHeight":F
    .local v10, "persistentAppBar":Z
    .local v11, "stickyFrontLayer":Z
    .local v12, "backLayerBackgroundColor":J
    .local v14, "backLayerContentColor":J
    .local v16, "frontLayerShape":Landroidx/compose/ui/graphics/Shape;
    .local v17, "frontLayerElevation":F
    .local v18, "frontLayerBackgroundColor":J
    .local v20, "frontLayerContentColor":J
    .local v22, "frontLayerScrimColor":J
    .local v27, "$dirty":I
    .local v28, "$dirty1":I
    :goto_3b
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_5c

    move-object v1, v0

    new-instance v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$3;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v38, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;Lkotlin/jvm/functions/Function3;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJIII)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v38

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_5c
    return-void
.end method

.method public static final BackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/material/BackdropScaffoldState;
    .locals 3
    .param p0, "initialValue"    # Landroidx/compose/material/BackdropValue;
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "confirmValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p4, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BackdropValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material/SnackbarHostState;",
            ")",
            "Landroidx/compose/material/BackdropScaffoldState;"
        }
    .end annotation

    .line 108
    new-instance v0, Landroidx/compose/material/BackdropScaffoldState;

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 108
    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/compose/material/BackdropScaffoldState;-><init>(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)V

    .line 113
    move-object v1, v0

    .local v1, "it":Landroidx/compose/material/BackdropScaffoldState;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$a$-also-BackdropScaffoldKt$BackdropScaffoldState$2":I
    invoke-virtual {v1, p1}, Landroidx/compose/material/BackdropScaffoldState;->setDensity$material_release(Landroidx/compose/ui/unit/Density;)V

    .line 115
    nop

    .line 113
    .end local v1    # "it":Landroidx/compose/material/BackdropScaffoldState;
    .end local v2    # "$i$a$-also-BackdropScaffoldKt$BackdropScaffoldState$2":I
    nop

    .line 115
    return-object v0
.end method

.method public static synthetic BackdropScaffoldState$default(Landroidx/compose/material/BackdropValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;ILjava/lang/Object;)Landroidx/compose/material/BackdropScaffoldState;
    .locals 0

    .line 102
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 105
    sget-object p2, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {p2}, Landroidx/compose/material/BackdropScaffoldDefaults;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p2

    .line 102
    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    .line 106
    sget-object p3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffoldState$1;->INSTANCE:Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffoldState$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 102
    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    .line 107
    new-instance p4, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {p4}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 102
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/BackdropScaffoldKt;->BackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/material/BackdropScaffoldState;

    move-result-object p0

    return-object p0
.end method

.method private static final BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backLayer"    # Lkotlin/jvm/functions/Function2;
    .param p2, "calculateBackLayerConstraints"    # Lkotlin/jvm/functions/Function1;
    .param p3, "frontLayer"    # Lkotlin/jvm/functions/Function4;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 602
    const v0, -0x4a72277a

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(BackdropStack)P(3)602@24951L890,602@24924L917:BackdropScaffold.kt#jmzs0o"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x6

    if-nez v2, :cond_1

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p5, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p5, 0x180

    const/16 v4, 0x100

    if-nez v2, :cond_5

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, p5, 0xc00

    const/16 v5, 0x800

    if-nez v2, :cond_7

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v1, 0x493

    const/16 v6, 0x492

    if-ne v2, v6, :cond_9

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 627
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_a

    .line 602
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    const-string/jumbo v6, "androidx.compose.material.BackdropStack (BackdropScaffold.kt:601)"

    invoke-static {v0, v1, v2, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 603
    :cond_a
    const v0, -0x554ffefa

    const-string v2, "CC(remember):BackdropScaffold.kt#9igjgp"

    invoke-static {p4, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v1, 0x70

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-ne v0, v3, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v6

    :goto_5
    and-int/lit16 v3, v1, 0x380

    if-ne v3, v4, :cond_c

    move v3, v2

    goto :goto_6

    :cond_c
    move v3, v6

    :goto_6
    or-int/2addr v0, v3

    and-int/lit16 v3, v1, 0x1c00

    if-ne v3, v5, :cond_d

    goto :goto_7

    :cond_d
    move v2, v6

    :goto_7
    or-int/2addr v0, v2

    .local v0, "invalid$iv":Z
    move-object v2, p4

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 921
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 922
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_f

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v4, v7, :cond_e

    goto :goto_8

    .line 926
    :cond_e
    move-object v8, v4

    goto :goto_9

    .line 923
    :cond_f
    :goto_8
    const/4 v7, 0x0

    .line 603
    .local v7, "$i$a$-cache-BackdropScaffoldKt$BackdropStack$1":I
    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;

    invoke-direct {v8, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 923
    .end local v7    # "$i$a$-cache-BackdropScaffoldKt$BackdropStack$1":I
    nop

    .line 924
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 925
    nop

    .line 922
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 921
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 603
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v1, 0xe

    invoke-static {p0, v8, p4, v0, v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 627
    :cond_10
    :goto_a
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "backLayer":Lkotlin/jvm/functions/Function2;
    .end local p2    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .end local p3    # "frontLayer":Lkotlin/jvm/functions/Function4;
    .end local p5    # "$changed":I
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "backLayer":Lkotlin/jvm/functions/Function2;
    .local v5, "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .local v6, "frontLayer":Lkotlin/jvm/functions/Function4;
    .local v7, "$changed":I
    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_b

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "backLayer":Lkotlin/jvm/functions/Function2;
    .end local v5    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .end local v6    # "frontLayer":Lkotlin/jvm/functions/Function4;
    .end local v7    # "$changed":I
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "backLayer":Lkotlin/jvm/functions/Function2;
    .restart local p2    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "frontLayer":Lkotlin/jvm/functions/Function4;
    .restart local p5    # "$changed":I
    :cond_11
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "backLayer":Lkotlin/jvm/functions/Function2;
    .end local p2    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .end local p3    # "frontLayer":Lkotlin/jvm/functions/Function4;
    .end local p5    # "$changed":I
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v4    # "backLayer":Lkotlin/jvm/functions/Function2;
    .restart local v5    # "calculateBackLayerConstraints":Lkotlin/jvm/functions/Function1;
    .restart local v6    # "frontLayer":Lkotlin/jvm/functions/Function4;
    .restart local v7    # "$changed":I
    :goto_b
    return-void
.end method

.method public static final ConsumeSwipeNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
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

    .line 682
    new-instance v0, Landroidx/compose/material/BackdropScaffoldKt$ConsumeSwipeNestedScrollConnection$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material/BackdropScaffoldKt$ConsumeSwipeNestedScrollConnection$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 731
    return-object v0
.end method

.method private static final Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 518
    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    const v0, -0x57df7c1

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v6, "C(Scrim)P(0:c#ui.graphics.Color):BackdropScaffold.kt#jmzs0o"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p5

    .local v6, "$dirty":I
    and-int/lit8 v7, v5, 0x6

    if-nez v7, :cond_1

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v6, v7

    :cond_1
    and-int/lit8 v7, v5, 0x30

    const/16 v15, 0x20

    if-nez v7, :cond_3

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v15

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_2

    :cond_4
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v6, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 537
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v6

    goto/16 :goto_e

    .line 518
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.Scrim (BackdropScaffold.kt:517)"

    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 519
    :cond_8
    move-wide/from16 v7, p0

    .local v7, "$this$isSpecified$iv":J
    const/4 v0, 0x0

    .line 762
    .local v0, "$i$f$isSpecified-8_81llA":I
    const-wide/16 v9, 0x10

    cmp-long v9, v7, v9

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-eqz v9, :cond_9

    move v0, v10

    goto :goto_4

    :cond_9
    move v0, v12

    .line 519
    .end local v0    # "$i$f$isSpecified-8_81llA":I
    .end local v7    # "$this$isSpecified$iv":J
    :goto_4
    if-eqz v0, :cond_12

    const v0, 0x1c86892d

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "519@21902L121,532@22312L62,528@22203L171"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 521
    if-eqz v4, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 522
    :goto_5
    new-instance v16, Landroidx/compose/animation/core/TweenSpec;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v16, Landroidx/compose/animation/core/AnimationSpec;

    .line 520
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v13, v10

    const/4 v10, 0x0

    move/from16 v17, v12

    const/16 v12, 0x30

    move/from16 v18, v13

    const/16 v13, 0x1c

    move-object/from16 v14, v16

    move/from16 v16, v6

    move v6, v7

    move-object v7, v14

    move/from16 v14, v18

    .end local v6    # "$dirty":I
    .local v16, "$dirty":I
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 524
    .local v6, "alpha$delegate":Landroidx/compose/runtime/State;
    const/4 v7, 0x0

    const-string v8, "CC(remember):BackdropScaffold.kt#9igjgp"

    if-eqz v4, :cond_e

    const v9, 0x1c892fc9

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "524@22109L37"

    invoke-static {v11, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 525
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v12, 0x4b3e4065    # 1.2468325E7f

    invoke-static {v11, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v12, v16, 0x70

    if-ne v12, v15, :cond_b

    move v12, v14

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    .local v12, "invalid$iv":Z
    :goto_6
    move-object v13, v11

    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 763
    .local v15, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 764
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_d

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v0, v14, :cond_c

    goto :goto_7

    .line 768
    :cond_c
    move-object/from16 v19, v0

    goto :goto_8

    .line 765
    :cond_d
    :goto_7
    const/4 v14, 0x0

    .line 525
    .local v14, "$i$a$-cache-BackdropScaffoldKt$Scrim$dismissModifier$1":I
    move-object/from16 v19, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local v19, "it$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;

    invoke-direct {v0, v3, v7}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 765
    .end local v14    # "$i$a$-cache-BackdropScaffoldKt$Scrim$dismissModifier$1":I
    nop

    .line 766
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 767
    nop

    .line 764
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 763
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    nop

    .line 525
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v9, v10, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 524
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_9

    .line 526
    :cond_e
    const v0, 0x1c8a9902

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 527
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 524
    :goto_9
    nop

    .line 530
    .local v0, "dismissModifier":Landroidx/compose/ui/Modifier;
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 531
    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-static {v9, v10, v13, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 532
    invoke-interface {v7, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 533
    const v9, 0x4b3e59de    # 1.2474846E7f

    invoke-static {v11, v9, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v8, v16, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_f

    move v10, v13

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v10

    .local v8, "invalid$iv":Z
    move-object v9, v11

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 769
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 770
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_11

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_10

    goto :goto_b

    .line 774
    :cond_10
    move-object v15, v12

    goto :goto_c

    .line 771
    :cond_11
    :goto_b
    const/4 v14, 0x0

    .line 533
    .local v14, "$i$a$-cache-BackdropScaffoldKt$Scrim$1":I
    new-instance v15, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;

    invoke-direct {v15, v1, v2, v6}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 771
    .end local v14    # "$i$a$-cache-BackdropScaffoldKt$Scrim$1":I
    nop

    .line 772
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 773
    nop

    .line 770
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 769
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 533
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 529
    const/4 v8, 0x0

    invoke-static {v7, v15, v11, v8}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 519
    .end local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "alpha$delegate":Landroidx/compose/runtime/State;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_d

    .line 536
    .end local v16    # "$dirty":I
    .local v6, "$dirty":I
    :cond_12
    move/from16 v16, v6

    .end local v6    # "$dirty":I
    .restart local v16    # "$dirty":I
    const v0, 0x1c8de1e2

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 537
    :cond_13
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v0, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$7(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 520
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 927
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 520
    return v0
.end method

.method public static final synthetic access$BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "target"    # Landroidx/compose/material/BackdropValue;
    .param p1, "appBar"    # Lkotlin/jvm/functions/Function2;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/BackdropScaffoldKt;->BackLayerTransition(Landroidx/compose/material/BackdropValue;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$BackLayerTransition$lambda$10(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$animationProgress$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/BackdropScaffoldKt;->BackLayerTransition$lambda$10(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backLayer"    # Lkotlin/jvm/functions/Function2;
    .param p2, "calculateBackLayerConstraints"    # Lkotlin/jvm/functions/Function1;
    .param p3, "frontLayer"    # Lkotlin/jvm/functions/Function4;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->BackdropStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$7(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/BackdropScaffoldKt;->Scrim_3J_VO9M$lambda$7(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getPositionalThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BackdropScaffoldKt;->PositionalThreshold:F

    return v0
.end method

.method public static final synthetic access$getVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BackdropScaffoldKt;->VelocityThreshold:F

    return v0
.end method

.method public static final rememberBackdropScaffoldState(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;
    .locals 16
    .param p0, "initialValue"    # Landroidx/compose/material/BackdropValue;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "snackbarHostState"    # Landroidx/compose/material/SnackbarHostState;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BackdropValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BackdropScaffoldState;"
        }
    .end annotation

    .line 281
    move-object/from16 v4, p4

    move/from16 v7, p5

    const v0, -0x3363ce60    # -8.189056E7f

    const-string v1, "C(rememberBackdropScaffoldState)P(2)279@10496L32,281@10588L7,292@10941L266,282@10607L600:BackdropScaffold.kt#jmzs0o"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 278
    sget-object v1, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/BackdropScaffoldDefaults;->getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v1

    move-object v11, v1

    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 281
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p1

    .line 278
    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 279
    sget-object v1, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;->INSTANCE:Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v12, v1

    .end local p2    # "confirmStateChange":Lkotlin/jvm/functions/Function1;
    .local v1, "confirmStateChange":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 278
    .end local v1    # "confirmStateChange":Lkotlin/jvm/functions/Function1;
    .restart local p2    # "confirmStateChange":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v12, p2

    .line 279
    .end local p2    # "confirmStateChange":Lkotlin/jvm/functions/Function1;
    .local v12, "confirmStateChange":Lkotlin/jvm/functions/Function1;
    :goto_1
    and-int/lit8 v1, p6, 0x8

    const-string v2, "CC(remember):BackdropScaffold.kt#9igjgp"

    if-eqz v1, :cond_3

    .line 280
    const v1, -0x4087996e

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object/from16 v3, p4

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 733
    .local v5, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 734
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v6, v9, :cond_2

    .line 735
    const/4 v9, 0x0

    .line 280
    .local v9, "$i$a$-cache-BackdropScaffoldKt$rememberBackdropScaffoldState$2":I
    new-instance v10, Landroidx/compose/material/SnackbarHostState;

    invoke-direct {v10}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 735
    .end local v9    # "$i$a$-cache-BackdropScaffoldKt$rememberBackdropScaffoldState$2":I
    nop

    .line 736
    .local v10, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 737
    nop

    .end local v10    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 738
    :cond_2
    move-object v10, v6

    .line 734
    :goto_2
    nop

    .line 733
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 280
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v1, v10

    check-cast v1, Landroidx/compose/material/SnackbarHostState;

    .end local p3    # "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    .local v1, "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v13, v1

    goto :goto_3

    .line 279
    .end local v1    # "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    .restart local p3    # "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    :cond_3
    move-object/from16 v13, p3

    .line 280
    .end local p3    # "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    .local v13, "snackbarHostState":Landroidx/compose/material/SnackbarHostState;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    const/4 v1, -0x1

    const-string/jumbo v3, "androidx.compose.material.rememberBackdropScaffoldState (BackdropScaffold.kt:280)"

    invoke-static {v0, v7, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 282
    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v3, 0x0

    .line 739
    .local v3, "$i$f$getCurrent":I
    const v5, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 282
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 284
    .local v10, "density":Landroidx/compose/ui/unit/Density;
    nop

    .line 285
    nop

    .line 284
    nop

    .line 286
    filled-new-array {v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 284
    nop

    .line 287
    sget-object v1, Landroidx/compose/material/BackdropScaffoldState;->Companion:Landroidx/compose/material/BackdropScaffoldState$Companion;

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 287
    invoke-virtual {v1, v11, v12, v13, v10}, Landroidx/compose/material/BackdropScaffoldState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/unit/Density;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    .line 293
    const v3, -0x408760e4

    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v7, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-le v2, v6, :cond_5

    move-object/from16 v9, p0

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_5
    move-object/from16 v9, p0

    :goto_4
    and-int/lit8 v2, v7, 0x6

    if-ne v2, v6, :cond_7

    :cond_6
    move v2, v5

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    and-int/lit16 v6, v7, 0x380

    xor-int/lit16 v6, v6, 0x180

    const/16 v8, 0x100

    if-le v6, v8, :cond_8

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    and-int/lit16 v6, v7, 0x180

    if-ne v6, v8, :cond_a

    :cond_9
    move v6, v5

    goto :goto_6

    :cond_a
    move v6, v3

    :goto_6
    or-int/2addr v2, v6

    and-int/lit16 v6, v7, 0x1c00

    xor-int/lit16 v6, v6, 0xc00

    const/16 v8, 0x800

    if-le v6, v8, :cond_b

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    and-int/lit16 v6, v7, 0xc00

    if-ne v6, v8, :cond_d

    :cond_c
    move v3, v5

    :cond_d
    or-int/2addr v2, v3

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p4

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 740
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 741
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_f

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_e

    goto :goto_7

    .line 745
    :cond_e
    move-object v8, v6

    goto :goto_8

    .line 742
    :cond_f
    :goto_7
    const/4 v15, 0x0

    .line 293
    .local v15, "$i$a$-cache-BackdropScaffoldKt$rememberBackdropScaffoldState$3":I
    new-instance v8, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3$1;

    invoke-direct/range {v8 .. v13}, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3$1;-><init>(Landroidx/compose/material/BackdropValue;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/material/SnackbarHostState;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 742
    .end local v15    # "$i$a$-cache-BackdropScaffoldKt$rememberBackdropScaffoldState$3":I
    nop

    .line 743
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 744
    nop

    .line 741
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 740
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 293
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 283
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/BackdropScaffoldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 281
    :cond_10
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 283
    return-object v0
.end method
