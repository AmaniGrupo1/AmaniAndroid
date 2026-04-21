.class public final Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "Crossfade.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,139:1\n1128#2,6:140\n1128#2,3:146\n1131#2,3:150\n1128#2,6:153\n1128#2,6:159\n1#3:149\n360#4,7:165\n35#5,5:172\n35#5,5:209\n70#6:177\n67#6,9:178\n77#6:217\n81#7,6:187\n88#7,6:202\n96#7:216\n391#8,9:193\n400#8:208\n401#8,2:214\n*S KotlinDebug\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n*L\n101#1:140,6\n104#1:146,3\n104#1:150,3\n105#1:153,6\n110#1:159,6\n117#1:165,7\n124#1:172,5\n136#1:209,5\n135#1:177\n135#1:178,9\n135#1:217\n135#1:187,6\n135#1:202,6\n135#1:216\n135#1:193,9\n135#1:208\n135#1:214,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u001aX\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010\u000e\u001aN\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u0086\u0001\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00102\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072%\u0008\u0002\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u000c2&\u0010\u000b\u001a\"\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0008X\u008a\u0084\u0002"
    }
    d2 = {
        "Crossfade",
        "",
        "T",
        "targetState",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "animationSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "label",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "Landroidx/compose/animation/core/Transition;",
        "contentKey",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "animation",
        "alpha"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0, "$this$Crossfade"    # Landroidx/compose/animation/core/Transition;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "contentKey"    # Lkotlin/jvm/functions/Function1;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 103
    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    const v0, -0x6fe6665e

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(Crossfade)P(3!1,2)100@4602L6,103@4692L64,104@4778L61,134@6037L111:Crossfade.kt#xbi5r1"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p6

    .local v2, "$dirty":I
    and-int/lit8 v3, v6, 0x6

    if-nez v3, :cond_1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v7, p1

    goto :goto_2

    :cond_2
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_4

    move-object/from16 v7, p1

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v2, v9

    goto :goto_2

    :cond_4
    move-object/from16 v7, p1

    :goto_2
    and-int/lit8 v9, p7, 0x2

    if-eqz v9, :cond_5

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v10, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v10, v6, 0x180

    if-nez v10, :cond_7

    move-object/from16 v10, p2

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x100

    goto :goto_3

    :cond_6
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v2, v11

    goto :goto_4

    :cond_7
    move-object/from16 v10, p2

    :goto_4
    and-int/lit8 v11, p7, 0x4

    if-eqz v11, :cond_8

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v12, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v12, v6, 0xc00

    if-nez v12, :cond_a

    move-object/from16 v12, p3

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_5

    :cond_9
    const/16 v13, 0x400

    :goto_5
    or-int/2addr v2, v13

    goto :goto_6

    :cond_a
    move-object/from16 v12, p3

    :goto_6
    and-int/lit16 v13, v6, 0x6000

    if-nez v13, :cond_c

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x4000

    goto :goto_7

    :cond_b
    const/16 v13, 0x2000

    :goto_7
    or-int/2addr v2, v13

    :cond_c
    move v13, v2

    .end local v2    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit16 v2, v13, 0x2493

    const/16 v14, 0x2492

    const/4 v15, 0x0

    if-eq v2, v14, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    move v2, v15

    :goto_8
    and-int/lit8 v14, v13, 0x1

    invoke-interface {v8, v2, v14}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v3, :cond_e

    .line 99
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 103
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_e
    move-object v2, v7

    .line 99
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    if-eqz v9, :cond_f

    .line 100
    const/4 v3, 0x7

    const/4 v7, 0x0

    invoke-static {v15, v15, v7, v3, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v10, v3

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v10, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_f
    const-string v3, "CC(remember):Crossfade.kt#9igjgp"

    if-eqz v11, :cond_11

    .line 101
    const v7, -0xfe631d8

    invoke-static {v8, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "invalid$iv":Z
    move-object v9, v8

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 140
    .local v11, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 141
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_10

    .line 142
    const/4 v15, 0x0

    .line 101
    .local v15, "$i$a$-cache-CrossfadeKt$Crossfade$3":I
    sget-object v17, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 142
    .end local v15    # "$i$a$-cache-CrossfadeKt$Crossfade$3":I
    move-object/from16 v15, v17

    .line 143
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 144
    move-object v14, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_a

    .line 145
    :cond_10
    nop

    .line 140
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_a
    nop

    .line 101
    .end local v7    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    move-object v7, v14

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .end local p3    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v7, "contentKey":Lkotlin/jvm/functions/Function1;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    move-object v12, v7

    .end local v7    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v12, "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_12

    const-string/jumbo v7, "androidx.compose.animation.Crossfade (Crossfade.kt:102)"

    invoke-static {v0, v13, v9, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 104
    :cond_12
    const v0, -0xfe6265e

    invoke-static {v8, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object v7, v8

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 146
    .restart local v11    # "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 147
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_13

    .line 148
    const/4 v9, 0x0

    .line 104
    .local v9, "$i$a$-cache-CrossfadeKt$Crossfade$currentlyVisible$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v16

    move-object/from16 p2, v16

    .line 149
    .local p2, "$this$Crossfade_u24lambda_u241_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const/16 v17, 0x0

    .line 104
    .local v17, "$i$a$-apply-CrossfadeKt$Crossfade$currentlyVisible$1$1":I
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    move/from16 p3, v0

    move-object/from16 v0, p2

    .end local p2    # "$this$Crossfade_u24lambda_u241_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v0, "$this$Crossfade_u24lambda_u241_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local p3, "invalid$iv":Z
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v0    # "$this$Crossfade_u24lambda_u241_u240":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v9    # "$i$a$-cache-CrossfadeKt$Crossfade$currentlyVisible$1":I
    .end local v17    # "$i$a$-apply-CrossfadeKt$Crossfade$currentlyVisible$1$1":I
    move-object/from16 v0, v16

    .line 150
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    move-object v14, v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_b

    .line 152
    .end local p3    # "invalid$iv":Z
    .local v0, "invalid$iv":Z
    :cond_13
    move/from16 p3, v0

    .line 146
    .end local v0    # "invalid$iv":Z
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .restart local p3    # "invalid$iv":Z
    :goto_b
    nop

    .line 104
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    .end local p3    # "invalid$iv":Z
    move-object v0, v14

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .local v0, "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 105
    const v4, -0xfe61ba1

    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object v7, v8

    .restart local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 153
    .local v9, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 154
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v11, v15, :cond_14

    .line 155
    const/4 v15, 0x0

    .line 105
    .local v15, "$i$a$-cache-CrossfadeKt$Crossfade$contentMap$1":I
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v15

    .line 155
    .end local v15    # "$i$a$-cache-CrossfadeKt$Crossfade$contentMap$1":I
    nop

    .line 156
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    move-object v11, v15

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 158
    :cond_14
    nop

    .line 153
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_c
    nop

    .line 105
    .end local v4    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    move-object v4, v11

    check-cast v4, Landroidx/collection/MutableScatterMap;

    .local v4, "contentMap":Landroidx/collection/MutableScatterMap;
    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 106
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v9, ""

    const v11, 0x12da4980

    if-eqz v7, :cond_1a

    const v7, 0x13244968

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_16

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_d

    :cond_15
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 p5, v2

    goto :goto_11

    :cond_16
    :goto_d
    const v7, 0x1326563a

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v7, "109@5153L21"

    invoke-static {v8, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 110
    move-object v7, v0

    check-cast v7, Ljava/util/List;

    const v14, -0xfe5ece9

    invoke-static {v8, v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v13, 0xe

    const/4 v14, 0x4

    if-ne v3, v14, :cond_17

    const/4 v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    .local v3, "invalid$iv":Z
    :goto_e
    move-object v14, v8

    .local v14, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 159
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 160
    .restart local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_19

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p5, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p5, "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_18

    goto :goto_f

    .line 164
    :cond_18
    goto :goto_10

    .line 160
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_19
    move-object/from16 p5, v2

    .line 161
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    move/from16 p3, v2

    .end local v2    # "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    .local p3, "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    new-instance v2, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    invoke-direct {v2, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 161
    .end local p3    # "$i$a$-cache-CrossfadeKt$Crossfade$4":I
    nop

    .line 162
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 163
    move-object v11, v2

    .line 159
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_10
    nop

    .line 110
    .end local v3    # "invalid$iv":Z
    .end local v14    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 111
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 108
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 106
    :goto_11
    goto :goto_12

    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    move-object/from16 p5, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    const v2, 0x12da4980

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_12
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 114
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const v2, 0x132a41bb

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v2, "*124@5720L295"

    invoke-static {v8, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 117
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .local v2, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$f$indexOfFirst":I
    const/4 v7, 0x0

    .line 166
    .local v7, "index$iv":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 167
    .local v14, "item$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 117
    .local v16, "$i$a$-indexOfFirst-CrossfadeKt$Crossfade$replacementId$1":I
    move-object/from16 p2, v2

    .end local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .local p2, "$this$indexOfFirst$iv":Ljava/util/List;
    invoke-interface {v12, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move/from16 p3, v3

    .end local v3    # "$i$f$indexOfFirst":I
    .local p3, "$i$f$indexOfFirst":I
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v12, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 167
    .end local v15    # "it":Ljava/lang/Object;
    .end local v16    # "$i$a$-indexOfFirst-CrossfadeKt$Crossfade$replacementId$1":I
    if-eqz v2, :cond_1b

    .line 168
    goto :goto_14

    .line 169
    :cond_1b
    nop

    .end local v14    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto :goto_13

    .line 171
    .end local p2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local p3    # "$i$f$indexOfFirst":I
    .restart local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local v3    # "$i$f$indexOfFirst":I
    :cond_1c
    move-object/from16 p2, v2

    move/from16 p3, v3

    .end local v2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v3    # "$i$f$indexOfFirst":I
    .restart local p2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .restart local p3    # "$i$f$indexOfFirst":I
    const/4 v7, -0x1

    .line 117
    .end local v7    # "index$iv":I
    .end local p2    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local p3    # "$i$f$indexOfFirst":I
    :goto_14
    nop

    .line 116
    nop

    .line 118
    .local v7, "replacementId":I
    const/4 v2, -0x1

    if-ne v7, v2, :cond_1d

    .line 119
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 121
    :cond_1d
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_15
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 124
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$f$fastForEach":I
    const/4 v11, 0x0

    .local v11, "index$iv":I
    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    :goto_16
    if-ge v11, v14, :cond_1e

    .line 173
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 174
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 p1, v15

    .local p1, "stateForContent":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 125
    .local v16, "$i$a$-fastForEach-CrossfadeKt$Crossfade$5":I
    move-object/from16 p3, v0

    .end local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local p3, "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    move-object/from16 p2, v2

    move-object/from16 v2, p1

    .end local p1    # "stateForContent":Ljava/lang/Object;
    .local v2, "stateForContent":Ljava/lang/Object;
    .local p2, "$this$fastForEach$iv":Ljava/util/List;
    invoke-direct {v0, v1, v10, v2, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/16 v1, 0x36

    move/from16 p1, v3

    .end local v3    # "$i$f$fastForEach":I
    .local p1, "$i$f$fastForEach":I
    const v3, -0x37b2e7f5

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    nop

    .line 174
    .end local v2    # "stateForContent":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastForEach-CrossfadeKt$Crossfade$5":I
    nop

    .line 172
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v5, p4

    goto :goto_16

    .end local p1    # "$i$f$fastForEach":I
    .end local p2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local p3    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v3    # "$i$f$fastForEach":I
    :cond_1e
    move-object/from16 p3, v0

    move-object/from16 p2, v2

    move/from16 p1, v3

    .line 176
    .end local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    .end local v11    # "index$iv":I
    .restart local p1    # "$i$f$fastForEach":I
    .restart local p2    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local p3    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    nop

    .line 114
    .end local v7    # "replacementId":I
    .end local p1    # "$i$f$fastForEach":I
    .end local p2    # "$this$fastForEach$iv":Ljava/util/List;
    goto :goto_17

    .end local p3    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_1f
    move-object/from16 p3, v0

    .end local v0    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .restart local p3    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const v2, 0x12da4980

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    :goto_17
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 135
    shr-int/lit8 v0, v13, 0x3

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v1, v8

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v2, p5

    .local v2, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v3, 0x0

    .line 177
    .local v3, "$i$f$Box":I
    const v5, 0x3e277f0a

    const-string v7, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo"

    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 178
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 179
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v7, 0x0

    .line 182
    .local v7, "propagateMinConstraints$iv":Z
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .line 186
    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    nop

    .line 185
    shl-int/lit8 v14, v0, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 183
    move-object v15, v11

    .local v15, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 p1, v2

    .local v14, "$changed$iv$iv":I
    .local p1, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 p2, v1

    .local p2, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 187
    .local v16, "$i$f$Layout":I
    move/from16 v17, v0

    .end local v0    # "$changed$iv":I
    .local v17, "$changed$iv":I
    const v0, -0x451e1427

    move-object/from16 v19, v1

    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v19, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v1, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    move-object/from16 v20, v2

    move-object/from16 v2, p2

    .end local p2    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v20, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 189
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    .line 190
    .local v1, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p2, v0

    move-object/from16 v0, p1

    move/from16 p1, v3

    .end local v3    # "$i$f$Box":I
    .local v0, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local p1, "$i$f$Box":I
    .local p2, "compositeKeyHash$iv$iv":I
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 192
    .local v3, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local v22, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v14, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 191
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v23, v21

    .local v23, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v21, v2

    .local v21, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 193
    .local v24, "$i$f$ReusableComposeNode":I
    move/from16 v25, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const v0, -0x20f7d59c

    move-object/from16 v26, v2

    .end local v2    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v26, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v27, v5

    move-object/from16 v5, v21

    .end local v21    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v27, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 194
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 195
    :cond_20
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 196
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 197
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    .line 199
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_21
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 201
    :goto_18
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 202
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v28, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 203
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 204
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v1

    .end local v1    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v29, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 206
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    nop

    .line 201
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 208
    shr-int/lit8 v0, v25, 0x6

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v1, v5

    .local v1, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 184
    .local v2, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v21, v0

    .end local v0    # "$changed$iv":I
    .local v21, "$changed$iv":I
    const v0, 0x6d423196

    move/from16 v23, v2

    .end local v2    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v23, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const-string v2, "C72@3469L9:Box.kt#2w3rfo"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v2, v17, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    .local v2, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$Crossfade_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v30, v1

    .local v30, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 136
    .local v31, "$i$a$-Box-CrossfadeKt$Crossfade$6":I
    move-object/from16 v32, v0

    .end local v0    # "$this$Crossfade_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    .local v32, "$this$Crossfade_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x798c6316

    move-object/from16 v33, v1

    .end local v1    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v33, "$composer$iv":Landroidx/compose/runtime/Composer;
    const-string v1, "C:Crossfade.kt#xbi5r1"

    move/from16 v34, v2

    move-object/from16 v2, v30

    .end local v30    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v34, "$changed":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v0, -0x4e3e53b8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v0, p3

    check-cast v0, Ljava/util/List;

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$f$fastForEach":I
    const/16 v30, 0x0

    .local v30, "index$iv":I
    move-object/from16 v35, v0

    check-cast v35, Ljava/util/Collection;

    move/from16 v36, v1

    .end local v1    # "$i$f$fastForEach":I
    .local v36, "$i$f$fastForEach":I
    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->size()I

    move-result v1

    move-object/from16 v35, v3

    move/from16 v3, v30

    .end local v30    # "index$iv":I
    .local v3, "index$iv":I
    .local v35, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    :goto_19
    if-ge v3, v1, :cond_23

    .line 210
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .line 211
    .local v30, "item$iv":Ljava/lang/Object;
    move-object/from16 v37, v30

    .local v37, "it":Ljava/lang/Object;
    const/16 v38, 0x0

    .line 136
    .local v38, "$i$a$-fastForEach-CrossfadeKt$Crossfade$6$1":I
    move-object/from16 v39, v0

    move-object/from16 v0, v37

    move/from16 v37, v1

    .end local v37    # "it":Ljava/lang/Object;
    .local v0, "it":Ljava/lang/Object;
    .local v39, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move/from16 v40, v3

    .end local v3    # "index$iv":I
    .local v40, "index$iv":I
    const v3, 0x45d4d0b9

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/Composer;->startMovableGroup(ILjava/lang/Object;)V

    invoke-static {v2, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_22

    const v1, 0x74c5d4d0

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v18, 0x0

    goto :goto_1a

    :cond_22
    const v3, 0x45d4d551

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v3, "135@6130L8"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endMovableGroup()V

    .line 211
    .end local v0    # "it":Ljava/lang/Object;
    .end local v38    # "$i$a$-fastForEach-CrossfadeKt$Crossfade$6$1":I
    nop

    .line 209
    .end local v30    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v40, 0x1

    move/from16 v1, v37

    move-object/from16 v0, v39

    .end local v40    # "index$iv":I
    .restart local v3    # "index$iv":I
    goto :goto_19

    .end local v39    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    :cond_23
    move-object/from16 v39, v0

    move/from16 v40, v3

    .line 213
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "index$iv":I
    .restart local v39    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .end local v36    # "$i$f$fastForEach":I
    .end local v39    # "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 136
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 137
    nop

    .line 184
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-Box-CrossfadeKt$Crossfade$6":I
    .end local v32    # "$this$Crossfade_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    .end local v34    # "$changed":I
    invoke-static/range {v33 .. v33}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 208
    .end local v21    # "$changed$iv":I
    .end local v23    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v33    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 214
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 193
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 215
    nop

    .line 187
    .end local v5    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v25    # "$changed$iv$iv$iv":I
    .end local v28    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 216
    nop

    .line 177
    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$i$f$Layout":I
    .end local v22    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v26    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v35    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local p2    # "compositeKeyHash$iv$iv":I
    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 217
    nop

    .end local v7    # "propagateMinConstraints$iv":Z
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v17    # "$changed$iv":I
    .end local v19    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v27    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local p1    # "$i$f$Box":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 138
    .end local v4    # "contentMap":Landroidx/collection/MutableScatterMap;
    .end local p3    # "currentlyVisible":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    :cond_24
    move-object/from16 v2, p5

    move-object v3, v10

    move-object v4, v12

    goto :goto_1b

    .line 98
    .end local v10    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local v12    # "contentKey":Lkotlin/jvm/functions/Function1;
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local p1, "modifier":Landroidx/compose/ui/Modifier;
    .local p2, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local p3, "contentKey":Lkotlin/jvm/functions/Function1;
    :cond_25
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v7

    move-object v3, v10

    move-object v4, v12

    .line 138
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local p3    # "contentKey":Lkotlin/jvm/functions/Function1;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v4, "contentKey":Lkotlin/jvm/functions/Function1;
    :goto_1b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_26

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_26
    return-void
.end method

.method public static final Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 56
    move-object/from16 v1, p0

    move/from16 v6, p6

    const v0, -0x1e970fed

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(Crossfade)P(4,3!1,2)56@2427L36,57@2479L53:Crossfade.kt#xbi5r1"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p6

    .local v2, "$dirty":I
    and-int/lit8 v3, v6, 0x6

    if-nez v3, :cond_2

    and-int/lit8 v3, v6, 0x8

    if-nez v3, :cond_0

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    :cond_2
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v6, 0x30

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
    or-int/2addr v2, v5

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    :goto_3
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v7, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v6, 0x180

    if-nez v7, :cond_8

    move-object/from16 v7, p2

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v2, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v9, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v6, 0xc00

    if-nez v9, :cond_b

    move-object/from16 v9, p3

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v9, p3

    :goto_7
    and-int/lit16 v10, v6, 0x6000

    if-nez v10, :cond_d

    move-object/from16 v11, p4

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x4000

    goto :goto_8

    :cond_c
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v2, v10

    goto :goto_9

    :cond_d
    move-object/from16 v11, p4

    :goto_9
    move v15, v2

    .end local v2    # "$dirty":I
    .local v15, "$dirty":I
    and-int/lit16 v2, v15, 0x2493

    const/16 v10, 0x2492

    const/4 v13, 0x0

    if-eq v2, v10, :cond_e

    const/4 v2, 0x1

    goto :goto_a

    :cond_e
    move v2, v13

    :goto_a
    and-int/lit8 v10, v15, 0x1

    invoke-interface {v12, v2, v10}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v3, :cond_f

    .line 52
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move/from16 v16, v8

    move-object v8, v2

    move/from16 v2, v16

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_b

    .line 56
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_f
    move v2, v8

    move-object v8, v4

    .line 52
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    :goto_b
    if-eqz v5, :cond_10

    .line 53
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v13, v13, v4, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v9, v3

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v3, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    goto :goto_c

    .line 52
    .end local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_10
    move-object v9, v7

    .line 53
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v9, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_c
    if-eqz v2, :cond_11

    .line 54
    const-string v2, "Crossfade"

    .end local p3    # "label":Ljava/lang/String;
    .local v2, "label":Ljava/lang/String;
    goto :goto_d

    .line 53
    .end local v2    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_11
    move-object/from16 v2, p3

    .line 54
    .end local p3    # "label":Ljava/lang/String;
    .restart local v2    # "label":Ljava/lang/String;
    :goto_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.animation.Crossfade (Crossfade.kt:55)"

    invoke-static {v0, v15, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 57
    :cond_12
    and-int/lit8 v0, v15, 0x8

    and-int/lit8 v3, v15, 0xe

    or-int/2addr v0, v3

    shr-int/lit8 v3, v15, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v0, v3

    invoke-static {v1, v2, v12, v0, v13}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v7

    .line 58
    .local v7, "transition":Landroidx/compose/animation/core/Transition;
    and-int/lit8 v0, v15, 0x70

    and-int/lit16 v3, v15, 0x380

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v15

    or-int v13, v0, v3

    const/4 v14, 0x4

    const/4 v10, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 59
    .end local v7    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_13
    move-object v4, v2

    move-object v2, v8

    move-object v3, v9

    goto :goto_e

    .line 50
    .end local v2    # "label":Ljava/lang/String;
    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v9    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v4

    move-object v3, v7

    move-object/from16 v4, p3

    .line 59
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .end local p3    # "label":Ljava/lang/String;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v4, "label":Ljava/lang/String;
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_15
    return-void
.end method

.method public static final synthetic Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p3, "content"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Crossfade API now has a new label parameter added."
    .end annotation

    .line 69
    move-object/from16 v1, p0

    move/from16 v5, p5

    const v0, -0x997dfd0

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(Crossfade)P(3,2)69@2888L29,70@2933L53:Crossfade.kt#xbi5r1"

    invoke-static {v11, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p5

    .local v2, "$dirty":I
    and-int/lit8 v3, v5, 0x6

    const/4 v4, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v5, 0x8

    if-nez v3, :cond_0

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    :cond_2
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v5, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v7, p6, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v5, 0x180

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    goto :goto_5

    :cond_8
    move-object/from16 v8, p2

    :goto_5
    and-int/lit16 v9, v5, 0xc00

    if-nez v9, :cond_a

    move-object/from16 v10, p3

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    goto :goto_7

    :cond_a
    move-object/from16 v10, p3

    :goto_7
    move v14, v2

    .end local v2    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit16 v2, v14, 0x493

    const/16 v9, 0x492

    const/4 v12, 0x0

    if-eq v2, v9, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    move v2, v12

    :goto_8
    and-int/lit8 v9, v14, 0x1

    invoke-interface {v11, v2, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v3, :cond_c

    .line 66
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move v15, v7

    move-object v7, v2

    move v2, v15

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_9

    .line 69
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_c
    move v2, v7

    move-object v7, v6

    .line 66
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    :goto_9
    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 67
    const/4 v2, 0x7

    invoke-static {v12, v12, v3, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v8, v2

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .local v8, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, -0x1

    const-string/jumbo v6, "androidx.compose.animation.Crossfade (Crossfade.kt:68)"

    invoke-static {v0, v14, v2, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 70
    :cond_e
    and-int/lit8 v0, v14, 0x8

    and-int/lit8 v2, v14, 0xe

    or-int/2addr v0, v2

    invoke-static {v1, v3, v11, v0, v4}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v6

    .line 71
    .local v6, "transition":Landroidx/compose/animation/core/Transition;
    and-int/lit8 v0, v14, 0x70

    and-int/lit16 v2, v14, 0x380

    or-int/2addr v0, v2

    shl-int/lit8 v2, v14, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int v12, v0, v2

    const/4 v13, 0x4

    const/4 v9, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 72
    .end local v6    # "transition":Landroidx/compose/animation/core/Transition;
    :cond_f
    move-object v2, v7

    move-object v3, v8

    goto :goto_a

    .line 64
    .end local v7    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v8    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :cond_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v2, v6

    move-object v3, v8

    .line 72
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    :goto_a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$2;

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$2;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function3;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method
