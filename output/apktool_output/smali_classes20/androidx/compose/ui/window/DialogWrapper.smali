.class final Landroidx/compose/ui/window/DialogWrapper;
.super Landroidx/activity/ComponentDialog;
.source "AndroidDialog.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/DialogWrapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidDialog.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/DialogWrapper\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,766:1\n122#2:767\n1#3:768\n*S KotlinDebug\n*F\n+ 1 AndroidDialog.android.kt\nandroidx/compose/ui/window/DialogWrapper\n*L\n488#1:767\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002J&\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%2\u0011\u0010&\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008\'\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+H\u0002J$\u0010,\u001a\u00020\u00052\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010-\u001a\u00020\u0005J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010 \u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\u0005H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u00061"
    }
    d2 = {
        "Landroidx/compose/ui/window/DialogWrapper;",
        "Landroidx/activity/ComponentDialog;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "",
        "properties",
        "Landroidx/compose/ui/window/DialogProperties;",
        "composeView",
        "Landroid/view/View;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "dialogId",
        "Ljava/util/UUID;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V",
        "dialogLayout",
        "Landroidx/compose/ui/window/DialogLayout;",
        "maxSupportedElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "isPressOutside",
        "",
        "subCompositionView",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "onKeyUp",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "setLayoutDirection",
        "setContent",
        "parentComposition",
        "Landroidx/compose/runtime/CompositionContext;",
        "children",
        "Landroidx/compose/runtime/Composable;",
        "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V",
        "setSecurePolicy",
        "securePolicy",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "updateParameters",
        "disposeComposition",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "cancel",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final composeView:Landroid/view/View;

.field private final dialogLayout:Landroidx/compose/ui/window/DialogLayout;

.field private isPressOutside:Z

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 9
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "properties"    # Landroidx/compose/ui/window/DialogProperties;
    .param p3, "composeView"    # Landroid/view/View;
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p5, "density"    # Landroidx/compose/ui/unit/Density;
    .param p6, "dialogId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 460
    nop

    .line 473
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 474
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 475
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    sget v2, Landroidx/compose/ui/R$style;->DialogWindowTheme:I

    goto :goto_0

    .line 478
    :cond_0
    sget v2, Landroidx/compose/ui/R$style;->FloatingDialogWindowTheme:I

    .line 473
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v0, Landroid/content/Context;

    .line 460
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 461
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 462
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 463
    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    .line 488
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 767
    .local v1, "$i$f$getDp":I
    int-to-float v4, v0

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 488
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    iput v0, p0, Landroidx/compose/ui/window/DialogWrapper;->maxSupportedElevation:F

    .line 495
    nop

    .line 496
    invoke-virtual {p0}, Landroidx/compose/ui/window/DialogWrapper;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 497
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 498
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 499
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 500
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 501
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_3

    .line 503
    nop

    .line 504
    nop

    .line 503
    const v1, 0x10100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 507
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 508
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    .line 509
    sget-object v4, Landroidx/compose/ui/window/Api28Impl;->INSTANCE:Landroidx/compose/ui/window/Api28Impl;

    invoke-virtual {v4, v1}, Landroidx/compose/ui/window/Api28Impl;->setLayoutInDisplayCutout(Landroid/view/WindowManager$LayoutParams;)V

    .line 511
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    .line 512
    sget-object v4, Landroidx/compose/ui/window/Api30Impl;->INSTANCE:Landroidx/compose/ui/window/Api30Impl;

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/window/Api30Impl;->setFitInsetsSides(Landroid/view/WindowManager$LayoutParams;I)V

    .line 513
    sget-object v4, Landroidx/compose/ui/window/Api30Impl;->INSTANCE:Landroidx/compose/ui/window/Api30Impl;

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/window/Api30Impl;->setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V

    .line 515
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 518
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    nop

    .line 519
    new-instance v1, Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/window/DialogWrapper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    move-object v4, v1

    .local v4, "$this$_init__u24lambda_u240":Landroidx/compose/ui/window/DialogLayout;
    const/4 v5, 0x0

    .line 521
    .local v5, "$i$a$-apply-DialogWrapper$1":I
    iget-object v6, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/window/DialogProperties;->getWindowTitle()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Landroidx/compose/ui/window/DialogWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    sget v6, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dialog:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroidx/compose/ui/window/DialogLayout;->setTag(ILjava/lang/Object;)V

    .line 527
    invoke-virtual {v4, v2}, Landroidx/compose/ui/window/DialogLayout;->setClipChildren(Z)V

    .line 529
    move-object v2, p5

    .line 768
    .local v2, "$this$lambda_u240_u240":Landroidx/compose/ui/unit/Density;
    const/4 v6, 0x0

    .line 529
    .local v6, "$i$a$-with-DialogWrapper$1$1":I
    iget v7, p0, Landroidx/compose/ui/window/DialogWrapper;->maxSupportedElevation:F

    invoke-interface {v2, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/compose/ui/window/DialogLayout;->setElevation(F)V

    .line 534
    .end local v2    # "$this$lambda_u240_u240":Landroidx/compose/ui/unit/Density;
    .end local v6    # "$i$a$-with-DialogWrapper$1$1":I
    nop

    .line 535
    new-instance v2, Landroidx/compose/ui/window/DialogWrapper$1$2;

    invoke-direct {v2}, Landroidx/compose/ui/window/DialogWrapper$1$2;-><init>()V

    check-cast v2, Landroid/view/ViewOutlineProvider;

    .line 534
    invoke-virtual {v4, v2}, Landroidx/compose/ui/window/DialogLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 544
    nop

    .line 519
    .end local v4    # "$this$_init__u24lambda_u240":Landroidx/compose/ui/window/DialogLayout;
    .end local v5    # "$i$a$-apply-DialogWrapper$1":I
    nop

    .line 518
    iput-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 559
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    .line 561
    :cond_5
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/window/DialogWrapper;->setContentView(Landroid/view/View;)V

    .line 562
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 563
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v2}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 564
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    check-cast v1, Landroid/view/View;

    .line 565
    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v2}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v2

    .line 564
    invoke-static {v1, v2}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 569
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {p0, v1, v2, p4}, Landroidx/compose/ui/window/DialogWrapper;->updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 576
    invoke-virtual {p0}, Landroidx/compose/ui/window/DialogWrapper;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Landroidx/compose/ui/window/DialogWrapper$2;

    invoke-direct {v1, p0}, Landroidx/compose/ui/window/DialogWrapper$2;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    .line 581
    .end local v0    # "window":Landroid/view/Window;
    nop

    .line 460
    return-void

    .line 496
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog has no window"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final _init_$disableClipping(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "$this$_init__u24disableClipping"    # Landroid/view/ViewGroup;

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 552
    instance-of v0, p0, Landroidx/compose/ui/window/DialogLayout;

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 554
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    .line 553
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static final synthetic access$getOnDismissRequest$p(Landroidx/compose/ui/window/DialogWrapper;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/window/DialogWrapper;

    .line 460
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getProperties$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogProperties;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/window/DialogWrapper;

    .line 460
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    return-object v0
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 3
    .param p1, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 597
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 598
    sget-object v1, Landroidx/compose/ui/window/DialogWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 600
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 599
    :pswitch_1
    const/4 v1, 0x0

    .line 597
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/ui/window/DialogLayout;->setLayoutDirection(I)V

    .line 602
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V
    .locals 4
    .param p1, "securePolicy"    # Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 610
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/window/SecureFlagPolicy_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result v0

    .line 609
    nop

    .line 611
    .local v0, "secureFlagEnabled":Z
    invoke-virtual {p0}, Landroidx/compose/ui/window/DialogWrapper;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 612
    const/16 v2, 0x2000

    if-eqz v0, :cond_0

    .line 613
    move v3, v2

    goto :goto_0

    .line 615
    :cond_0
    const/16 v3, -0x2001

    .line 617
    :goto_0
    nop

    .line 611
    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFlags(II)V

    .line 619
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 683
    return-void
.end method

.method public final disposeComposition()V
    .locals 1

    .line 651
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogLayout;->disposeComposition()V

    .line 652
    return-void
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 1

    .line 493
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 584
    nop

    .line 585
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 590
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 591
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 655
    invoke-super {p0, p1}, Landroidx/activity/ComponentDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 656
    .local v0, "result":Z
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/window/DialogLayout;->isInsideContent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 668
    :pswitch_1
    iput-boolean v2, p0, Landroidx/compose/ui/window/DialogWrapper;->isPressOutside:Z

    goto :goto_0

    .line 663
    :pswitch_2
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogWrapper;->isPressOutside:Z

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 665
    const/4 v0, 0x1

    .line 666
    iput-boolean v2, p0, Landroidx/compose/ui/window/DialogWrapper;->isPressOutside:Z

    goto :goto_1

    .line 659
    :pswitch_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/window/DialogWrapper;->isPressOutside:Z

    .line 660
    const/4 v0, 0x1

    goto :goto_1

    .line 668
    :goto_0
    goto :goto_1

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 674
    :pswitch_5
    iput-boolean v2, p0, Landroidx/compose/ui/window/DialogWrapper;->isPressOutside:Z

    .line 678
    :cond_1
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "parentComposition"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "children"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/window/DialogLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 606
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 4
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "properties"    # Landroidx/compose/ui/window/DialogProperties;
    .param p3, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 626
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 627
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 628
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/window/DialogWrapper;->setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V

    .line 629
    invoke-direct {p0, p3}, Landroidx/compose/ui/window/DialogWrapper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 630
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result v0

    .line 631
    .local v0, "decorFitsSystemWindows":Z
    iget-object v1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 632
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getUsePlatformDefaultWidth()Z

    move-result v2

    .line 633
    nop

    .line 631
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/window/DialogLayout;->updateProperties(ZZ)V

    .line 635
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/window/DialogWrapper;->setCanceledOnTouchOutside(Z)V

    .line 636
    invoke-virtual {p0}, Landroidx/compose/ui/window/DialogWrapper;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 637
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_2

    .line 639
    nop

    .line 640
    if-eqz v0, :cond_0

    .line 641
    const/4 v2, 0x0

    goto :goto_0

    .line 642
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_1

    .line 643
    const/16 v2, 0x10

    goto :goto_0

    .line 644
    :cond_1
    const/16 v2, 0x30

    .line 639
    :goto_0
    nop

    .line 638
    nop

    .line 646
    .local v2, "softInput":I
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 648
    .end local v2    # "softInput":I
    :cond_2
    return-void
.end method
