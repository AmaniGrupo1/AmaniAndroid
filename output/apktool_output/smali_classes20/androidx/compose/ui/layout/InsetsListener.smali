.class public final Landroidx/compose/ui/layout/InsetsListener;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "WindowInsetsRulers.android.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsRulers.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsRulers.android.kt\nandroidx/compose/ui/layout/InsetsListener\n+ 2 ValueInsets.android.kt\nandroidx/compose/ui/layout/ValueInsets_androidKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 IntObjectMap.kt\nandroidx/collection/IntObjectMap\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 6 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n1#1,477:1\n47#2,4:478\n46#2,6:482\n47#2,4:510\n46#2,6:514\n47#2,4:520\n46#2,6:524\n47#2,4:537\n46#2,6:541\n35#3,5:488\n71#3,5:549\n382#4,4:493\n354#4,6:497\n364#4,3:504\n367#4,2:508\n370#4,6:530\n386#4:536\n1399#5:503\n1270#5:507\n919#6,2:547\n*S KotlinDebug\n*F\n+ 1 WindowInsetsRulers.android.kt\nandroidx/compose/ui/layout/InsetsListener\n*L\n241#1:478,4\n241#1:482,6\n338#1:510,4\n338#1:514,6\n348#1:520,4\n348#1:524,6\n364#1:537,4\n364#1:541,6\n271#1:488,5\n396#1:549,5\n337#1:493,4\n337#1:497,6\n337#1:504,3\n337#1:508,2\n337#1:530,6\n337#1:536\n337#1:503\n337#1:507\n390#1:547,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020+2\u0006\u0010(\u001a\u00020)2\u0006\u0010,\u001a\u00020+H\u0016J\u0018\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)H\u0002J\u001e\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u00102\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020)02H\u0016J\u0010\u00103\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u00104\u001a\u00020\'2\u0006\u0010.\u001a\u00020\u0014H\u0002J\u0018\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u0002072\u0006\u00100\u001a\u00020\u0010H\u0016J\u0010\u00108\u001a\u00020\'2\u0006\u00100\u001a\u00020\u0010H\u0002J\u0008\u00109\u001a\u00020\'H\u0016J\u0010\u0010:\u001a\u00020\'2\u0006\u00106\u001a\u000207H\u0016J\u0010\u0010;\u001a\u00020\'2\u0006\u00106\u001a\u000207H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006<"
    }
    d2 = {
        "Landroidx/compose/ui/layout/InsetsListener;",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "Ljava/lang/Runnable;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "composeView",
        "Landroidx/compose/ui/platform/AndroidComposeView;",
        "<init>",
        "(Landroidx/compose/ui/platform/AndroidComposeView;)V",
        "getComposeView",
        "()Landroidx/compose/ui/platform/AndroidComposeView;",
        "prepared",
        "",
        "runningAnimationMask",
        "",
        "savedInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insetsValues",
        "Landroidx/collection/ScatterMap;",
        "",
        "Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;",
        "getInsetsValues",
        "()Landroidx/collection/ScatterMap;",
        "generation",
        "Landroidx/compose/runtime/MutableIntState;",
        "getGeneration",
        "()Landroidx/compose/runtime/MutableIntState;",
        "displayCutouts",
        "Landroidx/collection/MutableObjectList;",
        "Landroidx/compose/runtime/MutableState;",
        "Landroid/graphics/Rect;",
        "getDisplayCutouts",
        "()Landroidx/collection/MutableObjectList;",
        "displayCutoutRulers",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "Landroidx/compose/ui/layout/RectRulers;",
        "getDisplayCutoutRulers",
        "()Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "onPrepare",
        "",
        "animation",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "onStart",
        "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;",
        "bounds",
        "updateInsetAnimationInfo",
        "insetsValue",
        "onProgress",
        "insets",
        "runningAnimations",
        "",
        "onEnd",
        "stopAnimationForRuler",
        "onApplyWindowInsets",
        "view",
        "Landroid/view/View;",
        "updateInsets",
        "run",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final composeView:Landroidx/compose/ui/platform/AndroidComposeView;

.field private final displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/compose/ui/layout/RectRulers;",
            ">;"
        }
    .end annotation
