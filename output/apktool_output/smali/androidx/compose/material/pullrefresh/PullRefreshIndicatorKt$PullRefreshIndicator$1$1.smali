.class final Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PullRefreshIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->PullRefreshIndicator-jB83MbM(ZLandroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/ui/Modifier;JJZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullRefreshIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,251:1\n71#2:252\n69#2,5:253\n74#2:286\n78#2:292\n78#3,6:258\n85#3,4:273\n89#3,2:283\n93#3:291\n368#4,9:264\n377#4:285\n378#4,2:289\n4032#5,6:277\n50#6:287\n86#6:288\n*S KotlinDebug\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1\n*L\n106#1:252\n106#1:253,5\n106#1:286\n106#1:292\n106#1:258,6\n106#1:273,4\n106#1:283,2\n106#1:291\n106#1:264,9\n106#1:285\n106#1:289,2\n106#1:277,6\n110#1:287\n110#1:288\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "refreshing",
        "",
        "invoke",
        "(ZLandroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentColor:J

.field final synthetic $state:Landroidx/compose/material/pullrefresh/PullRefreshState;


# direct methods
.method constructor <init>(JLandroidx/compose/material/pullrefresh/PullRefreshState;)V
    .locals 1

    iput-wide p1, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;->$contentColor:J

    iput-object p3, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;->$state:Landroidx/compose/material/pullrefresh/PullRefreshState;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 105
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;->invoke(ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ZLandroidx/compose/runtime/Composer;I)V
    .locals 32
    .param p1, "refreshing"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "C105@4516L605:PullRefreshIndicator.kt#t44y28"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p3

    .local v3, "$dirty":I
    and-int/lit8 v4, p3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    .line 106
    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 106
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.material.pullrefresh.PullRefreshIndicator.<anonymous>.<anonymous> (PullRefreshIndicator.kt:105)"

    const v6, 0x6e7db0f7

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 107
    :cond_4
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 108
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 106
    iget-wide v7, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;->$contentColor:J

    iget-object v6, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$PullRefreshIndicator$1$1;->$state:Landroidx/compose/material/pullrefresh/PullRefreshState;

    const/16 v9, 0x36

    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v9, "$changed$iv":I
    move/from16 v16, v9

    .end local v9    # "$changed$iv":I
    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .line 252
    .local v17, "$i$f$Box":I
    const v9, 0x2bb5b5d7

    const-string v10, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 253
    const/4 v9, 0x0

    .line 256
    .local v9, "propagateMinConstraints$iv":Z
    invoke-static {v5, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    .local v10, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v11, v16, 0x3

    and-int/lit8 v11, v11, 0x70

    .line 257
    move/from16 v18, v11

    .local v18, "$changed$iv$iv":I
    const/16 v19, 0x0

    .line 258
    .local v19, "$i$f$Layout":I
    const v11, -0x4ee9b9da

    const-string v12, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 259
    const/4 v11, 0x0

    invoke-static {v2, v11}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v20

    .line 260
    .local v20, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 261
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 263
    .local v12, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    shl-int/lit8 v14, v18, 0x6

    and-int/lit16 v14, v14, 0x380

    or-int/lit8 v14, v14, 0x6

    .line 262
    nop

    .local v13, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move/from16 v21, v14

    .local v21, "$changed$iv$iv$iv":I
    const/16 v22, 0x0

    .line 264
    .local v22, "$i$f$ReusableComposeNode":I
    const v14, -0x2942ffcf

    const-string v15, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v2, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 265
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-nez v14, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 266
    :cond_5
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 267
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 268
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 270
    :cond_6
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 272
    :goto_2
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .local v14, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 273
    .local v15, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 274
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 276
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .local v0, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 277
    .local v23, "$i$f$set-impl":I
    move-object/from16 v24, v14

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 278
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_8

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v2, v24

    goto :goto_4

    .line 279
    :cond_8
    :goto_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1, v0}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 282
    :goto_4
    nop

    .line 277
    .end local v2    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 282
    nop

    .line 283
    .end local v0    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 284
    nop

    .line 272
    .end local v14    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 285
    shr-int/lit8 v0, v21, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v1, p2

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 286
    .local v2, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v14, -0x7ff519f7    # -1.000876E-39f

    const-string v15, "C73@3429L9:Box.kt#2w3rfo"

    invoke-static {v1, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v14, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v15, v16, 0x6

    and-int/lit8 v15, v15, 0x70

    or-int/lit8 v23, v15, 0x6

    .local v23, "$changed":I
    move-object/from16 v24, v14

    check-cast v24, Landroidx/compose/foundation/layout/BoxScope;

    move-object v14, v13

    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v24, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    move-object v13, v1

    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 110
    .local v25, "$i$a$-Box-PullRefreshIndicatorKt$PullRefreshIndicator$1$1$1":I
    const v15, -0x5d5835d4

    move/from16 v26, v0

    .end local v0    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const-string v0, "C:PullRefreshIndicator.kt#t44y28"

    invoke-static {v13, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getArcRadius$p()F

    move-result v0

    .local v0, "arg0$iv":F
    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getStrokeWidth$p()F

    move-result v15

    .local v15, "other$iv":F
    const/16 v27, 0x0

    .line 287
    .local v27, "$i$f$plus-5rwHm24":I
    add-float v28, v0, v15

    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 110
    .end local v0    # "arg0$iv":F
    .end local v15    # "other$iv":F
    .end local v27    # "$i$f$plus-5rwHm24":I
    const/4 v15, 0x2

    .restart local v0    # "arg0$iv":F
    .local v15, "other$iv":I
    const/16 v27, 0x0

    .line 288
    .local v27, "$i$f$times-u2uoSUM":I
    move/from16 v28, v0

    .end local v0    # "arg0$iv":F
    .local v28, "arg0$iv":F
    int-to-float v0, v15

    mul-float v0, v0, v28

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 110
    .end local v15    # "other$iv":I
    .end local v27    # "$i$f$times-u2uoSUM":I
    .end local v28    # "arg0$iv":F
    nop

    .line 112
    .local v0, "spinnerSize":F
    if-eqz p1, :cond_9

    const v6, -0x5d57012a

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v6, "112@4764L208"

    invoke-static {v13, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 115
    move v6, v9

    .end local v9    # "propagateMinConstraints$iv":Z
    .local v6, "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getStrokeWidth$p()F

    move-result v9

    .line 116
    sget-object v15, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v15, Landroidx/compose/ui/Modifier;

    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 114
    nop

    .line 115
    nop

    .line 113
    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v28, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    const-wide/16 v10, 0x0

    move-object/from16 v29, v12

    .end local v12    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .local v29, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    const/4 v12, 0x0

    move-object/from16 v30, v14

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v30, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v14, 0x186

    move/from16 v31, v6

    move-object v6, v15

    .end local v6    # "propagateMinConstraints$iv":Z
    .local v31, "propagateMinConstraints$iv":Z
    const/16 v15, 0x18

    invoke-static/range {v6 .. v15}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 112
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_5

    .line 118
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v29    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v31    # "propagateMinConstraints$iv":Z
    .restart local v9    # "propagateMinConstraints$iv":Z
    .restart local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v12    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .restart local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_9
    move/from16 v31, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v14

    .end local v9    # "propagateMinConstraints$iv":Z
    .end local v10    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v12    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v29    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .restart local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v31    # "propagateMinConstraints$iv":Z
    const v9, -0x5d533981

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v9, "118@5018L71"

    invoke-static {v13, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 119
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v11, 0x180

    move-object v10, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v6 .. v11}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$CircularArrowIndicator-iJQMabo(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 118
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v13    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 110
    :goto_5
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 121
    .end local v0    # "spinnerSize":F
    nop

    .line 286
    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$changed":I
    .end local v24    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/BoxScope;
    .end local v25    # "$i$a$-Box-PullRefreshIndicatorKt$PullRefreshIndicator$1$1$1":I
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 285
    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v26    # "$changed$iv":I
    nop

    .line 289
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 264
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 290
    nop

    .line 258
    .end local v21    # "$changed$iv$iv$iv":I
    .end local v22    # "$i$f$ReusableComposeNode":I
    .end local v30    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 291
    nop

    .line 252
    .end local v18    # "$changed$iv$iv":I
    .end local v19    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v28    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v29    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 292
    nop

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$Box":I
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v31    # "propagateMinConstraints$iv":Z
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 122
    :cond_a
    :goto_6
    return-void
.end method
