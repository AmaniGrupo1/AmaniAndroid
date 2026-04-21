.class public final Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;
.super Ljava/lang/Object;
.source "DefaultTextContextMenuDropdownProvider.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTextContextMenuDropdownProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTextContextMenuDropdownProvider.android.kt\nandroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,286:1\n1128#2,6:287\n1128#2,6:293\n1128#2,6:300\n1128#2,6:307\n1128#2,3:313\n1131#2,3:317\n1128#2,6:320\n75#3:299\n75#3:306\n640#4:316\n85#5:326\n35#6,5:327\n*S KotlinDebug\n*F\n+ 1 DefaultTextContextMenuDropdownProvider.android.kt\nandroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt\n*L\n112#1:287,6\n122#1:293,6\n141#1:300,6\n170#1:307,6\n178#1:313,3\n178#1:317,3\n125#1:320,6\n137#1:299\n168#1:306\n178#1:316\n125#1:326\n142#1:327,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0004H\u0001\u00a2\u0006\u0002\u0010\u0005\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0011\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0004H\u0001\u00a2\u0006\u0002\u0010\u0008\u001a\r\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0010\u000b\u001a+\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0003H\u0003\u00a2\u0006\u0002\u0010\u0015\u001a\u001d\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0003\u00a2\u0006\u0002\u0010\u0019\u001a!\u0010\u001a\u001a\u00020\u00012\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 \"\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0018X\u008a\u0084\u0002"
    }
    d2 = {
        "ProvideDefaultTextContextMenuDropdown",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "defaultTextContextMenuDropdown",
        "Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;",
        "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;",
        "DefaultPopupProperties",
        "Landroidx/compose/ui/window/PopupProperties;",
        "OpenContextMenu",
        "session",
        "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;",
        "dataProvider",
        "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;",
        "anchorLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "DefaultTextContextMenuDropdown",
        "data",
        "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;",
        "(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V",
        "IconBox",
        "resId",
        "",
        "tint",
        "Landroidx/compose/ui/graphics/Color;",
        "IconBox-RPmYEkk",
        "(IJLandroidx/compose/runtime/Composer;I)V",
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
.field private static final DefaultPopupProperties:Landroidx/compose/ui/window/PopupProperties;


# direct methods
.method public static synthetic $r8$lambda$JhNMmkcFebL4F8RFVyRITua8CsM(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown$lambda$0$0$0$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TOC9x0jwKyNP4BIdeszXfBwv2GU(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/unit/IntOffset;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y9RHtm8EFKhIlq3Tf3-c6rLn6Dk(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu$lambda$1$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ww830TBVrFKXVjb-4uOeIOSMedo(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yTfaDh9hAXw-J9f2TWpXQAtFhW0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown$lambda$0$0$0$1(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 103
    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultPopupProperties:Landroidx/compose/ui/window/PopupProperties;

    return-void
.end method

.method private static final DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p0, "session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;
    .param p1, "data"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 134
    const v0, 0x71816bae

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string p2, "C(DefaultTextContextMenuDropdown)N(session,data)140@5937L900,140@5912L925:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {v4, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move p2, p3

    .local p2, "$dirty":I
    and-int/lit8 v1, p3, 0x6

    const/4 v2, 0x4

    if-nez v1, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-nez v1, :cond_0

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr p2, v1

    :cond_2
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_4

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_2

    :cond_3
    const/16 v1, 0x10

    :goto_2
    or-int/2addr p2, v1

    :cond_4
    and-int/lit8 v1, p2, 0x13

    const/16 v3, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v3, :cond_5

    move v1, v6

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    and-int/lit8 v3, p2, 0x1

    invoke-interface {v4, v1, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:133)"

    invoke-static {v0, p2, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 136
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    const v0, -0x3c2b7b58

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "136@5856L7"

    invoke-static {v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    move-object v3, v4

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 299
    .local v7, "$i$f$getCurrent":I
    const v8, 0x789c5f52

    const-string v9, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 136
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$getCurrent":I
    check-cast v8, Landroid/content/Context;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_4

    .line 138
    :cond_7
    const v0, -0x3c2abb88

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 139
    const/4 v8, 0x0

    .line 136
    :goto_4
    nop

    .line 135
    nop

    .line 141
    .local v8, "context":Landroid/content/Context;
    const v0, 0x16d55f72

    const-string v1, "CC(remember):DefaultTextContextMenuDropdownProvider.android.kt#9igjgp"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v1, p2, 0xe

    if-eq v1, v2, :cond_8

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_9

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move v5, v6

    :cond_9
    or-int/2addr v0, v5

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v4

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 300
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 301
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_b

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_a

    goto :goto_5

    .line 305
    :cond_a
    goto :goto_6

    .line 302
    :cond_b
    :goto_5
    const/4 v6, 0x0

    .line 141
    .local v6, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1":I
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1, v8, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V

    .line 302
    .end local v6    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1":I
    nop

    .line 303
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 304
    move-object v3, v7

    .line 300
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 141
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->ContextMenuColumnBuilder(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v8    # "context":Landroid/content/Context;
    goto :goto_7

    .line 131
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 163
    :cond_d
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method private static final DefaultTextContextMenuDropdown$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lkotlin/Unit;
    .locals 16
    .param p0, "$data"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "$session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;
    .param p3, "$this$ContextMenuColumnBuilder"    # Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->getComponents()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 327
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_5

    .line 328
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 329
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .local v5, "component":Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;
    const/4 v6, 0x0

    .line 143
    .local v6, "$i$a$-fastForEach-DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1":I
    nop

    .line 144
    instance-of v7, v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    if-eqz v7, :cond_1

    .line 145
    new-instance v9, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda4;

    invoke-direct {v9, v5}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)V

    .line 148
    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->getLeadingIcon()I

    move-result v7

    if-nez v7, :cond_0

    .line 149
    const/4 v7, 0x0

    move-object v12, v7

    goto :goto_1

    .line 151
    :cond_0
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;

    invoke-direct {v7, v5}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;)V

    const v8, -0x731428a5

    const/4 v10, 0x1

    invoke-static {v8, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function3;

    move-object v12, v7

    .line 145
    :goto_1
    new-instance v13, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda5;

    move-object/from16 v7, p2

    invoke-direct {v13, v5, v7}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v8 .. v15}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->item$default(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    goto :goto_2

    .line 155
    :cond_1
    move-object/from16 v7, p2

    instance-of v8, v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    if-eqz v8, :cond_3

    .line 156
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_2

    .line 157
    sget-object v8, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    move-object v9, v5

    check-cast v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual {v8, v11, v10, v9}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;)V

    goto :goto_2

    .line 156
    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    goto :goto_2

    .line 159
    :cond_3
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    instance-of v8, v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-eqz v8, :cond_4

    invoke-virtual {v11}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->separator()V

    .line 161
    :cond_4
    :goto_2
    nop

    .line 329
    .end local v5    # "component":Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;
    .end local v6    # "$i$a$-fastForEach-DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1":I
    nop

    .line 327
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v10, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    .line 331
    .end local v2    # "index$iv":I
    nop

    .line 162
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final DefaultTextContextMenuDropdown$lambda$0$0$0$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 3
    .param p0, "$component"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x27b3a34e

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdown.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:145)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 146
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v0
.end method

.method private static final DefaultTextContextMenuDropdown$lambda$0$0$0$1(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;
    .locals 1
    .param p0, "$component"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;
    .param p1, "$session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 153
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final DefaultTextContextMenuDropdown$lambda$1(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0, "resId"    # I
    .param p1, "$v$c$androidx-compose-ui-graphics-Color$-tint$0"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 167
    move/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v7, p4

    const v1, -0x49eca00d

    move-object/from16 v4, p3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(IconBox)N(resId,tint:c#ui.graphics.Color)167@6979L7,169@7024L182,176@7267L35,177@7325L75,178@7405L146:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p4

    .local v4, "$dirty":I
    and-int/lit8 v5, v7, 0x6

    const/4 v6, 0x4

    if-nez v5, :cond_1

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v4, v5

    :cond_1
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_3

    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    :cond_3
    move v10, v4

    .end local v4    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit8 v4, v10, 0x13

    const/16 v5, 0x12

    const/4 v12, 0x0

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    and-int/lit8 v5, v10, 0x1

    invoke-interface {v8, v4, v5}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    const-string/jumbo v4, "androidx.compose.foundation.text.contextmenu.internal.IconBox (DefaultTextContextMenuDropdownProvider.android.kt:166)"

    invoke-static {v1, v10, v5, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 168
    :cond_5
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    move-object v13, v8

    .local v13, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 306
    .local v14, "$i$f$getCurrent":I
    const v15, 0x789c5f52

    const-string v11, "CC(<get-current>):CompositionLocal.kt#9igjgp"

    invoke-static {v13, v15, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 168
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v4    # "$changed$iv":I
    .end local v13    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$getCurrent":I
    check-cast v11, Landroid/content/Context;

    .line 170
    .local v11, "context":Landroid/content/Context;
    const v1, 0x7ebb3fe9

    const-string v4, "CC(remember):DefaultTextContextMenuDropdownProvider.android.kt#9igjgp"

    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v13, v10, 0xe

    if-ne v13, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    move v6, v12

    :goto_3
    or-int/2addr v1, v6

    .local v1, "invalid$iv":Z
    move-object v6, v8

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 307
    .local v13, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 308
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_8

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_7

    goto :goto_4

    .line 312
    :cond_7
    move/from16 v18, v1

    goto :goto_5

    .line 309
    :cond_8
    :goto_4
    const/4 v9, 0x0

    .line 171
    .local v9, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$IconBox$drawableResourceId$1":I
    nop

    .line 172
    filled-new-array {v0}, [I

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 173
    move/from16 v18, v1

    const/4 v1, -0x1

    .end local v1    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual {v5, v12, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .end local v9    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$IconBox$drawableResourceId$1":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 309
    nop

    .line 310
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    move-object v14, v1

    .line 307
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_5
    nop

    .line 170
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    .end local v18    # "invalid$iv":Z
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 169
    move v9, v1

    .line 175
    .local v9, "drawableResourceId":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 183
    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v4, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2, v3, v7}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda6;-><init>(IJI)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 175
    :cond_a
    return-void

    .line 177
    :cond_b
    invoke-static {v9, v8, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v14

    .line 178
    .local v14, "painter":Landroidx/compose/ui/graphics/painter/Painter;
    const v1, 0x7ebb651e

    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v1, v10, 0x70

    const/16 v4, 0x20

    if-ne v1, v4, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    move v1, v12

    :goto_6
    move v13, v1

    .local v13, "invalid$iv":Z
    move-object v15, v8

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 313
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 314
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v13, :cond_e

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_d

    goto :goto_7

    .line 319
    :cond_d
    goto :goto_a

    .line 315
    :cond_e
    :goto_7
    const/16 v18, 0x0

    .line 178
    .local v18, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$IconBox$colorFilter$1":I
    move-wide/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-graphics-Color$-$this$isUnspecified$0$iv":J
    const/4 v6, 0x0

    .line 316
    .local v6, "$i$f$isUnspecified-8_81llA":I
    const-wide/16 v19, 0x10

    cmp-long v19, v4, v19

    if-nez v19, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    move v4, v12

    .line 178
    .end local v4    # "$v$c$androidx-compose-ui-graphics-Color$-$this$isUnspecified$0$iv":J
    .end local v6    # "$i$f$isUnspecified-8_81llA":I
    :goto_8
    if-eqz v4, :cond_10

    const/4 v4, 0x0

    move-object/from16 v19, v1

    goto :goto_9

    :cond_10
    move-object v4, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    sget-object v1, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v19, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v19, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v4

    .line 315
    .end local v18    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$IconBox$colorFilter$1":I
    :goto_9
    move-object v1, v4

    .line 317
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 318
    nop

    .line 313
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v19    # "it$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 178
    .end local v13    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    move-object/from16 v19, v1

    check-cast v19, Landroidx/compose/ui/graphics/ColorFilter;

    .local v19, "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 180
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    sget-object v4, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    invoke-virtual {v4}, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->getIconSize-D9Ej5fM()F

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 181
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v17

    .line 180
    nop

    .line 181
    const/16 v20, 0x16

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v21}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 179
    invoke-static {v1, v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v9    # "drawableResourceId":I
    .end local v11    # "context":Landroid/content/Context;
    .end local v14    # "painter":Landroidx/compose/ui/graphics/painter/Painter;
    .end local v19    # "colorFilter":Landroidx/compose/ui/graphics/ColorFilter;
    goto :goto_b

    .line 167
    :cond_11
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 183
    :cond_12
    :goto_b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v4, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v2, v3, v7}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda7;-><init>(IJI)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_13
    return-void
.end method

.method static final IconBox_RPmYEkk$lambda$1(IJILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final IconBox_RPmYEkk$lambda$3(IJILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0, "session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;
    .param p1, "dataProvider"    # Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;
    .param p2, "anchorLayoutCoordinates"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;",
            "Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const v4, -0x799dedcc

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(OpenContextMenu)N(session,dataProvider,anchorLayoutCoordinates)111@5065L252,121@5412L19,123@5484L143,119@5323L304:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p4

    .local v5, "$dirty":I
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_2

    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_0

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    :goto_1
    or-int/2addr v5, v6

    :cond_2
    and-int/lit8 v6, v3, 0x30

    const/16 v10, 0x20

    if-nez v6, :cond_5

    and-int/lit8 v6, v3, 0x40

    if-nez v6, :cond_3

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_3
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_4

    move v6, v10

    goto :goto_3

    :cond_4
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v3, 0x180

    if-nez v6, :cond_7

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_7
    move v12, v5

    .end local v5    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit16 v5, v12, 0x93

    const/16 v6, 0x92

    if-eq v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    and-int/lit8 v6, v12, 0x1

    invoke-interface {v9, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.text.contextmenu.internal.OpenContextMenu (DefaultTextContextMenuDropdownProvider.android.kt:109)"

    invoke-static {v4, v12, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 112
    :cond_9
    const v4, 0x76266f90

    const-string v5, "CC(remember):DefaultTextContextMenuDropdownProvider.android.kt#9igjgp"

    invoke-static {v9, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v4, v12, 0x70

    if-eq v4, v10, :cond_b

    and-int/lit8 v4, v12, 0x40

    if-eqz v4, :cond_a

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v4, 0x1

    .local v4, "invalid$iv":Z
    :goto_7
    move-object v6, v9

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 287
    .local v10, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 288
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_d

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v14, v11, :cond_c

    goto :goto_8

    .line 292
    :cond_c
    move/from16 v17, v4

    move/from16 v18, v10

    goto :goto_9

    .line 289
    :cond_d
    :goto_8
    const/4 v11, 0x0

    .line 113
    .local v11, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$popupPositionProvider$1":I
    new-instance v13, Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;

    .line 114
    new-instance v7, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;

    new-instance v8, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda8;

    invoke-direct {v8, v1, v2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;)V

    move/from16 v17, v4

    .end local v4    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    const/4 v4, 0x0

    move/from16 v18, v10

    const/4 v10, 0x2

    .end local v10    # "$i$f$cache":I
    .local v18, "$i$f$cache":I
    invoke-direct {v7, v8, v4, v10, v4}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 113
    invoke-direct {v13, v7}, Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 117
    nop

    .line 289
    .end local v11    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$popupPositionProvider$1":I
    nop

    .line 290
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    move-object v14, v13

    .line 287
    .end local v13    # "value$iv":Ljava/lang/Object;
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_9
    nop

    .line 112
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "invalid$iv":Z
    .end local v18    # "$i$f$cache":I
    check-cast v14, Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 111
    nop

    .line 121
    .local v14, "popupPositionProvider":Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;
    move-object v4, v14

    check-cast v4, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 122
    const v6, 0x76269a07

    invoke-static {v9, v6, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v5, v12, 0xe

    const/4 v6, 0x4

    if-eq v5, v6, :cond_f

    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_e

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_a

    :cond_e
    const/4 v11, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v11, 0x1

    .local v11, "invalid$iv":Z
    :goto_b
    move-object v5, v9

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 293
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 294
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_11

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v7, v10, :cond_10

    goto :goto_c

    .line 298
    :cond_10
    goto :goto_d

    .line 295
    :cond_11
    :goto_c
    const/4 v10, 0x0

    .line 122
    .local v10, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$1":I
    new-instance v13, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V

    .line 295
    .end local v10    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$1":I
    nop

    .line 296
    .restart local v13    # "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 297
    move-object v7, v13

    .line 293
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_d
    nop

    .line 122
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    .end local v11    # "invalid$iv":Z
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 123
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultPopupProperties:Landroidx/compose/ui/window/PopupProperties;

    .line 124
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)V

    const/16 v8, 0x36

    const v10, 0x4e63add6    # 9.5495514E8f

    const/4 v11, 0x1

    invoke-static {v10, v11, v5, v9, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 120
    const/16 v10, 0xd80

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v14    # "popupPositionProvider":Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;
    goto :goto_e

    .line 106
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 128
    :cond_13
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_14

    new-instance v5, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method private static final OpenContextMenu$lambda$0$0(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/unit/IntOffset;
    .locals 2
    .param p0, "$dataProvider"    # Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;
    .param p1, "$anchorLayoutCoordinates"    # Lkotlin/jvm/functions/Function0;

    .line 115
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {p0, v0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->position-tuRUvjQ(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    return-object v0
.end method

.method private static final OpenContextMenu$lambda$1$0(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;)Lkotlin/Unit;
    .locals 1
    .param p0, "$session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 122
    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final OpenContextMenu$lambda$2(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8
    .param p0, "$dataProvider"    # Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;
    .param p1, "$session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "C124@5506L61,125@5576L45:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.text.contextmenu.internal.OpenContextMenu.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:124)"

    const v3, 0x4e63add6    # 9.5495514E8f

    invoke-static {v3, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 125
    :cond_1
    const v0, 0x442f9353

    const-string v1, "CC(remember):DefaultTextContextMenuDropdownProvider.android.kt#9igjgp"

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v1, p2

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 320
    .local v3, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 321
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_3

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    goto :goto_2

    .line 322
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 125
    .local v6, "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2":I
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1;

    invoke-direct {v7, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 322
    .end local v6    # "$i$a$-cache-DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2":I
    nop

    .line 323
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    move-object v4, v6

    .line 320
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 125
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    move-object v0, v4

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "data$delegate":Landroidx/compose/runtime/State;
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 126
    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu$lambda$2$1(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    move-result-object v1

    invoke-static {p1, v1, p2, v2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .end local v0    # "data$delegate":Landroidx/compose/runtime/State;
    goto :goto_3

    .line 124
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 127
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final OpenContextMenu$lambda$2$1(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 4
    .param p0, "$data$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;",
            ">;)",
            "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 326
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 125
    return-object v0
.end method

.method static final OpenContextMenu$lambda$3(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p2, p4, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final ProvideDefaultTextContextMenuDropdown(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7
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

    .line 86
    const v0, 0x52f9d6eb

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    const-string p2, "C(ProvideDefaultTextContextMenuDropdown)N(modifier,content)86@4186L326:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {v5, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move p2, p3

    .local p2, "$dirty":I
    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr p2, v1

    :cond_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr p2, v1

    :cond_3
    and-int/lit8 v1, p2, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, p2, 0x1

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.contextmenu.internal.ProvideDefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:85)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 88
    :cond_5
    nop

    .line 89
    invoke-static {}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->getLocalTextContextMenuDropdownProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->getLambda$636288403$foundation()Lkotlin/jvm/functions/Function5;

    move-result-object v3

    .line 93
    and-int/lit8 v0, p2, 0xe

    or-int/lit16 v0, v0, 0x1b0

    shl-int/lit8 v1, p2, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int v6, v0, v1

    .line 87
    move-object v1, p0

    move-object v4, p1

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "content":Lkotlin/jvm/functions/Function2;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "content":Lkotlin/jvm/functions/Function2;
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->ProvideBasicTextContextMenu(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ProvidableCompositionLocal;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    .line 83
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "content":Lkotlin/jvm/functions/Function2;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "content":Lkotlin/jvm/functions/Function2;
    :cond_6
    move-object v1, p0

    move-object v4, p1

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "content":Lkotlin/jvm/functions/Function2;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v4    # "content":Lkotlin/jvm/functions/Function2;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 95
    :cond_7
    :goto_3
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1, v4, p3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_8
    return-void
.end method

.method public static final ProvideDefaultTextContextMenuDropdown(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0, "content"    # Lkotlin/jvm/functions/Function2;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 72
    const v0, 0x1928a998

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(ProvideDefaultTextContextMenuDropdown)N(content)72@3752L297:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0x3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    and-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.contextmenu.internal.ProvideDefaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:71)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 74
    :cond_3
    invoke-static {}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->getLocalTextContextMenuDropdownProvider()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sget-object v2, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->getLambda$129995601$foundation()Lkotlin/jvm/functions/Function5;

    move-result-object v2

    .line 78
    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/lit8 v3, v3, 0x36

    .line 73
    invoke-static {v0, v2, p0, p1, v3}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->ProvideBasicTextContextMenu(Landroidx/compose/runtime/ProvidableCompositionLocal;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_2

    .line 72
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 80
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method static final ProvideDefaultTextContextMenuDropdown$lambda$0(Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->ProvideDefaultTextContextMenuDropdown(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final ProvideDefaultTextContextMenuDropdown$lambda$1(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p3, v0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->ProvideDefaultTextContextMenuDropdown(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "resId"    # I
    .param p1, "$v$c$androidx-compose-ui-graphics-Color$-tint$0"    # J
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "session"    # Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;
    .param p1, "dataProvider"    # Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;
    .param p2, "anchorLayoutCoordinates"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final defaultTextContextMenuDropdown(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;
    .locals 3
    .param p0, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p1, "$changed"    # I

    .line 99
    const v0, 0x4764a7da

    const-string v1, "C(defaultTextContextMenuDropdown)98@4610L158:DefaultTextContextMenuDropdownProvider.android.kt#18dpbw"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.text.contextmenu.internal.defaultTextContextMenuDropdown (DefaultTextContextMenuDropdownProvider.android.kt:98)"

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/internal/ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt;->getLambda$-1357803046$foundation()Lkotlin/jvm/functions/Function5;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->basicTextContextMenuProvider(Lkotlin/jvm/functions/Function5;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    return-object v0
.end method
