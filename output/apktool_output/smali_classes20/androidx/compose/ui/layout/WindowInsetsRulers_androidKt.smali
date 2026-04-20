.class public final Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;
.super Ljava/lang/Object;
.source "WindowInsetsRulers.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsRulers.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsRulers.android.kt\nandroidx/compose/ui/layout/WindowInsetsRulers_androidKt\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ObjectList.kt\nandroidx/collection/ObjectList\n+ 6 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 7 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n+ 8 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 9 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 10 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 11 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 12 ValueInsets.android.kt\nandroidx/compose/ui/layout/ValueInsets\n*L\n1#1,477:1\n61#2:478\n54#2:479\n63#2:481\n59#2:482\n85#3:480\n90#3:483\n13409#4,2:484\n301#5,6:486\n148#6:492\n148#6:550\n121#7:493\n110#7,5:494\n115#7,8:542\n121#7:551\n110#7,5:552\n115#7,8:600\n556#8,6:499\n566#8,2:506\n568#8,8:511\n576#8,9:522\n585#8,8:534\n556#8,6:557\n566#8,2:564\n568#8,8:569\n576#8,9:580\n585#8,8:592\n247#9:505\n247#9:563\n240#10,3:508\n243#10,3:531\n240#10,3:566\n243#10,3:589\n1107#11:519\n1085#11,2:520\n1107#11:577\n1085#11,2:578\n28#12:608\n31#12:609\n34#12:610\n37#12:611\n*S KotlinDebug\n*F\n+ 1 WindowInsetsRulers.android.kt\nandroidx/compose/ui/layout/WindowInsetsRulers_androidKt\n*L\n87#1:478\n87#1:479\n87#1:481\n87#1:482\n87#1:480\n87#1:483\n88#1:484,2\n100#1:486,6\n114#1:492\n130#1:550\n114#1:493\n114#1:494,5\n114#1:542,8\n130#1:551\n130#1:552,5\n130#1:600,8\n114#1:499,6\n114#1:506,2\n114#1:511,8\n114#1:522,9\n114#1:534,8\n130#1:557,6\n130#1:564,2\n130#1:569,8\n130#1:580,9\n130#1:592,8\n114#1:505\n130#1:563\n114#1:508,3\n114#1:531,3\n130#1:566,3\n130#1:589,3\n114#1:519\n114#1:520,2\n130#1:577\n130#1:578,2\n161#1:608\n162#1:609\n163#1:610\n164#1:611\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a3\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0080T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "provideWindowInsetsRulers",
        "",
        "Landroidx/compose/ui/layout/RulerScope;",
        "rulerProvider",
        "Landroidx/compose/ui/layout/WindowInsetsRulerProvider;",
        "findDisplayCutouts",
        "",
        "Landroidx/compose/ui/layout/RectRulers;",
        "placementScope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "findInsetsAnimationProperties",
        "Landroidx/compose/ui/layout/WindowInsetsAnimation;",
        "windowInsetsRulers",
        "Landroidx/compose/ui/layout/WindowInsetsRulers;",
        "RulerKey",
        "",
        "provideInsetsValues",
        "rulers",
        "insets",
        "Landroidx/compose/ui/layout/ValueInsets;",
        "width",
        "",
        "height",
        "provideInsetsValues-cytEWk0",
        "(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V",
        "WindowInsetsTypeMap",
        "Landroidx/collection/IntObjectMap;",
        "AnimatableInsetsRulers",
        "",
        "[Landroidx/compose/ui/layout/WindowInsetsRulers;",
        "ui"
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
.field private static final AnimatableInsetsRulers:[Landroidx/compose/ui/layout/WindowInsetsRulers;

.field public static final RulerKey:Ljava/lang/String; = "androidx.compose.ui.layout.WindowInsetsRulers"

.field private static final WindowInsetsTypeMap:Landroidx/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/IntObjectMap<",
            "Landroidx/compose/ui/layout/WindowInsetsRulers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 453
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    move-object v2, v0

    .local v2, "it":Landroidx/collection/MutableIntObjectMap;
    const/4 v3, 0x0

    .line 454
    .local v3, "$i$a$-also-WindowInsetsRulers_androidKt$WindowInsetsTypeMap$1":I
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getStatusBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 455
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getNavigationBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 456
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getCaptionBar()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 457
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getIme()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 458
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemGestures()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getSystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 459
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getMandatorySystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 460
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getTappableElement()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 461
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v4

    sget-object v5, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getDisplayCutout()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 462
    nop

    .line 453
    .end local v2    # "it":Landroidx/collection/MutableIntObjectMap;
    .end local v3    # "$i$a$-also-WindowInsetsRulers_androidKt$WindowInsetsTypeMap$1":I
    check-cast v0, Landroidx/collection/IntObjectMap;

    sput-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->WindowInsetsTypeMap:Landroidx/collection/IntObjectMap;

    .line 466
    nop

    .line 467
    const/16 v0, 0x9

    new-array v0, v0, [Landroidx/compose/ui/layout/WindowInsetsRulers;

    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getStatusBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 468
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getNavigationBars()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 467
    nop

    .line 469
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getCaptionBar()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 467
    nop

    .line 470
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getTappableElement()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 467
    nop

    .line 471
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getSystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    .line 467
    nop

    .line 472
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getMandatorySystemGestures()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    .line 467
    nop

    .line 473
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getIme()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    .line 467
    nop

    .line 474
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getWaterfall()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 467
    nop

    .line 475
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->Companion:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->getDisplayCutout()Landroidx/compose/ui/layout/WindowInsetsRulers;

    move-result-object v2

    aput-object v2, v0, v1

    .line 467
    nop

    .line 466
    sput-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->AnimatableInsetsRulers:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    return-void
.end method

.method public static final synthetic access$getWindowInsetsTypeMap$p()Landroidx/collection/IntObjectMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->WindowInsetsTypeMap:Landroidx/collection/IntObjectMap;

    return-object v0
.end method

.method public static final findDisplayCutouts(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Ljava/util/List;
    .locals 31
    .param p0, "placementScope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/RectRulers;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    .line 113
    .local v1, "node":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_1
    :goto_1
    if-eqz v1, :cond_16

    .line 114
    const/4 v0, 0x0

    .line 492
    .local v0, "$i$f$getTraversable-OLwlOKw":I
    const/high16 v2, 0x40000

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 114
    .end local v0    # "$i$f$getTraversable-OLwlOKw":I
    move-object v2, v1

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v3, 0x0

    .line 493
    .local v3, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    .local v4, "includeTail$iv$iv":Z
    move v5, v0

    .local v5, "mask$iv$iv":I
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v7, 0x0

    .line 494
    .local v7, "$i$f$visitNodes":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_3

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    goto/16 :goto_e

    .line 495
    .local v8, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3
    :goto_2
    invoke-static {v6, v4}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 496
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v9, :cond_14

    .line 497
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_13

    .line 498
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_12

    move-object v10, v9

    .local v10, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 493
    .local v11, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v12, v0

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v13, v10

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 499
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 500
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v30, v16

    move/from16 v16, v0

    move-object/from16 v0, v30

    .line 501
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_4
    if-eqz v0, :cond_11

    .line 502
    move-object/from16 v17, v1

    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .local v17, "node":Landroidx/compose/ui/node/NodeCoordinator;
    instance-of v1, v0, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v1, :cond_5

    .line 503
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .local v1, "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    const/16 v18, 0x0

    .line 115
    .local v18, "$i$a$-visitNodes-aLcG6gQ-WindowInsetsRulers_androidKt$findDisplayCutouts$1":I
    move-object/from16 v19, v1

    .end local v1    # "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    .local v19, "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/ui/node/TraversableNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v20, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const-string v2, "androidx.compose.ui.layout.WindowInsetsRulers"

    if-ne v1, v2, :cond_4

    .line 116
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;

    invoke-interface {v1}, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;->getCutoutRulers()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 118
    :cond_4
    nop

    .line 503
    .end local v18    # "$i$a$-visitNodes-aLcG6gQ-WindowInsetsRulers_androidKt$findDisplayCutouts$1":I
    .end local v19    # "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    goto/16 :goto_c

    .line 504
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_5
    move-object/from16 v20, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v1, v12

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v2, v0

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 505
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v1

    move/from16 v21, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v1, 0x1

    if-eqz v19, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 504
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_5
    if-eqz v2, :cond_10

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_10

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, "count$iv$iv":I
    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/ui/node/DelegatingNode;

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 508
    .local v19, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 509
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v21, :cond_e

    .line 510
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 511
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v24, v12

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 505
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_7

    move/from16 v24, v1

    goto :goto_7

    :cond_7
    const/16 v24, 0x0

    .line 511
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v24, :cond_d

    .line 512
    add-int/lit8 v2, v2, 0x1

    .line 513
    if-ne v2, v1, :cond_8

    .line 514
    move-object/from16 v0, v22

    move-object/from16 v1, v22

    goto :goto_b

    .line 518
    :cond_8
    if-nez v15, :cond_9

    const/16 v24, 0x0

    .line 519
    .local v24, "$i$f$mutableVectorOf":I
    nop

    .line 520
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 521
    .local v26, "$i$f$MutableVector":I
    move-object/from16 v27, v0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v27, "node$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v2

    .end local v2    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 519
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    goto :goto_8

    .line 518
    .end local v24    # "$i$f$mutableVectorOf":I
    .end local v27    # "node$iv$iv":Ljava/lang/Object;
    .end local v28    # "count$iv$iv":I
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "count$iv$iv":I
    :cond_9
    move-object/from16 v27, v0

    move/from16 v28, v2

    const/4 v1, 0x0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "count$iv$iv":I
    .restart local v27    # "node$iv$iv":Ljava/lang/Object;
    .restart local v28    # "count$iv$iv":I
    move-object v0, v15

    :goto_8
    move-object v15, v0

    .line 522
    move-object/from16 v0, v27

    .line 523
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 524
    if-eqz v15, :cond_a

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_a
    const/4 v2, 0x0

    .end local v27    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 523
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v27    # "node$iv$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v2, v27

    .line 527
    .end local v27    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    if-eqz v15, :cond_c

    move-object/from16 v1, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v1, v22

    .line 530
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    move-object v0, v2

    move/from16 v2, v28

    goto :goto_b

    .line 511
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v27, v0

    move-object/from16 v1, v22

    .line 530
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    nop

    .line 510
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 531
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    const/4 v1, 0x1

    goto :goto_6

    .line 533
    :cond_e
    move-object/from16 v27, v0

    .line 534
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v2, v0, :cond_f

    .line 536
    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v0, v27

    goto/16 :goto_4

    .line 534
    :cond_f
    move-object/from16 v0, v27

    .line 539
    .end local v2    # "count$iv$iv":I
    .end local v27    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_10
    :goto_c
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 541
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v1, "node":Landroidx/compose/ui/node/NodeCoordinator;
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_11
    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .line 493
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    nop

    .end local v10    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_d

    .line 498
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_12
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_d
    nop

    .line 542
    if-eq v9, v8, :cond_15

    .line 543
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    goto/16 :goto_3

    .line 497
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_13
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    goto :goto_e

    .line 496
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_14
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .line 545
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_15
    nop

    .line 549
    .end local v4    # "includeTail$iv$iv":Z
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v7    # "$i$f$visitNodes":I
    .end local v8    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_e
    nop

    .line 119
    .end local v3    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    goto/16 :goto_1

    .line 121
    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final findInsetsAnimationProperties(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/WindowInsetsRulers;)Landroidx/compose/ui/layout/WindowInsetsAnimation;
    .locals 31
    .param p0, "placementScope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p1, "windowInsetsRulers"    # Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    .line 129
    .local v1, "node":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_1
    :goto_1
    if-eqz v1, :cond_17

    .line 130
    const/4 v0, 0x0

    .line 550
    .local v0, "$i$f$getTraversable-OLwlOKw":I
    const/high16 v2, 0x40000

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 130
    .end local v0    # "$i$f$getTraversable-OLwlOKw":I
    nop

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object v2, v1

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v3, 0x0

    .line 551
    .local v3, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    .local v4, "includeTail$iv$iv":Z
    move-object v5, v2

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v6, v0

    .local v6, "mask$iv$iv":I
    const/4 v7, 0x0

    .line 552
    .local v7, "$i$f$visitNodes":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_3

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    goto/16 :goto_f

    .line 553
    .local v8, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3
    :goto_2
    invoke-static {v5, v4}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 554
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v9, :cond_15

    .line 555
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_14

    .line 556
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_13

    move-object v10, v9

    .local v10, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 551
    .local v11, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v12, v0

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v13, v10

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 557
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 558
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v30, v16

    move/from16 v16, v0

    move-object/from16 v0, v30

    .line 559
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_4
    if-eqz v0, :cond_12

    .line 560
    move-object/from16 v17, v1

    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .local v17, "node":Landroidx/compose/ui/node/NodeCoordinator;
    instance-of v1, v0, Landroidx/compose/ui/node/TraversableNode;

    if-eqz v1, :cond_6

    .line 561
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .local v1, "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    const/16 v18, 0x0

    .line 131
    .local v18, "$i$a$-visitNodes-aLcG6gQ-WindowInsetsRulers_androidKt$findInsetsAnimationProperties$1":I
    move-object/from16 v19, v1

    .end local v1    # "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    .local v19, "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    invoke-interface/range {v19 .. v19}, Landroidx/compose/ui/node/TraversableNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v20, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const-string v2, "androidx.compose.ui.layout.WindowInsetsRulers"

    if-ne v1, v2, :cond_5

    .line 132
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;

    .line 133
    invoke-interface {v1}, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;->getInsetsValues()Landroidx/collection/ScatterMap;

    move-result-object v1

    .line 132
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    if-eqz v1, :cond_4

    check-cast v1, Landroidx/compose/ui/layout/WindowInsetsAnimation;

    goto :goto_5

    .line 133
    :cond_4
    sget-object v1, Landroidx/compose/ui/layout/NoWindowInsetsAnimation;->INSTANCE:Landroidx/compose/ui/layout/NoWindowInsetsAnimation;

    check-cast v1, Landroidx/compose/ui/layout/WindowInsetsAnimation;

    .line 132
    :goto_5
    return-object v1

    .line 135
    :cond_5
    move-object/from16 v2, p1

    .line 561
    .end local v18    # "$i$a$-visitNodes-aLcG6gQ-WindowInsetsRulers_androidKt$findInsetsAnimationProperties$1":I
    .end local v19    # "traversableNode":Landroidx/compose/ui/node/TraversableNode;
    goto/16 :goto_d

    .line 562
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v1, v12

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v18, v0

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 563
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v1

    move/from16 v22, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v21, :cond_7

    const/16 v18, 0x1

    goto :goto_6

    :cond_7
    const/16 v18, 0x0

    .line 562
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_6
    if-eqz v18, :cond_11

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_11

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 566
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 567
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    if-eqz v22, :cond_f

    .line 568
    move-object/from16 v23, v22

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 569
    .local v24, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v25, v12

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 563
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v25

    if-eqz v28, :cond_8

    const/16 v25, 0x1

    goto :goto_8

    :cond_8
    const/16 v25, 0x0

    .line 569
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v25, :cond_e

    .line 570
    add-int/lit8 v1, v1, 0x1

    .line 571
    move-object/from16 v25, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v25, "node$iv$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_9

    .line 572
    move-object/from16 v0, v23

    move-object v2, v0

    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_c

    .line 576
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    :cond_9
    if-nez v15, :cond_a

    const/4 v0, 0x0

    .line 577
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 578
    move/from16 v26, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v27, 0x0

    .line 579
    .local v27, "$i$f$MutableVector":I
    move/from16 v28, v1

    .end local v1    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 577
    .end local v27    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    goto :goto_9

    .line 576
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v28    # "count$iv$iv":I
    .restart local v1    # "count$iv$iv":I
    :cond_a
    move/from16 v28, v1

    const/4 v0, 0x0

    .end local v1    # "count$iv$iv":I
    .restart local v28    # "count$iv$iv":I
    move-object v1, v15

    :goto_9
    move-object v15, v1

    .line 580
    move-object/from16 v1, v25

    .line 581
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_c

    .line 582
    if-eqz v15, :cond_b

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_b
    const/4 v2, 0x0

    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 581
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    :cond_c
    move-object/from16 v2, v25

    .line 585
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_a
    if-eqz v15, :cond_d

    move-object/from16 v0, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v0, v23

    .line 588
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    move/from16 v1, v28

    goto :goto_c

    .line 569
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v28    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v1, "count$iv$iv":I
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v25, v0

    move-object/from16 v0, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v25

    .line 588
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 568
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 589
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_7

    .line 591
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :cond_f
    move-object/from16 v25, v0

    .line 592
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_10

    .line 594
    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v0, v25

    goto/16 :goto_4

    .line 592
    :cond_10
    move-object/from16 v0, v25

    .line 597
    .end local v1    # "count$iv$iv":I
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_11
    :goto_d
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    goto/16 :goto_4

    .line 599
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v1, "node":Landroidx/compose/ui/node/NodeCoordinator;
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_12
    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .line 551
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    nop

    .end local v10    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_e

    .line 556
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_13
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_e
    nop

    .line 600
    if-eq v9, v8, :cond_16

    .line 601
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    goto/16 :goto_3

    .line 555
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_14
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    goto :goto_f

    .line 554
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_15
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .line 603
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_16
    nop

    .line 607
    .end local v4    # "includeTail$iv$iv":Z
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$i$f$visitNodes":I
    .end local v8    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_f
    nop

    .line 136
    .end local v3    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v20    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .end local v17    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "node":Landroidx/compose/ui/node/NodeCoordinator;
    goto/16 :goto_1

    .line 138
    :cond_17
    sget-object v0, Landroidx/compose/ui/layout/NoWindowInsetsAnimation;->INSTANCE:Landroidx/compose/ui/layout/NoWindowInsetsAnimation;

    check-cast v0, Landroidx/compose/ui/layout/WindowInsetsAnimation;

    return-object v0
.end method

.method private static final provideInsetsValues-cytEWk0(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V
    .locals 9
    .param p0, "$this$provideInsetsValues_u2dcytEWk0"    # Landroidx/compose/ui/layout/RulerScope;
    .param p1, "rulers"    # Landroidx/compose/ui/layout/RectRulers;
    .param p2, "$v$c$androidx-compose-ui-layout-ValueInsets$-insets$0"    # J
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 160
    invoke-static {}, Landroidx/compose/ui/layout/ValueInsets_androidKt;->getUnsetValueInsets()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/layout/ValueInsets;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    move-wide v0, p2

    .local v0, "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    const/4 v2, 0x0

    .line 608
    .local v2, "$i$f$getLeft-impl":I
    const/16 v3, 0x30

    ushr-long v3, v0, v3

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 161
    .end local v0    # "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    .end local v2    # "$i$f$getLeft-impl":I
    int-to-float v0, v0

    .line 162
    .local v0, "left":F
    move-wide v1, p2

    .local v1, "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    const/4 v3, 0x0

    .line 609
    .local v3, "$i$f$getTop-impl":I
    const/16 v4, 0x20

    ushr-long v7, v1, v4

    and-long/2addr v7, v5

    long-to-int v1, v7

    .line 162
    .end local v1    # "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    .end local v3    # "$i$f$getTop-impl":I
    int-to-float v1, v1

    .line 163
    .local v1, "top":F
    move-wide v2, p2

    .local v2, "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    const/4 v4, 0x0

    .line 610
    .local v4, "$i$f$getRight-impl":I
    const/16 v7, 0x10

    ushr-long v7, v2, v7

    and-long/2addr v7, v5

    long-to-int v2, v7

    .line 163
    .end local v2    # "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    .end local v4    # "$i$f$getRight-impl":I
    sub-int v2, p4, v2

    int-to-float v2, v2

    .line 164
    .local v2, "right":F
    move-wide v3, p2

    .local v3, "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    const/4 v7, 0x0

    .line 611
    .local v7, "$i$f$getBottom-impl":I
    and-long/2addr v5, v3

    long-to-int v3, v5

    .line 164
    .end local v3    # "$v$c$androidx-compose-ui-layout-ValueInsets$-this$0$iv":J
    .end local v7    # "$i$f$getBottom-impl":I
    sub-int v3, p5, v3

    int-to-float v3, v3

    .line 166
    .local v3, "bottom":F
    invoke-interface {p1}, Landroidx/compose/ui/layout/RectRulers;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Ruler;

    invoke-interface {p0, v4, v0}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 167
    invoke-interface {p1}, Landroidx/compose/ui/layout/RectRulers;->getTop()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Ruler;

    invoke-interface {p0, v4, v1}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 168
    invoke-interface {p1}, Landroidx/compose/ui/layout/RectRulers;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Ruler;

    invoke-interface {p0, v4, v2}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 169
    invoke-interface {p1}, Landroidx/compose/ui/layout/RectRulers;->getBottom()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Ruler;

    invoke-interface {p0, v4, v3}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 171
    .end local v0    # "left":F
    .end local v1    # "top":F
    .end local v2    # "right":F
    .end local v3    # "bottom":F
    :cond_0
    return-void
.end method

.method public static final provideWindowInsetsRulers(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/WindowInsetsRulerProvider;)V
    .locals 20
    .param p0, "$this$provideWindowInsetsRulers"    # Landroidx/compose/ui/layout/RulerScope;
    .param p1, "rulerProvider"    # Landroidx/compose/ui/layout/WindowInsetsRulerProvider;

    .line 85
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/layout/RulerScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v6

    .line 86
    .local v6, "size":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;->getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/layout/InsetsListener;->getInsetsValues()Landroidx/collection/ScatterMap;

    move-result-object v8

    .line 87
    .local v8, "insetsValues":Landroidx/collection/ScatterMap;
    move-wide v0, v6

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 478
    .local v2, "$i$f$component1-impl":I
    move-wide v3, v0

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v5, 0x0

    .line 479
    .local v5, "$i$f$getWidth-impl":I
    move-wide v9, v3

    .local v9, "value$iv$iv$iv":J
    const/4 v11, 0x0

    .line 480
    .local v11, "$i$f$unpackInt1":I
    const/16 v12, 0x20

    shr-long v12, v9, v12

    long-to-int v9, v12

    .line 479
    .end local v9    # "value$iv$iv$iv":J
    .end local v11    # "$i$f$unpackInt1":I
    nop

    .line 478
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    .end local v5    # "$i$f$getWidth-impl":I
    nop

    .line 87
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$component1-impl":I
    move v4, v9

    .restart local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .local v4, "width":I
    const/4 v2, 0x0

    .line 481
    .local v2, "$i$f$component2-impl":I
    move-wide v9, v0

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    const/4 v3, 0x0

    .line 482
    .local v3, "$i$f$getHeight-impl":I
    move-wide v11, v9

    .local v11, "value$iv$iv$iv":J
    const/4 v5, 0x0

    .line 483
    .local v5, "$i$f$unpackInt2":I
    const-wide v13, 0xffffffffL

    and-long/2addr v13, v11

    long-to-int v5, v13

    .line 482
    .end local v5    # "$i$f$unpackInt2":I
    .end local v11    # "value$iv$iv$iv":J
    nop

    .line 481
    .end local v3    # "$i$f$getHeight-impl":I
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv$iv":J
    nop

    .line 87
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$component2-impl":I
    nop

    .line 88
    .local v5, "height":I
    sget-object v9, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->AnimatableInsetsRulers:[Landroidx/compose/ui/layout/WindowInsetsRulers;

    .local v9, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 484
    .local v10, "$i$f$forEach":I
    array-length v11, v9

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    aget-object v13, v9, v12

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    const/4 v15, 0x0

    .line 89
    .local v15, "$i$a$-forEach-WindowInsetsRulers_androidKt$provideWindowInsetsRulers$1":I
    invoke-virtual {v8, v14}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 90
    .local v16, "values":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    invoke-interface {v14}, Landroidx/compose/ui/layout/WindowInsetsRulers;->getCurrent()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getCurrent-hdzbrEE()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 91
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getSource()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getSourceValueInsets-hdzbrEE()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 93
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getTarget()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getTargetValueInsets-hdzbrEE()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 95
    :cond_0
    invoke-interface {v14}, Landroidx/compose/ui/layout/WindowInsetsRulers;->getMaximum()Landroidx/compose/ui/layout/RectRulers;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->getMaximum-hdzbrEE()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->provideInsetsValues-cytEWk0(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V

    .line 96
    nop

    .line 484
    .end local v14    # "rulers":Landroidx/compose/ui/layout/WindowInsetsRulers;
    .end local v15    # "$i$a$-forEach-WindowInsetsRulers_androidKt$provideWindowInsetsRulers$1":I
    .end local v16    # "values":Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;
    nop

    .end local v13    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 485
    :cond_1
    move-object/from16 v0, p0

    .line 97
    .end local v9    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$forEach":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;->getCutoutRects()Landroidx/collection/MutableObjectList;

    move-result-object v1

    .line 98
    .local v1, "cutoutRects":Landroidx/collection/MutableObjectList;
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/WindowInsetsRulerProvider;->getCutoutRulers()Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "cutoutRulers":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Landroidx/collection/ObjectList;

    .local v3, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v9, 0x0

    .line 486
    .local v9, "$i$f$forEachIndexed":I
    nop

    .line 487
    iget-object v10, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 488
    .local v10, "content$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i$iv":I
    iget v12, v3, Landroidx/collection/ObjectList;->_size:I

    :goto_1
    if-ge v11, v12, :cond_2

    .line 489
    aget-object v13, v10, v11

    check-cast v13, Landroidx/compose/runtime/MutableState;

    .local v13, "rectState":Landroidx/compose/runtime/MutableState;
    move v14, v11

    .local v14, "index":I
    const/4 v15, 0x0

    .line 101
    .local v15, "$i$a$-forEachIndexed-WindowInsetsRulers_androidKt$provideWindowInsetsRulers$2":I
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/layout/RectRulers;

    .line 102
    .local v16, "rulers":Landroidx/compose/ui/layout/RectRulers;
    invoke-interface {v13}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    .end local v1    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .local v18, "cutoutRects":Landroidx/collection/MutableObjectList;
    move-object/from16 v1, v17

    check-cast v1, Landroid/graphics/Rect;

    .line 103
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/RectRulers;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v17

    move-object/from16 v19, v2

    .end local v2    # "cutoutRulers":Ljava/util/List;
    .local v19, "cutoutRulers":Ljava/util/List;
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/ui/layout/Ruler;

    move-object/from16 v17, v3

    .end local v3    # "this_$iv":Landroidx/collection/ObjectList;
    .local v17, "this_$iv":Landroidx/collection/ObjectList;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 104
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/RectRulers;->getTop()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Ruler;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 105
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/RectRulers;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Ruler;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 106
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/layout/RectRulers;->getBottom()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Ruler;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/RulerScope;->provides(Landroidx/compose/ui/layout/Ruler;F)V

    .line 107
    nop

    .line 489
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v13    # "rectState":Landroidx/compose/runtime/MutableState;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-forEachIndexed-WindowInsetsRulers_androidKt$provideWindowInsetsRulers$2":I
    .end local v16    # "rulers":Landroidx/compose/ui/layout/RectRulers;
    nop

    .line 488
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto :goto_1

    .end local v17    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v18    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .end local v19    # "cutoutRulers":Ljava/util/List;
    .local v1, "cutoutRects":Landroidx/collection/MutableObjectList;
    .restart local v2    # "cutoutRulers":Ljava/util/List;
    .restart local v3    # "this_$iv":Landroidx/collection/ObjectList;
    :cond_2
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    .line 491
    .end local v1    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .end local v2    # "cutoutRulers":Ljava/util/List;
    .end local v3    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v11    # "i$iv":I
    .restart local v17    # "this_$iv":Landroidx/collection/ObjectList;
    .restart local v18    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .restart local v19    # "cutoutRulers":Ljava/util/List;
    goto :goto_2

    .line 98
    .end local v9    # "$i$f$forEachIndexed":I
    .end local v10    # "content$iv":[Ljava/lang/Object;
    .end local v17    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v18    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .end local v19    # "cutoutRulers":Ljava/util/List;
    .restart local v1    # "cutoutRects":Landroidx/collection/MutableObjectList;
    :cond_3
    move-object/from16 v18, v1

    .line 109
    .end local v1    # "cutoutRects":Landroidx/collection/MutableObjectList;
    .restart local v18    # "cutoutRects":Landroidx/collection/MutableObjectList;
    :goto_2
    return-void
.end method