.end field

.field private final displayCutouts:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private final generation:Landroidx/compose/runtime/MutableIntState;

.field private final insetsValues:Landroidx/collection/ScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field private runningAnimationMask:I

.field private savedInsets:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/layout/InsetsListener;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 6
    .param p1, "composeView"    # Landroidx/compose/ui/platform/AndroidComposeView;

    .line 177
    nop

    .line 178
    nop

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/layout/InsetsListener;->composeView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 203
    new-instance v0, Landroidx/collection/MutableScatterMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    move-object v1, v0

    .local v1, "it":Landroidx/collection/MutableScatterMap;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-also-InsetsListener$insetsValues$1":I
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getCaptionBar()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string v5, "caption bar"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getDisplayCutout()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string v5, "display cutout"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getIme()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string v5, "ime"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getMandatorySystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    .line 208
    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "mandatory system gestures"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getNavigationBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "navigation bars"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getStatusBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "status bars"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getSystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "system gestures"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getTappableElement()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "tappable element"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    sget-object v3, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getWaterfall()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v3

    new-instance v4, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    const-string/jumbo v5, "waterfall"

    invoke-direct {v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    nop

    .line 203
    .end local v1    # "it":Landroidx/collection/MutableScatterMap;
    .end local v2    # "$i$a$-also-InsetsListener$insetsValues$1":I
    check-cast v0, Landroidx/collection/ScatterMap;

    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    .line 218
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    .line 219
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 177
    return-void
.end method

.method private final stopAnimationForRuler(Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;)V
    .locals 2
    .param p1, "insetsValue"    # Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setAnimating(Z)V

    .line 308
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getUnsetValueInsets()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setSourceValueInsets-Ynlvx88(J)V

    .line 309
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getUnsetValueInsets()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setTargetValueInsets-Ynlvx88(J)V

    .line 310
    return-void
.end method

.method private final updateInsetAnimationInfo(Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2
    .param p1, "insetsValue"    # Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    .param p2, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 262
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setFraction(F)V

    .line 263
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsAnimationCompat;->getAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setAlpha(F)V

    .line 264
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setDurationMillis(J)V

    .line 265
    return-void
.end method

.method private final updateInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 38
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 336
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 337
    .local v3, "hasInsets":Z
    invoke-static {}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->access$getWindowInsetsTypeMap$p()Landroidx/collection/IntObjectMap;

    move-result-object v4

    .local v4, "this_$iv":Landroidx/collection/IntObjectMap;
    const/4 v5, 0x0

    .line 493
    .local v5, "$i$f$forEach":I
    iget-object v6, v4, Landroidx/collection/IntObjectMap;->keys:[I

    .line 494
    .local v6, "k$iv":[I
    iget-object v7, v4, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 496
    .local v7, "v$iv":[Ljava/lang/Object;
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/collection/IntObjectMap;
    const/4 v9, 0x0

    .line 497
    .local v9, "$i$f$forEachIndexed":I
    iget-object v10, v8, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 498
    .local v10, "m$iv$iv":[J
    array-length v11, v10

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    .line 500
    .local v11, "lastIndex$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv":I
    const/16 v16, 0x20

    const/16 v17, 0x30

    const/16 v18, 0x1

    if-gt v13, v11, :cond_8

    .line 501
    :goto_0
    aget-wide v19, v10, v13

    .line 502
    .local v19, "slot$iv$iv":J
    move-wide/from16 v21, v19

    .local v21, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v23, 0x0

    .line 503
    .local v23, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v14, v21

    const/16 v24, 0x10

    move/from16 v22, v13

    .end local v13    # "i$iv$iv":I
    .end local v21    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v22, "i$iv$iv":I
    not-long v12, v14

    const/16 v25, 0x7

    shl-long v12, v12, v25

    and-long/2addr v12, v14

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v25

    .line 502
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v23    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v12, v25

    if-eqz v12, :cond_7

    .line 504
    sub-int v13, v22, v11

    not-int v12, v13

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    .line 505
    .local v12, "bitCount$iv$iv":I
    const/4 v14, 0x0

    .local v14, "j$iv$iv":I
    :goto_1
    if-ge v14, v12, :cond_5

    .line 506
    const-wide/16 v25, 0xff

    and-long v25, v19, v25

    .local v25, "value$iv$iv$iv":J
    const/4 v15, 0x0

    .line 507
    .local v15, "$i$f$isFull":I
    const-wide/16 v27, 0x80

    cmp-long v23, v25, v27

    if-gez v23, :cond_0

    move/from16 v15, v18

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    .line 506
    .end local v15    # "$i$f$isFull":I
    .end local v25    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v15, :cond_4

    .line 508
    shl-int/lit8 v15, v22, 0x3

    add-int/2addr v15, v14

    .line 509
    .local v15, "index$iv$iv":I
    move/from16 v23, v15

    .local v23, "index$iv":I
    const/16 v25, 0x0

    .line 496
    .local v25, "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    aget v26, v6, v23

    .local v26, "type":I
    aget-object v27, v7, v23

    move/from16 v28, v13

    move-object/from16 v13, v27

    check-cast v13, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .local v13, "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    move/from16 v27, v26

    .end local v26    # "type":I
    .local v27, "type":I
    const/16 v26, 0x0

    .line 338
    .local v26, "$i$a$-forEach-InsetsListener$updateInsets$1":I
    move/from16 v29, v2

    move/from16 v2, v27

    move/from16 v27, v3

    .end local v3    # "hasInsets":Z
    .local v2, "type":I
    .local v27, "hasInsets":Z
    .local v29, "changed":Z
    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    .local v3, "insets$iv":Landroidx/core/graphics/Insets;
    const/16 v30, 0x0

    .line 510
    .local v30, "$i$f$ValueInsets":I
    move-object/from16 v31, v4

    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .local v31, "this_$iv":Landroidx/collection/IntObjectMap;
    iget v4, v3, Landroidx/core/graphics/Insets;->left:I

    move/from16 v32, v5

    .end local v5    # "$i$f$forEach":I
    .local v32, "$i$f$forEach":I
    int-to-long v4, v4

    shl-long v4, v4, v17

    .line 511
    move-wide/from16 v33, v4

    iget v4, v3, Landroidx/core/graphics/Insets;->top:I

    int-to-long v4, v4

    shl-long v4, v4, v16

    .line 510
    or-long v4, v33, v4

    .line 512
    move-wide/from16 v33, v4

    iget v4, v3, Landroidx/core/graphics/Insets;->right:I

    int-to-long v4, v4

    shl-long v4, v4, v24

    .line 510
    or-long v4, v33, v4

    .line 513
    move-wide/from16 v33, v4

    iget v4, v3, Landroidx/core/graphics/Insets;->bottom:I

    int-to-long v4, v4

    .line 510
    or-long v4, v33, v4

    .line 514
    invoke-static {v4, v5}, Landroidx/compose/ui/layout/ValueInsets;->constructor-impl(J)J

    move-result-wide v4

    .line 519
    nop

    .line 338
    .end local v3    # "insets$iv":Landroidx/core/graphics/Insets;
    .end local v30    # "$i$f$ValueInsets":I
    nop

    .line 339
    .local v4, "insetsValue":J
    iget-object v3, v0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    invoke-virtual {v3, v13}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 340
    .local v3, "values":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    move-object/from16 v30, v6

    move-object/from16 v33, v7

    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .local v30, "k$iv":[I
    .local v33, "v$iv":[Ljava/lang/Object;
    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getCurrent-hdzbrEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 341
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setCurrent-Ynlvx88(J)V

    .line 342
    const/4 v6, 0x1

    .line 343
    .end local v29    # "changed":Z
    .local v6, "changed":Z
    move/from16 v29, v6

    .end local v6    # "changed":Z
    .restart local v29    # "changed":Z
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getZeroValueInsets()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 344
    const/4 v6, 0x1

    move/from16 v27, v6

    .line 347
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v6

    if-eq v2, v6, :cond_2

    .line 348
    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v6

    .local v6, "insets$iv":Landroidx/core/graphics/Insets;
    const/4 v7, 0x0

    .line 520
    .local v7, "$i$f$ValueInsets":I
    move-wide/from16 v34, v4

    .end local v4    # "insetsValue":J
    .local v34, "insetsValue":J
    iget v4, v6, Landroidx/core/graphics/Insets;->left:I

    int-to-long v4, v4

    shl-long v4, v4, v17

    .line 521
    move-wide/from16 v36, v4

    iget v4, v6, Landroidx/core/graphics/Insets;->top:I

    int-to-long v4, v4

    shl-long v4, v4, v16

    .line 520
    or-long v4, v36, v4

    .line 522
    move-wide/from16 v36, v4

    iget v4, v6, Landroidx/core/graphics/Insets;->right:I

    int-to-long v4, v4

    shl-long v4, v4, v24

    .line 520
    or-long v4, v36, v4

    .line 523
    move-wide/from16 v36, v4

    iget v4, v6, Landroidx/core/graphics/Insets;->bottom:I

    int-to-long v4, v4

    .line 520
    or-long v4, v36, v4

    .line 524
    invoke-static {v4, v5}, Landroidx/compose/ui/layout/ValueInsets;->constructor-impl(J)J

    move-result-wide v4

    .line 529
    nop

    .line 348
    .end local v6    # "insets$iv":Landroidx/core/graphics/Insets;
    .end local v7    # "$i$f$ValueInsets":I
    nop

    .line 349
    .restart local v4    # "insetsValue":J
    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getMaximum-hdzbrEE()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 350
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setMaximum-Ynlvx88(J)V

    .line 351
    const/16 v29, 0x1

    .line 352
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getZeroValueInsets()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 353
    const/16 v27, 0x1

    goto :goto_3

    .line 347
    .end local v34    # "insetsValue":J
    :cond_2
    move-wide/from16 v34, v4

    .line 357
    .end local v4    # "insetsValue":J
    .restart local v34    # "insetsValue":J
    :cond_3
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setVisible(Z)V

    .line 358
    nop

    .line 496
    .end local v2    # "type":I
    .end local v3    # "values":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    .end local v13    # "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    .end local v26    # "$i$a$-forEach-InsetsListener$updateInsets$1":I
    .end local v34    # "insetsValue":J
    nop

    .line 509
    .end local v23    # "index$iv":I
    .end local v25    # "$i$a$-forEachIndexed-IntObjectMap$forEach$1$iv":I
    move/from16 v3, v27

    move/from16 v2, v29

    goto :goto_4

    .line 506
    .end local v15    # "index$iv$iv":I
    .end local v27    # "hasInsets":Z
    .end local v29    # "changed":Z
    .end local v30    # "k$iv":[I
    .end local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v32    # "$i$f$forEach":I
    .end local v33    # "v$iv":[Ljava/lang/Object;
    .local v2, "changed":Z
    .local v3, "hasInsets":Z
    .local v4, "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v5    # "$i$f$forEach":I
    .local v6, "k$iv":[I
    .local v7, "v$iv":[Ljava/lang/Object;
    :cond_4
    move/from16 v29, v2

    move/from16 v27, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    move/from16 v28, v13

    .line 530
    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .restart local v30    # "k$iv":[I
    .restart local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v32    # "$i$f$forEach":I
    .restart local v33    # "v$iv":[Ljava/lang/Object;
    :goto_4
    shr-long v19, v19, v28

    .line 505
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v28

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v7, v33

    goto/16 :goto_1

    .end local v30    # "k$iv":[I
    .end local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v32    # "$i$f$forEach":I
    .end local v33    # "v$iv":[Ljava/lang/Object;
    .restart local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v5    # "$i$f$forEach":I
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_5
    move/from16 v29, v2

    move/from16 v27, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    move/from16 v28, v13

    .line 532
    .end local v2    # "changed":Z
    .end local v3    # "hasInsets":Z
    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v14    # "j$iv$iv":I
    .restart local v27    # "hasInsets":Z
    .restart local v29    # "changed":Z
    .restart local v30    # "k$iv":[I
    .restart local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v32    # "$i$f$forEach":I
    .restart local v33    # "v$iv":[Ljava/lang/Object;
    move/from16 v2, v28

    if-ne v12, v2, :cond_6

    move/from16 v2, v29

    goto :goto_5

    :cond_6
    move/from16 v2, v29

    goto :goto_6

    .line 502
    .end local v12    # "bitCount$iv$iv":I
    .end local v27    # "hasInsets":Z
    .end local v29    # "changed":Z
    .end local v30    # "k$iv":[I
    .end local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v32    # "$i$f$forEach":I
    .end local v33    # "v$iv":[Ljava/lang/Object;
    .restart local v2    # "changed":Z
    .restart local v3    # "hasInsets":Z
    .restart local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v5    # "$i$f$forEach":I
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    .line 500
    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v19    # "slot$iv$iv":J
    .restart local v30    # "k$iv":[I
    .restart local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v32    # "$i$f$forEach":I
    .restart local v33    # "v$iv":[Ljava/lang/Object;
    :goto_5
    move/from16 v13, v22

    .end local v22    # "i$iv$iv":I
    .local v13, "i$iv$iv":I
    if-eq v13, v11, :cond_9

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v7, v33

    const/4 v12, 0x2

    goto/16 :goto_0

    .end local v30    # "k$iv":[I
    .end local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v32    # "$i$f$forEach":I
    .end local v33    # "v$iv":[Ljava/lang/Object;
    .restart local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v5    # "$i$f$forEach":I
    .restart local v6    # "k$iv":[I
    .restart local v7    # "v$iv":[Ljava/lang/Object;
    :cond_8
    move-object/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    const/16 v24, 0x10

    .line 535
    .end local v4    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "k$iv":[I
    .end local v7    # "v$iv":[Ljava/lang/Object;
    .end local v13    # "i$iv$iv":I
    .restart local v30    # "k$iv":[I
    .restart local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .restart local v32    # "$i$f$forEach":I
    .restart local v33    # "v$iv":[Ljava/lang/Object;
    :cond_9
    nop

    .line 536
    .end local v8    # "this_$iv$iv":Landroidx/collection/IntObjectMap;
    .end local v9    # "$i$f$forEachIndexed":I
    .end local v10    # "m$iv$iv":[J
    .end local v11    # "lastIndex$iv$iv":I
    :goto_6
    nop

    .line 359
    .end local v30    # "k$iv":[I
    .end local v31    # "this_$iv":Landroidx/collection/IntObjectMap;
    .end local v32    # "$i$f$forEach":I
    .end local v33    # "v$iv":[Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v4

    .line 361
    .local v4, "cutout":Landroidx/core/view/DisplayCutoutCompat;
    if-nez v4, :cond_a

    .line 362
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getZeroValueInsets()J

    move-result-wide v5

    goto :goto_7

    .line 364
    :cond_a
    invoke-virtual {v4}, Landroidx/core/view/DisplayCutoutCompat;->getWaterfallInsets()Landroidx/core/graphics/Insets;

    move-result-object v5

    .local v5, "insets$iv":Landroidx/core/graphics/Insets;
    const/4 v6, 0x0

    .line 537
    .local v6, "$i$f$ValueInsets":I
    iget v7, v5, Landroidx/core/graphics/Insets;->left:I

    int-to-long v7, v7

    shl-long v7, v7, v17

    .line 538
    iget v9, v5, Landroidx/core/graphics/Insets;->top:I

    int-to-long v9, v9

    shl-long v9, v9, v16

    .line 537
    or-long/2addr v7, v9

    .line 539
    iget v9, v5, Landroidx/core/graphics/Insets;->right:I

    int-to-long v9, v9

    shl-long v9, v9, v24

    .line 537
    or-long/2addr v7, v9

    .line 540
    iget v9, v5, Landroidx/core/graphics/Insets;->bottom:I

    int-to-long v9, v9

    .line 537
    or-long/2addr v7, v9

    .line 541
    invoke-static {v7, v8}, Landroidx/compose/ui/layout/ValueInsets;->constructor-impl(J)J

    move-result-wide v7

    .line 546
    move-wide v5, v7

    .line 361
    .end local v5    # "insets$iv":Landroidx/core/graphics/Insets;
    .end local v6    # "$i$f$ValueInsets":I
    :goto_7
    nop

    .line 360
    nop

    .line 366
    .local v5, "waterfall":J
    iget-object v7, v0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    sget-object v8, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getWaterfall()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 367
    .local v7, "waterfallInsets":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getZeroValueInsets()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setVisible(Z)V

    .line 368
    invoke-virtual {v7}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getCurrent-hdzbrEE()J

    move-result-wide v8

    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_b

    .line 369
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setCurrent-Ynlvx88(J)V

    .line 370
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setMaximum-Ynlvx88(J)V

    .line 371
    const/4 v2, 0x1

    .line 372
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getZeroValueInsets()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_b

    .line 373
    const/4 v3, 0x1

    .line 376
    :cond_b
    if-nez v4, :cond_c

    .line 377
    iget-object v8, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v8}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v8

    if-lez v8, :cond_12

    .line 378
    iget-object v8, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v8}, Landroidx/collection/MutableObjectList;->clear()V

    .line 379
    iget-object v8, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 383
    :cond_c
    invoke-virtual {v4}, Landroidx/core/view/DisplayCutoutCompat;->getBoundingRects()Ljava/util/List;

    move-result-object v8

    .line 384
    .local v8, "boundingRects":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v10}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v10

    if-ge v9, v10, :cond_d

    .line 385
    iget-object v9, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v11}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/collection/MutableObjectList;->removeRange(II)V

    .line 386
    iget-object v9, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->removeRange(II)V

    .line 387
    const/4 v2, 0x1

    goto :goto_9

    .line 389
    :cond_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v10}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v9, :cond_e

    move v10, v14

    .local v10, "it":I
    const/4 v11, 0x0

    .line 390
    .local v11, "$i$a$-repeat-InsetsListener$updateInsets$2":I
    iget-object v12, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    .local v12, "this_$iv":Landroidx/collection/MutableObjectList;
    iget-object v13, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v13}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v13

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x0

    const/4 v1, 0x2

    invoke-static {v13, v15, v1, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 547
    .local v15, "$i$f$plusAssign":I
    invoke-virtual {v12, v13}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 548
    nop

    .line 391
    .end local v12    # "this_$iv":Landroidx/collection/MutableObjectList;
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$plusAssign":I
    iget-object v12, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast v12, Ljava/util/Collection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "display cutout rect "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v15}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroidx/compose/ui/layout/RectRulersKt;->RectRulers(Ljava/lang/String;)Landroidx/compose/ui/layout/RectRulers;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v2, 0x1

    .line 393
    nop

    .line 389
    .end local v10    # "it":I
    .end local v11    # "$i$a$-repeat-InsetsListener$updateInsets$2":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_8

    .line 396
    :cond_e
    :goto_9
    move-object v1, v8

    .local v1, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 549
    .local v9, "$i$f$fastForEachIndexed":I
    const/4 v10, 0x0

    .local v10, "index$iv":I
    move-object v11, v1

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_a
    if-ge v10, v11, :cond_10

    .line 550
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 551
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroid/graphics/Rect;

    .local v13, "rect":Landroid/graphics/Rect;
    move v14, v10

    .local v14, "index":I
    const/4 v15, 0x0

    .line 397
    .local v15, "$i$a$-fastForEachIndexed-InsetsListener$updateInsets$3":I
    move-object/from16 v16, v1

    .end local v1    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v16, "$this$fastForEachIndexed$iv":Ljava/util/List;
    iget-object v1, v0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    invoke-virtual {v1, v14}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 398
    .local v1, "cutout":Landroidx/compose/runtime/MutableState;
    move/from16 v17, v2

    .end local v2    # "changed":Z
    .local v17, "changed":Z
    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 399
    invoke-interface {v1, v13}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 400
    const/4 v2, 0x1

    .end local v17    # "changed":Z
    .restart local v2    # "changed":Z
    goto :goto_b

    .line 398
    .end local v2    # "changed":Z
    .restart local v17    # "changed":Z
    :cond_f
    move/from16 v2, v17

    .line 402
    .end local v17    # "changed":Z
    .restart local v2    # "changed":Z
    :goto_b
    nop

    .line 551
    .end local v1    # "cutout":Landroidx/compose/runtime/MutableState;
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastForEachIndexed-InsetsListener$updateInsets$3":I
    nop

    .line 549
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto :goto_a

    .end local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v1, "$this$fastForEachIndexed$iv":Ljava/util/List;
    :cond_10
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 553
    .end local v1    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v2    # "changed":Z
    .end local v10    # "index$iv":I
    .restart local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v17    # "changed":Z
    nop

    .line 403
    .end local v9    # "$i$f$fastForEachIndexed":I
    .end local v16    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 404
    const/4 v3, 0x1

    move/from16 v2, v17

    goto :goto_c

    .line 403
    :cond_11
    move/from16 v2, v17

    .line 408
    .end local v8    # "boundingRects":Ljava/util/List;
    .end local v17    # "changed":Z
    .restart local v2    # "changed":Z
    :cond_12
    :goto_c
    if-nez v3, :cond_13

    iget-object v1, v0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    if-eqz v2, :cond_14

    .line 409
    iget-object v1, v0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v1, v8}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 410
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 412
    :cond_14
    return-void
.end method


# virtual methods
.method public final getComposeView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->composeView:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object v0
.end method

.method public final getDisplayCutoutRulers()Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Landroidx/compose/ui/layout/RectRulers;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutoutRulers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object v0
.end method

.method public final getDisplayCutouts()Landroidx/collection/MutableObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->displayCutouts:Landroidx/collection/MutableObjectList;

    return-object v0
.end method

.method public final getGeneration()Landroidx/compose/runtime/MutableIntState;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    return-object v0
.end method

.method public final getInsetsValues()Landroidx/collection/ScatterMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 315
    iget-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    if-eqz v0, :cond_0

    .line 316
    iput-object p2, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 323
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 325
    :cond_0
    iget v0, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    if-nez v0, :cond_1

    .line 329
    invoke-direct {p0, p2}, Landroidx/compose/ui/layout/InsetsListener;->updateInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 331
    :cond_1
    :goto_0
    return-object p2
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 6
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    .line 289
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v0

    .line 290
    .local v0, "type":I
    iget v1, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 292
    invoke-static {}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->access$getWindowInsetsTypeMap$p()Landroidx/collection/IntObjectMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 293
    .local v1, "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    if-eqz v1, :cond_0

    .line 294
    iget-object v2, p0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 295
    .local v2, "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setFraction(F)V

    .line 296
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setAlpha(F)V

    .line 297
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setDurationMillis(J)V

    .line 298
    invoke-virtual {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setFraction(F)V

    .line 299
    invoke-direct {p0, v2}, Landroidx/compose/ui/layout/InsetsListener;->stopAnimationForRuler(Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;)V

    .line 300
    iget-object v3, p0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v3}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 301
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 303
    .end local v2    # "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 304
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    .line 223
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 224
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "runningAnimations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 271
    move-object v0, p2

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 488
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 489
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 490
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/core/view/WindowInsetsAnimationCompat;

    .local v5, "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    const/4 v6, 0x0

    .line 272
    .local v6, "$i$a$-fastForEach-InsetsListener$onProgress$1":I
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v7

    .line 273
    .local v7, "typeMask":I
    invoke-static {}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->access$getWindowInsetsTypeMap$p()Landroidx/collection/IntObjectMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 274
    .local v8, "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    if-eqz v8, :cond_0

    .line 275
    iget-object v9, p0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    invoke-virtual {v9, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 276
    .local v9, "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    invoke-virtual {v9}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 279
    invoke-direct {p0, v9, v5}, Landroidx/compose/ui/layout/InsetsListener;->updateInsetAnimationInfo(Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 282
    .end local v9    # "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    :cond_0
    nop

    .line 490
    .end local v5    # "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    .end local v6    # "$i$a$-fastForEach-InsetsListener$onProgress$1":I
    .end local v7    # "typeMask":I
    .end local v8    # "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    nop

    .line 488
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 283
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/InsetsListener;->updateInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 284
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 11
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 230
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 231
    .local v0, "insets":Landroidx/core/view/WindowInsetsCompat;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 234
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v1

    .line 236
    .local v1, "type":I
    iget v2, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    or-int/2addr v2, v1

    iput v2, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    .line 238
    invoke-static {}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->access$getWindowInsetsTypeMap$p()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 239
    .local v2, "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    if-eqz v2, :cond_0

    .line 240
    iget-object v3, p0, Landroidx/compose/ui/layout/InsetsListener;->insetsValues:Landroidx/collection/ScatterMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 241
    .local v3, "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    .local v4, "insets$iv":Landroidx/core/graphics/Insets;
    const/4 v5, 0x0

    .line 478
    .local v5, "$i$f$ValueInsets":I
    iget v6, v4, Landroidx/core/graphics/Insets;->left:I

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    .line 479
    iget v8, v4, Landroidx/core/graphics/Insets;->top:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    .line 478
    or-long/2addr v6, v8

    .line 480
    iget v8, v4, Landroidx/core/graphics/Insets;->right:I

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    .line 478
    or-long/2addr v6, v8

    .line 481
    iget v8, v4, Landroidx/core/graphics/Insets;->bottom:I

    int-to-long v8, v8

    .line 478
    or-long/2addr v6, v8

    .line 482
    invoke-static {v6, v7}, Landroidx/compose/ui/layout/ValueInsets;->constructor-impl(J)J

    move-result-wide v6

    .line 487
    nop

    .line 241
    .end local v4    # "insets$iv":Landroidx/core/graphics/Insets;
    .end local v5    # "$i$f$ValueInsets":I
    nop

    .line 242
    .local v6, "target":J
    invoke-virtual {v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getCurrent-hdzbrEE()J

    move-result-wide v4

    .line 243
    .local v4, "current":J
    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 245
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setSourceValueInsets-Ynlvx88(J)V

    .line 246
    invoke-virtual {v3, v6, v7}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setTargetValueInsets-Ynlvx88(J)V

    .line 247
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->setAnimating(Z)V

    .line 248
    invoke-direct {p0, v3, p1}, Landroidx/compose/ui/layout/InsetsListener;->updateInsetAnimationInfo(Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 249
    iget-object v9, p0, Landroidx/compose/ui/layout/InsetsListener;->generation:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v9}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v10

    add-int/2addr v10, v8

    invoke-interface {v9, v10}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 250
    sget-object v8, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 255
    .end local v1    # "type":I
    .end local v2    # "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    .end local v3    # "insetsValue":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    .end local v4    # "current":J
    .end local v6    # "target":J
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object v1

    return-object v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p1

    .line 437
    .local v0, "listenerView":Landroid/view/View;
    :cond_1
    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 438
    move-object v1, p0

    check-cast v1, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 439
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p1

    .line 446
    .local v0, "listenerView":Landroid/view/View;
    :cond_1
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 447
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 448
    return-void
.end method

.method public run()V
    .locals 3

    .line 422
    iget-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/layout/InsetsListener;->runningAnimationMask:I

    .line 424
    iput-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->prepared:Z

    .line 425
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    .local v0, "it":Landroidx/core/view/WindowInsetsCompat;
    const/4 v1, 0x0

    .line 426
    .local v1, "$i$a$-let-InsetsListener$run$1":I
    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/InsetsListener;->updateInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 427
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/ui/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 428
    nop

    .line 425
    .end local v0    # "it":Landroidx/core/view/WindowInsetsCompat;
    .end local v1    # "$i$a$-let-InsetsListener$run$1":I
    nop

    .line 430
    :cond_0
    return-void
.end method
