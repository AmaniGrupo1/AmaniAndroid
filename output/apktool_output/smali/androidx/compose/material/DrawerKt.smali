.class public final Landroidx/compose/material/DrawerKt;
.super Ljava/lang/Object;
.source "Drawer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 7 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,916:1\n1223#2,6:917\n1223#2,6:924\n1223#2,3:935\n1226#2,3:941\n1223#2,3:950\n1226#2,3:956\n1223#2,6:977\n1223#2,6:983\n1223#2,6:989\n1223#2,6:995\n1223#2,6:1001\n1223#2,6:1007\n77#3:923\n488#4:930\n487#4,4:931\n491#4,2:938\n495#4:944\n488#4:945\n487#4,4:946\n491#4,2:953\n495#4:959\n487#5:940\n487#5:955\n71#6,16:960\n696#7:976\n81#8:1013\n148#9:1014\n148#9:1015\n148#9:1016\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n*L\n430#1:917,6\n453#1:924,6\n501#1:935,3\n501#1:941,3\n634#1:950,3\n634#1:956,3\n802#1:977,6\n805#1:983,6\n817#1:989,6\n833#1:995,6\n834#1:1001,6\n846#1:1007,6\n449#1:923\n501#1:930\n501#1:931,4\n501#1:938,2\n501#1:944\n634#1:945\n634#1:946,4\n634#1:953,2\n634#1:959\n501#1:940\n634#1:955\n786#1:960,16\n794#1:976\n795#1:1013\n851#1:1014\n852#1:1015\n853#1:1016\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0093\u0001\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0008\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001a2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\n0\u001e\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a0\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001a2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001e2\u0006\u0010$\u001a\u00020\u0015H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001a\u0014\u0010\'\u001a\u00020(2\n\u0010)\u001a\u0006\u0012\u0002\u0008\u00030*H\u0002\u001a\u0093\u0001\u0010+\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0008\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020,2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001a2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\n0\u001e\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001a>\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\u00152\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001e2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001aH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104\u001a \u00105\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u00022\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u0002H\u0002\u001a;\u00109\u001a\u00020\u00132\u0006\u0010:\u001a\u00020;2\u0014\u0008\u0002\u0010<\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\u00150\u000c2\u000e\u0008\u0002\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00020>H\u0007\u00a2\u0006\u0002\u0010?\u001a+\u0010@\u001a\u00020,2\u0006\u0010:\u001a\u00020A2\u0014\u0008\u0002\u0010<\u001a\u000e\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u00150\u000cH\u0007\u00a2\u0006\u0002\u0010B\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0002X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\"\u0010\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006C\u00b2\u0006\n\u0010D\u001a\u00020\u0002X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "BottomDrawerOpenFraction",
        "DrawerPositionalThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DrawerVelocityThreshold",
        "EndDrawerPadding",
        "BottomDrawer",
        "",
        "drawerContent",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "drawerState",
        "Landroidx/compose/material/BottomDrawerState;",
        "gesturesEnabled",
        "",
        "drawerShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "drawerElevation",
        "drawerBackgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "drawerContentColor",
        "scrimColor",
        "content",
        "Lkotlin/Function0;",
        "BottomDrawer-Gs3lGvM",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "BottomDrawerScrim",
        "color",
        "onDismiss",
        "visible",
        "BottomDrawerScrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "state",
        "Landroidx/compose/material/AnchoredDraggableState;",
        "ModalDrawer",
        "Landroidx/compose/material/DrawerState;",
        "ModalDrawer-Gs3lGvM",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "Scrim",
        "open",
        "onClose",
        "fraction",
        "Scrim-Bx497Mc",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V",
        "calculateFraction",
        "a",
        "b",
        "pos",
        "rememberBottomDrawerState",
        "initialValue",
        "Landroidx/compose/material/BottomDrawerValue;",
        "confirmStateChange",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;",
        "rememberDrawerState",
        "Landroidx/compose/material/DrawerValue;",
        "(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;",
        "material_release",
        "alpha"
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
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final BottomDrawerOpenFraction:F = 0.5f

.field private static final DrawerPositionalThreshold:F

.field private static final DrawerVelocityThreshold:F

