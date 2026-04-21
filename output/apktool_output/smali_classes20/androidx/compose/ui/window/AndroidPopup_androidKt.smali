.class public final Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,995:1\n32#2:996\n80#3:997\n1128#4,6:998\n1128#4,6:1008\n1128#4,6:1015\n1128#4,6:1021\n1128#4,6:1027\n1128#4,6:1033\n1128#4,6:1039\n1128#4,6:1045\n1128#4,6:1051\n1128#4,6:1082\n75#5:1004\n75#5:1005\n75#5:1006\n75#5:1007\n75#5:1014\n81#6,6:1057\n88#6,6:1072\n96#6:1081\n81#6,6:1088\n88#6,6:1103\n96#6:1112\n391#7,9:1063\n400#7,3:1078\n391#7,9:1094\n400#7,3:1109\n85#8:1113\n*S KotlinDebug\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt\n*L\n122#1:996\n122#1:997\n272#1:998,6\n306#1:1008,6\n309#1:1015,6\n339#1:1021,6\n354#1:1027,6\n363#1:1033,6\n375#1:1039,6\n388#1:1045,6\n396#1:1051,6\n450#1:1082,6\n300#1:1004\n301#1:1005\n302#1:1006\n303#1:1007\n308#1:1014\n385#1:1057,6\n385#1:1072,6\n385#1:1081\n450#1:1088,6\n450#1:1103,6\n450#1:1112\n385#1:1063,9\n385#1:1078,3\n450#1:1094,9\n450#1:1109,3\n305#1:1113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aR\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u0010\u001a \u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0002\u001a(\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u001b2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u000bH\u0001\u00a2\u0006\u0002\u0010\"\u001a+\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%2\u0013\u0008\u0008\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u000bH\u0083\u0008\u00a2\u0006\u0002\u0010&\u001a\u000c\u0010\'\u001a\u00020\u0015*\u00020(H\u0000\u001a\u0014\u0010)\u001a\u00020\u0012*\u00020\t2\u0006\u0010*\u001a\u00020\u0015H\u0002\u001a\u000c\u0010+\u001a\u00020,*\u00020-H\u0002\u001a\u001c\u0010.\u001a\u00020\u00152\u0006\u0010/\u001a\u00020(2\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u001bH\u0007\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001d\u00a8\u00061\u00b2\u0006\u0015\u00102\u001a\r\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0002\u0008\u000bX\u008a\u0084\u0002"
    }
    d2 = {
        "Popup",
        "",
        "alignment",
        "Landroidx/compose/ui/Alignment;",
        "offset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "properties",
        "Landroidx/compose/ui/window/PopupProperties;",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "Popup-K5zGePQ",
        "(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "popupPositionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "PopupPropertiesBaseFlags",
        "",
        "createFlags",
        "focusable",
        "",
        "securePolicy",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "clippingEnabled",
        "LocalPopupTestTag",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "",
        "getLocalPopupTestTag",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "LocalIsInPopupLayout",
        "getLocalIsInPopupLayout",
        "PopupTestTag",
        "tag",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "SimpleStack",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "isFlagSecureEnabled",
        "Landroid/view/View;",
        "flagsWithSecureFlagInherited",
        "isParentFlagSecureEnabled",
        "toIntBounds",
        "Landroidx/compose/ui/unit/IntRect;",
        "Landroid/graphics/Rect;",
        "isPopupLayout",
        "view",
        "testTag",
        "ui",
        "currentContent"
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
.field private static final LocalIsInPopupLayout:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PopupPropertiesBaseFlags:I = 0x40000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 426
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 438
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalIsInPopupLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalIsInPopupLayout$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v0, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "popupPositionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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

    .line 299
    move-object/from16 v1, p0

    move-object/from16 v12, p3

    move/from16 v13, p5

    const v0, -0x699ff8ef

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(Popup)P(2,1,3)299@13430L7,300@13469L7,301@13513L7,302@13568L7,303@13604L28,304@13659L29,305@13724L21,305@13707L38,307@13875L7,308@13905L1203,338@15144L388,338@15114L418,353@15549L219,353@15538L230,362@15814L126,362@15774L166,374@16531L147,374@16503L175,387@16947L573,395@17528L99,384@16856L771:AndroidPopup.android.kt#2oxthz"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p5

    .local v2, "$dirty":I
    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v5, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_1

    :cond_3
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v2, v6

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    :goto_2
    and-int/lit8 v6, p6, 0x4

    if-eqz v6, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v8, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v8, v13, 0x180

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_3

    :cond_6
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v2, v9

    goto :goto_4

    :cond_7
    move-object/from16 v8, p2

    :goto_4
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_9

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_5

    :cond_8
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v2, v9

    :cond_9
    and-int/lit16 v9, v2, 0x493

    const/16 v10, 0x492

    const/4 v15, 0x0

    if-eq v9, v10, :cond_a

    const/4 v9, 0x1

    goto :goto_6

    :cond_a
    move v9, v15

    :goto_6
    and-int/lit8 v10, v2, 0x1

    invoke-interface {v14, v9, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v9

    if-eqz v9, :cond_24

    if-eqz v3, :cond_b

    .line 144
    const/4 v3, 0x0

    move-object/from16 v18, v3

    .end local p1    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v3, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    goto :goto_7

    .line 299
    .end local v3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :cond_b
    move-object/from16 v18, v5

    .line 144
    .end local p1    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v18, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :goto_7
    if-eqz v6, :cond_c

    .line 146
    new-instance v19, Landroidx/compose/ui/window/PopupProperties;

    const/16 v24, 0xf

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v19 .. v25}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local p2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v19, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_8

    .line 144
    .end local v19    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_c
    move-object/from16 v19, v8

    .line 146
    .end local p2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local v19    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, -0x1

    const-string v5, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:298)"

    invoke-static {v0, v2, v3, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 300
    :cond_d
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x6

    .local v3, "$changed$iv":I
    move-object v5, v14

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1004
    .local v6, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v9, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 300
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$getCurrent":I
    move-object v0, v10

    check-cast v0, Landroid/view/View;

    .line 301
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x6

    .local v5, "$changed$iv":I
    move-object v6, v14

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 1005
    .local v10, "$i$f$getCurrent":I
    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 301
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$changed$iv":I
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$getCurrent":I
    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 302
    .local v5, "density":Landroidx/compose/ui/unit/Density;
    sget-object v3, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x6

    .local v6, "$changed$iv":I
    move-object v10, v14

    .local v10, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1006
    .local v16, "$i$f$getCurrent":I
    invoke-static {v10, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 302
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent":I
    move-object/from16 v20, v17

    check-cast v20, Ljava/lang/String;

    .line 303
    .local v20, "testTag":Ljava/lang/String;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .restart local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v6, 0x6

    .restart local v6    # "$changed$iv":I
    .restart local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1007
    .restart local v16    # "$i$f$getCurrent":I
    invoke-static {v10, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 303
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v6    # "$changed$iv":I
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$getCurrent":I
    move-object/from16 v21, v17

    check-cast v21, Landroidx/compose/ui/unit/LayoutDirection;

    .line 304
    .local v21, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-static {v14, v15}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v3

    .line 305
    .local v3, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    shr-int/lit8 v6, v2, 0x9

    and-int/lit8 v6, v6, 0xe

    invoke-static {v12, v14, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v6

    .local v6, "currentContent$delegate":Landroidx/compose/runtime/State;
    new-array v10, v15, [Ljava/lang/Object;

    .line 306
    const v4, 0x7e7ac446

    const-string v15, "CC(remember):AndroidPopup.android.kt#9igjgp"

    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object/from16 p1, v14

    .local p1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1008
    .local v17, "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1009
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v25, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v7, v11, :cond_e

    .line 1010
    const/4 v11, 0x0

    .line 306
    .local v11, "$i$a$-cache-AndroidPopup_androidKt$Popup$popupId$1":I
    sget-object v25, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupId$1$1;

    check-cast v25, Lkotlin/jvm/functions/Function0;

    .line 1010
    .end local v11    # "$i$a$-cache-AndroidPopup_androidKt$Popup$popupId$1":I
    move-object/from16 v11, v25

    .line 1011
    .local v11, "value$iv":Ljava/lang/Object;
    move-object/from16 v8, p1

    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1012
    move-object v7, v11

    .end local v11    # "value$iv":Ljava/lang/Object;
    goto :goto_9

    .line 1013
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_e
    move-object/from16 v8, p1

    .line 1008
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :goto_9
    nop

    .line 306
    .end local v4    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v4, 0x30

    invoke-static {v10, v7, v14, v4}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/UUID;

    .line 308
    .local v7, "popupId":Ljava/util/UUID;
    sget-object v4, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/ProvidableCompositionLocal;

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    move-object v10, v14

    .restart local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1014
    .local v11, "$i$f$getCurrent":I
    move-object/from16 p1, v0

    const v0, 0x789c5f52

    .end local v0    # "view":Landroid/view/View;
    .local p1, "view":Landroid/view/View;
    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 308
    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v8    # "$changed$iv":I
    .end local v10    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$getCurrent":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 309
    .local v8, "isCurrentlyInPopupLayout":Z
    const v0, 0x7e7adf84

    invoke-static {v14, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/16 v17, 0x0

    .local v17, "invalid$iv":Z
    move-object v0, v14

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 1015
    .local v24, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 1016
    .local v25, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v4, v9, :cond_f

    .line 1017
    const/16 v27, 0x0

    .line 310
    .local v27, "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1":I
    move-object v9, v0

    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    new-instance v0, Landroidx/compose/ui/window/PopupLayout;

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 310
    const/16 v10, 0x100

    const/4 v11, 0x0

    move-object/from16 v28, v9

    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v28, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    move/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v16, v4

    move-object v12, v6

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v13, v28

    move-object/from16 v4, p1

    move-object v6, v1

    move-object/from16 v1, v18

    .end local v6    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v18    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local v19    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .end local v20    # "testTag":Ljava/lang/String;
    .end local v28    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p1    # "view":Landroid/view/View;
    .local v1, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v2, "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v3, "testTag":Ljava/lang/String;
    .local v4, "view":Landroid/view/View;
    .local v12, "currentContent$delegate":Landroidx/compose/runtime/State;
    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v16, "it$iv":Ljava/lang/Object;
    .local v29, "$dirty":I
    .local v30, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;ZLandroidx/compose/ui/window/PopupLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 320
    move-object v1, v6

    .end local v1    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local v2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local v18    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local v19    # "properties":Landroidx/compose/ui/window/PopupProperties;
    move-object v2, v0

    .local v2, "$this$Popup_u24lambda_u242_u240":Landroidx/compose/ui/window/PopupLayout;
    const/4 v6, 0x0

    .line 321
    .local v6, "$i$a$-apply-AndroidPopup_androidKt$Popup$popupLayout$1$1":I
    new-instance v9, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;

    invoke-direct {v9, v2, v12}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/State;)V

    const v10, -0x11bbdae4

    const/4 v11, 0x1

    invoke-static {v10, v11, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object/from16 v10, v30

    .end local v30    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .local v10, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    invoke-virtual {v2, v10, v9}, Landroidx/compose/ui/window/PopupLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 336
    nop

    .line 320
    .end local v2    # "$this$Popup_u24lambda_u242_u240":Landroidx/compose/ui/window/PopupLayout;
    .end local v6    # "$i$a$-apply-AndroidPopup_androidKt$Popup$popupLayout$1$1":I
    nop

    .line 336
    nop

    .line 1017
    .end local v27    # "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1":I
    nop

    .line 1018
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1019
    move-object/from16 v16, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_a

    .line 1020
    .end local v10    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .end local v12    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$dirty":I
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$dirty":I
    .local v3, "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .local v4, "it$iv":Ljava/lang/Object;
    .local v6, "currentContent$delegate":Landroidx/compose/runtime/State;
    .restart local v20    # "testTag":Ljava/lang/String;
    .restart local p1    # "view":Landroid/view/View;
    :cond_f
    move-object v13, v0

    move/from16 v29, v2

    move-object v10, v3

    move-object/from16 v16, v4

    move-object v12, v6

    move-object/from16 v3, v20

    const/4 v11, 0x1

    move-object/from16 v4, p1

    .line 1015
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$dirty":I
    .end local v6    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v20    # "testTag":Ljava/lang/String;
    .end local v25    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p1    # "view":Landroid/view/View;
    .local v3, "testTag":Ljava/lang/String;
    .local v4, "view":Landroid/view/View;
    .restart local v10    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .restart local v12    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .restart local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local v29    # "$dirty":I
    :goto_a
    nop

    .line 309
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "invalid$iv":Z
    .end local v24    # "$i$f$cache":I
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .local v0, "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    const v2, 0x7e7b7735

    invoke-static {v14, v2, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v9, v29

    .end local v29    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit8 v6, v9, 0x70

    const/16 v13, 0x20

    if-ne v6, v13, :cond_10

    move v6, v11

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    or-int/2addr v2, v6

    and-int/lit16 v6, v9, 0x380

    const/16 v11, 0x100

    if-ne v6, v11, :cond_11

    const/4 v6, 0x1

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_c
    or-int/2addr v2, v6

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v2, v6

    .local v2, "invalid$iv":Z
    move-object v6, v14

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 1021
    .local v23, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 1022
    .local v24, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_13

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v11, v13, :cond_12

    goto :goto_d

    .line 1026
    :cond_12
    goto :goto_e

    .line 1023
    :cond_13
    :goto_d
    const/4 v13, 0x0

    .line 339
    .local v13, "$i$a$-cache-AndroidPopup_androidKt$Popup$2":I
    new-instance v16, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    .end local v0    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .end local v3    # "testTag":Ljava/lang/String;
    .local v17, "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v20    # "testTag":Ljava/lang/String;
    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .end local v17    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .end local v20    # "testTag":Ljava/lang/String;
    .restart local v0    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v3    # "testTag":Ljava/lang/String;
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 1023
    .end local v13    # "$i$a$-cache-AndroidPopup_androidKt$Popup$2":I
    move-object/from16 v13, v16

    .line 1024
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1025
    move-object v11, v13

    .line 1021
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v13    # "value$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_e
    nop

    .line 339
    .end local v2    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v2, 0x0

    invoke-static {v0, v11, v14, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 354
    const v2, 0x7e7ba92c

    invoke-static {v14, v2, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v6, v9, 0x70

    const/16 v13, 0x20

    if-ne v6, v13, :cond_14

    const/4 v11, 0x1

    goto :goto_f

    :cond_14
    const/4 v11, 0x0

    :goto_f
    or-int/2addr v2, v11

    and-int/lit16 v6, v9, 0x380

    const/16 v11, 0x100

    if-ne v6, v11, :cond_15

    const/4 v11, 0x1

    goto :goto_10

    :cond_15
    const/4 v11, 0x0

    :goto_10
    or-int/2addr v2, v11

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v2, v6

    .restart local v2    # "invalid$iv":Z
    move-object v6, v14

    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1027
    .local v11, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 1028
    .local v23, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_17

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v17, v0

    .end local v0    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v17    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v13, v0, :cond_16

    goto :goto_11

    .line 1032
    :cond_16
    move/from16 p2, v2

    move-object/from16 v20, v3

    move-object/from16 v2, v17

    move-object/from16 v0, v21

    goto :goto_12

    .line 1028
    .end local v17    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v0    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    :cond_17
    move-object/from16 v17, v0

    .line 1029
    .end local v0    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v17    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    :goto_11
    const/4 v0, 0x0

    .line 354
    .local v0, "$i$a$-cache-AndroidPopup_androidKt$Popup$3":I
    new-instance v16, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;

    move-object/from16 v20, v3

    .end local v3    # "testTag":Ljava/lang/String;
    .restart local v20    # "testTag":Ljava/lang/String;
    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$3$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    move/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 v2, v17

    move-object/from16 v0, v21

    .end local v17    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .end local v20    # "testTag":Ljava/lang/String;
    .end local v21    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v0, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v2, "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .restart local v3    # "testTag":Ljava/lang/String;
    .local p1, "$i$a$-cache-AndroidPopup_androidKt$Popup$3":I
    .local p2, "invalid$iv":Z
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 1029
    .end local p1    # "$i$a$-cache-AndroidPopup_androidKt$Popup$3":I
    move-object/from16 p1, v16

    .line 1030
    .local p1, "value$iv":Ljava/lang/Object;
    move-object/from16 v3, p1

    .end local p1    # "value$iv":Ljava/lang/Object;
    .local v3, "value$iv":Ljava/lang/Object;
    .restart local v20    # "testTag":Ljava/lang/String;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1031
    move-object v13, v3

    .line 1027
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v23    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_12
    nop

    .line 354
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v13, v14, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 363
    const v3, 0x7e7bc9ef

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit8 v6, v9, 0xe

    const/4 v11, 0x4

    if-ne v6, v11, :cond_18

    const/4 v11, 0x1

    goto :goto_13

    :cond_18
    const/4 v11, 0x0

    :goto_13
    or-int/2addr v3, v11

    .local v3, "invalid$iv":Z
    move-object v6, v14

    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1033
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1034
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1a

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v3

    .end local v3    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v13, v3, :cond_19

    goto :goto_14

    .line 1038
    :cond_19
    goto :goto_15

    .line 1034
    .end local p1    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_1a
    move/from16 p1, v3

    .line 1035
    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_14
    const/4 v3, 0x0

    .line 363
    .local v3, "$i$a$-cache-AndroidPopup_androidKt$Popup$4":I
    move/from16 p2, v3

    .end local v3    # "$i$a$-cache-AndroidPopup_androidKt$Popup$4":I
    .local p2, "$i$a$-cache-AndroidPopup_androidKt$Popup$4":I
    new-instance v3, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4$1;

    invoke-direct {v3, v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1035
    .end local p2    # "$i$a$-cache-AndroidPopup_androidKt$Popup$4":I
    nop

    .line 1036
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1037
    move-object v13, v3

    .line 1033
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_15
    nop

    .line 363
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v3, v9, 0xe

    invoke-static {v1, v13, v14, v3}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 375
    const v3, 0x7e7c23a4

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv":Z
    move-object v6, v14

    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1039
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1040
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1c

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v13, v1, :cond_1b

    goto :goto_16

    .line 1044
    :cond_1b
    move/from16 p2, v3

    goto :goto_17

    .line 1041
    :cond_1c
    :goto_16
    const/4 v1, 0x0

    .line 375
    .local v1, "$i$a$-cache-AndroidPopup_androidKt$Popup$5":I
    move/from16 p1, v1

    .end local v1    # "$i$a$-cache-AndroidPopup_androidKt$Popup$5":I
    .local p1, "$i$a$-cache-AndroidPopup_androidKt$Popup$5":I
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;

    move/from16 p2, v3

    .end local v3    # "invalid$iv":Z
    .local p2, "invalid$iv":Z
    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1041
    .end local p1    # "$i$a$-cache-AndroidPopup_androidKt$Popup$5":I
    nop

    .line 1042
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1043
    move-object v13, v1

    .line 1039
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_17
    nop

    .line 375
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    .end local p2    # "invalid$iv":Z
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v3, 0x0

    invoke-static {v2, v13, v14, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 388
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const v3, 0x7e7c594e

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    .restart local v3    # "invalid$iv":Z
    move-object v6, v14

    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1045
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1046
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_1e

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p1, v3

    .end local v3    # "invalid$iv":Z
    .local p1, "invalid$iv":Z
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v13, v3, :cond_1d

    goto :goto_18

    .line 1050
    :cond_1d
    goto :goto_19

    .line 1046
    .end local p1    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_1e
    move/from16 p1, v3

    .line 1047
    .end local v3    # "invalid$iv":Z
    .restart local p1    # "invalid$iv":Z
    :goto_18
    const/4 v3, 0x0

    .line 388
    .local v3, "$i$a$-cache-AndroidPopup_androidKt$Popup$7":I
    move/from16 p2, v3

    .end local v3    # "$i$a$-cache-AndroidPopup_androidKt$Popup$7":I
    .local p2, "$i$a$-cache-AndroidPopup_androidKt$Popup$7":I
    new-instance v3, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;

    invoke-direct {v3, v2}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 1047
    .end local p2    # "$i$a$-cache-AndroidPopup_androidKt$Popup$7":I
    nop

    .line 1048
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1049
    move-object v13, v3

    .line 1045
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_19
    nop

    .line 388
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    .end local p1    # "invalid$iv":Z
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v1, v13}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 396
    const v3, 0x7e7ca014

    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    move-object v6, v0

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v3, v6

    .local v3, "invalid$iv":Z
    move-object v6, v14

    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1051
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1052
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_20

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v13, v1, :cond_1f

    goto :goto_1a

    .line 1056
    :cond_1f
    goto :goto_1b

    .line 1052
    :cond_20
    move-object/from16 p1, v1

    .line 1053
    :goto_1a
    const/4 v1, 0x0

    .line 396
    .local v1, "$i$a$-cache-AndroidPopup_androidKt$Popup$8":I
    move/from16 p2, v1

    .end local v1    # "$i$a$-cache-AndroidPopup_androidKt$Popup$8":I
    .local p2, "$i$a$-cache-AndroidPopup_androidKt$Popup$8":I
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1053
    .end local p2    # "$i$a$-cache-AndroidPopup_androidKt$Popup$8":I
    nop

    .line 1054
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1055
    move-object v13, v1

    .line 1051
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1b
    nop

    .line 396
    .end local v3    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 385
    move-object/from16 v1, p1

    .local v1, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object v3, v14

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move v11, v6

    .local v11, "$changed$iv":I
    const/4 v15, 0x0

    .line 1057
    .local v15, "$i$f$Layout":I
    const v6, -0x451e1427

    move-object/from16 v21, v0

    .end local v0    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .restart local v21    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    const-string v0, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v3, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1058
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 1059
    .local v0, "compositeKeyHash$iv":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 1060
    .local v6, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p1, v0

    .end local v0    # "compositeKeyHash$iv":I
    .local p1, "compositeKeyHash$iv":I
    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1062
    .local v0, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    move-object/from16 p2, v1

    .end local v1    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p2, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v1, v11, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/lit8 v1, v1, 0x6

    .line 1061
    move-object/from16 p4, v16

    .local p4, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v3

    .local v1, "$changed$iv$iv":I
    .local v16, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1063
    .local v17, "$i$f$ReusableComposeNode":I
    move/from16 v22, v1

    .end local v1    # "$changed$iv$iv":I
    .local v22, "$changed$iv$iv":I
    const v1, -0x20f7d59c

    move-object/from16 v23, v2

    .end local v2    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    .local v23, "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v24, v3

    .end local v16    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v24, "$composer$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1064
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1065
    :cond_21
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1066
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1067
    move-object/from16 v1, p4

    .end local p4    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    .line 1069
    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p4    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_22
    move-object/from16 v1, p4

    .end local p4    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1071
    :goto_1c
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1072
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v1

    .end local v1    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v26, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1073
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1074
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v27, v3

    .end local v3    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v27, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1075
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1076
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1077
    nop

    .line 1071
    .end local v2    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 1078
    shr-int/lit8 v1, v22, 0x6

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object/from16 v2, v27

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 386
    .local v3, "$i$a$-Layout-AndroidPopup_androidKt$Popup$6":I
    move-object/from16 p4, v0

    .end local v0    # "materialized$iv":Landroidx/compose/ui/Modifier;
    .local p4, "materialized$iv":Landroidx/compose/ui/Modifier;
    const v0, -0x391dcad7

    move/from16 v16, v1

    .end local v1    # "$changed":I
    .local v16, "$changed":I
    const-string v1, "C:AndroidPopup.android.kt#2oxthz"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1078
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-AndroidPopup_androidKt$Popup$6":I
    .end local v16    # "$changed":I
    nop

    .line 1079
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1063
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1080
    nop

    .line 1057
    .end local v17    # "$i$f$ReusableComposeNode":I
    .end local v22    # "$changed$iv$iv":I
    .end local v26    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static/range {v24 .. v24}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1081
    nop

    .end local v6    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v11    # "$changed$iv":I
    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v15    # "$i$f$Layout":I
    .end local v24    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local p1    # "compositeKeyHash$iv":I
    .end local p2    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p4    # "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 400
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "density":Landroidx/compose/ui/unit/Density;
    .end local v7    # "popupId":Ljava/util/UUID;
    .end local v8    # "isCurrentlyInPopupLayout":Z
    .end local v10    # "parentComposition":Landroidx/compose/runtime/CompositionContext;
    .end local v12    # "currentContent$delegate":Landroidx/compose/runtime/State;
    .end local v20    # "testTag":Ljava/lang/String;
    .end local v21    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v23    # "popupLayout":Landroidx/compose/ui/window/PopupLayout;
    :cond_23
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_1d

    .line 294
    .end local v9    # "$dirty":I
    .end local v18    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local v19    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v2, "$dirty":I
    .local p1, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local p2, "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_24
    move v9, v2

    .end local v2    # "$dirty":I
    .restart local v9    # "$dirty":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v5

    move-object v3, v8

    .line 400
    .end local p1    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local p2    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v2, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v3, "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_1d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_25

    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$9;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_25
    return-void
.end method

.method private static final Popup$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 4
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 1113
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 305
    return-object v0
.end method

.method public static final Popup-K5zGePQ(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "alignment"    # Landroidx/compose/ui/Alignment;
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0"    # J
    .param p3, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p4, "properties"    # Landroidx/compose/ui/window/PopupProperties;
    .param p5, "content"    # Lkotlin/jvm/functions/Function2;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Alignment;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/PopupProperties;",
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

    .line 270
    move/from16 v7, p7

    const v0, 0x43b737e

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p6    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Popup)P(!1,2:c#ui.unit.IntOffset,3,4)271@12454L82,273@12542L166:AndroidPopup.android.kt#2oxthz"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p7

    .local v1, "$dirty":I
    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v1, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-wide/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v7, 0x30

    if-nez v8, :cond_5

    move-wide/from16 v8, p1

    invoke-interface {v12, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v1, v10

    goto :goto_3

    :cond_5
    move-wide/from16 v8, p1

    :goto_3
    and-int/lit8 v10, p8, 0x4

    if-eqz v10, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v11, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v7, 0x180

    if-nez v11, :cond_8

    move-object/from16 v11, p3

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x100

    goto :goto_4

    :cond_7
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v1, v13

    goto :goto_5

    :cond_8
    move-object/from16 v11, p3

    :goto_5
    and-int/lit8 v13, p8, 0x8

    if-eqz v13, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v14, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v14, v7, 0xc00

    if-nez v14, :cond_b

    move-object/from16 v14, p4

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v1, v15

    goto :goto_7

    :cond_b
    move-object/from16 v14, p4

    :goto_7
    and-int/lit16 v15, v7, 0x6000

    if-nez v15, :cond_d

    move-object/from16 v15, p5

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    const/16 v16, 0x2000

    :goto_8
    or-int v1, v1, v16

    goto :goto_9

    :cond_d
    move-object/from16 v15, p5

    :goto_9
    const/16 p6, 0x20

    and-int/lit16 v6, v1, 0x2493

    const/16 v3, 0x2492

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eq v6, v3, :cond_e

    move/from16 v3, v18

    goto :goto_a

    :cond_e
    move/from16 v3, v17

    :goto_a
    and-int/lit8 v6, v1, 0x1

    invoke-interface {v12, v3, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v2, :cond_f

    .line 121
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .end local p0    # "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    goto :goto_b

    .line 270
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local p0    # "alignment":Landroidx/compose/ui/Alignment;
    :cond_f
    move-object v2, v4

    .line 121
    .end local p0    # "alignment":Landroidx/compose/ui/Alignment;
    .restart local v2    # "alignment":Landroidx/compose/ui/Alignment;
    :goto_b
    if-eqz v5, :cond_10

    .line 122
    const/4 v3, 0x0

    .local v3, "x$iv":I
    const/4 v4, 0x0

    .local v4, "y$iv":I
    const/4 v5, 0x0

    .line 996
    .local v5, "$i$f$IntOffset":I
    move v6, v4

    .local v6, "val2$iv$iv":I
    move/from16 p0, v3

    .local p0, "val1$iv$iv":I
    const/16 v19, 0x0

    .line 997
    .local v19, "$i$f$packInts":I
    move/from16 v0, p0

    move/from16 v20, v4

    .end local v3    # "x$iv":I
    .end local v4    # "y$iv":I
    .local v0, "val1$iv$iv":I
    .local v20, "y$iv":I
    .local p0, "x$iv":I
    int-to-long v3, v0

    shl-long v3, v3, p6

    move-wide/from16 v21, v3

    int-to-long v3, v6

    const-wide v23, 0xffffffffL

    and-long v3, v3, v23

    or-long v3, v21, v3

    .line 996
    .end local v0    # "val1$iv$iv":I
    .end local v6    # "val2$iv$iv":I
    .end local v19    # "$i$f$packInts":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v3

    .end local v5    # "$i$f$IntOffset":I
    .end local v20    # "y$iv":I
    .end local p0    # "x$iv":I
    .end local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .local v3, "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    goto :goto_c

    .line 121
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .restart local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    :cond_10
    move-wide v3, v8

    .line 996
    .end local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .restart local v3    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    :goto_c
    if-eqz v10, :cond_11

    .line 124
    const/4 v0, 0x0

    move-object v9, v0

    .end local p3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v0, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    goto :goto_d

    .line 996
    .end local v0    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local p3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :cond_11
    move-object v9, v11

    .line 124
    .end local p3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v9, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    :goto_d
    if-eqz v13, :cond_12

    .line 126
    new-instance v20, Landroidx/compose/ui/window/PopupProperties;

    const/16 v25, 0xf

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v26}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v20

    .end local p4    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v20, "properties":Landroidx/compose/ui/window/PopupProperties;
    goto :goto_e

    .line 124
    .end local v20    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local p4    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_12
    move-object v10, v14

    .line 126
    .end local p4    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v10, "properties":Landroidx/compose/ui/window/PopupProperties;
    :goto_e
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    const-string v5, "androidx.compose.ui.window.Popup (AndroidPopup.android.kt:269)"

    const v6, 0x43b737e

    invoke-static {v6, v1, v0, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 272
    :cond_13
    const v0, -0x1cd35a10

    const-string v5, "CC(remember):AndroidPopup.android.kt#9igjgp"

    invoke-static {v12, v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v0, v1, 0xe

    const/4 v5, 0x4

    if-ne v0, v5, :cond_14

    move/from16 v0, v18

    goto :goto_f

    :cond_14
    move/from16 v0, v17

    :goto_f
    and-int/lit8 v5, v1, 0x70

    move/from16 v6, p6

    if-ne v5, v6, :cond_15

    move/from16 v17, v18

    :cond_15
    or-int v0, v0, v17

    .local v0, "invalid$iv":Z
    move-object v5, v12

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 998
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 999
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_17

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_16

    goto :goto_10

    .line 1003
    :cond_16
    move/from16 p0, v0

    goto :goto_11

    .line 1000
    :cond_17
    :goto_10
    const/4 v13, 0x0

    .line 272
    .local v13, "$i$a$-cache-AndroidPopup_androidKt$Popup$popupPositioner$1":I
    new-instance v14, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    move/from16 p0, v0

    .end local v0    # "invalid$iv":Z
    .local p0, "invalid$iv":Z
    const/4 v0, 0x0

    invoke-direct {v14, v2, v3, v4, v0}, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;-><init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1000
    .end local v13    # "$i$a$-cache-AndroidPopup_androidKt$Popup$popupPositioner$1":I
    nop

    .line 1001
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1002
    move-object v8, v14

    .line 998
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    :goto_11
    nop

    .line 272
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local p0    # "invalid$iv":Z
    check-cast v8, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 271
    move-object v0, v8

    .line 275
    .local v0, "popupPositioner":Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;
    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 276
    nop

    .line 277
    nop

    .line 278
    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0x70

    shr-int/lit8 v6, v1, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x3

    and-int/lit16 v6, v6, 0x1c00

    or-int v13, v5, v6

    .line 274
    const/4 v14, 0x0

    move-object v11, v15

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 280
    .end local v0    # "popupPositioner":Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;
    :cond_18
    move-wide/from16 v27, v3

    move-object v4, v9

    move-wide/from16 v8, v27

    move-object v5, v10

    goto :goto_12

    .line 264
    .end local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .end local v9    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local v10    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .local p0, "alignment":Landroidx/compose/ui/Alignment;
    .restart local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .restart local p3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .restart local p4    # "properties":Landroidx/compose/ui/window/PopupProperties;
    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    move-object v4, v11

    move-object v5, v14

    .line 280
    .end local p0    # "alignment":Landroidx/compose/ui/Alignment;
    .end local p1    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .end local p3    # "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .end local p4    # "properties":Landroidx/compose/ui/window/PopupProperties;
    .restart local v2    # "alignment":Landroidx/compose/ui/Alignment;
    .local v4, "onDismissRequest":Lkotlin/jvm/functions/Function0;
    .local v5, "properties":Landroidx/compose/ui/window/PopupProperties;
    .local v8, "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_1a

    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;

    move-wide/from16 v27, v8

    move v9, v1

    move-object v1, v2

    move-wide/from16 v2, v27

    move-object/from16 v6, p5

    move/from16 v8, p8

    .end local v8    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .local v9, "$dirty":I
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$1;-><init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    .end local v9    # "$dirty":I
    .local v1, "$dirty":I
    .local v2, "alignment":Landroidx/compose/ui/Alignment;
    .restart local v8    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    :cond_1a
    move-wide/from16 v27, v8

    move v9, v1

    move-object v1, v2

    move-wide/from16 v2, v27

    .end local v8    # "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .local v1, "alignment":Landroidx/compose/ui/Alignment;
    .local v2, "$v$c$androidx-compose-ui-unit-IntOffset$-offset$0":J
    .restart local v9    # "$dirty":I
    :goto_13
    return-void
.end method

.method public static final PopupTestTag(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 441
    const v0, 0x50ea043d

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(PopupTestTag)P(1)441@19264L75:AndroidPopup.android.kt#2oxthz"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, p3, 0x30

    if-nez v2, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.window.PopupTestTag (AndroidPopup.android.kt:440)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 442
    :cond_5
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget v2, Landroidx/compose/runtime/ProvidedValue;->$stable:I

    and-int/lit8 v3, v1, 0x70

    or-int/2addr v2, v3

    invoke-static {v0, p1, p2, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 441
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 443
    :cond_7
    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;

    invoke-direct {v2, p0, p1, p3}, Landroidx/compose/ui/window/AndroidPopup_androidKt$PopupTestTag$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method private static final SimpleStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 449
    .local v1, "$i$f$SimpleStack":I
    const v2, 0x190ffb5

    const-string v3, "CC(SimpleStack)P(1)449@19649L899,449@19602L946:AndroidPopup.android.kt#2oxthz"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 450
    const v2, -0x1eb005a8

    const-string v3, "CC(remember):AndroidPopup.android.kt#9igjgp"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p2

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1082
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1083
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_0

    .line 1084
    const/4 v7, 0x0

    .line 450
    .local v7, "$i$a$-cache-AndroidPopup_androidKt$SimpleStack$1":I
    sget-object v8, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;

    check-cast v8, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1084
    .end local v7    # "$i$a$-cache-AndroidPopup_androidKt$SimpleStack$1":I
    nop

    .line 1085
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1086
    move-object v5, v8

    .end local v8    # "value$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1087
    :cond_0
    nop

    .line 1082
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_0
    nop

    .line 450
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v2, v5

    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v2, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v3, p3, 0x3

    and-int/lit8 v3, v3, 0xe

    or-int/lit16 v3, v3, 0x180

    shl-int/lit8 v4, p3, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .local v3, "$changed$iv":I
    move-object/from16 v4, p2

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v5, p0

    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v6, 0x0

    .line 1088
    .local v6, "$i$f$Layout":I
    const v7, -0x451e1427

    const-string v8, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v4, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1089
    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    .line 1090
    .local v7, "compositeKeyHash$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v8

    .line 1091
    .local v8, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v4, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 1093
    .local v9, "materialized$iv":Landroidx/compose/ui/Modifier;
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    shl-int/lit8 v11, v3, 0x6

    and-int/lit16 v11, v11, 0x380

    or-int/lit8 v11, v11, 0x6

    .line 1092
    nop

    .local v11, "$changed$iv$iv":I
    move-object v12, v4

    .local v10, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 1094
    .local v13, "$i$f$ReusableComposeNode":I
    const v14, -0x20f7d59c

    const-string v15, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1095
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1096
    :cond_1
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1097
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1098
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 1100
    :cond_2
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1102
    :goto_1
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 1103
    .local v15, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1104
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v17, v1

    .end local v1    # "$i$f$SimpleStack":I
    .local v17, "$i$f$SimpleStack":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1106
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1107
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1108
    nop

    .line 1102
    .end local v14    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 1109
    shr-int/lit8 v0, v11, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v12, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1094
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1111
    nop

    .line 1088
    .end local v10    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$changed$iv$iv":I
    .end local v12    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$ReusableComposeNode":I
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1112
    nop

    .line 449
    .end local v2    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v6    # "$i$f$Layout":I
    .end local v7    # "compositeKeyHash$iv":I
    .end local v8    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "materialized$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 476
    return-void
.end method

.method public static final synthetic access$Popup$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$currentContent$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createFlags(ZLandroidx/compose/ui/window/SecureFlagPolicy;Z)I
    .locals 1
    .param p0, "focusable"    # Z
    .param p1, "securePolicy"    # Landroidx/compose/ui/window/SecureFlagPolicy;
    .param p2, "clippingEnabled"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->createFlags(ZLandroidx/compose/ui/window/SecureFlagPolicy;Z)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$flagsWithSecureFlagInherited(Landroidx/compose/ui/window/PopupProperties;Z)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/window/PopupProperties;
    .param p1, "isParentFlagSecureEnabled"    # Z

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->flagsWithSecureFlagInherited(Landroidx/compose/ui/window/PopupProperties;Z)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 1
    .param p0, "$receiver"    # Landroid/graphics/Rect;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    return-object v0
.end method

.method private static final createFlags(ZLandroidx/compose/ui/window/SecureFlagPolicy;Z)I
    .locals 2
    .param p0, "focusable"    # Z
    .param p1, "securePolicy"    # Landroidx/compose/ui/window/SecureFlagPolicy;
    .param p2, "clippingEnabled"    # Z

    .line 410
    const/high16 v0, 0x40000

    .line 411
    .local v0, "flags":I
    if-nez p0, :cond_0

    .line 412
    or-int/lit8 v0, v0, 0x8

    .line 414
    :cond_0
    sget-object v1, Landroidx/compose/ui/window/SecureFlagPolicy;->SecureOn:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-ne p1, v1, :cond_1

    .line 415
    or-int/lit16 v0, v0, 0x2000

    .line 417
    :cond_1
    if-nez p2, :cond_2

    .line 418
    or-int/lit16 v0, v0, 0x200

    .line 420
    :cond_2
    return v0
.end method

.method private static final flagsWithSecureFlagInherited(Landroidx/compose/ui/window/PopupProperties;Z)I
    .locals 1
    .param p0, "$this$flagsWithSecureFlagInherited"    # Landroidx/compose/ui/window/PopupProperties;
    .param p1, "isParentFlagSecureEnabled"    # Z

    .line 974
    nop

    .line 975
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupProperties;->getInheritSecurePolicy$ui()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 976
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupProperties;->getFlags$ui()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupProperties;->getInheritSecurePolicy$ui()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 978
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupProperties;->getFlags$ui()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupProperties;->getFlags$ui()I

    move-result v0

    .line 980
    :goto_0
    return v0
.end method

.method public static final getLocalIsInPopupLayout()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 438
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalIsInPopupLayout:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getLocalPopupTestTag()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->LocalPopupTestTag:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final isFlagSecureEnabled(Landroid/view/View;)Z
    .locals 3
    .param p0, "$this$isFlagSecureEnabled"    # Landroid/view/View;

    .line 966
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 967
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 968
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 970
    :cond_2
    return v1
.end method

.method public static final isPopupLayout(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "testTag"    # Ljava/lang/String;

    .line 994
    instance-of v0, p0, Landroidx/compose/ui/window/PopupLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupLayout;->getTestTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic isPopupLayout$default(Landroid/view/View;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    .line 993
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isPopupLayout(Landroid/view/View;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .param p0, "$this$toIntBounds"    # Landroid/graphics/Rect;

    .line 982
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0
.end method
