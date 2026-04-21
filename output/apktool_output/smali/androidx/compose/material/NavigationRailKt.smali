.class public final Landroidx/compose/material/NavigationRailKt;
.super Ljava/lang/Object;
.source "NavigationRail.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,472:1\n77#2:473\n71#3:474\n69#3,5:475\n74#3:508\n78#3:512\n71#3:550\n68#3,6:551\n74#3:585\n78#3:589\n71#3:590\n68#3,6:591\n74#3:625\n78#3:629\n78#4,6:480\n85#4,4:495\n89#4,2:505\n93#4:511\n78#4:519\n76#4,8:520\n85#4,4:537\n89#4,2:547\n78#4,6:557\n85#4,4:572\n89#4,2:582\n93#4:588\n78#4,6:597\n85#4,4:612\n89#4,2:622\n93#4:628\n93#4:632\n368#5,9:486\n377#5:507\n378#5,2:509\n368#5,9:528\n377#5:549\n368#5,9:563\n377#5:584\n378#5,2:586\n368#5,9:603\n377#5:624\n378#5,2:626\n378#5,2:630\n4032#6,6:499\n4032#6,6:541\n4032#6,6:576\n4032#6,6:616\n1223#7,6:513\n81#8:633\n148#9:634\n148#9:635\n148#9:636\n148#9:637\n148#9:638\n148#9:639\n148#9:640\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt\n*L\n212#1:473\n231#1:474\n231#1:475,5\n231#1:508\n231#1:512\n331#1:550\n331#1:551,6\n331#1:585\n331#1:589\n333#1:590\n333#1:591,6\n333#1:625\n333#1:629\n231#1:480,6\n231#1:495,4\n231#1:505,2\n231#1:511\n329#1:519\n329#1:520,8\n329#1:537,4\n329#1:547,2\n331#1:557,6\n331#1:572,4\n331#1:582,2\n331#1:588\n333#1:597,6\n333#1:612,4\n333#1:622,2\n333#1:628\n329#1:632\n231#1:486,9\n231#1:507\n231#1:509,2\n329#1:528,9\n329#1:549\n331#1:563,9\n331#1:584\n331#1:586,2\n333#1:603,9\n333#1:624\n333#1:626,2\n329#1:630,2\n231#1:499,6\n329#1:541,6\n331#1:576,6\n333#1:616,6\n340#1:513,6\n297#1:633\n443#1:634\n448#1:635\n453#1:636\n459#1:637\n464#1:638\n469#1:639\n471#1:640\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0082\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00012 \u0008\u0002\u0010\u0016\u001a\u001a\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0019\u00a2\u0006\u0002\u0008\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e0\u0017\u00a2\u0006\u0002\u0008\u0019\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001az\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00012 \u0008\u0002\u0010\u0016\u001a\u001a\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u0019\u00a2\u0006\u0002\u0008\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e0\u0017\u00a2\u0006\u0002\u0008\u0019\u00a2\u0006\u0002\u0008\u001aH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a\u0090\u0001\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000e0$2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u000e0$\u00a2\u0006\u0002\u0008\u00192\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010&\u001a\u00020\"2\u0015\u0008\u0002\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010$\u00a2\u0006\u0002\u0008\u00192\u0008\u0008\u0002\u0010(\u001a\u00020\"2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0008\u0002\u0010+\u001a\u00020\u00132\u0008\u0008\u0002\u0010,\u001a\u00020\u0013H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001a?\u0010/\u001a\u00020\u000e2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u000e0$\u00a2\u0006\u0002\u0008\u00192\u0013\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010$\u00a2\u0006\u0002\u0008\u00192\u0008\u0008\u0001\u00100\u001a\u00020\u0007H\u0003\u00a2\u0006\u0002\u00101\u001aR\u00102\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"2&\u0010\u001b\u001a\"\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\u000e0\u0017\u00a2\u0006\u0002\u0008\u0019H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109\u001a&\u0010:\u001a\u00020;*\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010B\u001a8\u0010C\u001a\u00020;*\u00020<2\u0006\u0010D\u001a\u00020>2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0008\u0008\u0001\u00100\u001a\u00020\u0007H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010F\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\n\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G\u00b2\u0006\n\u00107\u001a\u00020\u0007X\u008a\u0084\u0002"
    }
    d2 = {
        "HeaderPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "ItemIconTopOffset",
        "ItemLabelBaselineBottomOffset",
        "NavigationRailAnimationSpec",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "NavigationRailItemCompactSize",
        "NavigationRailItemSize",
        "NavigationRailPadding",
        "ZeroInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "NavigationRail",
        "",
        "windowInsets",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "backgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "elevation",
        "header",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "content",
        "NavigationRail-afqeVBk",
        "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "NavigationRail-HsRjFd4",
        "(Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "NavigationRailItem",
        "selected",
        "",
        "onClick",
        "Lkotlin/Function0;",
        "icon",
        "enabled",
        "label",
        "alwaysShowLabel",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "selectedContentColor",
        "unselectedContentColor",
        "NavigationRailItem-0S3VyRs",
        "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V",
        "NavigationRailItemBaselineLayout",
        "iconPositionAnimationProgress",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V",
        "NavigationRailTransition",
        "activeColor",
        "inactiveColor",
        "Lkotlin/ParameterName;",
        "name",
        "animationProgress",
        "NavigationRailTransition-Klgx-Pg",
        "(JJZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V",
        "placeIcon",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "iconPlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "placeIcon-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "placeLabelAndIcon",
        "labelPlaceable",
        "placeLabelAndIcon-DIyivk0",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;",
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
.field private static final HeaderPadding:F

.field private static final ItemIconTopOffset:F

.field private static final ItemLabelBaselineBottomOffset:F

.field private static final NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final NavigationRailItemCompactSize:F

.field private static final NavigationRailItemSize:F

.field private static final NavigationRailPadding:F

.field private static final ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 435
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 436
    nop

    .line 435
    nop

    .line 437
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v3

    .line 435
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 443
    const/16 v0, 0x48

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 634
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 443
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 448
    const/16 v0, 0x38

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 635
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 448
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    .line 453
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 636
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 453
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    .line 459
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 637
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 459
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    .line 464
    const/16 v0, 0x10

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 638
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 464
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    .line 469
    const/16 v0, 0xe

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 639
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 469
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    .line 471
    const/4 v0, 0x0

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 640
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 471
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/NavigationRailKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method

.method public static final NavigationRail-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backgroundColor"    # J
    .param p3, "contentColor"    # J
    .param p5, "elevation"    # F
    .param p6, "header"    # Lkotlin/jvm/functions/Function3;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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

    .line 174
    move/from16 v9, p9

    const v0, 0x6ac00e83

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(NavigationRail)P(5,0:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.unit.Dp,4)168@7492L6,169@7534L32,174@7736L95:NavigationRail.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p9

    .local v2, "$dirty":I
    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, v9, 0x30

    if-nez v5, :cond_5

    and-int/lit8 v5, p10, 0x2

    if-nez v5, :cond_3

    move-wide/from16 v5, p1

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-wide/from16 v5, p1

    :goto_3
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_8

    and-int/lit8 v7, p10, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p3

    invoke-interface {v1, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p3

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p3

    :goto_5
    and-int/lit8 v10, p10, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move/from16 v11, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v9, 0xc00

    if-nez v11, :cond_b

    move/from16 v11, p5

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_b
    move/from16 v11, p5

    :goto_7
    and-int/lit8 v12, p10, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v13, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_e

    move-object/from16 v13, p6

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p6

    :goto_9
    and-int/lit8 v14, p10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v2, v15

    move-object/from16 v14, p7

    goto :goto_b

    :cond_f
    and-int v14, v9, v15

    if-nez v14, :cond_11

    move-object/from16 v14, p7

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v2, v15

    goto :goto_b

    :cond_11
    move-object/from16 v14, p7

    :goto_b
    const v15, 0x12493

    and-int/2addr v15, v2

    const v0, 0x12492

    if-ne v15, v0, :cond_13

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    .line 176
    :cond_12
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v11

    move v11, v2

    move-wide v2, v5

    move/from16 v6, v19

    move-object/from16 v19, v1

    move-object v1, v4

    move-wide v4, v7

    move-object v7, v13

    goto/16 :goto_10

    .line 174
    :cond_13
    :goto_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v9, 0x1

    const/4 v15, 0x6

    if-eqz v0, :cond_17

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    .line 172
    :cond_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_15

    and-int/lit8 v2, v2, -0x71

    :cond_15
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_16

    and-int/lit16 v0, v2, -0x381

    move v2, v0

    move/from16 v16, v11

    move-object/from16 v17, v13

    move v0, v15

    const v3, 0x6ac00e83

    move-object v11, v4

    move-wide v12, v5

    move-wide v14, v7

    .end local v2    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_f

    .end local v0    # "$dirty":I
    .restart local v2    # "$dirty":I
    :cond_16
    move/from16 v16, v11

    move-object/from16 v17, v13

    move v0, v15

    const v3, 0x6ac00e83

    move-object v11, v4

    move-wide v12, v5

    move-wide v14, v7

    goto :goto_f

    .line 174
    :cond_17
    :goto_d
    if-eqz v3, :cond_18

    .line 168
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 174
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object v0, v4

    .line 168
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_19

    .line 169
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v3, v1, v15}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v3

    .end local p1    # "backgroundColor":J
    .local v3, "backgroundColor":J
    and-int/lit8 v2, v2, -0x71

    move-wide v5, v3

    .end local v3    # "backgroundColor":J
    .local v5, "backgroundColor":J
    :cond_19
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_1a

    .line 170
    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0xe

    invoke-static {v5, v6, v1, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    .end local p3    # "contentColor":J
    .local v3, "contentColor":J
    and-int/lit16 v2, v2, -0x381

    move-wide v7, v3

    .end local v3    # "contentColor":J
    .local v7, "contentColor":J
    :cond_1a
    if-eqz v10, :cond_1b

    .line 171
    sget-object v3, Landroidx/compose/material/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material/NavigationRailDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/NavigationRailDefaults;->getElevation-D9Ej5fM()F

    move-result v3

    move v11, v3

    .end local p5    # "elevation":F
    .local v11, "elevation":F
    :cond_1b
    if-eqz v12, :cond_1c

    .line 172
    const/4 v3, 0x0

    move-object/from16 v17, v3

    move-wide v12, v5

    move/from16 v16, v11

    const v3, 0x6ac00e83

    move-object v11, v0

    move v0, v15

    move-wide v14, v7

    .end local p6    # "header":Lkotlin/jvm/functions/Function3;
    .local v3, "header":Lkotlin/jvm/functions/Function3;
    goto :goto_f

    .line 171
    .end local v3    # "header":Lkotlin/jvm/functions/Function3;
    .restart local p6    # "header":Lkotlin/jvm/functions/Function3;
    :cond_1c
    move/from16 v16, v11

    move-object/from16 v17, v13

    const v3, 0x6ac00e83

    move-object v11, v0

    move-wide v12, v5

    move v0, v15

    move-wide v14, v7

    .line 172
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v5    # "backgroundColor":J
    .end local v7    # "contentColor":J
    .end local p6    # "header":Lkotlin/jvm/functions/Function3;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v12, "backgroundColor":J
    .local v14, "contentColor":J
    .local v16, "elevation":F
    .local v17, "header":Lkotlin/jvm/functions/Function3;
    :goto_f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 174
    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material.NavigationRail (NavigationRail.kt:173)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 175
    :cond_1d
    sget-object v10, Landroidx/compose/material/NavigationRailKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    shl-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    const v4, 0xe000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    shl-int/lit8 v4, v2, 0x3

    and-int/2addr v3, v4

    or-int v20, v0, v3

    const/16 v21, 0x0

    move-object/from16 v18, p7

    move-object/from16 v19, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v10 .. v21}, Landroidx/compose/material/NavigationRailKt;->NavigationRail-afqeVBk(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 176
    :cond_1e
    move-object v1, v11

    move-wide v4, v14

    move/from16 v6, v16

    move-object/from16 v7, v17

    move v11, v2

    move-wide v2, v12

    .end local v12    # "backgroundColor":J
    .end local v14    # "contentColor":J
    .end local v16    # "elevation":F
    .end local v17    # "header":Lkotlin/jvm/functions/Function3;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "backgroundColor":J
    .local v4, "contentColor":J
    .local v6, "elevation":F
    .local v7, "header":Lkotlin/jvm/functions/Function3;
    .local v11, "$dirty":I
    :goto_10
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_1f

    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRail$3;

    move-object/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/NavigationRailKt$NavigationRail$3;-><init>(Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1f
    return-void
.end method

.method public static final NavigationRail-afqeVBk(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "backgroundColor"    # J
    .param p4, "contentColor"    # J
    .param p6, "elevation"    # F
    .param p7, "header"    # Lkotlin/jvm/functions/Function3;
    .param p8, "content"    # Lkotlin/jvm/functions/Function3;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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

    .line 109
    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v10, p10

    const v0, -0x52ce2b9b

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(NavigationRail)P(6,5,0:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.unit.Dp,4)103@4797L6,104@4839L32,114@5185L459,109@5041L603:NavigationRail.kt#jmzs0o"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p10

    .local v3, "$dirty":I
    and-int/lit8 v4, p11, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v10, 0x6

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
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p2

    invoke-interface {v2, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p2

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, p11, 0x8

    if-nez v8, :cond_9

    move-wide/from16 v11, p4

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v11, p4

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v3, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v11, p4

    :goto_7
    and-int/lit8 v8, p11, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move/from16 v13, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_e

    move/from16 v13, p6

    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v3, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p6

    :goto_9
    and-int/lit8 v14, p11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v3, v15

    move-object/from16 v15, p7

    goto :goto_b

    :cond_f
    and-int/2addr v15, v10

    if-nez v15, :cond_11

    move-object/from16 v15, p7

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p7

    :goto_b
    and-int/lit8 v16, p11, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v3, v3, v17

    goto :goto_d

    :cond_12
    and-int v16, v10, v17

    if-nez v16, :cond_14

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v3, v3, v16

    :cond_14
    :goto_d
    const v16, 0x92493

    and-int v0, v3, v16

    move/from16 p9, v4

    const v4, 0x92492

    if-ne v0, v4, :cond_16

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 131
    :cond_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v8, v15

    move-wide/from16 v23, v11

    move v12, v3

    move-wide v3, v6

    move-wide/from16 v5, v23

    move v7, v13

    goto/16 :goto_11

    .line 109
    :cond_16
    :goto_e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 107
    :cond_17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v3, v3, -0x381

    :cond_18
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v0, v3, -0x1c01

    move v3, v0

    move/from16 v18, v13

    move-object v0, v15

    const v4, -0x52ce2b9b

    move-wide v13, v6

    move-wide v15, v11

    move-object v11, v5

    .end local v3    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_10

    .end local v0    # "$dirty":I
    .restart local v3    # "$dirty":I
    :cond_19
    move/from16 v18, v13

    move-object v0, v15

    const v4, -0x52ce2b9b

    move-wide v13, v6

    move-wide v15, v11

    move-object v11, v5

    goto :goto_10

    .line 109
    :cond_1a
    :goto_f
    if-eqz p9, :cond_1b

    .line 103
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v5, v0

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1c

    .line 104
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v4, 0x6

    invoke-virtual {v0, v2, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v6

    .end local p2    # "backgroundColor":J
    .local v6, "backgroundColor":J
    and-int/lit16 v3, v3, -0x381

    :cond_1c
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_1d

    .line 105
    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v6, v7, v2, v0}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v11

    .end local p4    # "contentColor":J
    .local v11, "contentColor":J
    and-int/lit16 v3, v3, -0x1c01

    :cond_1d
    if-eqz v8, :cond_1e

    .line 106
    sget-object v0, Landroidx/compose/material/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material/NavigationRailDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/NavigationRailDefaults;->getElevation-D9Ej5fM()F

    move-result v0

    move v13, v0

    .end local p6    # "elevation":F
    .local v13, "elevation":F
    :cond_1e
    if-eqz v14, :cond_1f

    .line 107
    const/4 v0, 0x0

    move-wide v15, v11

    move/from16 v18, v13

    const v4, -0x52ce2b9b

    move-object v11, v5

    move-wide v13, v6

    .end local p7    # "header":Lkotlin/jvm/functions/Function3;
    .local v0, "header":Lkotlin/jvm/functions/Function3;
    goto :goto_10

    .line 106
    .end local v0    # "header":Lkotlin/jvm/functions/Function3;
    .restart local p7    # "header":Lkotlin/jvm/functions/Function3;
    :cond_1f
    move/from16 v18, v13

    move-object v0, v15

    const v4, -0x52ce2b9b

    move-wide v13, v6

    move-wide v15, v11

    move-object v11, v5

    .line 107
    .end local v5    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v6    # "backgroundColor":J
    .end local p7    # "header":Lkotlin/jvm/functions/Function3;
    .restart local v0    # "header":Lkotlin/jvm/functions/Function3;
    .local v11, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "backgroundColor":J
    .local v15, "contentColor":J
    .local v18, "elevation":F
    :goto_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 109
    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.material.NavigationRail (NavigationRail.kt:108)"

    invoke-static {v4, v3, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 111
    :cond_20
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    new-instance v4, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;

    invoke-direct {v4, v1, v0, v9}, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    const/16 v5, 0x36

    const v6, -0xea8455f

    const/4 v7, 0x1

    invoke-static {v6, v7, v4, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v4, v4, 0xe

    or-int v4, v4, v17

    and-int/lit16 v5, v3, 0x380

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0x1c00

    or-int/2addr v4, v5

    const/high16 v5, 0x70000

    shl-int/lit8 v6, v3, 0x3

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 110
    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x12

    move-object/from16 v20, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 131
    :cond_21
    move-object v8, v0

    move v12, v3

    move-object v2, v11

    move-wide v3, v13

    move-wide v5, v15

    move/from16 v7, v18

    .end local v0    # "header":Lkotlin/jvm/functions/Function3;
    .end local v11    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v13    # "backgroundColor":J
    .end local v15    # "contentColor":J
    .end local v18    # "elevation":F
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "backgroundColor":J
    .local v5, "contentColor":J
    .local v7, "elevation":F
    .local v8, "header":Lkotlin/jvm/functions/Function3;
    .local v12, "$dirty":I
    :goto_11
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_22

    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method public static final NavigationRailItem-0S3VyRs(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p0, "selected"    # Z
    .param p1, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p2, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p3, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p4, "enabled"    # Z
    .param p5, "label"    # Lkotlin/jvm/functions/Function2;
    .param p6, "alwaysShowLabel"    # Z
    .param p7, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "selectedContentColor"    # J
    .param p10, "unselectedContentColor"    # J
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
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
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 213
    move-object/from16 v3, p2

    move/from16 v13, p13

    move/from16 v14, p14

    const v0, -0x6c188d9d

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(NavigationRailItem)P(7,6,2,5,1,4!2,8:c#ui.graphics.Color,9:c#ui.graphics.Color)210@9648L6,211@9718L7,211@9752L6,226@10550L99,230@10654L804:NavigationRail.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p13

    .local v2, "$dirty":I
    and-int/lit8 v4, v14, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x6

    move/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v13, 0x6

    if-nez v4, :cond_2

    move/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v4, p0

    :goto_1
    and-int/lit8 v5, v14, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    goto :goto_3

    :cond_5
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v14, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v13, 0x180

    if-nez v6, :cond_8

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v14, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v2, v8

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    and-int/lit8 v8, v14, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move/from16 v9, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v9, v13, 0x6000

    if-nez v9, :cond_e

    move/from16 v9, p4

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_e
    move/from16 v9, p4

    :goto_9
    and-int/lit8 v10, v14, 0x20

    const/high16 v11, 0x30000

    if-eqz v10, :cond_f

    or-int/2addr v2, v11

    move-object/from16 v11, p5

    goto :goto_b

    :cond_f
    and-int/2addr v11, v13

    if-nez v11, :cond_11

    move-object/from16 v11, p5

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v12, 0x10000

    :goto_a
    or-int/2addr v2, v12

    goto :goto_b

    :cond_11
    move-object/from16 v11, p5

    :goto_b
    and-int/lit8 v12, v14, 0x40

    const/high16 v15, 0x180000

    if-eqz v12, :cond_12

    or-int/2addr v2, v15

    move/from16 v15, p6

    goto :goto_d

    :cond_12
    and-int/2addr v15, v13

    if-nez v15, :cond_14

    move/from16 v15, p6

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v2, v2, v16

    goto :goto_d

    :cond_14
    move/from16 v15, p6

    :goto_d
    and-int/lit16 v0, v14, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v2, v2, v17

    move/from16 v17, v0

    move-object/from16 v0, p7

    goto :goto_f

    :cond_15
    and-int v17, v13, v17

    if-nez v17, :cond_17

    move/from16 v17, v0

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v2, v2, v18

    goto :goto_f

    :cond_17
    move/from16 v17, v0

    move-object/from16 v0, p7

    :goto_f
    const/high16 v18, 0x6000000

    and-int v18, v13, v18

    if-nez v18, :cond_1a

    and-int/lit16 v0, v14, 0x100

    if-nez v0, :cond_18

    move-wide/from16 v4, p8

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_19

    const/high16 v0, 0x4000000

    goto :goto_10

    :cond_18
    move-wide/from16 v4, p8

    :cond_19
    const/high16 v0, 0x2000000

    :goto_10
    or-int/2addr v2, v0

    goto :goto_11

    :cond_1a
    move-wide/from16 v4, p8

    :goto_11
    const/high16 v0, 0x30000000

    and-int/2addr v0, v13

    if-nez v0, :cond_1d

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_1b

    move-wide/from16 v4, p10

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/high16 v0, 0x20000000

    goto :goto_12

    :cond_1b
    move-wide/from16 v4, p10

    :cond_1c
    const/high16 v0, 0x10000000

    :goto_12
    or-int/2addr v2, v0

    goto :goto_13

    :cond_1d
    move-wide/from16 v4, p10

    :goto_13
    const v0, 0x12492493

    and-int/2addr v0, v2

    move/from16 p12, v2

    .end local v2    # "$dirty":I
    .local p12, "$dirty":I
    const v2, 0x12492492

    if-ne v0, v2, :cond_1f

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_14

    .line 258
    :cond_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p7

    move/from16 v16, p12

    move-object/from16 v33, v1

    move-object v6, v11

    move-wide v11, v4

    move v5, v9

    move-wide/from16 v9, p8

    move-object v4, v7

    move v7, v15

    goto/16 :goto_1f

    .line 213
    :cond_1f
    :goto_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v18, -0xe000001

    const v19, -0x70000001

    const/4 v2, 0x6

    if-eqz v0, :cond_23

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_16

    .line 212
    :cond_20
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_21

    and-int v0, p12, v18

    .end local p12    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_15

    .end local v0    # "$dirty":I
    .restart local p12    # "$dirty":I
    :cond_21
    move/from16 v0, p12

    .end local p12    # "$dirty":I
    .restart local v0    # "$dirty":I
    :goto_15
    and-int/lit16 v6, v14, 0x200

    if-eqz v6, :cond_22

    and-int v0, v0, v19

    :cond_22
    move-wide/from16 v20, p8

    move v2, v0

    move-object/from16 v0, p7

    goto/16 :goto_19

    .line 213
    .end local v0    # "$dirty":I
    .restart local p12    # "$dirty":I
    :cond_23
    :goto_16
    if-eqz v6, :cond_24

    .line 206
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v7, v0

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    :cond_24
    if-eqz v8, :cond_25

    .line 207
    const/4 v0, 0x1

    move v9, v0

    .end local p4    # "enabled":Z
    .local v9, "enabled":Z
    :cond_25
    if-eqz v10, :cond_26

    .line 208
    const/4 v0, 0x0

    move-object v11, v0

    .end local p5    # "label":Lkotlin/jvm/functions/Function2;
    .local v11, "label":Lkotlin/jvm/functions/Function2;
    :cond_26
    if-eqz v12, :cond_27

    .line 209
    const/4 v0, 0x1

    move v15, v0

    .end local p6    # "alwaysShowLabel":Z
    .local v15, "alwaysShowLabel":Z
    :cond_27
    if-eqz v17, :cond_28

    .line 210
    const/4 v0, 0x0

    .end local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_17

    .line 209
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_28
    move-object/from16 v0, p7

    .line 210
    .end local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_17
    and-int/lit16 v6, v14, 0x100

    if-eqz v6, :cond_29

    .line 211
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v6, v1, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v20

    .end local p8    # "selectedContentColor":J
    .local v20, "selectedContentColor":J
    and-int v6, p12, v18

    .end local p12    # "$dirty":I
    .local v6, "$dirty":I
    goto :goto_18

    .line 210
    .end local v6    # "$dirty":I
    .end local v20    # "selectedContentColor":J
    .restart local p8    # "selectedContentColor":J
    .restart local p12    # "$dirty":I
    :cond_29
    move-wide/from16 v20, p8

    move/from16 v6, p12

    .line 211
    .end local p8    # "selectedContentColor":J
    .end local p12    # "$dirty":I
    .restart local v6    # "$dirty":I
    .restart local v20    # "selectedContentColor":J
    :goto_18
    and-int/lit16 v8, v14, 0x200

    if-eqz v8, :cond_2a

    .line 212
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x6

    .local v10, "$changed$iv":I
    const/4 v12, 0x0

    .line 473
    .local v12, "$i$f$getCurrent":I
    const v2, 0x789c5f52

    move-object/from16 p3, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p3, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v12    # "$i$f$getCurrent":I
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v22

    .line 212
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v24

    const/16 v28, 0xe

    const/16 v29, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    .end local p10    # "unselectedContentColor":J
    .local v4, "unselectedContentColor":J
    and-int v0, v6, v19

    move v2, v0

    move-object/from16 v0, p3

    .end local v6    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_19

    .line 211
    .end local v4    # "unselectedContentColor":J
    .end local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v6    # "$dirty":I
    .restart local p10    # "unselectedContentColor":J
    :cond_2a
    move-object/from16 p3, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move v2, v6

    .line 212
    .end local v6    # "$dirty":I
    .end local p3    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p10    # "unselectedContentColor":J
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v2    # "$dirty":I
    .restart local v4    # "unselectedContentColor":J
    :goto_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 213
    const/4 v6, -0x1

    const-string/jumbo v8, "androidx.compose.material.NavigationRailItem (NavigationRail.kt:212)"

    const v10, -0x6c188d9d

    invoke-static {v10, v2, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 214
    :cond_2b
    const/4 v8, 0x1

    if-nez v11, :cond_2c

    const v10, 0x628ab086

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v10, 0x0

    move-object/from16 p11, v0

    move/from16 v16, v2

    goto :goto_1a

    :cond_2c
    const v10, 0x628ab087

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v10, "*214@9846L156"

    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object v10, v11

    .local v10, "it":Lkotlin/jvm/functions/Function2;
    const/4 v12, 0x0

    .line 215
    .local v12, "$i$a$-let-NavigationRailKt$NavigationRailItem$styledLabel$1":I
    new-instance v6, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;

    invoke-direct {v6, v11}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object/from16 p11, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p11, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const v0, -0xac0aa17

    move/from16 v16, v2

    const/16 v2, 0x36

    .end local v2    # "$dirty":I
    .local v16, "$dirty":I
    invoke-static {v0, v8, v6, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 214
    .end local v10    # "it":Lkotlin/jvm/functions/Function2;
    .end local v12    # "$i$a$-let-NavigationRailKt$NavigationRailItem$styledLabel$1":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 223
    .local v10, "styledLabel":Lkotlin/jvm/functions/Function2;
    :goto_1a
    if-nez v11, :cond_2d

    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    goto :goto_1b

    :cond_2d
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 228
    .local v0, "itemSize":F
    :goto_1b
    nop

    .line 229
    shr-int/lit8 v2, v16, 0x12

    and-int/lit16 v2, v2, 0x380

    const/4 v6, 0x6

    or-int/2addr v2, v6

    .line 227
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x2

    move-object/from16 p7, v1

    move/from16 p8, v2

    move/from16 p3, v6

    move/from16 p4, v12

    move/from16 p9, v17

    move-wide/from16 p5, v20

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "selectedContentColor":J
    .local p5, "selectedContentColor":J
    .local p7, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p3 .. p9}, Landroidx/compose/material/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v1

    .line 237
    move-object/from16 v2, p7

    .end local p5    # "selectedContentColor":J
    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "ripple":Landroidx/compose/foundation/Indication;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "selectedContentColor":J
    sget-object v6, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v6

    .line 232
    nop

    .line 234
    nop

    .line 238
    nop

    .line 239
    nop

    .line 236
    nop

    .line 237
    invoke-static {v6}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v6

    .line 235
    nop

    .line 233
    move/from16 p4, p0

    move-object/from16 p9, p1

    move-object/from16 p5, p11

    move-object/from16 p6, v1

    move-object/from16 p8, v6

    move-object/from16 p3, v7

    move/from16 p7, v9

    .end local v1    # "ripple":Landroidx/compose/foundation/Indication;
    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v9    # "enabled":Z
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p3, "modifier":Landroidx/compose/ui/Modifier;
    .local p5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p6, "ripple":Landroidx/compose/foundation/Indication;
    .local p7, "enabled":Z
    invoke-static/range {p3 .. p9}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 241
    move-object/from16 v9, p5

    move-object/from16 v6, p6

    move/from16 v12, p7

    .end local p3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "ripple":Landroidx/compose/foundation/Indication;
    .end local p7    # "enabled":Z
    .local v6, "ripple":Landroidx/compose/foundation/Indication;
    .restart local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .local v9, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v12, "enabled":Z
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 242
    sget-object v17, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v17

    .line 231
    nop

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/16 v18, 0x30

    .local v18, "$changed$iv":I
    move-object/from16 p11, v17

    .local p11, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/16 v17, 0x0

    .line 474
    .local v17, "$i$f$Box":I
    const v8, 0x2bb5b5d7

    move/from16 v19, v0

    .end local v0    # "itemSize":F
    .local v19, "itemSize":F
    const-string v0, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v2, v8, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 478
    .local v0, "propagateMinConstraints$iv":Z
    move-object/from16 v8, p11

    move-wide/from16 p5, v4

    .end local v4    # "unselectedContentColor":J
    .end local p11    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v8, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local p5, "unselectedContentColor":J
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    .local v4, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v5, v18, 0x3

    and-int/lit8 v5, v5, 0x70

    .line 479
    nop

    .local v5, "$changed$iv$iv":I
    const/16 v22, 0x0

    .line 480
    .local v22, "$i$f$Layout":I
    move/from16 p11, v0

    .end local v0    # "propagateMinConstraints$iv":Z
    .local p11, "propagateMinConstraints$iv":Z
    const v0, -0x4ee9b9da

    move/from16 v23, v5

    .end local v5    # "$changed$iv$iv":I
    .local v23, "$changed$iv$iv":I
    const-string v5, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v2, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 482
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v5

    .line 483
    .local v5, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v24, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v24, "compositeKeyHash$iv$iv":I
    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 485
    .local v0, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v25

    move-object/from16 v26, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v26, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v23, 0x6

    and-int/lit16 v1, v1, 0x380

    const/16 v27, 0x6

    or-int/lit8 v1, v1, 0x6

    .line 484
    move-object/from16 v27, v25

    .local v1, "$changed$iv$iv$iv":I
    .local v27, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v25, 0x0

    .line 486
    .local v25, "$i$f$ReusableComposeNode":I
    move/from16 v28, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v28, "$changed$iv$iv$iv":I
    const v1, -0x2942ffcf

    move-object/from16 v29, v6

    .end local v6    # "ripple":Landroidx/compose/foundation/Indication;
    .local v29, "ripple":Landroidx/compose/foundation/Indication;
    const-string v6, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 487
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 488
    :cond_2e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 489
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 490
    move-object/from16 v1, v27

    .end local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    .line 492
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2f
    move-object/from16 v1, v27

    .end local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 494
    :goto_1c
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 495
    .local v27, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v31, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v31, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 496
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 499
    .local v30, "$i$f$set-impl":I
    move-object/from16 p4, v6

    .local p4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 500
    .local v32, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v33

    if-nez v33, :cond_31

    move-object/from16 v33, v2

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v33, "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v4

    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v34, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_1d

    :cond_30
    move-object/from16 v4, p4

    goto :goto_1e

    .end local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_31
    move-object/from16 v33, v2

    move-object/from16 v34, v4

    .line 501
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v4    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v33    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_1d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, p4

    .end local p4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 502
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 504
    :goto_1e
    nop

    .line 499
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v32    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 504
    nop

    .line 505
    .end local v1    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 506
    nop

    .line 494
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 507
    shr-int/lit8 v1, v28, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object/from16 v2, v33

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 508
    .local v4, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v6, -0x7ff519f7    # -1.000876E-39f

    move-object/from16 v27, v0

    .end local v0    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v27, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const-string v0, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v2, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v18, 0x6

    and-int/lit8 v6, v6, 0x70

    const/16 v30, 0x6

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$NavigationRailItem_0S3VyRs_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 p9, v2

    .local p9, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 244
    .local v30, "$i$a$-Box-NavigationRailKt$NavigationRailItem$1":I
    move-object/from16 p12, v0

    .end local v0    # "$this$NavigationRailItem_0S3VyRs_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    .local p12, "$this$NavigationRailItem_0S3VyRs_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    const v0, 0x66d954c4

    move/from16 v32, v1

    .end local v1    # "$changed$iv":I
    .local v32, "$changed$iv":I
    const-string v1, "C247@11162L290,243@11035L417:NavigationRail.kt#jmzs0o"

    move-object/from16 v35, v2

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v35, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 248
    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$1$1;

    invoke-direct {v0, v15, v3, v10}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$1$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x27f83098

    move/from16 v36, v4

    const/16 v3, 0x36

    const/4 v4, 0x1

    .end local v4    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v36, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v1, v4, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v1, v16, 0x18

    and-int/lit8 v1, v1, 0xe

    or-int/lit16 v1, v1, 0xc00

    shr-int/lit8 v3, v16, 0x18

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    shl-int/lit8 v3, v16, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v1, v3

    .line 244
    move/from16 p7, p0

    move-object/from16 p8, v0

    move/from16 p10, v1

    move-wide/from16 p3, v20

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "selectedContentColor":J
    .local p3, "selectedContentColor":J
    .restart local p9    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {p3 .. p10}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-wide/from16 v0, p5

    .end local p3    # "selectedContentColor":J
    .end local p5    # "unselectedContentColor":J
    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v0, "unselectedContentColor":J
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "selectedContentColor":J
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 257
    nop

    .line 508
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$changed":I
    .end local v30    # "$i$a$-Box-NavigationRailKt$NavigationRailItem$1":I
    .end local p12    # "$this$NavigationRailItem_0S3VyRs_u24lambda_u241":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static/range {v35 .. v35}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 507
    .end local v32    # "$changed$iv":I
    .end local v35    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v36    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 509
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 486
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 510
    nop

    .line 480
    .end local v25    # "$i$f$ReusableComposeNode":I
    .end local v28    # "$changed$iv$iv$iv":I
    .end local v31    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 511
    nop

    .line 474
    .end local v5    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v22    # "$i$f$Layout":I
    .end local v23    # "$changed$iv$iv":I
    .end local v24    # "compositeKeyHash$iv$iv":I
    .end local v27    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 512
    nop

    .end local v8    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v17    # "$i$f$Box":I
    .end local v18    # "$changed$iv":I
    .end local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v34    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p11    # "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 258
    .end local v10    # "styledLabel":Lkotlin/jvm/functions/Function2;
    .end local v19    # "itemSize":F
    .end local v29    # "ripple":Landroidx/compose/foundation/Indication;
    :cond_32
    move-object v8, v9

    move-object v6, v11

    move v5, v12

    move-wide/from16 v9, v20

    move-wide v11, v0

    move-object v4, v7

    move v7, v15

    .end local v0    # "unselectedContentColor":J
    .end local v12    # "enabled":Z
    .end local v15    # "alwaysShowLabel":Z
    .end local v20    # "selectedContentColor":J
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    .local v5, "enabled":Z
    .local v6, "label":Lkotlin/jvm/functions/Function2;
    .local v7, "alwaysShowLabel":Z
    .local v8, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v9, "selectedContentColor":J
    .local v11, "unselectedContentColor":J
    :goto_1f
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_33

    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2;

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_33
    return-void
.end method

.method private static final NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
    .locals 50
    .param p0, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p1, "label"    # Lkotlin/jvm/functions/Function2;
    .param p2, "iconPositionAnimationProgress"    # F
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
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
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const v4, -0x717a9fb4

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string v6, "C(NavigationRailItemBaselineLayout)P(!1,2)339@14190L806,328@13870L1126:NavigationRail.kt#jmzs0o"

    invoke-static {v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v6, p4

    .local v6, "$dirty":I
    and-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_1

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v6, v7

    :cond_1
    and-int/lit8 v7, v3, 0x30

    const/16 v8, 0x20

    if-nez v7, :cond_3

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v3, 0x180

    const/16 v9, 0x100

    if-nez v7, :cond_5

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_2

    :cond_4
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v6, 0x93

    const/16 v10, 0x92

    if-ne v7, v10, :cond_7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 363
    :cond_6
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v5

    move/from16 v23, v6

    goto/16 :goto_12

    .line 328
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    const-string/jumbo v10, "androidx.compose.material.NavigationRailItemBaselineLayout (NavigationRail.kt:327)"

    invoke-static {v4, v6, v7, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 340
    :cond_8
    const v4, 0x11b99f74

    const-string v7, "CC(remember):NavigationRail.kt#9igjgp"

    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v4, v6, 0x70

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-ne v4, v8, :cond_9

    move v4, v7

    goto :goto_4

    :cond_9
    move v4, v10

    :goto_4
    and-int/lit16 v8, v6, 0x380

    if-ne v8, v9, :cond_a

    goto :goto_5

    :cond_a
    move v7, v10

    :goto_5
    or-int/2addr v4, v7

    .local v4, "invalid$iv":Z
    move-object v7, v5

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 513
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 514
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_c

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_b

    goto :goto_6

    .line 518
    :cond_b
    move-object v13, v9

    goto :goto_7

    .line 515
    :cond_c
    :goto_6
    const/4 v12, 0x0

    .line 340
    .local v12, "$i$a$-cache-NavigationRailKt$NavigationRailItemBaselineLayout$2":I
    new-instance v13, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;

    invoke-direct {v13, v1, v2}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2$1;-><init>(Lkotlin/jvm/functions/Function2;F)V

    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 515
    .end local v12    # "$i$a$-cache-NavigationRailKt$NavigationRailItemBaselineLayout$2":I
    nop

    .line 516
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 517
    nop

    .line 514
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 513
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 340
    .end local v4    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 329
    move v4, v10

    .local v4, "$changed$iv":I
    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const/4 v7, 0x0

    .line 519
    .local v7, "$i$f$Layout":I
    const v8, -0x4ee9b9da

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 520
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 523
    .local v11, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v5, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 524
    .local v12, "compositeKeyHash$iv":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 525
    .local v14, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v5, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 527
    .local v15, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v10, v4, 0x6

    and-int/lit16 v10, v10, 0x380

    or-int/lit8 v10, v10, 0x6

    .line 526
    nop

    .local v10, "$changed$iv$iv":I
    move-object/from16 v17, v16

    .local v17, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 528
    .local v16, "$i$f$ReusableComposeNode":I
    const v8, -0x2942ffcf

    move/from16 v19, v4

    .end local v4    # "$changed$iv":I
    .local v19, "$changed$iv":I
    const-string v4, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v5, v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 529
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-nez v8, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 530
    :cond_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 531
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 532
    move-object/from16 v8, v17

    .end local v17    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v8, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    .line 534
    .end local v8    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_e
    move-object/from16 v8, v17

    .end local v17    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v8    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 536
    :goto_8
    move-object/from16 v17, v5

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 537
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v23, v6

    .end local v6    # "$dirty":I
    .local v23, "$dirty":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v13, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 538
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 540
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .local v6, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 541
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v5

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 542
    .local v25, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_10

    move/from16 v26, v7

    .end local v7    # "$i$f$Layout":I
    .local v26, "$i$f$Layout":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v27, v8

    .end local v8    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v27, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v8, v24

    goto :goto_a

    .end local v26    # "$i$f$Layout":I
    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v7    # "$i$f$Layout":I
    .restart local v8    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_10
    move/from16 v26, v7

    move-object/from16 v27, v8

    .line 543
    .end local v7    # "$i$f$Layout":I
    .end local v8    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v26    # "$i$f$Layout":I
    .restart local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 544
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 546
    :goto_a
    nop

    .line 541
    .end local v8    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 546
    nop

    .line 547
    .end local v6    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v5, v15, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 548
    nop

    .line 536
    .end local v5    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 549
    shr-int/lit8 v5, v10, 0x6

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed":I
    move-object/from16 v6, v17

    .local v6, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 331
    .local v7, "$i$a$-Layout-NavigationRailKt$NavigationRailItemBaselineLayout$1":I
    const v8, 0x1faf6da5

    move/from16 v21, v5

    .end local v5    # "$changed":I
    .local v21, "$changed":I
    const-string v5, "C330@13900L41:NavigationRail.kt#jmzs0o"

    invoke-static {v6, v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    const-string/jumbo v8, "icon"

    invoke-static {v5, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    const/16 v22, 0x0

    .line 550
    .local v22, "$i$f$Box":I
    move/from16 v24, v7

    .end local v7    # "$i$a$-Layout-NavigationRailKt$NavigationRailItemBaselineLayout$1":I
    .local v24, "$i$a$-Layout-NavigationRailKt$NavigationRailItemBaselineLayout$1":I
    const v7, 0x2bb5b5d7

    move/from16 v25, v8

    .end local v8    # "$changed$iv":I
    .local v25, "$changed$iv":I
    const-string v8, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 551
    sget-object v28, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v7

    .line 552
    .local v7, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    move/from16 v28, v10

    .end local v10    # "$changed$iv$iv":I
    .local v28, "$changed$iv$iv":I
    const/4 v10, 0x0

    .line 555
    .local v10, "propagateMinConstraints$iv":Z
    move-object/from16 v30, v11

    .end local v11    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v30, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v31, v25, 0x3

    and-int/lit8 v31, v31, 0x70

    .line 556
    nop

    .local v31, "$changed$iv$iv":I
    const/16 v32, 0x0

    .line 557
    .local v32, "$i$f$Layout":I
    move-object/from16 v33, v7

    const v7, -0x4ee9b9da

    .end local v7    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v33, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v6, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 558
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v34

    .line 559
    .local v34, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 560
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v35, v10

    .end local v10    # "propagateMinConstraints$iv":Z
    .local v35, "propagateMinConstraints$iv":Z
    invoke-static {v6, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 562
    .local v10, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v36

    move-object/from16 v37, v5

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v37, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v5, v31, 0x6

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x6

    .line 561
    nop

    .local v5, "$changed$iv$iv$iv":I
    move-object/from16 v38, v36

    .local v38, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v36, 0x0

    .line 563
    .local v36, "$i$f$ReusableComposeNode":I
    move/from16 v39, v5

    const v5, -0x2942ffcf

    .end local v5    # "$changed$iv$iv$iv":I
    .local v39, "$changed$iv$iv$iv":I
    invoke-static {v6, v5, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 564
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 565
    :cond_11
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 566
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 567
    move-object/from16 v5, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v5, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    .line 569
    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_12
    move-object/from16 v5, v38

    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 571
    :goto_b
    move-object/from16 v38, v5

    .end local v5    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v40, 0x0

    .line 572
    .local v40, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v41, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v42, v12

    .end local v12    # "compositeKeyHash$iv":I
    .local v42, "compositeKeyHash$iv":I
    invoke-virtual/range {v41 .. v41}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v5, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 573
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v5, v7, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    .local v12, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v41, 0x0

    .line 576
    .local v41, "$i$f$set-impl":I
    move-object/from16 v43, v5

    .local v43, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v44, 0x0

    .line 577
    .local v44, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v43 .. v43}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v45

    if-nez v45, :cond_14

    move-object/from16 v45, v7

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v45, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v43 .. v43}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v46, v11

    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v46, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v11, v43

    goto :goto_d

    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_14
    move-object/from16 v45, v7

    move-object/from16 v46, v11

    .line 578
    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_c
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v11, v43

    .end local v43    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v11, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 579
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v12}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 581
    :goto_d
    nop

    .line 576
    .end local v11    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v44    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 581
    nop

    .line 582
    .end local v12    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v41    # "$i$f$set-impl":I
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v5, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 583
    nop

    .line 571
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v40    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 584
    shr-int/lit8 v5, v39, 0x6

    and-int/lit8 v5, v5, 0xe

    .local v5, "$changed$iv":I
    move-object v7, v6

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 585
    .local v11, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v12, -0x7ff519f7    # -1.000876E-39f

    move/from16 v40, v5

    .end local v5    # "$changed$iv":I
    .local v40, "$changed$iv":I
    const-string v5, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v7, v12, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v41, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v43, v25, 0x6

    and-int/lit8 v43, v43, 0x70

    or-int/lit8 v43, v43, 0x6

    .local v43, "$changed":I
    check-cast v41, Landroidx/compose/foundation/layout/BoxScope;

    .local v41, "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v44, v7

    .local v44, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v47, 0x0

    .line 331
    .local v47, "$i$a$-Box-NavigationRailKt$NavigationRailItemBaselineLayout$1$1":I
    const v12, 0x787f4691

    move-object/from16 v48, v7

    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v48, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v7, "C330@13933L6:NavigationRail.kt#jmzs0o"

    move-object/from16 v49, v10

    move-object/from16 v10, v44

    .end local v44    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    .local v49, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v10, v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v7, v23, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 585
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v41    # "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u243":Landroidx/compose/foundation/layout/BoxScope;
    .end local v43    # "$changed":I
    .end local v47    # "$i$a$-Box-NavigationRailKt$NavigationRailItemBaselineLayout$1$1":I
    invoke-static/range {v48 .. v48}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 584
    .end local v11    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v40    # "$changed$iv":I
    .end local v48    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 586
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 563
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 587
    nop

    .line 557
    .end local v36    # "$i$f$ReusableComposeNode":I
    .end local v38    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v39    # "$changed$iv$iv$iv":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 588
    nop

    .line 550
    .end local v31    # "$changed$iv$iv":I
    .end local v32    # "$i$f$Layout":I
    .end local v34    # "compositeKeyHash$iv$iv":I
    .end local v45    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v49    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 589
    nop

    .line 332
    .end local v22    # "$i$f$Box":I
    .end local v25    # "$changed$iv":I
    .end local v33    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v35    # "propagateMinConstraints$iv":Z
    .end local v37    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v46    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    if-eqz v1, :cond_19

    const v7, 0x1fb07fad

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "332@13991L168"

    invoke-static {v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 334
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 335
    const-string/jumbo v10, "label"

    invoke-static {v7, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 336
    invoke-static {v7, v2}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 333
    const/4 v10, 0x0

    .local v7, "modifier$iv":Landroidx/compose/ui/Modifier;
    move v11, v10

    .local v11, "$changed$iv":I
    const/4 v10, 0x0

    .line 590
    .local v10, "$i$f$Box":I
    const v12, 0x2bb5b5d7

    invoke-static {v6, v12, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 591
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v8

    .line 592
    .local v8, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v12, 0x0

    .line 595
    .local v12, "propagateMinConstraints$iv":Z
    move/from16 v22, v10

    .end local v10    # "$i$f$Box":I
    .restart local v22    # "$i$f$Box":I
    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v25, v11, 0x3

    and-int/lit8 v25, v25, 0x70

    .line 596
    nop

    .local v25, "$changed$iv$iv":I
    const/16 v29, 0x0

    .line 597
    .local v29, "$i$f$Layout":I
    move-object/from16 v31, v8

    const v8, -0x4ee9b9da

    .end local v8    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v31, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 598
    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v8

    .line 599
    .local v8, "compositeKeyHash$iv$iv":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v9

    .line 600
    .local v9, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p3, v8

    .end local v8    # "compositeKeyHash$iv$iv":I
    .local p3, "compositeKeyHash$iv$iv":I
    invoke-static {v6, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 602
    .local v8, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v18

    move-object/from16 v32, v7

    .end local v7    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v32, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v7, v25, 0x6

    and-int/lit16 v7, v7, 0x380

    or-int/lit8 v7, v7, 0x6

    .line 601
    nop

    .local v7, "$changed$iv$iv$iv":I
    move-object/from16 v33, v18

    .local v33, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 603
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v34, v7

    const v7, -0x2942ffcf

    .end local v7    # "$changed$iv$iv$iv":I
    .local v34, "$changed$iv$iv$iv":I
    invoke-static {v6, v7, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 604
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 605
    :cond_15
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 606
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 607
    move-object/from16 v4, v33

    .end local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 609
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_16
    move-object/from16 v4, v33

    .end local v33    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 611
    :goto_e
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .local v7, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 612
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v33, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v35, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v35, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v7, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 613
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v7, v9, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 615
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v33, 0x0

    .line 616
    .local v33, "$i$f$set-impl":I
    move-object/from16 v36, v7

    .local v36, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v37, 0x0

    .line 617
    .local v37, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v38

    if-nez v38, :cond_18

    move-object/from16 v38, v9

    .end local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v38, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v36 .. v36}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v39, v10

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v39, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v10, v36

    goto :goto_10

    .end local v38    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v39    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_18
    move-object/from16 v38, v9

    move-object/from16 v39, v10

    .line 618
    .end local v9    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v38    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v39    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_f
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, v36

    .end local v36    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v10, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 619
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    :goto_10
    nop

    .line 616
    .end local v10    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v37    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 621
    nop

    .line 622
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v33    # "$i$f$set-impl":I
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v7, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 623
    nop

    .line 611
    .end local v7    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 624
    shr-int/lit8 v4, v34, 0x6

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v7, v6

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 625
    .local v9, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v10, -0x7ff519f7    # -1.000876E-39f

    invoke-static {v7, v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v10, v11, 0x6

    and-int/lit8 v10, v10, 0x70

    or-int/lit8 v10, v10, 0x6

    .local v10, "$changed":I
    check-cast v5, Landroidx/compose/foundation/layout/BoxScope;

    .local v5, "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v20, v7

    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 337
    .local v33, "$i$a$-Box-NavigationRailKt$NavigationRailItemBaselineLayout$1$2":I
    move/from16 v36, v4

    .end local v4    # "$changed$iv":I
    .local v36, "$changed$iv":I
    const v4, 0x78828f90

    move-object/from16 v37, v5

    .end local v5    # "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/BoxScope;
    .local v37, "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/BoxScope;
    const-string v5, "C336@14150L7:NavigationRail.kt#jmzs0o"

    move-object/from16 v40, v7

    .end local v20    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v40, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    shr-int/lit8 v4, v23, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 625
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v10    # "$changed":I
    .end local v33    # "$i$a$-Box-NavigationRailKt$NavigationRailItemBaselineLayout$1$2":I
    .end local v37    # "$this$NavigationRailItemBaselineLayout_u24lambda_u245_u24lambda_u244":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 624
    .end local v9    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v36    # "$changed$iv":I
    .end local v40    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 626
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 603
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 627
    nop

    .line 597
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v34    # "$changed$iv$iv$iv":I
    .end local v35    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 628
    nop

    .line 590
    .end local v8    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "$changed$iv$iv":I
    .end local v29    # "$i$f$Layout":I
    .end local v38    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local p3    # "compositeKeyHash$iv$iv":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 629
    nop

    .line 332
    .end local v11    # "$changed$iv":I
    .end local v12    # "propagateMinConstraints$iv":Z
    .end local v22    # "$i$f$Box":I
    .end local v31    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v32    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v39    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_11

    .line 338
    :cond_19
    const v4, 0x1fb36e75

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 331
    :goto_11
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    nop

    .line 549
    .end local v6    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$changed":I
    .end local v24    # "$i$a$-Layout-NavigationRailKt$NavigationRailItemBaselineLayout$1":I
    nop

    .line 630
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 528
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 631
    nop

    .line 519
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v27    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v28    # "$changed$iv$iv":I
    invoke-static/range {v17 .. v17}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 632
    nop

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v14    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v15    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .end local v19    # "$changed$iv":I
    .end local v26    # "$i$f$Layout":I
    .end local v30    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v42    # "compositeKeyHash$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 363
    :cond_1a
    :goto_12
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v5, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;

    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FI)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_1b
    return-void
.end method

.method private static final NavigationRailTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p0, "activeColor"    # J
    .param p2, "inactiveColor"    # J
    .param p4, "selected"    # Z
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lkotlin/jvm/functions/Function3<",
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

    .line 296
    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    const v0, -0xc590a32

    move-object/from16 v8, p6

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v8, "C(NavigationRailTransition)P(0:c#ui.graphics.Color,2:c#ui.graphics.Color,3)296@12823L126,306@13163L42,303@13024L181:NavigationRail.kt#jmzs0o"

    invoke-static {v13, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v8, p7

    .local v8, "$dirty":I
    and-int/lit8 v9, v7, 0x6

    const/4 v10, 0x2

    if-nez v9, :cond_1

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    or-int/2addr v8, v9

    :cond_1
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_3

    invoke-interface {v13, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_1

    :cond_2
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v8, v9

    :cond_3
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_5

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_2

    :cond_4
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_7

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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

    const/16 v11, 0x492

    if-ne v9, v11, :cond_9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    .line 310
    :cond_8
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v8

    goto/16 :goto_6

    .line 296
    :cond_9
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, -0x1

    const-string/jumbo v11, "androidx.compose.material.NavigationRailTransition (NavigationRail.kt:295)"

    invoke-static {v0, v8, v9, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 298
    :cond_a
    if-eqz v5, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 299
    :goto_5
    sget-object v9, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    check-cast v9, Landroidx/compose/animation/core/AnimationSpec;

    .line 297
    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v14, v12

    const/4 v12, 0x0

    move v15, v14

    const/16 v14, 0x30

    move/from16 v16, v15

    const/16 v15, 0x1c

    move/from16 v25, v8

    move v8, v0

    move/from16 v0, v16

    move/from16 v16, v25

    .end local v8    # "$dirty":I
    .local v16, "$dirty":I
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 302
    .local v8, "animationProgress$delegate":Landroidx/compose/runtime/State;
    invoke-static {v8}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition_Klgx_Pg$lambda$2(Landroidx/compose/runtime/State;)F

    move-result v9

    invoke-static {v3, v4, v1, v2, v9}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v17

    .line 305
    .local v17, "color":J
    new-array v0, v0, [Landroidx/compose/runtime/ProvidedValue;

    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    const/16 v23, 0xe

    const/16 v24, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v0, v10

    .line 306
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v0, v10

    .line 305
    nop

    .line 307
    new-instance v9, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;

    invoke-direct {v9, v6, v8}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/State;)V

    const/16 v11, 0x36

    const v12, -0x649ff6f2

    invoke-static {v12, v10, v9, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    sget v10, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    or-int/lit8 v10, v10, 0x30

    .line 304
    invoke-static {v0, v9, v13, v10}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 310
    .end local v8    # "animationProgress$delegate":Landroidx/compose/runtime/State;
    .end local v17    # "color":J
    :cond_c
    :goto_6
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;-><init>(JJZLkotlin/jvm/functions/Function3;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_d
    return-void
.end method

.method private static final NavigationRailTransition_Klgx_Pg$lambda$2(Landroidx/compose/runtime/State;)F
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

    .line 297
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 633
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

    .line 297
    return v0
.end method

.method public static final synthetic access$NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p1, "label"    # Lkotlin/jvm/functions/Function2;
    .param p2, "iconPositionAnimationProgress"    # F
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$NavigationRailTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "activeColor"    # J
    .param p2, "inactiveColor"    # J
    .param p4, "selected"    # Z
    .param p5, "content"    # Lkotlin/jvm/functions/Function3;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$NavigationRailTransition_Klgx_Pg$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 1
    .param p0, "$animationProgress$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition_Klgx_Pg$lambda$2(Landroidx/compose/runtime/State;)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getHeaderPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    return v0
.end method

.method public static final synthetic access$getNavigationRailPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    return v0
.end method

.method public static final synthetic access$placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "constraints"    # J

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/NavigationRailKt;->placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "labelPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "constraints"    # J
    .param p5, "iconPositionAnimationProgress"    # F

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/NavigationRailKt;->placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9
    .param p0, "$this$placeIcon_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "constraints"    # J

    .line 372
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 373
    .local v0, "iconX":I
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 374
    .local v1, "iconY":I
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    new-instance v2, Landroidx/compose/material/NavigationRailKt$placeIcon$1;

    invoke-direct {v2, p1, v0, v1}, Landroidx/compose/material/NavigationRailKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .end local p0    # "$this$placeIcon_u2d3p2s80s":Landroidx/compose/ui/layout/MeasureScope;
    .local v2, "$this$placeIcon_u2d3p2s80s":Landroidx/compose/ui/layout/MeasureScope;
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 17
    .param p0, "$this$placeLabelAndIcon_u2dDIyivk0"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "labelPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "iconPlaceable"    # Landroidx/compose/ui/layout/Placeable;
    .param p3, "constraints"    # J
    .param p5, "iconPositionAnimationProgress"    # F

    .line 405
    move-object/from16 v0, p0

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v11

    .line 406
    .local v11, "baseline":I
    sget v1, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v12

    .line 408
    .local v12, "labelBaselineOffset":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    sub-int/2addr v1, v11

    sub-int v6, v1, v12

    .line 409
    .local v6, "labelY":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    .line 412
    .local v5, "labelX":I
    sget v1, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v10

    .line 413
    .local v10, "selectedIconY":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v13, v1, 0x2

    .line 414
    .local v13, "unselectedIconY":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v9, v1, 0x2

    .line 416
    .local v9, "iconX":I
    sub-int v14, v13, v10

    .line 421
    .local v14, "iconDistance":I
    int-to-float v1, v14

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float v2, v2, p5

    mul-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    .line 423
    .local v7, "offset":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v15

    new-instance v2, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;

    move-object/from16 v8, p2

    move/from16 v3, p5

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;-><init>(FLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;II)V

    move v8, v5

    move/from16 v16, v7

    move v7, v6

    .end local v5    # "labelX":I
    .end local v6    # "labelY":I
    .local v7, "labelY":I
    .local v8, "labelX":I
    .local v16, "offset":I
    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, v15

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1
.end method