.field private static final EndDrawerPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 851
    const/16 v0, 0x38

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1014
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 851
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    .line 852
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1015
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 852
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerPositionalThreshold:F

    .line 853
    const/16 v0, 0x190

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1016
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 853
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    .line 857
    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final BottomDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "drawerState"    # Landroidx/compose/material/BottomDrawerState;
    .param p3, "gesturesEnabled"    # Z
    .param p4, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "drawerElevation"    # F
    .param p6, "drawerBackgroundColor"    # J
    .param p8, "drawerContentColor"    # J
    .param p10, "scrimColor"    # J
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
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
            "Landroidx/compose/material/BottomDrawerState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 633
    move/from16 v14, p14

    move/from16 v15, p15

    const v0, 0x254aa686

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomDrawer)P(2,8,6,7,5,4:c#ui.unit.Dp,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9:c#ui.graphics.Color)624@23676L33,626@23788L5,628@23897L15,629@23946L38,630@24025L10,633@24093L24,634@24165L4601,634@24122L4644:Drawer.kt#jmzs0o"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p14

    .local v1, "$dirty":I
    and-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0x6

    if-nez v2, :cond_2

    move-object/from16 v7, p0

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x30

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_8

    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    and-int/lit8 v9, v15, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v10, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v14, 0xc00

    if-nez v5, :cond_b

    move/from16 v10, p3

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move/from16 v10, p3

    :goto_7
    and-int/lit16 v5, v14, 0x6000

    if-nez v5, :cond_e

    and-int/lit8 v5, v15, 0x10

    if-nez v5, :cond_c

    move-object/from16 v11, p4

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v11, p4

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v1, v5

    goto :goto_9

    :cond_e
    move-object/from16 v11, p4

    :goto_9
    and-int/lit8 v12, v15, 0x20

    const/high16 v5, 0x30000

    if-eqz v12, :cond_f

    or-int/2addr v1, v5

    move/from16 v13, p5

    goto :goto_b

    :cond_f
    and-int/2addr v5, v14

    if-nez v5, :cond_11

    move/from16 v13, p5

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v5, 0x10000

    :goto_a
    or-int/2addr v1, v5

    goto :goto_b

    :cond_11
    move/from16 v13, p5

    :goto_b
    const/high16 v5, 0x180000

    and-int/2addr v5, v14

    if-nez v5, :cond_14

    and-int/lit8 v5, v15, 0x40

    if-nez v5, :cond_12

    move-wide/from16 v5, p6

    invoke-interface {v4, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move-wide/from16 v5, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-wide/from16 v5, p6

    :goto_d
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v15, 0x80

    if-nez v0, :cond_15

    move/from16 p13, v2

    move-wide/from16 v2, p8

    invoke-interface {v4, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_15
    move/from16 p13, v2

    move-wide/from16 v2, p8

    :cond_16
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v1, v0

    goto :goto_f

    :cond_17
    move/from16 p13, v2

    move-wide/from16 v2, p8

    :goto_f
    const/high16 v0, 0x6000000

    and-int/2addr v0, v14

    if-nez v0, :cond_1a

    and-int/lit16 v0, v15, 0x100

    if-nez v0, :cond_18

    move-wide/from16 v2, p10

    invoke-interface {v4, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_18
    move-wide/from16 v2, p10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v1, v0

    goto :goto_11

    :cond_1a
    move-wide/from16 v2, p10

    :goto_11
    and-int/lit16 v0, v15, 0x200

    const/high16 v17, 0x30000000

    if-eqz v0, :cond_1b

    or-int v1, v1, v17

    move-object/from16 v0, p12

    goto :goto_13

    :cond_1b
    and-int v0, v14, v17

    if-nez v0, :cond_1d

    move-object/from16 v0, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_12
    or-int v1, v1, v17

    goto :goto_13

    :cond_1d
    move-object/from16 v0, p12

    :goto_13
    const v17, 0x12492493

    and-int v0, v1, v17

    const v2, 0x12492492

    if-ne v0, v2, :cond_1f

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    .line 740
    :cond_1e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move/from16 v17, v1

    move-object/from16 v16, v4

    move-object v3, v8

    move v4, v10

    move-wide/from16 v9, p8

    move-wide v7, v5

    move-object v5, v11

    move v6, v13

    move-wide/from16 v11, p10

    goto/16 :goto_1f

    .line 633
    :cond_1f
    :goto_14
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v17, -0xe000001

    const v18, -0x1c00001

    const v19, -0x380001

    const v20, -0xe001

    if-eqz v0, :cond_26

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_15

    .line 631
    :cond_20
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_21

    and-int/lit16 v1, v1, -0x381

    :cond_21
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_22

    and-int v1, v1, v20

    :cond_22
    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_23

    and-int v1, v1, v19

    :cond_23
    and-int/lit16 v0, v15, 0x80

    if-eqz v0, :cond_24

    and-int v1, v1, v18

    :cond_24
    and-int/lit16 v0, v15, 0x100

    if-eqz v0, :cond_25

    and-int v0, v1, v17

    move-wide/from16 v26, p8

    move-wide/from16 v20, p10

    move v1, v0

    move-wide/from16 v24, v5

    move-object/from16 v18, v8

    move/from16 v17, v10

    move-object/from16 v23, v11

    move/from16 v28, v13

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1d

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_25
    move-object/from16 v0, p1

    move-wide/from16 v26, p8

    move-wide/from16 v20, p10

    move-wide/from16 v24, v5

    move-object/from16 v18, v8

    move/from16 v17, v10

    move-object/from16 v23, v11

    move/from16 v28, v13

    goto/16 :goto_1d

    .line 633
    :cond_26
    :goto_15
    if-eqz p13, :cond_27

    .line 624
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_16

    .line 633
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v0, p1

    .line 624
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_16
    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_28

    .line 625
    move v2, v1

    .end local v1    # "$dirty":I
    .local v2, "$dirty":I
    sget-object v1, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    const/4 v5, 0x6

    const/4 v6, 0x6

    move v3, v2

    .end local v2    # "$dirty":I
    .local v3, "$dirty":I
    const/4 v2, 0x0

    move/from16 v21, v3

    .end local v3    # "$dirty":I
    .local v21, "$dirty":I
    const/4 v3, 0x0

    move-object/from16 p1, v0

    move/from16 v0, v21

    .end local v21    # "$dirty":I
    .local v0, "$dirty":I
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DrawerKt;->rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;

    move-result-object v1

    .end local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v1, "drawerState":Landroidx/compose/material/BottomDrawerState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_17

    .line 624
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "$dirty":I
    .restart local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    :cond_28
    move-object/from16 p1, v0

    move v0, v1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object v1, v8

    .line 625
    .end local p2    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v1, "drawerState":Landroidx/compose/material/BottomDrawerState;
    :goto_17
    if-eqz v9, :cond_29

    .line 626
    const/4 v2, 0x1

    .end local p3    # "gesturesEnabled":Z
    .local v2, "gesturesEnabled":Z
    goto :goto_18

    .line 625
    .end local v2    # "gesturesEnabled":Z
    .restart local p3    # "gesturesEnabled":Z
    :cond_29
    move v2, v10

    .line 626
    .end local p3    # "gesturesEnabled":Z
    .restart local v2    # "gesturesEnabled":Z
    :goto_18
    and-int/lit8 v3, v15, 0x10

    const/4 v5, 0x6

    if-eqz v3, :cond_2a

    .line 627
    sget-object v3, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v3, v4, v5}, Landroidx/compose/material/DrawerDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v3, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int v0, v0, v20

    goto :goto_19

    .line 626
    .end local v3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_2a
    move-object v3, v11

    .line 627
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_19
    if-eqz v12, :cond_2b

    .line 628
    sget-object v6, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v6}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v6

    .end local p5    # "drawerElevation":F
    .local v6, "drawerElevation":F
    goto :goto_1a

    .line 627
    .end local v6    # "drawerElevation":F
    .restart local p5    # "drawerElevation":F
    :cond_2b
    move v6, v13

    .line 628
    .end local p5    # "drawerElevation":F
    .restart local v6    # "drawerElevation":F
    :goto_1a
    and-int/lit8 v8, v15, 0x40

    if-eqz v8, :cond_2c

    .line 629
    sget-object v8, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v8, v4, v5}, Landroidx/compose/material/DrawerDefaults;->getBackgroundColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    .end local p6    # "drawerBackgroundColor":J
    .local v8, "drawerBackgroundColor":J
    and-int v0, v0, v19

    goto :goto_1b

    .line 628
    .end local v8    # "drawerBackgroundColor":J
    .restart local p6    # "drawerBackgroundColor":J
    :cond_2c
    move-wide/from16 v8, p6

    .line 629
    .end local p6    # "drawerBackgroundColor":J
    .restart local v8    # "drawerBackgroundColor":J
    :goto_1b
    and-int/lit16 v10, v15, 0x80

    if-eqz v10, :cond_2d

    .line 630
    shr-int/lit8 v10, v0, 0x12

    and-int/lit8 v10, v10, 0xe

    invoke-static {v8, v9, v4, v10}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v10

    .end local p8    # "drawerContentColor":J
    .local v10, "drawerContentColor":J
    and-int v0, v0, v18

    goto :goto_1c

    .line 629
    .end local v10    # "drawerContentColor":J
    .restart local p8    # "drawerContentColor":J
    :cond_2d
    move-wide/from16 v10, p8

    .line 630
    .end local p8    # "drawerContentColor":J
    .restart local v10    # "drawerContentColor":J
    :goto_1c
    and-int/lit16 v12, v15, 0x100

    if-eqz v12, :cond_2e

    .line 631
    sget-object v12, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v12, v4, v5}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v12

    .end local p10    # "scrimColor":J
    .local v12, "scrimColor":J
    and-int v0, v0, v17

    move-object/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v23, v3

    move/from16 v28, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v20, v12

    move v1, v0

    move-object/from16 v0, p1

    goto :goto_1d

    .line 630
    .end local v12    # "scrimColor":J
    .restart local p10    # "scrimColor":J
    :cond_2e
    move-wide/from16 v20, p10

    move-object/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v23, v3

    move/from16 v28, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move v1, v0

    move-object/from16 v0, p1

    .line 631
    .end local v2    # "gesturesEnabled":Z
    .end local v3    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v6    # "drawerElevation":F
    .end local v8    # "drawerBackgroundColor":J
    .end local v10    # "drawerContentColor":J
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "scrimColor":J
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "$dirty":I
    .local v17, "gesturesEnabled":Z
    .local v18, "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v20, "scrimColor":J
    .local v23, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v24, "drawerBackgroundColor":J
    .local v26, "drawerContentColor":J
    .local v28, "drawerElevation":F
    :goto_1d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 633
    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material.BottomDrawer (Drawer.kt:632)"

    const v5, 0x254aa686

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2f
    nop

    .line 634
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 945
    .local v3, "$i$f$rememberCoroutineScope":I
    const v5, 0x2e20b340

    const-string v6, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 946
    nop

    .line 948
    move-object v5, v4

    .line 949
    .local v5, "composer$iv":Landroidx/compose/runtime/Composer;
    const v6, -0x38e26dd0

    const-string v8, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v4, v6, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "invalid$iv$iv":Z
    move-object v8, v4

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 950
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 951
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_30

    .line 952
    const/4 v12, 0x0

    .line 953
    .local v12, "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 954
    const/4 v13, 0x0

    .line 955
    .local v13, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 954
    .end local v13    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v13, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    .line 953
    move/from16 p8, v1

    .end local v1    # "$dirty":I
    .local p8, "$dirty":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v13}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 952
    .end local v12    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 956
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 957
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1e

    .line 958
    .end local p8    # "$dirty":I
    .local v1, "$dirty":I
    :cond_30
    move/from16 p8, v1

    .end local v1    # "$dirty":I
    .restart local p8    # "$dirty":I
    move-object v1, v10

    .line 951
    :goto_1e
    nop

    .line 950
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 949
    .end local v6    # "invalid$iv$iv":Z
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .local v1, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 959
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v22

    .line 945
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 959
    nop

    .line 634
    .end local v1    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$rememberCoroutineScope":I
    .end local v5    # "composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 635
    .local v22, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v16, Landroidx/compose/material/DrawerKt$BottomDrawer$1;

    move-object/from16 v19, p12

    move-object/from16 v29, v7

    invoke-direct/range {v16 .. v29}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function3;)V

    move-object/from16 v2, v16

    const/16 v5, 0x36

    const v6, 0x48b94970    # 379467.5f

    invoke-static {v6, v3, v2, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/16 v3, 0xc00

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v1

    move-object/from16 p4, v2

    move/from16 p6, v3

    move-object/from16 p5, v4

    move/from16 p7, v5

    move-object/from16 p2, v6

    move/from16 p3, v7

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local p5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v16, p5

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 740
    .end local v22    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_31
    move-object v2, v0

    move/from16 v4, v17

    move-object/from16 v3, v18

    move-wide/from16 v11, v20

    move-object/from16 v5, v23

    move-wide/from16 v7, v24

    move-wide/from16 v9, v26

    move/from16 v6, v28

    move/from16 v17, p8

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v18    # "drawerState":Landroidx/compose/material/BottomDrawerState;
    .end local v20    # "scrimColor":J
    .end local v23    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v24    # "drawerBackgroundColor":J
    .end local v26    # "drawerContentColor":J
    .end local v28    # "drawerElevation":F
    .end local p8    # "$dirty":I
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "drawerState":Landroidx/compose/material/BottomDrawerState;
    .local v4, "gesturesEnabled":Z
    .local v5, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v6, "drawerElevation":F
    .local v7, "drawerBackgroundColor":J
    .local v9, "drawerContentColor":J
    .local v11, "scrimColor":J
    .local v17, "$dirty":I
    :goto_1f
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object v1, v0

    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawer$2;

    move-object/from16 v13, p12

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method

.method private static final BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
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

    .line 793
    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    const v0, -0x1e94c902

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v6, "C(BottomDrawerScrim)P(0:c#ui.graphics.Color):Drawer.kt#jmzs0o"

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

    .line 821
    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v6

    goto/16 :goto_11

    .line 793
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.BottomDrawerScrim (Drawer.kt:792)"

    invoke-static {v0, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 794
    :cond_8
    move-wide/from16 v7, p0

    .local v7, "$this$isSpecified$iv":J
    const/4 v0, 0x0

    .line 976
    .local v0, "$i$f$isSpecified-8_81llA":I
    const-wide/16 v9, 0x10

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_9

    move v0, v12

    goto :goto_4

    :cond_9
    move v0, v10

    .line 794
    .end local v0    # "$i$f$isSpecified-8_81llA":I
    .end local v7    # "$this$isSpecified$iv":J
    :goto_4
    if-eqz v0, :cond_15

    const v0, 0x5c8cbd86

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "794@30102L121,798@30250L30,816@30803L62,812@30694L171"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 796
    if-eqz v4, :cond_a

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 797
    :goto_5
    new-instance v16, Landroidx/compose/animation/core/TweenSpec;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v16, Landroidx/compose/animation/core/AnimationSpec;

    .line 795
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

    move/from16 v14, v17

    .end local v6    # "$dirty":I
    .local v16, "$dirty":I
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 799
    .local v6, "alpha$delegate":Landroidx/compose/runtime/State;
    sget-object v7, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v7}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v7, v11, v8}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    .line 800
    .local v7, "closeDrawer":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "CC(remember):Drawer.kt#9igjgp"

    if-eqz v4, :cond_11

    const v10, 0x5c9039fc

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "801@30388L73,804@30514L122"

    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 801
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 802
    const v12, -0x601c5a33

    invoke-static {v11, v12, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

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
    const/16 v17, 0x0

    .line 977
    .local v17, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 978
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v12, :cond_d

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v0, v14, :cond_c

    goto :goto_7

    .line 982
    :cond_c
    move-object v15, v0

    goto :goto_8

    .line 979
    :cond_d
    :goto_7
    const/4 v14, 0x0

    .line 802
    .local v14, "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$1":I
    new-instance v15, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;

    invoke-direct {v15, v3, v8}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 979
    .end local v14    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$1":I
    nop

    .line 980
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 981
    nop

    .line 978
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 977
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 802
    .end local v12    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v10, v3, v15}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 805
    const v10, -0x601c4a42

    invoke-static {v11, v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    and-int/lit8 v12, v16, 0x70

    const/16 v13, 0x20

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    or-int/2addr v10, v12

    .local v10, "invalid$iv":Z
    move-object v12, v11

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 983
    .local v13, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 984
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v10, :cond_10

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v14, v8, :cond_f

    goto :goto_a

    .line 988
    :cond_f
    move-object v4, v14

    goto :goto_b

    .line 985
    :cond_10
    :goto_a
    const/4 v8, 0x0

    .line 805
    .local v8, "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$2":I
    new-instance v4, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;

    invoke-direct {v4, v7, v3}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 985
    .end local v8    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$dismissModifier$2":I
    nop

    .line 986
    .local v4, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 987
    nop

    .line 984
    .end local v4    # "value$iv":Ljava/lang/Object;
    :goto_b
    nop

    .line 983
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 805
    .end local v10    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v14, 0x1

    invoke-static {v0, v14, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 800
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_c

    .line 809
    :cond_11
    const v0, 0x5c950dde

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 810
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 800
    :goto_c
    nop

    .line 814
    .local v0, "dismissModifier":Landroidx/compose/ui/Modifier;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 815
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    invoke-static {v4, v10, v14, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 816
    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 817
    const v8, -0x601c265e

    invoke-static {v11, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v8, v16, 0xe

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    move v10, v14

    goto :goto_d

    :cond_12
    const/4 v10, 0x0

    :goto_d
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v10

    .local v8, "invalid$iv":Z
    move-object v9, v11

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 989
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 990
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_14

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_13

    goto :goto_e

    .line 994
    :cond_13
    move-object v15, v12

    goto :goto_f

    .line 991
    :cond_14
    :goto_e
    const/4 v14, 0x0

    .line 817
    .local v14, "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    new-instance v15, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;

    invoke-direct {v15, v1, v2, v6}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 991
    .end local v14    # "$i$a$-cache-DrawerKt$BottomDrawerScrim$1":I
    nop

    .line 992
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 993
    nop

    .line 990
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 989
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 817
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 813
    const/4 v13, 0x0

    invoke-static {v4, v15, v11, v13}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 794
    .end local v0    # "dismissModifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "alpha$delegate":Landroidx/compose/runtime/State;
    .end local v7    # "closeDrawer":Ljava/lang/String;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_10

    .line 820
    .end local v16    # "$dirty":I
    .local v6, "$dirty":I
    :cond_15
    move/from16 v16, v6

    .end local v6    # "$dirty":I
    .restart local v16    # "$dirty":I
    const v0, 0x5c985a9e

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 821
    :cond_16
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_17

    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method

.method private static final BottomDrawerScrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F
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

    .line 795
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1013
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

    .line 795
    return v0
.end method

.method private static final ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/AnchoredDraggableState<",
            "*>;)",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;"
        }
    .end annotation

    .line 864
    new-instance v0, Landroidx/compose/material/DrawerKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/DrawerKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;)V

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 915
    return-object v0
.end method

.method public static final ModalDrawer-Gs3lGvM(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "drawerContent"    # Lkotlin/jvm/functions/Function3;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "drawerState"    # Landroidx/compose/material/DrawerState;
    .param p3, "gesturesEnabled"    # Z
    .param p4, "drawerShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p5, "drawerElevation"    # F
    .param p6, "drawerBackgroundColor"    # J
    .param p8, "drawerContentColor"    # J
    .param p10, "scrimColor"    # J
    .param p12, "content"    # Lkotlin/jvm/functions/Function2;
    .param p13, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p14, "$changed"    # I
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
            "Landroidx/compose/material/DrawerState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Lkotlin/jvm/functions/Function2<",
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

    .line 500
    move/from16 v14, p14

    move/from16 v15, p15

    const v0, 0x4dd50861    # 4.46762016E8f

    move-object/from16 v1, p13

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(ModalDrawer)P(2,8,6,7,5,4:c#ui.unit.Dp,1:c#ui.graphics.Color,3:c#ui.graphics.Color,9:c#ui.graphics.Color)491@17842L39,493@17960L5,495@18069L15,496@18118L38,497@18197L10,500@18265L24,501@18337L3449,501@18294L3492:Drawer.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p14

    .local v2, "$dirty":I
    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v5, v15, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v14, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v7, v14, 0x180

    if-nez v7, :cond_8

    and-int/lit8 v7, v15, 0x4

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v7, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v2, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v8, v15, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_b

    move/from16 v9, p3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v2, v10

    goto :goto_7

    :cond_b
    move/from16 v9, p3

    :goto_7
    and-int/lit16 v10, v14, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v15, 0x10

    if-nez v10, :cond_c

    move-object/from16 v10, p4

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v10, p4

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v2, v11

    goto :goto_9

    :cond_e
    move-object/from16 v10, p4

    :goto_9
    and-int/lit8 v11, v15, 0x20

    const/high16 v12, 0x30000

    if-eqz v11, :cond_f

    or-int/2addr v2, v12

    move/from16 v12, p5

    goto :goto_b

    :cond_f
    and-int/2addr v12, v14

    if-nez v12, :cond_11

    move/from16 v12, p5

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v2, v13

    goto :goto_b

    :cond_11
    move/from16 v12, p5

    :goto_b
    const/high16 v13, 0x180000

    and-int/2addr v13, v14

    if-nez v13, :cond_14

    and-int/lit8 v13, v15, 0x40

    if-nez v13, :cond_12

    move v13, v5

    move-wide/from16 v4, p6

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_12
    move v13, v5

    move-wide/from16 v4, p6

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v2, v2, v16

    goto :goto_d

    :cond_14
    move v13, v5

    move-wide/from16 v4, p6

    :goto_d
    const/high16 v16, 0xc00000

    and-int v16, v14, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v15, 0x80

    if-nez v0, :cond_15

    move v0, v2

    move-wide/from16 v2, p8

    .end local v2    # "$dirty":I
    .local v0, "$dirty":I
    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    .end local v0    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_15
    move v0, v2

    move-wide/from16 v2, p8

    .end local v2    # "$dirty":I
    .restart local v0    # "$dirty":I
    :cond_16
    const/high16 v17, 0x400000

    :goto_e
    or-int v0, v0, v17

    goto :goto_f

    .end local v0    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_17
    move v0, v2

    move-wide/from16 v2, p8

    .end local v2    # "$dirty":I
    .restart local v0    # "$dirty":I
    :goto_f
    const/high16 v17, 0x6000000

    and-int v17, v14, v17

    if-nez v17, :cond_1a

    move/from16 v17, v0

    .end local v0    # "$dirty":I
    .local v17, "$dirty":I
    and-int/lit16 v0, v15, 0x100

    if-nez v0, :cond_18

    move-wide/from16 v2, p10

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_18
    move-wide/from16 v2, p10

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int v0, v17, v0

    .end local v17    # "$dirty":I
    .restart local v0    # "$dirty":I
    goto :goto_11

    :cond_1a
    move-wide/from16 v2, p10

    move/from16 v17, v0

    :goto_11
    move/from16 v17, v0

    .end local v0    # "$dirty":I
    .restart local v17    # "$dirty":I
    and-int/lit16 v0, v15, 0x200

    const/high16 v18, 0x30000000

    if-eqz v0, :cond_1b

    or-int v0, v17, v18

    .end local v17    # "$dirty":I
    .restart local v0    # "$dirty":I
    goto :goto_14

    .end local v0    # "$dirty":I
    .restart local v17    # "$dirty":I
    :cond_1b
    and-int v0, v14, v18

    if-nez v0, :cond_1d

    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v18, 0x10000000

    :goto_12
    or-int v17, v17, v18

    goto :goto_13

    :cond_1d
    move-object/from16 v0, p12

    :goto_13
    move/from16 v0, v17

    .end local v17    # "$dirty":I
    .restart local v0    # "$dirty":I
    :goto_14
    const v17, 0x12492493

    and-int v2, v0, v17

    const v3, 0x12492492

    if-ne v2, v3, :cond_1f

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_15

    .line 590
    :cond_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v1

    move-object v2, v6

    move-object v3, v7

    move v6, v12

    move-wide/from16 v11, p10

    move-wide v7, v4

    move v4, v9

    move-object v5, v10

    move-wide/from16 v9, p8

    move/from16 v17, v0

    goto/16 :goto_1f

    .line 500
    :cond_1f
    :goto_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v14, 0x1

    const v17, -0x1c00001

    const v18, -0x380001

    const v19, -0xe001

    const v20, -0xe000001

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_16

    .line 498
    :cond_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_21

    and-int/lit16 v0, v0, -0x381

    :cond_21
    and-int/lit8 v2, v15, 0x10

    if-eqz v2, :cond_22

    and-int v0, v0, v19

    :cond_22
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_23

    and-int v0, v0, v18

    :cond_23
    and-int/lit16 v2, v15, 0x80

    if-eqz v2, :cond_24

    and-int v0, v0, v17

    :cond_24
    and-int/lit16 v2, v15, 0x100

    if-eqz v2, :cond_25

    and-int v0, v0, v20

    :cond_25
    move-wide/from16 v25, p8

    move-wide/from16 v20, p10

    move-wide/from16 v23, v4

    move-object/from16 v17, v7

    move/from16 v18, v9

    move-object/from16 v22, v10

    move/from16 v27, v12

    goto/16 :goto_1d

    .line 500
    :cond_26
    :goto_16
    if-eqz v13, :cond_27

    .line 491
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_17

    .line 500
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object v2, v6

    .line 491
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_17
    and-int/lit8 v6, v15, 0x4

    const/4 v13, 0x6

    if-eqz v6, :cond_28

    .line 492
    sget-object v6, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    move-object/from16 p1, v2

    const/4 v2, 0x2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v6, v3, v1, v13, v2}, Landroidx/compose/material/DrawerKt;->rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    move-result-object v2

    .end local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    .local v2, "drawerState":Landroidx/compose/material/DrawerState;
    and-int/lit16 v0, v0, -0x381

    goto :goto_18

    .line 491
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    :cond_28
    move-object/from16 p1, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    move-object v2, v7

    .line 492
    .end local p2    # "drawerState":Landroidx/compose/material/DrawerState;
    .local v2, "drawerState":Landroidx/compose/material/DrawerState;
    :goto_18
    if-eqz v8, :cond_29

    .line 493
    const/4 v6, 0x1

    .end local p3    # "gesturesEnabled":Z
    .local v6, "gesturesEnabled":Z
    goto :goto_19

    .line 492
    .end local v6    # "gesturesEnabled":Z
    .restart local p3    # "gesturesEnabled":Z
    :cond_29
    move v6, v9

    .line 493
    .end local p3    # "gesturesEnabled":Z
    .restart local v6    # "gesturesEnabled":Z
    :goto_19
    and-int/lit8 v7, v15, 0x10

    if-eqz v7, :cond_2a

    .line 494
    sget-object v7, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v7, v1, v13}, Landroidx/compose/material/DrawerDefaults;->getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v7, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    and-int v0, v0, v19

    goto :goto_1a

    .line 493
    .end local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :cond_2a
    move-object v7, v10

    .line 494
    .end local p4    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    :goto_1a
    if-eqz v11, :cond_2b

    .line 495
    sget-object v8, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v8}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    move-result v8

    .end local p5    # "drawerElevation":F
    .local v8, "drawerElevation":F
    goto :goto_1b

    .line 494
    .end local v8    # "drawerElevation":F
    .restart local p5    # "drawerElevation":F
    :cond_2b
    move v8, v12

    .line 495
    .end local p5    # "drawerElevation":F
    .restart local v8    # "drawerElevation":F
    :goto_1b
    and-int/lit8 v9, v15, 0x40

    if-eqz v9, :cond_2c

    .line 496
    sget-object v9, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v9, v1, v13}, Landroidx/compose/material/DrawerDefaults;->getBackgroundColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p6    # "drawerBackgroundColor":J
    .local v4, "drawerBackgroundColor":J
    and-int v0, v0, v18

    :cond_2c
    and-int/lit16 v9, v15, 0x80

    if-eqz v9, :cond_2d

    .line 497
    shr-int/lit8 v9, v0, 0x12

    and-int/lit8 v9, v9, 0xe

    invoke-static {v4, v5, v1, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    .end local p8    # "drawerContentColor":J
    .local v9, "drawerContentColor":J
    and-int v0, v0, v17

    goto :goto_1c

    .line 496
    .end local v9    # "drawerContentColor":J
    .restart local p8    # "drawerContentColor":J
    :cond_2d
    move-wide/from16 v9, p8

    .line 497
    .end local p8    # "drawerContentColor":J
    .restart local v9    # "drawerContentColor":J
    :goto_1c
    and-int/lit16 v11, v15, 0x100

    if-eqz v11, :cond_2e

    .line 498
    sget-object v11, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v11, v1, v13}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    .end local p10    # "scrimColor":J
    .local v11, "scrimColor":J
    and-int v0, v0, v20

    move-object/from16 v17, v2

    move-wide/from16 v23, v4

    move/from16 v18, v6

    move-object/from16 v22, v7

    move/from16 v27, v8

    move-wide/from16 v25, v9

    move-wide/from16 v20, v11

    move-object/from16 v6, p1

    goto :goto_1d

    .line 497
    .end local v11    # "scrimColor":J
    .restart local p10    # "scrimColor":J
    :cond_2e
    move-wide/from16 v20, p10

    move-object/from16 v17, v2

    move-wide/from16 v23, v4

    move/from16 v18, v6

    move-object/from16 v22, v7

    move/from16 v27, v8

    move-wide/from16 v25, v9

    move-object/from16 v6, p1

    .line 498
    .end local v2    # "drawerState":Landroidx/compose/material/DrawerState;
    .end local v4    # "drawerBackgroundColor":J
    .end local v7    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v8    # "drawerElevation":F
    .end local v9    # "drawerContentColor":J
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p10    # "scrimColor":J
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "drawerState":Landroidx/compose/material/DrawerState;
    .local v18, "gesturesEnabled":Z
    .local v20, "scrimColor":J
    .local v22, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v23, "drawerBackgroundColor":J
    .local v25, "drawerContentColor":J
    .local v27, "drawerElevation":F
    :goto_1d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 500
    const/4 v2, -0x1

    const-string/jumbo v4, "androidx.compose.material.ModalDrawer (Drawer.kt:499)"

    const v5, 0x4dd50861    # 4.46762016E8f

    invoke-static {v5, v0, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2f
    nop

    .line 501
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v4, 0x0

    .line 930
    .local v4, "$i$f$rememberCoroutineScope":I
    const v5, 0x2e20b340

    const-string v7, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 931
    nop

    .line 933
    move-object v5, v1

    .line 934
    .local v5, "composer$iv":Landroidx/compose/runtime/Composer;
    const v7, -0x38e26dd0

    const-string v8, "CC(remember):Effects.kt#9igjgp"

    invoke-static {v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv$iv":Z
    move-object v8, v1

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 935
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 936
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_30

    .line 937
    const/4 v12, 0x0

    .line 938
    .local v12, "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 939
    const/4 v13, 0x0

    .line 940
    .local v13, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 939
    .end local v13    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v13, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    .line 938
    new-instance v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v3, v13}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 937
    .end local v12    # "$i$a$-cache-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 941
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 942
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_1e

    .line 943
    :cond_30
    move-object v3, v10

    .line 936
    :goto_1e
    nop

    .line 935
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 934
    .end local v7    # "invalid$iv$iv":Z
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .local v3, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 944
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v19

    .line 930
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 944
    nop

    .line 501
    .end local v2    # "$changed$iv":I
    .end local v3    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v4    # "$i$f$rememberCoroutineScope":I
    .end local v5    # "composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 502
    .local v19, "scope":Lkotlinx/coroutines/CoroutineScope;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v16, Landroidx/compose/material/DrawerKt$ModalDrawer$1;

    move-object/from16 v29, p0

    move-object/from16 v28, p12

    invoke-direct/range {v16 .. v29}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;-><init>(Landroidx/compose/material/DrawerState;ZLkotlinx/coroutines/CoroutineScope;JLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v4, v16

    const/16 v5, 0x36

    const v7, 0x30ad78b7

    invoke-static {v7, v3, v4, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/16 v4, 0xc00

    const/4 v5, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p5, v1

    move-object/from16 p1, v2

    move-object/from16 p4, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p2, v7

    move/from16 p3, v8

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local p5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v16, p5

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 590
    .end local v19    # "scope":Lkotlinx/coroutines/CoroutineScope;
    :cond_31
    move-object v2, v6

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-wide/from16 v11, v20

    move-object/from16 v5, v22

    move-wide/from16 v7, v23

    move-wide/from16 v9, v25

    move/from16 v6, v27

    move/from16 v17, v0

    .end local v0    # "$dirty":I
    .end local v18    # "gesturesEnabled":Z
    .end local v20    # "scrimColor":J
    .end local v22    # "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .end local v23    # "drawerBackgroundColor":J
    .end local v25    # "drawerContentColor":J
    .end local v27    # "drawerElevation":F
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "drawerState":Landroidx/compose/material/DrawerState;
    .local v4, "gesturesEnabled":Z
    .local v5, "drawerShape":Landroidx/compose/ui/graphics/Shape;
    .local v6, "drawerElevation":F
    .local v7, "drawerBackgroundColor":J
    .local v9, "drawerContentColor":J
    .local v11, "scrimColor":J
    .local v17, "$dirty":I
    :goto_1f
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object v1, v0

    new-instance v0, Landroidx/compose/material/DrawerKt$ModalDrawer$2;

    move-object/from16 v13, p12

    move-object/from16 v30, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method

.method private static final Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p0, "open"    # Z
    .param p1, "onClose"    # Lkotlin/jvm/functions/Function0;
    .param p2, "fraction"    # Lkotlin/jvm/functions/Function0;
    .param p3, "color"    # J
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 829
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    const v0, 0x763856e6

    move-object/from16 v7, p5

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v8, "C(Scrim)P(3,2,1,0:c#ui.graphics.Color)829@31020L30,845@31464L51,841@31373L142:Drawer.kt#jmzs0o"

    invoke-static {v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v8, p6

    .local v8, "$dirty":I
    and-int/lit8 v9, v6, 0x6

    if-nez v9, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v8, v9

    :cond_1
    and-int/lit8 v9, v6, 0x30

    const/16 v10, 0x20

    if-nez v9, :cond_3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v8, v9

    :cond_3
    and-int/lit16 v9, v6, 0x180

    if-nez v9, :cond_5

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_2

    :cond_4
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    and-int/lit16 v9, v6, 0xc00

    if-nez v9, :cond_7

    invoke-interface {v7, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_3

    :cond_6
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v8, v9

    :cond_7
    and-int/lit16 v9, v8, 0x493

    const/16 v13, 0x492

    if-ne v9, v13, :cond_9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    .line 849
    :cond_8
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 829
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, -0x1

    const-string/jumbo v13, "androidx.compose.material.Scrim (Drawer.kt:828)"

    invoke-static {v0, v8, v9, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 830
    :cond_a
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    move-result v0

    const/4 v9, 0x6

    invoke-static {v0, v7, v9}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "closeDrawer":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v13, "CC(remember):Drawer.kt#9igjgp"

    if-eqz v1, :cond_11

    const v14, 0x1d11c446

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v14, "832@31139L35,833@31223L108"

    invoke-static {v7, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 832
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 833
    const v11, 0x4b42a923    # 1.2757283E7f

    invoke-static {v7, v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v11, v8, 0x70

    if-ne v11, v10, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    .local v11, "invalid$iv":Z
    :goto_5
    move-object/from16 v17, v7

    .local v17, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 995
    .local v18, "$i$f$cache":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 996
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_d

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v12, v15, :cond_c

    goto :goto_6

    .line 1000
    :cond_c
    move-object v10, v12

    move-object/from16 v15, v17

    goto :goto_7

    .line 997
    :cond_d
    :goto_6
    const/4 v15, 0x0

    .line 833
    .local v15, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    new-instance v10, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;

    invoke-direct {v10, v2, v9}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 997
    .end local v15    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$1":I
    nop

    .line 998
    .local v10, "value$iv":Ljava/lang/Object;
    move-object/from16 v15, v17

    .end local v17    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 999
    nop

    .line 996
    .end local v10    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 995
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 833
    .end local v11    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v14, v2, v10}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 834
    const v11, 0x4b42b3ec    # 1.2760044E7f

    invoke-static {v7, v11, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    and-int/lit8 v12, v8, 0x70

    const/16 v14, 0x20

    if-ne v12, v14, :cond_e

    const/4 v12, 0x1

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    or-int/2addr v11, v12

    .restart local v11    # "invalid$iv":Z
    move-object v12, v7

    .local v12, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 1001
    .local v14, "$i$f$cache":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1002
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_10

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v15, v9, :cond_f

    goto :goto_9

    .line 1006
    :cond_f
    move-object v1, v15

    goto :goto_a

    .line 1003
    :cond_10
    :goto_9
    const/4 v9, 0x0

    .line 834
    .local v9, "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    new-instance v1, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;

    invoke-direct {v1, v0, v2}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1003
    .end local v9    # "$i$a$-cache-DrawerKt$Scrim$dismissDrawer$2":I
    nop

    .line 1004
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1005
    nop

    .line 1002
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 1001
    .end local v15    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 834
    .end local v11    # "invalid$iv":Z
    .end local v12    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v9, 0x1

    invoke-static {v10, v9, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 831
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_b

    .line 838
    :cond_11
    const v1, 0x1d15906a

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 839
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 831
    :goto_b
    nop

    .line 843
    .local v1, "dismissDrawer":Landroidx/compose/ui/Modifier;
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 844
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 845
    invoke-interface {v9, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 846
    const v10, 0x4b42d1d3    # 1.2767699E7f

    invoke-static {v7, v10, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v10, v8, 0x1c00

    const/16 v12, 0x800

    if-ne v10, v12, :cond_12

    move v10, v11

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    :goto_c
    and-int/lit16 v12, v8, 0x380

    const/16 v13, 0x100

    if-ne v12, v13, :cond_13

    move v15, v11

    goto :goto_d

    :cond_13
    const/4 v15, 0x0

    :goto_d
    or-int/2addr v10, v15

    .local v10, "invalid$iv":Z
    move-object v11, v7

    .local v11, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 1007
    .local v12, "$i$f$cache":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1008
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v10, :cond_15

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v13, v15, :cond_14

    goto :goto_e

    .line 1012
    :cond_14
    move-object/from16 v16, v0

    move-object v0, v13

    goto :goto_f

    .line 1009
    :cond_15
    :goto_e
    const/4 v15, 0x0

    .line 846
    .local v15, "$i$a$-cache-DrawerKt$Scrim$1":I
    move-object/from16 v16, v0

    .end local v0    # "closeDrawer":Ljava/lang/String;
    .local v16, "closeDrawer":Ljava/lang/String;
    new-instance v0, Landroidx/compose/material/DrawerKt$Scrim$1$1;

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/material/DrawerKt$Scrim$1$1;-><init>(JLkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1009
    .end local v15    # "$i$a$-cache-DrawerKt$Scrim$1":I
    nop

    .line 1010
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1011
    nop

    .line 1008
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_f
    nop

    .line 1007
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 846
    .end local v10    # "invalid$iv":Z
    .end local v11    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 842
    const/4 v10, 0x0

    invoke-static {v9, v0, v7, v10}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 849
    .end local v1    # "dismissDrawer":Landroidx/compose/ui/Modifier;
    .end local v16    # "closeDrawer":Ljava/lang/String;
    :cond_16
    :goto_10
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v0, Landroidx/compose/material/DrawerKt$Scrim$2;

    move/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DrawerKt$Scrim$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JI)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "color"    # J
    .param p2, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p3, "visible"    # Z
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1
    .param p0, "state"    # Landroidx/compose/material/AnchoredDraggableState;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material/AnchoredDraggableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "open"    # Z
    .param p1, "onClose"    # Lkotlin/jvm/functions/Function0;
    .param p2, "fraction"    # Lkotlin/jvm/functions/Function0;
    .param p3, "color"    # J
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/DrawerKt;->Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$calculateFraction(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/DrawerKt;->calculateFraction(FFF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic access$getDrawerPositionalThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerPositionalThreshold:F

    return v0
.end method

.method public static final synthetic access$getDrawerVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    return v0
.end method

.method public static final synthetic access$getEndDrawerPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    return v0
.end method

.method private static final calculateFraction(FFF)F
    .locals 7
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 786
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    .local v0, "$this$fastCoerceIn$iv":F
    const/4 v1, 0x0

    .local v1, "minimumValue$iv":F
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "maximumValue$iv":F
    const/4 v3, 0x0

    .line 960
    .local v3, "$i$f$fastCoerceIn":I
    move v4, v0

    .local v4, "$this$fastCoerceAtLeast$iv$iv":F
    const/4 v5, 0x0

    .line 967
    .local v5, "$i$f$fastCoerceAtLeast":I
    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    move v4, v1

    .line 960
    .end local v4    # "$this$fastCoerceAtLeast$iv$iv":F
    .end local v5    # "$i$f$fastCoerceAtLeast":I
    :cond_0
    nop

    .local v4, "$this$fastCoerceAtMost$iv$iv":F
    const/4 v5, 0x0

    .line 975
    .local v5, "$i$f$fastCoerceAtMost":I
    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    move v4, v2

    .line 960
    .end local v4    # "$this$fastCoerceAtMost$iv$iv":F
    .end local v5    # "$i$f$fastCoerceAtMost":I
    :cond_1
    nop

    .line 786
    .end local v0    # "$this$fastCoerceIn$iv":F
    .end local v1    # "minimumValue$iv":F
    .end local v2    # "maximumValue$iv":F
    .end local v3    # "$i$f$fastCoerceIn":I
    return v4
.end method

.method public static final rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;
    .locals 9
    .param p0, "initialValue"    # Landroidx/compose/material/BottomDrawerValue;
    .param p1, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomDrawerState;"
        }
    .end annotation

    .line 448
    const v0, 0x580ed4b9

    const-string v1, "C(rememberBottomDrawerState)P(2,1)448@15797L7,452@15941L91,449@15816L216:Drawer.kt#jmzs0o"

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 446
    sget-object v1, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;

    move-object p1, v1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    const/4 v1, 0x4

    and-int/2addr p5, v1

    if-eqz p5, :cond_1

    .line 447
    sget-object p5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {p5}, Landroidx/compose/material/DrawerDefaults;->getAnimationSpec()Landroidx/compose/animation/core/TweenSpec;

    move-result-object p5

    move-object p2, p5

    check-cast p2, Landroidx/compose/animation/core/AnimationSpec;

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 448
    const/4 p5, -0x1

    const-string/jumbo v2, "androidx.compose.material.rememberBottomDrawerState (Drawer.kt:447)"

    invoke-static {v0, p4, p5, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 449
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p5

    check-cast p5, Landroidx/compose/runtime/CompositionLocal;

    .local p5, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v2, 0x0

    .line 923
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p3, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 449
    .end local v0    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    .end local p5    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p5, v3

    check-cast p5, Landroidx/compose/ui/unit/Density;

    .line 451
    .local p5, "density":Landroidx/compose/ui/unit/Density;
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v2

    .line 452
    sget-object v0, Landroidx/compose/material/BottomDrawerState;->Companion:Landroidx/compose/material/BottomDrawerState$Companion;

    invoke-virtual {v0, p5, p1, p2}, Landroidx/compose/material/BottomDrawerState$Companion;->Saver(Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .line 453
    const v0, -0x765560a3

    const-string v4, "CC(remember):Drawer.kt#9igjgp"

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

    and-int/lit8 v1, p4, 0x70

    xor-int/lit8 v1, v1, 0x30

    const/16 v6, 0x20

    if-le v1, v6, :cond_6

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    and-int/lit8 v1, p4, 0x30

    if-ne v1, v6, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    or-int/2addr v0, v4

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, p3

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 924
    .local v4, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 925
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_a

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_9

    goto :goto_1

    .line 929
    :cond_9
    move-object v8, v5

    goto :goto_2

    .line 926
    :cond_a
    :goto_1
    const/4 v7, 0x0

    .line 453
    .local v7, "$i$a$-cache-DrawerKt$rememberBottomDrawerState$2":I
    new-instance v8, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2$1;

    invoke-direct {v8, p0, p5, p1, p2}, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2$1;-><init>(Landroidx/compose/material/BottomDrawerValue;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/AnimationSpec;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 926
    .end local v7    # "$i$a$-cache-DrawerKt$rememberBottomDrawerState$2":I
    nop

    .line 927
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 928
    nop

    .line 925
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 924
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 453
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 450
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v6, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v2 .. v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/material/BottomDrawerState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 448
    :cond_b
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 450
    return-object p3
.end method

.method public static final rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;
    .locals 8
    .param p0, "initialValue"    # Landroidx/compose/material/DrawerValue;
    .param p1, "confirmStateChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/DrawerState;"
        }
    .end annotation

    .line 429
    const v0, -0x5595b3b5

    const-string v1, "C(rememberDrawerState)P(1)429@15122L61,429@15058L125:Drawer.kt#jmzs0o"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 428
    sget-object p4, Landroidx/compose/material/DrawerKt$rememberDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberDrawerState$1;

    move-object p1, p4

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 429
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.material.rememberDrawerState (Drawer.kt:428)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    .line 430
    sget-object v1, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    invoke-virtual {v1, p1}, Landroidx/compose/material/DrawerState$Companion;->Saver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const v2, -0x1f4534f6

    const-string v3, "CC(remember):Drawer.kt#9igjgp"

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-le v2, v4, :cond_2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    and-int/lit8 v2, p3, 0x6

    if-ne v2, v4, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, p4

    :goto_0
    and-int/lit8 v4, p3, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-le v4, v5, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    and-int/lit8 v4, p3, 0x30

    if-ne v4, v5, :cond_7

    :cond_6
    move p4, v3

    :cond_7
    or-int/2addr p4, v2

    .local p4, "invalid$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 917
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 918
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez p4, :cond_9

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_8

    goto :goto_1

    .line 922
    :cond_8
    move-object v7, v4

    goto :goto_2

    .line 919
    :cond_9
    :goto_1
    const/4 v6, 0x0

    .line 430
    .local v6, "$i$a$-cache-DrawerKt$rememberDrawerState$2":I
    new-instance v7, Landroidx/compose/material/DrawerKt$rememberDrawerState$2$1;

    invoke-direct {v7, p0, p1}, Landroidx/compose/material/DrawerKt$rememberDrawerState$2$1;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 919
    .end local v6    # "$i$a$-cache-DrawerKt$rememberDrawerState$2":I
    nop

    .line 920
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 921
    nop

    .line 918
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 917
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 430
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    .end local p4    # "invalid$iv":Z
    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x0

    move-object v4, p2

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/material/DrawerState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 429
    :cond_a
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 430
    return-object p2
.end method
