.class public final Landroidx/compose/material/MenuKt;
.super Ljava/lang/Object;
.source "Menu.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,302:1\n1967#2:303\n1964#2:304\n1882#2,7:305\n1967#2:312\n1964#2:313\n1882#2,7:314\n1223#3,6:321\n98#4:327\n95#4,6:328\n101#4:362\n105#4:366\n78#5,6:334\n85#5,4:349\n89#5,2:359\n93#5:365\n368#6,9:340\n377#6:361\n378#6,2:363\n4032#7,6:353\n81#8:367\n81#8:368\n148#9:369\n148#9:370\n148#9:371\n148#9:372\n148#9:373\n148#9:374\n148#9:375\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt\n*L\n69#1:303\n69#1:304\n69#1:305,7\n95#1:312\n95#1:313\n95#1:314,7\n115#1:321,6\n143#1:327\n143#1:328,6\n143#1:362\n143#1:366\n143#1:334,6\n143#1:349,4\n143#1:359,2\n143#1:365\n143#1:340,9\n143#1:361\n143#1:363,2\n143#1:353,6\n69#1:367\n95#1:368\n185#1:369\n186#1:370\n187#1:371\n188#1:372\n189#1:373\n190#1:374\n191#1:375\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\u001aY\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u0002\u0008\u001fH\u0001\u00a2\u0006\u0002\u0010 \u001ac\u0010!\u001a\u00020\u00102\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00100#2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010$\u001a\u00020\u00132\u0008\u0008\u0002\u0010%\u001a\u00020&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\u001c\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00100\u001c\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u0002\u0008\u001fH\u0001\u00a2\u0006\u0002\u0010*\u001a\u001d\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0000\u00a2\u0006\u0002\u0010/\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u0006\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u000e\u0010\t\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u000b\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u000c\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0002\u001a\u0004\u0008\r\u0010\u0008\"\u000e\u0010\u000e\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u00060\u00b2\u0006\n\u00101\u001a\u000202X\u008a\u0084\u0002\u00b2\u0006\n\u00103\u001a\u000202X\u008a\u0084\u0002"
    }
    d2 = {
        "DropdownMenuItemDefaultMaxWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "DropdownMenuItemDefaultMinHeight",
        "DropdownMenuItemDefaultMinWidth",
        "DropdownMenuItemHorizontalPadding",
        "DropdownMenuVerticalPadding",
        "getDropdownMenuVerticalPadding",
        "()F",
        "InTransitionDuration",
        "",
        "MenuElevation",
        "MenuVerticalMargin",
        "getMenuVerticalMargin",
        "OutTransitionDuration",
        "DropdownMenuContent",
        "",
        "expandedStates",
        "Landroidx/compose/animation/core/MutableTransitionState;",
        "",
        "transformOriginState",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "DropdownMenuItemContent",
        "onClick",
        "Lkotlin/Function0;",
        "enabled",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "calculateTransformOrigin",
        "parentBounds",
        "Landroidx/compose/ui/unit/IntRect;",
        "menuBounds",
        "(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J",
        "material_release",
        "scale",
        "",
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
.field private static final DropdownMenuItemDefaultMaxWidth:F

.field private static final DropdownMenuItemDefaultMinHeight:F

.field private static final DropdownMenuItemDefaultMinWidth:F

.field private static final DropdownMenuItemHorizontalPadding:F

.field private static final DropdownMenuVerticalPadding:F

.field public static final InTransitionDuration:I = 0x78

.field private static final MenuElevation:F

.field private static final MenuVerticalMargin:F

.field public static final OutTransitionDuration:I = 0x4b


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 185
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 369
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 185
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->MenuElevation:F

    .line 186
    const/16 v0, 0x30

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 370
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 186
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->MenuVerticalMargin:F

    .line 187
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 371
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 187
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemHorizontalPadding:F

    .line 188
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 372
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 188
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuVerticalPadding:F

    .line 189
    const/16 v0, 0x70

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 373
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 189
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    .line 190
    const/16 v0, 0x118

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 374
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 190
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    .line 191
    const/16 v0, 0x30

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 375
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 191
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinHeight:F

    return-void
.end method

.method public static final DropdownMenuContent(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "expandedStates"    # Landroidx/compose/animation/core/MutableTransitionState;
    .param p1, "transformOriginState"    # Landroidx/compose/runtime/MutableState;
    .param p2, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;",
            "Landroidx/compose/foundation/ScrollState;",
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

    .line 65
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    const v0, 0x19ef3fd5

    move-object/from16 v4, p5

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(DropdownMenuContent)P(1,4,3,2)66@2778L50,68@2858L666,94@3554L477,114@4084L153,121@4279L248,113@4036L491:Menu.kt#jmzs0o"

    invoke-static {v13, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p6

    .local v4, "$dirty":I
    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v4, v4, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v7, v6, 0x6

    if-nez v7, :cond_3

    and-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :cond_1
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    :goto_1
    or-int/2addr v4, v7

    :cond_3
    :goto_2
    and-int/lit8 v7, p7, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v4, v4, 0x30

    goto :goto_4

    :cond_4
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_6

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_3

    :cond_5
    const/16 v7, 0x10

    :goto_3
    or-int/2addr v4, v7

    :cond_6
    :goto_4
    and-int/lit8 v7, p7, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0x180

    goto :goto_6

    :cond_7
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_9

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_5

    :cond_8
    const/16 v7, 0x80

    :goto_5
    or-int/2addr v4, v7

    :cond_9
    :goto_6
    and-int/lit8 v7, p7, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v4, v4, 0xc00

    move-object/from16 v8, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v8, v6, 0xc00

    if-nez v8, :cond_c

    move-object/from16 v8, p3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_7

    :cond_b
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v4, v9

    goto :goto_8

    :cond_c
    move-object/from16 v8, p3

    :goto_8
    and-int/lit8 v9, p7, 0x10

    if-eqz v9, :cond_d

    or-int/lit16 v4, v4, 0x6000

    goto :goto_a

    :cond_d
    and-int/lit16 v9, v6, 0x6000

    if-nez v9, :cond_f

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_9

    :cond_e
    const/16 v9, 0x2000

    :goto_9
    or-int/2addr v4, v9

    :cond_f
    :goto_a
    and-int/lit16 v9, v4, 0x2493

    const/16 v10, 0x2492

    if-ne v9, v10, :cond_11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_b

    .line 131
    :cond_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v25, v4

    move-object v4, v8

    goto/16 :goto_17

    .line 65
    :cond_11
    :goto_b
    if-eqz v7, :cond_12

    .line 63
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    move-object v8, v7

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_13

    .line 65
    const-string/jumbo v7, "androidx.compose.material.DropdownMenuContent (Menu.kt:64)"

    invoke-static {v0, v4, v9, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 67
    :cond_13
    move-object v0, v1

    check-cast v0, Landroidx/compose/animation/core/TransitionState;

    sget v7, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 v7, v7, 0x30

    and-int/lit8 v10, v4, 0xe

    or-int/2addr v7, v10

    const/4 v10, 0x0

    const-string v11, "DropDownMenu"

    invoke-static {v0, v11, v13, v7, v10}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 69
    .local v0, "transition":Landroidx/compose/animation/core/Transition;
    sget-object v7, Landroidx/compose/material/MenuKt$DropdownMenuContent$scale$2;->INSTANCE:Landroidx/compose/material/MenuKt$DropdownMenuContent$scale$2;

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .local v7, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .local v16, "$changed$iv":I
    move-object/from16 v17, v0

    .local v17, "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const/16 v18, 0x0

    .line 303
    .local v18, "$i$f$animateFloat":I
    const v10, -0x4fcbfb15

    const-string v11, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli"

    invoke-static {v13, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 304
    const-string v12, "FloatAnimation"

    .line 303
    .local v12, "label$iv":Ljava/lang/String;
    sget-object v10, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v10}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v11

    .local v11, "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v10, v16, 0xe

    shl-int/lit8 v14, v16, 0x3

    and-int/lit16 v14, v14, 0x380

    or-int/2addr v10, v14

    shl-int/lit8 v14, v16, 0x3

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v10, v14

    shl-int/lit8 v14, v16, 0x3

    const v19, 0xe000

    and-int v14, v14, v19

    or-int/2addr v10, v14

    .local v10, "$changed$iv$iv":I
    move-object/from16 v14, v17

    .local v14, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v20, v10

    .end local v10    # "$changed$iv$iv":I
    .local v20, "$changed$iv$iv":I
    const/16 v21, 0x0

    .line 305
    .local v21, "$i$f$animateValue":I
    const v10, -0x880d1ef

    const-string v15, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli"

    invoke-static {v13, v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 307
    invoke-virtual {v14}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    shr-int/lit8 v15, v20, 0x9

    and-int/lit8 v15, v15, 0x70

    .local v15, "$changed":I
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .local v10, "it":Z
    move-object/from16 p3, v13

    .local p3, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .local v22, "$i$a$-animateFloat-MenuKt$DropdownMenuContent$scale$3":I
    const v9, 0x628098f1

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "transition":Landroidx/compose/animation/core/Transition;
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "C:Menu.kt#jmzs0o"

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 86
    move-object/from16 v24, v0

    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    const-string/jumbo v0, "androidx.compose.material.DropdownMenuContent.<anonymous> (Menu.kt:85)"

    move/from16 v25, v4

    const v1, 0x628098f1

    const/4 v4, -0x1

    .end local v4    # "$dirty":I
    .local v25, "$dirty":I
    invoke-static {v1, v15, v4, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_c

    .line 307
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$dirty":I
    .restart local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "$dirty":I
    :cond_14
    move-object/from16 v24, v0

    move/from16 v25, v4

    .line 86
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "$dirty":I
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$dirty":I
    :goto_c
    if-eqz v10, :cond_15

    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_d

    .line 91
    :cond_15
    const v1, 0x3f4ccccd    # 0.8f

    .line 86
    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v10    # "it":Z
    .end local v15    # "$changed":I
    .end local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$scale$3":I
    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 307
    nop

    .line 308
    .local v1, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v4

    shr-int/lit8 v10, v20, 0x9

    and-int/lit8 v10, v10, 0x70

    .local v10, "$changed":I
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .local v4, "it":Z
    move-object v15, v13

    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    const v0, 0x628098f1

    .restart local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$scale$3":I
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 86
    move-object/from16 p3, v1

    .end local v1    # "initialValue$iv$iv":Ljava/lang/Object;
    .local p3, "initialValue$iv$iv":Ljava/lang/Object;
    const-string/jumbo v1, "androidx.compose.material.DropdownMenuContent.<anonymous> (Menu.kt:85)"

    move/from16 v26, v4

    const/4 v4, -0x1

    .end local v4    # "it":Z
    .local v26, "it":Z
    invoke-static {v0, v10, v4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_e

    .line 308
    .end local v26    # "it":Z
    .end local p3    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v1    # "initialValue$iv$iv":Ljava/lang/Object;
    .restart local v4    # "it":Z
    :cond_17
    move-object/from16 p3, v1

    move/from16 v26, v4

    const/4 v4, -0x1

    .line 86
    .end local v1    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v4    # "it":Z
    .restart local v26    # "it":Z
    .restart local p3    # "initialValue$iv$iv":Ljava/lang/Object;
    :goto_e
    if-eqz v26, :cond_18

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f

    .line 91
    :cond_18
    const v0, 0x3f4ccccd    # 0.8f

    .line 86
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v10    # "$changed":I
    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$scale$3":I
    .end local v26    # "it":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 308
    nop

    .line 309
    .local v0, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v14}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v1

    shr-int/lit8 v10, v20, 0x3

    and-int/lit8 v10, v10, 0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v1, v13, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 311
    .local v10, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v1, v20, 0xe

    shl-int/lit8 v15, v20, 0x9

    and-int v15, v15, v19

    or-int/2addr v1, v15

    shl-int/lit8 v15, v20, 0x6

    const/high16 v22, 0x70000

    and-int v15, v15, v22

    or-int/2addr v1, v15

    move v15, v4

    move-object v4, v9

    move-object v9, v0

    move-object v0, v7

    move-object v7, v14

    move v14, v1

    move-object v1, v8

    move-object/from16 v8, p3

    .end local v14    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local p3    # "initialValue$iv$iv":Ljava/lang/Object;
    .local v0, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v8, "initialValue$iv$iv":Ljava/lang/Object;
    .local v9, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v14

    .line 305
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 311
    nop

    .line 303
    .end local v7    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v8    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v9    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v10    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v11    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v20    # "$changed$iv$iv":I
    .end local v21    # "$i$f$animateValue":I
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 69
    .end local v0    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v12    # "label$iv":Ljava/lang/String;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v18    # "$i$f$animateFloat":I
    move-object v0, v14

    .line 95
    .local v0, "scale$delegate":Landroidx/compose/runtime/State;
    sget-object v7, Landroidx/compose/material/MenuKt$DropdownMenuContent$alpha$2;->INSTANCE:Landroidx/compose/material/MenuKt$DropdownMenuContent$alpha$2;

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .local v7, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .restart local v16    # "$changed$iv":I
    move-object/from16 v17, v23

    .restart local v17    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    const/16 v18, 0x0

    .line 312
    .restart local v18    # "$i$f$animateFloat":I
    const v8, -0x4fcbfb15

    const-string v9, "CC(animateFloat)P(2)1966@80444L78:Transition.kt#pdpnli"

    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 313
    const-string v12, "FloatAnimation"

    .line 312
    .restart local v12    # "label$iv":Ljava/lang/String;
    sget-object v8, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v8}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v11

    .restart local v11    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v8, v16, 0xe

    shl-int/lit8 v9, v16, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int/2addr v8, v9

    shl-int/lit8 v9, v16, 0x3

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v8, v9

    shl-int/lit8 v9, v16, 0x3

    and-int v9, v9, v19

    or-int/2addr v8, v9

    .local v8, "$changed$iv$iv":I
    move-object/from16 v9, v17

    .local v9, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    move/from16 v20, v8

    .end local v8    # "$changed$iv$iv":I
    .restart local v20    # "$changed$iv$iv":I
    const/16 v21, 0x0

    .line 314
    .restart local v21    # "$i$f$animateValue":I
    const v8, -0x880d1ef

    const-string v10, "CC(animateValue)P(3,2)1883@77007L32,1884@77062L31,1885@77118L23,1887@77154L89:Transition.kt#pdpnli"

    invoke-static {v13, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 316
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v8

    shr-int/lit8 v10, v20, 0x9

    and-int/lit8 v10, v10, 0x70

    .local v10, "$changed":I
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .local v8, "it":Z
    move-object v14, v13

    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .local v22, "$i$a$-animateFloat-MenuKt$DropdownMenuContent$alpha$3":I
    const v15, 0x17212f05

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 106
    const-string/jumbo v6, "androidx.compose.material.DropdownMenuContent.<anonymous> (Menu.kt:105)"

    move/from16 p3, v8

    const/4 v8, -0x1

    .end local v8    # "it":Z
    .local p3, "it":Z
    invoke-static {v15, v10, v8, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_10

    .line 316
    .end local p3    # "it":Z
    .restart local v8    # "it":Z
    :cond_1a
    move/from16 p3, v8

    .line 106
    .end local v8    # "it":Z
    .restart local p3    # "it":Z
    :goto_10
    if-eqz p3, :cond_1b

    .line 108
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_11

    .line 111
    :cond_1b
    const/4 v6, 0x0

    .line 106
    :goto_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v10    # "$changed":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$alpha$3":I
    .end local p3    # "it":Z
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 316
    nop

    .line 317
    .local v8, "initialValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v6

    shr-int/lit8 v10, v20, 0x9

    and-int/lit8 v10, v10, 0x70

    .restart local v10    # "$changed":I
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .local v6, "it":Z
    move-object v14, v13

    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .restart local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$alpha$3":I
    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 106
    const-string/jumbo v4, "androidx.compose.material.DropdownMenuContent.<anonymous> (Menu.kt:105)"

    move/from16 p3, v6

    const/4 v6, -0x1

    .end local v6    # "it":Z
    .restart local p3    # "it":Z
    invoke-static {v15, v10, v6, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_12

    .line 317
    .end local p3    # "it":Z
    .restart local v6    # "it":Z
    :cond_1d
    move/from16 p3, v6

    .line 106
    .end local v6    # "it":Z
    .restart local p3    # "it":Z
    :goto_12
    if-eqz p3, :cond_1e

    .line 108
    const/high16 v24, 0x3f800000    # 1.0f

    goto :goto_13

    .line 111
    :cond_1e
    const/4 v4, 0x0

    move/from16 v24, v4

    .line 106
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1f
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .end local v10    # "$changed":I
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-animateFloat-MenuKt$DropdownMenuContent$alpha$3":I
    .end local p3    # "it":Z
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 317
    nop

    .line 318
    .local v4, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v6

    shr-int/lit8 v10, v20, 0x3

    and-int/lit8 v10, v10, 0x70

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v6, v13, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 320
    .local v10, "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v6, v20, 0xe

    shl-int/lit8 v14, v20, 0x9

    and-int v14, v14, v19

    or-int/2addr v6, v14

    const/high16 v14, 0x70000

    shl-int/lit8 v15, v20, 0x6

    and-int/2addr v14, v15

    or-int/2addr v14, v6

    move-object/from16 v27, v9

    move-object v9, v4

    move-object v4, v7

    move-object/from16 v7, v27

    .local v4, "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .local v7, "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .local v9, "targetValue$iv$iv":Ljava/lang/Object;
    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 314
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 320
    nop

    .line 312
    .end local v7    # "$this$animateValue$iv$iv":Landroidx/compose/animation/core/Transition;
    .end local v8    # "initialValue$iv$iv":Ljava/lang/Object;
    .end local v9    # "targetValue$iv$iv":Ljava/lang/Object;
    .end local v10    # "animationSpec$iv$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v11    # "typeConverter$iv$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v20    # "$changed$iv$iv":I
    .end local v21    # "$i$f$animateValue":I
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 95
    .end local v4    # "transitionSpec$iv":Lkotlin/jvm/functions/Function3;
    .end local v12    # "label$iv":Ljava/lang/String;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$this$animateFloat$iv":Landroidx/compose/animation/core/Transition;
    .end local v18    # "$i$f$animateFloat":I
    nop

    .line 115
    .local v6, "alpha$delegate":Landroidx/compose/runtime/State;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const v7, 0x27d44dfc

    const-string v8, "CC(remember):Menu.kt#9igjgp"

    invoke-static {v13, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    and-int/lit8 v8, v25, 0x70

    const/4 v9, 0x1

    const/16 v10, 0x20

    if-ne v8, v10, :cond_20

    move v8, v9

    goto :goto_14

    :cond_20
    const/4 v8, 0x0

    :goto_14
    or-int/2addr v7, v8

    .local v7, "invalid$iv":Z
    move-object v8, v13

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 321
    .local v10, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 322
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_22

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v11, v14, :cond_21

    goto :goto_15

    .line 326
    :cond_21
    move-object v15, v11

    goto :goto_16

    .line 323
    :cond_22
    :goto_15
    const/4 v14, 0x0

    .line 115
    .local v14, "$i$a$-cache-MenuKt$DropdownMenuContent$1":I
    new-instance v15, Landroidx/compose/material/MenuKt$DropdownMenuContent$1$1;

    invoke-direct {v15, v2, v0, v6}, Landroidx/compose/material/MenuKt$DropdownMenuContent$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 323
    .end local v14    # "$i$a$-cache-MenuKt$DropdownMenuContent$1":I
    nop

    .line 324
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 325
    nop

    .line 322
    .end local v15    # "value$iv":Ljava/lang/Object;
    :goto_16
    nop

    .line 321
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 115
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v4, v15}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 121
    sget v14, Landroidx/compose/material/MenuKt;->MenuElevation:F

    .line 122
    new-instance v4, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;

    invoke-direct {v4, v1, v3, v5}, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;)V

    const/16 v8, 0x36

    const v10, 0x356116d2

    invoke-static {v10, v9, v4, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 114
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v24, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    const/high16 v17, 0x1b0000

    const/16 v18, 0x1e

    move-object/from16 v16, v24

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v7 .. v18}, Landroidx/compose/material/CardKt;->Card-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, v16

    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 131
    .end local v0    # "scale$delegate":Landroidx/compose/runtime/State;
    .end local v6    # "alpha$delegate":Landroidx/compose/runtime/State;
    .end local v23    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_23
    move-object v4, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :goto_17
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_24

    new-instance v0, Landroidx/compose/material/MenuKt$DropdownMenuContent$3;

    move-object/from16 v1, p0

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/MenuKt$DropdownMenuContent$3;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_24
    return-void
.end method

.method private static final DropdownMenuContent$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 4
    .param p0, "$scale$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 367
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

    .line 69
    return v0
.end method

.method private static final DropdownMenuContent$lambda$3(Landroidx/compose/runtime/State;)F
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

    .line 95
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 368
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

    .line 95
    return v0
.end method

.method public static final DropdownMenuItemContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "enabled"    # Z
    .param p3, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p4, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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

    .line 141
    move-object/from16 v6, p5

    move/from16 v7, p7

    const v0, 0x5319143

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DropdownMenuItemContent)P(5,4,2,1,3)148@5150L36,142@4939L1012:Menu.kt#jmzs0o"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v7, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v7, 0x30

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_8

    move/from16 v8, p2

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    goto :goto_5

    :cond_8
    move/from16 v8, p2

    :goto_5
    and-int/lit8 v9, p8, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v10, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v7, 0xc00

    if-nez v10, :cond_b

    move-object/from16 v10, p3

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v1, v11

    goto :goto_7

    :cond_b
    move-object/from16 v10, p3

    :goto_7
    and-int/lit8 v11, p8, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v7, 0x6000

    if-nez v13, :cond_e

    move-object/from16 v13, p4

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p8, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v15

    goto :goto_b

    :cond_f
    and-int v14, v7, v15

    if-nez v14, :cond_11

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    :cond_11
    :goto_b
    const v14, 0x12493

    and-int/2addr v14, v1

    const v15, 0x12492

    if-ne v14, v15, :cond_13

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_c

    .line 169
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 p6, v1

    move-object v2, v4

    move-object v4, v10

    move-object v5, v13

    move v3, v8

    goto/16 :goto_14

    .line 141
    :cond_13
    :goto_c
    if-eqz v3, :cond_14

    .line 136
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_d

    .line 141
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_14
    move-object v3, v4

    .line 136
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_d
    if-eqz v5, :cond_15

    .line 137
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local p2    # "enabled":Z
    .local v4, "enabled":Z
    goto :goto_e

    .line 136
    .end local v4    # "enabled":Z
    .restart local p2    # "enabled":Z
    :cond_15
    move/from16 v16, v8

    .line 137
    .end local p2    # "enabled":Z
    .local v16, "enabled":Z
    :goto_e
    if-eqz v9, :cond_16

    .line 138
    sget-object v4, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/MenuDefaults;->getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_f

    .line 137
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_16
    move-object v4, v10

    .line 138
    .end local p3    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_f
    if-eqz v11, :cond_17

    .line 139
    const/4 v5, 0x0

    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_10

    .line 138
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_17
    move-object v5, v13

    .line 139
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_10
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 141
    const/4 v8, -0x1

    const-string/jumbo v9, "androidx.compose.material.DropdownMenuItemContent (Menu.kt:140)"

    invoke-static {v0, v1, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 149
    :cond_18
    const/4 v13, 0x6

    const/4 v14, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/compose/material/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v15

    .line 144
    nop

    .line 148
    nop

    .line 149
    nop

    .line 146
    nop

    .line 145
    nop

    .line 147
    nop

    .line 145
    const/16 v20, 0x18

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object v13, v3

    move-object v14, v5

    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static/range {v13 .. v21}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 151
    move/from16 v8, v16

    .end local v16    # "enabled":Z
    .local v8, "enabled":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v2, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 154
    sget v16, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    .line 155
    sget v18, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    .line 156
    sget v17, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinHeight:F

    .line 151
    nop

    .line 154
    nop

    .line 156
    nop

    .line 155
    nop

    .line 153
    const/16 v20, 0x8

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 158
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 159
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    .line 143
    nop

    .local v2, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v3, 0x180

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v3, "$changed$iv":I
    const/4 v9, 0x0

    .line 327
    .local v9, "$i$f$Row":I
    const v10, 0x2952b718

    const-string v11, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo"

    invoke-static {v12, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 328
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v10

    .line 332
    .local v10, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    shr-int/lit8 v11, v3, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v15, v3, 0x3

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v11, v15

    invoke-static {v10, v2, v12, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v15, v3, 0x3

    and-int/lit8 v15, v15, 0x70

    .line 333
    nop

    .local v15, "$changed$iv$iv":I
    const/16 v16, 0x0

    .line 334
    .local v16, "$i$f$Layout":I
    const v5, -0x4ee9b9da

    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .local p6, "$dirty":I
    const-string v1, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 335
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    .line 336
    .local v1, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 337
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p2, v1

    .end local v1    # "compositeKeyHash$iv$iv":I
    .local p2, "compositeKeyHash$iv$iv":I
    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 339
    .local v1, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    move-object/from16 p3, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p3, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v15, 0x6

    and-int/lit16 v0, v0, 0x380

    move/from16 v18, v0

    const/4 v0, 0x6

    or-int/lit8 v18, v18, 0x6

    .line 338
    nop

    .local v18, "$changed$iv$iv$iv":I
    move-object/from16 p4, v17

    .local p4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v17, 0x0

    .line 340
    .local v17, "$i$f$ReusableComposeNode":I
    move/from16 v19, v0

    const v0, -0x2942ffcf

    move-object/from16 v20, v2

    .end local v2    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v20, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const-string v2, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v12, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 341
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_19

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 342
    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 343
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 344
    move-object/from16 v0, p4

    .end local p4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    .line 346
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_1a
    move-object/from16 v0, p4

    .end local p4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 348
    :goto_11
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 349
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p4, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 350
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 353
    .local v22, "$i$f$set-impl":I
    move-object/from16 v23, v2

    .local v23, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 354
    .local v24, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_1c

    move/from16 v25, v3

    .end local v3    # "$changed$iv":I
    .local v25, "$changed$iv":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v4

    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v26, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    :cond_1b
    move-object/from16 v4, v23

    goto :goto_13

    .end local v25    # "$changed$iv":I
    .end local v26    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v3    # "$changed$iv":I
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_1c
    move/from16 v25, v3

    move-object/from16 v26, v4

    .line 355
    .end local v3    # "$changed$iv":I
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v25    # "$changed$iv":I
    .restart local v26    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v23

    .end local v23    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    :goto_13
    nop

    .line 353
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 358
    nop

    .line 359
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    nop

    .line 348
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 361
    shr-int/lit8 v0, v18, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v2, v12

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 362
    .local v3, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v4, -0x18505826

    move/from16 v21, v0

    .end local v0    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const-string v0, "C100@5047L9:Row.kt#2w3rfo"

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v4, v25, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/lit8 v4, v4, 0x6

    .local v4, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$DropdownMenuItemContent_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v22, v2

    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 161
    .local v23, "$i$a$-Row-MenuKt$DropdownMenuItemContent$1":I
    move-object/from16 v24, v1

    .end local v1    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v24, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const v1, 0x69c738bf

    move-object/from16 v27, v2

    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v27, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v2, "C160@5667L10,161@5725L220,161@5686L259:Menu.kt#jmzs0o"

    move/from16 v28, v3

    move-object/from16 v3, v22

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    .local v28, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 v2, v19

    invoke-virtual {v1, v3, v2}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v1

    .line 162
    .local v1, "typography":Landroidx/compose/material/Typography;
    invoke-virtual {v1}, Landroidx/compose/material/Typography;->getSubtitle1()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v19, v1

    .end local v1    # "typography":Landroidx/compose/material/Typography;
    .local v19, "typography":Landroidx/compose/material/Typography;
    new-instance v1, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$1$1;

    invoke-direct {v1, v8, v6, v0}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$1$1;-><init>(ZLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/RowScope;)V

    move-object/from16 v22, v0

    .end local v0    # "$this$DropdownMenuItemContent_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    .local v22, "$this$DropdownMenuItemContent_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    const/16 v0, 0x36

    move/from16 v29, v4

    .end local v4    # "$changed":I
    .local v29, "$changed":I
    const v4, 0x46f56d98

    move-object/from16 v30, v5

    const/4 v5, 0x1

    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v30, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v4, v5, v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x30

    invoke-static {v2, v0, v3, v1}, Landroidx/compose/material/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 161
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 168
    .end local v19    # "typography":Landroidx/compose/material/Typography;
    nop

    .line 362
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$this$DropdownMenuItemContent_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    .end local v23    # "$i$a$-Row-MenuKt$DropdownMenuItemContent$1":I
    .end local v29    # "$changed":I
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 361
    .end local v21    # "$changed$iv":I
    .end local v27    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 363
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 340
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 364
    nop

    .line 334
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v18    # "$changed$iv$iv$iv":I
    .end local p4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 365
    nop

    .line 327
    .end local v15    # "$changed$iv$iv":I
    .end local v16    # "$i$f$Layout":I
    .end local v24    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v30    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p2    # "compositeKeyHash$iv$iv":I
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 366
    nop

    .end local v9    # "$i$f$Row":I
    .end local v10    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v20    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v25    # "$changed$iv":I
    .end local p3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 169
    :cond_1d
    move-object v2, v13

    move-object v5, v14

    move-object/from16 v4, v26

    move v3, v8

    .end local v8    # "enabled":Z
    .end local v13    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v14    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v26    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "enabled":Z
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2;

    move-object/from16 v1, p0

    move/from16 v10, p6

    move/from16 v8, p8

    .end local p6    # "$dirty":I
    .local v10, "$dirty":I
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v10    # "$dirty":I
    .restart local p6    # "$dirty":I
    :cond_1e
    move/from16 v10, p6

    .end local p6    # "$dirty":I
    .restart local v10    # "$dirty":I
    :goto_15
    return-void
.end method

.method public static final synthetic access$DropdownMenuContent$lambda$1(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$scale$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/MenuKt;->DropdownMenuContent$lambda$1(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$DropdownMenuContent$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$alpha$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/MenuKt;->DropdownMenuContent$lambda$3(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDropdownMenuItemHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemHorizontalPadding:F

    return v0
.end method

.method public static final calculateTransformOrigin(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J
    .locals 5
    .param p0, "parentBounds"    # Landroidx/compose/ui/unit/IntRect;
    .param p1, "menuBounds"    # Landroidx/compose/ui/unit/IntRect;

    .line 201
    nop

    .line 202
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    if-gt v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 208
    add-int/2addr v0, v1

    .line 210
    nop

    .line 207
    div-int/lit8 v0, v0, 0x2

    .line 206
    nop

    .line 211
    .local v0, "intersectionCenter":I
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 201
    .end local v0    # "intersectionCenter":I
    :goto_0
    nop

    .line 214
    .local v1, "pivotX":F
    nop

    .line 215
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v4

    if-lt v0, v4, :cond_3

    move v2, v3

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v4

    if-gt v0, v4, :cond_4

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v0

    if-nez v0, :cond_5

    move v2, v3

    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 221
    add-int/2addr v0, v2

    .line 223
    nop

    .line 220
    div-int/lit8 v0, v0, 0x2

    .line 219
    nop

    .line 224
    .restart local v0    # "intersectionCenter":I
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 214
    .end local v0    # "intersectionCenter":I
    :goto_1
    nop

    .line 227
    .local v2, "pivotY":F
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v3

    return-wide v3
.end method

.method public static final getDropdownMenuVerticalPadding()F
    .locals 1

    .line 188
    sget v0, Landroidx/compose/material/MenuKt;->DropdownMenuVerticalPadding:F

    return v0
.end method

.method public static final getMenuVerticalMargin()F
    .locals 1

    .line 186
    sget v0, Landroidx/compose/material/MenuKt;->MenuVerticalMargin:F

    return v0
.end method
