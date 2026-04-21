.class final Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidPopup.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,995:1\n1128#2,6:996\n1128#2,6:1002\n1128#2,6:1010\n449#3,2:1008\n476#3:1041\n81#4,6:1016\n88#4,6:1031\n96#4:1040\n391#5,9:1022\n400#5,3:1037\n*S KotlinDebug\n*F\n+ 1 AndroidPopup.android.kt\nandroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1\n*L\n324#1:996,6\n326#1:1002,6\n323#1:1010,6\n323#1:1008,2\n323#1:1041\n323#1:1016,6\n323#1:1031,6\n323#1:1040\n323#1:1022,9\n323#1:1037,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $currentContent$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Landroidx/compose/ui/window/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/window/PopupLayout;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$this_apply:Landroidx/compose/ui/window/PopupLayout;

    iput-object p2, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$currentContent$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 322
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "C323@14540L16,325@14667L146,322@14480L568:AndroidPopup.android.kt#2oxthz"

    invoke-static {v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    const-string v4, "androidx.compose.ui.window.Popup.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidPopup.android.kt:322)"

    const v7, 0x3ceea85c

    invoke-static {v7, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 324
    :cond_1
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const v4, -0x4419f3d4

    const-string v7, "CC(remember):AndroidPopup.android.kt#9igjgp"

    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object/from16 v8, p1

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 996
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 997
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_2

    .line 998
    const/4 v12, 0x0

    .line 324
    .local v12, "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1":I
    sget-object v13, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 998
    .end local v12    # "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1":I
    nop

    .line 999
    .local v13, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1000
    move-object v10, v13

    .end local v13    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 1001
    :cond_2
    nop

    .line 996
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_1
    nop

    .line 324
    .end local v4    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/4 v4, 0x0

    invoke-static {v3, v6, v10, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 326
    const v4, -0x4419e372

    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v4, v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$this_apply:Landroidx/compose/ui/window/PopupLayout;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    .restart local v4    # "invalid$iv":Z
    iget-object v5, v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$this_apply:Landroidx/compose/ui/window/PopupLayout;

    move-object/from16 v8, p1

    .restart local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 1002
    .restart local v9    # "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1003
    .restart local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_4

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_3

    goto :goto_2

    .line 1007
    :cond_3
    goto :goto_3

    .line 1004
    :cond_4
    :goto_2
    const/4 v12, 0x0

    .line 326
    .local v12, "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2":I
    new-instance v13, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1;

    invoke-direct {v13, v5}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1;-><init>(Landroidx/compose/ui/window/PopupLayout;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1004
    .end local v12    # "$i$a$-cache-AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2":I
    nop

    .line 1005
    .restart local v13    # "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1006
    move-object v10, v13

    .line 1002
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v13    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 326
    .end local v4    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v3, v10}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 331
    iget-object v4, v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$this_apply:Landroidx/compose/ui/window/PopupLayout;

    invoke-virtual {v4}, Landroidx/compose/ui/window/PopupLayout;->getCanCalculatePosition()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 332
    iget-object v4, v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1;->$currentContent$delegate:Landroidx/compose/runtime/State;

    invoke-static {v4}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->access$Popup$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 323
    move v5, v6

    .local v3, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v4, "content$iv":Lkotlin/jvm/functions/Function2;
    .local v5, "$changed$iv":I
    move-object/from16 v8, p1

    .local v8, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 1008
    .local v9, "$i$f$SimpleStack":I
    const v10, 0x190ffb5

    const-string v11, "CC(SimpleStack)P(1)449@19649L899,449@19602L946:AndroidPopup.android.kt#2oxthz"

    invoke-static {v8, v10, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1009
    const v10, -0x1eb005a8

    invoke-static {v8, v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv$iv":Z
    move-object v10, v8

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 1010
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1011
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_6

    .line 1012
    const/4 v14, 0x0

    .line 1009
    .local v14, "$i$a$-cache-AndroidPopup_androidKt$SimpleStack$1$iv":I
    sget-object v15, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;

    check-cast v15, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1012
    .end local v14    # "$i$a$-cache-AndroidPopup_androidKt$SimpleStack$1$iv":I
    nop

    .line 1013
    .local v15, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1014
    move-object v12, v15

    .end local v15    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 1015
    :cond_6
    nop

    .line 1010
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_5
    nop

    .line 1009
    .end local v7    # "invalid$iv$iv":Z
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v7, v12

    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    .local v7, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v10, v5, 0x3

    and-int/lit8 v10, v10, 0xe

    or-int/lit16 v10, v10, 0x180

    shl-int/lit8 v11, v5, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    .local v10, "$changed$iv$iv":I
    move-object v11, v3

    .local v11, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    move-object v12, v8

    .local v12, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 1016
    .local v13, "$i$f$Layout":I
    const v14, -0x451e1427

    const-string v15, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1017
    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    .line 1018
    .local v6, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v14

    .line 1019
    .local v14, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v12, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 1021
    .local v15, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    shl-int/lit8 v0, v10, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 1020
    move-object/from16 v17, v16

    .local v17, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v16, v12

    .local v0, "$changed$iv$iv$iv":I
    .local v16, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 1022
    .local v18, "$i$f$ReusableComposeNode":I
    move/from16 v19, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v19, "$changed$iv$iv$iv":I
    const v0, -0x20f7d59c

    const-string v1, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v2, v16

    .end local v16    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1023
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1024
    :cond_7
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1025
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1026
    move-object/from16 v0, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 1028
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_8
    move-object/from16 v0, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1030
    :goto_6
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1031
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v20, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1032
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1033
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v21, v3

    .end local v3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v21, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1034
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1035
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v1, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1036
    nop

    .line 1030
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1037
    shr-int/lit8 v0, v19, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1022
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1039
    nop

    .line 1016
    .end local v2    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v19    # "$changed$iv$iv$iv":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1040
    nop

    .line 1008
    .end local v6    # "compositeKeyHash$iv$iv":I
    .end local v7    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v10    # "$changed$iv$iv":I
    .end local v11    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v12    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$Layout":I
    .end local v14    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v15    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1041
    nop

    .end local v4    # "content$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$changed$iv":I
    .end local v8    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$SimpleStack":I
    .end local v21    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_7

    .line 322
    :cond_9
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 334
    :cond_a
    :goto_7
    return-void
.end method
